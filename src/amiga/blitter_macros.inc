	.include "hardware/custom.i"

* blitter helpers, synchronous or asynchronous (blitter interrupt chain)
*
* OPT_BLIT_CHAIN_MODE = 0: classic mode, blit + wait blit
* OPT_BLIT_CHAIN_MODE = 1: blitter interrupt chain
*
* WRITE_BLITTER_REG_xxx / WAIT_BLIT always act on the hardware directly
* (synchronous blits). In chain mode they must only be used in a "sync
* section" (BLIT_SYNC_BEGIN/BLIT_SYNC_END): rare, full screen operations.
*
* chain mode, how it works (see Galaga/Commando):
* - the CPU builds a queue of fixed-format entries in the frame's back
*   buffer, publishing them one by one: the blitter starts on the first
*   entry while the CPU computes the next ones
* - each entry = routine pointer + data. The level 3 blitter interrupt
*   runs the next entry; entries that don't start a blit (setup, CPU
*   calls like in-place mirroring) are chained immediately. Registers
*   that don't change (modulos, masks) are written only by setup entries,
*   and only when they change
* - when the queue is drained and the producer has finished, the frame is
*   READY: it's shown at the next frame boundary, then the back buffer is
*   FREE again for the next frame
*
* build a frame (level 1 interrupt, frame_state == FS_FREE):
*   BLITQ_BEGIN_FRAME
*   ... blitq_setup_xxx / emit entries / PUBLISH ...
*   BLITQ_END_FRAME
* level 3 interrupt: BLITQ_INTERRUPT (blitter part, A5=custom, saves D0/A0/A1)
* show the frame at frame boundary: if frame_state == FS_READY => swap,
*   frame_state = FS_FREE
*
*OPT_BLIT_CHAIN_MODE = 0
*OPT_VBLIT_MIRROR_MODE = 0

FS_FREE = 0			| back buffer can be drawn
FS_BUSY = 1			| blit chain building/running into the back buffer
FS_READY = 2		| back buffer complete, waiting for the frame boundary

* setup keys: type<<8 + blit width in bytes
BQK_RESTORE = 1<<8
BQK_COOKIE = 2<<8
BQK_COOKIE_FLIP = 3<<8

	.macro	CHECK_A5_IS_CUSTOM
	.ifndef	RELEASE
	cmp.l	#_custom,a5
	jeq		s0\@
	BREAKPOINT	"custom should be set in A5"
s0\@:
	.endif
	.endm

	.macro	HW_BLITTER_ACTIVE_TEST	label
	BTST	#6,(dmaconr,a5)
	BNE.S	\label
	.endm

* wait for the blitter (hardware)
	.macro	WAIT_BLIT
	CHECK_A5_IS_CUSTOM
	tst.b	(dmaconr,a5)			| dummy read (early Agnus BBUSY quirk)
	move.w	#0x8400,(dmacon,a5)		| blitter high priority
wait\@:
	HW_BLITTER_ACTIVE_TEST	wait\@
	move.w	#0x0400,(dmacon,a5)		| blitter normal priority
	.endm

	.macro	WRITE_BLITTER_REG_LONG	value,offset
	CHECK_A5_IS_CUSTOM
	move.l	\value,\offset(a5)
	.endm
	.macro	WRITE_BLITTER_REG_WORD	value,offset
	CHECK_A5_IS_CUSTOM
	move.w	\value,\offset(a5)
	.endm
	.macro	WRITE_BLITTER_REG_SIZE	value
	WRITE_BLITTER_REG_WORD	\value,bltsize
	.endm

	.if		OPT_BLIT_CHAIN_MODE==0

* classic mode

	.macro	REALLY_WAIT_BLIT
	WAIT_BLIT
	.endm

	.macro	BLIT_SYNC_BEGIN
	.endm
	.macro	BLIT_SYNC_END
	.endm

	.if		OPT_VBLIT_MIRROR_MODE==1
	.macro	WRITE_BLITTER_VIRTUAL_MIRROR	height,mirror_function,bitplane
	move.w	\height,d1		| height
	subq	#1,d1		| minus one for dbf
	jsr		(\mirror_function)	  | in: A2 bitplane (parameter is ignored it is already a2), D1: height-1
	.endm
	.endif

	.macro	DECL_BLITTER_QUEUE	size
	.endm

	.else

* chain mode

* wait until no blit chain runs, then for the blitter
* (not from level 3, and not while building a frame!)
	.macro	REALLY_WAIT_BLIT
sw\@:
	cmp.b	#FS_BUSY,frame_state
	jeq		sw\@
	WAIT_BLIT
	.endm

* synchronous blits / CPU access to the back buffer from the game:
* forbid frame building (level 1), wait for the chain to complete
* < A5: custom
	.macro	BLIT_SYNC_BEGIN
	move.w	(intenar,a5),-(a7)
	move.w	#0x0004,(intena,a5)		| no level 1: no new frame built
	tst.w	(intenar,a5)			| make sure the write has landed (040/060)
	REALLY_WAIT_BLIT
	.endm
	.macro	BLIT_SYNC_END
	btst	#2,(1,a7)
	jeq		nosoft\@
	move.w	#0xC004,(intena,a5)		| level 1 was enabled: enable it again
nosoft\@:
	addq.w	#2,a7
	.endm

* make the entries written up to \reg visible to the blitter interrupt
* and start the chain if the blitter is idle
	.macro	PUBLISH	reg
	.ifndef	RELEASE
	cmp.l	#blitter_queue_end,\reg
	jcs		ok\@
	BREAKPOINT	"blitter queue overflow"
ok\@:
	.endif
	move.l	\reg,blitq_wr
	tst.b	blit_idle
	jeq		nokick\@
	jbsr	blitq_kick
nokick\@:
	.endm

	.if		OPT_VBLIT_MIRROR_MODE==1
* in-place mirroring must happen in queue order: CPU entry
* mirror_function: in A2 bitplane, A1 mirror table, D1 height-1
	.macro	WRITE_BLITTER_VIRTUAL_MIRROR	height,mirror_function,bitplane
	move.l	a1,-(a7)
	move.l	blitq_wr,a1
	move.l	#r_call,(a1)+
	move.l	\mirror_function,(a1)+
	move.l	#mirror_table,(a1)+
	move.l	\bitplane,(a1)+
	move.w	\height,(a1)
	subq.w	#1,(a1)+
	PUBLISH	a1
	move.l	(a7)+,a1
	.endm
	.endif

* start building a frame (level 1, frame_state == FS_FREE)
	.macro	BLITQ_BEGIN_FRAME
	move.b	#FS_BUSY,frame_state
	clr.b	producer_done
	move.l	#blitter_queue,blitq_rd
	move.l	#blitter_queue,blitq_wr
	st.b	blit_idle
	move.w	#-1,blitq_setup_key		| no setup yet
	.endm

* end of frame building: if the chain has already drained (or was empty)
* we have to declare completion ourselves
	.macro	BLITQ_END_FRAME
	move.w	sr,-(a7)
	or.w	#0x0700,sr
	st.b	producer_done
	tst.b	blit_idle
	jeq		nr\@
	movem.l	d0/a0-a1/a5,-(a7)
	lea		_custom,a5
	jbsr	blitq_run				| queue empty: declares the frame ready
	movem.l	(a7)+,d0/a0-a1/a5
nr\@:
	move.w	(a7)+,sr
	.endm

* level 3 interrupt, blitter part
* < A5: custom, D0/A0/A1 free
	.macro	BLITQ_INTERRUPT
	move.w	#0x0040,(intreq,a5)
	move.w	#0x0040,(intreq,a5)
	tst.b	blit_idle
	jne		bi\@					| no chain running: ignore
	tst.b	(dmaconr,a5)			| dummy read (early Agnus BBUSY quirk)
	btst	#6,(dmaconr,a5)
	jne		bi\@					| blitter still busy: spurious, ignore
	jbsr	blitq_run
bi\@:
	.endm

* queue code & data
	.macro	DECL_BLITTER_QUEUE	size

* < A5: custom
* trashes D0,A0,A1
blitq_run:
	move.l	blitq_rd(pc),a0
blitq_next:
	cmp.l	blitq_wr(pc),a0
	jeq		blitq_empty
	move.l	(a0)+,a1
	jmp		(a1)
blitq_empty:
	move.l	a0,blitq_rd
	st.b	blit_idle
	tst.b	producer_done
	jeq		0f
	move.b	#FS_READY,frame_state	| back buffer complete
0:
	rts

* .l bltcon0/1 .l afwm/alwm .l cmod/bmod .l amod/dmod
r_setup:
	move.l	(a0)+,(bltcon0,a5)
	move.l	(a0)+,(bltafwm,a5)
	move.l	(a0)+,(bltcmod,a5)
	move.l	(a0)+,(bltamod,a5)
	jra		blitq_next

* .l function .l A1 .l A2 .w D1 : CPU call (blitter is idle)
r_call:
	movem.l	d1-d2/a2,-(a7)
	move.l	(a0)+,d0
	move.l	(a0)+,a1
	move.l	(a0)+,a2
	move.w	(a0)+,d1
	move.l	a0,-(a7)
	move.l	d0,a0
	jsr		(a0)
	move.l	(a7)+,a0
	movem.l	(a7)+,d1-d2/a2
	jra		blitq_next

* A->D copy, with bltcon: .l bltcon0/1 .l A .l D .w bltsize
r_copy_con:
	move.l	(a0)+,(bltcon0,a5)
* A->D copy: .l A .l D .w bltsize
r_copy:
	move.l	(a0)+,(bltapt,a5)
	move.l	(a0)+,(bltdpt,a5)
	move.w	(a0)+,(bltsize,a5)
	move.l	a0,blitq_rd
	rts

* clear (D only): .l bltcon0/1 .l D .w bltsize
r_clear_con:
	move.l	(a0)+,(bltcon0,a5)
	move.l	(a0)+,(bltdpt,a5)
	move.w	(a0)+,(bltsize,a5)
	move.l	a0,blitq_rd
	rts

* cookie cut: .l bltcon0/1 .l C .l B .l A .l D .w bltsize
r_cookie:
	move.l	(a0)+,(bltcon0,a5)
	lea		(bltcpt,a5),a1
	move.l	(a0)+,(a1)+			| C
	move.l	(a0)+,(a1)+			| B
	move.l	(a0)+,(a1)+			| A
	move.l	(a0)+,(a1)+			| D
	move.w	(a0)+,(a1)			| bltsize: go!
	move.l	a0,blitq_rd
	rts

* cookie cut with zero B data (empty plane): .l bltcon0/1 .l A .l C=D .w bltsize
r_cookie_nob:
	move.l	(a0)+,(bltcon0,a5)
	clr.w	(bltbdat,a5)		| B is fixed (B DMA overwrites it, so each time)
	move.l	(a0)+,(bltapt,a5)
	move.l	(a0),(bltcpt,a5)
	move.l	(a0)+,(bltdpt,a5)
	move.w	(a0)+,(bltsize,a5)
	move.l	a0,blitq_rd
	rts

* producer side: start the chain if the blitter is idle
* (level 1: supervisor mode)
blitq_kick:
	move.w	sr,-(a7)
	or.w	#0x0700,sr
	tst.b	blit_idle
	jeq		0f
	movem.l	d0/a0-a1/a5,-(a7)
	lea		_custom,a5
	clr.b	blit_idle
	jbsr	blitq_run
	movem.l	(a7)+,d0/a0-a1/a5
0:
	move.w	(a7)+,sr
	rts

* emit a setup entry if the setup key changed
* < D0.W: key (BQK_xxx + width in bytes)
* < D1.W: screen row size in bytes (modulos)
* preserves all registers
blitq_setup:
	cmp.w	blitq_setup_key(pc),d0
	jne		0f
	rts
0:
	movem.l	d0-d2/a1,-(a7)
	move.w	d0,blitq_setup_key
	move.l	blitq_wr(pc),a1
	move.l	#r_setup,(a1)+
	moveq	#0,d2
	move.b	d0,d2				| width in bytes
	lsr.w	#8,d0
	cmp.w	#BQK_RESTORE>>8,d0
	jne		1f
	* A->D copy (and D clear): both with screen modulo
	move.l	#0x09F00000,(a1)+
	move.l	#-1,(a1)+
	clr.l	(a1)+
	sub.w	d2,d1
	move.w	d1,(a1)+			| A
	move.w	d1,(a1)+			| D
	jra		9f
1:
	* cookie cut, source is 1 word narrower than the blit (alwm=0)
	clr.l	(a1)+				| bltcon0/1 set by each entry
	move.l	#0xFFFF0000,(a1)+
	cmp.w	#BQK_COOKIE_FLIP>>8,d0
	jne		2f
	neg.w	d1					| flipped: destination goes up
2:
	sub.w	d2,d1
	move.w	d1,(a1)+			| C
	move.w	#-2,(a1)+			| B
	move.w	#-2,(a1)+			| A
	move.w	d1,(a1)+			| D
9:
	move.l	a1,blitq_wr			| published with the next blit
	movem.l	(a7)+,d0-d2/a1
	rts

	.align	2
blitq_rd:
	.long	0
blitq_wr:
	.long	0
blitq_setup_key:
	.word	-1
blit_idle:
	.byte	-1			| no blit chain running
producer_done:
	.byte	0
frame_state:
	.byte	FS_FREE
	.align	2
blitter_queue:
	.skip	\size
blitter_queue_end:
	.long	0
	.endm

	.endif
