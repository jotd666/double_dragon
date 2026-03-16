;	map(0x8000, 0x81ff).ram().share(m_comram);  => 0x2000 on main cpu

irq_already_called_0066 = $66
shared_memory_8000 = $8000

; aux. cpu to help main cpu
C000: 3B       rti  
C001: 3B       rti  
C002: 3B       rti  
C003: 3B       rti  
C004: 3B       rti  
C005: 3B       rti  
C006: 3B       rti  
C007: 3B       rti  
C008: 3B       rti  
sub_boot_c009:  ; [global]
C009: 8E 01 3F lds  #$013F		; set stack
C00C: 86 FF    lda  #$FF
C00E: 97 05    sta  $05
C010: 97 16    sta  $16
C012: 86 10    lda  #$10
C014: 06       tap  			; interrupt handling
C015: 7F 00 66 clr  irq_already_called_0066
C018: 7F 00 65 clr  $0065
C01B: 96 65    lda  $65
C01D: 84 FE    anda #$FE
C01F: 97 65    sta  $65
C021: 97 17    sta  $17
C023: 86 01    lda  #$01
C025: 9A 65    ora  $65
C027: 97 65    sta  $65
C029: 97 17    sta  $17
C02B: 7E C0 2B jmp  $C02B		; infinite loop, wait for main cpu orders

; triggered when sprites need displaying
sub_irq_c02e:  ; [global]
C02E: 7D 00 66 tst  irq_already_called_0066
C031: 26 03    bne  $C036
; first time IRQ is called it checksums the memory
C033: 7E C0 58 jmp  rom_checksum_c058
C036: BD C0 6C jsr  sprite_convert_c06c
irq_end_c039:
C039: 96 65    lda  $65
C03B: 84 FD    anda #$FD
C03D: 97 65    sta  $65
C03F: 97 17    sta  $17
C041: 86 02    lda  #$02
C043: 9A 65    ora  $65
C045: 97 65    sta  $65
C047: 96 65    lda  $65
C049: 84 FE    anda #$FE
C04B: 97 65    sta  $65
C04D: 97 17    sta  $17
C04F: 86 01    lda  #$01
C051: 9A 65    ora  $65
C053: 97 65    sta  $65
C055: 97 17    sta  $17
C057: 3B       rti

rom_checksum_c058:
C058: CE C0 00 ldx  #$C000
C05B: A6 00    lda  $00,x	; [rom]
C05D: 08       inx  
C05E: AB 00    adda $00,x	; [rom]
C060: 08       inx  
C061: 26 FB    bne  $C05E
C063: B7 80 00 sta  shared_memory_8000		; write the result of the checksum here so maincpu can collect it
C066: 7C 00 66 inc  irq_already_called_0066	; next time do the real processing, not rom checksum
C069: 7E C0 39 jmp  irq_end_c039

sprite_convert_c06c:
C06C: BD C0 A8 jsr  $C0A8
C06F: CE 80 01 ldx  #$8001		; load X with start of shared memory
C072: 86 01    lda  #$01
C074: 97 4F    sta  $4F
C076: 96 4F    lda  $4F
C078: B1 80 00 cmpa shared_memory_8000
C07B: 24 27    bcc  $C0A4
C07D: EC 00    ldd  $00,x
C07F: DD 40    std  $40
C081: EC 02    ldd  $02,x
C083: DD 42    std  $42
C085: EC 04    ldd  $04,x
C087: DD 44    std  $44
C089: EC 06    ldd  $06,x
C08B: DD 46    std  $46
C08D: 3C       pshx 
C08E: D6 41    ldb  $41
C090: C4 7F    andb #$7F
C092: C1 7F    cmpb #$7F
C094: 27 03    beq  $C099
C096: BD C1 0B jsr  heavy_lifting_c10b
C099: C6 08    ldb  #$08
C09B: 38       pulx 
C09C: 3A       abx  
C09D: 96 4F    lda  $4F
C09F: 1B       aba  
C0A0: 97 4F    sta  $4F
C0A2: 20 D2    bra  $C076
C0A4: 7F 80 00 clr  shared_memory_8000
C0A7: 39       rts 
 
C0A8: 7D 80 00 tst  shared_memory_8000
C0AB: 27 5D    beq  $C10A		; 0: return immediately
; main cpu is asking for work
C0AD: 7F 00 4F clr  $004F
C0B0: 86 01    lda  #$01
C0B2: 97 4E    sta  $4E
C0B4: 96 4E    lda  $4E
C0B6: 8B 08    adda #$08
C0B8: B1 80 00 cmpa shared_memory_8000
C0BB: 24 48    bcc  $C105
C0BD: CE 80 00 ldx  #shared_memory_8000
C0C0: D6 4E    ldb  $4E
C0C2: 3A       abx  
C0C3: EC 04    ldd  $04,x
C0C5: A3 0C    subd $0C,x
C0C7: 24 33    bcc  $C0FC
C0C9: EC 00    ldd  $00,x
C0CB: DD 40    std  $40
C0CD: EC 08    ldd  $08,x
C0CF: ED 00    std  $00,x
C0D1: DC 40    ldd  $40
C0D3: ED 08    std  $08,x
C0D5: EC 02    ldd  $02,x
C0D7: DD 40    std  $40
C0D9: EC 0A    ldd  $0A,x
C0DB: ED 02    std  $02,x
C0DD: DC 40    ldd  $40
C0DF: ED 0A    std  $0A,x
C0E1: EC 04    ldd  $04,x
C0E3: DD 40    std  $40
C0E5: EC 0C    ldd  $0C,x
C0E7: ED 04    std  $04,x
C0E9: DC 40    ldd  $40
C0EB: ED 0C    std  $0C,x
C0ED: EC 06    ldd  $06,x
C0EF: DD 40    std  $40
C0F1: EC 0E    ldd  $0E,x
C0F3: ED 06    std  $06,x
C0F5: DC 40    ldd  $40
C0F7: ED 0E    std  $0E,x
C0F9: 7C 00 4F inc  $004F
C0FC: 96 4E    lda  $4E
C0FE: 8B 08    adda #$08
C100: 97 4E    sta  $4E
C102: 7E C0 B4 jmp  $C0B4
C105: 7D 00 4F tst  $004F
C108: 26 A3    bne  $C0AD
C10A: 39       rts 
 
heavy_lifting_c10b:
C10B: B6 81 FD lda  $81FD
C10E: 81 4B    cmpa #$4B
C110: 25 03    bcs  $C115
C112: 7E C2 7E jmp  $C27E		; do nothing
C115: DC 44    ldd  $44
C117: D3 46    addd $46
C119: B3 81 FB subd $81FB
C11C: DD 56    std  $56
C11E: DC 42    ldd  $42
C120: B3 81 F9 subd $81F9
C123: DD 58    std  $58
C125: 96 41    lda  $41
C127: 44       lsra 
C128: 44       lsra 
C129: 44       lsra 
C12A: 44       lsra 
C12B: 84 08    anda #$08
C12D: 97 54    sta  $54
C12F: D6 40    ldb  $40
C131: D7 5E    stb  $5E
C133: C4 7F    andb #$7F
C135: D7 5F    stb  $5F
C137: 58       aslb 
C138: CE C2 EF ldx  #$C2EF
C13B: 3A       abx  
C13C: EE 00    ldx  $00,x		; [rom]
C13E: D6 41    ldb  $41
C140: C4 7F    andb #$7F
C142: 3A       abx  
C143: 3A       abx  
C144: EE 00    ldx  $00,x		; [rom]
C146: DF 48    stx  $48
C148: F6 81 FD ldb  $81FD
C14B: 86 05    lda  #$05
C14D: 3D       mul  
C14E: C3 80 81 addd #$8081
C151: DD 4A    std  $4A
C153: DE 48    ldx  $48
C155: E6 00    ldb  $00,x		; [rom]
C157: 08       inx  
C158: 7F 00 50 clr  $0050
C15B: 7F 00 52 clr  $0052
C15E: 7F 00 5A clr  $005A
C161: D7 4E    stb  $4E
C163: 17       tba  
C164: 84 1F    anda #$1F
C166: 97 53    sta  $53
C168: 5D       tstb 
C169: 2A 05    bpl  $C170
C16B: A6 00    lda  $00,x		; [rom]
C16D: 08       inx  
C16E: 97 50    sta  $50
C170: C5 40    bitb #$40
C172: 27 08    beq  $C17C
C174: A6 00    lda  $00,x		; [rom]
C176: 08       inx  
C177: 97 51    sta  $51
C179: 73 00 52 com  $0052
C17C: C5 20    bitb #$20
C17E: 27 09    beq  $C189
C180: 73 00 5A com  $005A
C183: EC 00    ldd  $00,x		; [rom]
C185: 08       inx  
C186: 08       inx  
C187: DD 4C    std  $4C
; loop
C189: 96 4E    lda  $4E
C18B: 2A 04    bpl  $C191
C18D: 96 50    lda  $50
C18F: 20 03    bra  $C194
C191: A6 00    lda  $00,x		; [rom]
C193: 08       inx  
C194: 36       psha 
C195: 84 0F    anda #$0F
C197: DF 48    stx  $48
C199: CE C2 7F ldx  #$C27F
C19C: D6 5F    ldb  $5F
C19E: 58       aslb 
C19F: DB 5F    addb $5F
C1A1: 3A       abx  
C1A2: 33       pulb 
C1A3: 37       pshb 
C1A4: C4 30    andb #$30
C1A6: 54       lsrb 
C1A7: 54       lsrb 
C1A8: 54       lsrb 
C1A9: 54       lsrb 
C1AA: 3A       abx  
C1AB: AA 00    ora  $00,x		; [rom]
C1AD: 97 62    sta  $62
C1AF: 84 F0    anda #$F0
C1B1: 81 20    cmpa #$20
C1B3: 24 0A    bcc  $C1BF
C1B5: 96 5E    lda  $5E
C1B7: 2A 06    bpl  $C1BF
C1B9: 96 62    lda  $62
C1BB: 88 10    eora #$10
C1BD: 97 62    sta  $62
C1BF: 33       pulb 
C1C0: 54       lsrb 
C1C1: 54       lsrb 
C1C2: 54       lsrb 
C1C3: 54       lsrb 
C1C4: 54       lsrb 
C1C5: 54       lsrb 
C1C6: CE C2 EB ldx  #$C2EB
C1C9: 3A       abx  
C1CA: 7F 00 61 clr  $0061
C1CD: 96 61    lda  $61
C1CF: AA 00    ora  $00,x		; [rom]
C1D1: 97 61    sta  $61
C1D3: DE 48    ldx  $48
C1D5: 96 61    lda  $61
C1D7: 98 54    eora $54
C1D9: 8A 80    ora  #$80
C1DB: 97 61    sta  $61
C1DD: 96 51    lda  $51
C1DF: 7C 00 51 inc  $0051
C1E2: D6 61    ldb  $61
C1E4: C5 10    bitb #$10
C1E6: 27 03    beq  $C1EB
C1E8: 7C 00 51 inc  $0051
C1EB: 7D 00 52 tst  $0052
C1EE: 26 03    bne  $C1F3
C1F0: A6 00    lda  $00,x		; [rom]
C1F2: 08       inx  
C1F3: 97 63    sta  $63
C1F5: 7D 00 5A tst  $005A
C1F8: 2A 04    bpl  $C1FE
C1FA: DF 48    stx  $48
C1FC: DE 4C    ldx  $4C
C1FE: E6 00    ldb  $00,x		; [rom]
C200: 08       inx  
C201: 96 54    lda  $54
C203: 84 08    anda #$08
C205: 27 01    beq  $C208
C207: 50       negb 
C208: 4F       clra 
C209: 5D       tstb 
C20A: 2A 01    bpl  $C20D
C20C: 4A       deca 
C20D: D3 58    addd $58
C20F: C3 00 07 addd #$0007
C212: 4D       tsta 
C213: 27 06    beq  $C21B
C215: 96 61    lda  $61
C217: 8A 02    ora  #$02
C219: 97 61    sta  $61
C21B: C8 FF    eorb #$FF
C21D: D7 64    stb  $64
C21F: E6 00    ldb  $00,x		; [rom]
C221: 08       inx  
C222: 4F       clra 
C223: 5D       tstb 
C224: 2A 01    bpl  $C227
C226: 4A       deca 
C227: D3 56    addd $56
C229: 83 00 07 subd #$0007
C22C: D7 60    stb  $60
C22E: D6 61    ldb  $61
C230: C5 10    bitb #$10
C232: 27 07    beq  $C23B
C234: D6 60    ldb  $60
C236: 83 00 08 subd #$0008
C239: D7 60    stb  $60
C23B: 4D       tsta 
C23C: 27 06    beq  $C244
C23E: 96 61    lda  $61
C240: 8A 01    ora  #$01
C242: 97 61    sta  $61
C244: 7D 00 5A tst  $005A
C247: 2A 04    bpl  $C24D
C249: DF 4C    stx  $4C
C24B: DE 48    ldx  $48
C24D: DF 48    stx  $48
C24F: DE 4A    ldx  $4A
C251: 96 60    lda  $60
C253: A7 00    sta  $00,x	; exchange memory 0x81xx
C255: 96 61    lda  $61
C257: A7 01    sta  $01,x
C259: 96 62    lda  $62
C25B: A7 02    sta  $02,x
C25D: 96 63    lda  $63
C25F: A7 03    sta  $03,x
C261: 96 64    lda  $64
C263: A7 04    sta  $04,x
C265: C6 05    ldb  #$05
C267: 3A       abx  
C268: DF 4A    stx  $4A
C26A: DE 48    ldx  $48
C26C: 7C 81 FD inc  $81FD
C26F: B6 81 FD lda  $81FD
C272: 81 4B    cmpa #$4B
C274: 24 08    bcc  $C27E
C276: 7A 00 53 dec  $0053
C279: 27 03    beq  $C27E
C27B: 7E C1 89 jmp  $C189
C27E: 39       rts  


table_C337:
	.word	$C407
	.word	$C412
	.word	$C417
	.word	$C41F
	.word	$C427
	.word	$C42C
	.word	$C434
	.word	$C439
	.word	$C441
	.word	$C446
	.word	$C454
	.word	$C469
	.word	$C472
	.word	$C485
	.word	$C48E
	.word	$C497
	.word	$C4A2
	.word	$C4AF
	.word	$C4B4
	.word	$C4B9
	.word	$C4D0
	.word	$C4D5
	.word	$C4DA
	.word	$C4E7
	.word	$C4EC
	.word	$C501
	.word	$C516
	.word	$C52F
	.word	$C53D
	.word	$C548
	.word	$C55D
	.word	$C562
	.word	$C577
	.word	$C580
	.word	$C58B
	.word	$C59E
	.word	$C5A3
	.word	$C5A8
	.word	$C5B3
	.word	$C5BE
	.word	$C5CB
	.word	$C5E4
	.word	$C5E9
	.word	$C5F6
	.word	$C607
	.word	$C612
	.word	$C623
	.word	$C638
	.word	$C63D
	.word	$C652
	.word	$C663
	.word	$C66E
	.word	$C679
	.word	$C684
	.word	$C695
	.word	$C6A6
	.word	$C6B7
	.word	$C6C2
	.word	$C6CD
	.word	$C6E2
	.word	$C6F3
	.word	$C6FE
	.word	$C6FE
	.word	$C6FE
	.word	$C6FE
	.word	$C6FE
	.word	$C6FE
	.word	$C6FE
	.word	$C71B
	.word	$C738
	.word	$C755
	.word	$C76E
	.word	$C77B
	.word	$C78C
	.word	$C793
	.word	$C7AA
	.word	$C7BD
	.word	$C7CA
	.word	$C7D5
	.word	$C7EC
	.word	$C7FF
	.word	$C80C
	.word	$C817
	.word	$C828
	.word	$C84D
	.word	$C86E
	.word	$C88B
	.word	$C8A8
	.word	$C8C9
	.word	$C8EA
	.word	$C903
	.word	$C922
	.word	$C933
	.word	$C950
	.word	$C961
	.word	$C972
	.word	$C993
	.word	$C9B8
	.word	$C9D1
	.word	$C9EA
	.word	$C9FB
	.word	$CA08
	.word	$CA11
	.word	$CA2E

;table_CA53:

table_CF02:
	.word	$D028
	.word	$D041
	.word	$D050
	.word	$D05F
	.word	$D06E
	.word	$D07D
	.word	$D08C
	.word	$D09F
	.word	$D0B8
	.word	$D0CD
	.word	$D0DA
	.word	$D0ED
	.word	$D0FA
	.word	$D107
	.word	$D112
	.word	$D123
	.word	$D134
	.word	$D149
	.word	$D166
	.word	$D171
	.word	$D17C
	.word	$D191
	.word	$D1AA
	.word	$D1C7
	.word	$D1E0
	.word	$D1FD
	.word	$D212
	.word	$D22B
	.word	$D248
	.word	$D25D
	.word	$D276
	.word	$D28B
	.word	$D2A0
	.word	$D2BB
	.word	$D2D6
	.word	$D2E5
	.word	$D2F4
	.word	$D303
	.word	$D303
	.word	$D303
	.word	$D303
	.word	$D318
	.word	$D32D
	.word	$D346
	.word	$D35F
	.word	$D37C
	.word	$D395
	.word	$D3AE
	.word	$D3C3
	.word	$D3DC
	.word	$D3F1
	.word	$D402
	.word	$D413
	.word	$D428
	.word	$D441
	.word	$D45A
	.word	$D473
	.word	$D488
	.word	$D4A1
	.word	$D4BA
	.word	$D4BA
	.word	$D4BA
	.word	$D4BA
	.word	$D4C2
	.word	$D4C2
	.word	$D4C2
	.word	$D4E3
	.word	$D504
	.word	$D529
	.word	$D54A
	.word	$D55B
	.word	$D570
	.word	$D57D
	.word	$D59A
	.word	$D5B5
	.word	$D5D2
	.word	$D5E1
	.word	$D5FE
	.word	$D60D
	.word	$D62A
	.word	$D639
	.word	$D64E
	.word	$D673
	.word	$D698
	.word	$D6B9
	.word	$D6D6
	.word	$D6F7
	.word	$D718
	.word	$D735
	.word	$D758
	.word	$D76B
	.word	$D78C
	.word	$D79F
	.word	$D7B2
	.word	$D7D7
	.word	$D800
	.word	$D821
	.word	$D842
	.word	$D86F
	.word	$D890
	.word	$D890
	.word	$D890
	.word	$D8B5
	.word	$D8DA
	.word	$D8FB
	.word	$D920
	.word	$D941
	.word	$D962
	.word	$D983
	.word	$D9A2
	.word	$D9B3
	.word	$D9D0
	.word	$D9ED
	.word	$DA12
	.word	$DA33
	.word	$DA60
	.word	$DA81
	.word	$DAA2
	.word	$DABF
	.word	$DAE4
	.word	$DB09



table_FFEA:
	.word	$C000
	.word	$C001
	.word	$C002
	.word	$C003
	.word	$C004
	.word	$C005
	.word	$C006
	.word	$C007
	.word	$C008
	.word	$C02E
	.word	$C009
