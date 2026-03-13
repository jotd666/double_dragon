* Converted with 6809to68k v1.8 by JOTD
*
* make sure you call "cpu_init" first so all bits of data registers
* are zeroed out so we can use add.l dy,ax with dy > 0x7FFF
* without systematic masking
*
* WARNING: you also have to call "sub_cpu_init"
* at start of any interrupt you could hook
*
* the GET_ADDRESS macro can just call get_address or it can also use
* conditional compilation to select the proper memory banks at compile time
* (see my burger time 6502 conversion which does that in RELEASE mode)



	.global	sub_cpu_init

	.macro	ERROR	arg
	.error	"\arg"     | comment out or replace by ".warning" to disable errors
	.endm

	.ifdef	__amiga__
	* to define BREAKPOINT
	.include 	"amiga/utility_macros.inc"
	.else
	.macro	BREAKPOINT	arg
	.endm
	.endif

* the function that accesses all memory
* without any check
	.macro	GET_UNCHECKED_ADDRESS_FUNC
	lea	(a6,a0.l),a0
	.endm



	.macro	ABX
	moveq	#0,d6
	move.b	d1,d6
	add.w	d6,d2
	.endm

	.macro	ABA
	add.b	d1,d0
	.endm

	.macro	TBA
	move.b	d1,d0
	.endm


	.macro	COM	reg
	not.b	\reg
	SET_XC_FLAGS
	.endm

	.macro	SEX
	ext.w	d1
	MAKE_A
	.endm

	.macro	MAKE_D
* add value of A in B MSB so D&0xFF == B
	rol.w	#8,d1
	move.b	d0,d1
	rol.w	#8,d1
	.endm

	.macro	MAKE_A
	rol.w	#8,d1
	move.b	d1,d0
	rol.w	#8,d1
	.endm

	.macro	BIT	reg,arg
	move.b	\reg,d6
	and.b	\arg,d6
	.endm


	.macro	LOAD_D
	move.b	(a0),d0
	move.b	(1,a0),d1
	MAKE_D
	.endm

	.macro CLR_XC_FLAGS
	and.b	#0xEE,ccr	| bit 4 = X, bit 0 = C
	.endm

	.macro SET_XC_FLAGS
	or.b	#0x11,ccr	| bit 4 = X, bit 0 = C
	.endm



	.macro INVERT_XC_FLAGS
	eor.b	#0x11,ccr
	.endm

* useful to recall C from X (add then move then bcx)
	.macro	SET_C_FROM_X
	PUSH_SR
	move.w	(sp),d6
	bset	#0,d6   | set C
	btst	#4,d6
	jne	0f
	bclr	#0,d6   | X is clear: clear C
0:
	move.w	d6,(sp)
	POP_SR
	.endm

* useful to store X from C (store cmp result)
	.macro	SET_X_FROM_C
	PUSH_SR
	move.w	(sp),d6
	bset	#4,d6   | set X
	btst	#0,d6
	bne.b	0f
	bclr	#4,d6   | C is clear: clear X
0:
	move.w	d6,(sp)
	POP_SR
	.endm

	.macro	SET_X_FROM_CLEARED_C
	PUSH_SR
	move.w	(sp),d6
	bset	#4,d6   | set X
	btst	#0,d6
	jeq	0f
	bclr	#4,d6   | C is set: clear X
0:
	move.w	d6,(sp)
	POP_SR
	.endm



	.ifdef	MC68020


* 68020 compliant & optimized



	.macro DO_EXTB	reg
	extb.l	\reg
	.endm

	.macro PUSH_SR
	move.w	ccr,-(sp)
	.endm


	.macro	MOVE_W_TO_REG	src,dest
	move.w	(\src),\dest
	.endm

	.macro    CMP_W_TO_REG    src,dest
	cmp.w    (\src),\dest
	.endm

	.macro    ADD_W_TO_REG    src,dest
	add.w    (\src),\dest
	.endm

	.macro    SUB_W_TO_REG    src,dest
	sub.w    (\src),\dest
	.endm


	.macro	MOVE_W_FROM_REG    src,dest
	move.w	\src,(\dest)
	.endm



	.macro READ_BE_WORD	srcreg
	moveq	#0,d6
	move.w	(\srcreg),d6
	move.l	d6,\srcreg
	.endm

	.else

* 68000 compliant


	.macro DO_EXTB	reg
	ext	\reg
	ext.l	\reg
	.endm

	.macro PUSH_SR
	move.w	sr,-(sp)
	.endm

	.macro	MOVE_W_TO_REG    src,dest
	ror.w	#8,\dest
	move.b	(\src),\dest
	ror.w	#8,\dest
	move.b	(1,\src),\dest
	.endm

	.macro	MOVE_W_FROM_REG    src,dest
	ror.w	#8,\src
	move.b	\src,(\dest)
	ror.w	#8,\src
	move.b	\src,(1,\dest)
	.endm

    .macro    INST_W_TO_REG    inst,src,dest
    move.b    (\src),d6
    ror.w    #8,d6
    move.b    (1,\src),d6
    \inst\().w    d6,\dest
    .endm

    .macro    SUB_W_TO_REG    src,dest
    INST_W_TO_REG   sub,\src,\dest
    .endm

    .macro    ADD_W_TO_REG    src,dest
    INST_W_TO_REG   add,\src,\dest
    .endm

    .macro    CMP_W_TO_REG    src,dest
    INST_W_TO_REG   cmp,\src,\dest
    .endm


	.macro READ_BE_WORD	srcreg
	moveq	#0,d6
	move.b	(\srcreg),d6
	lsl.w	#8,d6
	move.b	(1,\srcreg),d6
	move.l	d6,\srcreg
	.endm

	.endif

* same for 68000 and 68020+
	.macro POP_SR
	move.w	(sp)+,ccr
	.endm



	* DP is fixed at 0 on that 6800 derived cpu
	
	.macro GET_DP_ADDRESS	offset
	lea	(a6,\offset\().W),a0
	.endm

* optimized DP operations
	.macro OP_1_ON_DP_ADDRESS    inst,offset
	\inst\().b    (a6,\offset\().W)
	.endm

	.macro OP_R_ON_DP_ADDRESS    inst,offset,reg
	\inst\().b    (a6,\offset\().W),\reg
	.endm

	.macro OP_W_ON_DP_ADDRESS    inst,offset,reg
	\inst\().b    \reg,(a6,\offset\().W)
	.endm


	.macro	GET_SHARED_ADDRESS_FUNC
	jbsr	get_shared_address
	.endm
	.macro	GET_ROM_ADDRESS_FUNC
	jbsr	get_rom_address
	.endm

	.macro GET_ZP_REG_ADDRESS	offset,reg
	.ifeq	\offset
	move.l	\reg,a0
	.else
	lea	\offset,a0
	lea	(a0,\reg\().l),a0
	.endif
	.ifndef	RELEASE
	cmp.w	#0x100,a0
	jcs		0f
	BREAKPOINT	"zero page address > 0x100"
0:
	.endif
	GET_DP_ADDRESS	a0
	.endm

	* not very efficient but covers all legal cases
	.macro	GET_SELECT_REG_ADDRESS	offset,reg
	.ifeq	\offset
	move.l	\reg,a0
	.else
	lea	\offset,a0
	lea	(a0,\reg\().l),a0
	.endif
	cmp.l	#0xC000,a0
	jcs		0f
	* ROM
	GET_ROM_ADDRESS_FUNC		| load from ROM
	jra		10f
0:
	cmp.w	#0x100,a0
	jcc		0f
	* zero page
	lea		(a6,a0.w),a0
	jra		10f
0:
	* exchange zone (check it!)
	GET_SHARED_ADDRESS_FUNC
10:
	.endm
	
	.macro GET_SHARED_REG_ADDRESS	offset,reg
	.ifeq	\offset
	move.l	\reg,a0
	.else
	lea	\offset,a0
	lea	(a0,\reg\().l),a0
	.endif
	GET_SHARED_ADDRESS_FUNC
	.endm

	.macro GET_ROM_REG_ADDRESS	offset,reg
	.ifeq	\offset
	move.l	\reg,a0
	.else
	lea	\offset,a0
	lea	(a0,\reg\().l),a0
	.endif
	GET_ROM_ADDRESS_FUNC
	.endm


	.macro GET_ROM_ADDRESS	offset
	.if	\offset < 0xC000
	.error  "offset must be >= 0xC000, found \offset"
	.endif
	lea	(a1,\offset-0xC000),a0
	.endm

	.macro GET_SHARED_ADDRESS	offset
	.if	\offset < 0x8000
	.error  "offset must be >= 0x8000, found \offset"
	.endif
	.if	\offset > 0x8200
	.error  "offset must be < 0x8200, found \offset"
	.endif
	lea	(a5,\offset-0x8000),a0
	.endm

	.macro GET_ADDRESS	offset
	GET_DP_ADDRESS		\offset
	.endm

	.macro GET_REG_ADDRESS	offset,reg
	GET_SHARED_REG_ADDRESS		\offset,\reg
	.endm




* zero all registers but 6800 stack pointer
sub_cpu_init:
	moveq	#0,d0
	moveq	#0,d1
	moveq	#0,d2
	* so osd_log_cpu doesn't yell
	.ifndef	RELEASE
	move.l	#0xFFFF,d3
	move.l	d3,d4
	move.l	d3,d5
	.endif
	
	moveq	#0,d6
	moveq	#0,d7
	rts

get_shared_address:
	.ifndef	RELEASE
	cmp.l	#0x8000,a0
	jcc		0f
	BREAKPOINT	"shared address < 0x8000"
	illegal
0:
	cmp.l	#0x8200,a0
	jcs		0f
	BREAKPOINT	"shared address > 0x81FF"
	illegal
0:
	.endif
	sub.l	#0x8000,a0
	lea		(A5,A0.w),a0
	rts
	

get_rom_address:
	sub.l	#0xC000,a0
	.ifndef	RELEASE
	jcc		0f
	add.l	#0xC000,a0
	BREAKPOINT	"rom address < 0xC000"
	illegal
0:
	.endif
	lea		(A1,A0.w),a0
	rts
	
multiply_ab:
	and.w	#0xFF,d0
	and.w	#0xFF,d1
	mulu	d0,d1
	ror.w	#8,d1
	move.b	d1,d0
	ror.w	#8,d1
	rts
	.ifndef	RELEASE
	* to trace at some virtual PCs, insert this macro
	.macro	LOG_REGS	the_pc,the_bank
	move.w	sr,-(a7)
	move.w	#0x\the_pc,-(a7)
	move.w	#\the_bank,-(a7)
	jbsr	osd_log_cpu
	addq.w	#4,a7
	move.w	(a7)+,sr
	.endm
	
	.macro	LOG_REGS__	the_pc,the_bank
	move.w	sr,-(a7)

	move.w	#0x\the_pc,0x100
	move.w	#\the_bank,0x102

	move.w	(a7)+,sr
	.endm
	.endif
