
lb3_6c00:		; [global]
6C00: 7E 6F 8C       JMP    $6F8C
lb3_6c03:		; [global]
6C03: 7E 6C 22       JMP    $6C22
lb3_6c06:		; [global]
6C06: 7E 6C 21       JMP    $6C21
lb3_6c09:		; [global]
6C09: 7E 6C 21       JMP    $6C21
lb3_6c0c:		; [global]
6C0C: 7E 6C 21       JMP    $6C21
lb3_6c0f:		; [global]
6C0F: 7E 70 0C       JMP    $700C
lb3_6c12:		; [global]
6C12: 7E 6F BF       JMP    $6FBF
lb3_6c15:		; [global]
6C15: 7E 71 5E       JMP    $715E
lb3_6c18:		; [global]
6C18: 7E 74 E7       JMP    $74E7
lb3_6c1b:		; [global]
6C1B: 7E 75 2B       JMP    $752B
lb3_6c1e:		; [global]
6C1E: 7E 6E 49       JMP    $6E49

6C21: 39             RTS
6C22: A6 88 4C       LDA    $4C,X
6C25: 84 20          ANDA   #$20
6C27: 27 3D          BEQ    $6C66
6C29: A6 88 4C       LDA    $4C,X
6C2C: 84 10          ANDA   #$10
6C2E: 26 16          BNE    $6C46
6C30: 17 01 4D       LBSR   $6D80
6C33: A6 88 31       LDA    $31,X
6C36: 81 05          CMPA   #$05
6C38: 25 0C          BCS    $6C46
6C3A: A6 88 4C       LDA    $4C,X
6C3D: 84 EF          ANDA   #$EF
6C3F: 84 DF          ANDA   #$DF
6C41: A7 88 4C       STA    $4C,X
6C44: 20 20          BRA    $6C66
6C46: 17 00 1E       LBSR   $6C67
6C49: 17 00 3F       LBSR   $6C8B
6C4C: 17 01 0A       LBSR   $6D59
6C4F: A6 88 14       LDA    $14,X
6C52: 81 03          CMPA   #$03
6C54: 24 E4          BCC    $6C3A
6C56: 96 51          LDA    $51
6C58: 81 FF          CMPA   #$FF
6C5A: 26 0A          BNE    $6C66
6C5C: 6C 88 16       INC    $16,X
6C5F: A6 88 16       LDA    $16,X
6C62: 81 05          CMPA   #$05
6C64: 24 D4          BCC    $6C3A
6C66: 39             RTS
6C67: A6 88 17       LDA    $17,X
6C6A: 2B 1E          BMI    $6C8A
6C6C: 8A 80          ORA    #$80
6C6E: A7 88 17       STA    $17,X
6C71: 86 21          LDA    #$21
6C73: A7 88 13       STA    $13,X
6C76: 6F 88 14       CLR    $14,X
6C79: 6F 88 15       CLR    $15,X
6C7C: 6F 88 16       CLR    $16,X
6C7F: 86 1B          LDA    #$1B
6C81: 8C 03 A2       CMPX   #$03A2
6C84: 27 01          BEQ    $6C87
6C86: 4C             INCA
6C87: 17 93 3F       LBSR   $FFC9
6C8A: 39             RTS
6C8B: 34 7E          PSHS   U,Y,X,DP,D
6C8D: A6 88 14       LDA    $14,X
6C90: 81 03          CMPA   #$03
6C92: 24 46          BCC    $6CDA
6C94: 17 01 76       LBSR   $6E0D
6C97: A6 88 45       LDA    $45,X
6C9A: A1 88 47       CMPA   $47,X		; useless stray cmp, sta does the job below
6C9D: A7 88 47       STA    $47,X
6CA0: 27 0A          BEQ    $6CAC
6CA2: 6C 88 15       INC    $15,X
6CA5: A6 88 15       LDA    $15,X
6CA8: 81 08          CMPA   #$08
6CAA: 25 22          BCS    $6CCE
6CAC: 86 00          LDA    #$00
6CAE: A7 88 15       STA    $15,X
6CB1: E6 88 47       LDB    $47,X
6CB4: 10 8E 6D 49    LDY    #$6D49
6CB8: A6 88 13       LDA    $13,X
6CBB: AB A5          ADDA   B,Y			; [bank_address]
6CBD: 81 20          CMPA   #$20
6CBF: 26 04          BNE    $6CC5
6CC1: 86 3C          LDA    #$3C
6CC3: 20 06          BRA    $6CCB
6CC5: 81 3D          CMPA   #$3D
6CC7: 26 02          BNE    $6CCB
6CC9: 86 21          LDA    #$21
6CCB: A7 88 13       STA    $13,X
6CCE: A6 88 40       LDA    $40,X
6CD1: 84 07          ANDA   #$07
6CD3: 48             ASLA
6CD4: 10 8E 6C DC    LDY    #jump_table_6cdc
6CD8: AD B6          JSR    [A,Y]		; [indirect_jump] [nb_entries=8]
6CDA: 35 FE          PULS   D,DP,X,Y,U,PC

jump_table_6cdc:
    dc.w	$6CEC 
	dc.w	$6CED 
	dc.w	$6D0C 
	dc.w	$6CEC 
	dc.w	$6CED 
	dc.w	$6CEC 
	dc.w	$6CEC 
	dc.w	$6CEC

6CEC: 39             RTS
6CED: A6 88 31       LDA    $31,X
6CF0: 48             ASLA
6CF1: AB 88 31       ADDA   $31,X
6CF4: 48             ASLA
6CF5: 10 8E 0E 76    LDY    #$0E76
6CF9: 31 A6          LEAY   A,Y
6CFB: E6 88 14       LDB    $14,X
6CFE: A6 88 13       LDA    $13,X
6D01: A7 A5          STA    B,Y
6D03: 6C 88 14       INC    $14,X
6D06: 86 21          LDA    #$21
6D08: A7 88 13       STA    $13,X
6D0B: 39             RTS
6D0C: A6 88 14       LDA    $14,X
6D0F: 27 37          BEQ    $6D48
6D11: 6A 88 14       DEC    $14,X
6D14: A6 88 31       LDA    $31,X
6D17: 48             ASLA
6D18: AB 88 31       ADDA   $31,X
6D1B: 48             ASLA
6D1C: 10 8E 0E 76    LDY    #$0E76
6D20: 31 A6          LEAY   A,Y
6D22: E6 88 14       LDB    $14,X
6D25: 86 3C          LDA    #$3C
6D27: A7 A4          STA    ,Y
6D29: 86 21          LDA    #$21
6D2B: A7 88 13       STA    $13,X
6D2E: 10 8E 19 0E    LDY    #$190E
6D32: 8C 03 A2       CMPX   #$03A2
6D35: 27 04          BEQ    $6D3B
6D37: 10 8E 19 36    LDY    #$1936
6D3B: A6 88 14       LDA    $14,X
6D3E: 4C             INCA
6D3F: 48             ASLA
6D40: 31 A6          LEAY   A,Y
6D42: 86 00          LDA    #$00
6D44: A7 A4          STA    ,Y
6D46: A7 21          STA    $1,Y
6D48: 39             RTS

6D59: 34 7E          PSHS   U,Y,X,DP,D
6D5B: A6 88 14       LDA    $14,X
6D5E: 81 03          CMPA   #$03
6D60: 24 1C          BCC    $6D7E
6D62: 10 8E 19 0E    LDY    #$190E
6D66: 8C 03 A2       CMPX   #$03A2
6D69: 27 04          BEQ    $6D6F
6D6B: 10 8E 19 36    LDY    #$1936
6D6F: E6 88 14       LDB    $14,X
6D72: 58             ASLB
6D73: 31 A5          LEAY   B,Y
6D75: 86 80          LDA    #$80
6D77: A7 A0          STA    ,Y+
6D79: A6 88 13       LDA    $13,X
6D7C: A7 A4          STA    ,Y
6D7E: 35 FE          PULS   D,DP,X,Y,U,PC
6D80: 34 7E          PSHS   U,Y,X,DP,D
6D82: A6 88 4C       LDA    $4C,X
6D85: 8A 10          ORA    #$10
6D87: A7 88 4C       STA    $4C,X
6D8A: 6F 88 17       CLR    $17,X
6D8D: 6F 88 31       CLR    $31,X
6D90: A6 88 31       LDA    $31,X
6D93: 48             ASLA
6D94: AB 88 31       ADDA   $31,X
6D97: 48             ASLA
6D98: 10 8E 0E 73    LDY    #$0E73
6D9C: 31 A6          LEAY   A,Y
6D9E: E6 22          LDB    $2,Y
6DA0: E0 88 4B       SUBB   $4B,X
6DA3: E6 21          LDB    $1,Y
6DA5: E2 88 4A       SBCB   $4A,X
6DA8: E6 A4          LDB    ,Y
6DAA: E2 88 49       SBCB   $49,X
6DAD: 25 0C          BCS    $6DBB
6DAF: 6C 88 31       INC    $31,X
6DB2: A6 88 31       LDA    $31,X
6DB5: 81 05          CMPA   #$05
6DB7: 25 D7          BCS    $6D90
6DB9: 20 50          BRA    $6E0B
6DBB: 33 88 49       LEAU   $49,X
6DBE: 10 8E 00 00    LDY    #$0000
6DC2: 86 02          LDA    #$02
6DC4: E6 C6          LDB    A,U
6DC6: E7 A6          STB    A,Y
6DC8: 4A             DECA
6DC9: 2A F9          BPL    $6DC4
6DCB: C6 02          LDB    #$02
6DCD: 10 8E 00 03    LDY    #$0003
6DD1: 86 3C          LDA    #$3C
6DD3: A7 A5          STA    B,Y
6DD5: 5A             DECB
6DD6: 2A FB          BPL    $6DD3
6DD8: A6 88 31       LDA    $31,X
6DDB: 97 0F          STA    $0F
6DDD: 96 0F          LDA    $0F
6DDF: 48             ASLA
6DE0: 9B 0F          ADDA   $0F
6DE2: 48             ASLA
6DE3: 10 8E 0E 73    LDY    #$0E73
6DE7: 31 A6          LEAY   A,Y
6DE9: CE 00 00       LDU    #$0000
6DEC: 4F             CLRA
6DED: E6 A6          LDB    A,Y
6DEF: 34 04          PSHS   B
6DF1: E6 C6          LDB    A,U
6DF3: E7 A6          STB    A,Y
6DF5: 4C             INCA
6DF6: 81 06          CMPA   #$06
6DF8: 25 F3          BCS    $6DED
6DFA: 86 05          LDA    #$05
6DFC: 35 04          PULS   B
6DFE: E7 C6          STB    A,U
6E00: 4A             DECA
6E01: 2A F9          BPL    $6DFC
6E03: 0C 0F          INC    $0F
6E05: 96 0F          LDA    $0F
6E07: 81 05          CMPA   #$05
6E09: 25 D2          BCS    $6DDD
6E0B: 35 FE          PULS   D,DP,X,Y,U,PC

6E0D: 34 7E          PSHS   U,Y,X,DP,D		; D is saved only probably to allocate space
6E0F: 17 91 C1       LBSR   $FFD3
6E12: 1F 89          TFR    A,B
6E14: 84 70          ANDA   #$70
6E16: A7 88 43       STA    $43,X
6E19: A7 E4          STA    ,S
6E1B: A8 88 44       EORA   $44,X
6E1E: A4 E4          ANDA   ,S
6E20: 44             LSRA
6E21: 44             LSRA
6E22: 44             LSRA
6E23: 44             LSRA
6E24: A7 88 40       STA    $40,X
6E27: A6 E4          LDA    ,S
6E29: A7 88 44       STA    $44,X
6E2C: C4 0F          ANDB   #$0F
6E2E: 10 8E 6E 39    LDY    #$6E39
6E32: A6 A5          LDA    B,Y		; [bank_address]
6E34: A7 88 45       STA    $45,X
6E37: 35 FE          PULS   D,DP,X,Y,U,PC

6E49: 17 00 0E       LBSR   $6E5A
6E4C: 17 01 2F       LBSR   $6F7E
6E4F: 86 FF          LDA    #$FF
6E51: 17 8F CF       LBSR   $FE23
6E54: 86 40          LDA    #$40
6E56: 17 8F CA       LBSR   $FE23
6E59: 39             RTS

6E5A: 34 7E          PSHS   U,Y,X,DP,D
6E5C: 32 71          LEAS   -$F,S	; [alloc_locals]
6E5E: CE 0E 76       LDU    #$0E76
6E61: 6F E4          CLR    ,S	; [local]
6E63: 6F 61          CLR    $1,S	; [local]
6E65: 8E 1A 94       LDX    #$1A94
6E68: A6 E4          LDA    ,S	; [local]
6E6A: E6 C6          LDB    A,U
6E6C: C0 21          SUBB   #$21
6E6E: 17 00 5E       LBSR   $6ECF
6E71: 30 04          LEAX   $4,X
6E73: 6C E4          INC    ,S	; [local]
6E75: A6 E4          LDA    ,S	; [local]
6E77: 81 03          CMPA   #$03
6E79: 25 ED          BCS    $6E68
6E7B: 30 89 00 F4    LEAX   $00F4,X
6E7F: 33 46          LEAU   $6,U
6E81: 6F E4          CLR    ,S	; [local]
6E83: 6C 61          INC    $1,S	; [local]
6E85: A6 61          LDA    $1,S		; [local]
6E87: 81 05          CMPA   #$05
6E89: 25 DD          BCS    $6E68
6E8B: 6F E4          CLR    ,S	; [local]
6E8D: 8E 19 0E       LDX    #$190E
6E90: 10 8E 6E C5    LDY    #$6EC5
6E94: A6 E4          LDA    ,S	; [local]
6E96: E6 A6          LDB    A,Y		; [bank_address]
6E98: C0 21          SUBB   #$21
6E9A: 17 00 32       LBSR   $6ECF
6E9D: 30 04          LEAX   $4,X
6E9F: 6C E4          INC    ,S	; [local]
6EA1: A6 E4          LDA    ,S	; [local]
6EA3: 81 0A          CMPA   #$0A
6EA5: 25 ED          BCS    $6E94
6EA7: 6F E4          CLR    ,S	; [local]
6EA9: 8E 1A 8C       LDX    #$1A8C
6EAC: C6 3D          LDB    #$3D
6EAE: EB E4          ADDB   ,S	; [local]
6EB0: C0 21          SUBB   #$21
6EB2: 17 00 1A       LBSR   $6ECF
6EB5: 30 89 01 00    LEAX   $0100,X
6EB9: 6C E4          INC    ,S	; [local]
6EBB: A6 E4          LDA    ,S	; [local]
6EBD: 81 05          CMPA   #$05
6EBF: 25 EB          BCS    $6EAC
6EC1: 32 6F          LEAS   $F,S   ; [free_locals]
6EC3: 35 FE          PULS   D,DP,X,Y,U,PC


6ECF: 34 7E          PSHS   U,Y,X,DP,D
6ED1: 10 8E 6E FA    LDY    #$6EFA
6ED5: 58             ASLB
6ED6: 58             ASLB
6ED7: 4F             CLRA
6ED8: 31 AB          LEAY   D,Y
6EDA: 86 63          LDA    #$63
6EDC: A7 84          STA    ,X		; [video_address]
6EDE: A7 02          STA    $2,X		; [video_address]
6EE0: A7 88 40       STA    $40,X		; [video_address]
6EE3: A7 88 42       STA    $42,X		; [video_address]
6EE6: A6 A0          LDA    ,Y+		; [bank_address]
6EE8: A7 01          STA    $1,X		; [video_address]
6EEA: A6 A0          LDA    ,Y+		; [bank_address]
6EEC: A7 03          STA    $3,X		; [video_address]
6EEE: A6 A0          LDA    ,Y+		; [bank_address]
6EF0: A7 88 41       STA    $41,X		; [video_address]
6EF3: A6 A4          LDA    ,Y		; [bank_address]
6EF5: A7 88 43       STA    $43,X		; [video_address]
6EF8: 35 FE          PULS   D,DP,X,Y,U,PC



6F7E: 34 7E          PSHS   U,Y,X,DP,D                                  
6F80: 86 09          LDA    #$09
6F82: 17 8A 7B       LBSR   $FA00
6F85: 4C             INCA
6F86: 81 0E          CMPA   #$0E
6F88: 25 F8          BCS    $6F82
6F8A: 35 FE          PULS   D,DP,X,Y,U,PC

6F8C: C6 3C          LDB    #$3C
6F8E: 8E 6F A1       LDX    #$6FA1
6F91: 10 8E 0E 73    LDY    #$0E73
6F95: A6 85          LDA    B,X		; [bank_address]
6F97: A7 A5          STA    B,Y
6F99: 5A             DECB
6F9A: 2A F9          BPL    $6F95
6F9C: 86 02          LDA    #$02
6F9E: 97 23          STA    $23
6FA0: 39             RTS

6FBF: 34 7E          PSHS   U,Y,X,DP,D
6FC1: C6 0F          LDB    #$0F
6FC3: 8E 07 5B       LDX    #$075B
6FC6: A6 84          LDA    ,X
6FC8: 10 2B 00 38    LBMI   $7004
6FCC: 86 81          LDA    #$81
6FCE: A7 84          STA    ,X
6FD0: 86 0F          LDA    #$0F
6FD2: A7 88 17       STA    $17,X
6FD5: DC 00          LDD    $00
6FD7: ED 04          STD    $4,X
6FD9: DC 02          LDD    $02
6FDB: ED 06          STD    $6,X
6FDD: DC 04          LDD    $04
6FDF: ED 08          STD    $8,X
6FE1: 96 06          LDA    $06
6FE3: A7 0D          STA    $D,X
6FE5: 80 40          SUBA   #$40
6FE7: A7 03          STA    $3,X
6FE9: 86 30          LDA    #$30
6FEB: A7 0E          STA    $E,X
6FED: 6F 88 31       CLR    $31,X
6FF0: 6F 88 19       CLR    $19,X
6FF3: 6F 88 18       CLR    $18,X
6FF6: 86 20          LDA    #$20
6FF8: A7 01          STA    $1,X
6FFA: 86 02          LDA    #$02
6FFC: A7 88 1B       STA    $1B,X
6FFF: 17 00 F4       LBSR   $70F6
7002: 20 06          BRA    $700A
7004: 30 88 21       LEAX   $21,X
7007: 5A             DECB
7008: 2A BC          BPL    $6FC6
700A: 35 FE          PULS   D,DP,X,Y,U,PC

700C: 34 7E          PSHS   U,Y,X,DP,D
700E: 8E 07 5B       LDX    #$075B
7011: C6 0F          LDB    #$0F
7013: A6 84          LDA    ,X
7015: 2A 10          BPL    $7027
7017: A6 88 17       LDA    $17,X
701A: 81 0F          CMPA   #$0F
701C: 26 09          BNE    $7027
701E: 17 00 11       LBSR   $7032		; useless!
7021: 17 00 0F       LBSR   $7033
7024: 17 00 70       LBSR   $7097
7027: 30 88 21       LEAX   $21,X
702A: 5A             DECB
702B: 2A E6          BPL    $7013
702D: 17 00 FA       LBSR   $712A
7030: 35 FE          PULS   D,DP,X,Y,U,PC
7032: 39             RTS

7033: 34 7E          PSHS   U,Y,X,DP,D
7035: A6 88 31       LDA    $31,X
7038: 85 03          BITA   #$03
703A: 26 59          BNE    $7095
703C: EC 04          LDD    $4,X
703E: FD 0B 31       STD    $0B31
7041: EC 06          LDD    $6,X
7043: FD 0B 33       STD    $0B33
7046: EC 08          LDD    $8,X
7048: FD 0B 35       STD    $0B35
704B: 17 8B 0A       LBSR   $FB58
704E: EC 04          LDD    $4,X
7050: FD 0B 37       STD    $0B37
7053: EC 06          LDD    $6,X
7055: FD 0B 39       STD    $0B39
7058: EC 08          LDD    $8,X
705A: FD 0B 3B       STD    $0B3B
705D: A6 03          LDA    $3,X
705F: B7 0B 3D       STA    $0B3D
7062: 10 8E 0B 3F    LDY    #$0B3F
7066: 6F A0          CLR    ,Y+
7068: 10 8C 0B 4A    CMPY   #$0B4A
706C: 25 F8          BCS    $7066
706E: 86 01          LDA    #$01
7070: B7 0B 3E       STA    $0B3E
7073: 34 10          PSHS   X
7075: 17 8A 88       LBSR   $FB00
7078: 35 10          PULS   X
707A: FC 0B 4E       LDD    $0B4E
707D: ED 04          STD    $4,X
707F: FC 0B 50       LDD    $0B50
7082: ED 06          STD    $6,X
7084: FC 0B 52       LDD    $0B52
7087: ED 08          STD    $8,X
7089: B6 0B 4B       LDA    $0B4B
708C: 84 05          ANDA   #$05
708E: 27 05          BEQ    $7095
7090: 86 01          LDA    #$01
7092: A7 88 31       STA    $31,X
7095: 35 FE          PULS   D,DP,X,Y,U,PC

7097: 34 7E          PSHS   U,Y,X,DP,D
7099: 10 8E 70 A7    LDY    #jump_table_70a7
709D: A6 88 31       LDA    $31,X
70A0: 84 03          ANDA   #$03
70A2: 48             ASLA
70A3: AD B6          JSR    [A,Y]	; [indirect_jump] [nb_entries=3]
70A5: 35 FE          PULS   D,DP,X,Y,U,PC
jump_table_70a7:
    dc.w	$70AD 
	dc.w	$70B8 
	dc.w	$70DF 
 
70AD: 86 00          LDA    #$00
70AF: E6 0D          LDB    $D,X
70B1: 2B 02          BMI    $70B5
70B3: 8A 80          ORA    #$80
70B5: A7 02          STA    $2,X
70B7: 39             RTS

70B8: 86 07          LDA    #$07
70BA: AB 88 18       ADDA   $18,X
70BD: E6 0D          LDB    $D,X
70BF: 2A 02          BPL    $70C3
70C1: 8A 80          ORA    #$80
70C3: A7 02          STA    $2,X
70C5: 6C 88 19       INC    $19,X
70C8: A6 88 19       LDA    $19,X
70CB: 81 04          CMPA   #$04
70CD: 25 0F          BCS    $70DE
70CF: 6F 88 19       CLR    $19,X
70D2: A6 88 18       LDA    $18,X
70D5: 88 01          EORA   #$01
70D7: A7 88 18       STA    $18,X
70DA: 26 02          BNE    $70DE
70DC: 6F 84          CLR    ,X
70DE: 39             RTS

70DF: 86 02          LDA    #$02
70E1: E6 0D          LDB    $D,X
70E3: 2A 02          BPL    $70E7
70E5: 8A 80          ORA    #$80
70E7: A7 02          STA    $2,X
70E9: 6C 88 19       INC    $19,X
70EC: A6 88 19       LDA    $19,X
70EF: 81 04          CMPA   #$04
70F1: 25 02          BCS    $70F5
70F3: 6F 84          CLR    ,X
70F5: 39             RTS
70F6: 8E 09 8C       LDX    #$098C
70F9: A6 84          LDA    ,X
70FB: 2B 2C          BMI    $7129
70FD: 8A 80          ORA    #$80
70FF: A7 84          STA    ,X
7101: C6 00          LDB    #$00
7103: 96 06          LDA    $06
7105: 2A 01          BPL    $7108
7107: 50             NEGB
7108: 1D             SEX
7109: D3 00          ADDD   $00
710B: ED 04          STD    $4,X
710D: DC 02          LDD    $02
710F: ED 06          STD    $6,X
7111: DC 04          LDD    $04
7113: ED 08          STD    $8,X
7115: 86 00          LDA    #$00
7117: D6 06          LDB    $06
7119: 2A 02          BPL    $711D
711B: 86 80          LDA    #$80
711D: A7 03          STA    $3,X
711F: 86 20          LDA    #$20
7121: A7 01          STA    $1,X
7123: 6F 88 19       CLR    $19,X
7126: 6F 88 18       CLR    $18,X
7129: 39             RTS
712A: 8E 09 8C       LDX    #$098C
712D: A6 84          LDA    ,X
712F: 2A 2C          BPL    $715D
7131: 86 03          LDA    #$03
7133: AB 88 18       ADDA   $18,X
7136: E6 03          LDB    $3,X
7138: 2B 02          BMI    $713C
713A: 8A 80          ORA    #$80
713C: A7 02          STA    $2,X
713E: 17 8D CF       LBSR   push_one_sprite_entry_ff10
7141: 6C 88 19       INC    $19,X
7144: A6 88 19       LDA    $19,X
7147: 81 02          CMPA   #$02
7149: 25 12          BCS    $715D
714B: 6F 88 19       CLR    $19,X
714E: 6C 88 18       INC    $18,X
7151: A6 88 18       LDA    $18,X
7154: 81 04          CMPA   #$04
7156: 25 05          BCS    $715D
7158: 6F 88 18       CLR    $18,X
715B: 6F 84          CLR    ,X
715D: 39             RTS
715E: 34 7A          PSHS   U,Y,X,DP,A
7160: 96 36          LDA    current_level_0036
7162: 81 03          CMPA   #$03
7164: 26 24          BNE    $718A
7166: 96 29          LDA    $29
7168: 84 03          ANDA   #$03
716A: 81 03          CMPA   #$03
716C: 27 1C          BEQ    $718A
716E: B6 0E 2D       LDA    $0E2D
7171: 84 0F          ANDA   #$0F
7173: 81 02          CMPA   #$02
7175: 26 13          BNE    $718A
7177: 17 00 14       LBSR   $718E
717A: 17 00 70       LBSR   $71ED
717D: 17 02 A0       LBSR   $7420
7180: 17 88 FD       LBSR   $FA80
7183: 17 04 0A       LBSR   $7590
7186: C6 00          LDB    #$00
7188: 20 02          BRA    $718C
718A: C6 01          LDB    #$01
718C: 35 FA          PULS   A,DP,X,Y,U,PC
718E: B6 0B 03       LDA    $0B03
7191: 84 40          ANDA   #$40
7193: 26 57          BNE    $71EC
7195: 10 8E 09 6B    LDY    #$096B
7199: A6 88 31       LDA    $31,X	; [bank_address]
719C: 5F             CLRB
719D: 8E 03 A2       LDX    #$03A2
71A0: A6 84          LDA    ,X
71A2: 2B 04          BMI    $71A8
71A4: 8E 04 00       LDX    #$0400
71A7: 5C             INCB
71A8: E7 88 13       STB    $13,X
71AB: 10 8E 09 6B    LDY    #$096B
71AF: E7 A8 13       STB    $13,Y
71B2: 86 1F          LDA    #$1F
71B4: A7 01          STA    $1,X
71B6: A6 84          LDA    ,X
71B8: 84 F0          ANDA   #$F0
71BA: 8A 01          ORA    #$01
71BC: A7 84          STA    ,X
71BE: CC 1A D2       LDD    #$1AD2
71C1: ED 04          STD    $4,X
71C3: CC 00 75       LDD    #$0075
71C6: ED 06          STD    $6,X
71C8: CC 01 00       LDD    #$0100
71CB: ED 08          STD    $8,X
71CD: 6F 0E          CLR    $E,X
71CF: 86 14          LDA    #$14
71D1: E6 88 13       LDB    $13,X
71D4: 27 01          BEQ    $71D7
71D6: 4C             INCA
71D7: A7 02          STA    $2,X
71D9: A6 A8 1B       LDA    $1B,Y
71DC: 84 7F          ANDA   #$7F
71DE: 81 05          CMPA   #$05
71E0: 26 04          BNE    $71E6
71E2: 86 7F          LDA    #$7F
71E4: A7 02          STA    $2,X
71E6: 6F 88 16       CLR    $16,X
71E9: 17 8D 24       LBSR   push_one_sprite_entry_ff10
71EC: 39             RTS
71ED: 8E 09 6B       LDX    #$096B
71F0: B6 0B 03       LDA    $0B03
71F3: 85 40          BITA   #$40
71F5: 26 11          BNE    $7208
71F7: 84 80          ANDA   #$80
71F9: 26 0A          BNE    $7205
71FB: A6 84          LDA    ,X
71FD: 2A 06          BPL    $7205
71FF: 17 00 07       LBSR   $7209
7202: 17 00 70       LBSR   $7275
7205: 17 00 71       LBSR   $7279
7208: 39             RTS
7209: A6 88 1B       LDA    $1B,X
720C: 2B 1A          BMI    $7228
720E: 8A 80          ORA    #$80
7210: A7 88 1B       STA    $1B,X
7213: C6 81          LDB    #$81
7215: E7 84          STB    ,X
7217: 6F 0E          CLR    $E,X
7219: 84 7F          ANDA   #$7F
721B: 48             ASLA
721C: 10 8E 72 29    LDY    #jump_table_7229
7220: AD B6          JSR    [A,Y]			; [indirect_jump] [nb_entries=8]
7222: 6F 88 19       CLR    $19,X
7225: 6F 88 18       CLR    $18,X
7228: 39             RTS

jump_table_7229:
	dc.w	$723A 
	dc.w	$7243
	dc.w	$7239
	dc.w	$7267 
	dc.w	$7239
	dc.w	$7239 
	dc.w	$7243 
	dc.w	$7239

7239: 39             RTS
723A: A6 88 31       LDA    $31,X
723D: 8A 01          ORA    #$01
723F: A7 88 31       STA    $31,X
7242: 39             RTS
7243: A6 84          LDA    ,X
7245: 84 F0          ANDA   #$F0
7247: 8A 02          ORA    #$02
7249: A7 84          STA    ,X
724B: CC 00 00       LDD    #$0000
724E: ED 0F          STD    $F,X
7250: ED 88 11       STD    $11,X
7253: CC 00 20       LDD    #$0020
7256: ED 0D          STD    $D,X
7258: A6 88 1B       LDA    $1B,X
725B: 84 7F          ANDA   #$7F
725D: 81 06          CMPA   #$06
725F: 26 05          BNE    $7266
7261: 86 80          LDA    #$80
7263: B7 0A F8       STA    $0AF8
7266: 39             RTS
7267: 86 04          LDA    #$04
7269: A7 0E          STA    $E,X
726B: 86 40          LDA    #$40
726D: A7 0D          STA    $D,X
726F: 86 06          LDA    #$06
7271: 17 0B E9       LBSR   play_game_sound_7e5d	; end of game tune
7274: 39             RTS
7275: 17 88 E0       LBSR   $FB58
7278: 39             RTS
7279: A6 88 1B       LDA    $1B,X
727C: 84 7F          ANDA   #$7F
727E: 48             ASLA
727F: 10 8E 72 90    LDY    #jump_table_7290
7283: AD B6          JSR    [A,Y]		; [indirect_jump] [nb_entries=8]
7285: 86 1F          LDA    #$1F
7287: A7 01          STA    $1,X
7289: 6F 88 16       CLR    $16,X
728C: 17 8C 81       LBSR   push_one_sprite_entry_ff10
728F: 39             RTS

jump_table_7290:
	dc.w	$72A0 
	dc.w	$72A5 
	dc.w	$72B7 
	dc.w	$72E6 
	dc.w	$7315
	dc.w	$7329
	dc.w	$7393
	dc.w	$73A6

72A0: 86 00          LDA    #$00                                        
72A2: A7 02          STA    $2,X                                        
72A4: 39             RTS                                                
72A5: 86 01          LDA    #$01                                        
72A7: A7 02          STA    $2,X                                        
72A9: EC 08          LDD    $8,X
72AB: 10 83 01 00    CMPD   #$0100
72AF: 24 05          BCC    $72B6
72B1: 86 02          LDA    #$02
72B3: A7 88 1B       STA    $1B,X
72B6: 39             RTS
72B7: 86 02          LDA    #$02
72B9: E6 88 18       LDB    $18,X
72BC: 27 02          BEQ    $72C0
72BE: 86 09          LDA    #$09
72C0: A7 02          STA    $2,X
72C2: 6C 88 19       INC    $19,X
72C5: 86 10          LDA    #$10
72C7: E6 88 18       LDB    $18,X
72CA: 27 02          BEQ    $72CE
72CC: 86 08          LDA    #$08
72CE: A1 88 19       CMPA   $19,X
72D1: 24 12          BCC    $72E5
72D3: 6F 88 19       CLR    $19,X
72D6: A6 88 18       LDA    $18,X
72D9: 88 01          EORA   #$01
72DB: A7 88 18       STA    $18,X
72DE: 26 05          BNE    $72E5
72E0: 86 03          LDA    #$03
72E2: A7 88 1B       STA    $1B,X
72E5: 39             RTS
72E6: 86 08          LDA    #$08
72E8: AB 88 18       ADDA   $18,X
72EB: A7 02          STA    $2,X
72ED: 6C 88 19       INC    $19,X
72F0: A6 88 19       LDA    $19,X
72F3: 81 10          CMPA   #$10
72F5: 25 10          BCS    $7307
72F7: 6F 88 19       CLR    $19,X
72FA: 6C 88 18       INC    $18,X
72FD: A6 88 18       LDA    $18,X
7300: 81 04          CMPA   #$04
7302: 25 03          BCS    $7307
7304: 6F 88 18       CLR    $18,X
7307: EC 04          LDD    $4,X
7309: 10 83 1A C0    CMPD   #$1AC0
730D: 25 05          BCS    $7314
730F: 86 04          LDA    #$04
7311: A7 88 1B       STA    $1B,X
7314: 39             RTS
7315: 86 09          LDA    #$09
7317: A7 02          STA    $2,X
7319: 6C 88 19       INC    $19,X
731C: A6 88 19       LDA    $19,X
731F: 81 20          CMPA   #$20
7321: 25 05          BCS    $7328
7323: 86 05          LDA    #$05
7325: A7 88 1B       STA    $1B,X
7328: 39             RTS
7329: A6 88 18       LDA    $18,X
732C: 81 01          CMPA   #$01
732E: 26 0C          BNE    $733C
7330: A6 88 19       LDA    $19,X
7333: 81 14          CMPA   #$14
7335: 26 05          BNE    $733C
7337: 86 9A          LDA    #$9A
7339: 17 0B 21       LBSR   play_game_sound_7e5d
733C: A6 88 18       LDA    $18,X
733F: 81 02          CMPA   #$02
7341: 26 0C          BNE    $734F
7343: A6 88 19       LDA    $19,X
7346: 81 10          CMPA   #$10
7348: 26 05          BNE    $734F
734A: 86 FE          LDA    #$FE
734C: 17 0B 0E       LBSR   play_game_sound_7e5d
734F: 10 8E 73 87    LDY    #$7387
7353: A6 88 13       LDA    $13,X
7356: 27 04          BEQ    $735C
7358: 10 8E 73 8B    LDY    #$738B
735C: E6 88 18       LDB    $18,X
735F: A6 A5          LDA    B,Y		; [bank_address]
7361: A7 02          STA    $2,X
7363: 6C 88 19       INC    $19,X
7366: 10 8E 73 8F    LDY    #$738F
736A: E6 88 18       LDB    $18,X
736D: A6 88 19       LDA    $19,X
7370: A1 A5          CMPA   B,Y		; [bank_address]
7372: 25 12          BCS    $7386
7374: 6F 88 19       CLR    $19,X
7377: 6C 88 18       INC    $18,X
737A: A6 88 18       LDA    $18,X
737D: 81 04          CMPA   #$04
737F: 25 05          BCS    $7386
7381: 86 07          LDA    #$07
7383: A7 88 1B       STA    $1B,X
7386: 39             RTS


7393: 86 01          LDA    #$01
7395: A7 02          STA    $2,X
7397: EC 08          LDD    $8,X
7399: 10 83 01 00    CMPD   #$0100
739D: 24 06          BCC    $73A5
739F: A6 84          LDA    ,X
73A1: 84 7F          ANDA   #$7F
73A3: A7 84          STA    ,X
73A5: 39             RTS
73A6: 86 09          LDA    #$09
73A8: A7 02          STA    $2,X
73AA: B6 0B 03       LDA    $0B03
73AD: 84 01          ANDA   #$01
73AF: 26 6E          BNE    $741F
73B1: 6C 88 19       INC    $19,X
73B4: A6 88 19       LDA    $19,X
73B7: 81 80          CMPA   #$80
73B9: 25 64          BCS    $741F
73BB: B6 0B 03       LDA    $0B03
73BE: 8A 81          ORA    #$81
73C0: B7 0B 03       STA    $0B03
; display credits in the end
73C3: 8E 18 00       LDX    #$1800
73C6: 6F 80          CLR    ,X+		; [video_address]
73C8: 8C 20 00       CMPX   #$2000
73CB: 25 F9          BCS    $73C6
73CD: 32 7F          LEAS   -$1,S   ; [alloc_locals]
73CF: C6 20          LDB    #$20
73D1: E7 E4          STB    ,S		; [local]
73D3: 8E 18 42       LDX    #$1842
73D6: 10 8E 1F 82    LDY    #$1F82
73DA: CC 00 62       LDD    #$0062
73DD: ED 81          STD    ,X++	; [video_address_word]
73DF: ED A1          STD    ,Y++	; [video_address_word]
73E1: 6A E4          DEC    ,S			; [local]
73E3: 26 F5          BNE    $73DA
73E5: 8E 18 00       LDX    #$1800
73E8: 10 8E 18 3E    LDY    #$183E
73EC: C6 20          LDB    #$20
73EE: E7 E4          STB    ,S			; [local]
73F0: CC 00 62       LDD    #$0062
73F3: ED 84          STD    ,X     ; [video_address_word]
73F5: ED A4          STD    ,Y     ; [video_address_word]
73F7: 30 88 40       LEAX   $40,X
73FA: 31 A8 40       LEAY   $40,Y
73FD: 6A E4          DEC    ,S			; [local]
73FF: 26 EF          BNE    $73F0
7401: 32 61          LEAS   $1,S   ; [free_locals]
7403: 86 1E          LDA    #$1E
7405: 17 8B C1       LBSR   $FFC9
7408: 32 7F          LEAS   -$1,S   ; [alloc_locals]
740A: 6F E4          CLR    ,S	; [local]
740C: 10 8E 07 5B    LDY    #$075B
7410: 6F A4          CLR    ,Y
7412: 31 A8 21       LEAY   $21,Y
7415: 6C E4          INC    ,S	; [local]
7417: A6 E4          LDA    ,S	; [local]
7419: 81 10          CMPA   #$10
741B: 25 F3          BCS    $7410
741D: 32 61          LEAS   $1,S   ; [free_locals]
741F: 39             RTS

7420: 34 7E          PSHS   U,Y,X,DP,D
7422: 10 8E 09 6B    LDY    #$096B
7426: 8E 09 8C       LDX    #$098C
7429: A6 A8 1B       LDA    $1B,Y
742C: 84 7F          ANDA   #$7F
742E: 81 05          CMPA   #$05
7430: 26 10          BNE    $7442
7432: A6 A8 18       LDA    $18,Y
7435: 81 02          CMPA   #$02
7437: 26 09          BNE    $7442
7439: 17 00 08       LBSR   $7444
743C: 17 00 30       LBSR   $746F
743F: 17 00 7B       LBSR   $74BD
7442: 35 FE          PULS   D,DP,X,Y,U,PC

7444: 34 7E          PSHS   U,Y,X,DP,D
7446: A6 88 31       LDA    $31,X
7449: 2B 22          BMI    $746D
744B: 86 80          LDA    #$80
744D: A7 88 31       STA    $31,X
7450: EC 24          LDD    $4,Y
7452: C3 00 10       ADDD   #$0010
7455: ED 04          STD    $4,X
7457: EC 26          LDD    $6,Y
7459: C3 00 00       ADDD   #$0000
745C: ED 06          STD    $6,X
745E: EC 28          LDD    $8,Y
7460: C3 00 40       ADDD   #$0040
7463: ED 08          STD    $8,X
7465: A6 84          LDA    ,X
7467: 8A 81          ORA    #$81
7469: A7 84          STA    ,X
746B: 6F 0D          CLR    $D,X
746D: 35 FE          PULS   D,DP,X,Y,U,PC

746F: 34 7E          PSHS   U,Y,X,DP,D
7471: 86 04          LDA    #$04
7473: A7 0E          STA    $E,X
7475: 17 86 E0       LBSR   $FB58
7478: 86 02          LDA    #$02
747A: E6 88 31       LDB    $31,X
747D: C4 01          ANDB   #$01
747F: 27 01          BEQ    $7482
7481: 40             NEGA
7482: AB 0D          ADDA   $D,X
7484: A7 0D          STA    $D,X
7486: 10 8E 74 8F    LDY    #jump_table_748f
748A: 58             ASLB
748B: AD B5          JSR    [B,Y]		; [indirect_jump] [nb_entries=2]
748D: 35 FE          PULS   D,DP,X,Y,U,PC

jump_table_748f:
	dc.w	$7493 
	dc.w	$74A8 

7493: A6 0D          LDA    $D,X                                      
7495: 2B 10          BMI    $74A7                                     
7497: 81 20          CMPA   #$20                                      
7499: 25 0C          BCS    $74A7                                     
749B: 86 20          LDA    #$20                                      
749D: A7 0D          STA    $D,X                                      
749F: A6 88 31       LDA    $31,X                                     
74A2: 8A 01          ORA    #$01
74A4: A7 88 31       STA    $31,X
74A7: 39             RTS

74A8: A6 0D          LDA    $D,X
74AA: 2A 10          BPL    $74BC
74AC: 81 E0          CMPA   #$E0
74AE: 24 0C          BCC    $74BC
74B0: 86 E0          LDA    #$E0
74B2: A7 0D          STA    $D,X
74B4: A6 88 31       LDA    $31,X
74B7: 84 FE          ANDA   #$FE
74B9: A7 88 31       STA    $31,X
74BC: 39             RTS
74BD: 34 7E          PSHS   U,Y,X,DP,D
74BF: 86 1F          LDA    #$1F
74C1: A7 01          STA    $1,X
74C3: 86 16          LDA    #$16
74C5: AB 88 18       ADDA   $18,X
74C8: A7 02          STA    $2,X
74CA: 6F 88 16       CLR    $16,X
74CD: 17 8A 40       LBSR   push_one_sprite_entry_ff10
74D0: 6C 88 19       INC    $19,X
74D3: A6 88 19       LDA    $19,X
74D6: 81 08          CMPA   #$08
74D8: 25 0B          BCS    $74E5
74DA: 6F 88 19       CLR    $19,X
74DD: A6 88 18       LDA    $18,X
74E0: 88 01          EORA   #$01
74E2: A7 88 18       STA    $18,X
74E5: 35 FE          PULS   D,DP,X,Y,U,PC

74E7: 96 36          LDA    current_level_0036
74E9: 81 03          CMPA   #$03
74EB: 26 06          BNE    $74F3
74ED: 17 00 04       LBSR   $74F4
74F0: 17 FC FA       LBSR   $71ED
74F3: 39             RTS
74F4: B6 0B 03       LDA    $0B03
74F7: 84 C0          ANDA   #$C0
74F9: 26 2F          BNE    $752A
74FB: 8E 09 6B       LDX    #$096B
74FE: A6 84          LDA    ,X
7500: 2B 28          BMI    $752A
7502: 96 36          LDA    current_level_0036
7504: 81 03          CMPA   #$03
7506: 26 22          BNE    $752A
7508: DC 3C          LDD    $3C
750A: 10 83 19 00    CMPD   #$1900
750E: 25 1A          BCS    $752A
7510: A6 84          LDA    ,X
7512: 8A 80          ORA    #$80
7514: A7 84          STA    ,X
7516: CC 1A 38       LDD    #$1A38
7519: ED 04          STD    $4,X
751B: CC 00 78       LDD    #$0078
751E: ED 06          STD    $6,X
7520: CC 01 30       LDD    #$0130
7523: ED 08          STD    $8,X
7525: 86 00          LDA    #$00
7527: A7 88 1B       STA    $1B,X
752A: 39             RTS
752B: 8E 09 AD       LDX    #$09AD
752E: 10 8E 03 A2    LDY    #$03A2
7532: C6 01          LDB    #$01
7534: A6 84          LDA    ,X
7536: 2A 03          BPL    $753B
7538: 17 00 0A       LBSR   $7545
753B: 30 88 21       LEAX   $21,X
753E: 31 A8 5E       LEAY   $5E,Y
7541: 5A             DECB
7542: 2A F0          BPL    $7534
7544: 39             RTS
7545: 34 7E          PSHS   U,Y,X,DP,D
7547: 86 18          LDA    #$18
7549: C1 01          CMPB   #$01
754B: 27 02          BEQ    $754F
754D: 8B 01          ADDA   #$01
754F: A7 02          STA    $2,X
7551: A6 88 18       LDA    $18,X
7554: 84 01          ANDA   #$01
7556: 27 04          BEQ    $755C
7558: 86 7F          LDA    #$7F
755A: A7 02          STA    $2,X
755C: 86 1F          LDA    #$1F
755E: A7 01          STA    $1,X
7560: EC 24          LDD    $4,Y
7562: ED 04          STD    $4,X
7564: EC 26          LDD    $6,Y
7566: ED 06          STD    $6,X
7568: EC 28          LDD    $8,Y
756A: C3 00 48       ADDD   #$0048
756D: ED 08          STD    $8,X
756F: 17 89 9E       LBSR   push_one_sprite_entry_ff10
7572: 6C 88 19       INC    $19,X
7575: A6 88 19       LDA    $19,X
7578: 81 04          CMPA   #$04
757A: 25 12          BCS    $758E
757C: 6F 88 19       CLR    $19,X
757F: 6C 88 18       INC    $18,X
7582: A6 88 18       LDA    $18,X
7585: 81 10          CMPA   #$10
7587: 25 05          BCS    $758E
7589: 6F 88 18       CLR    $18,X
758C: 6F 84          CLR    ,X
758E: 35 FE          PULS   D,DP,X,Y,U,PC

7590: B6 0B 03       LDA    $0B03
7593: 84 C0          ANDA   #$C0
7595: 81 C0          CMPA   #$C0
7597: 26 33          BNE    $75CC
7599: B6 0B 11       LDA    $0B11
759C: 84 81          ANDA   #$81
759E: 88 81          EORA   #$81
75A0: 26 2A          BNE    $75CC
75A2: B6 0B 14       LDA    $0B14
75A5: 2B 0B          BMI    $75B2
75A7: BD 75 CD       JSR    $75CD
75AA: B6 0B 14       LDA    $0B14
75AD: 8A 80          ORA    #$80
75AF: B7 0B 14       STA    $0B14
75B2: BD 75 F5       JSR    $75F5
75B5: FC 0A 62       LDD    $0A62
75B8: 10 83 07 00    CMPD   #$0700
75BC: 25 0E          BCS    $75CC
75BE: 86 FF          LDA    #$FF
75C0: BD FE 23       JSR    $FE23
75C3: 86 FF          LDA    #$FF
75C5: B7 0E 2D       STA    $0E2D
75C8: 86 04          LDA    #$04
75CA: 97 36          STA    current_level_0036
75CC: 39             RTS
75CD: BD 76 37       JSR    $7637
75D0: 86 0C          LDA    #$0C
75D2: 97 4F          STA    $4F
75D4: CC 00 00       LDD    #$0000
75D7: FD 0A 62       STD    $0A62
75DA: F7 0A 64       STB    $0A64
75DD: 86 00          LDA    #$00
75DF: B7 38 09       STA    $3809
75E2: B7 38 0A       STA    $380A
75E5: 96 3A          LDA    bank_switch_copy_3a
75E7: 84 FC          ANDA   #$FC
75E9: 97 3A          STA    bank_switch_copy_3a
75EB: B7 38 08       STA    bankswitch_3808
75EE: CC 01 10       LDD    #$0110
75F1: FD 0B 00       STD    $0B00
75F4: 39             RTS
75F5: FC 0A 63       LDD    $0A63
75F8: C3 00 C0       ADDD   #$00C0
75FB: FD 0A 63       STD    $0A63
75FE: B6 0A 62       LDA    $0A62
7601: 89 00          ADCA   #$00
7603: B7 0A 62       STA    $0A62
7606: BD 76 20       JSR    $7620
7609: FC 0A 62       LDD    $0A62
760C: C3 01 20       ADDD   #$0120
760F: C4 F0          ANDB   #$F0
7611: 10 B3 0B 00    CMPD   $0B00
7615: 27 08          BEQ    $761F
7617: DD 00          STD    $00
7619: FD 0B 00       STD    $0B00
761C: BD 76 5A       JSR    $765A
761F: 39             RTS
7620: 96 3A          LDA    bank_switch_copy_3a
7622: 84 FC          ANDA   #$FC
7624: 97 3A          STA    bank_switch_copy_3a
7626: FC 0A 62       LDD    $0A62
7629: 84 01          ANDA   #$01
762B: 48             ASLA
762C: 9A 3A          ORA    bank_switch_copy_3a
762E: 97 3A          STA    bank_switch_copy_3a
7630: B7 38 08       STA    bankswitch_3808
7633: F7 38 0A       STB    $380A
7636: 39             RTS
7637: CC 00 00       LDD    #$0000
763A: 8E 18 00       LDX    #$1800
763D: ED 81          STD    ,X++		; [unchecked_address]
763F: 8C 38 00       CMPX   #$3800
7642: 26 F9          BNE    $763D
7644: CC 01 00       LDD    #$0100
7647: DD 00          STD    $00
7649: BD 76 5A       JSR    $765A
764C: CC 01 10       LDD    #$0110
764F: DD 00          STD    $00
7651: BD 76 5A       JSR    $765A
7654: 86 55          LDA    #$55
7656: B7 34 16       STA    $3416
7659: 39             RTS

765A: 32 7C          LEAS   -$4,S   ; [alloc_locals]
765C: BD 76 79       JSR    $7679
765F: BD 76 91       JSR    $7691
7662: BD 76 A6       JSR    $76A6
7665: 7F 0A 5F       CLR    $0A5F
7668: E6 80          LDB    ,X+		; [bank_address]
766A: ED A1          STD    ,Y++	; [video_address_word]
766C: 7C 0A 5F       INC    $0A5F
766F: F6 0A 5F       LDB    $0A5F
7672: C1 10          CMPB   #$10
7674: 26 F2          BNE    $7668
7676: 32 64          LEAS   $4,S   ; [free_locals]
7678: 39             RTS
7679: 96 00          LDA    $00
767B: 84 01          ANDA   #$01
767D: 48             ASLA
767E: 48             ASLA
767F: 5F             CLRB
7680: C3 30 00       ADDD   #$3000
7683: 34 06          PSHS   D		; [manual_stack_push]
7685: 4F             CLRA
7686: D6 01          LDB    $01
7688: C4 F0          ANDB   #$F0
768A: 58             ASLB
768B: 49             ROLA
768C: E3 E1          ADDD   ,S++
768E: 1F 02          TFR    D,Y
7690: 39             RTS

7691: 8E 76 C0       LDX    #$76C0
7694: 96 00          LDA    $00
7696: A6 86          LDA    A,X			; [bank_address]
7698: 48             ASLA
7699: 8E 76 DB       LDX    #$76DB
769C: AE 86          LDX    A,X			; [bank_address]
769E: 4F             CLRA
769F: D6 01          LDB    $01
76A1: C4 F0          ANDB   #$F0
76A3: 30 8B          LEAX   D,X
76A5: 39             RTS
76A6: 34 10          PSHS   X
76A8: 8E 76 C0       LDX    #$76C0
76AB: 96 00          LDA    $00
76AD: A6 86          LDA    A,X			; [bank_address]
76AF: 48             ASLA
76B0: 8E 76 C9       LDX    #$76C9
76B3: AE 86          LDX    A,X			; [bank_address]
76B5: 96 01          LDA    $01			
76B7: 44             LSRA
76B8: 44             LSRA
76B9: 44             LSRA
76BA: 44             LSRA
76BB: A6 86          LDA    A,X		; [bank_address]
76BD: 35 10          PULS   X
76BF: 39             RTS

play_game_sound_7e5d:
7E5D: D6 26          LDB    $26
7E5F: 26 07          BNE    $7E68
7E61: F6 38 04       LDB    $3804
7E64: C4 04          ANDB   #$04
7E66: 27 03          BEQ    $7E6B
7E68: B7 38 0E       STA    sound_irq_380e
7E6B: 39             RTS