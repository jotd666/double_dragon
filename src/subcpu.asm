C000: 3B       rti  
C001: 3B       rti  
C002: 3B       rti  
C003: 3B       rti  
C004: 3B       rti  
C005: 3B       rti  
C006: 3B       rti  
C007: 3B       rti  
C008: 3B       rti  
boot_c009:
C009: 8E 01 3F lds  #$013F
C00C: 86 FF    lda  #$FF
C00E: 97 05    sta  $05
C010: 97 16    sta  $16
C012: 86 10    lda  #$10
C014: 06       tap  
C015: 7F 00 66 clr  $0066
C018: 7F 00 65 clr  $0065
C01B: 96 65    lda  $65
C01D: 84 FE    anda #$FE
C01F: 97 65    sta  $65
C021: 97 17    sta  $17
C023: 86 01    lda  #$01
C025: 9A 65    ora  $65
C027: 97 65    sta  $65
C029: 97 17    sta  $17
C02B: 7E C0 2B jmp  $C02B
irq_c02e:
C02E: 7D 00 66 tst  $0066
C031: 26 03    bne  $C036
C033: 7E C0 58 jmp  $C058
C036: BD C0 6C jsr  $C06C
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
C058: CE C0 00 ldx  #$C000
C05B: A6 00    lda  $00,x
C05D: 08       inx  
C05E: AB 00    adda $00,x
C060: 08       inx  
C061: 26 FB    bne  $C05E
C063: B7 80 00 sta  $8000
C066: 7C 00 66 inc  $0066
C069: 7E C0 39 jmp  $C039
C06C: BD C0 A8 jsr  $C0A8
C06F: CE 80 01 ldx  #$8001
C072: 86 01    lda  #$01
C074: 97 4F    sta  $4F
C076: 96 4F    lda  $4F
C078: B1 80 00 cmpa $8000
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
C096: BD C1 0B jsr  $C10B
C099: C6 08    ldb  #$08
C09B: 38       pulx 
C09C: 3A       abx  
C09D: 96 4F    lda  $4F
C09F: 1B       aba  
C0A0: 97 4F    sta  $4F
C0A2: 20 D2    bra  $C076
C0A4: 7F 80 00 clr  $8000
C0A7: 39       rts  
C0A8: 7D 80 00 tst  $8000
C0AB: 27 5D    beq  $C10A
C0AD: 7F 00 4F clr  $004F
C0B0: 86 01    lda  #$01
C0B2: 97 4E    sta  $4E
C0B4: 96 4E    lda  $4E
C0B6: 8B 08    adda #$08
C0B8: B1 80 00 cmpa $8000
C0BB: 24 48    bcc  $C105
C0BD: CE 80 00 ldx  #$8000
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
C10B: B6 81 FD lda  $81FD
C10E: 81 4B    cmpa #$4B
C110: 25 03    bcs  $C115
C112: 7E C2 7E jmp  $C27E
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
C13C: EE 00    ldx  $00,x
C13E: D6 41    ldb  $41
C140: C4 7F    andb #$7F
C142: 3A       abx  
C143: 3A       abx  
C144: EE 00    ldx  $00,x
C146: DF 48    stx  $48
C148: F6 81 FD ldb  $81FD
C14B: 86 05    lda  #$05
C14D: 3D       mul  
C14E: C3 80 81 addd #$8081
C151: DD 4A    std  $4A
C153: DE 48    ldx  $48
C155: E6 00    ldb  $00,x
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
C16B: A6 00    lda  $00,x
C16D: 08       inx  
C16E: 97 50    sta  $50
C170: C5 40    bitb #$40
C172: 27 08    beq  $C17C
C174: A6 00    lda  $00,x
C176: 08       inx  
C177: 97 51    sta  $51
C179: 73 00 52 com  $0052
C17C: C5 20    bitb #$20
C17E: 27 09    beq  $C189
C180: 73 00 5A com  $005A
C183: EC 00    ldd  $00,x
C185: 08       inx  
C186: 08       inx  
C187: DD 4C    std  $4C
C189: 96 4E    lda  $4E
C18B: 2A 04    bpl  $C191
C18D: 96 50    lda  $50
C18F: 20 03    bra  $C194
C191: A6 00    lda  $00,x
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
C1AB: AA 00    ora  $00,x
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
C1CF: AA 00    ora  $00,x
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
C1F0: A6 00    lda  $00,x
C1F2: 08       inx  
C1F3: 97 63    sta  $63
C1F5: 7D 00 5A tst  $005A
C1F8: 2A 04    bpl  $C1FE
C1FA: DF 48    stx  $48
C1FC: DE 4C    ldx  $4C
C1FE: E6 00    ldb  $00,x
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
C21F: E6 00    ldb  $00,x
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
C253: A7 00    sta  $00,x
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

C2F2: 37       pshb 
C2F3: CA 53    orb  #$53
C2F5: CE FE DB ldx  #$FEDB
C2F8: 36       psha 
C2F9: DB 36    addb $36
C2FB: E0 6C    subb $6C,x
C2FD: E0 6C    subb $6C,x
C2FF: E6 36    ldb  $36,x
C301: EB C6    addb $C6,x
C303: F1 C8 C3 cmpb $C8C3
C306: 37       pshb 
C307: F3 90 F4 addd $90F4
C30A: DB F5    addb $F5
C30C: 2D F5    blt  $C303
C30E: 6E F6    jmp  $F6,x

C32B: FC 70 FD ldd  $70FD
C32E: DD FD    std  $FD
C330: 6F FD    clr  $FD,x
C332: B6 E6 36 lda  $E636
C335: EB C6    addb $C6,x
C337: C4 07    andb #$07
C339: C4 12    andb #$12
C33B: C4 17    andb #$17
C33D: C4 1F    andb #$1F
C33F: C4 27    andb #$27
C341: C4 2C    andb #$2C
C343: C4 34    andb #$34
C345: C4 39    andb #$39
C347: C4 41    andb #$41
C349: C4 46    andb #$46
C34B: C4 54    andb #$54
C34D: C4 69    andb #$69
C34F: C4 72    andb #$72
C351: C4 85    andb #$85
C353: C4 8E    andb #$8E
C355: C4 97    andb #$97
C357: C4 A2    andb #$A2
C359: C4 AF    andb #$AF
C35B: C4 B4    andb #$B4
C35D: C4 B9    andb #$B9
C35F: C4 D0    andb #$D0
C361: C4 D5    andb #$D5
C363: C4 DA    andb #$DA
C365: C4 E7    andb #$E7
C367: C4 EC    andb #$EC
C369: C5 01    bitb #$01
C36B: C5 16    bitb #$16
C36D: C5 2F    bitb #$2F
C36F: C5 3D    bitb #$3D
C371: C5 48    bitb #$48
C373: C5 5D    bitb #$5D
C375: C5 62    bitb #$62
C377: C5 77    bitb #$77
C379: C5 80    bitb #$80
C37B: C5 8B    bitb #$8B
C37D: C5 9E    bitb #$9E
C37F: C5 A3    bitb #$A3
C381: C5 A8    bitb #$A8
C383: C5 B3    bitb #$B3
C385: C5 BE    bitb #$BE
C387: C5 CB    bitb #$CB
C389: C5 E4    bitb #$E4
C38B: C5 E9    bitb #$E9
C38D: C5 F6    bitb #$F6
C38F: C6 07    ldb  #$07
C391: C6 12    ldb  #$12
C393: C6 23    ldb  #$23
C395: C6 38    ldb  #$38
C397: C6 3D    ldb  #$3D
C399: C6 52    ldb  #$52
C39B: C6 63    ldb  #$63
C39D: C6 6E    ldb  #$6E
C39F: C6 79    ldb  #$79
C3A1: C6 84    ldb  #$84
C3A3: C6 95    ldb  #$95
C3A5: C6 A6    ldb  #$A6
C3A7: C6 B7    ldb  #$B7
C3A9: C6 C2    ldb  #$C2
C3AB: C6 CD    ldb  #$CD
C3AD: C6 E2    ldb  #$E2
C3AF: C6 F3    ldb  #$F3
C3B1: C6 FE    ldb  #$FE
C3B3: C6 FE    ldb  #$FE
C3B5: C6 FE    ldb  #$FE
C3B7: C6 FE    ldb  #$FE
C3B9: C6 FE    ldb  #$FE
C3BB: C6 FE    ldb  #$FE
C3BD: C6 FE    ldb  #$FE
C3BF: C7 1B    stb  #$1B
C3C1: C7 38    stb  #$38
C3C3: C7 55    stb  #$55
C3C5: C7 6E    stb  #$6E
C3C7: C7 7B    stb  #$7B
C3C9: C7 8C    stb  #$8C
C3CB: C7 93    stb  #$93
C3CD: C7 AA    stb  #$AA
C3CF: C7 BD    stb  #$BD
C3D1: C7 CA    stb  #$CA
C3D3: C7 D5    stb  #$D5
C3D5: C7 EC    stb  #$EC
C3D7: C7 FF    stb  #$FF
C3D9: C8 0C    eorb #$0C
C3DB: C8 17    eorb #$17
C3DD: C8 28    eorb #$28
C3DF: C8 4D    eorb #$4D
C3E1: C8 6E    eorb #$6E
C3E3: C8 8B    eorb #$8B
C3E5: C8 A8    eorb #$A8
C3E7: C8 C9    eorb #$C9
C3E9: C8 EA    eorb #$EA
C3EB: C9 03    adcb #$03
C3ED: C9 22    adcb #$22
C3EF: C9 33    adcb #$33
C3F1: C9 50    adcb #$50
C3F3: C9 61    adcb #$61
C3F5: C9 72    adcb #$72
C3F7: C9 93    adcb #$93
C3F9: C9 B8    adcb #$B8
C3FB: C9 D1    adcb #$D1
C3FD: C9 EA    adcb #$EA
C3FF: C9 FB    adcb #$FB
C401: CA 08    orb  #$08
C403: CA 11    orb  #$11
C405: CA 2E    orb  #$2E
C407: C4 80    andb #$80
C409: 1A       slp  
C40A: F8 30 F8 eorb $30F8
C40D: 10       sba  
C40E: 08       inx  
C40F: 30       tsx  
C410: 08       inx  
C411: 10       sba  
C412: E4 80    andb $80,x
C414: 22 C4    bhi  $C3DA
C416: 0A       clv  
C417: A4 80    anda $80,x
C419: C4 0A    andb #$0A
C41B: 22 2E    bhi  $C44B
C41D: 26 30    bne  $C44F
C41F: A4 80    anda $80,x
C421: C4 0A    andb #$0A
C423: 1A       slp  
C424: 2A 1E    bpl  $C444
C426: 2C E4    bge  $C40C
C428: 80 02    suba #$02
C42A: C4 0A    andb #$0A
C42C: A4 80    anda $80,x
C42E: C4 0A    andb #$0A
C430: 02       illegal
C431: 12       asx1 1,s
C432: 06       tap  
C433: 14       illegal
C434: E4 80    andb $80,x
C436: 0A       clv  
C437: C4 0A    andb #$0A
C439: A4 80    anda $80,x
C43B: C4 0A    andb #$0A
C43D: 0A       clv  
C43E: 16       tab  
C43F: 0E       cli  
C440: 18       xgdx 
C441: E4 80    andb $80,x
C443: 32       pula 
C444: C4 0A    andb #$0A
C446: 84 80    anda #$80
C448: 3A       abx  
C449: F8 30 3C eorb $303C
C44C: 08       inx  
C44D: 30       tsx  
C44E: 34       des  
C44F: F8 10 38 eorb $1038
C452: 08       inx  
C453: 10       sba  
C454: 05       asld 
C455: 80 3E    suba #$3E
C457: E8 20    eorb $20,x
C459: 80 40    suba #$40
C45B: F8 20 80 eorb $2080
C45E: 42       illegal
C45F: 08       inx  
C460: 20 00    bra  $C462
C462: 44       lsra 
C463: F8 08 00 eorb $0800
C466: 45       illegal
C467: 08       inx  
C468: 08       inx  
C469: C3 80 46 addd #$8046
C46C: D8 10    eorb $10
C46E: E8 10    eorb $10,x
C470: F8 10 24 eorb $1024
C473: C4 7D    andb #$7D
C475: 80 58    suba #$58
C477: 80 5A    suba #$5A
C479: 80 5C    suba #$5C
C47B: 00       illegal
C47C: 5F       clrb 
C47D: F8 20 08 eorb $2008
C480: 30       tsx  
C481: 08       inx  
C482: 10       sba  
C483: F8 08 C3 eorb $08C3
C486: 80 60    suba #$60
C488: 08       inx  
C489: 10       sba  
C48A: 18       xgdx 
C48B: 10       sba  
C48C: 28 10    bvc  $C49E
C48E: C3 C0 4C addd #$C04C
C491: 18       xgdx 
C492: 08       inx  
C493: 08       inx  
C494: 08       inx  
C495: F8 08 24 eorb $0824
C498: C4 7D    andb #$7D
C49A: 80 52    suba #$52
C49C: 80 54    suba #$54
C49E: 80 56    suba #$56
C4A0: 00       illegal
C4A1: 5E       illegal
C4A2: 03       illegal
C4A3: 80 66    suba #$66
C4A5: F8 10 80 eorb $1080
C4A8: 68 08    asl  $08,x
C4AA: 20 00    bra  $C4AC
C4AC: 6A 08    dec  $08,x
C4AE: 08       inx  
C4AF: E4 80    andb $80,x
C4B1: 8C C4 0A cmpx #$C40A
C4B4: E4 80    andb $80,x
C4B6: 94 C4    anda $C4
C4B8: 0A       clv  
C4B9: 25 C4    bcs  $C47F
C4BB: C6 80    ldb  #$80
C4BD: 6C 00    inc  $00,x
C4BF: 6B 80 6E tim  #$80,$6e,x
C4C2: 80 70    suba #$70
C4C4: 80 72    suba #$72
C4C6: F8 20 F8 eorb $20F8
C4C9: 08       inx  
C4CA: 08       inx  
C4CB: 30       tsx  
C4CC: 08       inx  
C4CD: 10       sba  
C4CE: 18       xgdx 
C4CF: 30       tsx  
C4D0: E4 80    andb $80,x
C4D2: 74 C4 0A lsr  $C40A
C4D5: E4 80    andb $80,x
C4D7: 7C C4 0A inc  $C40A
C4DA: 25 C4    bcs  $C4A0
C4DC: C6 80    ldb  #$80
C4DE: 84 00    anda #$00
C4E0: 9C 80    cmpx $80
C4E2: 86 80    lda  #$80
C4E4: 88 80    eora #$80
C4E6: 8A E4    ora  #$E4
C4E8: 80 9E    suba #$9E
C4EA: C4 0A    andb #$0A
C4EC: 05       asld 
C4ED: 80 A6    suba #$A6
C4EF: F8 20 80 eorb $2080
C4F2: A8 08    eora $08,x
C4F4: 20 00    bra  $C4F6
C4F6: AA F8    ora  $F8,x
C4F8: 08       inx  
C4F9: 00       illegal
C4FA: AB 08    adda $08,x
C4FC: 08       inx  
C4FD: 03       illegal
C4FE: 1B       aba  
C4FF: 18       xgdx 
C500: 28 05    bvc  $C507
C502: 80 B4    suba #$B4
C504: F0 20 00 subb $2000
C507: 9D 10    jsr  $10
C509: 18       xgdx 
C50A: 80 B6    suba #$B6
C50C: 00       illegal
C50D: 20 00    bra  $C50F
C50F: B8 F0 08 eora $F008
C512: 00       illegal
C513: B9 00 08 adca $0008
C516: 06       tap  
C517: 00       illegal
C518: C2 F8    sbcb #$F8
C51A: 38       pulx 
C51B: 80 D4    suba #$D4
C51D: F8 20 00 eorb $2000
C520: D9 F8    adcb $F8
C522: 08       inx  
C523: 00       illegal
C524: D7 08    stb  $08
C526: 28 00    bvc  $C528
C528: D8 08    eorb $08
C52A: 18       xgdx 
C52B: 00       illegal
C52C: D6 08    ldb  $08
C52E: 08       inx  
C52F: 84 80    anda #$80
C531: BE 00 30 lds  $0030
C534: BA 00 10 ora  $0010
C537: C0 10    subb #$10
C539: 30       tsx  
C53A: BC 10 10 cmpx $1010
C53D: C4 80    andb #$80
C53F: AC E8    cmpx $E8,x
C541: 30       tsx  
C542: E8 10    eorb $10,x
C544: F8 30 F8 eorb $30F8
C547: 10       sba  
C548: 05       asld 
C549: 0B       sev  
C54A: F6 D8 38 ldb  $D838
C54D: 8B EE    adda #$EE
C54F: E8 30    eorb $30,x
C551: 8B F0    adda #$F0
C553: E8 10    eorb $10,x
C555: 8B F2    adda #$F2
C557: F8 30 8B eorb $308B
C55A: F4 F8 10 andb $F810
C55D: E4 80    andb $80,x
C55F: C4 C4    andb #$C4
C561: 0A       clv  
C562: 05       asld 
C563: 80 CC    suba #$CC
C565: F8 30 80 eorb $3080
C568: CE F8 10 ldx  #$F810
C56B: 80 D0    suba #$D0
C56D: 08       inx  
C56E: 30       tsx  
C56F: 80 D2    suba #$D2
C571: 08       inx  
C572: 10       sba  
C573: 00       illegal
C574: C3 18 38 addd #$1838
C577: C3 81 00 addd #$8100
C57A: 00       illegal
C57B: 30       tsx  
C57C: 00       illegal
C57D: 10       sba  
C57E: 10       sba  
C57F: 30       tsx  
C580: C4 81    andb #$81
C582: 06       tap  
C583: 00       illegal
C584: 30       tsx  
C585: 00       illegal
C586: 10       sba  
C587: 10       sba  
C588: 30       tsx  
C589: 10       sba  
C58A: 10       sba  
C58B: 24 C5    bcc  $C552
C58D: 96 81    lda  $81
C58F: 12       asx1 1,s
C590: 81 14    cmpa #$14
C592: 81 16    cmpa #$16
C594: 01       nop  
C595: 18       xgdx 
C596: F8 30 F8 eorb $30F8
C599: 10       sba  
C59A: 08       inx  
C59B: 30       tsx  
C59C: 08       inx  
C59D: 18       xgdx 
C59E: E4 81    andb $81,x
C5A0: 1A       slp  
C5A1: C4 0A    andb #$0A
C5A3: E4 81    andb $81,x
C5A5: 28 C4    bvc  $C56B
C5A7: 0A       clv  
C5A8: 24 C5    bcc  $C56F
C5AA: 96 81    lda  $81
C5AC: 30       tsx  
C5AD: 81 32    cmpa #$32
C5AF: 81 34    cmpa #$34
C5B1: 01       nop  
C5B2: 3D       mul  
C5B3: 24 C5    bcc  $C57A
C5B5: 96 81    lda  $81
C5B7: 36       psha 
C5B8: 81 38    cmpa #$38
C5BA: 81 3A    cmpa #$3A
C5BC: 01       nop  
C5BD: 3C       pshx 
C5BE: C5 83    bitb #$83
C5C0: 08       inx  
C5C1: F8 30 F8 eorb $30F8
C5C4: 10       sba  
C5C5: 08       inx  
C5C6: 30       tsx  
C5C7: 08       inx  
C5C8: 10       sba  
C5C9: 18       xgdx 
C5CA: 30       tsx  
C5CB: 06       tap  
C5CC: 83 12 F0 subd #$12F0
C5CF: 20 03    bra  $C5D4
C5D1: 1A       slp  
C5D2: F0 08 83 subb $0883
C5D5: 14       illegal
C5D6: 00       illegal
C5D7: 30       tsx  
C5D8: 83 16 00 subd #$1600
C5DB: 10       sba  
C5DC: 03       illegal
C5DD: 18       xgdx 
C5DE: 10       sba  
C5DF: 28 03    bvc  $C5E4
C5E1: 19       daa  
C5E2: 10       sba  
C5E3: 08       inx  
C5E4: E4 83    andb $83,x
C5E6: 00       illegal
C5E7: C4 0A    andb #$0A
C5E9: 03       illegal
C5EA: 81 0E    cmpa #$0E
C5EC: F0 20 81 subb $2081
C5EF: 10       sba  
C5F0: 00       illegal
C5F1: 20 01    bra  $C5F4
C5F3: 19       daa  
C5F4: 00       illegal
C5F5: 08       inx  
C5F6: 04       lsrd 
C5F7: 81 22    cmpa #$22
C5F9: 00       illegal
C5FA: 20 01    bra  $C5FD
C5FC: 27 00    beq  $C5FE
C5FE: 08       inx  
C5FF: 81 24    cmpa #$24
C601: 10       sba  
C602: 30       tsx  
C603: 01       nop  
C604: 26 10    bne  $C616
C606: 18       xgdx 
C607: C4 C1    andb #$C1
C609: 3E       wai  
C60A: 08       inx  
C60B: 30       tsx  
C60C: 08       inx  
C60D: 10       sba  
C60E: F8 30 F8 eorb $30F8
C611: 10       sba  
C612: 04       lsrd 
C613: C1 46    cmpb #$46
C615: 10       sba  
C616: 30       tsx  
C617: C1 48    cmpb #$48
C619: 00       illegal
C61A: 30       tsx  
C61B: C1 4A    cmpb #$4A
C61D: 00       illegal
C61E: 10       sba  
C61F: 41       illegal
C620: 5D       tstb 
C621: F0 08 05 subb $0805
C624: 41       illegal
C625: 65 08 48 eim  #$08,$48,x
C628: C1 4C    cmpb #$4C
C62A: 08       inx  
C62B: 30       tsx  
C62C: C1 4E    cmpb #$4E
C62E: 08       inx  
C62F: 10       sba  
C630: C1 50    cmpb #$50
C632: F8 30 C1 eorb $30C1
C635: 52       illegal
C636: F8 10 E4 eorb $10E4
C639: 8B E6    adda #$E6
C63B: C4 0A    andb #$0A
C63D: 05       asld 
C63E: C1 54    cmpb #$54
C640: 08       inx  
C641: 20 41    bra  $C684
C643: 5C       incb 
C644: 08       inx  
C645: 08       inx  
C646: C1 56    cmpb #$56
C648: F8 30 C1 eorb $30C1
C64B: 58       aslb 
C64C: F8 10 C1 eorb $10C1
C64F: 5A       decb 
C650: E8 30    eorb $30,x
C652: 04       lsrd 
C653: C1 5E    cmpb #$5E
C655: FF 30 C1 stx  $30C1
C658: 60 FF    neg  $FF,x
C65A: 10       sba  
C65B: C1 62    cmpb #$62
C65D: EF 20    stx  $20,x
C65F: 41       illegal
C660: 64 EF    lsr  $EF,x
C662: 08       inx  
C663: C4 C1    andb #$C1
C665: 66 06    ror  $06,x
C667: 30       tsx  
C668: 06       tap  
C669: 10       sba  
C66A: F6 30 F6 ldb  $30F6
C66D: 10       sba  
C66E: C4 C1    andb #$C1
C670: 6E 02    jmp  $02,x
C672: 30       tsx  
C673: 02       illegal
C674: 10       sba  
C675: F2 30 F2 sbcb $30F2
C678: 10       sba  
C679: C4 C1    andb #$C1
C67B: BA 08 30 ora  $0830
C67E: F8 30 08 eorb $3008
C681: 10       sba  
C682: F8 10 04 eorb $1004
C685: 82 BE    sbca #$BE
C687: F8 30 82 eorb $3082
C68A: C0 F8    subb #$F8
C68C: 10       sba  
C68D: 82 C2    sbca #$C2
C68F: 08       inx  
C690: 20 02    bra  $C694
C692: C4 08    andb #$08
C694: 08       inx  
C695: 04       lsrd 
C696: 82 00    sbca #$00
C698: F8 20 02 eorb $2002
C69B: 39       rts  
C69C: F8 08 82 eorb $0882
C69F: 02       illegal
C6A0: 08       inx  
C6A1: 30       tsx  
C6A2: 82 04    sbca #$04
C6A4: 08       inx  
C6A5: 10       sba  
C6A6: 04       lsrd 
C6A7: 82 06    sbca #$06
C6A9: 00       illegal
C6AA: 30       tsx  
C6AB: 82 08    sbca #$08
C6AD: 00       illegal
C6AE: 10       sba  
C6AF: 82 0A    sbca #$0A
C6B1: 10       sba  
C6B2: 30       tsx  
C6B3: 02       illegal
C6B4: 13       asx2 1,s
C6B5: F0 28 C4 subb $28C4
C6B8: 8B 00    adda #$00
C6BA: F0 30 F0 subb $30F0
C6BD: 10       sba  
C6BE: 00       illegal
C6BF: 30       tsx  
C6C0: 00       illegal
C6C1: 10       sba  
C6C2: C4 8B    andb #$8B
C6C4: 08       inx  
C6C5: F8 30 F8 eorb $30F8
C6C8: 10       sba  
C6C9: 08       inx  
C6CA: 30       tsx  
C6CB: 08       inx  
C6CC: 10       sba  
C6CD: 05       asld 
C6CE: 8B 10    adda #$10
C6D0: F0 30 0B subb $300B
C6D3: 1E       illegal
C6D4: F0 18 8B subb $188B
C6D7: 12       asx1 1,s
C6D8: 00       illegal
C6D9: 30       tsx  
C6DA: 8B 14    adda #$14
C6DC: 00       illegal
C6DD: 10       sba  
C6DE: 8B 16    adda #$16
C6E0: 10       sba  
C6E1: 30       tsx  
C6E2: 04       lsrd 
C6E3: 8B 18    adda #$18
C6E5: F4 30 0B andb $300B
C6E8: 1F       illegal
C6E9: F4 18 8B andb $188B
C6EC: 1A       slp  
C6ED: 04       lsrd 
C6EE: 30       tsx  
C6EF: 8B 1C    adda #$1C
C6F1: 04       lsrd 
C6F2: 10       sba  
C6F3: C4 8B    andb #$8B
C6F5: 20 EC    bra  $C6E3
C6F7: 30       tsx  
C6F8: EC 10    ldd  $10,x
C6FA: FC 30 FC ldd  $30FC
C6FD: 10       sba  
C6FE: 07       tpa  
C6FF: 02       illegal
C700: 7E E8 18 jmp  $E818
C703: 82 78    sbca #$78
C705: F8 20 02 eorb $2002
C708: 7F F8 08 clr  $F808
C70B: 82 7A    sbca #$7A
C70D: 08       inx  
C70E: 30       tsx  
C70F: 82 7C    sbca #$7C
C711: 08       inx  
C712: 10       sba  
C713: 0F       sei  
C714: F8 F8 18 eorb $F818
C717: 0F       sei  
C718: F9 08 18 adcb $0818
C71B: 07       tpa  
C71C: 82 80    sbca #$80
C71E: F8 20 02 eorb $2002
C721: 9F F8    sts  $F8
C723: 08       inx  
C724: 82 82    sbca #$82
C726: 08       inx  
C727: 30       tsx  
C728: 82 84    sbca #$84
C72A: 08       inx  
C72B: 10       sba  
C72C: 0F       sei  
C72D: FB 0A 18 addb $0A18
C730: 0F       sei  
C731: FA 08 28 orb  $0828
C734: 0F       sei  
C735: FC FA 18 ldd  $FA18
C738: 07       tpa  
C739: 82 86    sbca #$86
C73B: F8 30 82 eorb $3082
C73E: 88 F8    eora #$F8
C740: 10       sba  
C741: 82 8A    sbca #$8A
C743: 08       inx  
C744: 30       tsx  
C745: 82 8C    sbca #$8C
C747: 08       inx  
C748: 10       sba  
C749: 02       illegal
C74A: 9E 18    lds  $18
C74C: 28 02    bvc  $C750
C74E: BD 28 28 jsr  $2828
C751: 0F       sei  
C752: FD 18 28 std  $1828
C755: 06       tap  
C756: 82 8E    sbca #$8E
C758: F8 30 82 eorb $3082
C75B: 90 08    suba $08
C75D: 30       tsx  
C75E: 02       illegal
C75F: 98 E8    eora $E8
C761: 28 82    bvc  $C6E5
C763: 88 F8    eora #$F8
C765: 10       sba  
C766: 82 8C    sbca #$8C
C768: 08       inx  
C769: 10       sba  
C76A: 0F       sei  
C76B: FE F8 28 ldx  $F828
C76E: 03       illegal
C76F: 82 A0    sbca #$A0
C771: F8 10 82 eorb $1082
C774: A2 08    sbca $08,x
C776: 20 02    bra  $C77A
C778: A5 08    bita $08,x
C77A: 08       inx  
C77B: 04       lsrd 
C77C: 82 92    sbca #$92
C77E: F8 20 02 eorb $2002
C781: 99 F8    adca $F8
C783: 08       inx  
C784: 82 94    sbca #$94
C786: 08       inx  
C787: 30       tsx  
C788: 82 96    sbca #$96
C78A: 08       inx  
C78B: 10       sba  
C78C: C2 82    sbcb #$82
C78E: 9A 00    ora  $00
C790: 30       tsx  
C791: 00       illegal
C792: 10       sba  
C793: 25 C7    bcs  $C75C
C795: A0 82    suba $82,x
C797: B4 82 B6 anda $82B6
C79A: 02       illegal
C79B: 77 80 1C asr  $801C
C79E: 80 20    suba #$20
C7A0: F8 30 08 eorb $3008
C7A3: 40       nega 
C7A4: 08       inx  
C7A5: 28 F8    bvc  $C79F
C7A7: 10       sba  
C7A8: 08       inx  
C7A9: 10       sba  
C7AA: 24 C7    bcc  $C773
C7AC: B5 82 B8 bita $82B8
C7AF: 82 BA    sbca #$BA
C7B1: 80 24    suba #$24
C7B3: 80 28    suba #$28
C7B5: F8 30 08 eorb $3008
C7B8: 30       tsx  
C7B9: F8 10 08 eorb $1008
C7BC: 10       sba  
C7BD: 25 C7    bcs  $C786
C7BF: A0 82    suba $82,x
C7C1: B4 82 B6 anda $82B6
C7C4: 02       illegal
C7C5: 77 80 2E asr  $802E
C7C8: 80 30    suba #$30
C7CA: 24 C7    bcc  $C793
C7CC: F7 82 B8 stb  $82B8
C7CF: 82 BA    sbca #$BA
C7D1: 80 2A    suba #$2A
C7D3: 80 2C    suba #$2C
C7D5: 25 C7    bcs  $C79E
C7D7: E2 82    sbcb $82,x
C7D9: AC 02    cmpx $02,x
C7DB: BC 82 AE cmpx $82AE
C7DE: 80 04    suba #$04
C7E0: 80 08    suba #$08
C7E2: F8 40 F8 eorb $40F8
C7E5: 28 08    bvc  $C7EF
C7E7: 30       tsx  
C7E8: F8 10 08 eorb $1008
C7EB: 10       sba  
C7EC: 24 C7    bcc  $C7B5
C7EE: F7 82 B0 stb  $82B0
C7F1: 82 B2    sbca #$B2
C7F3: 80 12    suba #$12
C7F5: 80 14    suba #$14
C7F7: F8 30 08 eorb $3008
C7FA: 30       tsx  
C7FB: F8 10 08 eorb $1008
C7FE: 10       sba  
C7FF: 25 C7    bcs  $C7C8
C801: E2 82    sbcb $82,x
C803: AC 02    cmpx $02,x
C805: BC 82 AE cmpx $82AE
C808: 80 0C    suba #$0C
C80A: 80 10    suba #$10
C80C: 24 C7    bcc  $C7D5
C80E: F7 82 B0 stb  $82B0
C811: 82 B2    sbca #$B2
C813: 80 16    suba #$16
C815: 80 18    suba #$18
C817: 04       lsrd 
C818: 82 A6    sbca #$A6
C81A: 00       illegal
C81B: 20 02    bra  $C81F
C81D: AB 00    adda $00,x
C81F: 08       inx  
C820: 82 A8    sbca #$A8
C822: 10       sba  
C823: 30       tsx  
C824: 02       illegal
C825: AA 10    ora  $10,x
C827: 18       xgdx 
C828: 09       dex  
C829: E0 52    subb $52,x
C82B: 2E 20    bgt  $C84D
C82D: E0 54    subb $54,x
C82F: 1E       illegal
C830: 30       tsx  
C831: E0 56    subb $56,x
C833: 1E       illegal
C834: 10       sba  
C835: 60 5E    neg  $5E,x
C837: 2E 08    bgt  $C841
C839: 03       illegal
C83A: 43       coma 
C83B: 19       daa  
C83C: 28 03    bvc  $C841
C83E: 42       illegal
C83F: F9 28 83 adcb $2883
C842: 40       nega 
C843: 09       dex  
C844: 30       tsx  
C845: 83 44 F9 subd #$44F9
C848: 10       sba  
C849: 83 46 09 subd #$4609
C84C: 10       sba  
C84D: 08       inx  
C84E: A1 8E    cmpa $8E,x
C850: 18       xgdx 
C851: 20 A1    bra  $C7F4
C853: 90 28    suba $28
C855: 20 21    bra  $C878
C857: 92 28    sbca $28
C859: 08       inx  
C85A: 81 7A    cmpa #$7A
C85C: F8 20 01 eorb $2001
C85F: 87 F8    sta  #$F8
C861: 08       inx  
C862: 81 7C    cmpa #$7C
C864: 08       inx  
C865: 30       tsx  
C866: 81 7E    cmpa #$7E
C868: 08       inx  
C869: 10       sba  
C86A: 21 A3    brn  $C80F
C86C: 08       inx  
C86D: 28 07    bvc  $C876
C86F: A1 94    cmpa $94,x
C871: 18       xgdx 
C872: 20 A1    bra  $C815
C874: 96 28    lda  $28
C876: 20 21    bra  $C899
C878: AD 28    jsr  $28,x
C87A: 08       inx  
C87B: 81 80    cmpa #$80
C87D: F8 21 01 eorb $2101
C880: 86 F8    lda  #$F8
C882: 09       dex  
C883: 81 82    cmpa #$82
C885: 08       inx  
C886: 31       ins  
C887: 81 84    cmpa #$84
C889: 08       inx  
C88A: 11       cba  
C88B: 07       tpa  
C88C: 21 9B    brn  $C829
C88E: 18       xgdx 
C88F: 28 A1    bvc  $C832
C891: 98 28    eora $28
C893: 20 21    bra  $C8B6
C895: 9A 28    ora  $28
C897: 08       inx  
C898: 81 88    cmpa #$88
C89A: 09       dex  
C89B: 30       tsx  
C89C: 81 8A    cmpa #$8A
C89E: 09       dex  
C89F: 10       sba  
C8A0: 81 8C    cmpa #$8C
C8A2: 19       daa  
C8A3: 30       tsx  
C8A4: 01       nop  
C8A5: 93 19    subd $19
C8A7: 18       xgdx 
C8A8: 08       inx  
C8A9: 81 9C    cmpa #$9C
C8AB: F8 30 81 eorb $3081
C8AE: 9E F8    lds  $F8
C8B0: 10       sba  
C8B1: 81 A0    cmpa #$A0
C8B3: 08       inx  
C8B4: 20 01    bra  $C8B7
C8B6: A2 08    sbca $08,x
C8B8: 08       inx  
C8B9: A1 AE    cmpa $AE,x
C8BB: FB 30 A1 addb $30A1
C8BE: B0 FB 10 suba $FB10
C8C1: A1 B2    cmpa $B2,x
C8C3: 0B       sev  
C8C4: 20 21    bra  $C8E7
C8C6: C2 0B    sbcb #$0B
C8C8: 08       inx  
C8C9: 08       inx  
C8CA: A1 B4    cmpa $B4,x
C8CC: E4 2F    andb $2F,x
C8CE: A1 B6    cmpa $B6,x
C8D0: F4 2F A1 andb $2FA1
C8D3: B8 04 2F eora $042F
C8D6: 81 A4    cmpa #$A4
C8D8: E3 20    addd $20,x
C8DA: 81 A6    cmpa #$A6
C8DC: F3 20 81 addd $2081
C8DF: A8 03    eora $03,x
C8E1: 20 81    bra  $C864
C8E3: AA 13    ora  $13,x
C8E5: 20 01    bra  $C8E8
C8E7: AC F3    cmpx $F3,x
C8E9: 08       inx  
C8EA: 06       tap  
C8EB: E1 C4    cmpb $C4,x
C8ED: 08       inx  
C8EE: 30       tsx  
C8EF: E1 C6    cmpb $C6,x
C8F1: 08       inx  
C8F2: 10       sba  
C8F3: E1 C8    cmpb $C8,x
C8F5: F8 20 41 eorb $2041
C8F8: E3 08    addd $08,x
C8FA: 28 C1    bvc  $C8BD
C8FC: CA F8    orb  #$F8
C8FE: 30       tsx  
C8FF: C1 CC    cmpb #$CC
C901: F8 10 27 eorb $1027
C904: C9 14    adcb #$14
C906: 41       illegal
C907: E2 C1    sbcb $C1,x
C909: DE C1    ldx  $C1
C90B: E0 E1    subb $E1,x
C90D: D6 E1    ldb  $E1
C90F: DA E1    orb  $E1
C911: D8 E1    eorb $E1
C913: DC 08    ldd  $08
C915: 28 F8    bvc  $C90F
C917: 30       tsx  
C918: F8 10 08 eorb $1008
C91B: 30       tsx  
C91C: F8 30 08 eorb $3008
C91F: 10       sba  
C920: F8 10 27 eorb $1027
C923: C9 14    adcb #$14
C925: 41       illegal
C926: E2 C1    sbcb $C1,x
C928: DE C1    ldx  $C1
C92A: E0 E1    subb $E1,x
C92C: E4 E1    andb $E1,x
C92E: E8 E1    eorb $E1,x
C930: E6 E1    ldb  $E1,x
C932: EA 07    orb  $07,x
C934: 41       illegal
C935: E2 08    sbcb $08,x
C937: 28 C1    bvc  $C8FA
C939: DE F8    ldx  $F8
C93B: 30       tsx  
C93C: C1 E0    cmpb #$E0
C93E: F8 10 E1 eorb $10E1
C941: E4 08    andb $08,x
C943: 30       tsx  
C944: E1 E8    cmpb $E8,x
C946: F8 30 E1 eorb $30E1
C949: EC 12    ldd  $12,x
C94B: 20 E1    bra  $C92E
C94D: EE 02    ldx  $02,x
C94F: 10       sba  
C950: 27 C9    beq  $C91B
C952: 14       illegal
C953: 41       illegal
C954: E2 C1    sbcb $C1,x
C956: DE C1    ldx  $C1
C958: E0 E1    subb $E1,x
C95A: CE E1 D0 ldx  #$E1D0
C95D: E1 D8    cmpb $D8,x
C95F: E1 DC    cmpb $DC,x
C961: 27 C9    beq  $C92C
C963: 14       illegal
C964: 41       illegal
C965: E2 C1    sbcb $C1,x
C967: DE C1    ldx  $C1
C969: E0 E1    subb $E1,x
C96B: D2 E1    sbcb $E1
C96D: D4 E1    andb $E1
C96F: D8 E1    eorb $E1
C971: DC 08    ldd  $08
C973: 41       illegal
C974: E2 08    sbcb $08,x
C976: 28 C1    bvc  $C939
C978: DE F8    ldx  $F8
C97A: 30       tsx  
C97B: C1 E0    cmpb #$E0
C97D: F8 10 61 eorb $1061
C980: C3 18 18 addd #$1818
C983: E1 F0    cmpb $F0,x
C985: 08       inx  
C986: 30       tsx  
C987: E1 F4    cmpb $F4,x
C989: F8 30 E1 eorb $30E1
C98C: F2 08 10 sbcb $0810
C98F: E1 F6    cmpb $F6,x
C991: F8 10 09 eorb $1009
C994: 41       illegal
C995: E2 08    sbcb $08,x
C997: 28 C1    bvc  $C95A
C999: DE F8    ldx  $F8
C99B: 30       tsx  
C99C: C1 E0    cmpb #$E0
C99E: F8 10 E2 eorb $10E2
C9A1: 5C       incb 
C9A2: 08       inx  
C9A3: 40       nega 
C9A4: E2 5E    sbcb $5E,x
C9A6: F8 40 62 eorb $4062
C9A9: 61 08 28 aim  #$08,$28,x
C9AC: 62 60 F8 oim  #$60,$f8,x
C9AF: 28 E1    bvc  $C992
C9B1: D8 08    eorb $08
C9B3: 10       sba  
C9B4: E1 DC    cmpb $DC,x
C9B6: F8 10 06 eorb $1006
C9B9: C2 6E    sbcb #$6E
C9BB: FA 30 C2 orb  $30C2
C9BE: 70 FA 10 neg  $FA10
C9C1: 42       illegal
C9C2: 76 0A 18 ror  $0A18
C9C5: E2 62    sbcb $62,x
C9C7: 0A       clv  
C9C8: 30       tsx  
C9C9: E2 66    sbcb $66,x
C9CB: FA 30 E2 orb  $30E2
C9CE: 64 03    lsr  $03,x
C9D0: 10       sba  
C9D1: 06       tap  
C9D2: C2 72    sbcb #$72
C9D4: FA 30 C2 orb  $30C2
C9D7: 74 FA 10 lsr  $FA10
C9DA: E2 68    sbcb $68,x
C9DC: 0A       clv  
C9DD: 20 E2    bra  $C9C1
C9DF: 6A FA    dec  $FA,x
C9E1: 20 62    bra  $CA45
C9E3: 6D 0A    tst  $0A,x
C9E5: 08       inx  
C9E6: 62 6C FA oim  #$6C,$fa,x
C9E9: 08       inx  
C9EA: 04       lsrd 
C9EB: 8E 34 08 lds  #$3408
C9EE: 10       sba  
C9EF: 8E 36 18 lds  #$3618
C9F2: 20 0E    bra  $CA02
C9F4: 38       pulx 
C9F5: 18       xgdx 
C9F6: 08       inx  
C9F7: 0E       cli  
C9F8: 39       rts  
C9F9: 28 18    bvc  $CA13
C9FB: 03       illegal
C9FC: 0E       cli  
C9FD: 44       lsra 
C9FE: 08       inx  
C9FF: 08       inx  
CA00: 8E 40 18 lds  #$4018
CA03: 10       sba  
CA04: 8E 42 28 lds  #$4228
CA07: 10       sba  
CA08: C3 8E 3A addd #$8E3A
CA0B: 08       inx  
CA0C: 08       inx  
CA0D: 18       xgdx 
CA0E: 08       inx  
CA0F: 28 08    bvc  $CA19
CA11: 07       tpa  
CA12: E0 54    subb $54,x
CA14: 18       xgdx 
CA15: 30       tsx  
CA16: E0 56    subb $56,x
CA18: 18       xgdx 
CA19: 10       sba  
CA1A: E0 52    subb $52,x
CA1C: 28 20    bvc  $CA3E
CA1E: 60 5E    neg  $5E,x
CA20: 28 08    bvc  $CA2A
CA22: 8B 28    adda #$28
CA24: 08       inx  
CA25: 30       tsx  
CA26: 8B 2A    adda #$2A
CA28: 08       inx  
CA29: 10       sba  
CA2A: 8B 2C    adda #$2C
CA2C: 18       xgdx 
CA2D: 30       tsx  
CA2E: 09       dex  
CA2F: E0 54    subb $54,x
CA31: 18       xgdx 
CA32: 30       tsx  
CA33: E0 56    subb $56,x
CA35: 18       xgdx 
CA36: 10       sba  
CA37: E0 52    subb $52,x
CA39: 28 20    bvc  $CA5B
CA3B: 60 5E    neg  $5E,x
CA3D: 28 08    bvc  $CA47
CA3F: 8B 2E    adda #$2E
CA41: F8 20 0B eorb $200B
CA44: 36       psha 
CA45: F8 08 8B eorb $088B
CA48: 30       tsx  
CA49: 08       inx  
CA4A: 30       tsx  
CA4B: 8B 32    adda #$32
CA4D: 08       inx  
CA4E: 10       sba  
CA4F: 8B 34    adda #$34
CA51: 18       xgdx 
CA52: 30       tsx  
CA53: CB 11    addb #$11
CA55: CB 26    addb #$26
CA57: CB 3D    addb #$3D
CA59: CB 4A    addb #$4A
CA5B: CB 57    addb #$57
CA5D: CB 62    addb #$62
CA5F: CB 79    addb #$79
CA61: CB 86    addb #$86
CA63: CB 8B    addb #$8B
CA65: CB A0    addb #$A0
CA67: CB B5    addb #$B5
CA69: CB CE    addb #$CE
CA6B: CB EB    addb #$EB
CA6D: CB FC    addb #$FC
CA6F: CC 11 CC ldd  #$11CC
CA72: 26 CC    bne  $CA40
CA74: 3B       rti  
CA75: CC 4C CC ldd  #$4CCC
CA78: 4C       inca 
CA79: CC 4C CC ldd  #$4CCC
CA7C: 4C       inca 
CA7D: CC 4C CC ldd  #$4CCC
CA80: 4C       inca 
CA81: CC 4C CC ldd  #$4CCC
CA84: 59       rolb 
CA85: CC 6E CC ldd  #$6ECC
CA88: 8F CC 9C sts  #$CC9C
CA8B: CC 9C CC ldd  #$9CCC
CA8E: 9C CC    cmpx $CC
CA90: A7 CC    sta  $CC,x
CA92: AF CC    sts  $CC,x
CA94: CA CC    orb  #$CC
CA96: E3 CD    addd $CD,x
CA98: 00       illegal
CA99: CD 0D CD std  #$0DCD
CA9C: 26 CD    bne  $CA6B
CA9E: 31       ins  
CA9F: CD 3E CD std  #$3ECD
CAA2: 57       asrb 
CAA3: CD 70 CD std  #$70CD
CAA6: 8D CD    bsr  $CA75
CAA8: 8D CD    bsr  $CA77
CAAA: 8D CD    bsr  $CA79
CAAC: 8D CD    bsr  $CA7B
CAAE: 8D CD    bsr  $CA7D
CAB0: 8D CD    bsr  $CA7F
CAB2: 8D CD    bsr  $CA81
CAB4: 8D CD    bsr  $CA83
CAB6: 8D CD    bsr  $CA85
CAB8: 8D CD    bsr  $CA87
CABA: 8D CD    bsr  $CA89
CABC: 8D CD    bsr  $CA8B
CABE: 8D CD    bsr  $CA8D
CAC0: A2 CD    sbca $CD,x
CAC2: A2 CD    sbca $CD,x
CAC4: A2 CD    sbca $CD,x
CAC6: A2 CD    sbca $CD,x
CAC8: A2 CD    sbca $CD,x
CACA: A2 CD    sbca $CD,x
CACC: A2 CD    sbca $CD,x
CACE: A2 CD    sbca $CD,x
CAD0: A2 CD    sbca $CD,x
CAD2: A2 CD    sbca $CD,x
CAD4: A2 CD    sbca $CD,x
CAD6: A2 CD    sbca $CD,x
CAD8: A2 CD    sbca $CD,x
CADA: A2 CD    sbca $CD,x
CADC: A2 CD    sbca $CD,x
CADE: A2 CD    sbca $CD,x
CAE0: A2 CD    sbca $CD,x
CAE2: A2 CD    sbca $CD,x
CAE4: A2 CD    sbca $CD,x
CAE6: A2 CD    sbca $CD,x
CAE8: A2 CD    sbca $CD,x
CAEA: A2 CD    sbca $CD,x
CAEC: A2 CD    sbca $CD,x
CAEE: A2 CD    sbca $CD,x
CAF0: A2 CD    sbca $CD,x
CAF2: A2 CD    sbca $CD,x
CAF4: A2 CD    sbca $CD,x
CAF6: A2 CD    sbca $CD,x
CAF8: A2 CD    sbca $CD,x
CAFA: A2 CD    sbca $CD,x
CAFC: C7 CD    stb  #$CD
CAFE: E4 CE    andb $CE,x
CB00: 01       nop  
CB01: CE 22 CE ldx  #$22CE
CB04: 47       asra 
CB05: CE 6C CE ldx  #$6CCE
CB08: 91 CE    cmpa $CE
CB0A: 9A CE    ora  $CE
CB0C: A7 CE    sta  $CE,x
CB0E: B4 CE D5 anda $CED5
CB11: 05       asld 
CB12: 83 60 F8 subd #$60F8
CB15: 30       tsx  
CB16: 83 62 F8 subd #$62F8
CB19: 10       sba  
CB1A: 83 64 08 subd #$6408
CB1D: 30       tsx  
CB1E: 83 66 08 subd #$6608
CB21: 10       sba  
CB22: 03       illegal
CB23: 72 18 18 oim  #$18,$18
CB26: 25 CB    bcs  $CAF3
CB28: 33       pulb 
CB29: 83 74 83 subd #$7483
CB2C: 76 83 78 ror  $8378
CB2F: 83 7A 03 subd #$7A03
CB32: 73 F8 30 com  $F830
CB35: F8 10 08 eorb $1008
CB38: 30       tsx  
CB39: 08       inx  
CB3A: 10       sba  
CB3B: 18       xgdx 
CB3C: 28 25    bvc  $CB63
CB3E: CB 33    addb #$33
CB40: 83 7C 83 subd #$7C83
CB43: 7E 83 80 jmp  $8380
CB46: 83 82 03 subd #$8203
CB49: 84 C5    anda #$C5
CB4B: 83 8E F8 subd #$8EF8
CB4E: 30       tsx  
CB4F: F8 10 08 eorb $1008
CB52: 30       tsx  
CB53: 08       inx  
CB54: 10       sba  
CB55: 18       xgdx 
CB56: 20 C4    bra  $CB1C
CB58: CA 6A    orb  #$6A
CB5A: 08       inx  
CB5B: 30       tsx  
CB5C: 08       inx  
CB5D: 10       sba  
CB5E: F8 30 F8 eorb $30F8
CB61: 10       sba  
CB62: 25 CB    bcs  $CB2F
CB64: 6F CA    clr  $CA,x
CB66: 62 CA 64 oim  #$CA,$64,x
CB69: CA 66    orb  #$66
CB6B: CA 68    orb  #$68
CB6D: 4A       deca 
CB6E: 72 08 30 oim  #$08,$30
CB71: 08       inx  
CB72: 10       sba  
CB73: F8 30 F8 eorb $30F8
CB76: 10       sba  
CB77: 18       xgdx 
CB78: 28 25    bvc  $CB9F
CB7A: CB 6F    addb #$6F
CB7C: CA 5A    orb  #$5A
CB7E: CA 5C    orb  #$5C
CB80: CA 5E    orb  #$5E
CB82: CA 60    orb  #$60
CB84: 4A       deca 
CB85: 73 E4 CA com  $E4CA
CB88: 52       illegal
CB89: CB 5A    addb #$5A
CB8B: 05       asld 
CB8C: 8C 94 F8 cmpx #$94F8
CB8F: 30       tsx  
CB90: 8C 96 F8 cmpx #$96F8
CB93: 10       sba  
CB94: 8C 98 08 cmpx #$9808
CB97: 30       tsx  
CB98: 8C 9A 08 cmpx #$9A08
CB9B: 10       sba  
CB9C: 0C       clc  
CB9D: 9C 18    cmpx $18
CB9F: 38       pulx 
CBA0: 05       asld 
CBA1: 8C 9E F8 cmpx #$9EF8
CBA4: 2E 8C    bgt  $CB32
CBA6: A0 08    suba $08,x
CBA8: 30       tsx  
CBA9: 8C 96 F8 cmpx #$96F8
CBAC: 10       sba  
CBAD: 8C 9A 08 cmpx #$9A08
CBB0: 10       sba  
CBB1: 0C       clc  
CBB2: AC 18    cmpx $18,x
CBB4: 28 06    bvc  $CBBC
CBB6: 8A 82    ora  #$82
CBB8: E0 20    subb $20,x
CBBA: 8A 84    ora  #$84
CBBC: F0 20 0A subb $200A
CBBF: 8A F0    ora  #$F0
CBC1: 08       inx  
CBC2: 8A 86    ora  #$86
CBC4: 00       illegal
CBC5: 30       tsx  
CBC6: 8A 88    ora  #$88
CBC8: 00       illegal
CBC9: 10       sba  
CBCA: 0A       clv  
CBCB: 8B 10    adda #$10
CBCD: 18       xgdx 
CBCE: 07       tpa  
CBCF: 8A 8C    ora  #$8C
CBD1: D8 20    eorb $20
CBD3: 0A       clv  
CBD4: 91 D8    cmpa $D8
CBD6: 08       inx  
CBD7: 8A 8E    ora  #$8E
CBD9: E8 20    eorb $20,x
CBDB: 0A       clv  
CBDC: 90 E8    suba $E8
CBDE: 08       inx  
CBDF: 8A 92    ora  #$92
CBE1: F8 20 0A eorb $200A
CBE4: 94 F8    anda $F8
CBE6: 08       inx  
CBE7: 0A       clv  
CBE8: 95 08    bita $08
CBEA: 18       xgdx 
CBEB: 04       lsrd 
CBEC: 8B D4    adda #$D4
CBEE: 00       illegal
CBEF: 30       tsx  
CBF0: 8B D6    adda #$D6
CBF2: 00       illegal
CBF3: 10       sba  
CBF4: 8B D8    adda #$D8
CBF6: 10       sba  
CBF7: 30       tsx  
CBF8: 0B       sev  
CBF9: DA 10    orb  $10
CBFB: 18       xgdx 
CBFC: 05       asld 
CBFD: 8B DC    adda #$DC
CBFF: F8 10 8B eorb $108B
CC02: DE 08    ldx  $08
CC04: 20 0B    bra  $CC11
CC06: E4 08    andb $08,x
CC08: 08       inx  
CC09: 8B E0    adda #$E0
CC0B: 18       xgdx 
CC0C: 10       sba  
CC0D: 8B E2    adda #$E2
CC0F: 28 10    bvc  $CC21
CC11: 05       asld 
CC12: 4A       deca 
CC13: 9E 30    lds  $30
CC15: 00       illegal
CC16: CA 96    orb  #$96
CC18: 20 08    bra  $CC22
CC1A: CA 98    orb  #$98
CC1C: 10       sba  
CC1D: 08       inx  
CC1E: CA 9A    orb  #$9A
CC20: 00       illegal
CC21: 08       inx  
CC22: CA 9C    orb  #$9C
CC24: F0 08 05 subb $0805
CC27: 8A 74    ora  #$74
CC29: F0 20 8A subb $208A
CC2C: 76 00 30 ror  $0030
CC2F: 8A 78    ora  #$78
CC31: 00       illegal
CC32: 10       sba  
CC33: 0A       clv  
CC34: 7B F0 08 tim  #$F0,$08
CC37: 0A       clv  
CC38: 7A 10 08 dec  $1008
CC3B: 04       lsrd 
CC3C: 8A 7C    ora  #$7C
CC3E: F8 10 8A eorb $108A
CC41: 7E 08 20 jmp  $0820
CC44: 0A       clv  
CC45: 9F 08    sts  $08
CC47: 08       inx  
CC48: 8A 80    ora  #$80
CC4A: 18       xgdx 
CC4B: 00       illegal
CC4C: C5 8B    bitb #$8B
CC4E: C4 F8    andb #$F8
CC50: 30       tsx  
CC51: F8 10 08 eorb $1008
CC54: 50       negb 
CC55: 08       inx  
CC56: 30       tsx  
CC57: 08       inx  
CC58: 10       sba  
CC59: 05       asld 
CC5A: 8B CE    adda #$CE
CC5C: F8 28 8B eorb $288B
CC5F: D0 08    subb $08
CC61: 28 0B    bvc  $CC6E
CC63: D3 F8    addd $F8
CC65: 10       sba  
CC66: 0B       sev  
CC67: D2 08    sbcb $08
CC69: 10       sba  
CC6A: 0B       sev  
CC6B: DB 18    addb $18
CC6D: 30       tsx  
CC6E: 08       inx  
CC6F: 4A       deca 
CC70: 39       rts  
CC71: 08       inx  
CC72: 50       negb 
CC73: CA 3A    orb  #$3A
CC75: F8 48 CA eorb $48CA
CC78: 3C       pshx 
CC79: E8 48    eorb $48,x
CC7B: 8C D0 F8 cmpx #$D0F8
CC7E: 40       nega 
CC7F: 8C D2 F8 cmpx #$D2F8
CC82: 20 0C    bra  $CC90
CC84: AD F8    jsr  $F8,x
CC86: 08       inx  
CC87: 8C D4 08 cmpx #$D408
CC8A: 30       tsx  
CC8B: 8C D6 08 cmpx #$D608
CC8E: 10       sba  
CC8F: C5 8C    bitb #$8C
CC91: B2 F8 30 sbca $F830
CC94: F8 10 08 eorb $1008
CC97: 30       tsx  
CC98: 08       inx  
CC99: 10       sba  
CC9A: 18       xgdx 
CC9B: 30       tsx  
CC9C: C4 CC    andb #$CC
CC9E: BC 08 30 cmpx $0830
CCA1: 08       inx  
CCA2: 10       sba  
CCA3: F8 30 F8 eorb $30F8
CCA6: 10       sba  
CCA7: A4 CC    anda $CC,x
CCA9: CC 9F CC ldd  #$9FCC
CCAC: BE CE C2 lds  $CEC2
CCAF: 26 CC    bne  $CC7D
CCB1: BE 4A 46 lds  $4A46
CCB4: 4A       deca 
CCB5: 47       asra 
CCB6: CA 3E    orb  #$3E
CCB8: CA 40    orb  #$40
CCBA: CA 42    orb  #$42
CCBC: CA 44    orb  #$44
CCBE: 18       xgdx 
CCBF: 28 18    bvc  $CCD9
CCC1: 08       inx  
CCC2: 08       inx  
CCC3: 30       tsx  
CCC4: 08       inx  
CCC5: 10       sba  
CCC6: F8 30 F8 eorb $30F8
CCC9: 10       sba  
CCCA: 06       tap  
CCCB: 4A       deca 
CCCC: 50       negb 
CCCD: 18       xgdx 
CCCE: 28 4A    bvc  $CD1A
CCD0: 51       illegal
CCD1: 18       xgdx 
CCD2: 08       inx  
CCD3: CA 48    orb  #$48
CCD5: 08       inx  
CCD6: 30       tsx  
CCD7: CA 4A    orb  #$4A
CCD9: 08       inx  
CCDA: 10       sba  
CCDB: CA 4C    orb  #$4C
CCDD: F8 30 CA eorb $30CA
CCE0: 4E       illegal
CCE1: F8 10 07 eorb $1007
CCE4: CB 46    addb #$46
CCE6: 10       sba  
CCE7: 30       tsx  
CCE8: CB 48    addb #$48
CCEA: 10       sba  
CCEB: 10       sba  
CCEC: CB 4A    addb #$4A
CCEE: 00       illegal
CCEF: 30       tsx  
CCF0: CB 4C    addb #$4C
CCF2: 00       illegal
CCF3: 10       sba  
CCF4: CB 4E    addb #$4E
CCF6: F0 40 4B subb $404B
CCF9: 50       negb 
CCFA: F0 28 4B subb $284B
CCFD: 51       illegal
CCFE: F0 08 C5 subb $08C5
CD01: CB 3C    addb #$3C
CD03: 0B       sev  
CD04: 47       asra 
CD05: 0B       sev  
CD06: 27 0B    beq  $CD13
CD08: 07       tpa  
CD09: FB 37 FB addb $37FB
CD0C: 17       tba  
CD0D: 06       tap  
CD0E: CB 52    addb #$52
CD10: 20 34    bra  $CD46
CD12: CB 54    addb #$54
CD14: 10       sba  
CD15: 34       des  
CD16: CB 56    addb #$56
CD18: 10       sba  
CD19: 14       illegal
CD1A: CB 58    addb #$58
CD1C: 00       illegal
CD1D: 34       des  
CD1E: CB 5A    addb #$5A
CD20: 00       illegal
CD21: 14       illegal
CD22: 4B       illegal
CD23: 3B       rti  
CD24: F0 0C C4 subb $0CC4
CD27: CB 66    addb #$66
CD29: 0A       clv  
CD2A: 34       des  
CD2B: 0A       clv  
CD2C: 14       illegal
CD2D: FA 34 FA orb  $34FA
CD30: 14       illegal
CD31: C5 CB    bitb #$CB
CD33: 6E 18    jmp  $18,x
CD35: 30       tsx  
CD36: 08       inx  
CD37: 30       tsx  
CD38: 08       inx  
CD39: 10       sba  
CD3A: F8 30 F8 eorb $30F8
CD3D: 10       sba  
CD3E: 06       tap  
CD3F: CB 5C    addb #$5C
CD41: 08       inx  
CD42: 40       nega 
CD43: CB 5E    addb #$5E
CD45: 08       inx  
CD46: 20 4B    bra  $CD93
CD48: 65 08 08 eim  #$08,$08,x
CD4B: CB 60    addb #$60
CD4D: F8 40 CB eorb $40CB
CD50: 62 F8 20 oim  #$F8,$20,x
CD53: 4B       illegal
CD54: 64 F8    lsr  $F8,x
CD56: 08       inx  
CD57: 06       tap  
CD58: CB B0    addb #$B0
CD5A: 20 20    bra  $CD7C
CD5C: CB B2    addb #$B2
CD5E: 10       sba  
CD5F: 30       tsx  
CD60: 4B       illegal
CD61: B9 10 18 adca $1018
CD64: CB B4    addb #$B4
CD66: 00       illegal
CD67: 30       tsx  
CD68: CB B6    addb #$B6
CD6A: 00       illegal
CD6B: 10       sba  
CD6C: 4B       illegal
CD6D: B8 F0 18 eora $F018
CD70: 07       tpa  
CD71: CB BA    addb #$BA
CD73: 10       sba  
CD74: 30       tsx  
CD75: 4B       illegal
CD76: E5 10    bitb $10,x
CD78: 18       xgdx 
CD79: CB BC    addb #$BC
CD7B: 00       illegal
CD7C: 30       tsx  
CD7D: CB BE    addb #$BE
CD7F: 00       illegal
CD80: 10       sba  
CD81: CB C0    addb #$C0
CD83: F0 30 4B subb $304B
CD86: C2 F0    sbcb #$F0
CD88: 18       xgdx 
CD89: 4B       illegal
CD8A: C3 E0 28 addd #$E028
CD8D: 05       asld 
CD8E: 8C 88 F8 cmpx #$88F8
CD91: 30       tsx  
CD92: 8C 8A F8 cmpx #$8AF8
CD95: 10       sba  
CD96: 8C 8C 08 cmpx #$8C08
CD99: 20 0C    bra  $CDA7
CD9B: 8E 08 08 lds  #$0808
CD9E: 0C       clc  
CD9F: 8F 18 28 sts  #$1828
CDA2: 09       dex  
CDA3: 91 7A    cmpa $7A
CDA5: F8 20 11 eorb $2011
CDA8: 87 F8    sta  #$F8
CDAA: 08       inx  
CDAB: 91 7C    cmpa $7C
CDAD: 08       inx  
CDAE: 30       tsx  
CDAF: 91 7E    cmpa $7E
CDB1: 08       inx  
CDB2: 10       sba  
CDB3: 8C 90 18 cmpx #$9018
CDB6: 20 8C    bra  $CD44
CDB8: 92 28    sbca $28
CDBA: 20 0C    bra  $CDC8
CDBC: 9D 28    jsr  $28
CDBE: 08       inx  
CDBF: 0F       sei  
CDC0: FF 18 08 stx  $1808
CDC3: 0C       clc  
CDC4: A7 08    sta  $08,x
CDC6: 24 07    bcc  $CDCF
CDC8: 91 80    cmpa $80
CDCA: F8 20 11 eorb $2011
CDCD: 86 F8    lda  #$F8
CDCF: 08       inx  
CDD0: 91 82    cmpa $82
CDD2: 08       inx  
CDD3: 30       tsx  
CDD4: 91 84    cmpa $84
CDD6: 08       inx  
CDD7: 10       sba  
CDD8: 8C A2 18 cmpx #$A218
CDDB: 20 8C    bra  $CD69
CDDD: A4 28    anda $28,x
CDDF: 20 0C    bra  $CDED
CDE1: A6 28    lda  $28,x
CDE3: 08       inx  
CDE4: 07       tpa  
CDE5: 91 88    cmpa $88
CDE7: 08       inx  
CDE8: 30       tsx  
CDE9: 91 8A    cmpa $8A
CDEB: 08       inx  
CDEC: 10       sba  
CDED: 91 8C    cmpa $8C
CDEF: 18       xgdx 
CDF0: 30       tsx  
CDF1: 11       cba  
CDF2: 93 18    subd $18
CDF4: 18       xgdx 
CDF5: 0C       clc  
CDF6: AB 18    adda $18,x
CDF8: 28 8C    bvc  $CD86
CDFA: A8 28    eora $28,x
CDFC: 20 0C    bra  $CE0A
CDFE: AA 28    ora  $28,x
CE00: 08       inx  
CE01: 08       inx  
CE02: 91 9C    cmpa $9C
CE04: 00       illegal
CE05: 30       tsx  
CE06: 91 9E    cmpa $9E
CE08: 00       illegal
CE09: 10       sba  
CE0A: 91 A0    cmpa $A0
CE0C: 10       sba  
CE0D: 20 11    bra  $CE20
CE0F: A2 10    sbca $10,x
CE11: 08       inx  
CE12: 8C 80 04 cmpx #$8004
CE15: 30       tsx  
CE16: 0C       clc  
CE17: 86 04    lda  #$04
CE19: 18       xgdx 
CE1A: 8C 82 14 cmpx #$8214
CE1D: 30       tsx  
CE1E: 8C 84 14 cmpx #$8414
CE21: 10       sba  
CE22: 09       dex  
CE23: 91 A4    cmpa $A4
CE25: EB 20    addb $20,x
CE27: 91 A6    cmpa $A6
CE29: FB 20 11 addb $2011
CE2C: AC FB    cmpx $FB,x
CE2E: 08       inx  
CE2F: 91 A8    cmpa $A8
CE31: 0B       sev  
CE32: 20 91    bra  $CDC5
CE34: AA 1B    ora  $1B,x
CE36: 20 0C    bra  $CE44
CE38: 87 E4    sta  #$E4
CE3A: 27 8C    beq  $CDC8
CE3C: 7A F4 2F dec  $F42F
CE3F: 8C 7C 04 cmpx #$7C04
CE42: 2F 8C    ble  $CDD0
CE44: 7E 14 2F jmp  $142F
CE47: 09       dex  
CE48: 93 2A    subd $2A
CE4A: F8 30 93 eorb $3093
CE4D: 2C F8    bge  $CE47
CE4F: 10       sba  
CE50: 93 2E    subd $2E
CE52: 08       inx  
CE53: 30       tsx  
CE54: 93 30    subd $30
CE56: 08       inx  
CE57: 10       sba  
CE58: 83 68 08 subd #$6808
CE5B: 20 83    bra  $CDE0
CE5D: 6A 18    dec  $18,x
CE5F: 30       tsx  
CE60: 83 6C 18 subd #$6C18
CE63: 10       sba  
CE64: 83 6E 28 subd #$6E28
CE67: 30       tsx  
CE68: 83 70 28 subd #$7028
CE6B: 10       sba  
CE6C: 09       dex  
CE6D: 93 32    subd $32
CE6F: F8 30 93 eorb $3093
CE72: 34       des  
CE73: F8 10 93 eorb $1093
CE76: 36       psha 
CE77: 08       inx  
CE78: 30       tsx  
CE79: 93 38    subd $38
CE7B: 08       inx  
CE7C: 10       sba  
CE7D: 83 86 08 subd #$8608
CE80: 20 83    bra  $CE05
CE82: 88 18    eora #$18
CE84: 30       tsx  
CE85: 03       illegal
CE86: 85 18    bita #$18
CE88: 18       xgdx 
CE89: 83 8A 28 subd #$8A28
CE8C: 30       tsx  
CE8D: 83 8C 28 subd #$8C28
CE90: 10       sba  
CE91: 02       illegal
CE92: 8A 52    ora  #$52
CE94: F8 30 8A eorb $308A
CE97: 56       rorb 
CE98: 08       inx  
CE99: 30       tsx  
CE9A: 03       illegal
CE9B: 8A 5A    ora  #$5A
CE9D: F8 30 8A eorb $308A
CEA0: 5E       illegal
CEA1: 08       inx  
CEA2: 30       tsx  
CEA3: 0A       clv  
CEA4: 73 E8 28 com  $E828
CEA7: 03       illegal
CEA8: 4A       deca 
CEA9: 39       rts  
CEAA: 08       inx  
CEAB: 08       inx  
CEAC: CA 3A    orb  #$3A
CEAE: F8 00 CA eorb $00CA
CEB1: 3C       pshx 
CEB2: E8 00    eorb $00,x
CEB4: 08       inx  
CEB5: CA 74    orb  #$74
CEB7: 28 20    bvc  $CED9
CEB9: CA 76    orb  #$76
CEBB: 18       xgdx 
CEBC: 30       tsx  
CEBD: CA 78    orb  #$78
CEBF: 18       xgdx 
CEC0: 10       sba  
CEC1: 4A       deca 
CEC2: 7B 28 08 tim  #$28,$08
CEC5: 4A       deca 
CEC6: 7A 08 08 dec  $0808
CEC9: 9B 28    adda $28
CECB: 08       inx  
CECC: 30       tsx  
CECD: 9B 2A    adda $2A
CECF: 08       inx  
CED0: 10       sba  
CED1: 9B 2C    adda $2C
CED3: 18       xgdx 
CED4: 30       tsx  
CED5: 0A       clv  
CED6: CA 74    orb  #$74
CED8: 28 20    bvc  $CEFA
CEDA: CA 76    orb  #$76
CEDC: 18       xgdx 
CEDD: 30       tsx  
CEDE: CA 78    orb  #$78
CEE0: 18       xgdx 
CEE1: 10       sba  
CEE2: 4A       deca 
CEE3: 7B 28 08 tim  #$28,$08
CEE6: 4A       deca 
CEE7: 7A 08 08 dec  $0808
CEEA: 9B 2E    adda $2E
CEEC: F8 20 1B eorb $201B
CEEF: 36       psha 
CEF0: F8 08 9B eorb $089B
CEF3: 30       tsx  
CEF4: 08       inx  
CEF5: 30       tsx  
CEF6: 9B 32    adda $32
CEF8: 08       inx  
CEF9: 10       sba  
CEFA: 9B 34    adda $34
CEFC: 18       xgdx 
CEFD: 30       tsx  
CEFE: CF F4 D0 stx  #$F4D0
CF01: 0D       sec  
CF02: D0 28    subb $28
CF04: D0 41    subb $41
CF06: D0 50    subb $50
CF08: D0 5F    subb $5F
CF0A: D0 6E    subb $6E
CF0C: D0 7D    subb $7D
CF0E: D0 8C    subb $8C
CF10: D0 9F    subb $9F
CF12: D0 B8    subb $B8
CF14: D0 CD    subb $CD
CF16: D0 DA    subb $DA
CF18: D0 ED    subb $ED
CF1A: D0 FA    subb $FA
CF1C: D1 07    cmpb $07
CF1E: D1 12    cmpb $12
CF20: D1 23    cmpb $23
CF22: D1 34    cmpb $34
CF24: D1 49    cmpb $49
CF26: D1 66    cmpb $66
CF28: D1 71    cmpb $71
CF2A: D1 7C    cmpb $7C
CF2C: D1 91    cmpb $91
CF2E: D1 AA    cmpb $AA
CF30: D1 C7    cmpb $C7
CF32: D1 E0    cmpb $E0
CF34: D1 FD    cmpb $FD
CF36: D2 12    sbcb $12
CF38: D2 2B    sbcb $2B
CF3A: D2 48    sbcb $48
CF3C: D2 5D    sbcb $5D
CF3E: D2 76    sbcb $76
CF40: D2 8B    sbcb $8B
CF42: D2 A0    sbcb $A0
CF44: D2 BB    sbcb $BB
CF46: D2 D6    sbcb $D6
CF48: D2 E5    sbcb $E5
CF4A: D2 F4    sbcb $F4
CF4C: D3 03    addd $03
CF4E: D3 03    addd $03
CF50: D3 03    addd $03
CF52: D3 03    addd $03
CF54: D3 18    addd $18
CF56: D3 2D    addd $2D
CF58: D3 46    addd $46
CF5A: D3 5F    addd $5F
CF5C: D3 7C    addd $7C
CF5E: D3 95    addd $95
CF60: D3 AE    addd $AE
CF62: D3 C3    addd $C3
CF64: D3 DC    addd $DC
CF66: D3 F1    addd $F1
CF68: D4 02    andb $02
CF6A: D4 13    andb $13
CF6C: D4 28    andb $28
CF6E: D4 41    andb $41
CF70: D4 5A    andb $5A
CF72: D4 73    andb $73
CF74: D4 88    andb $88
CF76: D4 A1    andb $A1
CF78: D4 BA    andb $BA
CF7A: D4 BA    andb $BA
CF7C: D4 BA    andb $BA
CF7E: D4 BA    andb $BA
CF80: D4 C2    andb $C2
CF82: D4 C2    andb $C2
CF84: D4 C2    andb $C2
CF86: D4 E3    andb $E3
CF88: D5 04    bitb $04
CF8A: D5 29    bitb $29
CF8C: D5 4A    bitb $4A
CF8E: D5 5B    bitb $5B
CF90: D5 70    bitb $70
CF92: D5 7D    bitb $7D
CF94: D5 9A    bitb $9A
CF96: D5 B5    bitb $B5
CF98: D5 D2    bitb $D2
CF9A: D5 E1    bitb $E1
CF9C: D5 FE    bitb $FE
CF9E: D6 0D    ldb  $0D
CFA0: D6 2A    ldb  $2A
CFA2: D6 39    ldb  $39
CFA4: D6 4E    ldb  $4E
CFA6: D6 73    ldb  $73
CFA8: D6 98    ldb  $98
CFAA: D6 B9    ldb  $B9
CFAC: D6 D6    ldb  $D6
CFAE: D6 F7    ldb  $F7
CFB0: D7 18    stb  $18
CFB2: D7 35    stb  $35
CFB4: D7 58    stb  $58
CFB6: D7 6B    stb  $6B
CFB8: D7 8C    stb  $8C
CFBA: D7 9F    stb  $9F
CFBC: D7 B2    stb  $B2
CFBE: D7 D7    stb  $D7
CFC0: D8 00    eorb $00
CFC2: D8 21    eorb $21
CFC4: D8 42    eorb $42
CFC6: D8 6F    eorb $6F
CFC8: D8 90    eorb $90
CFCA: D8 90    eorb $90
CFCC: D8 90    eorb $90
CFCE: D8 B5    eorb $B5
CFD0: D8 DA    eorb $DA
CFD2: D8 FB    eorb $FB
CFD4: D9 20    adcb $20
CFD6: D9 41    adcb $41
CFD8: D9 62    adcb $62
CFDA: D9 83    adcb $83
CFDC: D9 A2    adcb $A2
CFDE: D9 B3    adcb $B3
CFE0: D9 D0    adcb $D0
CFE2: D9 ED    adcb $ED
CFE4: DA 12    orb  $12
CFE6: DA 33    orb  $33
CFE8: DA 60    orb  $60
CFEA: DA 81    orb  $81
CFEC: DA A2    orb  $A2
CFEE: DA BF    orb  $BF
CFF0: DA E4    orb  $E4
CFF2: DB 09    addb $09
CFF4: 06       tap  
CFF5: 05       asld 
CFF6: 10       sba  
CFF7: F7 38 00 stb  $3800
CFFA: 1B       aba  
CFFB: F8 28 80 eorb $2880
CFFE: 1C       illegal
CFFF: F8 10 05 eorb $1005
D002: 11       cba  
D003: 07       tpa  
D004: 38       pulx 
D005: 00       illegal
D006: 1F       illegal
D007: 08       inx  
D008: 28 80    bvc  $CF8A
D00A: 20 08    bra  $D014
D00C: 10       sba  
D00D: 26 D0    bne  $CFDF
D00F: 1C       illegal
D010: 05       asld 
D011: 10       sba  
D012: 00       illegal
D013: 23 80    bls  $CF95
D015: 24 05    bcc  $D01C
D017: 11       cba  
D018: 00       illegal
D019: 27 80    beq  $CF9B
D01B: 28 F8    bvc  $D015
D01D: 38       pulx 
D01E: F8 28 F8 eorb $28F8
D021: 10       sba  
D022: 08       inx  
D023: 38       pulx 
D024: 08       inx  
D025: 28 08    bvc  $D02F
D027: 10       sba  
D028: 06       tap  
D029: 05       asld 
D02A: 12       asx1 1,s
D02B: F9 38 00 adcb $3800
D02E: 23 F8    bls  $D028
D030: 28 80    bvc  $CFB2
D032: 2E F8    bgt  $D02C
D034: 10       sba  
D035: 05       asld 
D036: 13       asx2 1,s
D037: 09       dex  
D038: 38       pulx 
D039: 00       illegal
D03A: 27 08    beq  $D044
D03C: 28 80    bvc  $CFBE
D03E: 30       tsx  
D03F: 08       inx  
D040: 10       sba  
D041: 26 D0    bne  $D013
D043: 1C       illegal
D044: 05       asld 
D045: 12       asx1 1,s
D046: 00       illegal
D047: 1B       aba  
D048: 80 2A    suba #$2A
D04A: 05       asld 
D04B: 13       asx2 1,s
D04C: 00       illegal
D04D: 1F       illegal
D04E: 80 2C    suba #$2C
D050: 26 D0    bne  $D022
D052: 1C       illegal
D053: 05       asld 
D054: 04       lsrd 
D055: 00       illegal
D056: 03       illegal
D057: 80 04    suba #$04
D059: 05       asld 
D05A: 05       asld 
D05B: 00       illegal
D05C: 07       tpa  
D05D: 80 08    suba #$08
D05F: 26 D0    bne  $D031
D061: 1C       illegal
D062: 05       asld 
D063: 04       lsrd 
D064: 00       illegal
D065: 03       illegal
D066: 80 12    suba #$12
D068: 05       asld 
D069: 05       asld 
D06A: 00       illegal
D06B: 07       tpa  
D06C: 80 14    suba #$14
D06E: 26 D0    bne  $D040
D070: 1C       illegal
D071: 05       asld 
D072: 06       tap  
D073: 00       illegal
D074: 0B       sev  
D075: 80 0C    suba #$0C
D077: 05       asld 
D078: 07       tpa  
D079: 00       illegal
D07A: 0F       sei  
D07B: 80 10    suba #$10
D07D: 26 D0    bne  $D04F
D07F: 1C       illegal
D080: 05       asld 
D081: 06       tap  
D082: 00       illegal
D083: 0B       sev  
D084: 80 16    suba #$16
D086: 05       asld 
D087: 07       tpa  
D088: 00       illegal
D089: 0F       sei  
D08A: 80 18    suba #$18
D08C: 24 D0    bcc  $D05E
D08E: 97 85    sta  $85
D090: 00       illegal
D091: 80 34    suba #$34
D093: 80 36    suba #$36
D095: 80 38    suba #$38
D097: F8 30 F8 eorb $30F8
D09A: 10       sba  
D09B: 08       inx  
D09C: 30       tsx  
D09D: 08       inx  
D09E: 10       sba  
D09F: 06       tap  
D0A0: 05       asld 
D0A1: 02       illegal
D0A2: F8 38 05 eorb $3805
D0A5: 03       illegal
D0A6: 08       inx  
D0A7: 38       pulx 
D0A8: 00       illegal
D0A9: 3B       rti  
D0AA: F8 28 00 eorb $2800
D0AD: 3D       mul  
D0AE: 08       inx  
D0AF: 28 80    bvc  $D031
D0B1: 34       des  
D0B2: F8 10 80 eorb $1080
D0B5: 38       pulx 
D0B6: 08       inx  
D0B7: 10       sba  
D0B8: 05       asld 
D0B9: 85 0A    bita #$0A
D0BB: E8 20    eorb $20,x
D0BD: 80 40    suba #$40
D0BF: F8 20 00 eorb $2000
D0C2: 44       lsra 
D0C3: F8 08 80 eorb $0880
D0C6: 42       illegal
D0C7: 08       inx  
D0C8: 20 00    bra  $D0CA
D0CA: 45       illegal
D0CB: 08       inx  
D0CC: 08       inx  
D0CD: 03       illegal
D0CE: 85 08    bita #$08
D0D0: D8 10    eorb $10
D0D2: 80 48    suba #$48
D0D4: E8 10    eorb $10,x
D0D6: 80 4A    suba #$4A
D0D8: F8 10 24 eorb $1024
D0DB: D0 E5    subb $E5
D0DD: 80 58    suba #$58
D0DF: 00       illegal
D0E0: 5F       clrb 
D0E1: 85 14    bita #$14
D0E3: 80 5C    suba #$5C
D0E5: F8 20 F8 eorb $20F8
D0E8: 08       inx  
D0E9: 08       inx  
D0EA: 30       tsx  
D0EB: 08       inx  
D0EC: 10       sba  
D0ED: 03       illegal
D0EE: 80 60    suba #$60
D0F0: 08       inx  
D0F1: 10       sba  
D0F2: 80 62    suba #$62
D0F4: 18       xgdx 
D0F5: 10       sba  
D0F6: 85 16    bita #$16
D0F8: 28 10    bvc  $D10A
D0FA: 03       illegal
D0FB: C5 0C    bitb #$0C
D0FD: 18       xgdx 
D0FE: 08       inx  
D0FF: C0 4E    subb #$4E
D101: 08       inx  
D102: 08       inx  
D103: C0 50    subb #$50
D105: F8 08 24 eorb $0824
D108: D0 E5    subb $E5
D10A: 80 52    suba #$52
D10C: 00       illegal
D10D: 5E       illegal
D10E: 85 0E    bita #$0E
D110: 80 56    suba #$56
D112: 04       lsrd 
D113: 80 66    suba #$66
D115: F8 10 05 eorb $1005
D118: 18       xgdx 
D119: 08       inx  
D11A: 28 00    bvc  $D11C
D11C: 69 08    rol  $08,x
D11E: 18       xgdx 
D11F: 00       illegal
D120: 6A 08    dec  $08,x
D122: 08       inx  
D123: 04       lsrd 
D124: 80 8C    suba #$8C
D126: F8 30 80 eorb $3080
D129: 8E F8 10 lds  #$F810
D12C: 85 22    bita #$22
D12E: 04       lsrd 
D12F: 30       tsx  
D130: 80 92    suba #$92
D132: 08       inx  
D133: 10       sba  
D134: 05       asld 
D135: 80 94    suba #$94
D137: F8 30 80 eorb $3080
D13A: 96 F8    lda  $F8
D13C: 10       sba  
D13D: 05       asld 
D13E: 1B       aba  
D13F: 08       inx  
D140: 38       pulx 
D141: 00       illegal
D142: 99 08    adca $08
D144: 28 80    bvc  $D0C6
D146: 9A 08    ora  $08
D148: 10       sba  
D149: 07       tpa  
D14A: 05       asld 
D14B: 19       daa  
D14C: 08       inx  
D14D: 38       pulx 
D14E: 05       asld 
D14F: 1A       slp  
D150: 18       xgdx 
D151: 38       pulx 
D152: 80 6C    suba #$6C
D154: F8 20 00 eorb $2000
D157: 6B F8 08 tim  #$F8,$08,x
D15A: 00       illegal
D15B: 6F 08    clr  $08,x
D15D: 28 80    bvc  $D0DF
D15F: 70 08 10 neg  $0810
D162: 00       illegal
D163: 73 18 28 com  $1828
D166: 24 D0    bcc  $D138
D168: 97 80    sta  $80
D16A: 74 80 76 lsr  $8076
D16D: 85 1C    bita #$1C
D16F: 80 7A    suba #$7A
D171: 24 D0    bcc  $D143
D173: 97 80    sta  $80
D175: 7C 80 7E inc  $807E
D178: 85 1E    bita #$1E
D17A: 80 82    suba #$82
D17C: 05       asld 
D17D: 80 84    suba #$84
D17F: F8 20 00 eorb $2000
D182: 9C F8    cmpx $F8
D184: 08       inx  
D185: 85 20    bita #$20
D187: 08       inx  
D188: 30       tsx  
D189: 80 88    suba #$88
D18B: 08       inx  
D18C: 10       sba  
D18D: 80 8A    suba #$8A
D18F: 18       xgdx 
D190: 30       tsx  
D191: 06       tap  
D192: 05       asld 
D193: 2A F8    bpl  $D18D
D195: 30       tsx  
D196: 00       illegal
D197: 9F F8    sts  $F8
D199: 28 80    bvc  $D11B
D19B: A0 F8    suba $F8,x
D19D: 10       sba  
D19E: 05       asld 
D19F: 2B 08    bmi  $D1A9
D1A1: 38       pulx 
D1A2: 00       illegal
D1A3: A3 08    subd $08,x
D1A5: 28 80    bvc  $D127
D1A7: A4 08    anda $08,x
D1A9: 10       sba  
D1AA: 07       tpa  
D1AB: 05       asld 
D1AC: 28 F8    bvc  $D1A6
D1AE: 28 05    bvc  $D1B5
D1B0: 29 08    bvs  $D1BA
D1B2: 28 00    bvc  $D1B4
D1B4: A7 F8    sta  $F8,x
D1B6: 18       xgdx 
D1B7: 00       illegal
D1B8: A9 08    adca $08,x
D1BA: 18       xgdx 
D1BB: 00       illegal
D1BC: AA F8    ora  $F8,x
D1BE: 08       inx  
D1BF: 00       illegal
D1C0: AB 08    adda $08,x
D1C2: 08       inx  
D1C3: 03       illegal
D1C4: 1B       aba  
D1C5: 18       xgdx 
D1C6: 28 06    bvc  $D1CE
D1C8: 05       asld 
D1C9: 24 F0    bcc  $D1BB
D1CB: 28 00    bvc  $D1CD
D1CD: B5 F0 18 bita $F018
D1D0: 00       illegal
D1D1: 9D 10    jsr  $10
D1D3: 18       xgdx 
D1D4: 80 B6    suba #$B6
D1D6: 00       illegal
D1D7: 20 00    bra  $D1D9
D1D9: B8 F0 08 eora $F008
D1DC: 00       illegal
D1DD: B9 00 08 adca $0008
D1E0: 07       tpa  
D1E1: 00       illegal
D1E2: D5 F8    bitb $F8
D1E4: 18       xgdx 
D1E5: 00       illegal
D1E6: D9 F8    adcb $F8
D1E8: 08       inx  
D1E9: 00       illegal
D1EA: D7 08    stb  $08
D1EC: 28 00    bvc  $D1EE
D1EE: D8 08    eorb $08
D1F0: 18       xgdx 
D1F1: 00       illegal
D1F2: D6 08    ldb  $08
D1F4: 08       inx  
D1F5: 05       asld 
D1F6: 37       pshb 
D1F7: F8 38 05 eorb $3805
D1FA: 3C       pshx 
D1FB: F8 28 05 eorb $2805
D1FE: 80 BE    suba #$BE
D200: 00       illegal
D201: 30       tsx  
D202: 80 BA    suba #$BA
D204: 00       illegal
D205: 10       sba  
D206: 80 BC    suba #$BC
D208: 10       sba  
D209: 10       sba  
D20A: 05       asld 
D20B: 31       ins  
D20C: 10       sba  
D20D: 38       pulx 
D20E: 05       asld 
D20F: 32       pula 
D210: 10       sba  
D211: 28 06    bvc  $D219
D213: 05       asld 
D214: 2C E8    bge  $D1FE
D216: 38       pulx 
D217: 00       illegal
D218: AD E8    jsr  $E8,x
D21A: 28 80    bvc  $D19C
D21C: AE E8    lds  $E8,x
D21E: 10       sba  
D21F: 05       asld 
D220: 2D F8    blt  $D21A
D222: 38       pulx 
D223: 00       illegal
D224: B1 F8 28 cmpa $F828
D227: 80 B2    suba #$B2
D229: F8 10 07 eorb $1007
D22C: 0B       sev  
D22D: F6 D8 38 ldb  $D838
D230: 05       asld 
D231: 26 E8    bne  $D21B
D233: 38       pulx 
D234: 0B       sev  
D235: EF E8    stx  $E8,x
D237: 28 8B    bvc  $D1C4
D239: F0 E8 10 subb $E810
D23C: 05       asld 
D23D: 27 F8    beq  $D237
D23F: 38       pulx 
D240: 0B       sev  
D241: F3 F8 28 addd $F828
D244: 8B F4    adda #$F4
D246: F8 10 05 eorb $1005
D249: 05       asld 
D24A: 30       tsx  
D24B: F8 38 00 eorb $3800
D24E: C5 F8    bitb #$F8
D250: 28 80    bvc  $D1D2
D252: C6 F8    ldb  #$F8
D254: 10       sba  
D255: 80 C8    suba #$C8
D257: 08       inx  
D258: 30       tsx  
D259: 80 CA    suba #$CA
D25B: 08       inx  
D25C: 10       sba  
D25D: 06       tap  
D25E: 05       asld 
D25F: 33       pulb 
D260: F8 38 00 eorb $3800
D263: CD F8 28 std  #$F828
D266: 80 CE    suba #$CE
D268: F8 10 80 eorb $1080
D26B: D0 08    subb $08
D26D: 30       tsx  
D26E: 80 D2    suba #$D2
D270: 08       inx  
D271: 10       sba  
D272: 00       illegal
D273: C3 18 38 addd #$1838
D276: 05       asld 
D277: 05       asld 
D278: 4C       inca 
D279: 00       illegal
D27A: 38       pulx 
D27B: 01       nop  
D27C: 01       nop  
D27D: 00       illegal
D27E: 28 81    bvc  $D201
D280: 02       illegal
D281: 00       illegal
D282: 10       sba  
D283: 05       asld 
D284: 4D       tsta 
D285: 10       sba  
D286: 38       pulx 
D287: 01       nop  
D288: 05       asld 
D289: 10       sba  
D28A: 28 05    bvc  $D291
D28C: 81 06    cmpa #$06
D28E: 00       illegal
D28F: 30       tsx  
D290: 81 08    cmpa #$08
D292: 00       illegal
D293: 10       sba  
D294: 05       asld 
D295: 51       illegal
D296: 10       sba  
D297: 38       pulx 
D298: 05       asld 
D299: 52       illegal
D29A: 10       sba  
D29B: 28 81    bvc  $D21E
D29D: 0C       clc  
D29E: 10       sba  
D29F: 10       sba  
D2A0: 26 D2    bne  $D274
D2A2: AF 05    sts  $05,x
D2A4: 40       nega 
D2A5: 01       nop  
D2A6: 13       asx2 1,s
D2A7: 81 14    cmpa #$14
D2A9: 05       asld 
D2AA: 41       illegal
D2AB: 01       nop  
D2AC: 17       tba  
D2AD: 01       nop  
D2AE: 18       xgdx 
D2AF: F8 38 F8 eorb $38F8
D2B2: 28 F8    bvc  $D2AC
D2B4: 10       sba  
D2B5: 08       inx  
D2B6: 38       pulx 
D2B7: 08       inx  
D2B8: 28 08    bvc  $D2C2
D2BA: 18       xgdx 
D2BB: 26 D2    bne  $D28F
D2BD: CA 05    orb  #$05
D2BF: 46       rora 
D2C0: 01       nop  
D2C1: 1B       aba  
D2C2: 81 1C    cmpa #$1C
D2C4: 05       asld 
D2C5: 47       asra 
D2C6: 01       nop  
D2C7: 1F       illegal
D2C8: 81 20    cmpa #$20
D2CA: F8 38 F8 eorb $38F8
D2CD: 28 F8    bvc  $D2C7
D2CF: 10       sba  
D2D0: 08       inx  
D2D1: 38       pulx 
D2D2: 08       inx  
D2D3: 28 08    bvc  $D2DD
D2D5: 10       sba  
D2D6: 26 D2    bne  $D2AA
D2D8: CA 05    orb  #$05
D2DA: 42       illegal
D2DB: 01       nop  
D2DC: 29 81    bvs  $D25F
D2DE: 2A 05    bpl  $D2E5
D2E0: 43       coma 
D2E1: 01       nop  
D2E2: 2D 81    blt  $D265
D2E4: 2E 26    bgt  $D30C
D2E6: D2 AF    sbcb $AF
D2E8: 05       asld 
D2E9: 48       asla 
D2EA: 01       nop  
D2EB: 31       ins  
D2EC: 81 32    cmpa #$32
D2EE: 05       asld 
D2EF: 49       rola 
D2F0: 01       nop  
D2F1: 35       txs  
D2F2: 01       nop  
D2F3: 3D       mul  
D2F4: 26 D2    bne  $D2C8
D2F6: AF 05    sts  $05,x
D2F8: 44       lsra 
D2F9: 01       nop  
D2FA: 37       pshb 
D2FB: 81 38    cmpa #$38
D2FD: 05       asld 
D2FE: 45       illegal
D2FF: 01       nop  
D300: 3B       rti  
D301: 01       nop  
D302: 3C       pshx 
D303: 05       asld 
D304: 05       asld 
D305: 4E       illegal
D306: F0 28 05 subb $2805
D309: 4F       clra 
D30A: 00       illegal
D30B: 28 01    bvc  $D30E
D30D: 0F       sei  
D30E: F0 18 01 subb $1801
D311: 11       cba  
D312: 00       illegal
D313: 18       xgdx 
D314: 01       nop  
D315: 19       daa  
D316: 00       illegal
D317: 08       inx  
D318: 05       asld 
D319: 81 22    cmpa #$22
D31B: 00       illegal
D31C: 20 01    bra  $D31F
D31E: 27 00    beq  $D320
D320: 08       inx  
D321: 05       asld 
D322: 53       comb 
D323: 10       sba  
D324: 30       tsx  
D325: 05       asld 
D326: 54       lsrb 
D327: 10       sba  
D328: 20 01    bra  $D32B
D32A: 26 10    bne  $D33C
D32C: 18       xgdx 
D32D: 06       tap  
D32E: 48       asla 
D32F: E6 08    ldb  $08,x
D331: 38       pulx 
D332: 41       illegal
D333: 3F       swi  
D334: 08       inx  
D335: 28 C1    bvc  $D2F8
D337: 40       nega 
D338: 08       inx  
D339: 10       sba  
D33A: 48       asla 
D33B: E7 F8    stb  $F8,x
D33D: 38       pulx 
D33E: 41       illegal
D33F: 43       coma 
D340: F8 28 C1 eorb $28C1
D343: 44       lsra 
D344: F8 10 06 eorb $1006
D347: 48       asla 
D348: EB 10    addb $10,x
D34A: 38       pulx 
D34B: 41       illegal
D34C: 47       asra 
D34D: 10       sba  
D34E: 28 48    bvc  $D398
D350: EC 00    ldd  $00,x
D352: 38       pulx 
D353: 41       illegal
D354: 49       rola 
D355: 00       illegal
D356: 28 C1    bvc  $D319
D358: 4A       deca 
D359: 00       illegal
D35A: 10       sba  
D35B: 41       illegal
D35C: 5D       tstb 
D35D: F0 08 07 subb $0807
D360: 41       illegal
D361: 65 08 48 eim  #$08,$48,x
D364: 48       asla 
D365: E8 08    eorb $08,x
D367: 38       pulx 
D368: 41       illegal
D369: 4D       tsta 
D36A: 08       inx  
D36B: 28 C1    bvc  $D32E
D36D: 4E       illegal
D36E: 08       inx  
D36F: 10       sba  
D370: 48       asla 
D371: E9 F8    adcb $F8,x
D373: 38       pulx 
D374: 41       illegal
D375: 51       illegal
D376: F8 28 C1 eorb $28C1
D379: 52       illegal
D37A: F8 10 06 eorb $1006
D37D: 0C       clc  
D37E: FC F8 38 ldd  $F838
D381: 0B       sev  
D382: E7 F8    stb  $F8,x
D384: 28 8B    bvc  $D311
D386: E8 F8    eorb $F8,x
D388: 10       sba  
D389: 0C       clc  
D38A: FD 08 38 std  $0838
D38D: 0B       sev  
D38E: EB 08    addb $08,x
D390: 28 8B    bvc  $D31D
D392: EC 08    ldd  $08,x
D394: 10       sba  
D395: 06       tap  
D396: C1 54    cmpb #$54
D398: 08       inx  
D399: 20 41    bra  $D3DC
D39B: 5C       incb 
D39C: 08       inx  
D39D: 08       inx  
D39E: 48       asla 
D39F: ED F8    std  $F8,x
D3A1: 38       pulx 
D3A2: 41       illegal
D3A3: 57       asrb 
D3A4: F8 28 C1 eorb $28C1
D3A7: 58       aslb 
D3A8: F8 10 C1 eorb $10C1
D3AB: 5A       decb 
D3AC: E8 30    eorb $30,x
D3AE: 05       asld 
D3AF: 48       asla 
D3B0: EA FF    orb  $FF,x
D3B2: 38       pulx 
D3B3: 41       illegal
D3B4: 5F       clrb 
D3B5: FF 28 C1 stx  $28C1
D3B8: 60 FF    neg  $FF,x
D3BA: 10       sba  
D3BB: C1 62    cmpb #$62
D3BD: EF 20    stx  $20,x
D3BF: 41       illegal
D3C0: 64 EF    lsr  $EF,x
D3C2: 08       inx  
D3C3: 06       tap  
D3C4: 48       asla 
D3C5: EE 06    ldx  $06,x
D3C7: 38       pulx 
D3C8: 41       illegal
D3C9: 67 06    asr  $06,x
D3CB: 28 C1    bvc  $D38E
D3CD: 68 06    asl  $06,x
D3CF: 10       sba  
D3D0: 48       asla 
D3D1: EF F6    stx  $F6,x
D3D3: 38       pulx 
D3D4: 41       illegal
D3D5: 6B F6 28 tim  #$F6,$28,x
D3D8: C1 6C    cmpb #$6C
D3DA: F6 10 05 ldb  $1005
D3DD: 48       asla 
D3DE: F0 02 38 subb $0238
D3E1: 41       illegal
D3E2: 6F 02    clr  $02,x
D3E4: 28 C1    bvc  $D3A7
D3E6: 70 02 10 neg  $0210
D3E9: C1 72    cmpb #$72
D3EB: F2 30 C1 sbcb $30C1
D3EE: 74 F2 10 lsr  $F210
D3F1: 04       lsrd 
D3F2: C5 60    bitb #$60
D3F4: 08       inx  
D3F5: 30       tsx  
D3F6: C1 BC    cmpb #$BC
D3F8: F8 30 C1 eorb $30C1
D3FB: BE 08 10 lds  $0810
D3FE: C1 C0    cmpb #$C0
D400: F8 10 04 eorb $1004
D403: 82 BE    sbca #$BE
D405: F8 30 89 eorb $3089
D408: FC F8 12 ldd  $F812
D40B: 02       illegal
D40C: C2 08    sbcb #$08
D40E: 28 89    bvc  $D399
D410: FE 08 12 ldx  $0812
D413: 05       asld 
D414: 82 00    sbca #$00
D416: F8 20 02 eorb $2002
D419: 39       rts  
D41A: F8 08 05 eorb $0805
D41D: 34       des  
D41E: 08       inx  
D41F: 38       pulx 
D420: 02       illegal
D421: 03       illegal
D422: 08       inx  
D423: 28 82    bvc  $D3A7
D425: 04       lsrd 
D426: 08       inx  
D427: 10       sba  
D428: 06       tap  
D429: 05       asld 
D42A: 35       txs  
D42B: 00       illegal
D42C: 38       pulx 
D42D: 02       illegal
D42E: 07       tpa  
D42F: 00       illegal
D430: 28 82    bvc  $D3B4
D432: 08       inx  
D433: 00       illegal
D434: 10       sba  
D435: 05       asld 
D436: 36       psha 
D437: 10       sba  
D438: 38       pulx 
D439: 02       illegal
D43A: 0B       sev  
D43B: 10       sba  
D43C: 28 02    bvc  $D440
D43E: 13       asx2 1,s
D43F: F0 28 06 subb $2806
D442: 0A       clv  
D443: A4 F0    anda $F0,x
D445: 38       pulx 
D446: 0B       sev  
D447: 01       nop  
D448: F0 28 8B subb $288B
D44B: 02       illegal
D44C: F0 10 0A subb $100A
D44F: A5 00    bita $00,x
D451: 38       pulx 
D452: 0B       sev  
D453: 05       asld 
D454: 00       illegal
D455: 28 8B    bvc  $D3E2
D457: 06       tap  
D458: 00       illegal
D459: 10       sba  
D45A: 06       tap  
D45B: 0A       clv  
D45C: A6 F8    lda  $F8,x
D45E: 38       pulx 
D45F: 0B       sev  
D460: 09       dex  
D461: F8 28 8B eorb $288B
D464: 0A       clv  
D465: F8 10 0A eorb $100A
D468: A7 08    sta  $08,x
D46A: 38       pulx 
D46B: 0B       sev  
D46C: 0D       sec  
D46D: 08       inx  
D46E: 28 8B    bvc  $D3FB
D470: 0E       cli  
D471: 08       inx  
D472: 10       sba  
D473: 05       asld 
D474: 8A A8    ora  #$A8
D476: F0 30 0B subb $300B
D479: 1E       illegal
D47A: F0 18 8B subb $188B
D47D: 12       asx1 1,s
D47E: 00       illegal
D47F: 30       tsx  
D480: 8B 14    adda #$14
D482: 00       illegal
D483: 10       sba  
D484: 8B 16    adda #$16
D486: 10       sba  
D487: 30       tsx  
D488: 06       tap  
D489: 0A       clv  
D48A: AA F4    ora  $F4,x
D48C: 38       pulx 
D48D: 0B       sev  
D48E: 19       daa  
D48F: F4 28 0B andb $280B
D492: 1F       illegal
D493: F4 18 0A andb $180A
D496: AB 04    adda $04,x
D498: 38       pulx 
D499: 0B       sev  
D49A: 1B       aba  
D49B: 04       lsrd 
D49C: 28 8B    bvc  $D429
D49E: 1C       illegal
D49F: 04       lsrd 
D4A0: 10       sba  
D4A1: 06       tap  
D4A2: 0A       clv  
D4A3: AC EC    cmpx $EC,x
D4A5: 38       pulx 
D4A6: 0B       sev  
D4A7: 21 EC    brn  $D495
D4A9: 28 8B    bvc  $D436
D4AB: 22 EC    bhi  $D499
D4AD: 10       sba  
D4AE: 0A       clv  
D4AF: AD FC    jsr  $FC,x
D4B1: 38       pulx 
D4B2: 0B       sev  
D4B3: 25 FC    bcs  $D4B1
D4B5: 28 8B    bvc  $D442
D4B7: 26 FC    bne  $D4B5
D4B9: 10       sba  
D4BA: F8 10 F8 eorb $10F8
D4BD: F8 08 10 eorb $0810
D4C0: 08       inx  
D4C1: F8 08 02 eorb $0802
D4C4: 7E E8 18 jmp  $E818
D4C7: 82 78    sbca #$78
D4C9: F8 20 02 eorb $2002
D4CC: 7F F8 08 clr  $F808
D4CF: 05       asld 
D4D0: 6F 08    clr  $08,x
D4D2: 38       pulx 
D4D3: 05       asld 
D4D4: 6E 08    jmp  $08,x
D4D6: 28 82    bvc  $D45A
D4D8: 7C 08 10 inc  $0810
D4DB: 1F       illegal
D4DC: F8 F8 18 eorb $F818
D4DF: 1F       illegal
D4E0: F9 08 18 adcb $0818
D4E3: 08       inx  
D4E4: 82 80    sbca #$80
D4E6: F8 20 02 eorb $2002
D4E9: 9F F8    sts  $F8
D4EB: 08       inx  
D4EC: 05       asld 
D4ED: 74 08 38 lsr  $0838
D4F0: 02       illegal
D4F1: 83 08 28 subd #$0828
D4F4: 82 84    sbca #$84
D4F6: 08       inx  
D4F7: 10       sba  
D4F8: 1F       illegal
D4F9: FB 0A 18 addb $0A18
D4FC: 1F       illegal
D4FD: FA 08 28 orb  $0828
D500: 1F       illegal
D501: FC FA 18 ldd  $FA18
D504: 09       dex  
D505: 05       asld 
D506: 70 F8 38 neg  $F838
D509: 02       illegal
D50A: 87 F8    sta  #$F8
D50C: 28 82    bvc  $D490
D50E: 88 F8    eora #$F8
D510: 10       sba  
D511: 05       asld 
D512: 71 08 38 aim  #$08,$38
D515: 02       illegal
D516: 8B 08    adda #$08
D518: 28 82    bvc  $D49C
D51A: 8C 08 10 cmpx #$0810
D51D: 02       illegal
D51E: 9E 18    lds  $18
D520: 28 02    bvc  $D524
D522: BD 28 28 jsr  $2828
D525: 0F       sei  
D526: FD 18 28 std  $1828
D529: 08       inx  
D52A: 05       asld 
D52B: 75 F8 38 eim  #$F8,$38
D52E: 02       illegal
D52F: 8F F8 28 sts  #$F828
D532: 05       asld 
D533: 76 08 38 ror  $0838
D536: 02       illegal
D537: 91 08    cmpa $08
D539: 28 02    bvc  $D53D
D53B: 98 E8    eora $E8
D53D: 28 82    bvc  $D4C1
D53F: 88 F8    eora #$F8
D541: 10       sba  
D542: 82 8C    sbca #$8C
D544: 08       inx  
D545: 10       sba  
D546: 0F       sei  
D547: FE F8 28 ldx  $F828
D54A: 04       lsrd 
D54B: 82 A0    sbca #$A0
D54D: F8 10 05 eorb $1005
D550: 7A 08 28 dec  $0828
D553: 05       asld 
D554: 79 08 18 rol  $0818
D557: 02       illegal
D558: A5 08    bita $08,x
D55A: 08       inx  
D55B: 05       asld 
D55C: 82 92    sbca #$92
D55E: F8 20 02 eorb $2002
D561: 99 F8    adca $F8
D563: 08       inx  
D564: 05       asld 
D565: 77 08 38 asr  $0838
D568: 05       asld 
D569: 78 08 28 asl  $0828
D56C: 82 96    sbca #$96
D56E: 08       inx  
D56F: 10       sba  
D570: 03       illegal
D571: 05       asld 
D572: 7D 00 38 tst  $0038
D575: 02       illegal
D576: 9B 00    adda $00
D578: 28 82    bvc  $D4FC
D57A: 9C 00    cmpx $00
D57C: 10       sba  
D57D: 07       tpa  
D57E: 05       asld 
D57F: 82 F8    sbca #$F8
D581: 38       pulx 
D582: 02       illegal
D583: B5 F8 28 bita $F828
D586: 02       illegal
D587: B6 08 48 lda  $0848
D58A: 05       asld 
D58B: 83 08 38 subd #$0838
D58E: 02       illegal
D58F: 77 08 28 asr  $0828
D592: 80 1C    suba #$1C
D594: F8 10 80 eorb $1080
D597: 20 08    bra  $D5A1
D599: 10       sba  
D59A: 26 D5    bne  $D571
D59C: A9 05    adca $05,x
D59E: 88 02    eora #$02
D5A0: B9 05 89 adca $0589
D5A3: 02       illegal
D5A4: BB 80 24 adda $8024
D5A7: 80 28    suba #$28
D5A9: F8 38 F8 eorb $38F8
D5AC: 28 08    bvc  $D5B6
D5AE: 38       pulx 
D5AF: 08       inx  
D5B0: 28 F8    bvc  $D5AA
D5B2: 10       sba  
D5B3: 08       inx  
D5B4: 10       sba  
D5B5: 07       tpa  
D5B6: 05       asld 
D5B7: 82 F8    sbca #$F8
D5B9: 38       pulx 
D5BA: 02       illegal
D5BB: B5 F8 28 bita $F828
D5BE: 02       illegal
D5BF: B6 08 48 lda  $0848
D5C2: 05       asld 
D5C3: 83 08 38 subd #$0838
D5C6: 02       illegal
D5C7: 77 08 28 asr  $0828
D5CA: 80 2E    suba #$2E
D5CC: F8 10 80 eorb $1080
D5CF: 30       tsx  
D5D0: 08       inx  
D5D1: 10       sba  
D5D2: 26 D5    bne  $D5A9
D5D4: A9 05    adca $05,x
D5D6: 88 02    eora #$02
D5D8: B9 05 89 adca $0589
D5DB: 02       illegal
D5DC: BB 80 2A adda $802A
D5DF: 80 2C    suba #$2C
D5E1: 07       tpa  
D5E2: 02       illegal
D5E3: AC F8    cmpx $F8,x
D5E5: 48       asla 
D5E6: 05       asld 
D5E7: 7B F8 38 tim  #$F8,$38
D5EA: 02       illegal
D5EB: BC F8 28 cmpx $F828
D5EE: 05       asld 
D5EF: 7C 08 38 inc  $0838
D5F2: 02       illegal
D5F3: AF 08    sts  $08,x
D5F5: 28 80    bvc  $D577
D5F7: 04       lsrd 
D5F8: F8 10 80 eorb $1080
D5FB: 08       inx  
D5FC: 08       inx  
D5FD: 10       sba  
D5FE: 26 D5    bne  $D5D5
D600: A9 05    adca $05,x
D602: 80 02    suba #$02
D604: B1 05 81 cmpa $0581
D607: 02       illegal
D608: B3 80 12 subd $8012
D60B: 80 14    suba #$14
D60D: 07       tpa  
D60E: 02       illegal
D60F: AC F8    cmpx $F8,x
D611: 48       asla 
D612: 05       asld 
D613: 7B F8 38 tim  #$F8,$38
D616: 02       illegal
D617: BC F8 28 cmpx $F828
D61A: 05       asld 
D61B: 7C 08 38 inc  $0838
D61E: 02       illegal
D61F: AF 08    sts  $08,x
D621: 28 80    bvc  $D5A3
D623: 0C       clc  
D624: F8 10 80 eorb $1080
D627: 10       sba  
D628: 08       inx  
D629: 10       sba  
D62A: 26 D5    bne  $D601
D62C: A9 05    adca $05,x
D62E: 80 02    suba #$02
D630: B1 05 81 cmpa $0581
D633: 02       illegal
D634: B3 80 16 subd $8016
D637: 80 18    suba #$18
D639: 05       asld 
D63A: 82 A6    sbca #$A6
D63C: 00       illegal
D63D: 20 02    bra  $D641
D63F: AB 00    adda $00,x
D641: 08       inx  
D642: 05       asld 
D643: 7F 10 38 clr  $1038
D646: 05       asld 
D647: 7E 10 28 jmp  $1028
D64A: 02       illegal
D64B: AA 10    ora  $10,x
D64D: 18       xgdx 
D64E: 09       dex  
D64F: C0 52    subb #$52
D651: 2E 20    bgt  $D673
D653: C0 54    subb #$54
D655: 1E       illegal
D656: 30       tsx  
D657: C0 56    subb #$56
D659: 1E       illegal
D65A: 10       sba  
D65B: 40       nega 
D65C: 5E       illegal
D65D: 2E 08    bgt  $D667
D65F: 13       asx2 1,s
D660: 43       coma 
D661: 19       daa  
D662: 28 13    bvc  $D677
D664: 42       illegal
D665: F9 28 93 adcb $2893
D668: 40       nega 
D669: 09       dex  
D66A: 30       tsx  
D66B: 93 44    subd $44
D66D: F9 10 93 adcb $1093
D670: 46       rora 
D671: 09       dex  
D672: 10       sba  
D673: 09       dex  
D674: 05       asld 
D675: 59       rolb 
D676: 18       xgdx 
D677: 28 01    bvc  $D67A
D679: 8F 18 18 sts  #$1818
D67C: 81 90    cmpa #$90
D67E: 28 20    bvc  $D6A0
D680: 01       nop  
D681: 92 28    sbca $28
D683: 08       inx  
D684: 91 7A    cmpa $7A
D686: F8 20 11 eorb $2011
D689: 87 F8    sta  #$F8
D68B: 08       inx  
D68C: 91 7C    cmpa $7C
D68E: 08       inx  
D68F: 30       tsx  
D690: 91 7E    cmpa $7E
D692: 08       inx  
D693: 10       sba  
D694: 01       nop  
D695: A3 08    subd $08,x
D697: 28 08    bvc  $D6A1
D699: 05       asld 
D69A: 5A       decb 
D69B: 18       xgdx 
D69C: 28 01    bvc  $D69F
D69E: 95 18    bita $18
D6A0: 18       xgdx 
D6A1: 81 96    cmpa #$96
D6A3: 28 20    bvc  $D6C5
D6A5: 01       nop  
D6A6: AD 28    jsr  $28,x
D6A8: 08       inx  
D6A9: 91 80    cmpa $80
D6AB: F8 21 11 eorb $2111
D6AE: 86 F8    lda  #$F8
D6B0: 09       dex  
D6B1: 91 82    cmpa $82
D6B3: 08       inx  
D6B4: 31       ins  
D6B5: 91 84    cmpa $84
D6B7: 08       inx  
D6B8: 11       cba  
D6B9: 07       tpa  
D6BA: 05       asld 
D6BB: 5B       illegal
D6BC: 18       xgdx 
D6BD: 28 81    bvc  $D640
D6BF: 98 28    eora $28
D6C1: 20 01    bra  $D6C4
D6C3: 9A 28    ora  $28
D6C5: 08       inx  
D6C6: 91 88    cmpa $88
D6C8: 09       dex  
D6C9: 30       tsx  
D6CA: 91 8A    cmpa $8A
D6CC: 09       dex  
D6CD: 10       sba  
D6CE: 91 8C    cmpa $8C
D6D0: 19       daa  
D6D1: 30       tsx  
D6D2: 11       cba  
D6D3: 93 19    subd $19
D6D5: 18       xgdx 
D6D6: 08       inx  
D6D7: 91 9C    cmpa $9C
D6D9: F8 30 91 eorb $3091
D6DC: 9E F8    lds  $F8
D6DE: 10       sba  
D6DF: 91 A0    cmpa $A0
D6E1: 08       inx  
D6E2: 20 11    bra  $D6F5
D6E4: A2 08    sbca $08,x
D6E6: 08       inx  
D6E7: 81 AE    cmpa #$AE
D6E9: FB 30 81 addb $3081
D6EC: B0 FB 10 suba $FB10
D6EF: 81 B2    cmpa #$B2
D6F1: 0B       sev  
D6F2: 20 01    bra  $D6F5
D6F4: C2 0B    sbcb #$0B
D6F6: 08       inx  
D6F7: 08       inx  
D6F8: 81 B4    cmpa #$B4
D6FA: E4 2F    andb $2F,x
D6FC: 81 B6    cmpa #$B6
D6FE: F4 2F 81 andb $2F81
D701: B8 04 2F eora $042F
D704: 91 A4    cmpa $A4
D706: E3 20    addd $20,x
D708: 91 A6    cmpa $A6
D70A: F3 20 91 addd $2091
D70D: A8 03    eora $03,x
D70F: 20 91    bra  $D6A2
D711: AA 13    ora  $13,x
D713: 20 11    bra  $D726
D715: AC F3    cmpx $F3,x
D717: 08       inx  
D718: 07       tpa  
D719: D1 C4    cmpb $C4
D71B: 08       inx  
D71C: 30       tsx  
D71D: D1 C6    cmpb $C6
D71F: 08       inx  
D720: 10       sba  
D721: D1 C8    cmpb $C8
D723: F8 20 41 eorb $2041
D726: E3 08    addd $08,x
D728: 28 45    bvc  $D76F
D72A: 68 F8    asl  $F8,x
D72C: 38       pulx 
D72D: 41       illegal
D72E: CB F8    addb #$F8
D730: 28 C1    bvc  $D6F3
D732: CC F8 10 ldd  #$F810
D735: 28 D7    bvc  $D70E
D737: 48       asla 
D738: 41       illegal
D739: E2 45    sbcb $45,x
D73B: 6B 41 DF tim  #$41,$df,x
D73E: C1 E0    cmpb #$E0
D740: D1 D6    cmpb $D6
D742: D1 DA    cmpb $DA
D744: D1 D8    cmpb $D8
D746: D1 DC    cmpb $DC
D748: 08       inx  
D749: 28 F8    bvc  $D743
D74B: 38       pulx 
D74C: F8 28 F8 eorb $28F8
D74F: 10       sba  
D750: 08       inx  
D751: 30       tsx  
D752: F8 30 08 eorb $3008
D755: 10       sba  
D756: F8 10 28 eorb $1028
D759: D7 48    stb  $48
D75B: 41       illegal
D75C: E2 45    sbcb $45,x
D75E: 6B 41 DF tim  #$41,$df,x
D761: C1 E0    cmpb #$E0
D763: D1 E4    cmpb $E4
D765: D1 E8    cmpb $E8
D767: D1 E6    cmpb $E6
D769: D1 EA    cmpb $EA
D76B: 08       inx  
D76C: 41       illegal
D76D: E2 08    sbcb $08,x
D76F: 28 45    bvc  $D7B6
D771: 6B F8 38 tim  #$F8,$38,x
D774: 41       illegal
D775: DF F8    stx  $F8
D777: 28 C1    bvc  $D73A
D779: E0 F8    subb $F8,x
D77B: 10       sba  
D77C: D1 E4    cmpb $E4
D77E: 08       inx  
D77F: 30       tsx  
D780: D1 E8    cmpb $E8
D782: F8 30 D1 eorb $30D1
D785: EC 12    ldd  $12,x
D787: 20 D1    bra  $D75A
D789: EE 02    ldx  $02,x
D78B: 10       sba  
D78C: 28 D7    bvc  $D765
D78E: 48       asla 
D78F: 41       illegal
D790: E2 45    sbcb $45,x
D792: 6B 41 DF tim  #$41,$df,x
D795: C1 E0    cmpb #$E0
D797: D1 CE    cmpb $CE
D799: D1 D0    cmpb $D0
D79B: D1 D8    cmpb $D8
D79D: D1 DC    cmpb $DC
D79F: 28 D7    bvc  $D778
D7A1: 48       asla 
D7A2: 41       illegal
D7A3: E2 45    sbcb $45,x
D7A5: 6B 41 DF tim  #$41,$df,x
D7A8: C1 E0    cmpb #$E0
D7AA: D1 D2    cmpb $D2
D7AC: D1 D4    cmpb $D4
D7AE: D1 D8    cmpb $D8
D7B0: D1 DC    cmpb $DC
D7B2: 09       dex  
D7B3: 41       illegal
D7B4: E2 08    sbcb $08,x
D7B6: 28 45    bvc  $D7FD
D7B8: 6B F8 38 tim  #$F8,$38,x
D7BB: 41       illegal
D7BC: DF F8    stx  $F8
D7BE: 28 C1    bvc  $D781
D7C0: E0 F8    subb $F8,x
D7C2: 10       sba  
D7C3: 51       illegal
D7C4: C3 18 18 addd #$1818
D7C7: D1 F0    cmpb $F0
D7C9: 08       inx  
D7CA: 30       tsx  
D7CB: D1 F4    cmpb $F4
D7CD: F8 30 D1 eorb $30D1
D7D0: F2 08 10 sbcb $0810
D7D3: D1 F6    cmpb $F6
D7D5: F8 10 0A eorb $100A
D7D8: 41       illegal
D7D9: E2 08    sbcb $08,x
D7DB: 28 45    bvc  $D822
D7DD: 6B F8 38 tim  #$F8,$38,x
D7E0: 41       illegal
D7E1: DF F8    stx  $F8
D7E3: 28 C1    bvc  $D7A6
D7E5: E0 F8    subb $F8,x
D7E7: 10       sba  
D7E8: D2 5C    sbcb $5C
D7EA: 08       inx  
D7EB: 40       nega 
D7EC: D2 5E    sbcb $5E
D7EE: F8 40 52 eorb $4052
D7F1: 61 08 28 aim  #$08,$28,x
D7F4: 52       illegal
D7F5: 60 F8    neg  $F8,x
D7F7: 28 D1    bvc  $D7CA
D7F9: D8 08    eorb $08
D7FB: 10       sba  
D7FC: D1 DC    cmpb $DC
D7FE: F8 10 08 eorb $1008
D801: 42       illegal
D802: 6E FA    jmp  $FA,x
D804: 38       pulx 
D805: 45       illegal
D806: 8D FA    bsr  $D802
D808: 28 C2    bvc  $D7CC
D80A: 70 FA 10 neg  $FA10
D80D: 42       illegal
D80E: 76 0A 18 ror  $0A18
D811: 45       illegal
D812: 8C 0A 28 cmpx #$0A28
D815: D2 62    sbcb $62
D817: 0A       clv  
D818: 30       tsx  
D819: D2 66    sbcb $66
D81B: FA 30 D2 orb  $30D2
D81E: 64 03    lsr  $03,x
D820: 10       sba  
D821: 08       inx  
D822: 42       illegal
D823: 72 FA 38 oim  #$FA,$38
D826: 45       illegal
D827: 4B       illegal
D828: FA 28 C2 orb  $28C2
D82B: 74 FA 10 lsr  $FA10
D82E: 45       illegal
D82F: 4A       deca 
D830: 0A       clv  
D831: 28 D2    bvc  $D805
D833: 68 0A    asl  $0A,x
D835: 20 D2    bra  $D809
D837: 6A FA    dec  $FA,x
D839: 20 52    bra  $D88D
D83B: 6D 0A    tst  $0A,x
D83D: 08       inx  
D83E: 52       illegal
D83F: 6C FA    inc  $FA,x
D841: 08       inx  
D842: 0B       sev  
D843: 93 2A    subd $2A
D845: F8 30 93 eorb $3093
D848: 2C F8    bge  $D842
D84A: 10       sba  
D84B: 93 2E    subd $2E
D84D: 08       inx  
D84E: 30       tsx  
D84F: 93 30    subd $30
D851: 08       inx  
D852: 10       sba  
D853: 83 22 08 subd #$2208
D856: 20 83    bra  $D7DB
D858: 24 18    bcc  $D872
D85A: 20 03    bra  $D85F
D85C: 29 18    bvs  $D876
D85E: 08       inx  
D85F: 83 26 28 subd #$2628
D862: 20 03    bra  $D867
D864: 28 28    bvc  $D88E
D866: 08       inx  
D867: 00       illegal
D868: E3 10    addd $10,x
D86A: 28 00    bvc  $D86C
D86C: E4 20    andb $20,x
D86E: 28 08    bvc  $D878
D870: 93 32    subd $32
D872: F8 30 93 eorb $3093
D875: 34       des  
D876: F8 10 93 eorb $1093
D879: 36       psha 
D87A: 08       inx  
D87B: 30       tsx  
D87C: 93 38    subd $38
D87E: 08       inx  
D87F: 10       sba  
D880: 00       illegal
D881: E5 10    bitb $10,x
D883: 38       pulx 
D884: 00       illegal
D885: E6 10    ldb  $10,x
D887: 28 83    bvc  $D80C
D889: 3C       pshx 
D88A: 20 30    bra  $D8BC
D88C: 83 3E 20 subd #$3E20
D88F: 10       sba  
D890: 09       dex  
D891: D0 52    subb $52
D893: 2E 20    bgt  $D8B5
D895: D0 54    subb $54
D897: 1E       illegal
D898: 30       tsx  
D899: D0 56    subb $56
D89B: 1E       illegal
D89C: 10       sba  
D89D: 50       negb 
D89E: 5E       illegal
D89F: 2E 08    bgt  $D8A9
D8A1: 83 E4 F9 subd #$E4F9
D8A4: 30       tsx  
D8A5: 83 E6 09 subd #$E609
D8A8: 30       tsx  
D8A9: 03       illegal
D8AA: 43       coma 
D8AB: 19       daa  
D8AC: 28 83    bvc  $D831
D8AE: 44       lsra 
D8AF: F9 10 83 adcb $1083
D8B2: 46       rora 
D8B3: 09       dex  
D8B4: 10       sba  
D8B5: 09       dex  
D8B6: 91 8E    cmpa $8E
D8B8: 18       xgdx 
D8B9: 20 91    bra  $D84C
D8BB: 90 28    suba $28
D8BD: 20 11    bra  $D8D0
D8BF: 92 28    sbca $28
D8C1: 08       inx  
D8C2: 81 7A    cmpa #$7A
D8C4: F8 20 01 eorb $2001
D8C7: 87 F8    sta  #$F8
D8C9: 08       inx  
D8CA: 05       asld 
D8CB: 50       negb 
D8CC: 08       inx  
D8CD: 38       pulx 
D8CE: 01       nop  
D8CF: 7D 08 28 tst  $0828
D8D2: 81 7E    cmpa #$7E
D8D4: 08       inx  
D8D5: 10       sba  
D8D6: 11       cba  
D8D7: A3 08    subd $08,x
D8D9: 28 08    bvc  $D8E3
D8DB: 91 94    cmpa $94
D8DD: 18       xgdx 
D8DE: 20 91    bra  $D871
D8E0: 96 28    lda  $28
D8E2: 20 11    bra  $D8F5
D8E4: AD 28    jsr  $28,x
D8E6: 08       inx  
D8E7: 81 80    cmpa #$80
D8E9: F8 21 01 eorb $2101
D8EC: 86 F8    lda  #$F8
D8EE: 09       dex  
D8EF: 05       asld 
D8F0: 55       illegal
D8F1: 08       inx  
D8F2: 39       rts  
D8F3: 05       asld 
D8F4: 56       rorb 
D8F5: 08       inx  
D8F6: 29 81    bvs  $D879
D8F8: 84 08    anda #$08
D8FA: 11       cba  
D8FB: 09       dex  
D8FC: 11       cba  
D8FD: 9B 18    adda $18
D8FF: 28 91    bvc  $D892
D901: 98 28    eora $28
D903: 20 11    bra  $D916
D905: 9A 28    ora  $28
D907: 08       inx  
D908: 05       asld 
D909: 57       asrb 
D90A: 09       dex  
D90B: 38       pulx 
D90C: 01       nop  
D90D: 89 09    adca #$09
D90F: 28 81    bvc  $D892
D911: 8A 09    ora  #$09
D913: 10       sba  
D914: 05       asld 
D915: 58       aslb 
D916: 19       daa  
D917: 38       pulx 
D918: 01       nop  
D919: 8D 19    bsr  $D934
D91B: 28 01    bvc  $D91E
D91D: 93 19    subd $19
D91F: 18       xgdx 
D920: 08       inx  
D921: 85 5C    bita #$5C
D923: F8 30 81 eorb $3081
D926: 9E F8    lds  $F8
D928: 10       sba  
D929: 81 A0    cmpa #$A0
D92B: 08       inx  
D92C: 20 01    bra  $D92F
D92E: A2 08    sbca $08,x
D930: 08       inx  
D931: 91 AE    cmpa $AE
D933: 00       illegal
D934: 30       tsx  
D935: 91 B0    cmpa $B0
D937: 00       illegal
D938: 10       sba  
D939: 91 B2    cmpa $B2
D93B: 10       sba  
D93C: 20 11    bra  $D94F
D93E: C2 10    sbcb #$10
D940: 08       inx  
D941: 08       inx  
D942: 91 B4    cmpa $B4
D944: E4 2F    andb $2F,x
D946: 91 B6    cmpa $B6
D948: F4 2F 91 andb $2F91
D94B: B8 04 2F eora $042F
D94E: 85 5E    bita #$5E
D950: E3 28    addd $28,x
D952: 81 A6    cmpa #$A6
D954: F3 20 81 addd $2081
D957: A8 03    eora $03,x
D959: 20 81    bra  $D8DC
D95B: AA 13    ora  $13,x
D95D: 20 01    bra  $D960
D95F: AC F3    cmpx $F3,x
D961: 08       inx  
D962: 08       inx  
D963: 45       illegal
D964: 62 08 38 oim  #$08,$38,x
D967: 41       illegal
D968: C5 08    bitb #$08
D96A: 28 C1    bvc  $D92D
D96C: C6 08    ldb  #$08
D96E: 10       sba  
D96F: 45       illegal
D970: 63 F8    com  $F8,x
D972: 38       pulx 
D973: C1 C8    cmpb #$C8
D975: F8 20 51 eorb $2051
D978: E3 08    addd $08,x
D97A: 28 D1    bvc  $D94D
D97C: CA F8    orb  #$F8
D97E: 30       tsx  
D97F: D1 CC    cmpb $CC
D981: F8 10 27 eorb $1027
D984: D9 94    adcb $94
D986: 51       illegal
D987: E2 D1    sbcb $D1,x
D989: DE D1    ldx  $D1
D98B: E0 C5    subb $C5,x
D98D: 66 C1    ror  $C1,x
D98F: D8 C1    eorb $C1
D991: DA C1    orb  $C1
D993: DC 08    ldd  $08
D995: 28 F8    bvc  $D98F
D997: 30       tsx  
D998: F8 10 08 eorb $1008
D99B: 30       tsx  
D99C: 08       inx  
D99D: 10       sba  
D99E: F8 30 F8 eorb $30F8
D9A1: 10       sba  
D9A2: 27 D9    beq  $D97D
D9A4: 94 51    anda $51
D9A6: E2 D1    sbcb $D1,x
D9A8: DE D1    ldx  $D1
D9AA: E0 C5    subb $C5,x
D9AC: 6C C1    inc  $C1,x
D9AE: E6 C1    ldb  $C1,x
D9B0: E8 C1    eorb $C1,x
D9B2: EA 07    orb  $07,x
D9B4: 51       illegal
D9B5: E2 08    sbcb $08,x
D9B7: 28 D1    bvc  $D98A
D9B9: DE F8    ldx  $F8
D9BB: 30       tsx  
D9BC: D1 E0    cmpb $E0
D9BE: F8 10 C1 eorb $10C1
D9C1: EC 12    ldd  $12,x
D9C3: 20 C5    bra  $D98A
D9C5: 6C 0A    inc  $0A,x
D9C7: 30       tsx  
D9C8: C1 EE    cmpb #$EE
D9CA: 02       illegal
D9CB: 10       sba  
D9CC: C1 E8    cmpb #$E8
D9CE: FA 30 07 orb  $3007
D9D1: 51       illegal
D9D2: E2 08    sbcb $08,x
D9D4: 28 D1    bvc  $D9A7
D9D6: DE F8    ldx  $F8
D9D8: 30       tsx  
D9D9: D1 E0    cmpb $E0
D9DB: F8 10 C5 eorb $10C5
D9DE: 64 08    lsr  $08,x
D9E0: 30       tsx  
D9E1: C1 D0    cmpb #$D0
D9E3: F8 30 C1 eorb $30C1
D9E6: D8 08    eorb $08
D9E8: 10       sba  
D9E9: C1 DC    cmpb #$DC
D9EB: F8 10 09 eorb $1009
D9EE: 51       illegal
D9EF: E2 08    sbcb $08,x
D9F1: 28 D1    bvc  $D9C4
D9F3: DE F8    ldx  $F8
D9F5: 30       tsx  
D9F6: D1 E0    cmpb $E0
D9F8: F8 10 45 eorb $1045
D9FB: 69 08    rol  $08,x
D9FD: 38       pulx 
D9FE: 41       illegal
D9FF: D3 08    addd $08
DA01: 28 C1    bvc  $D9C4
DA03: D8 08    eorb $08
DA05: 10       sba  
DA06: 45       illegal
DA07: 6A F8    dec  $F8,x
DA09: 38       pulx 
DA0A: 41       illegal
DA0B: D5 F8    bitb $F8
DA0D: 28 C1    bvc  $D9D0
DA0F: DC F8    ldd  $F8
DA11: 10       sba  
DA12: 08       inx  
DA13: 51       illegal
DA14: E2 08    sbcb $08,x
DA16: 28 D1    bvc  $D9E9
DA18: DE F8    ldx  $F8
DA1A: 30       tsx  
DA1B: D1 E0    cmpb $E0
DA1D: F8 10 41 eorb $1041
DA20: C3 18 18 addd #$1818
DA23: C5 72    bitb #$72
DA25: 08       inx  
DA26: 30       tsx  
DA27: C1 F4    cmpb #$F4
DA29: F8 30 C1 eorb $30C1
DA2C: F2 08 10 sbcb $0810
DA2F: C1 F6    cmpb #$F6
DA31: F8 10 0B eorb $100B
DA34: 51       illegal
DA35: E2 08    sbcb $08,x
DA37: 28 D1    bvc  $DA0A
DA39: DE F8    ldx  $F8
DA3B: 30       tsx  
DA3C: D1 E0    cmpb $E0
DA3E: F8 10 42 eorb $1042
DA41: 5C       incb 
DA42: 08       inx  
DA43: 48       asla 
DA44: 42       illegal
DA45: 5E       illegal
DA46: F8 48 45 eorb $4845
DA49: 84 08    anda #$08
DA4B: 38       pulx 
DA4C: 45       illegal
DA4D: 85 F8    bita #$F8
DA4F: 38       pulx 
DA50: 42       illegal
DA51: 61 08 28 aim  #$08,$28,x
DA54: 42       illegal
DA55: 60 F8    neg  $F8,x
DA57: 28 C1    bvc  $DA1A
DA59: D8 08    eorb $08
DA5B: 10       sba  
DA5C: C1 DC    cmpb #$DC
DA5E: F8 10 08 eorb $1008
DA61: D2 6E    sbcb $6E
DA63: FA 30 D2 orb  $30D2
DA66: 70 FA 10 neg  $FA10
DA69: 52       illegal
DA6A: 76 0A 18 ror  $0A18
DA6D: 42       illegal
DA6E: 62 0A 38 oim  #$0A,$38,x
DA71: 45       illegal
DA72: 8A 0A    ora  #$0A
DA74: 28 C2    bvc  $DA38
DA76: 64 03    lsr  $03,x
DA78: 10       sba  
DA79: 42       illegal
DA7A: 66 FA    ror  $FA,x
DA7C: 38       pulx 
DA7D: 45       illegal
DA7E: 8B FA    adda #$FA
DA80: 28 08    bvc  $DA8A
DA82: D2 72    sbcb $72
DA84: FA 30 D2 orb  $30D2
DA87: 74 FA 10 lsr  $FA10
DA8A: 45       illegal
DA8B: 86 0A    lda  #$0A
DA8D: 28 42    bvc  $DAD1
DA8F: 69 0A    rol  $0A,x
DA91: 18       xgdx 
DA92: 42       illegal
DA93: 6D 0A    tst  $0A,x
DA95: 08       inx  
DA96: 45       illegal
DA97: 87 FA    sta  #$FA
DA99: 28 42    bvc  $DADD
DA9B: 6B FA 18 tim  #$FA,$18,x
DA9E: 42       illegal
DA9F: 6C FA    inc  $FA,x
DAA1: 08       inx  
DAA2: 07       tpa  
DAA3: C5 0E    bitb #$0E
DAA5: 18       xgdx 
DAA6: 30       tsx  
DAA7: C0 56    subb #$56
DAA9: 18       xgdx 
DAAA: 10       sba  
DAAB: C0 52    subb #$52
DAAD: 28 20    bvc  $DACF
DAAF: 40       nega 
DAB0: 5E       illegal
DAB1: 28 08    bvc  $DABB
DAB3: 9B 28    adda $28
DAB5: 08       inx  
DAB6: 30       tsx  
DAB7: 9B 2A    adda $2A
DAB9: 08       inx  
DABA: 10       sba  
DABB: 9B 2C    adda $2C
DABD: 18       xgdx 
DABE: 30       tsx  
DABF: 09       dex  
DAC0: C5 0E    bitb #$0E
DAC2: 18       xgdx 
DAC3: 30       tsx  
DAC4: C0 56    subb #$56
DAC6: 18       xgdx 
DAC7: 10       sba  
DAC8: C0 52    subb #$52
DACA: 28 20    bvc  $DAEC
DACC: 40       nega 
DACD: 5E       illegal
DACE: 28 08    bvc  $DAD8
DAD0: 9B 2E    adda $2E
DAD2: F8 20 1B eorb $201B
DAD5: 36       psha 
DAD6: F8 08 9B eorb $089B
DAD9: 30       tsx  
DADA: 08       inx  
DADB: 30       tsx  
DADC: 9B 32    adda $32
DADE: 08       inx  
DADF: 10       sba  
DAE0: 9B 34    adda $34
DAE2: 18       xgdx 
DAE3: 30       tsx  
DAE4: 09       dex  
DAE5: D0 54    subb $54
DAE7: 18       xgdx 
DAE8: 30       tsx  
DAE9: D0 56    subb $56
DAEB: 18       xgdx 
DAEC: 10       sba  
DAED: D0 52    subb $52
DAEF: 28 20    bvc  $DB11
DAF1: 50       negb 
DAF2: 5E       illegal
DAF3: 28 08    bvc  $DAFD
DAF5: 0B       sev  
DAF6: 37       pshb 
DAF7: 08       inx  
DAF8: 38       pulx 
DAF9: 0B       sev  
DAFA: 29 08    bvs  $DB04
DAFC: 28 8B    bvc  $DA89
DAFE: 2A 08    bpl  $DB08
DB00: 10       sba  
DB01: 0B       sev  
DB02: 38       pulx 
DB03: 18       xgdx 
DB04: 38       pulx 
DB05: 0B       sev  
DB06: 2D 18    blt  $DB20
DB08: 28 0B    bvc  $DB15
DB0A: D0 54    subb $54
DB0C: 18       xgdx 
DB0D: 30       tsx  
DB0E: D0 56    subb $56
DB10: 18       xgdx 
DB11: 10       sba  
DB12: D0 52    subb $52
DB14: 28 20    bvc  $DB36
DB16: 50       negb 
DB17: 5E       illegal
DB18: 28 08    bvc  $DB22
DB1A: 8B 2E    adda #$2E
DB1C: F8 20 0B eorb $200B
DB1F: 36       psha 
DB20: F8 08 0B eorb $080B
DB23: 39       rts  
DB24: 08       inx  
DB25: 38       pulx 
DB26: 0B       sev  
DB27: 31       ins  
DB28: 08       inx  
DB29: 28 8B    bvc  $DAB6
DB2B: 32       pula 
DB2C: 08       inx  
DB2D: 10       sba  
DB2E: 0B       sev  
DB2F: 3A       abx  
DB30: 18       xgdx 
DB31: 38       pulx 
DB32: 0B       sev  
DB33: 35       txs  
DB34: 18       xgdx 
DB35: 28 DB    bvc  $DB12
DB37: DC DB    ldd  $DB
DB39: F7 DC 06 stb  $DC06
DB3C: DC 15    ldd  $15
DB3E: DC 24    ldd  $24
DB40: DC 33    ldd  $33
DB42: DC 42    ldd  $42
DB44: DC 51    ldd  $51
DB46: DC 60    ldd  $60
DB48: DC 75    ldd  $75
DB4A: DC 8E    ldd  $8E
DB4C: DC 9B    ldd  $9B
DB4E: DC B4    ldd  $B4
DB50: DC BF    ldd  $BF
DB52: DC D4    ldd  $D4
DB54: DC ED    ldd  $ED
DB56: DC F8    ldd  $F8
DB58: DD 0D    std  $0D
DB5A: DD 1C    std  $1C
DB5C: DD 2B    std  $2B
DB5E: DD 52    std  $52
DB60: DD 61    std  $61
DB62: DD 84    std  $84
DB64: DD 99    std  $99
DB66: DD B2    std  $B2
DB68: DD C7    std  $C7
DB6A: DD C7    std  $C7
DB6C: DD C7    std  $C7
DB6E: DD C7    std  $C7
DB70: DD C7    std  $C7
DB72: DD C7    std  $C7
DB74: DD C7    std  $C7
DB76: DD C7    std  $C7
DB78: DD E0    std  $E0
DB7A: DD F3    std  $F3
DB7C: DD F3    std  $F3
DB7E: DD F3    std  $F3
DB80: DD F3    std  $F3
DB82: DD F3    std  $F3
DB84: DD F3    std  $F3
DB86: DD F3    std  $F3
DB88: DD F3    std  $F3
DB8A: DD F3    std  $F3
DB8C: DD F3    std  $F3
DB8E: DD F3    std  $F3
DB90: DE 1C    ldx  $1C
DB92: DE 39    ldx  $39
DB94: DE 52    ldx  $52
DB96: DE 52    ldx  $52
DB98: DE 52    ldx  $52
DB9A: DE 52    ldx  $52
DB9C: DE 52    ldx  $52
DB9E: DE 52    ldx  $52
DBA0: DE 77    ldx  $77
DBA2: DE 98    ldx  $98
DBA4: DE C5    ldx  $C5
DBA6: DE E2    ldx  $E2
DBA8: DE E2    ldx  $E2
DBAA: DE E2    ldx  $E2
DBAC: DE E2    ldx  $E2
DBAE: DE E2    ldx  $E2
DBB0: DE E2    ldx  $E2
DBB2: DE E2    ldx  $E2
DBB4: DE E2    ldx  $E2
DBB6: DE E2    ldx  $E2
DBB8: DE E2    ldx  $E2
DBBA: DE E2    ldx  $E2
DBBC: DE E2    ldx  $E2
DBBE: DF 03    stx  $03
DBC0: DF 20    stx  $20
DBC2: DF 3D    stx  $3D
DBC4: DF 5A    stx  $5A
DBC6: DF 77    stx  $77
DBC8: DF 82    stx  $82
DBCA: DF 97    stx  $97
DBCC: DF B6    stx  $B6
DBCE: DF C7    stx  $C7
DBD0: DF E6    stx  $E6
DBD2: DF F7    stx  $F7
DBD4: E0 16    subb $16,x
DBD6: E0 35    subb $35,x
DBD8: E0 46    subb $46,x
DBDA: E0 57    subb $57,x
DBDC: 26 DB    bne  $DBB9
DBDE: EB 89    addb $89,x
DBE0: 5E       illegal
DBE1: 89 60    adca #$60
DBE3: 09       dex  
DBE4: 67 89    asr  $89,x
DBE6: 62 89 64 oim  #$89,$64,x
DBE9: 09       dex  
DBEA: 66 F8    ror  $F8,x
DBEC: 40       nega 
DBED: F8 20 F8 eorb $20F8
DBF0: 08       inx  
DBF1: 08       inx  
DBF2: 40       nega 
DBF3: 08       inx  
DBF4: 20 08    bra  $DBFE
DBF6: 08       inx  
DBF7: 26 DB    bne  $DBD4
DBF9: EB 89    addb $89,x
DBFB: 68 89    asl  $89,x
DBFD: 6A 09    dec  $09,x
DBFF: 71 89 6C aim  #$89,$6C
DC02: 89 6E    adca #$6E
DC04: 09       dex  
DC05: 70 26 DB neg  $26DB
DC08: EB 89    addb $89,x
DC0A: 68 89    asl  $89,x
DC0C: 72 09 77 oim  #$09,$77
DC0F: 89 6C    adca #$6C
DC11: 89 74    adca #$74
DC13: 09       dex  
DC14: 76 26 DB ror  $26DB
DC17: EB 89    addb $89,x
DC19: 5E       illegal
DC1A: 89 78    adca #$78
DC1C: 09       dex  
DC1D: 7D 89 62 tst  $8962
DC20: 89 7A    adca #$7A
DC22: 09       dex  
DC23: 7C 26 DB inc  $26DB
DC26: EB 89    addb $89,x
DC28: 3E       wai  
DC29: 89 40    adca #$40
DC2B: 09       dex  
DC2C: 47       asra 
DC2D: 89 42    adca #$42
DC2F: 89 44    adca #$44
DC31: 09       dex  
DC32: 46       rora 
DC33: 26 DB    bne  $DC10
DC35: EB 89    addb $89,x
DC37: 3E       wai  
DC38: 89 52    adca #$52
DC3A: 09       dex  
DC3B: 57       asrb 
DC3C: 89 42    adca #$42
DC3E: 89 54    adca #$54
DC40: 09       dex  
DC41: 56       rorb 
DC42: 26 DB    bne  $DC1F
DC44: EB 89    addb $89,x
DC46: 48       asla 
DC47: 89 4A    adca #$4A
DC49: 09       dex  
DC4A: 51       illegal
DC4B: 89 4C    adca #$4C
DC4D: 89 4E    adca #$4E
DC4F: 09       dex  
DC50: 50       negb 
DC51: 26 DB    bne  $DC2E
DC53: EB 89    addb $89,x
DC55: 48       asla 
DC56: 89 58    adca #$58
DC58: 09       dex  
DC59: 5D       tstb 
DC5A: 89 4C    adca #$4C
DC5C: 89 5A    adca #$5A
DC5E: 09       dex  
DC5F: 5C       incb 
DC60: 05       asld 
DC61: 89 00    adca #$00
DC63: F8 40 89 eorb $4089
DC66: 02       illegal
DC67: F8 20 09 eorb $2009
DC6A: 0F       sei  
DC6B: F8 08 89 eorb $0889
DC6E: 04       lsrd 
DC6F: 08       inx  
DC70: 30       tsx  
DC71: 89 06    adca #$06
DC73: 08       inx  
DC74: 10       sba  
DC75: 06       tap  
DC76: 89 08    adca #$08
DC78: F8 40 89 eorb $4089
DC7B: 0A       clv  
DC7C: F8 20 09 eorb $2009
DC7F: 0F       sei  
DC80: F8 08 89 eorb $0889
DC83: 0C       clc  
DC84: 08       inx  
DC85: 40       nega 
DC86: 09       dex  
DC87: 0E       cli  
DC88: 08       inx  
DC89: 28 89    bvc  $DC14
DC8B: 06       tap  
DC8C: 08       inx  
DC8D: 10       sba  
DC8E: C5 89    bitb #$89
DC90: 18       xgdx 
DC91: E0 30    subb $30,x
DC93: F0 30 00 subb $3000
DC96: 30       tsx  
DC97: 00       illegal
DC98: 10       sba  
DC99: 10       sba  
DC9A: 20 06    bra  $DCA2
DC9C: 89 22    adca #$22
DC9E: D0 08    subb $08
DCA0: 89 24    adca #$24
DCA2: E0 18    subb $18,x
DCA4: 09       dex  
DCA5: 29 E0    bvs  $DC87
DCA7: 00       illegal
DCA8: 89 26    adca #$26
DCAA: F0 18 09 subb $1809
DCAD: 28 F0    bvc  $DC9F
DCAF: 00       illegal
DCB0: 89 2A    adca #$2A
DCB2: 00       illegal
DCB3: 18       xgdx 
DCB4: C4 88    andb #$88
DCB6: D6 00    ldb  $00
DCB8: 30       tsx  
DCB9: 00       illegal
DCBA: 10       sba  
DCBB: 10       sba  
DCBC: 40       nega 
DCBD: 10       sba  
DCBE: 20 05    bra  $DCC5
DCC0: 88 DE    eora #$DE
DCC2: 08       inx  
DCC3: 10       sba  
DCC4: 88 E0    eora #$E0
DCC6: 18       xgdx 
DCC7: 10       sba  
DCC8: 88 E2    eora #$E2
DCCA: 28 20    bvc  $DCEC
DCCC: 08       inx  
DCCD: D5 28    bitb $28
DCCF: 08       inx  
DCD0: 88 E4    eora #$E4
DCD2: 38       pulx 
DCD3: 10       sba  
DCD4: 06       tap  
DCD5: C9 2C    adcb #$2C
DCD7: 28 18    bvc  $DCF1
DCD9: 49       rola 
DCDA: 31       ins  
DCDB: 28 00    bvc  $DCDD
DCDD: C9 2E    adcb #$2E
DCDF: 18       xgdx 
DCE0: 18       xgdx 
DCE1: 49       rola 
DCE2: 30       tsx  
DCE3: 18       xgdx 
DCE4: 00       illegal
DCE5: C9 32    adcb #$32
DCE7: 08       inx  
DCE8: 08       inx  
DCE9: C9 34    adcb #$34
DCEB: F8 08 C4 eorb $08C4
DCEE: 89 10    adca #$10
DCF0: 00       illegal
DCF1: 30       tsx  
DCF2: 00       illegal
DCF3: 10       sba  
DCF4: 10       sba  
DCF5: 30       tsx  
DCF6: 10       sba  
DCF7: 10       sba  
DCF8: 05       asld 
DCF9: 09       dex  
DCFA: 39       rts  
DCFB: F0 08 89 subb $0889
DCFE: 36       psha 
DCFF: 00       illegal
DD00: 20 09    bra  $DD0B
DD02: 38       pulx 
DD03: 00       illegal
DD04: 08       inx  
DD05: 89 3A    adca #$3A
DD07: 10       sba  
DD08: 30       tsx  
DD09: 89 3C    adca #$3C
DD0B: 10       sba  
DD0C: 10       sba  
DD0D: 26 DB    bne  $DCEA
DD0F: EB 88    addb $88,x
DD11: CA 88    orb  #$88
DD13: CC 08 D3 ldd  #$08D3
DD16: 88 CE    eora #$CE
DD18: 88 D0    eora #$D0
DD1A: 08       inx  
DD1B: D2 26    sbcb $26
DD1D: DB EB    addb $EB
DD1F: 88 A2    eora #$A2
DD21: 88 A4    eora #$A4
DD23: 08       inx  
DD24: A1 88    cmpa $88,x
DD26: A6 88    lda  $88,x
DD28: A8 08    eora $08,x
DD2A: D4 29    andb $29
DD2C: DD 40    std  $40
DD2E: 88 AA    eora #$AA
DD30: 08       inx  
DD31: A5 08    bita $08,x
DD33: A1 88    cmpa $88,x
DD35: AC 08    cmpx $08,x
DD37: B1 08 A9 cmpa $08A9
DD3A: 08       inx  
DD3B: D4 88    andb $88
DD3D: AE 08    lds  $08,x
DD3F: B0 F8 30 suba $F830
DD42: F8 18 F8 eorb $18F8
DD45: 08       inx  
DD46: 08       inx  
DD47: 40       nega 
DD48: 08       inx  
DD49: 28 08    bvc  $DD53
DD4B: 18       xgdx 
DD4C: 08       inx  
DD4D: 08       inx  
DD4E: 18       xgdx 
DD4F: 40       nega 
DD50: 28 38    bvc  $DD8A
DD52: 26 DB    bne  $DD2F
DD54: EB 88    addb $88,x
DD56: B2 88 B4 sbca $88B4
DD59: 08       inx  
DD5A: BB 88 B6 adda $88B6
DD5D: 88 B8    eora #$B8
DD5F: 08       inx  
DD60: BA 28 DD ora  $28DD
DD63: 74 88 BC lsr  $88BC
DD66: 08       inx  
DD67: C1 08    cmpb #$08
DD69: B5 08 BB bita $08BB
DD6C: 88 BE    eora #$BE
DD6E: 08       inx  
DD6F: C0 08    subb #$08
DD71: B9 08 BA adca $08BA
DD74: F8 40 F8 eorb $40F8
DD77: 28 F8    bvc  $DD71
DD79: 18       xgdx 
DD7A: F8 08 08 eorb $0808
DD7D: 40       nega 
DD7E: 08       inx  
DD7F: 28 08    bvc  $DD89
DD81: 18       xgdx 
DD82: 08       inx  
DD83: 08       inx  
DD84: 29 DD    bvs  $DD63
DD86: 40       nega 
DD87: 88 C2    eora #$C2
DD89: 08       inx  
DD8A: A5 08    bita $08,x
DD8C: A1 88    cmpa $88,x
DD8E: C4 08    andb #$08
DD90: C9 08    adcb #$08
DD92: A9 08    adca $08,x
DD94: D4 88    andb $88
DD96: C6 08    ldb  #$08
DD98: C8 06    eorb #$06
DD9A: 84 C6    anda #$C6
DD9C: F8 40 84 eorb $4084
DD9F: C8 F8    eorb #$F8
DDA1: 20 04    bra  $DDA7
DDA3: CA F8    orb  #$F8
DDA5: 08       inx  
DDA6: 04       lsrd 
DDA7: CB 08    addb #$08
DDA9: 48       asla 
DDAA: 84 CC    anda #$CC
DDAC: 08       inx  
DDAD: 30       tsx  
DDAE: 84 CE    anda #$CE
DDB0: 08       inx  
DDB1: 10       sba  
DDB2: 05       asld 
DDB3: 84 D0    anda #$D0
DDB5: F8 30 84 eorb $3084
DDB8: D2 F8    sbcb $F8
DDBA: 10       sba  
DDBB: 84 D4    anda #$D4
DDBD: 08       inx  
DDBE: 30       tsx  
DDBF: 84 D6    anda #$D6
DDC1: 08       inx  
DDC2: 10       sba  
DDC3: 84 D8    anda #$D8
DDC5: 18       xgdx 
DDC6: 20 06    bra  $DDCE
DDC8: 89 EA    adca #$EA
DDCA: F8 40 89 eorb $4089
DDCD: EC F8    ldd  $F8,x
DDCF: 20 09    bra  $DDDA
DDD1: F3 F8 08 addd $F808
DDD4: 89 EE    adca #$EE
DDD6: 08       inx  
DDD7: 40       nega 
DDD8: 89 F0    adca #$F0
DDDA: 08       inx  
DDDB: 20 09    bra  $DDE6
DDDD: F2 08 08 sbcb $0808
DDE0: 28 DD    bvc  $DDBF
DDE2: 74 89 F4 lsr  $89F4
DDE5: 09       dex  
DDE6: E9 09    adcb $09,x
DDE8: ED 09    std  $09,x
DDEA: F3 89 F6 addd $89F6
DDED: 09       dex  
DDEE: F8 09 F1 eorb $09F1
DDF1: 09       dex  
DDF2: F2 0A 4C sbcb $0A4C
DDF5: 57       asrb 
DDF6: 10       sba  
DDF7: 38       pulx 
DDF8: CC 58 00 ldd  #$5800
DDFB: 40       nega 
DDFC: CC 5A 00 ldd  #$5A00
DDFF: 20 4C    bra  $DE4D
DE01: 63 00    com  $00,x
DE03: 08       inx  
DE04: CC 5C F0 ldd  #$5CF0
DE07: 40       nega 
DE08: CC 5E F0 ldd  #$5EF0
DE0B: 20 4C    bra  $DE59
DE0D: 62 F0 08 oim  #$F0,$08,x
DE10: CC 60 E0 ldd  #$60E0
DE13: 40       nega 
DE14: 4C       inca 
DE15: 56       rorb 
DE16: F0 58 4C subb $584C
DE19: 55       illegal
DE1A: E0 58    subb $58,x
DE1C: 07       tpa  
DE1D: CC 70 00 ldd  #$7000
DE20: 40       nega 
DE21: CC 72 00 ldd  #$7200
DE24: 20 4C    bra  $DE72
DE26: 78 00 08 asl  $0008
DE29: CC 74 F0 ldd  #$74F0
DE2C: 30       tsx  
DE2D: CC 76 F0 ldd  #$76F0
DE30: 10       sba  
DE31: 4C       inca 
DE32: 79 F0 48 rol  $F048
DE35: CC 6E E0 ldd  #$6EE0
DE38: 40       nega 
DE39: 06       tap  
DE3A: 4C       inca 
DE3B: 6D 10    tst  $10,x
DE3D: 38       pulx 
DE3E: CC 64 00 ldd  #$6400
DE41: 40       nega 
DE42: CC 66 00 ldd  #$6600
DE45: 20 4C    bra  $DE93
DE47: 6C 00    inc  $00,x
DE49: 08       inx  
DE4A: CC 68 F0 ldd  #$68F0
DE4D: 30       tsx  
DE4E: CC 6A F0 ldd  #$6AF0
DE51: 10       sba  
DE52: 09       dex  
DE53: C8 62    eorb #$62
DE55: 10       sba  
DE56: 40       nega 
DE57: C8 64    eorb #$64
DE59: 10       sba  
DE5A: 20 48    bra  $DEA4
DE5C: 61 10 08 aim  #$10,$08,x
DE5F: C8 66    eorb #$66
DE61: 00       illegal
DE62: 30       tsx  
DE63: C8 68    eorb #$68
DE65: 00       illegal
DE66: 10       sba  
DE67: D8 4A    eorb $4A
DE69: 18       xgdx 
DE6A: 20 58    bra  $DEC4
DE6C: 4F       clra 
DE6D: 18       xgdx 
DE6E: 08       inx  
DE6F: D8 4C    eorb $4C
DE71: 08       inx  
DE72: 20 58    bra  $DECC
DE74: 4E       illegal
DE75: 08       inx  
DE76: 08       inx  
DE77: 08       inx  
DE78: C8 6A    eorb #$6A
DE7A: 10       sba  
DE7B: 30       tsx  
DE7C: 48       asla 
DE7D: 71 10 08 aim  #$10,$08
DE80: C8 6C    eorb #$6C
DE82: 00       illegal
DE83: 40       nega 
DE84: C8 6E    eorb #$6E
DE86: 00       illegal
DE87: 20 48    bra  $DED1
DE89: 70 00 08 neg  $0008
DE8C: D8 56    eorb $56
DE8E: 14       illegal
DE8F: 2C 58    bge  $DEE9
DE91: 60 14    neg  $14,x
DE93: 14       illegal
DE94: D8 58    eorb $58
DE96: 04       lsrd 
DE97: 2C 0B    bge  $DEA4
DE99: 48       asla 
DE9A: 71 10 08 aim  #$10,$08
DE9D: 48       asla 
DE9E: 6F 00    clr  $00,x
DEA0: 18       xgdx 
DEA1: 48       asla 
DEA2: 70 00 08 neg  $0008
DEA5: C8 72    eorb #$72
DEA7: 08       inx  
DEA8: 40       nega 
DEA9: 48       asla 
DEAA: 77 08 28 asr  $0828
DEAD: C8 74    eorb #$74
DEAF: F8 40 48 eorb $4048
DEB2: 76 F8 28 ror  $F828
DEB5: D8 50    eorb $50
DEB7: 14       illegal
DEB8: 48       asla 
DEB9: 58       aslb 
DEBA: 55       illegal
DEBB: 14       illegal
DEBC: 30       tsx  
DEBD: D8 52    eorb $52
DEBF: 04       lsrd 
DEC0: 48       asla 
DEC1: 58       aslb 
DEC2: 54       lsrb 
DEC3: 04       lsrd 
DEC4: 30       tsx  
DEC5: 07       tpa  
DEC6: 48       asla 
DEC7: 71 10 08 aim  #$10,$08
DECA: 48       asla 
DECB: 6F 00    clr  $00,x
DECD: 18       xgdx 
DECE: 48       asla 
DECF: 70 00 08 neg  $0008
DED2: C8 82    eorb #$82
DED4: FE 40 48 ldx  $4048
DED7: 87 FE    sta  #$FE
DED9: 28 C8    bvc  $DEA3
DEDB: 84 EE    anda #$EE
DEDD: 50       negb 
DEDE: 48       asla 
DEDF: 86 EE    lda  #$EE
DEE1: 38       pulx 
DEE2: 08       inx  
DEE3: CC 24 10 ldd  #$2410
DEE6: 40       nega 
DEE7: CC 26 10 ldd  #$2610
DEEA: 20 4C    bra  $DF38
DEEC: 2F 10    ble  $DEFE
DEEE: 08       inx  
DEEF: CC 28 00 ldd  #$2800
DEF2: 40       nega 
DEF3: CC 2A 00 ldd  #$2A00
DEF6: 20 4C    bra  $DF44
DEF8: 2E 00    bgt  $DEFA
DEFA: 08       inx  
DEFB: CC 2C F0 ldd  #$2CF0
DEFE: 30       tsx  
DEFF: 4C       inca 
DF00: 49       rola 
DF01: F0 08 07 subb $0807
DF04: CC 30 18 ldd  #$3018
DF07: 40       nega 
DF08: CC 32 18 ldd  #$3218
DF0B: 20 4C    bra  $DF59
DF0D: 3B       rti  
DF0E: 18       xgdx 
DF0F: 08       inx  
DF10: CC 34 08 ldd  #$3408
DF13: 40       nega 
DF14: CC 36 08 ldd  #$3608
DF17: 20 4C    bra  $DF65
DF19: 3A       abx  
DF1A: 08       inx  
DF1B: 08       inx  
DF1C: CC 38 F8 ldd  #$38F8
DF1F: 30       tsx  
DF20: 07       tpa  
DF21: CC 3C 28 ldd  #$3C28
DF24: 30       tsx  
DF25: CC 3E 18 ldd  #$3E18
DF28: 30       tsx  
DF29: CC 40 18 ldd  #$4018
DF2C: 10       sba  
DF2D: CC 42 08 ldd  #$4208
DF30: 40       nega 
DF31: CC 44 08 ldd  #$4408
DF34: 20 4C    bra  $DF82
DF36: 48       asla 
DF37: 08       inx  
DF38: 08       inx  
DF39: CC 46 F8 ldd  #$46F8
DF3C: 30       tsx  
DF3D: 07       tpa  
DF3E: 4C       inca 
DF3F: 54       lsrb 
DF40: 28 28    bvc  $DF6A
DF42: CC 4A 18 ldd  #$4A18
DF45: 40       nega 
DF46: CC 4C 18 ldd  #$4C18
DF49: 20 4C    bra  $DF97
DF4B: 53       comb 
DF4C: 18       xgdx 
DF4D: 08       inx  
DF4E: CC 4E 08 ldd  #$4E08
DF51: 40       nega 
DF52: CC 50 08 ldd  #$5008
DF55: 20 4C    bra  $DFA3
DF57: 52       illegal
DF58: 08       inx  
DF59: 08       inx  
DF5A: 07       tpa  
DF5B: 48       asla 
DF5C: 78 18 28 asl  $1828
DF5F: 48       asla 
DF60: 79 18 08 rol  $1808
DF63: C8 7A    eorb #$7A
DF65: 08       inx  
DF66: 30       tsx  
DF67: C8 7C    eorb #$7C
DF69: 08       inx  
DF6A: 10       sba  
DF6B: C8 7E    eorb #$7E
DF6D: F8 20 48 eorb $2048
DF70: 80 F8    suba #$F8
DF72: 08       inx  
DF73: 48       asla 
DF74: 81 E8    cmpa #$E8
DF76: 08       inx  
DF77: C4 C8    andb #$C8
DF79: 88 08    eora #$08
DF7B: 30       tsx  
DF7C: 08       inx  
DF7D: 10       sba  
DF7E: F8 30 F8 eorb $30F8
DF81: 10       sba  
DF82: 05       asld 
DF83: 48       asla 
DF84: 97 08    sta  $08
DF86: 38       pulx 
DF87: C8 90    eorb #$90
DF89: 08       inx  
DF8A: 10       sba  
DF8B: C8 92    eorb #$92
DF8D: F8 40 C8 eorb $40C8
DF90: 94 F8    anda $F8
DF92: 20 48    bra  $DFDC
DF94: 96 F8    lda  $F8
DF96: 08       inx  
DF97: 27 DF    beq  $DF78
DF99: A8 09    eora $09,x
DF9B: 67 09    asr  $09,x
DF9D: 66 8E    ror  $8E,x
DF9F: 1A       slp  
DFA0: 8E 1C 8E lds  #$1C8E
DFA3: 1E       illegal
DFA4: 8E 20 0E lds  #$200E
DFA7: 2B F8    bmi  $DFA1
DFA9: 08       inx  
DFAA: 08       inx  
DFAB: 08       inx  
DFAC: F8 40 F8 eorb $40F8
DFAF: 20 08    bra  $DFB9
DFB1: 50       negb 
DFB2: 08       inx  
DFB3: 30       tsx  
DFB4: 08       inx  
DFB5: 18       xgdx 
DFB6: 27 DF    beq  $DF97
DFB8: A8 09    eora $09,x
DFBA: 71 09 70 aim  #$09,$70
DFBD: 8E 22 8E lds  #$228E
DFC0: 24 8E    bcc  $DF50
DFC2: 26 8E    bne  $DF52
DFC4: 28 0E    bvc  $DFD4
DFC6: 2A 27    bpl  $DFEF
DFC8: DF D8    stx  $D8
DFCA: 09       dex  
DFCB: 77 09 76 asr  $0976
DFCE: 8E 22 8E lds  #$228E
DFD1: 2C 8E    bge  $DF61
DFD3: 26 0E    bne  $DFE3
DFD5: 28 8E    bvc  $DF65
DFD7: 2E F8    bgt  $DFD1
DFD9: 08       inx  
DFDA: 08       inx  
DFDB: 08       inx  
DFDC: F8 40 F8 eorb $40F8
DFDF: 20 08    bra  $DFE9
DFE1: 50       negb 
DFE2: 08       inx  
DFE3: 38       pulx 
DFE4: 08       inx  
DFE5: 20 27    bra  $E00E
DFE7: DF D8    stx  $D8
DFE9: 09       dex  
DFEA: 7D 09 7C tst  $097C
DFED: 8E 1A 8E lds  #$1A8E
DFF0: 30       tsx  
DFF1: 8E 1E 0E lds  #$1E0E
DFF4: 20 8E    bra  $DF84
DFF6: 32       pula 
DFF7: 27 E0    beq  $DFD9
DFF9: 08       inx  
DFFA: 8E 00 8E lds  #$008E
DFFD: 02       illegal
DFFE: 0E       cli  
DFFF: 11       cba  
E000: 8E 04 8E lds  #$048E
E003: 06       tap  
E004: 09       dex  
E005: 47       asra 
E006: 09       dex  
E007: 46       rora 
E008: F8 50 F8 eorb $50F8
E00B: 30       tsx  
E00C: F8 18 08 eorb $1808
E00F: 40       nega 
E010: 08       inx  
E011: 20 F8    bra  $E00B
E013: 08       inx  
E014: 08       inx  
E015: 08       inx  
E016: 27 E0    beq  $DFF8
E018: 27 8E    beq  $DFA8
E01A: 00       illegal
E01B: 0E       cli  
E01C: 02       illegal
E01D: 8E 12 8E lds  #$128E
E020: 04       lsrd 
E021: 8E 14 09 lds  #$1409
E024: 57       asrb 
E025: 09       dex  
E026: 56       rorb 
E027: F8 50 F8 eorb $50F8
E02A: 38       pulx 
E02B: F8 20 08 eorb $2008
E02E: 40       nega 
E02F: 08       inx  
E030: 20 F8    bra  $E02A
E032: 08       inx  
E033: 08       inx  
E034: 08       inx  
E035: 27 E0    beq  $E017
E037: 08       inx  
E038: 8E 08 8E lds  #$088E
E03B: 0A       clv  
E03C: 0E       cli  
E03D: 10       sba  
E03E: 8E 0C 8E lds  #$0C8E
E041: 0E       cli  
E042: 09       dex  
E043: 51       illegal
E044: 09       dex  
E045: 50       negb 
E046: 27 E0    beq  $E028
E048: 27 8E    beq  $DFD8
E04A: 08       inx  
E04B: 0E       cli  
E04C: 0A       clv  
E04D: 8E 16 8E lds  #$168E
E050: 0C       clc  
E051: 8E 18 09 lds  #$1809
E054: 5D       tstb 
E055: 09       dex  
E056: 5C       incb 
E057: 05       asld 
E058: C8 98    eorb #$98
E05A: 10       sba  
E05B: 40       nega 
E05C: C8 9A    eorb #$9A
E05E: 10       sba  
E05F: 20 48    bra  $E0A9
E061: A0 10    suba $10,x
E063: 08       inx  
E064: C8 9C    eorb #$9C
E066: 00       illegal
E067: 30       tsx  
E068: C8 9E    eorb #$9E
E06A: 00       illegal
E06B: 10       sba  
E06C: E1 12    cmpb $12,x
E06E: E1 35    cmpb $35,x
E070: E1 48    cmpb $48,x
E072: E1 5B    cmpb $5B,x
E074: E1 6E    cmpb $6E,x
E076: E1 91    cmpb $91,x
E078: E1 A4    cmpb $A4,x
E07A: E1 B7    cmpb $B7,x
E07C: E1 CA    cmpb $CA,x
E07E: E1 DF    cmpb $DF,x
E080: E2 00    sbcb $00,x
E082: E2 15    sbcb $15,x
E084: E2 2E    sbcb $2E,x
E086: E2 3F    sbcb $3F,x
E088: E2 58    sbcb $58,x
E08A: E2 71    sbcb $71,x
E08C: E2 82    sbcb $82,x
E08E: E2 97    sbcb $97,x
E090: E2 B2    sbcb $B2,x
E092: E2 C1    sbcb $C1,x
E094: E2 EE    sbcb $EE,x
E096: E2 FD    sbcb $FD,x
E098: E3 1E    addd $1E,x
E09A: E3 43    addd $43,x
E09C: E3 5C    addd $5C,x
E09E: E3 71    addd $71,x
E0A0: E3 71    addd $71,x
E0A2: E3 71    addd $71,x
E0A4: E3 71    addd $71,x
E0A6: E3 71    addd $71,x
E0A8: E3 71    addd $71,x
E0AA: E3 71    addd $71,x
E0AC: E3 71    addd $71,x
E0AE: E3 8A    addd $8A,x
E0B0: E3 AB    addd $AB,x
E0B2: E3 AB    addd $AB,x
E0B4: E3 AB    addd $AB,x
E0B6: E3 AB    addd $AB,x
E0B8: E3 AB    addd $AB,x
E0BA: E3 AB    addd $AB,x
E0BC: E3 AB    addd $AB,x
E0BE: E3 AB    addd $AB,x
E0C0: E3 AB    addd $AB,x
E0C2: E3 AB    addd $AB,x
E0C4: E3 AB    addd $AB,x
E0C6: E3 D4    addd $D4,x
E0C8: E3 F1    addd $F1,x
E0CA: E4 0A    andb $0A,x
E0CC: E4 0A    andb $0A,x
E0CE: E4 0A    andb $0A,x
E0D0: E4 0A    andb $0A,x
E0D2: E4 0A    andb $0A,x
E0D4: E4 0A    andb $0A,x
E0D6: E4 2F    andb $2F,x
E0D8: E4 50    andb $50,x
E0DA: E4 7D    andb $7D,x
E0DC: E4 A2    andb $A2,x
E0DE: E4 A2    andb $A2,x
E0E0: E4 A2    andb $A2,x
E0E2: E4 A2    andb $A2,x
E0E4: E4 A2    andb $A2,x
E0E6: E4 A2    andb $A2,x
E0E8: E4 A2    andb $A2,x
E0EA: E4 A2    andb $A2,x
E0EC: E4 A2    andb $A2,x
E0EE: E4 A2    andb $A2,x
E0F0: E4 A2    andb $A2,x
E0F2: E4 A2    andb $A2,x
E0F4: E4 C3    andb $C3,x
E0F6: E4 E0    andb $E0,x
E0F8: E4 FD    andb $FD,x
E0FA: E5 1A    bitb $1A,x
E0FC: E5 37    bitb $37,x
E0FE: E5 48    bitb $48,x
E100: E5 61    bitb $61,x
E102: E5 80    bitb $80,x
E104: E5 91    bitb $91,x
E106: E5 B0    bitb $B0,x
E108: E5 C1    bitb $C1,x
E10A: E5 E0    bitb $E0,x
E10C: E5 FF    bitb $FF,x
E10E: E6 10    ldb  $10,x
E110: E6 21    ldb  $21,x
E112: 28 E1    bvc  $E0F5
E114: 25 0A    bcs  $E120
E116: 19       daa  
E117: 09       dex  
E118: 5F       clrb 
E119: 89 60    adca #$60
E11B: 09       dex  
E11C: 67 0A    asr  $0A,x
E11E: 1A       slp  
E11F: 09       dex  
E120: 63 89    com  $89,x
E122: 64 09    lsr  $09,x
E124: 66 F8    ror  $F8,x
E126: 48       asla 
E127: F8 38 F8 eorb $38F8
E12A: 20 F8    bra  $E124
E12C: 08       inx  
E12D: 08       inx  
E12E: 48       asla 
E12F: 08       inx  
E130: 38       pulx 
E131: 08       inx  
E132: 20 08    bra  $E13C
E134: 08       inx  
E135: 28 E1    bvc  $E118
E137: 25 0A    bcs  $E143
E139: 1B       aba  
E13A: 09       dex  
E13B: 69 89    rol  $89,x
E13D: 6A 09    dec  $09,x
E13F: 71 0A 1C aim  #$0A,$1C
E142: 09       dex  
E143: 6D 89    tst  $89,x
E145: 6E 09    jmp  $09,x
E147: 70 28 E1 neg  $28E1
E14A: 25 0A    bcs  $E156
E14C: 1B       aba  
E14D: 09       dex  
E14E: 69 89    rol  $89,x
E150: 72 09 77 oim  #$09,$77
E153: 0A       clv  
E154: 1C       illegal
E155: 09       dex  
E156: 6D 89    tst  $89,x
E158: 74 09 76 lsr  $0976
E15B: 28 E1    bvc  $E13E
E15D: 25 0A    bcs  $E169
E15F: 19       daa  
E160: 09       dex  
E161: 5F       clrb 
E162: 89 78    adca #$78
E164: 09       dex  
E165: 7D 0A 1A tst  $0A1A
E168: 09       dex  
E169: 63 89    com  $89,x
E16B: 7A 09 7C dec  $097C
E16E: 28 E1    bvc  $E151
E170: 81 0A    cmpa #$0A
E172: 11       cba  
E173: 0A       clv  
E174: 12       asx1 1,s
E175: 89 40    adca #$40
E177: 09       dex  
E178: 47       asra 
E179: 0A       clv  
E17A: 13       asx2 1,s
E17B: 0A       clv  
E17C: 14       illegal
E17D: 89 44    adca #$44
E17F: 09       dex  
E180: 46       rora 
E181: F8 48 F8 eorb $48F8
E184: 38       pulx 
E185: F8 20 F8 eorb $20F8
E188: 08       inx  
E189: 08       inx  
E18A: 48       asla 
E18B: 08       inx  
E18C: 38       pulx 
E18D: 08       inx  
E18E: 20 08    bra  $E198
E190: 08       inx  
E191: 28 E1    bvc  $E174
E193: 81 0A    cmpa #$0A
E195: 11       cba  
E196: 0A       clv  
E197: 12       asx1 1,s
E198: 89 52    adca #$52
E19A: 09       dex  
E19B: 57       asrb 
E19C: 0A       clv  
E19D: 13       asx2 1,s
E19E: 0A       clv  
E19F: 14       illegal
E1A0: 89 54    adca #$54
E1A2: 09       dex  
E1A3: 56       rorb 
E1A4: 28 E1    bvc  $E187
E1A6: 81 0A    cmpa #$0A
E1A8: 15       illegal
E1A9: 0A       clv  
E1AA: 16       tab  
E1AB: 89 4A    adca #$4A
E1AD: 09       dex  
E1AE: 51       illegal
E1AF: 0A       clv  
E1B0: 17       tba  
E1B1: 0A       clv  
E1B2: 18       xgdx 
E1B3: 89 4E    adca #$4E
E1B5: 09       dex  
E1B6: 50       negb 
E1B7: 28 E1    bvc  $E19A
E1B9: 81 0A    cmpa #$0A
E1BB: 15       illegal
E1BC: 0A       clv  
E1BD: 16       tab  
E1BE: 89 58    adca #$58
E1C0: 09       dex  
E1C1: 5D       tstb 
E1C2: 0A       clv  
E1C3: 17       tba  
E1C4: 0A       clv  
E1C5: 18       xgdx 
E1C6: 89 5A    adca #$5A
E1C8: 09       dex  
E1C9: 5C       incb 
E1CA: 05       asld 
E1CB: 8A 1E    ora  #$1E
E1CD: F8 40 89 eorb $4089
E1D0: 02       illegal
E1D1: F8 20 09 eorb $2009
E1D4: 0F       sei  
E1D5: F8 08 89 eorb $0889
E1D8: 04       lsrd 
E1D9: 08       inx  
E1DA: 30       tsx  
E1DB: 89 06    adca #$06
E1DD: 08       inx  
E1DE: 10       sba  
E1DF: 08       inx  
E1E0: 0A       clv  
E1E1: 1D       illegal
E1E2: F8 48 09 eorb $4809
E1E5: 09       dex  
E1E6: F8 38 89 eorb $3889
E1E9: 0A       clv  
E1EA: F8 20 09 eorb $2009
E1ED: 0F       sei  
E1EE: F8 08 0A eorb $080A
E1F1: 2A 08    bpl  $E1FB
E1F3: 48       asla 
E1F4: 09       dex  
E1F5: 0D       sec  
E1F6: 08       inx  
E1F7: 38       pulx 
E1F8: 09       dex  
E1F9: 0E       cli  
E1FA: 08       inx  
E1FB: 28 89    bvc  $E186
E1FD: 06       tap  
E1FE: 08       inx  
E1FF: 10       sba  
E200: 05       asld 
E201: 8A 22    ora  #$22
E203: E0 30    subb $30,x
E205: 89 1A    adca #$1A
E207: F0 30 89 subb $3089
E20A: 1C       illegal
E20B: 00       illegal
E20C: 30       tsx  
E20D: 89 1E    adca #$1E
E20F: 00       illegal
E210: 10       sba  
E211: 89 20    adca #$20
E213: 10       sba  
E214: 20 06    bra  $E21C
E216: 8A 24    ora  #$24
E218: D0 08    subb $08
E21A: 89 24    adca #$24
E21C: E0 18    subb $18,x
E21E: 09       dex  
E21F: 29 E0    bvs  $E201
E221: 00       illegal
E222: 89 26    adca #$26
E224: F0 18 09 subb $1809
E227: 28 F0    bvc  $E219
E229: 00       illegal
E22A: 89 2A    adca #$2A
E22C: 00       illegal
E22D: 18       xgdx 
E22E: 04       lsrd 
E22F: 88 D6    eora #$D6
E231: 00       illegal
E232: 30       tsx  
E233: 88 D8    eora #$D8
E235: 00       illegal
E236: 10       sba  
E237: 89 FA    adca #$FA
E239: 10       sba  
E23A: 40       nega 
E23B: 88 DC    eora #$DC
E23D: 10       sba  
E23E: 20 06    bra  $E246
E240: 88 DE    eora #$DE
E242: 08       inx  
E243: 10       sba  
E244: 88 E0    eora #$E0
E246: 18       xgdx 
E247: 10       sba  
E248: 88 E2    eora #$E2
E24A: 28 20    bvc  $E26C
E24C: 08       inx  
E24D: D5 28    bitb $28
E24F: 08       inx  
E250: 09       dex  
E251: F9 38 18 adcb $3818
E254: 08       inx  
E255: E5 38    bitb $38,x
E257: 08       inx  
E258: 06       tap  
E259: 49       rola 
E25A: 2C 28    bge  $E284
E25C: 20 CA    bra  $E228
E25E: 26 28    bne  $E288
E260: 08       inx  
E261: C9 2E    adcb #$2E
E263: 18       xgdx 
E264: 18       xgdx 
E265: 49       rola 
E266: 30       tsx  
E267: 18       xgdx 
E268: 00       illegal
E269: C9 32    adcb #$32
E26B: 08       inx  
E26C: 08       inx  
E26D: C9 34    adcb #$34
E26F: F8 08 04 eorb $0804
E272: 89 10    adca #$10
E274: 00       illegal
E275: 30       tsx  
E276: 89 12    adca #$12
E278: 00       illegal
E279: 10       sba  
E27A: 8A 20    ora  #$20
E27C: 10       sba  
E27D: 30       tsx  
E27E: 89 16    adca #$16
E280: 10       sba  
E281: 10       sba  
E282: 05       asld 
E283: 09       dex  
E284: 39       rts  
E285: F0 08 89 subb $0889
E288: 36       psha 
E289: 00       illegal
E28A: 20 09    bra  $E295
E28C: 38       pulx 
E28D: 00       illegal
E28E: 08       inx  
E28F: 8A 28    ora  #$28
E291: 10       sba  
E292: 30       tsx  
E293: 89 3C    adca #$3C
E295: 10       sba  
E296: 10       sba  
E297: 26 E2    bne  $E27B
E299: A6 88    lda  $88,x
E29B: CA 88    orb  #$88
E29D: CC 08 D3 ldd  #$08D3
E2A0: 8A 36    ora  #$36
E2A2: 88 D0    eora #$D0
E2A4: 08       inx  
E2A5: D2 F8    sbcb $F8
E2A7: 40       nega 
E2A8: F8 20 F8 eorb $20F8
E2AB: 08       inx  
E2AC: 08       inx  
E2AD: 40       nega 
E2AE: 08       inx  
E2AF: 20 08    bra  $E2B9
E2B1: 08       inx  
E2B2: 26 E2    bne  $E296
E2B4: A6 88    lda  $88,x
E2B6: A2 88    sbca $88,x
E2B8: A4 08    anda $08,x
E2BA: A1 8A    cmpa $8A,x
E2BC: 2C 88    bge  $E246
E2BE: A8 08    eora $08,x
E2C0: D4 0B    andb $0B
E2C2: 88 AA    eora #$AA
E2C4: F8 30 08 eorb $3008
E2C7: A5 F8    bita $F8,x
E2C9: 18       xgdx 
E2CA: 08       inx  
E2CB: A1 F8    cmpa $F8,x
E2CD: 08       inx  
E2CE: 0A       clv  
E2CF: 2B 08    bmi  $E2D9
E2D1: 48       asla 
E2D2: 08       inx  
E2D3: AD 08    jsr  $08,x
E2D5: 38       pulx 
E2D6: 08       inx  
E2D7: B1 08 28 cmpa $0828
E2DA: 08       inx  
E2DB: A9 08    adca $08,x
E2DD: 18       xgdx 
E2DE: 08       inx  
E2DF: D4 08    andb $08
E2E1: 08       inx  
E2E2: 0A       clv  
E2E3: 38       pulx 
E2E4: 18       xgdx 
E2E5: 48       asla 
E2E6: 08       inx  
E2E7: AF 18    sts  $18,x
E2E9: 38       pulx 
E2EA: 08       inx  
E2EB: B0 28 38 suba $2838
E2EE: 26 E2    bne  $E2D2
E2F0: A6 88    lda  $88,x
E2F2: B2 88 B4 sbca $88B4
E2F5: 08       inx  
E2F6: BB 8A 2E adda $8A2E
E2F9: 88 B8    eora #$B8
E2FB: 08       inx  
E2FC: BA 08 88 ora  $0888
E2FF: BC F8 40 cmpx $F840
E302: 08       inx  
E303: C1 F8    cmpb #$F8
E305: 28 08    bvc  $E30F
E307: B5 F8 18 bita $F818
E30A: 08       inx  
E30B: BB F8 08 adda $F808
E30E: 8A 30    ora  #$30
E310: 08       inx  
E311: 40       nega 
E312: 08       inx  
E313: C0 08    subb #$08
E315: 28 08    bvc  $E31F
E317: B9 08 18 adca $0818
E31A: 08       inx  
E31B: BA 08 08 ora  $0808
E31E: 09       dex  
E31F: 88 C2    eora #$C2
E321: F8 30 08 eorb $3008
E324: A5 F8    bita $F8,x
E326: 18       xgdx 
E327: 08       inx  
E328: A1 F8    cmpa $F8,x
E32A: 08       inx  
E32B: 8A 32    ora  #$32
E32D: 08       inx  
E32E: 40       nega 
E32F: 08       inx  
E330: C9 08    adcb #$08
E332: 28 08    bvc  $E33C
E334: A9 08    adca $08,x
E336: 18       xgdx 
E337: 08       inx  
E338: D4 08    andb $08
E33A: 08       inx  
E33B: 8A 34    ora  #$34
E33D: 18       xgdx 
E33E: 40       nega 
E33F: 08       inx  
E340: C8 28    eorb #$28
E342: 38       pulx 
E343: 06       tap  
E344: 83 D8 F8 subd #$D8F8
E347: 40       nega 
E348: 84 C8    anda #$C8
E34A: F8 20 04 eorb $2004
E34D: CA F8    orb  #$F8
E34F: 08       inx  
E350: 83 DA 08 subd #$DA08
E353: 40       nega 
E354: 04       lsrd 
E355: CD 08 28 std  #$0828
E358: 84 CE    anda #$CE
E35A: 08       inx  
E35B: 10       sba  
E35C: 05       asld 
E35D: 84 D0    anda #$D0
E35F: F8 30 84 eorb $3084
E362: D2 F8    sbcb $F8
E364: 10       sba  
E365: 83 DC 08 subd #$DC08
E368: 30       tsx  
E369: 84 D6    anda #$D6
E36B: 08       inx  
E36C: 10       sba  
E36D: 84 D8    anda #$D8
E36F: 18       xgdx 
E370: 20 06    bra  $E378
E372: 8F BA F8 sts  #$BAF8
E375: 40       nega 
E376: 89 EC    adca #$EC
E378: F8 20 09 eorb $2009
E37B: F3 F8 08 addd $F808
E37E: 8F BC 08 sts  #$BC08
E381: 40       nega 
E382: 89 F0    adca #$F0
E384: 08       inx  
E385: 20 09    bra  $E390
E387: F2 08 08 sbcb $0808
E38A: 08       inx  
E38B: 8F BE F8 sts  #$BEF8
E38E: 40       nega 
E38F: 09       dex  
E390: E9 F8    adcb $F8,x
E392: 28 09    bvc  $E39D
E394: ED F8    std  $F8,x
E396: 18       xgdx 
E397: 09       dex  
E398: F3 F8 08 addd $F808
E39B: 8F C0 08 sts  #$C008
E39E: 40       nega 
E39F: 09       dex  
E3A0: F8 08 28 eorb $0828
E3A3: 09       dex  
E3A4: F1 08 18 cmpb $0818
E3A7: 09       dex  
E3A8: F2 08 08 sbcb $0808
E3AB: 0A       clv  
E3AC: 4C       inca 
E3AD: 57       asrb 
E3AE: 10       sba  
E3AF: 38       pulx 
E3B0: CD D6 00 std  #$D600
E3B3: 40       nega 
E3B4: CC 5A 00 ldd  #$5A00
E3B7: 20 4C    bra  $E405
E3B9: 63 00    com  $00,x
E3BB: 08       inx  
E3BC: CD DA F0 std  #$DAF0
E3BF: 40       nega 
E3C0: CC 5E F0 ldd  #$5EF0
E3C3: 20 4C    bra  $E411
E3C5: 62 F0 08 oim  #$F0,$08,x
E3C8: CC 60 E0 ldd  #$60E0
E3CB: 40       nega 
E3CC: 4C       inca 
E3CD: 56       rorb 
E3CE: F0 58 4C subb $584C
E3D1: 55       illegal
E3D2: E0 58    subb $58,x
E3D4: 07       tpa  
E3D5: CD F0 00 std  #$F000
E3D8: 40       nega 
E3D9: CC 72 00 ldd  #$7200
E3DC: 20 4C    bra  $E42A
E3DE: 78 00 08 asl  $0008
E3E1: CC 74 F0 ldd  #$74F0
E3E4: 30       tsx  
E3E5: CC 76 F0 ldd  #$76F0
E3E8: 10       sba  
E3E9: 4C       inca 
E3EA: 79 F0 48 rol  $F048
E3ED: CC 6E E0 ldd  #$6EE0
E3F0: 40       nega 
E3F1: 06       tap  
E3F2: 4C       inca 
E3F3: 6D 10    tst  $10,x
E3F5: 38       pulx 
E3F6: CD E4 00 std  #$E400
E3F9: 40       nega 
E3FA: CC 66 00 ldd  #$6600
E3FD: 20 4C    bra  $E44B
E3FF: 6C 00    inc  $00,x
E401: 08       inx  
E402: CC 68 F0 ldd  #$68F0
E405: 30       tsx  
E406: CC 6A F0 ldd  #$6AF0
E409: 10       sba  
E40A: 09       dex  
E40B: CA 00    orb  #$00
E40D: 10       sba  
E40E: 40       nega 
E40F: C8 64    eorb #$64
E411: 10       sba  
E412: 20 48    bra  $E45C
E414: 61 10 08 aim  #$10,$08,x
E417: C8 66    eorb #$66
E419: 00       illegal
E41A: 30       tsx  
E41B: C8 68    eorb #$68
E41D: 00       illegal
E41E: 10       sba  
E41F: D8 4A    eorb $4A
E421: 18       xgdx 
E422: 20 58    bra  $E47C
E424: 4F       clra 
E425: 18       xgdx 
E426: 08       inx  
E427: D8 4C    eorb $4C
E429: 08       inx  
E42A: 20 58    bra  $E484
E42C: 4E       illegal
E42D: 08       inx  
E42E: 08       inx  
E42F: 08       inx  
E430: C8 6A    eorb #$6A
E432: 10       sba  
E433: 30       tsx  
E434: 48       asla 
E435: 71 10 08 aim  #$10,$08
E438: CA 02    orb  #$02
E43A: 00       illegal
E43B: 40       nega 
E43C: C8 6E    eorb #$6E
E43E: 00       illegal
E43F: 20 48    bra  $E489
E441: 70 00 08 neg  $0008
E444: D8 56    eorb $56
E446: 14       illegal
E447: 2C 58    bge  $E4A1
E449: 60 14    neg  $14,x
E44B: 14       illegal
E44C: D8 58    eorb $58
E44E: 04       lsrd 
E44F: 2C 0B    bge  $E45C
E451: 48       asla 
E452: 71 10 08 aim  #$10,$08
E455: 48       asla 
E456: 6F 00    clr  $00,x
E458: 18       xgdx 
E459: 48       asla 
E45A: 70 00 08 neg  $0008
E45D: C8 72    eorb #$72
E45F: 08       inx  
E460: 40       nega 
E461: 48       asla 
E462: 77 08 28 asr  $0828
E465: CA 04    orb  #$04
E467: F8 40 48 eorb $4048
E46A: 76 F8 28 ror  $F828
E46D: D8 50    eorb $50
E46F: 14       illegal
E470: 48       asla 
E471: 58       aslb 
E472: 55       illegal
E473: 14       illegal
E474: 30       tsx  
E475: D8 52    eorb $52
E477: 04       lsrd 
E478: 48       asla 
E479: 58       aslb 
E47A: 54       lsrb 
E47B: 04       lsrd 
E47C: 30       tsx  
E47D: 09       dex  
E47E: 48       asla 
E47F: 71 10 08 aim  #$10,$08
E482: 48       asla 
E483: 6F 00    clr  $00,x
E485: 18       xgdx 
E486: 48       asla 
E487: 70 00 08 neg  $0008
E48A: 4A       deca 
E48B: 06       tap  
E48C: FE 48 48 ldx  $4848
E48F: 83 FE 38 subd #$FE38
E492: 48       asla 
E493: 87 FE    sta  #$FE
E495: 28 48    bvc  $E4DF
E497: 84 EE    anda #$EE
E499: 58       aslb 
E49A: 4A       deca 
E49B: 07       tpa  
E49C: EE 48    ldx  $48,x
E49E: 48       asla 
E49F: 86 EE    lda  #$EE
E4A1: 38       pulx 
E4A2: 08       inx  
E4A3: CD A2 10 std  #$A210
E4A6: 40       nega 
E4A7: CD A4 10 std  #$A410
E4AA: 20 4D    bra  $E4F9
E4AC: B6 10 08 lda  $1008
E4AF: CD A6 00 std  #$A600
E4B2: 40       nega 
E4B3: CD A8 00 std  #$A800
E4B6: 20 4D    bra  $E505
E4B8: B7 00 08 sta  $0008
E4BB: CD AA F0 std  #$AAF0
E4BE: 30       tsx  
E4BF: 4D       tsta 
E4C0: B8 F0 08 eora $F008
E4C3: 07       tpa  
E4C4: CD AC 18 std  #$AC18
E4C7: 40       nega 
E4C8: CD AE 18 std  #$AE18
E4CB: 20 4D    bra  $E51A
E4CD: B9 18 08 adca $1808
E4D0: CD B0 08 std  #$B008
E4D3: 40       nega 
E4D4: CD B2 08 std  #$B208
E4D7: 20 4D    bra  $E526
E4D9: BA 08 08 ora  $0808
E4DC: CD B4 F8 std  #$B4F8
E4DF: 30       tsx  
E4E0: 07       tpa  
E4E1: CD BC 28 std  #$BC28
E4E4: 30       tsx  
E4E5: CD BE 18 std  #$BE18
E4E8: 30       tsx  
E4E9: CD C0 18 std  #$C018
E4EC: 10       sba  
E4ED: CD C2 08 std  #$C208
E4F0: 40       nega 
E4F1: CD C4 08 std  #$C408
E4F4: 20 4D    bra  $E543
E4F6: BB 08 08 adda $0808
E4F9: CD C6 00 std  #$C600
E4FC: 30       tsx  
E4FD: 07       tpa  
E4FE: 4D       tsta 
E4FF: D2 28    sbcb $28
E501: 28 CD    bvc  $E4D0
E503: C8 18    eorb #$18
E505: 40       nega 
E506: CD CA 18 std  #$CA18
E509: 20 4D    bra  $E558
E50B: D1 18    cmpb $18
E50D: 08       inx  
E50E: CD CC 08 std  #$CC08
E511: 40       nega 
E512: CD CE 08 std  #$CE08
E515: 20 4D    bra  $E564
E517: D0 08    subb $08
E519: 08       inx  
E51A: 07       tpa  
E51B: 48       asla 
E51C: 78 18 28 asl  $1828
E51F: 48       asla 
E520: 79 18 08 rol  $1808
E523: CA 08    orb  #$08
E525: 08       inx  
E526: 30       tsx  
E527: C8 7C    eorb #$7C
E529: 08       inx  
E52A: 10       sba  
E52B: C8 7E    eorb #$7E
E52D: F8 20 48 eorb $2048
E530: 80 F8    suba #$F8
E532: 08       inx  
E533: 48       asla 
E534: 81 E8    cmpa #$E8
E536: 08       inx  
E537: 04       lsrd 
E538: CA 0A    orb  #$0A
E53A: 08       inx  
E53B: 30       tsx  
E53C: C8 8A    eorb #$8A
E53E: 08       inx  
E53F: 10       sba  
E540: CA 0C    orb  #$0C
E542: F8 30 C8 eorb $30C8
E545: 8E F8 10 lds  #$F810
E548: 06       tap  
E549: 48       asla 
E54A: 97 08    sta  $08
E54C: 38       pulx 
E54D: C8 90    eorb #$90
E54F: 08       inx  
E550: 10       sba  
E551: 4A       deca 
E552: 10       sba  
E553: F8 48 48 eorb $4848
E556: 93 F8    subd $F8
E558: 38       pulx 
E559: C8 94    eorb #$94
E55B: F8 20 48 eorb $2048
E55E: 96 F8    lda  $F8
E560: 08       inx  
E561: 27 E5    beq  $E548
E563: 72 8F A0 oim  #$8F,$A0
E566: 8F A2 8F sts  #$A28F
E569: A4 8F    anda $8F,x
E56B: A6 0F    lda  $0F,x
E56D: A8 09    eora $09,x
E56F: 67 09    asr  $09,x
E571: 66 F8    ror  $F8,x
E573: 40       nega 
E574: F8 20 08 eorb $2008
E577: 50       negb 
E578: 08       inx  
E579: 30       tsx  
E57A: 08       inx  
E57B: 18       xgdx 
E57C: F8 08 08 eorb $0808
E57F: 08       inx  
E580: 27 E5    beq  $E567
E582: 72 8F AA oim  #$8F,$AA
E585: 8F AC 8F sts  #$AC8F
E588: AE 8F    lds  $8F,x
E58A: B0 0F A9 suba $0FA9
E58D: 09       dex  
E58E: 71 09 70 aim  #$09,$70
E591: 27 E5    beq  $E578
E593: A2 8F    sbca $8F,x
E595: AA 8F    ora  $8F,x
E597: B2 8F AE sbca $8FAE
E59A: 0F       sei  
E59B: B0 8F B4 suba $8FB4
E59E: 09       dex  
E59F: 77 09 76 asr  $0976
E5A2: F8 40 F8 eorb $40F8
E5A5: 20 08    bra  $E5AF
E5A7: 50       negb 
E5A8: 08       inx  
E5A9: 38       pulx 
E5AA: 08       inx  
E5AB: 20 F8    bra  $E5A5
E5AD: 08       inx  
E5AE: 08       inx  
E5AF: 08       inx  
E5B0: 27 E5    beq  $E597
E5B2: A2 8F    sbca $8F,x
E5B4: A0 8F    suba $8F,x
E5B6: B6 8F A4 lda  $8FA4
E5B9: 0F       sei  
E5BA: A6 8F    lda  $8F,x
E5BC: B8 09 7D eora $097D
E5BF: 09       dex  
E5C0: 7C 27 E5 inc  $27E5
E5C3: D2 8F    sbcb $8F
E5C5: 86 8F    lda  #$8F
E5C7: 88 0F    eora #$0F
E5C9: 8E 8F 8A lds  #$8F8A
E5CC: 8F 8C 09 sts  #$8C09
E5CF: 47       asra 
E5D0: 09       dex  
E5D1: 46       rora 
E5D2: F8 50 F8 eorb $50F8
E5D5: 30       tsx  
E5D6: F8 18 08 eorb $1808
E5D9: 40       nega 
E5DA: 08       inx  
E5DB: 20 F8    bra  $E5D5
E5DD: 08       inx  
E5DE: 08       inx  
E5DF: 08       inx  
E5E0: 27 E5    beq  $E5C7
E5E2: F1 8F 86 cmpb $8F86
E5E5: 0F       sei  
E5E6: 88 8F    eora #$8F
E5E8: 98 8F    eora $8F
E5EA: 8A 8F    ora  #$8F
E5EC: 9A 09    ora  $09
E5EE: 57       asrb 
E5EF: 09       dex  
E5F0: 56       rorb 
E5F1: F8 50 F8 eorb $50F8
E5F4: 38       pulx 
E5F5: F8 20 08 eorb $2008
E5F8: 40       nega 
E5F9: 08       inx  
E5FA: 20 F8    bra  $E5F4
E5FC: 08       inx  
E5FD: 08       inx  
E5FE: 08       inx  
E5FF: 27 E5    beq  $E5E6
E601: D2 8F    sbcb $8F
E603: 90 8F    suba $8F
E605: 92 0F    sbca $0F
E607: 8F 8F 94 sts  #$8F94
E60A: 8F 96 09 sts  #$9609
E60D: 51       illegal
E60E: 09       dex  
E60F: 50       negb 
E610: 27 E5    beq  $E5F7
E612: F1 8F 90 cmpb $8F90
E615: 0F       sei  
E616: 92 8F    sbca $8F
E618: 9C 8F    cmpx $8F
E61A: 94 8F    anda $8F
E61C: 9E 09    lds  $09
E61E: 5D       tstb 
E61F: 09       dex  
E620: 5C       incb 
E621: 05       asld 
E622: CA 0E    orb  #$0E
E624: 10       sba  
E625: 40       nega 
E626: C8 9A    eorb #$9A
E628: 10       sba  
E629: 20 48    bra  $E673
E62B: A0 10    suba $10,x
E62D: 08       inx  
E62E: C8 9C    eorb #$9C
E630: 00       illegal
E631: 30       tsx  
E632: C8 9E    eorb #$9E
E634: 00       illegal
E635: 10       sba  
E636: E7 2D    stb  $2D,x
E638: E7 32    stb  $32,x
E63A: E7 3D    stb  $3D,x
E63C: E7 42    stb  $42,x
E63E: E7 0A    stb  $0A,x
E640: E7 15    stb  $15,x
E642: E7 1D    stb  $1D,x
E644: E7 22    stb  $22,x
E646: E7 4D    stb  $4D,x
E648: E7 5E    stb  $5E,x
E64A: E7 69    stb  $69,x
E64C: E7 7E    stb  $7E,x
E64E: E7 87    stb  $87,x
E650: E7 9A    stb  $9A,x
E652: E7 A3    stb  $A3,x
E654: E7 AC    stb  $AC,x
E656: E7 B7    stb  $B7,x
E658: E7 C4    stb  $C4,x
E65A: E7 C9    stb  $C9,x
E65C: E7 CE    stb  $CE,x
E65E: E7 E3    stb  $E3,x
E660: E7 E8    stb  $E8,x
E662: E7 ED    stb  $ED,x
E664: E8 02    eorb $02,x
E666: E8 07    eorb $07,x
E668: E8 1C    eorb $1C,x
E66A: E8 31    eorb $31,x
E66C: E8 31    eorb $31,x
E66E: E8 31    eorb $31,x
E670: E8 31    eorb $31,x
E672: E8 31    eorb $31,x
E674: E8 31    eorb $31,x
E676: E8 31    eorb $31,x
E678: E8 31    eorb $31,x
E67A: E8 31    eorb $31,x
E67C: E8 44    eorb $44,x
E67E: E8 49    eorb $49,x
E680: E8 4E    eorb $4E,x
E682: E8 59    eorb $59,x
E684: E8 64    eorb $64,x
E686: E8 64    eorb $64,x
E688: E8 64    eorb $64,x
E68A: E8 64    eorb $64,x
E68C: E8 64    eorb $64,x
E68E: E8 64    eorb $64,x
E690: E8 6F    eorb $6F,x
E692: E8 74    eorb $74,x
E694: E8 81    eorb $81,x
E696: E8 92    eorb $92,x
E698: E8 A7    eorb $A7,x
E69A: E8 B8    eorb $B8,x
E69C: E8 C3    eorb $C3,x
E69E: E8 CE    eorb $CE,x
E6A0: E8 CE    eorb $CE,x
E6A2: E8 DF    eorb $DF,x
E6A4: E8 DF    eorb $DF,x
E6A6: E8 DF    eorb $DF,x
E6A8: E8 DF    eorb $DF,x
E6AA: E8 DF    eorb $DF,x
E6AC: E8 DF    eorb $DF,x
E6AE: E8 DF    eorb $DF,x
E6B0: E8 DF    eorb $DF,x
E6B2: E8 DF    eorb $DF,x
E6B4: E8 E7    eorb $E7,x
E6B6: E8 E7    eorb $E7,x
E6B8: E8 E7    eorb $E7,x
E6BA: E8 E7    eorb $E7,x
E6BC: E8 E7    eorb $E7,x
E6BE: E9 04    adcb $04,x
E6C0: E9 21    adcb $21,x
E6C2: E9 3E    adcb $3E,x
E6C4: E9 57    adcb $57,x
E6C6: E9 57    adcb $57,x
E6C8: E9 57    adcb $57,x
E6CA: E9 57    adcb $57,x
E6CC: E9 57    adcb $57,x
E6CE: E9 57    adcb $57,x
E6D0: E9 57    adcb $57,x
E6D2: E9 57    adcb $57,x
E6D4: E9 57    adcb $57,x
E6D6: E9 57    adcb $57,x
E6D8: E9 57    adcb $57,x
E6DA: E9 57    adcb $57,x
E6DC: E9 57    adcb $57,x
E6DE: E9 78    adcb $78,x
E6E0: E9 95    adcb $95,x
E6E2: E9 B2    adcb $B2,x
E6E4: E9 D3    adcb $D3,x
E6E6: E9 F4    adcb $F4,x
E6E8: EA 0D    orb  $0D,x
E6EA: EA 2C    orb  $2C,x
E6EC: EA 45    orb  $45,x
E6EE: EA 56    orb  $56,x
E6F0: EA 67    orb  $67,x
E6F2: EA 78    orb  $78,x
E6F4: EA 99    orb  $99,x
E6F6: EA BE    orb  $BE,x
E6F8: EA D7    orb  $D7,x
E6FA: EA F0    orb  $F0,x
E6FC: EB 0F    addb $0F,x
E6FE: EB 2C    addb $2C,x
E700: EB 3D    addb $3D,x
E702: EB 4E    addb $4E,x
E704: EB 6F    addb $6F,x
E706: EB 84    addb $84,x
E708: EB A1    addb $A1,x
E70A: C4 87    andb #$87
E70C: 00       illegal
E70D: F8 30 F8 eorb $30F8
E710: 10       sba  
E711: 08       inx  
E712: 30       tsx  
E713: 08       inx  
E714: 10       sba  
E715: A4 87    anda $87,x
E717: E7 0D    stb  $0D,x
E719: 00       illegal
E71A: 10       sba  
E71B: 04       lsrd 
E71C: 12       asx1 1,s
E71D: E4 87    andb $87,x
E71F: 08       inx  
E720: E7 0D    stb  $0D,x
E722: 24 E7    bcc  $E70B
E724: 0D       sec  
E725: 87 08    sta  #$08
E727: 87 14    sta  #$14
E729: 87 0C    sta  #$0C
E72B: 87 16    sta  #$16
E72D: E4 87    andb $87,x
E72F: 18       xgdx 
E730: E7 0D    stb  $0D,x
E732: 24 E7    bcc  $E71B
E734: 0D       sec  
E735: 87 18    sta  #$18
E737: 87 28    sta  #$28
E739: 87 1C    sta  #$1C
E73B: 87 2A    sta  #$2A
E73D: E4 87    andb $87,x
E73F: 20 E7    bra  $E728
E741: 0D       sec  
E742: 24 E7    bcc  $E72B
E744: 0D       sec  
E745: 87 20    sta  #$20
E747: 87 2C    sta  #$2C
E749: 87 24    sta  #$24
E74B: 87 2E    sta  #$2E
E74D: 04       lsrd 
E74E: 86 A4    lda  #$A4
E750: F8 30 86 eorb $3086
E753: A6 F8    lda  $F8,x
E755: 10       sba  
E756: 06       tap  
E757: A3 08    subd $08,x
E759: 28 86    bvc  $E6E1
E75B: A8 08    eora $08,x
E75D: 10       sba  
E75E: C4 86    andb #$86
E760: A6 F8    lda  $F8,x
E762: 10       sba  
E763: 08       inx  
E764: 10       sba  
E765: F8 30 08 eorb $3008
E768: 30       tsx  
E769: 05       asld 
E76A: 86 AE    lda  #$AE
E76C: E8 20    eorb $20,x
E76E: 86 B0    lda  #$B0
E770: F8 20 06 eorb $2006
E773: B4 F8 08 anda $F808
E776: 86 B2    lda  #$B2
E778: 08       inx  
E779: 20 06    bra  $E781
E77B: B5 08 08 bita $0808
E77E: C3 86 B6 addd #$86B6
E781: D8 10    eorb $10
E783: E8 10    eorb $10,x
E785: F8 10 24 eorb $1024
E788: E7 92    stb  $92,x
E78A: 06       tap  
E78B: C9 86    adcb #$86
E78D: CA 86    orb  #$86
E78F: CC 86 CE ldd  #$86CE
E792: F8 28 F8 eorb $28F8
E795: 10       sba  
E796: 08       inx  
E797: 30       tsx  
E798: 08       inx  
E799: 10       sba  
E79A: C3 86 D0 addd #$86D0
E79D: 08       inx  
E79E: 10       sba  
E79F: 18       xgdx 
E7A0: 10       sba  
E7A1: 28 10    bvc  $E7B3
E7A3: C3 C6 BC addd #$C6BC
E7A6: 18       xgdx 
E7A7: 08       inx  
E7A8: 08       inx  
E7A9: 08       inx  
E7AA: F8 08 24 eorb $0824
E7AD: E7 92    stb  $92,x
E7AF: 06       tap  
E7B0: C8 86    eorb #$86
E7B2: C2 86    sbcb #$86
E7B4: C4 86    andb #$86
E7B6: C6 03    ldb  #$03
E7B8: 86 D6    lda  #$D6
E7BA: F8 10 86 eorb $1086
E7BD: D8 08    eorb $08
E7BF: 20 06    bra  $E7C7
E7C1: DA 08    orb  $08
E7C3: 08       inx  
E7C4: E4 86    andb $86,x
E7C6: 92 E7    sbca $E7
E7C8: 0D       sec  
E7C9: E4 86    andb $86,x
E7CB: 9A E7    ora  $E7
E7CD: 0D       sec  
E7CE: 05       asld 
E7CF: 06       tap  
E7D0: 71 F8 28 aim  #$F8,$28
E7D3: 86 72    lda  #$72
E7D5: F8 10 86 eorb $1086
E7D8: 74 08 30 lsr  $0830
E7DB: 86 76    lda  #$76
E7DD: 08       inx  
E7DE: 10       sba  
E7DF: 86 78    lda  #$78
E7E1: 18       xgdx 
E7E2: 30       tsx  
E7E3: E4 86    andb $86,x
E7E5: 7A E7 0D dec  $E70D
E7E8: E4 86    andb $86,x
E7EA: 82 E7    sbca #$E7
E7EC: 0D       sec  
E7ED: 05       asld 
E7EE: 06       tap  
E7EF: A2 F8    sbca $F8,x
E7F1: 28 86    bvc  $E779
E7F3: 8A F8    ora  #$F8
E7F5: 10       sba  
E7F6: 86 8C    lda  #$8C
E7F8: 08       inx  
E7F9: 30       tsx  
E7FA: 86 8E    lda  #$8E
E7FC: 08       inx  
E7FD: 10       sba  
E7FE: 86 90    lda  #$90
E800: 18       xgdx 
E801: 30       tsx  
E802: E4 86    andb $86,x
E804: E4 E7    andb $E7,x
E806: 0D       sec  
E807: 05       asld 
E808: 86 EC    lda  #$EC
E80A: F8 20 06 eorb $2006
E80D: F0 F8 08 subb $F808
E810: 86 EE    lda  #$EE
E812: 08       inx  
E813: 20 06    bra  $E81B
E815: F1 08 08 cmpb $0808
E818: 06       tap  
E819: F9 18 28 adcb $1828
E81C: 05       asld 
E81D: 86 F2    lda  #$F2
E81F: F8 20 06 eorb $2006
E822: F6 F8 08 ldb  $F808
E825: 86 F4    lda  #$F4
E827: 08       inx  
E828: 20 06    bra  $E830
E82A: F7 08 08 stb  $0808
E82D: 06       tap  
E82E: F8 18 18 eorb $1818
E831: 24 E8    bcc  $E81B
E833: 3C       pshx 
E834: 87 76    sta  #$76
E836: 87 78    sta  #$78
E838: 87 7A    sta  #$7A
E83A: 07       tpa  
E83B: 75 F8 30 eim  #$F8,$30
E83E: F8 10 08 eorb $1008
E841: 30       tsx  
E842: 08       inx  
E843: 18       xgdx 
E844: E4 87    andb $87,x
E846: 7C E7 0D inc  $E70D
E849: E4 87    andb $87,x
E84B: 84 E7    anda #$E7
E84D: 0D       sec  
E84E: 24 E8    bcc  $E838
E850: 3C       pshx 
E851: 87 8C    sta  #$8C
E853: 87 8E    sta  #$8E
E855: 87 90    sta  #$90
E857: 07       tpa  
E858: 92 24    sbca $24
E85A: E8 3C    eorb $3C,x
E85C: 87 94    sta  #$94
E85E: 87 96    sta  #$96
E860: 87 98    sta  #$98
E862: 07       tpa  
E863: 93 C4    subd $C4
E865: C7 D8    stb  #$D8
E867: 08       inx  
E868: 30       tsx  
E869: 08       inx  
E86A: 10       sba  
E86B: F8 30 F8 eorb $30F8
E86E: 10       sba  
E86F: E4 C7    andb $C7,x
E871: E0 E8    subb $E8,x
E873: 67 C5    asr  $C5,x
E875: C7 E8    stb  #$E8
E877: 18       xgdx 
E878: 20 08    bra  $E882
E87A: 30       tsx  
E87B: 08       inx  
E87C: 10       sba  
E87D: F8 30 F8 eorb $30F8
E880: 10       sba  
E881: 04       lsrd 
E882: C7 BA    stb  #$BA
E884: 08       inx  
E885: 30       tsx  
E886: C7 9A    stb  #$9A
E888: 10       sba  
E889: 10       sba  
E88A: C7 BC    stb  #$BC
E88C: F8 30 C7 eorb $30C7
E88F: 9E 00    lds  $00
E891: 10       sba  
E892: 05       asld 
E893: 47       asra 
E894: A9 10    adca $10,x
E896: 28 C7    bvc  $E85F
E898: 9A 10    ora  $10
E89A: 10       sba  
E89B: C7 9C    stb  #$9C
E89D: 00       illegal
E89E: 30       tsx  
E89F: C7 9E    stb  #$9E
E8A1: 00       illegal
E8A2: 10       sba  
E8A3: C7 A0    stb  #$A0
E8A5: F0 30 04 subb $3004
E8A8: C7 A2    stb  #$A2
E8AA: 08       inx  
E8AB: 30       tsx  
E8AC: C7 A4    stb  #$A4
E8AE: 08       inx  
E8AF: 10       sba  
E8B0: 47       asra 
E8B1: A8 F8    eora $F8,x
E8B3: 28 C7    bvc  $E87C
E8B5: A6 F8    lda  $F8,x
E8B7: 10       sba  
E8B8: C4 C7    andb #$C7
E8BA: AA 10    ora  $10,x
E8BC: 30       tsx  
E8BD: 10       sba  
E8BE: 10       sba  
E8BF: 00       illegal
E8C0: 30       tsx  
E8C1: 00       illegal
E8C2: 10       sba  
E8C3: C4 C7    andb #$C7
E8C5: B2 10 30 sbca $1030
E8C8: 10       sba  
E8C9: 10       sba  
E8CA: 00       illegal
E8CB: 30       tsx  
E8CC: 00       illegal
E8CD: 10       sba  
E8CE: 04       lsrd 
E8CF: 88 22    eora #$22
E8D1: 00       illegal
E8D2: 30       tsx  
E8D3: 88 24    eora #$24
E8D5: 00       illegal
E8D6: 10       sba  
E8D7: 88 26    eora #$26
E8D9: 10       sba  
E8DA: 20 08    bra  $E8E4
E8DC: 28 10    bvc  $E8EE
E8DE: 08       inx  
E8DF: F8 10 F8 eorb $10F8
E8E2: F8 08 10 eorb $0810
E8E5: 08       inx  
E8E6: F8 07 12 eorb $0712
E8E9: 7E E8 18 jmp  $E818
E8EC: 07       tpa  
E8ED: C4 F8    andb #$F8
E8EF: 28 87    bvc  $E878
E8F1: BE F8 10 lds  $F810
E8F4: 87 C0    sta  #$C0
E8F6: 08       inx  
E8F7: 30       tsx  
E8F8: 87 C2    sta  #$C2
E8FA: 08       inx  
E8FB: 10       sba  
E8FC: 1F       illegal
E8FD: F8 F8 18 eorb $F818
E900: 1F       illegal
E901: F9 08 18 adcb $0818
E904: 07       tpa  
E905: 07       tpa  
E906: C5 F8    bitb #$F8
E908: 28 87    bvc  $E891
E90A: C6 F8    ldb  #$F8
E90C: 10       sba  
E90D: 87 C8    sta  #$C8
E90F: 08       inx  
E910: 30       tsx  
E911: 87 CA    sta  #$CA
E913: 08       inx  
E914: 10       sba  
E915: 1F       illegal
E916: FB 0A 18 addb $0A18
E919: 1F       illegal
E91A: FA 08 28 orb  $0828
E91D: 1F       illegal
E91E: FC FA 18 ldd  $FA18
E921: 07       tpa  
E922: 87 CC    sta  #$CC
E924: F8 30 87 eorb $3087
E927: CE F8 10 ldx  #$F810
E92A: 87 D0    sta  #$D0
E92C: 08       inx  
E92D: 30       tsx  
E92E: 87 D2    sta  #$D2
E930: 08       inx  
E931: 10       sba  
E932: 12       asx1 1,s
E933: 9E 18    lds  $18
E935: 28 12    bvc  $E949
E937: BD 28 28 jsr  $2828
E93A: 1F       illegal
E93B: FD 18 28 std  $1828
E93E: 06       tap  
E93F: 12       asx1 1,s
E940: 98 E8    eora $E8
E942: 28 87    bvc  $E8CB
E944: D4 F8    andb $F8
E946: 30       tsx  
E947: 87 CE    sta  #$CE
E949: F8 10 87 eorb $1087
E94C: D6 08    ldb  $08
E94E: 30       tsx  
E94F: 87 D2    sta  #$D2
E951: 08       inx  
E952: 10       sba  
E953: 1F       illegal
E954: FE F8 28 ldx  $F828
E957: 08       inx  
E958: 91 7A    cmpa $7A
E95A: F8 20 11 eorb $2011
E95D: 87 F8    sta  #$F8
E95F: 08       inx  
E960: 91 7C    cmpa $7C
E962: 08       inx  
E963: 30       tsx  
E964: 91 7E    cmpa $7E
E966: 08       inx  
E967: 10       sba  
E968: 07       tpa  
E969: 35       txs  
E96A: 08       inx  
E96B: 28 87    bvc  $E8F4
E96D: 30       tsx  
E96E: 18       xgdx 
E96F: 20 87    bra  $E8F8
E971: 32       pula 
E972: 28 20    bvc  $E994
E974: 07       tpa  
E975: 34       des  
E976: 28 08    bvc  $E980
E978: 07       tpa  
E979: 91 80    cmpa $80
E97B: F8 20 11 eorb $2011
E97E: 86 F8    lda  #$F8
E980: 08       inx  
E981: 91 82    cmpa $82
E983: 08       inx  
E984: 30       tsx  
E985: 91 84    cmpa $84
E987: 08       inx  
E988: 10       sba  
E989: 87 36    sta  #$36
E98B: 18       xgdx 
E98C: 20 87    bra  $E915
E98E: 38       pulx 
E98F: 28 20    bvc  $E9B1
E991: 07       tpa  
E992: 3A       abx  
E993: 28 08    bvc  $E99D
E995: 07       tpa  
E996: 91 88    cmpa $88
E998: 08       inx  
E999: 30       tsx  
E99A: 91 8A    cmpa $8A
E99C: 08       inx  
E99D: 10       sba  
E99E: 91 8C    cmpa $8C
E9A0: 18       xgdx 
E9A1: 30       tsx  
E9A2: 11       cba  
E9A3: 93 18    subd $18
E9A5: 18       xgdx 
E9A6: 07       tpa  
E9A7: 3B       rti  
E9A8: 18       xgdx 
E9A9: 28 87    bvc  $E932
E9AB: 3C       pshx 
E9AC: 28 20    bvc  $E9CE
E9AE: 07       tpa  
E9AF: 3E       wai  
E9B0: 28 08    bvc  $E9BA
E9B2: 08       inx  
E9B3: 91 9C    cmpa $9C
E9B5: 00       illegal
E9B6: 30       tsx  
E9B7: 91 9E    cmpa $9E
E9B9: 00       illegal
E9BA: 10       sba  
E9BB: 91 A0    cmpa $A0
E9BD: 10       sba  
E9BE: 20 11    bra  $E9D1
E9C0: A2 10    sbca $10,x
E9C2: 08       inx  
E9C3: 87 40    sta  #$40
E9C5: 08       inx  
E9C6: 30       tsx  
E9C7: 87 42    sta  #$42
E9C9: 08       inx  
E9CA: 10       sba  
E9CB: 07       tpa  
E9CC: 3F       swi  
E9CD: 18       xgdx 
E9CE: 28 87    bvc  $E957
E9D0: 44       lsra 
E9D1: 18       xgdx 
E9D2: 10       sba  
E9D3: 08       inx  
E9D4: 91 A4    cmpa $A4
E9D6: EB 20    addb $20,x
E9D8: 91 A6    cmpa $A6
E9DA: FB 20 11 addb $2011
E9DD: AC FB    cmpx $FB,x
E9DF: 08       inx  
E9E0: 91 A8    cmpa $A8
E9E2: 0B       sev  
E9E3: 20 91    bra  $E976
E9E5: AA 1B    ora  $1B,x
E9E7: 20 87    bra  $E970
E9E9: 46       rora 
E9EA: EC 2F    ldd  $2F,x
E9EC: 87 48    sta  #$48
E9EE: FC 2F 87 ldd  $2F87
E9F1: 4A       deca 
E9F2: 0C       clc  
E9F3: 2F 06    ble  $E9FB
E9F5: C7 4C    stb  #$4C
E9F7: 10       sba  
E9F8: 30       tsx  
E9F9: C7 4E    stb  #$4E
E9FB: 10       sba  
E9FC: 10       sba  
E9FD: C7 50    stb  #$50
E9FF: 00       illegal
EA00: 20 51    bra  $EA53
EA02: E3 10    addd $10,x
EA04: 28 D1    bvc  $E9D7
EA06: CA 00    orb  #$00
EA08: 30       tsx  
EA09: D1 CC    cmpb $CC
EA0B: 00       illegal
EA0C: 10       sba  
EA0D: 27 EA    beq  $E9F9
EA0F: 1E       illegal
EA10: 51       illegal
EA11: E2 D1    sbcb $D1,x
EA13: DE D1    ldx  $D1
EA15: E0 C7    subb $C7,x
EA17: 5E       illegal
EA18: C7 60    stb  #$60
EA1A: C7 62    stb  #$62
EA1C: C7 64    stb  #$64
EA1E: 10       sba  
EA1F: 28 00    bvc  $EA21
EA21: 30       tsx  
EA22: 00       illegal
EA23: 10       sba  
EA24: 10       sba  
EA25: 30       tsx  
EA26: 10       sba  
EA27: 10       sba  
EA28: 00       illegal
EA29: 30       tsx  
EA2A: 00       illegal
EA2B: 10       sba  
EA2C: 06       tap  
EA2D: 47       asra 
EA2E: 6A 10    dec  $10,x
EA30: 28 C7    bvc  $E9F9
EA32: 52       illegal
EA33: 00       illegal
EA34: 30       tsx  
EA35: C7 54    stb  #$54
EA37: 00       illegal
EA38: 10       sba  
EA39: D1 C4    cmpb $C4
EA3B: 10       sba  
EA3C: 30       tsx  
EA3D: D1 C6    cmpb $C6
EA3F: 10       sba  
EA40: 10       sba  
EA41: D1 C8    cmpb $C8
EA43: 00       illegal
EA44: 20 27    bra  $EA6D
EA46: EA 1E    orb  $1E,x
EA48: 47       asra 
EA49: 6B C7 66 tim  #$C7,$66,x
EA4C: C7 68    stb  #$68
EA4E: D1 D6    cmpb $D6
EA50: D1 D8    cmpb $D8
EA52: D1 DA    cmpb $DA
EA54: D1 DC    cmpb $DC
EA56: 27 EA    beq  $EA42
EA58: 1E       illegal
EA59: 51       illegal
EA5A: E2 D1    sbcb $D1,x
EA5C: DE D1    ldx  $D1
EA5E: E0 C7    subb $C7,x
EA60: 56       rorb 
EA61: C7 60    stb  #$60
EA63: C7 58    stb  #$58
EA65: C7 64    stb  #$64
EA67: 27 EA    beq  $EA53
EA69: 1E       illegal
EA6A: 51       illegal
EA6B: E2 D1    sbcb $D1,x
EA6D: DE D1    ldx  $D1
EA6F: E0 C7    subb $C7,x
EA71: 5A       decb 
EA72: C7 60    stb  #$60
EA74: C7 5C    stb  #$5C
EA76: C7 64    stb  #$64
EA78: 08       inx  
EA79: 51       illegal
EA7A: E2 10    sbcb $10,x
EA7C: 28 D1    bvc  $EA4F
EA7E: DE 00    ldx  $00
EA80: 30       tsx  
EA81: D1 E0    cmpb $E0
EA83: 00       illegal
EA84: 10       sba  
EA85: 47       asra 
EA86: 74 20 18 lsr  $2018
EA89: C7 6C    stb  #$6C
EA8B: 10       sba  
EA8C: 30       tsx  
EA8D: C7 6E    stb  #$6E
EA8F: 10       sba  
EA90: 10       sba  
EA91: C7 70    stb  #$70
EA93: 00       illegal
EA94: 30       tsx  
EA95: C7 72    stb  #$72
EA97: 00       illegal
EA98: 10       sba  
EA99: 09       dex  
EA9A: 47       asra 
EA9B: 6B 10 28 tim  #$10,$28,x
EA9E: C7 66    stb  #$66
EAA0: 00       illegal
EAA1: 30       tsx  
EAA2: C7 68    stb  #$68
EAA4: 00       illegal
EAA5: 10       sba  
EAA6: D2 5C    sbcb $5C
EAA8: 10       sba  
EAA9: 40       nega 
EAAA: 52       illegal
EAAB: 61 10 28 aim  #$10,$28,x
EAAE: D1 D8    cmpb $D8
EAB0: 10       sba  
EAB1: 10       sba  
EAB2: D2 5E    sbcb $5E
EAB4: 00       illegal
EAB5: 40       nega 
EAB6: 52       illegal
EAB7: 60 00    neg  $00,x
EAB9: 28 D1    bvc  $EA8C
EABB: DC 00    ldd  $00
EABD: 10       sba  
EABE: 06       tap  
EABF: 46       rora 
EAC0: DB 10    addb $10
EAC2: 18       xgdx 
EAC3: C6 DC    ldb  #$DC
EAC5: 00       illegal
EAC6: 30       tsx  
EAC7: C6 DE    ldb  #$DE
EAC9: 00       illegal
EACA: 10       sba  
EACB: D2 62    sbcb $62
EACD: 10       sba  
EACE: 30       tsx  
EACF: D2 66    sbcb $66
EAD1: 00       illegal
EAD2: 30       tsx  
EAD3: D2 64    sbcb $64
EAD5: 08       inx  
EAD6: 10       sba  
EAD7: 06       tap  
EAD8: C6 E0    ldb  #$E0
EADA: 00       illegal
EADB: 30       tsx  
EADC: C6 E2    ldb  #$E2
EADE: 00       illegal
EADF: 10       sba  
EAE0: D2 68    sbcb $68
EAE2: 10       sba  
EAE3: 20 52    bra  $EB37
EAE5: 6D 10    tst  $10,x
EAE7: 08       inx  
EAE8: D2 6A    sbcb $6A
EAEA: 00       illegal
EAEB: 20 52    bra  $EB3F
EAED: 6C 00    inc  $00,x
EAEF: 08       inx  
EAF0: 27 EB    beq  $EADD
EAF2: 01       nop  
EAF3: 47       asra 
EAF4: 6B C7 66 tim  #$C7,$66,x
EAF7: C7 68    stb  #$68
EAF9: D1 E4    cmpb $E4
EAFB: D1 E8    cmpb $E8
EAFD: D1 E6    cmpb $E6
EAFF: D1 EA    cmpb $EA
EB01: 10       sba  
EB02: 28 00    bvc  $EB04
EB04: 30       tsx  
EB05: 00       illegal
EB06: 10       sba  
EB07: 10       sba  
EB08: 30       tsx  
EB09: 00       illegal
EB0A: 30       tsx  
EB0B: 10       sba  
EB0C: 10       sba  
EB0D: 00       illegal
EB0E: 10       sba  
EB0F: 07       tpa  
EB10: 47       asra 
EB11: 6B 10 28 tim  #$10,$28,x
EB14: C7 66    stb  #$66
EB16: 00       illegal
EB17: 30       tsx  
EB18: C7 68    stb  #$68
EB1A: 00       illegal
EB1B: 10       sba  
EB1C: D1 D6    cmpb $D6
EB1E: 10       sba  
EB1F: 30       tsx  
EB20: D1 DA    cmpb $DA
EB22: 00       illegal
EB23: 30       tsx  
EB24: D1 EC    cmpb $EC
EB26: 1A       slp  
EB27: 20 D1    bra  $EAFA
EB29: EE 0A    ldx  $0A,x
EB2B: 10       sba  
EB2C: 27 EB    beq  $EB19
EB2E: 01       nop  
EB2F: 47       asra 
EB30: 6B C7 66 tim  #$C7,$66,x
EB33: C7 68    stb  #$68
EB35: D1 CE    cmpb $CE
EB37: D1 D0    cmpb $D0
EB39: D1 D8    cmpb $D8
EB3B: D1 DC    cmpb $DC
EB3D: 27 EB    beq  $EB2A
EB3F: 01       nop  
EB40: 47       asra 
EB41: 6B C7 66 tim  #$C7,$66,x
EB44: C7 68    stb  #$68
EB46: D1 D2    cmpb $D2
EB48: D1 D4    cmpb $D4
EB4A: D1 D8    cmpb $D8
EB4C: D1 DC    cmpb $DC
EB4E: 08       inx  
EB4F: 47       asra 
EB50: 6B 10 28 tim  #$10,$28,x
EB53: C7 66    stb  #$66
EB55: 00       illegal
EB56: 30       tsx  
EB57: C7 68    stb  #$68
EB59: 00       illegal
EB5A: 10       sba  
EB5B: 51       illegal
EB5C: C3 20 18 addd #$2018
EB5F: D1 F0    cmpb $F0
EB61: 10       sba  
EB62: 30       tsx  
EB63: D1 F2    cmpb $F2
EB65: 10       sba  
EB66: 10       sba  
EB67: D1 F4    cmpb $F4
EB69: 00       illegal
EB6A: 30       tsx  
EB6B: D1 F6    cmpb $F6
EB6D: 00       illegal
EB6E: 10       sba  
EB6F: 05       asld 
EB70: 03       illegal
EB71: ED F8    std  $F8,x
EB73: 20 83    bra  $EAF8
EB75: EE F8    ldx  $F8,x
EB77: 08       inx  
EB78: 83 F0 08 subd #$F008
EB7B: 18       xgdx 
EB7C: 83 F2 08 subd #$F208
EB7F: F8 03 F4 eorb $03F4
EB82: 08       inx  
EB83: E0 07    subb $07,x
EB85: C6 C4    ldb  #$C4
EB87: 18       xgdx 
EB88: 30       tsx  
EB89: C6 C6    ldb  #$C6
EB8B: 18       xgdx 
EB8C: 10       sba  
EB8D: 46       rora 
EB8E: C8 28    eorb #$28
EB90: 28 C6    bvc  $EB58
EB92: C2 28    sbcb #$28
EB94: 10       sba  
EB95: 9B 28    adda $28
EB97: 08       inx  
EB98: 30       tsx  
EB99: 9B 2A    adda $2A
EB9B: 08       inx  
EB9C: 10       sba  
EB9D: 9B 2C    adda $2C
EB9F: 18       xgdx 
EBA0: 30       tsx  
EBA1: 09       dex  
EBA2: C6 C4    ldb  #$C4
EBA4: 18       xgdx 
EBA5: 30       tsx  
EBA6: C6 C6    ldb  #$C6
EBA8: 18       xgdx 
EBA9: 10       sba  
EBAA: 46       rora 
EBAB: C8 28    eorb #$28
EBAD: 28 C6    bvc  $EB75
EBAF: C2 28    sbcb #$28
EBB1: 10       sba  
EBB2: 9B 2E    adda $2E
EBB4: F8 20 1B eorb $201B
EBB7: 36       psha 
EBB8: F8 08 9B eorb $089B
EBBB: 30       tsx  
EBBC: 08       inx  
EBBD: 30       tsx  
EBBE: 9B 32    adda $32
EBC0: 08       inx  
EBC1: 10       sba  
EBC2: 9B 34    adda $34
EBC4: 18       xgdx 
EBC5: 30       tsx  
EBC6: EC C0    ldd  $C0,x
EBC8: EC C5    ldd  $C5,x
EBCA: EC CA    ldd  $CA,x
EBCC: EC D5    ldd  $D5,x
EBCE: EC 9A    ldd  $9A,x
EBD0: EC A5    ldd  $A5,x
EBD2: EC B0    ldd  $B0,x
EBD4: EC B5    ldd  $B5,x
EBD6: EC E0    ldd  $E0,x
EBD8: EC E5    ldd  $E5,x
EBDA: EC F6    ldd  $F6,x
EBDC: ED 0B    std  $0B,x
EBDE: ED 14    std  $14,x
EBE0: ED 27    std  $27,x
EBE2: ED 30    std  $30,x
EBE4: ED 39    std  $39,x
EBE6: ED 44    std  $44,x
EBE8: ED 51    std  $51,x
EBEA: ED 5C    std  $5C,x
EBEC: ED 61    std  $61,x
EBEE: ED 78    std  $78,x
EBF0: ED 7D    std  $7D,x
EBF2: ED 82    std  $82,x
EBF4: ED 8F    std  $8F,x
EBF6: ED 94    std  $94,x
EBF8: ED A9    std  $A9,x
EBFA: ED BE    std  $BE,x
EBFC: ED BE    std  $BE,x
EBFE: ED BE    std  $BE,x
EC00: ED BE    std  $BE,x
EC02: ED BE    std  $BE,x
EC04: ED BE    std  $BE,x
EC06: ED BE    std  $BE,x
EC08: ED BE    std  $BE,x
EC0A: ED BE    std  $BE,x
EC0C: ED C9    std  $C9,x
EC0E: ED CE    std  $CE,x
EC10: ED D3    std  $D3,x
EC12: ED D8    std  $D8,x
EC14: ED DD    std  $DD,x
EC16: ED DD    std  $DD,x
EC18: ED DD    std  $DD,x
EC1A: ED DD    std  $DD,x
EC1C: ED DD    std  $DD,x
EC1E: ED DD    std  $DD,x
EC20: ED DD    std  $DD,x
EC22: ED DD    std  $DD,x
EC24: ED DD    std  $DD,x
EC26: ED EB    std  $EB,x
EC28: EE 00    ldx  $00,x
EC2A: EE 0B    ldx  $0B,x
EC2C: EE 16    ldx  $16,x
EC2E: EE 1B    ldx  $1B,x
EC30: EE 1B    ldx  $1B,x
EC32: EE 26    ldx  $26,x
EC34: EE 26    ldx  $26,x
EC36: EE 26    ldx  $26,x
EC38: EE 26    ldx  $26,x
EC3A: EE 26    ldx  $26,x
EC3C: EE 26    ldx  $26,x
EC3E: EE 26    ldx  $26,x
EC40: EE 26    ldx  $26,x
EC42: EE 26    ldx  $26,x
EC44: EE 2E    ldx  $2E,x
EC46: EE 2E    ldx  $2E,x
EC48: EE 36    ldx  $36,x
EC4A: EE 36    ldx  $36,x
EC4C: EE 36    ldx  $36,x
EC4E: EE 53    ldx  $53,x
EC50: EE 70    ldx  $70,x
EC52: EE 8D    ldx  $8D,x
EC54: EE A6    ldx  $A6,x
EC56: EE B7    ldx  $B7,x
EC58: EE C8    ldx  $C8,x
EC5A: EE D1    ldx  $D1,x
EC5C: EE E8    ldx  $E8,x
EC5E: EE F5    ldx  $F5,x
EC60: EF 02    stx  $02,x
EC62: EF 0F    stx  $0F,x
EC64: EF 26    stx  $26,x
EC66: EF 33    stx  $33,x
EC68: EF 40    stx  $40,x
EC6A: EF 4D    stx  $4D,x
EC6C: EF 5E    stx  $5E,x
EC6E: EF 7F    stx  $7F,x
EC70: EF 9C    stx  $9C,x
EC72: EF B9    stx  $B9,x
EC74: EF DA    stx  $DA,x
EC76: EF FB    stx  $FB,x
EC78: F0 18 F0 subb $18F0
EC7B: 35       txs  
EC7C: F0 4E F0 subb $4EF0
EC7F: 6D F0    tst  $F0,x
EC81: 7E F0 8F jmp  $F08F
EC84: F0 B0 F0 subb $B0F0
EC87: D5 F0    bitb $F0
EC89: EE F1    ldx  $F1,x
EC8B: 07       tpa  
EC8C: F1 26 F1 cmpb $26F1
EC8F: 43       coma 
EC90: F1 54 F1 cmpb $54F1
EC93: 65 F1 86 eim  #$F1,$86,x
EC96: F1 86 F1 cmpb $86F1
EC99: A3 C4    subd $C4,x
EC9B: 85 BA    bita #$BA
EC9D: F8 30 F8 eorb $30F8
ECA0: 10       sba  
ECA1: 08       inx  
ECA2: 30       tsx  
ECA3: 08       inx  
ECA4: 10       sba  
ECA5: 24 EC    bcc  $EC93
ECA7: 9D 85    jsr  $85
ECA9: BA 85 C2 ora  $85C2
ECAC: 85 BE    bita #$BE
ECAE: 85 C4    bita #$C4
ECB0: E4 85    andb $85,x
ECB2: D2 EC    sbcb $EC
ECB4: 9D 24    jsr  $24
ECB6: EC 9D    ldd  $9D,x
ECB8: 85 D2    bita #$D2
ECBA: 85 DA    bita #$DA
ECBC: 85 D6    bita #$D6
ECBE: 85 DC    bita #$DC
ECC0: E4 85    andb $85,x
ECC2: C6 EC    ldb  #$EC
ECC4: 9D E4    jsr  $E4
ECC6: 85 DE    bita #$DE
ECC8: EC 9D    ldd  $9D,x
ECCA: 24 EC    bcc  $ECB8
ECCC: 9D 85    jsr  $85
ECCE: DE 85    ldx  $85
ECD0: E6 85    ldb  $85,x
ECD2: E2 85    sbcb $85,x
ECD4: E8 24    eorb $24,x
ECD6: EC 9D    ldd  $9D,x
ECD8: 85 C6    bita #$C6
ECDA: 85 CE    bita #$CE
ECDC: 85 CA    bita #$CA
ECDE: 85 D0    bita #$D0
ECE0: E4 84    andb $84,x
ECE2: 78 EC 9D asl  $EC9D
ECE5: 04       lsrd 
ECE6: 84 80    anda #$80
ECE8: F8 30 84 eorb $3084
ECEB: 82 08    sbca #$08
ECED: 30       tsx  
ECEE: 84 7A    anda #$7A
ECF0: F8 10 84 eorb $1084
ECF3: 7E 08 10 jmp  $0810
ECF6: 05       asld 
ECF7: 84 84    anda #$84
ECF9: E8 20    eorb $20,x
ECFB: 84 86    anda #$86
ECFD: F8 20 04 eorb $2004
ED00: 8A F8    ora  #$F8
ED02: 08       inx  
ED03: 84 88    anda #$88
ED05: 08       inx  
ED06: 20 04    bra  $ED0C
ED08: 8B 08    adda #$08
ED0A: 08       inx  
ED0B: C3 84 92 addd #$8492
ED0E: D8 10    eorb $10
ED10: E8 10    eorb $10,x
ED12: F8 10 24 eorb $1024
ED15: ED 1F    std  $1F,x
ED17: 04       lsrd 
ED18: A4 84    anda $84,x
ED1A: 9E 84    lds  $84
ED1C: A0 84    suba $84,x
ED1E: A2 F8    sbca $F8,x
ED20: 28 F8    bvc  $ED1A
ED22: 10       sba  
ED23: 08       inx  
ED24: 30       tsx  
ED25: 08       inx  
ED26: 10       sba  
ED27: C3 84 A6 addd #$84A6
ED2A: 08       inx  
ED2B: 10       sba  
ED2C: 18       xgdx 
ED2D: 10       sba  
ED2E: 28 10    bvc  $ED40
ED30: C3 C4 98 addd #$C498
ED33: 18       xgdx 
ED34: 08       inx  
ED35: 08       inx  
ED36: 08       inx  
ED37: F8 08 24 eorb $0824
ED3A: ED 1F    std  $1F,x
ED3C: 04       lsrd 
ED3D: B0 84 8C suba $848C
ED40: 84 8E    anda #$8E
ED42: 84 90    anda #$90
ED44: 03       illegal
ED45: 84 AC    anda #$AC
ED47: F8 10 04 eorb $1004
ED4A: A5 08    bita $08,x
ED4C: 28 84    bvc  $ECD2
ED4E: AE 08    lds  $08,x
ED50: 10       sba  
ED51: C4 84    andb #$84
ED53: 3E       wai  
ED54: F8 30 08 eorb $3008
ED57: 30       tsx  
ED58: F8 10 08 eorb $1008
ED5B: 10       sba  
ED5C: E4 84    andb $84,x
ED5E: 46       rora 
ED5F: ED 54    std  $54,x
ED61: 25 ED    bcs  $ED50
ED63: 6E 04    jmp  $04,x
ED65: 34       des  
ED66: 84 1C    anda #$1C
ED68: 84 1E    anda #$1E
ED6A: 84 20    anda #$20
ED6C: 84 22    anda #$22
ED6E: F8 28 F8 eorb $28F8
ED71: 10       sba  
ED72: 08       inx  
ED73: 30       tsx  
ED74: 08       inx  
ED75: 10       sba  
ED76: 18       xgdx 
ED77: 30       tsx  
ED78: E4 84    andb $84,x
ED7A: 24 ED    bcc  $ED69
ED7C: 54       lsrb 
ED7D: E4 84    andb $84,x
ED7F: 2C ED    bge  $ED6E
ED81: 54       lsrb 
ED82: 25 ED    bcs  $ED71
ED84: 6E 04    jmp  $04,x
ED86: 35       txs  
ED87: 84 36    anda #$36
ED89: 84 38    anda #$38
ED8B: 84 3A    anda #$3A
ED8D: 84 3C    anda #$3C
ED8F: E4 84    andb $84,x
ED91: B2 EC 9D sbca $EC9D
ED94: 05       asld 
ED95: 84 BA    anda #$BA
ED97: F8 20 04 eorb $2004
ED9A: BE F8 08 lds  $F808
ED9D: 84 BC    anda #$BC
ED9F: 08       inx  
EDA0: 20 04    bra  $EDA6
EDA2: BF 08 08 sts  $0808
EDA5: 09       dex  
EDA6: 96 18    lda  $18
EDA8: 28 05    bvc  $EDAF
EDAA: 84 C0    anda #$C0
EDAC: F8 20 04 eorb $2004
EDAF: C4 F8    andb #$F8
EDB1: 08       inx  
EDB2: 84 C2    anda #$C2
EDB4: 08       inx  
EDB5: 20 04    bra  $EDBB
EDB7: C5 08    bitb #$08
EDB9: 08       inx  
EDBA: 04       lsrd 
EDBB: B1 18 18 cmpa $1818
EDBE: C4 86    andb #$86
EDC0: 00       illegal
EDC1: F8 30 F8 eorb $30F8
EDC4: 10       sba  
EDC5: 08       inx  
EDC6: 30       tsx  
EDC7: 08       inx  
EDC8: 10       sba  
EDC9: E4 86    andb $86,x
EDCB: 08       inx  
EDCC: ED C1    std  $C1,x
EDCE: E4 86    andb $86,x
EDD0: 18       xgdx 
EDD1: ED C1    std  $C1,x
EDD3: E4 86    andb $86,x
EDD5: 20 ED    bra  $EDC4
EDD7: C1 E4    cmpb #$E4
EDD9: 86 10    lda  #$10
EDDB: ED C1    std  $C1,x
EDDD: 84 C5    anda #$C5
EDDF: B6 00 30 lda  $0030
EDE2: 96 08    lda  $08
EDE4: 10       sba  
EDE5: B8 F0 30 eora $F030
EDE8: 9A F8    ora  $F8
EDEA: 10       sba  
EDEB: 05       asld 
EDEC: 45       illegal
EDED: 95 08    bita $08
EDEF: 28 C5    bvc  $EDB6
EDF1: 96 08    lda  $08
EDF3: 10       sba  
EDF4: C5 98    bitb #$98
EDF6: F8 30 C5 eorb $30C5
EDF9: 9A F8    ora  $F8
EDFB: 10       sba  
EDFC: C5 9C    bitb #$9C
EDFE: E8 30    eorb $30,x
EE00: C4 C5    andb #$C5
EE02: 9E 00    lds  $00
EE04: 30       tsx  
EE05: 00       illegal
EE06: 10       sba  
EE07: F0 30 F0 subb $30F0
EE0A: 10       sba  
EE0B: C4 C5    andb #$C5
EE0D: A6 08    lda  $08,x
EE0F: 30       tsx  
EE10: 08       inx  
EE11: 10       sba  
EE12: F8 30 F8 eorb $30F8
EE15: 10       sba  
EE16: E4 C5    andb $C5,x
EE18: AE EE    lds  $EE,x
EE1A: 0E       cli  
EE1B: C4 81    andb #$81
EE1D: F8 F8 30 eorb $F830
EE20: F8 10 08 eorb $1008
EE23: 30       tsx  
EE24: 08       inx  
EE25: 10       sba  
EE26: F8 10 F8 eorb $10F8
EE29: F8 08 18 eorb $0818
EE2C: 08       inx  
EE2D: 00       illegal
EE2E: F8 18 F8 eorb $18F8
EE31: 00       illegal
EE32: 08       inx  
EE33: 18       xgdx 
EE34: 08       inx  
EE35: 00       illegal
EE36: 07       tpa  
EE37: 06       tap  
EE38: 2E F8    bgt  $EE32
EE3A: 1C       illegal
EE3B: 12       asx1 1,s
EE3C: 7E E8 18 jmp  $E818
EE3F: 86 28    lda  #$28
EE41: F8 10 86 eorb $1086
EE44: 2A 08    bpl  $EE4E
EE46: 30       tsx  
EE47: 86 2C    lda  #$2C
EE49: 08       inx  
EE4A: 10       sba  
EE4B: 1F       illegal
EE4C: F8 F8 18 eorb $F818
EE4F: 1F       illegal
EE50: F9 08 18 adcb $0818
EE53: 07       tpa  
EE54: 06       tap  
EE55: 42       illegal
EE56: F8 28 86 eorb $2886
EE59: 30       tsx  
EE5A: F8 10 86 eorb $1086
EE5D: 32       pula 
EE5E: 08       inx  
EE5F: 30       tsx  
EE60: 86 34    lda  #$34
EE62: 08       inx  
EE63: 10       sba  
EE64: 1F       illegal
EE65: FB 0A 18 addb $0A18
EE68: 1F       illegal
EE69: FA 08 28 orb  $0828
EE6C: 1F       illegal
EE6D: FC FA 18 ldd  $FA18
EE70: 07       tpa  
EE71: 86 36    lda  #$36
EE73: F8 30 86 eorb $3086
EE76: 38       pulx 
EE77: F8 10 86 eorb $1086
EE7A: 3A       abx  
EE7B: 08       inx  
EE7C: 30       tsx  
EE7D: 86 3C    lda  #$3C
EE7F: 08       inx  
EE80: 10       sba  
EE81: 06       tap  
EE82: 4A       deca 
EE83: 18       xgdx 
EE84: 28 12    bvc  $EE98
EE86: BD 28 28 jsr  $2828
EE89: 1F       illegal
EE8A: FD 18 28 std  $1828
EE8D: 06       tap  
EE8E: 86 3E    lda  #$3E
EE90: F8 30 86 eorb $3086
EE93: 40       nega 
EE94: 08       inx  
EE95: 30       tsx  
EE96: 86 38    lda  #$38
EE98: F8 10 86 eorb $1086
EE9B: 3C       pshx 
EE9C: 08       inx  
EE9D: 10       sba  
EE9E: 12       asx1 1,s
EE9F: 98 E8    eora $E8
EEA1: 28 1F    bvc  $EEC2
EEA3: FE F8 28 ldx  $F828
EEA6: 04       lsrd 
EEA7: 86 4E    lda  #$4E
EEA9: F8 10 06 eorb $1006
EEAC: 4D       tsta 
EEAD: 08       inx  
EEAE: 28 86    bvc  $EE36
EEB0: 50       negb 
EEB1: 08       inx  
EEB2: 10       sba  
EEB3: 06       tap  
EEB4: 70 18 18 neg  $1818
EEB7: 04       lsrd 
EEB8: 06       tap  
EEB9: 4C       inca 
EEBA: F8 28 86 eorb $2886
EEBD: 44       lsra 
EEBE: F8 10 86 eorb $1086
EEC1: 46       rora 
EEC2: 08       inx  
EEC3: 30       tsx  
EEC4: 86 48    lda  #$48
EEC6: 08       inx  
EEC7: 10       sba  
EEC8: 02       illegal
EEC9: 86 52    lda  #$52
EECB: 00       illegal
EECC: 30       tsx  
EECD: 86 54    lda  #$54
EECF: 00       illegal
EED0: 10       sba  
EED1: 25 EE    bcs  $EEC1
EED3: DE 86    ldx  $86
EED5: 66 06    ror  $06,x
EED7: 6A 86    dec  $86,x
EED9: 68 85    asl  $85,x
EEDB: C8 85    eorb #$85
EEDD: CC F8 30 ldd  #$F830
EEE0: 08       inx  
EEE1: 48       asla 
EEE2: 08       inx  
EEE3: 30       tsx  
EEE4: F8 10 08 eorb $1008
EEE7: 10       sba  
EEE8: 25 EE    bcs  $EED8
EEEA: DE 86    ldx  $86
EEEC: 6C 06    inc  $06,x
EEEE: 6B 86 6E tim  #$86,$6e,x
EEF1: 85 E0    bita #$E0
EEF3: 85 E4    bita #$E4
EEF5: 25 EE    bcs  $EEE5
EEF7: DE 86    ldx  $86
EEF9: 66 06    ror  $06,x
EEFB: 6A 86    dec  $86,x
EEFD: 68 85    asl  $85,x
EEFF: E6 85    ldb  $85,x
EF01: E8 25    eorb $25,x
EF03: EE DE    ldx  $DE,x
EF05: 86 6C    lda  #$6C
EF07: 06       tap  
EF08: 6B 86 6E tim  #$86,$6e,x
EF0B: 85 CE    bita #$CE
EF0D: 85 D0    bita #$D0
EF0F: 25 EF    bcs  $EF00
EF11: 1C       illegal
EF12: 06       tap  
EF13: 5A       decb 
EF14: 86 56    lda  #$56
EF16: 86 58    lda  #$58
EF18: 85 BC    bita #$BC
EF1A: 85 C0    bita #$C0
EF1C: F8 48 F8 eorb $48F8
EF1F: 30       tsx  
EF20: 08       inx  
EF21: 30       tsx  
EF22: F8 10 08 eorb $1008
EF25: 10       sba  
EF26: 25 EF    bcs  $EF17
EF28: 1C       illegal
EF29: 06       tap  
EF2A: 5B       illegal
EF2B: 86 5C    lda  #$5C
EF2D: 86 5E    lda  #$5E
EF2F: 85 C2    bita #$C2
EF31: 85 C4    bita #$C4
EF33: 25 EF    bcs  $EF24
EF35: 1C       illegal
EF36: 06       tap  
EF37: 5A       decb 
EF38: 86 56    lda  #$56
EF3A: 86 58    lda  #$58
EF3C: 85 D4    bita #$D4
EF3E: 85 D8    bita #$D8
EF40: 25 EF    bcs  $EF31
EF42: 1C       illegal
EF43: 06       tap  
EF44: 5B       illegal
EF45: 86 5C    lda  #$5C
EF47: 86 5E    lda  #$5E
EF49: 85 DA    bita #$DA
EF4B: 85 DC    bita #$DC
EF4D: 04       lsrd 
EF4E: 06       tap  
EF4F: 62 00 28 oim  #$00,$28,x
EF52: 86 60    lda  #$60
EF54: 00       illegal
EF55: 10       sba  
EF56: 86 64    lda  #$64
EF58: 10       sba  
EF59: 30       tsx  
EF5A: 06       tap  
EF5B: 63 10    com  $10,x
EF5D: 18       xgdx 
EF5E: 08       inx  
EF5F: 91 7A    cmpa $7A
EF61: F8 20 11 eorb $2011
EF64: 87 F8    sta  #$F8
EF66: 08       inx  
EF67: 91 7C    cmpa $7C
EF69: 08       inx  
EF6A: 30       tsx  
EF6B: 91 7E    cmpa $7E
EF6D: 08       inx  
EF6E: 10       sba  
EF6F: 04       lsrd 
EF70: FF 08 28 stx  $0828
EF73: 84 00    anda #$00
EF75: 18       xgdx 
EF76: 20 84    bra  $EEFC
EF78: 02       illegal
EF79: 28 20    bvc  $EF9B
EF7B: 04       lsrd 
EF7C: 08       inx  
EF7D: 28 08    bvc  $EF87
EF7F: 07       tpa  
EF80: 91 80    cmpa $80
EF82: F8 20 11 eorb $2011
EF85: 86 F8    lda  #$F8
EF87: 08       inx  
EF88: 91 82    cmpa $82
EF8A: 08       inx  
EF8B: 30       tsx  
EF8C: 91 84    cmpa $84
EF8E: 08       inx  
EF8F: 10       sba  
EF90: 84 04    anda #$04
EF92: 18       xgdx 
EF93: 20 84    bra  $EF19
EF95: 06       tap  
EF96: 28 20    bvc  $EFB8
EF98: 04       lsrd 
EF99: 09       dex  
EF9A: 28 08    bvc  $EFA4
EF9C: 07       tpa  
EF9D: 91 88    cmpa $88
EF9F: 08       inx  
EFA0: 30       tsx  
EFA1: 91 8A    cmpa $8A
EFA3: 08       inx  
EFA4: 10       sba  
EFA5: 91 8C    cmpa $8C
EFA7: 18       xgdx 
EFA8: 30       tsx  
EFA9: 11       cba  
EFAA: 93 18    subd $18
EFAC: 18       xgdx 
EFAD: 04       lsrd 
EFAE: 0A       clv  
EFAF: 18       xgdx 
EFB0: 28 04    bvc  $EFB6
EFB2: 0B       sev  
EFB3: 28 28    bvc  $EFDD
EFB5: 84 0C    anda #$0C
EFB7: 28 10    bvc  $EFC9
EFB9: 08       inx  
EFBA: 91 9C    cmpa $9C
EFBC: 00       illegal
EFBD: 30       tsx  
EFBE: 91 9E    cmpa $9E
EFC0: 00       illegal
EFC1: 10       sba  
EFC2: 91 A0    cmpa $A0
EFC4: 10       sba  
EFC5: 20 11    bra  $EFD8
EFC7: A2 10    sbca $10,x
EFC9: 08       inx  
EFCA: 84 0E    anda #$0E
EFCC: 08       inx  
EFCD: 30       tsx  
EFCE: 84 12    anda #$12
EFD0: 08       inx  
EFD1: 10       sba  
EFD2: 84 10    anda #$10
EFD4: 18       xgdx 
EFD5: 30       tsx  
EFD6: 84 14    anda #$14
EFD8: 18       xgdx 
EFD9: 10       sba  
EFDA: 08       inx  
EFDB: 91 A4    cmpa $A4
EFDD: EB 20    addb $20,x
EFDF: 91 A6    cmpa $A6
EFE1: FB 20 11 addb $2011
EFE4: AC FB    cmpx $FB,x
EFE6: 08       inx  
EFE7: 91 A8    cmpa $A8
EFE9: 0B       sev  
EFEA: 20 91    bra  $EF7D
EFEC: AA 1B    ora  $1B,x
EFEE: 20 84    bra  $EF74
EFF0: 16       tab  
EFF1: EC 2F    ldd  $2F,x
EFF3: 84 18    anda #$18
EFF5: FC 2F 84 ldd  $2F84
EFF8: 1A       slp  
EFF9: 0C       clc  
EFFA: 2F 07    ble  $F003
EFFC: C4 4E    andb #$4E
EFFE: 10       sba  
EFFF: 30       tsx  
F000: C4 50    andb #$50
F002: 10       sba  
F003: 10       sba  
F004: 44       lsra 
F005: 54       lsrb 
F006: 00       illegal
F007: 28 C4    bvc  $EFCD
F009: 52       illegal
F00A: 00       illegal
F00B: 10       sba  
F00C: 51       illegal
F00D: E3 10    addd $10,x
F00F: 28 D1    bvc  $EFE2
F011: CA 00    orb  #$00
F013: 30       tsx  
F014: D1 CC    cmpb $CC
F016: 00       illegal
F017: 10       sba  
F018: 07       tpa  
F019: 51       illegal
F01A: E2 10    sbcb $10,x
F01C: 28 D1    bvc  $EFEF
F01E: DE 00    ldx  $00
F020: 30       tsx  
F021: D1 E0    cmpb $E0
F023: 00       illegal
F024: 10       sba  
F025: C4 62    andb #$62
F027: 10       sba  
F028: 30       tsx  
F029: C4 66    andb #$66
F02B: 10       sba  
F02C: 10       sba  
F02D: C4 64    andb #$64
F02F: 00       illegal
F030: 30       tsx  
F031: C4 68    andb #$68
F033: 00       illegal
F034: 10       sba  
F035: 06       tap  
F036: 44       lsra 
F037: 55       illegal
F038: 10       sba  
F039: 28 C4    bvc  $EFFF
F03B: 56       rorb 
F03C: 00       illegal
F03D: 30       tsx  
F03E: C4 58    andb #$58
F040: 00       illegal
F041: 10       sba  
F042: D1 C4    cmpb $C4
F044: 10       sba  
F045: 30       tsx  
F046: D1 C6    cmpb $C6
F048: 10       sba  
F049: 10       sba  
F04A: D1 C8    cmpb $C8
F04C: 00       illegal
F04D: 20 27    bra  $F076
F04F: F0 5F 44 subb $5F44
F052: 6E C4    jmp  $C4,x
F054: 6A C4    dec  $C4,x
F056: 6C D1    inc  $D1,x
F058: D6 D1    ldb  $D1
F05A: D8 D1    eorb $D1
F05C: DA D1    orb  $D1
F05E: DC 10    ldd  $10
F060: 28 00    bvc  $F062
F062: 30       tsx  
F063: 00       illegal
F064: 10       sba  
F065: 10       sba  
F066: 30       tsx  
F067: 10       sba  
F068: 10       sba  
F069: 00       illegal
F06A: 30       tsx  
F06B: 00       illegal
F06C: 10       sba  
F06D: 27 F0    beq  $F05F
F06F: 5F       clrb 
F070: 51       illegal
F071: E2 D1    sbcb $D1,x
F073: DE D1    ldx  $D1
F075: E0 C4    subb $C4,x
F077: 5A       decb 
F078: C4 66    andb #$66
F07A: C4 5C    andb #$5C
F07C: C4 68    andb #$68
F07E: 27 F0    beq  $F070
F080: 5F       clrb 
F081: 51       illegal
F082: E2 D1    sbcb $D1,x
F084: DE D1    ldx  $D1
F086: E0 C4    subb $C4,x
F088: 5E       illegal
F089: C4 66    andb #$66
F08B: C4 60    andb #$60
F08D: C4 68    andb #$68
F08F: 08       inx  
F090: 51       illegal
F091: E2 10    sbcb $10,x
F093: 28 D1    bvc  $F066
F095: DE 00    ldx  $00
F097: 30       tsx  
F098: D1 E0    cmpb $E0
F09A: 00       illegal
F09B: 10       sba  
F09C: 44       lsra 
F09D: 6F 20    clr  $20,x
F09F: 18       xgdx 
F0A0: C4 70    andb #$70
F0A2: 10       sba  
F0A3: 30       tsx  
F0A4: C4 72    andb #$72
F0A6: 10       sba  
F0A7: 10       sba  
F0A8: C4 74    andb #$74
F0AA: 00       illegal
F0AB: 30       tsx  
F0AC: C4 76    andb #$76
F0AE: 00       illegal
F0AF: 10       sba  
F0B0: 09       dex  
F0B1: 44       lsra 
F0B2: 6E 10    jmp  $10,x
F0B4: 28 C4    bvc  $F07A
F0B6: 6A 00    dec  $00,x
F0B8: 30       tsx  
F0B9: C4 6C    andb #$6C
F0BB: 00       illegal
F0BC: 10       sba  
F0BD: D2 5C    sbcb $5C
F0BF: 10       sba  
F0C0: 40       nega 
F0C1: 52       illegal
F0C2: 61 10 28 aim  #$10,$28,x
F0C5: D1 D8    cmpb $D8
F0C7: 10       sba  
F0C8: 10       sba  
F0C9: D2 5E    sbcb $5E
F0CB: 00       illegal
F0CC: 40       nega 
F0CD: 52       illegal
F0CE: 60 00    neg  $00,x
F0D0: 28 D1    bvc  $F0A3
F0D2: DC 00    ldd  $00
F0D4: 10       sba  
F0D5: 06       tap  
F0D6: 44       lsra 
F0D7: F6 10 18 ldb  $1018
F0DA: C4 EE    andb #$EE
F0DC: 00       illegal
F0DD: 30       tsx  
F0DE: C4 F0    andb #$F0
F0E0: 00       illegal
F0E1: 10       sba  
F0E2: D2 62    sbcb $62
F0E4: 10       sba  
F0E5: 30       tsx  
F0E6: D2 66    sbcb $66
F0E8: 00       illegal
F0E9: 30       tsx  
F0EA: D2 64    sbcb $64
F0EC: 08       inx  
F0ED: 10       sba  
F0EE: 06       tap  
F0EF: C4 F2    andb #$F2
F0F1: 00       illegal
F0F2: 30       tsx  
F0F3: C4 F4    andb #$F4
F0F5: 00       illegal
F0F6: 10       sba  
F0F7: D2 68    sbcb $68
F0F9: 10       sba  
F0FA: 20 52    bra  $F14E
F0FC: 6D 10    tst  $10,x
F0FE: 08       inx  
F0FF: D2 6A    sbcb $6A
F101: 00       illegal
F102: 20 52    bra  $F156
F104: 6C 00    inc  $00,x
F106: 08       inx  
F107: 27 F1    beq  $F0FA
F109: 18       xgdx 
F10A: 44       lsra 
F10B: 6E C4    jmp  $C4,x
F10D: 6A C4    dec  $C4,x
F10F: 6C D1    inc  $D1,x
F111: E4 D1    andb $D1,x
F113: E8 D1    eorb $D1,x
F115: E6 D1    ldb  $D1,x
F117: EA 10    orb  $10,x
F119: 28 00    bvc  $F11B
F11B: 30       tsx  
F11C: 00       illegal
F11D: 10       sba  
F11E: 10       sba  
F11F: 30       tsx  
F120: 00       illegal
F121: 30       tsx  
F122: 10       sba  
F123: 10       sba  
F124: 00       illegal
F125: 10       sba  
F126: 07       tpa  
F127: 44       lsra 
F128: 6E 10    jmp  $10,x
F12A: 28 C4    bvc  $F0F0
F12C: 6A 00    dec  $00,x
F12E: 30       tsx  
F12F: C4 6C    andb #$6C
F131: 00       illegal
F132: 10       sba  
F133: D1 D6    cmpb $D6
F135: 10       sba  
F136: 30       tsx  
F137: D1 DA    cmpb $DA
F139: 00       illegal
F13A: 30       tsx  
F13B: D1 EC    cmpb $EC
F13D: 1A       slp  
F13E: 20 D1    bra  $F111
F140: EE 0A    ldx  $0A,x
F142: 10       sba  
F143: 27 F1    beq  $F136
F145: 18       xgdx 
F146: 44       lsra 
F147: 6E C4    jmp  $C4,x
F149: 6A C4    dec  $C4,x
F14B: 6C D1    inc  $D1,x
F14D: CE D1 D0 ldx  #$D1D0
F150: D1 D8    cmpb $D8
F152: D1 DC    cmpb $DC
F154: 27 F1    beq  $F147
F156: 18       xgdx 
F157: 44       lsra 
F158: 6E C4    jmp  $C4,x
F15A: 6A C4    dec  $C4,x
F15C: 6C D1    inc  $D1,x
F15E: D2 D1    sbcb $D1
F160: D4 D1    andb $D1
F162: D8 D1    eorb $D1
F164: DC 08    ldd  $08
F166: 44       lsra 
F167: 6E 10    jmp  $10,x
F169: 28 C4    bvc  $F12F
F16B: 6A 00    dec  $00,x
F16D: 30       tsx  
F16E: C4 6C    andb #$6C
F170: 00       illegal
F171: 10       sba  
F172: 51       illegal
F173: C3 20 18 addd #$2018
F176: D1 F0    cmpb $F0
F178: 10       sba  
F179: 30       tsx  
F17A: D1 F2    cmpb $F2
F17C: 10       sba  
F17D: 10       sba  
F17E: D1 F4    cmpb $F4
F180: 00       illegal
F181: 30       tsx  
F182: D1 F6    cmpb $F6
F184: 00       illegal
F185: 10       sba  
F186: 07       tpa  
F187: C4 8E    andb #$8E
F189: 18       xgdx 
F18A: 30       tsx  
F18B: C4 90    andb #$90
F18D: 18       xgdx 
F18E: 10       sba  
F18F: 44       lsra 
F190: B0 28 28 suba $2828
F193: C4 8C    andb #$8C
F195: 28 10    bvc  $F1A7
F197: 9B 28    adda $28
F199: 08       inx  
F19A: 30       tsx  
F19B: 9B 2A    adda $2A
F19D: 08       inx  
F19E: 10       sba  
F19F: 9B 2C    adda $2C
F1A1: 18       xgdx 
F1A2: 30       tsx  
F1A3: 09       dex  
F1A4: C4 8E    andb #$8E
F1A6: 18       xgdx 
F1A7: 30       tsx  
F1A8: C4 90    andb #$90
F1AA: 18       xgdx 
F1AB: 10       sba  
F1AC: 44       lsra 
F1AD: B0 28 28 suba $2828
F1B0: C4 8C    andb #$8C
F1B2: 28 10    bvc  $F1C4
F1B4: 9B 2E    adda $2E
F1B6: F8 20 1B eorb $201B
F1B9: 36       psha 
F1BA: F8 08 9B eorb $089B
F1BD: 30       tsx  
F1BE: 08       inx  
F1BF: 30       tsx  
F1C0: 9B 32    adda $32
F1C2: 08       inx  
F1C3: 10       sba  
F1C4: 9B 34    adda $34
F1C6: 18       xgdx 
F1C7: 30       tsx  
F1C8: F2 30 F2 sbcb $30F2
F1CB: 3B       rti  
F1CC: F2 46 F2 sbcb $46F2
F1CF: 4B       illegal
F1D0: F2 56 F2 sbcb $56F2
F1D3: 5B       illegal
F1D4: F2 66 F2 sbcb $66F2
F1D7: 6B F2 76 tim  #$F2,$76,x
F1DA: F2 87 F2 sbcb $87F2
F1DD: 9C F2    cmpx $F2
F1DF: B1 F2 BA cmpa $F2BA
F1E2: F2 BA F2 sbcb $BAF2
F1E5: BA F2 C3 ora  $F2C3
F1E8: F2 C3 F2 sbcb $C3F2
F1EB: D0 F2    subb $F2
F1ED: D5 F2    bitb $F2
F1EF: DA F2    orb  $F2
F1F1: EF F2    stx  $F2,x
F1F3: F4 F2 F9 andb $F2F9
F1F6: F3 0E F3 addd $0EF3
F1F9: 0E       cli  
F1FA: F3 0E F3 addd $0EF3
F1FD: 0E       cli  
F1FE: F3 0E F3 addd $0EF3
F201: 0E       cli  
F202: F3 1C F3 addd $1CF3
F205: 27 F3    beq  $F1FA
F207: 27 F3    beq  $F1FC
F209: 27 F3    beq  $F1FE
F20B: 27 F3    beq  $F200
F20D: 27 F3    beq  $F202
F20F: 27 F3    beq  $F204
F211: 27 F3    beq  $F206
F213: 27 F3    beq  $F208
F215: 27 F3    beq  $F20A
F217: 27 F3    beq  $F20C
F219: 27 F3    beq  $F20E
F21B: 27 F3    beq  $F210
F21D: 27 F3    beq  $F212
F21F: 27 F3    beq  $F214
F221: 27 F3    beq  $F216
F223: 27 F3    beq  $F218
F225: 27 F3    beq  $F21A
F227: 27 F3    beq  $F21C
F229: 38       pulx 
F22A: F3 4D F3 addd $4DF3
F22D: 5E       illegal
F22E: F3 69 C4 addd $69C4
F231: 8D 4A    bsr  $F27D
F233: F8 30 F8 eorb $30F8
F236: 10       sba  
F237: 08       inx  
F238: 30       tsx  
F239: 08       inx  
F23A: 10       sba  
F23B: 24 F2    bcc  $F22F
F23D: 33       pulb 
F23E: 8D 4A    bsr  $F28A
F240: 8D 5A    bsr  $F29C
F242: 8D 4E    bsr  $F292
F244: 8D 5C    bsr  $F2A2
F246: E4 8D    andb $8D,x
F248: 52       illegal
F249: F2 33 24 sbcb $3324
F24C: F2 33 8D sbcb $338D
F24F: 52       illegal
F250: 8D 5E    bsr  $F2B0
F252: 8D 56    bsr  $F2AA
F254: 8D 60    bsr  $F2B6
F256: E4 8D    andb $8D,x
F258: 32       pula 
F259: F2 33 24 sbcb $3324
F25C: F2 33 8D sbcb $338D
F25F: 32       pula 
F260: 8D 42    bsr  $F2A4
F262: 8D 36    bsr  $F29A
F264: 8D 44    bsr  $F2AA
F266: E4 8D    andb $8D,x
F268: 3A       abx  
F269: F2 33 24 sbcb $3324
F26C: F2 33 8D sbcb $338D
F26F: 3A       abx  
F270: 8D 46    bsr  $F2B8
F272: 8D 3E    bsr  $F2B2
F274: 8D 48    bsr  $F2BE
F276: 04       lsrd 
F277: 8C 00 F8 cmpx #$00F8
F27A: 30       tsx  
F27B: 8C 02 F8 cmpx #$02F8
F27E: 10       sba  
F27F: 8C 04 08 cmpx #$0408
F282: 20 0C    bra  $F290
F284: 23 08    bls  $F28E
F286: 08       inx  
F287: 05       asld 
F288: 8C 06 F8 cmpx #$06F8
F28B: 30       tsx  
F28C: 8C 02 F8 cmpx #$02F8
F28F: 10       sba  
F290: 8C 08 08 cmpx #$0808
F293: 30       tsx  
F294: 0C       clc  
F295: 05       asld 
F296: 08       inx  
F297: 18       xgdx 
F298: 0C       clc  
F299: 23 08    bls  $F2A3
F29B: 08       inx  
F29C: 05       asld 
F29D: 8C 0A E8 cmpx #$0AE8
F2A0: 20 8C    bra  $F22E
F2A2: 0C       clc  
F2A3: F8 20 0C eorb $200C
F2A6: 11       cba  
F2A7: F8 08 8C eorb $088C
F2AA: 0E       cli  
F2AB: 08       inx  
F2AC: 20 0C    bra  $F2BA
F2AE: 10       sba  
F2AF: 08       inx  
F2B0: 08       inx  
F2B1: C3 8C 12 addd #$8C12
F2B4: D8 10    eorb $10
F2B6: E8 10    eorb $10,x
F2B8: F8 10 C3 eorb $10C3
F2BB: CC 18 18 ldd  #$1818
F2BE: 08       inx  
F2BF: 08       inx  
F2C0: 08       inx  
F2C1: F8 08 03 eorb $0803
F2C4: 8C 1E F8 cmpx #$1EF8
F2C7: 10       sba  
F2C8: 8C 20 08 cmpx #$2008
F2CB: 20 0C    bra  $F2D9
F2CD: 22 08    bhi  $F2D7
F2CF: 08       inx  
F2D0: E4 8D    andb $8D,x
F2D2: 22 F2    bhi  $F2C6
F2D4: 33       pulb 
F2D5: E4 8D    andb $8D,x
F2D7: 2A F2    bpl  $F2CB
F2D9: 33       pulb 
F2DA: 05       asld 
F2DB: 8D 00    bsr  $F2DD
F2DD: F8 20 0D eorb $200D
F2E0: 21 F8    brn  $F2DA
F2E2: 08       inx  
F2E3: 8D 02    bsr  $F2E7
F2E5: 08       inx  
F2E6: 30       tsx  
F2E7: 8D 04    bsr  $F2ED
F2E9: 08       inx  
F2EA: 10       sba  
F2EB: 8D 06    bsr  $F2F3
F2ED: 18       xgdx 
F2EE: 30       tsx  
F2EF: E4 8D    andb $8D,x
F2F1: 08       inx  
F2F2: F2 33 E4 sbcb $33E4
F2F5: 8D 10    bsr  $F307
F2F7: F2 33 05 sbcb $3305
F2FA: 8D 18    bsr  $F314
F2FC: F8 20 0D eorb $200D
F2FF: 20 F8    bra  $F2F9
F301: 08       inx  
F302: 8D 1A    bsr  $F31E
F304: 08       inx  
F305: 30       tsx  
F306: 8D 1C    bsr  $F324
F308: 08       inx  
F309: 10       sba  
F30A: 8D 1E    bsr  $F32A
F30C: 18       xgdx 
F30D: 30       tsx  
F30E: 84 8D    anda #$8D
F310: 98 F8    eora $F8
F312: 10       sba  
F313: 9E F8    lds  $F8
F315: 30       tsx  
F316: A0 08    suba $08,x
F318: 30       tsx  
F319: 9C 08    cmpx $08
F31B: 10       sba  
F31C: C4 8D    andb #$8D
F31E: 96 F4    lda  $F4
F320: 30       tsx  
F321: F4 10 04 andb $1004
F324: 30       tsx  
F325: 04       lsrd 
F326: 10       sba  
F327: 04       lsrd 
F328: 4C       inca 
F329: E7 10    stb  $10,x
F32B: 08       inx  
F32C: CC DC 00 ldd  #$DC00
F32F: 10       sba  
F330: CC F8 08 ldd  #$F808
F333: 30       tsx  
F334: CC FA F8 ldd  #$FAF8
F337: 30       tsx  
F338: 05       asld 
F339: CC D8 10 ldd  #$D810
F33C: 20 4C    bra  $F38A
F33E: E7 10    stb  $10,x
F340: 08       inx  
F341: CC DA 00 ldd  #$DA00
F344: 30       tsx  
F345: CC DC 00 ldd  #$DC00
F348: 10       sba  
F349: CC DE F0 ldd  #$DEF0
F34C: 30       tsx  
F34D: 04       lsrd 
F34E: CC E0 08 ldd  #$E008
F351: 30       tsx  
F352: CC E2 08 ldd  #$E208
F355: 10       sba  
F356: CC E4 F8 ldd  #$E4F8
F359: 20 4C    bra  $F3A7
F35B: E6 F8    ldb  $F8,x
F35D: 08       inx  
F35E: C4 CC    andb #$CC
F360: E8 10    eorb $10,x
F362: 30       tsx  
F363: 10       sba  
F364: 10       sba  
F365: 00       illegal
F366: 30       tsx  
F367: 00       illegal
F368: 10       sba  
F369: C4 CC    andb #$CC
F36B: F0 0C 30 subb $0C30
F36E: 0C       clc  
F36F: 10       sba  
F370: FC 30 FC ldd  $30FC
F373: 10       sba  
F374: 00       illegal
F375: 00       illegal
F376: 00       illegal
F377: 00       illegal
F378: 00       illegal
F379: 00       illegal
F37A: 00       illegal
F37B: 00       illegal
F37C: 00       illegal
F37D: 00       illegal
F37E: 00       illegal
F37F: 00       illegal
F380: 00       illegal
F381: 00       illegal
F382: 00       illegal
F383: 00       illegal
F384: 00       illegal
F385: 00       illegal
F386: 00       illegal
F387: 00       illegal
F388: 00       illegal
F389: 00       illegal
F38A: 00       illegal
F38B: 00       illegal
F38C: 00       illegal
F38D: 00       illegal
F38E: 00       illegal
F38F: 00       illegal
F390: F3 B2 F3 addd $B2F3
F393: C7 F3    stb  #$F3
F395: D4 F3    andb $F3
F397: E1 F3    cmpb $F3,x
F399: F6 F4 07 ldb  $F407
F39C: F4 1A F4 andb $1AF4
F39F: 25 F4    bcs  $F395
F3A1: 36       psha 
F3A2: F4 47 F4 andb $47F4
F3A5: 58       aslb 
F3A6: F4 69 F4 andb $69F4
F3A9: 7A F4 8B dec  $F48B
F3AC: F4 9C F4 andb $9CF4
F3AF: A9 F4    adca $F4,x
F3B1: BE 05 8E lds  $058E
F3B4: BE EC 1E lds  $EC1E
F3B7: 8E C0 FC lds  #$C0FC
F3BA: 1E       illegal
F3BB: 0E       cli  
F3BC: C5 FC    bitb #$FC
F3BE: 06       tap  
F3BF: 8E C2 0C lds  #$C20C
F3C2: 1E       illegal
F3C3: 0E       cli  
F3C4: C4 0C    andb #$0C
F3C6: 06       tap  
F3C7: 03       illegal
F3C8: 8E C6 00 lds  #$C600
F3CB: 0E       cli  
F3CC: 8E C8 10 lds  #$C810
F3CF: 0E       cli  
F3D0: 8E CA 20 lds  #$CA20
F3D3: 0E       cli  
F3D4: 03       illegal
F3D5: 8E CC FD lds  #$CCFD
F3D8: 0F       sei  
F3D9: 8E CE 0D lds  #$CE0D
F3DC: 0F       sei  
F3DD: 8E D0 1D lds  #$D01D
F3E0: 0F       sei  
F3E1: 05       asld 
F3E2: 8E D2 FB lds  #$D2FB
F3E5: 18       xgdx 
F3E6: 8E D4 0B lds  #$D40B
F3E9: 18       xgdx 
F3EA: 8E D6 1B lds  #$D61B
F3ED: 18       xgdx 
F3EE: 0E       cli  
F3EF: D8 FB    eorb $FB
F3F1: 00       illegal
F3F2: 0E       cli  
F3F3: D9 0B    adcb $0B
F3F5: 00       illegal
F3F6: 04       lsrd 
F3F7: 8F 00 02 sts  #$0002
F3FA: 18       xgdx 
F3FB: 0F       sei  
F3FC: 0E       cli  
F3FD: 02       illegal
F3FE: 00       illegal
F3FF: 8F 02 12 sts  #$0212
F402: 18       xgdx 
F403: 0F       sei  
F404: 12       asx1 1,s
F405: 12       asx1 1,s
F406: 00       illegal
F407: 24 F4    bcc  $F3FD
F409: 12       asx1 1,s
F40A: 8F 04 0F sts  #$040F
F40D: 09       dex  
F40E: 8F 06 0F sts  #$060F
F411: 08       inx  
F412: 04       lsrd 
F413: 18       xgdx 
F414: 04       lsrd 
F415: 00       illegal
F416: 14       illegal
F417: 18       xgdx 
F418: 14       illegal
F419: 00       illegal
F41A: 24 F4    bcc  $F410
F41C: 12       asx1 1,s
F41D: 8F 0A 0F sts  #$0A0F
F420: 16       tab  
F421: 8F 0C 0F sts  #$0C0F
F424: 1A       slp  
F425: 04       lsrd 
F426: 0F       sei  
F427: 0F       sei  
F428: 00       illegal
F429: 1E       illegal
F42A: 8F 10 00 sts  #$1000
F42D: 06       tap  
F42E: 0F       sei  
F42F: 13       asx2 1,s
F430: 10       sba  
F431: 1E       illegal
F432: 8F 14 10 sts  #$1410
F435: 06       tap  
F436: 04       lsrd 
F437: 0F       sei  
F438: 17       tba  
F439: 04       lsrd 
F43A: 28 8F    bvc  $F3CB
F43C: 18       xgdx 
F43D: 04       lsrd 
F43E: 10       sba  
F43F: 0F       sei  
F440: 1B       aba  
F441: 14       illegal
F442: 28 8F    bvc  $F3D3
F444: 1C       illegal
F445: 14       illegal
F446: 10       sba  
F447: 04       lsrd 
F448: 8F 1E 01 sts  #$1E01
F44B: 1C       illegal
F44C: 0F       sei  
F44D: 23 01    bls  $F450
F44F: 04       lsrd 
F450: 8F 20 11 sts  #$2011
F453: 1C       illegal
F454: 0F       sei  
F455: 22 11    bhi  $F468
F457: 04       lsrd 
F458: 04       lsrd 
F459: 8F 24 01 sts  #$2401
F45C: 1F       illegal
F45D: 0F       sei  
F45E: 29 01    bvs  $F461
F460: 07       tpa  
F461: 8F 26 11 sts  #$2611
F464: 1F       illegal
F465: 0F       sei  
F466: 28 11    bvc  $F479
F468: 07       tpa  
F469: 04       lsrd 
F46A: 8F 2A 03 sts  #$2A03
F46D: 1F       illegal
F46E: 0F       sei  
F46F: 2F 03    ble  $F474
F471: 07       tpa  
F472: 8F 2C 13 sts  #$2C13
F475: 1F       illegal
F476: 0F       sei  
F477: 2E 13    bgt  $F48C
F479: 07       tpa  
F47A: 04       lsrd 
F47B: 8F 30 FC sts  #$30FC
F47E: 1F       illegal
F47F: 0F       sei  
F480: 35       txs  
F481: FC 07 8F ldd  $078F
F484: 32       pula 
F485: 0C       clc  
F486: 1F       illegal
F487: 0F       sei  
F488: 34       des  
F489: 0C       clc  
F48A: 07       tpa  
F48B: 04       lsrd 
F48C: 8F 36 06 sts  #$3606
F48F: 1C       illegal
F490: 0F       sei  
F491: 3B       rti  
F492: 06       tap  
F493: 04       lsrd 
F494: 8F 38 16 sts  #$3816
F497: 1C       illegal
F498: 0F       sei  
F499: 3A       abx  
F49A: 16       tab  
F49B: 04       lsrd 
F49C: 03       illegal
F49D: 8F 3C DC sts  #$3CDC
F4A0: 10       sba  
F4A1: 8F 3E EC sts  #$3EEC
F4A4: 10       sba  
F4A5: 8F 40 FC sts  #$40FC
F4A8: 10       sba  
F4A9: 05       asld 
F4AA: 8F 42 F0 sts  #$42F0
F4AD: 20 0F    bra  $F4BE
F4AF: 49       rola 
F4B0: F0 08 8F subb $088F
F4B3: 44       lsra 
F4B4: 00       illegal
F4B5: 20 0F    bra  $F4C6
F4B7: 48       asla 
F4B8: 00       illegal
F4B9: 08       inx  
F4BA: 8F 46 10 sts  #$4610
F4BD: 10       sba  
F4BE: 89 00    adca #$00
F4C0: 00       illegal
F4C1: F0 10 00 subb $1000
F4C4: F0 00 00 subb $0000
F4C7: F0 F0 00 subb $F000
F4CA: 00       illegal
F4CB: 10       sba  
F4CC: 00       illegal
F4CD: 00       illegal
F4CE: 00       illegal
F4CF: 00       illegal
F4D0: 00       illegal
F4D1: F0 00 10 subb $0010
F4D4: 10       sba  
F4D5: 00       illegal
F4D6: 10       sba  
F4D7: 00       illegal
F4D8: 00       illegal
F4D9: 10       sba  
F4DA: F0 F4 E7 subb $F4E7
F4DD: F4 F2 F4 andb $F2F4
F4E0: F9 F5 0C adcb $F50C
F4E3: F5 17 F5 bitb $17F5
F4E6: 22 22    bhi  $F50A
F4E8: F4 EE 8D andb $EE8D
F4EB: 62 8D 64 oim  #$8D,$64,x
F4EE: F8 10 08 eorb $1008
F4F1: 10       sba  
F4F2: 22 F4    bhi  $F4E8
F4F4: EE 8D    ldx  $8D,x
F4F6: 66 8D    ror  $8D,x
F4F8: 68 24    asl  $24,x
F4FA: F5 04 8D bitb $048D
F4FD: 6A 0D    dec  $0D,x
F4FF: 6F 8D    clr  $8D,x
F501: 6C 0D    inc  $0D,x
F503: 6E F8    jmp  $F8,x
F505: 20 F8    bra  $F4FF
F507: 08       inx  
F508: 08       inx  
F509: 20 08    bra  $F513
F50B: 08       inx  
F50C: 24 F5    bcc  $F503
F50E: 04       lsrd 
F50F: 8D 70    bsr  $F581
F511: 0D       sec  
F512: 75 8D 72 eim  #$8D,$72
F515: 0D       sec  
F516: 74 24 F5 lsr  $24F5
F519: 04       lsrd 
F51A: 8D 76    bsr  $F592
F51C: 0D       sec  
F51D: 7B 8D 78 tim  #$8D,$78
F520: 0D       sec  
F521: 7A 24 F5 dec  $24F5
F524: 04       lsrd 
F525: 8D 7C    bsr  $F5A3
F527: 0D       sec  
F528: 81 8D    cmpa #$8D
F52A: 7E 0D 80 jmp  $0D80
F52D: F5 39 F5 bitb $39F5
F530: 44       lsra 
F531: F5 4B F5 bitb $4BF5
F534: 52       illegal
F535: F5 59 F5 bitb $59F5
F538: 60 22    neg  $22,x
F53A: F5 40 8D bitb $408D
F53D: 82 8D    sbca #$8D
F53F: 84 F8    anda #$F8
F541: 10       sba  
F542: 08       inx  
F543: 10       sba  
F544: 22 F5    bhi  $F53B
F546: 40       nega 
F547: 8D 86    bsr  $F4CF
F549: 8D 88    bsr  $F4D3
F54B: 22 F5    bhi  $F542
F54D: 40       nega 
F54E: 8D 8A    bsr  $F4DA
F550: 8D 8C    bsr  $F4DE
F552: 22 F5    bhi  $F549
F554: 40       nega 
F555: 8D 8E    bsr  $F4E5
F557: 8D 90    bsr  $F4E9
F559: 22 F5    bhi  $F550
F55B: 40       nega 
F55C: 8D 92    bsr  $F4F0
F55E: 8D 94    bsr  $F4F4
F560: 84 00    anda #$00
F562: 00       illegal
F563: F8 08 00 eorb $0800
F566: F8 F8 00 eorb $F800
F569: 08       inx  
F56A: 08       inx  
F56B: 00       illegal
F56C: 08       inx  
F56D: F8 F5 A2 eorb $F5A2
F570: F5 A7 F5 bitb $A7F5
F573: AC F5    cmpx $F5,x
F575: B1 F5 B6 cmpa $F5B6
F578: F5 BB F5 bitb $BBF5
F57B: C0 F5    subb #$F5
F57D: C5 F5    bitb #$F5
F57F: CA F5    orb  #$F5
F581: CF F5 D4 stx  #$F5D4
F584: F5 D9 F5 bitb $D9F5
F587: DE F5    ldx  $F5
F589: E3 F5    addd $F5,x
F58B: E8 F5    eorb $F5,x
F58D: ED F5    std  $F5,x
F58F: F2 F5 F7 sbcb $F5F7
F592: F5 FC F6 bitb $FCF6
F595: 01       nop  
F596: F6 06 F6 ldb  $06F6
F599: 0B       sev  
F59A: F6 10 F6 ldb  $10F6
F59D: 15       illegal
F59E: F6 1A F6 ldb  $1AF6
F5A1: 1F       illegal
F5A2: 01       nop  
F5A3: 09       dex  
F5A4: A8 00    eora $00,x
F5A6: 00       illegal
F5A7: 01       nop  
F5A8: 09       dex  
F5A9: A9 00    adca $00,x
F5AB: 00       illegal
F5AC: 01       nop  
F5AD: 09       dex  
F5AE: AA 00    ora  $00,x
F5B0: 00       illegal
F5B1: 01       nop  
F5B2: 09       dex  
F5B3: AB 00    adda $00,x
F5B5: 00       illegal
F5B6: 01       nop  
F5B7: 09       dex  
F5B8: AC 00    cmpx $00,x
F5BA: 00       illegal
F5BB: 01       nop  
F5BC: 09       dex  
F5BD: AD 00    jsr  $00,x
F5BF: 00       illegal
F5C0: 01       nop  
F5C1: 09       dex  
F5C2: AE 00    lds  $00,x
F5C4: 00       illegal
F5C5: 01       nop  
F5C6: 09       dex  
F5C7: AF 00    sts  $00,x
F5C9: 00       illegal
F5CA: 01       nop  
F5CB: 09       dex  
F5CC: B0 00 00 suba $0000
F5CF: 01       nop  
F5D0: 09       dex  
F5D1: B1 00 00 cmpa $0000
F5D4: 01       nop  
F5D5: 09       dex  
F5D6: B2 00 00 sbca $0000
F5D9: 01       nop  
F5DA: 09       dex  
F5DB: B3 00 00 subd $0000
F5DE: 01       nop  
F5DF: 09       dex  
F5E0: B4 00 00 anda $0000
F5E3: 01       nop  
F5E4: 09       dex  
F5E5: B5 00 00 bita $0000
F5E8: 01       nop  
F5E9: 09       dex  
F5EA: B6 00 00 lda  $0000
F5ED: 01       nop  
F5EE: 09       dex  
F5EF: B7 00 00 sta  $0000
F5F2: 01       nop  
F5F3: 09       dex  
F5F4: B8 00 00 eora $0000
F5F7: 01       nop  
F5F8: 09       dex  
F5F9: B9 00 00 adca $0000
F5FC: 01       nop  
F5FD: 09       dex  
F5FE: BA 00 00 ora  $0000
F601: 01       nop  
F602: 09       dex  
F603: BB 00 00 adda $0000
F606: 01       nop  
F607: 09       dex  
F608: BC 00 00 cmpx $0000
F60B: 01       nop  
F60C: 09       dex  
F60D: BD 00 00 jsr  $0000
F610: 01       nop  
F611: 09       dex  
F612: BE 00 00 lds  $0000
F615: 01       nop  
F616: 09       dex  
F617: BF 00 00 sts  $0000
F61A: 01       nop  
F61B: 09       dex  
F61C: C0 00    subb #$00
F61E: 00       illegal
F61F: 01       nop  
F620: 00       illegal
F621: 00       illegal
F622: 00       illegal
F623: 00       illegal
F624: F6 4E F6 ldb  $4EF6
F627: 59       rolb 
F628: F6 64 F6 ldb  $64F6
F62B: 6B F6 72 tim  #$F6,$72,x
F62E: F6 79 F6 ldb  $79F6
F631: 80 F6    suba #$F6
F633: 87 F6    sta  #$F6
F635: 87 F6    sta  #$F6
F637: 8E F6 95 lds  #$F695
F63A: F6 9C F6 ldb  $9CF6
F63D: A3 F6    subd $F6,x
F63F: AC F6    cmpx $F6,x
F641: B5 F6 C0 bita $F6C0
F644: F6 C7 F6 ldb  $C7F6
F647: D5 F6    bitb $F6
F649: DE F6    ldx  $F6
F64B: E3 F6    addd $F6,x
F64D: EC 22    ldd  $22,x
F64F: F6 55 09 ldb  $5509
F652: C1 09    cmpb #$09
F654: C5 F8    bitb #$F8
F656: 00       illegal
F657: 08       inx  
F658: 00       illegal
F659: 22 F6    bhi  $F651
F65B: 60 89    neg  $89,x
F65D: C2 09    sbcb #$09
F65F: C4 00    andb #$00
F661: 08       inx  
F662: 00       illegal
F663: F0 22 F6 subb $22F6
F666: 60 89    neg  $89,x
F668: C6 09    ldb  #$09
F66A: CB 22    addb #$22
F66C: F6 60 89 ldb  $6089
F66F: C8 09    eorb #$09
F671: CA 22    orb  #$22
F673: F6 55 09 ldb  $5509
F676: CC 09 CD ldd  #$09CD
F679: 22 F6    bhi  $F671
F67B: 55       illegal
F67C: 09       dex  
F67D: CE 09 CF ldx  #$09CF
F680: 22 F6    bhi  $F678
F682: 55       illegal
F683: 09       dex  
F684: D0 09    subb $09
F686: D1 22    cmpb $22
F688: F6 55 09 ldb  $5509
F68B: D8 09    eorb $09
F68D: D9 22    adcb $22
F68F: F6 55 09 ldb  $5509
F692: DC 09    ldd  $09
F694: DD 22    std  $22
F696: F6 55 09 ldb  $5509
F699: E4 09    andb $09,x
F69B: E5 22    bitb $22,x
F69D: F6 55 09 ldb  $5509
F6A0: DA 09    orb  $09
F6A2: DB 02    addb $02
F6A4: 09       dex  
F6A5: D3 F8    addd $F8
F6A7: F8 89 D6 eorb $89D6
F6AA: 08       inx  
F6AB: 00       illegal
F6AC: 02       illegal
F6AD: 09       dex  
F6AE: E8 F8    eorb $F8,x
F6B0: F8 89 E6 eorb $89E6
F6B3: 08       inx  
F6B4: 00       illegal
F6B5: 22 F6    bhi  $F6AD
F6B7: BC 89 DE cmpx $89DE
F6BA: 09       dex  
F6BB: E3 00    addd $00,x
F6BD: 08       inx  
F6BE: 00       illegal
F6BF: F0 22 F6 subb $22F6
F6C2: BC 89 E0 cmpx $89E0
F6C5: 09       dex  
F6C6: E2 84    sbcb $84,x
F6C8: 00       illegal
F6C9: 00       illegal
F6CA: F8 08 00 eorb $0800
F6CD: F8 F8 00 eorb $F800
F6D0: 08       inx  
F6D1: 08       inx  
F6D2: 00       illegal
F6D3: 08       inx  
F6D4: F8 02 09 eorb $0209
F6D7: DC F8    ldd  $F8
F6D9: 00       illegal
F6DA: 09       dex  
F6DB: DB 08    addb $08
F6DD: 00       illegal
F6DE: 01       nop  
F6DF: 09       dex  
F6E0: DC 00    ldd  $00
F6E2: 00       illegal
F6E3: 02       illegal
F6E4: 09       dex  
F6E5: DA F8    orb  $F8
F6E7: 00       illegal
F6E8: 09       dex  
F6E9: DB 09    addb $09
F6EB: 00       illegal
F6EC: 01       nop  
F6ED: 09       dex  
F6EE: DB 00    addb $00
F6F0: 00       illegal
F6F1: F7 2F F7 stb  $2FF7
F6F4: 34       des  
F6F5: F7 39 F7 stb  $39F7
F6F8: 3E       wai  
F6F9: F7 43 F7 stb  $43F7
F6FC: 48       asla 
F6FD: F7 4D F7 stb  $4DF7
F700: 52       illegal
F701: F7 57 F7 stb  $57F7
F704: 5C       incb 
F705: F7 61 F7 stb  $61F7
F708: 66 F7    ror  $F7,x
F70A: 6B F7 70 tim  #$F7,$70,x
F70D: F7 75 F7 stb  $75F7
F710: 7A F7 7F dec  $F77F
F713: F7 84 F7 stb  $84F7
F716: 89 F7    adca #$F7
F718: 8E F7 93 lds  #$F793
F71B: F7 98 F7 stb  $98F7
F71E: 9D F7    jsr  $F7
F720: A2 F7    sbca $F7,x
F722: A7 F7    sta  $F7,x
F724: AC F7    cmpx $F7,x
F726: B1 F7 BC cmpa $F7BC
F729: F7 C3 F7 stb  $C3F7
F72C: CA F7    orb  #$F7
F72E: D1 01    cmpb $01
F730: 0E       cli  
F731: 7E 00 00 jmp  $0000
F734: 01       nop  
F735: 0E       cli  
F736: 82 00    sbca #$00
F738: 00       illegal
F739: 01       nop  
F73A: 0E       cli  
F73B: 86 00    lda  #$00
F73D: 00       illegal
F73E: 01       nop  
F73F: 0E       cli  
F740: 8A 00    ora  #$00
F742: 00       illegal
F743: 01       nop  
F744: 0E       cli  
F745: 8E 00 00 lds  #$0000
F748: 01       nop  
F749: 0E       cli  
F74A: 7F 00 00 clr  $0000
F74D: 01       nop  
F74E: 0E       cli  
F74F: 83 00 00 subd #$0000
F752: 01       nop  
F753: 0E       cli  
F754: 87 00    sta  #$00
F756: 00       illegal
F757: 01       nop  
F758: 0E       cli  
F759: 8B 00    adda #$00
F75B: 00       illegal
F75C: 01       nop  
F75D: 0E       cli  
F75E: 8F 00 00 sts  #$0000
F761: 01       nop  
F762: 0E       cli  
F763: 92 00    sbca $00
F765: 00       illegal
F766: 01       nop  
F767: 0E       cli  
F768: 80 00    suba #$00
F76A: 00       illegal
F76B: 01       nop  
F76C: 0E       cli  
F76D: 84 00    anda #$00
F76F: 00       illegal
F770: 01       nop  
F771: 0E       cli  
F772: 88 00    eora #$00
F774: 00       illegal
F775: 01       nop  
F776: 0E       cli  
F777: 8C 00 00 cmpx #$0000
F77A: 01       nop  
F77B: 0E       cli  
F77C: 90 00    suba $00
F77E: 00       illegal
F77F: 01       nop  
F780: 0E       cli  
F781: 93 00    subd $00
F783: 00       illegal
F784: 01       nop  
F785: 0E       cli  
F786: 81 00    cmpa #$00
F788: 00       illegal
F789: 01       nop  
F78A: 0E       cli  
F78B: 85 00    bita #$00
F78D: 00       illegal
F78E: 01       nop  
F78F: 0E       cli  
F790: 89 00    adca #$00
F792: 00       illegal
F793: 01       nop  
F794: 0E       cli  
F795: 8D 00    bsr  $F797
F797: 00       illegal
F798: 01       nop  
F799: 0E       cli  
F79A: 91 00    cmpa $00
F79C: 00       illegal
F79D: 01       nop  
F79E: 0E       cli  
F79F: 7D 00 00 tst  $0000
F7A2: 01       nop  
F7A3: 0E       cli  
F7A4: AA 00    ora  $00,x
F7A6: 00       illegal
F7A7: 01       nop  
F7A8: 0E       cli  
F7A9: 94 00    anda $00
F7AB: 00       illegal
F7AC: 01       nop  
F7AD: 0E       cli  
F7AE: 95 00    bita $00
F7B0: 00       illegal
F7B1: 22 F7    bhi  $F7AA
F7B3: B8 8E 96 eora $8E96
F7B6: 8E 9A F8 lds  #$9AF8
F7B9: 00       illegal
F7BA: 08       inx  
F7BB: 00       illegal
F7BC: 22 F7    bhi  $F7B5
F7BE: B8 8E 9E eora $8E9E
F7C1: 8E A2 22 lds  #$A222
F7C4: F7 B8 8E stb  $B88E
F7C7: 98 8E    eora $8E
F7C9: 9C 22    cmpx $22
F7CB: F7 B8 8E stb  $B88E
F7CE: A0 8E    suba $8E,x
F7D0: A4 22    anda $22,x
F7D2: F7 B8 8E stb  $B88E
F7D5: A6 8E    lda  $8E,x


FFEA:
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
