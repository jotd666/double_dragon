4000: 7E 44 49       JMP    $4449
4003: 7E 46 E0       JMP    $46E0
4006: 7E 45 D7       JMP    $45D7
4009: 7E 40 1E       JMP    $401E
400C: 7E 48 04       JMP    $4804
400F: 7E 47 DB       JMP    $47DB
4012: 7E 45 B1       JMP    $45B1
4015: 7E 46 A3       JMP    $46A3
4018: 7E 44 CD       JMP    $44CD
401B: 7E 42 D3       JMP    $42D3
401E: 34 7E          PSHS   U,Y,X,DP,D
4020: 4F             CLRA
4021: 1F 8B          TFR    A,DP
4023: A6 84          LDA    ,X
4025: 84 0F          ANDA   #$0F
4027: 48             ASLA
4028: 10 8E 40 30    LDY    #$4030
402C: AD B6          JSR    [A,Y]
402E: 35 FE          PULS   D,DP,X,Y,U,PC
4030: 40             NEGA
4031: 3A             ABX
4032: 40             NEGA
4033: 73 40 B2       COM    $40B2
4036: 40             NEGA
4037: B2 41 1A       SBCA   $411A
403A: 34 7E          PSHS   U,Y,X,DP,D
403C: A6 05          LDA    $5,X
403E: E6 0A          LDB    $A,X
4040: E3 0F          ADDD   $F,X
4042: A7 05          STA    $5,X
4044: E7 0A          STB    $A,X
4046: A6 04          LDA    $4,X
4048: 89 00          ADCA   #$00
404A: A7 04          STA    $4,X
404C: A6 0F          LDA    $F,X
404E: 2A 06          BPL    $4056
4050: A6 04          LDA    $4,X
4052: 8B FF          ADDA   #$FF
4054: A7 04          STA    $4,X
4056: A6 09          LDA    $9,X
4058: E6 0C          LDB    $C,X
405A: E3 88 11       ADDD   $11,X
405D: A7 09          STA    $9,X
405F: E7 0C          STB    $C,X
4061: A6 08          LDA    $8,X
4063: 89 00          ADCA   #$00
4065: A7 08          STA    $8,X
4067: A6 0F          LDA    $F,X
4069: 2A 06          BPL    $4071
406B: A6 08          LDA    $8,X
406D: 8B FF          ADDA   #$FF
406F: A7 08          STA    $8,X
4071: 35 FE          PULS   D,DP,X,Y,U,PC
4073: 34 7E          PSHS   U,Y,X,DP,D
4075: E6 0E          LDB    $E,X
4077: A6 0D          LDA    $D,X
4079: 17 00 DD       LBSR   $4159
407C: A6 05          LDA    $5,X
407E: E6 0A          LDB    $A,X
4080: D3 00          ADDD   $00
4082: E7 0A          STB    $A,X
4084: A7 05          STA    $5,X
4086: A6 04          LDA    $4,X
4088: 89 00          ADCA   #$00
408A: A7 04          STA    $4,X
408C: 96 00          LDA    $00
408E: 2A 06          BPL    $4096
4090: A6 04          LDA    $4,X
4092: 8B FF          ADDA   #$FF
4094: A7 04          STA    $4,X
4096: E6 0B          LDB    $B,X
4098: A6 07          LDA    $7,X
409A: D3 02          ADDD   $02
409C: E7 0B          STB    $B,X
409E: A7 07          STA    $7,X
40A0: A6 06          LDA    $6,X
40A2: 89 00          ADCA   #$00
40A4: A7 06          STA    $6,X
40A6: 96 02          LDA    $02
40A8: 2A 06          BPL    $40B0
40AA: A6 06          LDA    $6,X
40AC: 8B FF          ADDA   #$FF
40AE: A7 06          STA    $6,X
40B0: 35 FE          PULS   D,DP,X,Y,U,PC
40B2: 34 7E          PSHS   U,Y,X,DP,D
40B4: E6 0A          LDB    $A,X
40B6: A6 05          LDA    $5,X
40B8: E3 0F          ADDD   $F,X
40BA: E7 0A          STB    $A,X
40BC: A7 05          STA    $5,X
40BE: A6 04          LDA    $4,X
40C0: 89 00          ADCA   #$00
40C2: A7 04          STA    $4,X
40C4: A6 0F          LDA    $F,X
40C6: 2A 06          BPL    $40CE
40C8: A6 04          LDA    $4,X
40CA: 8B FF          ADDA   #$FF
40CC: A7 04          STA    $4,X
40CE: A6 84          LDA    ,X
40D0: 84 0F          ANDA   #$0F
40D2: 81 03          CMPA   #$03
40D4: 26 1E          BNE    $40F4
40D6: E6 0C          LDB    $C,X
40D8: A6 09          LDA    $9,X
40DA: A3 88 11       SUBD   $11,X
40DD: E7 0C          STB    $C,X
40DF: A7 09          STA    $9,X
40E1: A6 08          LDA    $8,X
40E3: 82 00          SBCA   #$00
40E5: A7 08          STA    $8,X
40E7: A6 88 11       LDA    $11,X
40EA: 2A 24          BPL    $4110
40EC: A6 08          LDA    $8,X
40EE: 8B 01          ADDA   #$01
40F0: A7 08          STA    $8,X
40F2: 20 1C          BRA    $4110
40F4: E6 0C          LDB    $C,X
40F6: A6 09          LDA    $9,X
40F8: E3 88 11       ADDD   $11,X
40FB: E7 0C          STB    $C,X
40FD: A7 09          STA    $9,X
40FF: A6 08          LDA    $8,X
4101: 89 00          ADCA   #$00
4103: A7 08          STA    $8,X
4105: A6 88 11       LDA    $11,X
4108: 2A 06          BPL    $4110
410A: A6 08          LDA    $8,X
410C: 8B FF          ADDA   #$FF
410E: A7 08          STA    $8,X
4110: EC 88 11       LDD    $11,X
4113: A3 0D          SUBD   $D,X
4115: ED 88 11       STD    $11,X
4118: 35 FE          PULS   D,DP,X,Y,U,PC
411A: 34 7E          PSHS   U,Y,X,DP,D
411C: E6 0E          LDB    $E,X
411E: A6 0D          LDA    $D,X
4120: 17 00 36       LBSR   $4159
4123: A6 05          LDA    $5,X
4125: E6 0A          LDB    $A,X
4127: D3 00          ADDD   $00
4129: E7 0A          STB    $A,X
412B: A7 05          STA    $5,X
412D: A6 04          LDA    $4,X
412F: 89 00          ADCA   #$00
4131: A7 04          STA    $4,X
4133: 96 00          LDA    $00
4135: 2A 06          BPL    $413D
4137: A6 04          LDA    $4,X
4139: 8B FF          ADDA   #$FF
413B: A7 04          STA    $4,X
413D: E6 0C          LDB    $C,X
413F: A6 09          LDA    $9,X
4141: D3 02          ADDD   $02
4143: E7 0C          STB    $C,X
4145: A7 09          STA    $9,X
4147: A6 08          LDA    $8,X
4149: 89 00          ADCA   #$00
414B: A7 08          STA    $8,X
414D: 96 02          LDA    $02
414F: 2A 06          BPL    $4157
4151: A6 08          LDA    $8,X
4153: 8B FF          ADDA   #$FF
4155: A7 08          STA    $8,X
4157: 35 FE          PULS   D,DP,X,Y,U,PC
4159: 34 36          PSHS   Y,X,D
415B: 32 78          LEAS   -$8,S
415D: 44             LSRA
415E: 44             LSRA
415F: 44             LSRA
4160: 44             LSRA
4161: 44             LSRA
4162: A7 E4          STA    ,S
4164: 1F 89          TFR    A,B
4166: A6 68          LDA    $8,S
4168: 84 1F          ANDA   #$1F
416A: A7 61          STA    $1,S
416C: 8E 41 B7       LDX    #$41B7
416F: E6 85          LDB    B,X
4171: E7 62          STB    $2,S
4173: C4 01          ANDB   #$01
4175: CB 03          ADDB   #$03
4177: A6 61          LDA    $1,S
4179: 6D 62          TST    $2,S
417B: 2A 04          BPL    $4181
417D: 43             COMA
417E: 84 1F          ANDA   #$1F
4180: 4C             INCA
4181: A7 E5          STA    B,S
4183: C8 07          EORB   #$07
4185: 86 20          LDA    #$20
4187: A7 E5          STA    B,S
4189: A6 64          LDA    $4,S
418B: E6 69          LDB    $9,S
418D: 3D             MUL
418E: DD 02          STD    $02
4190: A6 63          LDA    $3,S
4192: E6 69          LDB    $9,S
4194: 3D             MUL
4195: DD 00          STD    $00
4197: A6 68          LDA    $8,S
4199: 2A 07          BPL    $41A2
419B: CC 00 00       LDD    #$0000
419E: 93 00          SUBD   $00
41A0: DD 00          STD    $00
41A2: A6 68          LDA    $8,S
41A4: 81 40          CMPA   #$40
41A6: 25 0B          BCS    $41B3
41A8: 81 C0          CMPA   #$C0
41AA: 24 07          BCC    $41B3
41AC: CC 00 00       LDD    #$0000
41AF: 93 02          SUBD   $02
41B1: DD 02          STD    $02
41B3: 32 68          LEAS   $8,S
41B5: 35 B6          PULS   D,X,Y,PC
41B7: 00 81          NEG    $81
41B9: 01 80 00       OIM    #$80;$00
41BC: 81 01          CMPA   #$01
41BE: 80 34          SUBA   #$34
41C0: 31 6F          LEAY   $F,S
41C2: 80 31          SUBA   #$31
41C4: 3F             SWI
41C5: 26 FA          BNE    $41C1
41C7: 35 B1          PULS   CC,X,Y,PC
41C9: 34 31          PSHS   Y,X,CC
41CB: 8E 00 20       LDX    #$0020
41CE: 10 8E 0E 53    LDY    #$0E53
41D2: 8D EB          BSR    $41BF
41D4: 35 B1          PULS   CC,X,Y,PC
41D6: 34 31          PSHS   Y,X,CC
41D8: 8E 30 00       LDX    #$3000
41DB: 10 8E 08 00    LDY    #$0800
41DF: 8D DE          BSR    $41BF
41E1: 35 B1          PULS   CC,X,Y,PC
41E3: 34 31          PSHS   Y,X,CC
41E5: 8E 18 00       LDX    #$1800
41E8: 10 8E 08 00    LDY    #$0800
41EC: 8D D1          BSR    $41BF
41EE: 35 B1          PULS   CC,X,Y,PC
41F0: 34 57          PSHS   U,X,D,CC
41F2: 1F 98          TFR    B,A
41F4: F0 21 FD       SUBB   $21FD
41F7: 23 18          BLS    $4211
41F9: 34 04          PSHS   B
41FB: C6 05          LDB    #$05
41FD: 3D             MUL
41FE: CE 20 81       LDU    #$2081
4201: 33 CB          LEAU   D,U
4203: 35 04          PULS   B
4205: 8E 00 00       LDX    #$0000
4208: 86 00          LDA    #$00
420A: 36 10          PSHU   X
420C: 36 12          PSHU   X,A
420E: 5A             DECB
420F: 26 F9          BNE    $420A
4211: 35 D7          PULS   CC,D,X,U,PC
4213: 34 77          PSHS   U,Y,X,D,CC
4215: 7F 21 FD       CLR    $21FD
4218: 7F 03 A1       CLR    $03A1
421B: 7F 03 A2       CLR    $03A2
421E: C6 4C          LDB    #$4C
4220: 8D CE          BSR    $41F0
4222: CC 01 80       LDD    #$0180
4225: 8E 28 00       LDX    #$2800
4228: 6F 80          CLR    ,X+
422A: 83 00 01       SUBD   #$0001
422D: 26 F9          BNE    $4228
422F: 35 F7          PULS   CC,D,X,Y,U,PC
4231: 8E 20 81       LDX    #$2081
4234: 10 8E 28 00    LDY    #$2800
4238: EC 81          LDD    ,X++
423A: ED A1          STD    ,Y++
423C: 8C 21 FD       CMPX   #$21FD
423F: 25 F7          BCS    $4238
4241: 39             RTS
4242: 34 48          PSHS   U,DP
4244: 32 7F          LEAS   -$1,S
4246: 4F             CLRA
4247: 1F 8B          TFR    A,DP
4249: A7 E4          STA    ,S
424B: A6 E4          LDA    ,S
424D: C6 04          LDB    #$04
424F: 3D             MUL
4250: C3 00 60       ADDD   #$0060
4253: 1F 03          TFR    D,U
4255: A6 C4          LDA    ,U
4257: 27 1E          BEQ    $4277
4259: 2A 04          BPL    $425F
425B: 6A 41          DEC    $1,U
425D: 26 18          BNE    $4277
425F: E6 42          LDB    $2,U
4261: 4F             CLRA
4262: 1F 01          TFR    D,X
4264: E6 43          LDB    $3,U
4266: 1F 02          TFR    D,Y
4268: A6 C4          LDA    ,U
426A: BD FC 50       JSR    $FC50
426D: A6 C4          LDA    ,U
426F: 88 80          EORA   #$80
4271: A7 C4          STA    ,U
4273: 2B 02          BMI    $4277
4275: 6F C4          CLR    ,U
4277: 6C E4          INC    ,S
4279: E6 E4          LDB    ,S
427B: C1 04          CMPB   #$04
427D: 10 25 FF CA    LBCS   $424B
4281: 32 61          LEAS   $1,S
4283: 35 C8          PULS   DP,U,PC
4285: 34 37          PSHS   Y,X,D,CC
4287: D6 26          LDB    $26
4289: 26 09          BNE    $4294
428B: F6 38 04       LDB    $3804
428E: C4 04          ANDB   #$04
4290: 26 02          BNE    $4294
4292: 0F 56          CLR    $56
4294: 96 56          LDA    $56
4296: 27 1A          BEQ    $42B2
4298: 96 58          LDA    $58
429A: B7 3A 08       STA    $3A08
429D: 5F             CLRB
429E: 8E 00 59       LDX    #$0059
42A1: 10 8E 00 58    LDY    #$0058
42A5: A6 85          LDA    B,X
42A7: A7 A5          STA    B,Y
42A9: 5C             INCB
42AA: C1 03          CMPB   #$03
42AC: 25 F7          BCS    $42A5
42AE: 0A 56          DEC    $56
42B0: 26 E6          BNE    $4298
42B2: 35 B7          PULS   CC,D,X,Y,PC
42B4: 34 07          PSHS   D,CC
42B6: B6 38 03       LDA    $3803
42B9: 43             COMA
42BA: C6 01          LDB    #$01
42BC: 85 40          BITA   #$40
42BE: 27 02          BEQ    $42C2
42C0: C6 01          LDB    #$01
42C2: 85 80          BITA   #$80
42C4: 27 02          BEQ    $42C8
42C6: C8 01          EORB   #$01
42C8: 58             ASLB
42C9: 58             ASLB
42CA: DA 3A          ORB    $3A
42CC: D7 3A          STB    $3A
42CE: F7 38 08       STB    $3808
42D1: 35 87          PULS   CC,D,PC
42D3: 34 77          PSHS   U,Y,X,D,CC
42D5: D6 26          LDB    $26
42D7: 10 27 00 D6    LBEQ   $43B1
42DB: C6 03          LDB    #$03
42DD: 3D             MUL
42DE: 10 8E 43 BF    LDY    #$43BF
42E2: 31 AB          LEAY   D,Y
42E4: A6 22          LDA    $2,Y
42E6: AB 88 4B       ADDA   $4B,X
42E9: 19             DAA
42EA: A7 88 4B       STA    $4B,X
42ED: A6 21          LDA    $1,Y
42EF: A9 88 4A       ADCA   $4A,X
42F2: 19             DAA
42F3: A7 88 4A       STA    $4A,X
42F6: A6 A4          LDA    ,Y
42F8: A9 88 49       ADCA   $49,X
42FB: 19             DAA
42FC: A7 88 49       STA    $49,X
42FF: 24 0D          BCC    $430E
4301: 86 99          LDA    #$99
4303: A7 88 49       STA    $49,X
4306: A7 88 4A       STA    $4A,X
4309: 86 90          LDA    #$90
430B: A7 88 4B       STA    $4B,X
430E: 96 26          LDA    $26
4310: 10 27 00 9D    LBEQ   $43B1
4314: 4F             CLRA
4315: BD FC 78       JSR    $FC78
4318: 86 05          LDA    #$05
431A: BD FC 78       JSR    $FC78
431D: B6 38 04       LDA    $3804
4320: 43             COMA
4321: 84 30          ANDA   #$30
4323: 44             LSRA
4324: 44             LSRA
4325: 44             LSRA
4326: 44             LSRA
4327: 6D 88 4D       TST    $4D,X
432A: 26 09          BNE    $4335
432C: 48             ASLA
432D: 10 8E 43 B3    LDY    #$43B3
4331: EC A6          LDD    A,Y
4333: 20 36          BRA    $436B
4335: 1F 89          TFR    A,B
4337: C5 02          BITB   #$02
4339: 27 07          BEQ    $4342
433B: A6 88 4D       LDA    $4D,X
433E: 81 01          CMPA   #$01
4340: 24 4F          BCC    $4391
4342: 10 8E 43 BB    LDY    #$43BB
4346: 31 A6          LEAY   A,Y
4348: 32 7D          LEAS   -$3,S
434A: A6 88 4D       LDA    $4D,X
434D: A7 E4          STA    ,S
434F: 58             ASLB
4350: 34 20          PSHS   Y
4352: 10 8E 43 B3    LDY    #$43B3
4356: EC A5          LDD    B,Y
4358: 35 20          PULS   Y
435A: ED 61          STD    $1,S
435C: A6 61          LDA    $1,S
435E: AB A4          ADDA   ,Y
4360: 19             DAA
4361: A7 61          STA    $1,S
4363: 6A E4          DEC    ,S
4365: 26 F5          BNE    $435C
4367: EC 61          LDD    $1,S
4369: 32 63          LEAS   $3,S
436B: 32 7E          LEAS   -$2,S
436D: ED E4          STD    ,S
436F: EC 88 49       LDD    $49,X
4372: 10 A3 E4       CMPD   ,S
4375: 32 62          LEAS   $2,S
4377: 25 18          BCS    $4391
4379: A6 88 48       LDA    $48,X
437C: 8B 01          ADDA   #$01
437E: 19             DAA
437F: 24 02          BCC    $4383
4381: 86 99          LDA    #$99
4383: A7 88 48       STA    $48,X
4386: 6C 88 4D       INC    $4D,X
4389: 86 04          LDA    #$04
438B: BD 44 CD       JSR    $44CD
438E: BD FA 70       JSR    $FA70
4391: 96 25          LDA    $25
4393: A0 88 4B       SUBA   $4B,X
4396: 96 24          LDA    $24
4398: A2 88 4A       SBCA   $4A,X
439B: 96 23          LDA    $23
439D: A2 88 49       SBCA   $49,X
43A0: 24 0F          BCC    $43B1
43A2: EC 88 49       LDD    $49,X
43A5: DD 23          STD    $23
43A7: A6 88 4B       LDA    $4B,X
43AA: 97 25          STA    $25
43AC: 86 01          LDA    #$01
43AE: BD FC 78       JSR    $FC78
43B1: 35 F7          PULS   CC,D,X,Y,U,PC
43B3: 03 00          COM    $00
43B5: 04 00          LSR    $00
43B7: 02 00 04       AIM    #$00;$04
43BA: 00 06          NEG    $06
43BC: 08 08          ASL    $08
43BE: 08 00          ASL    $00
43C0: 00 00          NEG    $00
43C2: 00 00          NEG    $00
43C4: 10 00          FCB    $10,$00
43C6: 00             FCB    $00
43C7: 20             FCB    $20
43C8: 00             FCB    $00
43C9: 00             FCB    $00
43CA: 30 00          ADDR   D,D
43CC: 00 40          NEG    $40
43CE: 00 00          NEG    $00
43D0: 50             NEGB
43D1: 00 00          NEG    $00
43D3: 60 00          NEG    $0,X
43D5: 00 70          NEG    $70
43D7: 00 00          NEG    $00
43D9: 80 00          SUBA   #$00
43DB: 00 90          NEG    $90
43DD: 00 01          NEG    $01
43DF: 00 00          NEG    $00
43E1: 02 00 00       AIM    #$00;$00
43E4: 03 00          COM    $00
43E6: 00 04          NEG    $04
43E8: 00 00          NEG    $00
43EA: 05 00 00       EIM    #$00;$00
43ED: 06 00          ROR    $00
43EF: 00 07          NEG    $07
43F1: 00 00          NEG    $00
43F3: 08 00          ASL    $00
43F5: 00 09          NEG    $09
43F7: 00 00          NEG    $00
43F9: 10 00          FCB    $10,$00
43FB: 00             FCB    $00
43FC: 20             FCB    $20
43FD: 00             FCB    $00
43FE: 00             FCB    $00
43FF: 30 00          ADDR   D,D
4401: 00 40          NEG    $40
4403: 00 00          NEG    $00
4405: 50             NEGB
4406: 00 00          NEG    $00
4408: 60 00          NEG    $0,X
440A: 00 70          NEG    $70
440C: 00 00          NEG    $00
440E: 80 00          SUBA   #$00
4410: 00 90          NEG    $90
4412: 00 01          NEG    $01
4414: 00 00          NEG    $00
4416: 02 00 00       AIM    #$00;$00
4419: 03 00          COM    $00
441B: 00 04          NEG    $04
441D: 00 00          NEG    $00
441F: 05 00 00       EIM    #$00;$00
4422: 06 00          ROR    $00
4424: 00 07          NEG    $07
4426: 00 00          NEG    $00
4428: 08 00          ASL    $00
442A: 00 09          NEG    $09
442C: 00 00          NEG    $00
442E: 10 00          FCB    $10,$00
4430: 00             FCB    $00
4431: 20             FCB    $20
4432: 00             FCB    $00
4433: 00             FCB    $00
4434: 30 00          ADDR   D,D
4436: 00 40          NEG    $40
4438: 00 00          NEG    $00
443A: 00 01          NEG    $01
443C: 50             NEGB
443D: 00 15          NEG    $15
443F: 00 50          NEG    $50
4441: 00 00          NEG    $00
4443: 00 01          NEG    $01
4445: 20 00          BRA    $4447
4447: 01 80 96       OIM    #$80;$96
444A: 26 26          BNE    $4472
444C: 11 A6 88 5C    LDE    $5C,X
4450: 27 05          BEQ    $4457
4452: 6A 88 5C       DEC    $5C,X
4455: 20 03          BRA    $445A
4457: 17 B6 46       LBSR   $FAA0
445A: A6 88 5A       LDA    $5A,X
445D: 39             RTS
445E: 10 8E 38 00    LDY    #$3800
4462: D6 2A          LDB    $2A
4464: A6 A5          LDA    B,Y
4466: 43             COMA
4467: 84 3F          ANDA   #$3F
4469: 1F 89          TFR    A,B
446B: 84 30          ANDA   #$30
446D: 34 02          PSHS   A
446F: 4F             CLRA
4470: 54             LSRB
4471: 49             ROLA
4472: 54             LSRB
4473: 49             ROLA
4474: 54             LSRB
4475: 49             ROLA
4476: 54             LSRB
4477: 49             ROLA
4478: AA E4          ORA    ,S
447A: A7 E4          STA    ,S
447C: B6 38 02       LDA    $3802
447F: 43             COMA
4480: 84 06          ANDA   #$06
4482: 44             LSRA
4483: 44             LSRA
4484: 46             RORA
4485: 46             RORA
4486: 0D 2A          TST    $2A
4488: 27 01          BEQ    $448B
448A: 46             RORA
448B: 84 40          ANDA   #$40
448D: AA E4          ORA    ,S
448F: 32 61          LEAS   $1,S
4491: 39             RTS
4492: A7 88 5A       STA    $5A,X
4495: A1 88 5B       CMPA   $5B,X
4498: 26 0E          BNE    $44A8
449A: 6C 88 5C       INC    $5C,X
449D: A6 88 5C       LDA    $5C,X
44A0: 81 FF          CMPA   #$FF
44A2: 27 04          BEQ    $44A8
44A4: A6 88 5A       LDA    $5A,X
44A7: 39             RTS
44A8: 17 B6 0D       LBSR   $FAB8
44AB: 6F 88 5C       CLR    $5C,X
44AE: A6 88 5A       LDA    $5A,X
44B1: A7 88 5B       STA    $5B,X
44B4: E6 88 5D       LDB    $5D,X
44B7: CB 01          ADDB   #$01
44B9: E7 88 5D       STB    $5D,X
44BC: A6 88 33       LDA    $33,X
44BF: 89 00          ADCA   #$00
44C1: A7 88 33       STA    $33,X
44C4: 10 83 04 00    CMPD   #$0400
44C8: 25 DA          BCS    $44A4
44CA: 7E 44 CA       JMP    $44CA
44CD: D6 26          LDB    $26
44CF: 26 07          BNE    $44D8
44D1: F6 38 04       LDB    $3804
44D4: C4 04          ANDB   #$04
44D6: 27 03          BEQ    $44DB
44D8: B7 38 0E       STA    $380E
44DB: 39             RTS
44DC: 34 76          PSHS   U,Y,X,D
44DE: 32 78          LEAS   -$8,S
44E0: 9E 00          LDX    $00
44E2: 96 02          LDA    $02
44E4: 84 03          ANDA   #$03
44E6: 10 8E 45 60    LDY    #$4560
44EA: 48             ASLA
44EB: 10 AE A6       LDY    A,Y
44EE: 1F 23          TFR    Y,U
44F0: 0D 02          TST    $02
44F2: 2B 34          BMI    $4528
44F4: B6 0B C0       LDA    $0BC0
44F7: 81 10          CMPA   #$10
44F9: 10 24 00 5F    LBCC   $455C
44FD: 7C 0B C0       INC    $0BC0
4500: C6 04          LDB    #$04
4502: 3D             MUL
4503: 10 8E 0B 80    LDY    #$0B80
4507: 31 AB          LEAY   D,Y
4509: 96 03          LDA    $03
450B: C6 10          LDB    #$10
450D: 3D             MUL
450E: 33 CB          LEAU   D,U
4510: 96 04          LDA    $04
4512: 33 C6          LEAU   A,U
4514: EF A1          STU    ,Y++
4516: EC 81          LDD    ,X++
4518: 34 04          PSHS   B
451A: 58             ASLB
451B: 49             ROLA
451C: 58             ASLB
451D: 49             ROLA
451E: 58             ASLB
451F: 49             ROLA
4520: 58             ASLB
4521: 49             ROLA
4522: 35 04          PULS   B
4524: ED A4          STD    ,Y
4526: 20 34          BRA    $455C
4528: B6 0D E1       LDA    $0DE1
452B: 81 10          CMPA   #$10
452D: 24 2D          BCC    $455C
452F: 7C 0D E1       INC    $0DE1
4532: C6 22          LDB    #$22
4534: 3D             MUL
4535: 10 8E 0B C1    LDY    #$0BC1
4539: 31 AB          LEAY   D,Y
453B: 96 03          LDA    $03
453D: C6 10          LDB    #$10
453F: 3D             MUL
4540: 33 CB          LEAU   D,U
4542: EF A1          STU    ,Y++
4544: 86 10          LDA    #$10
4546: A7 62          STA    $2,S
4548: EC 81          LDD    ,X++
454A: 34 04          PSHS   B
454C: 58             ASLB
454D: 49             ROLA
454E: 58             ASLB
454F: 49             ROLA
4550: 58             ASLB
4551: 49             ROLA
4552: 58             ASLB
4553: 49             ROLA
4554: 35 04          PULS   B
4556: ED A1          STD    ,Y++
4558: 6A 62          DEC    $2,S
455A: 26 EC          BNE    $4548
455C: 32 68          LEAS   $8,S
455E: 35 F6          PULS   D,X,Y,U,PC
4560: 10 80 11 00    SUBW   #$1100
4564: 10 00          FCB    $10,$00
4566: 34 76          ANDR   V,W
4568: B6 0B C0       LDA    $0BC0
456B: 27 1B          BEQ    $4588
456D: 8E 0B 80       LDX    #$0B80
4570: C6 04          LDB    #$04
4572: 4A             DECA
4573: 3D             MUL
4574: 30 8B          LEAX   D,X
4576: 10 AE 81       LDY    ,X++
4579: A6 80          LDA    ,X+
457B: A7 A4          STA    ,Y
457D: A6 80          LDA    ,X+
457F: A7 A9 02 00    STA    $0200,Y
4583: 7A 0B C0       DEC    $0BC0
4586: 20 E0          BRA    $4568
4588: B6 0D E1       LDA    $0DE1
458B: 27 22          BEQ    $45AF
458D: 8E 0B C1       LDX    #$0BC1
4590: C6 22          LDB    #$22
4592: 4A             DECA
4593: 3D             MUL
4594: 30 8B          LEAX   D,X
4596: 10 AE 81       LDY    ,X++
4599: C6 10          LDB    #$10
459B: A6 80          LDA    ,X+
459D: A7 A4          STA    ,Y
459F: A6 80          LDA    ,X+
45A1: A7 A9 02 00    STA    $0200,Y
45A5: 31 21          LEAY   $1,Y
45A7: 5A             DECB
45A8: 26 F1          BNE    $459B
45AA: 7A 0D E1       DEC    $0DE1
45AD: 20 D9          BRA    $4588
45AF: 35 F6          PULS   D,X,Y,U,PC
45B1: 34 0C          PSHS   DP,B
45B3: 4F             CLRA
45B4: 1F 8B          TFR    A,DP
45B6: C6 04          LDB    #$04
45B8: 0C 43          INC    $43
45BA: 0C 45          INC    $45
45BC: 06 44          ROR    $44
45BE: 06 45          ROR    $45
45C0: 06 46          ROR    $46
45C2: 25 06          BCS    $45CA
45C4: 96 45          LDA    $45
45C6: 99 43          ADCA   $43
45C8: 97 45          STA    $45
45CA: 5A             DECB
45CB: 26 EF          BNE    $45BC
45CD: 96 44          LDA    $44
45CF: 99 46          ADCA   $46
45D1: 97 46          STA    $46
45D3: 99 45          ADCA   $45
45D5: 35 8C          PULS   B,DP,PC
45D7: 34 7E          PSHS   U,Y,X,DP,D
45D9: 10 9E 00       LDY    $00
45DC: 0F 00          CLR    $00
45DE: EC 26          LDD    $6,Y
45E0: A3 06          SUBD   $6,X
45E2: DD 03          STD    $03
45E4: 2A 0D          BPL    $45F3
45E6: 96 00          LDA    $00
45E8: 8A 02          ORA    #$02
45EA: 97 00          STA    $00
45EC: CC 00 00       LDD    #$0000
45EF: 93 03          SUBD   $03
45F1: DD 03          STD    $03
45F3: EC 24          LDD    $4,Y
45F5: A3 04          SUBD   $4,X
45F7: DD 01          STD    $01
45F9: 2A 0D          BPL    $4608
45FB: 96 00          LDA    $00
45FD: 8A 01          ORA    #$01
45FF: 97 00          STA    $00
4601: CC 00 00       LDD    #$0000
4604: 93 01          SUBD   $01
4606: DD 01          STD    $01
4608: 35 FE          PULS   D,DP,X,Y,U,PC
460A: 34 7E          PSHS   U,Y,X,DP,D
460C: 10 9E 00       LDY    $00
460F: 0F 00          CLR    $00
4611: EC 26          LDD    $6,Y
4613: A3 06          SUBD   $6,X
4615: DD 03          STD    $03
4617: 2A 0D          BPL    $4626
4619: 96 00          LDA    $00
461B: 8A 02          ORA    #$02
461D: 97 00          STA    $00
461F: CC 00 00       LDD    #$0000
4622: 93 03          SUBD   $03
4624: DD 03          STD    $03
4626: EC 24          LDD    $4,Y
4628: A3 04          SUBD   $4,X
462A: DD 01          STD    $01
462C: 2A 0D          BPL    $463B
462E: 96 00          LDA    $00
4630: 8A 01          ORA    #$01
4632: 97 00          STA    $00
4634: CC 00 00       LDD    #$0000
4637: 93 01          SUBD   $01
4639: DD 01          STD    $01
463B: EC 28          LDD    $8,Y
463D: A3 08          SUBD   $8,X
463F: DD 05          STD    $05
4641: 2A 0D          BPL    $4650
4643: 96 00          LDA    $00
4645: 8A 04          ORA    #$04
4647: 97 00          STA    $00
4649: CC 00 00       LDD    #$0000
464C: 93 05          SUBD   $05
464E: DD 05          STD    $05
4650: 35 FE          PULS   D,DP,X,Y,U,PC
4652: 34 7E          PSHS   U,Y,X,DP,D
4654: 32 71          LEAS   -$F,S
4656: BD 45 D7       JSR    $45D7
4659: BD 46 A3       JSR    $46A3
465C: 25 3D          BCS    $469B
465E: D6 02          LDB    $02
4660: 0D 01          TST    $01
4662: 27 02          BEQ    $4666
4664: C6 FF          LDB    #$FF
4666: 4F             CLRA
4667: ED E4          STD    ,S
4669: D6 04          LDB    $04
466B: 0D 03          TST    $03
466D: 27 02          BEQ    $4671
466F: C6 FF          LDB    #$FF
4671: 4F             CLRA
4672: ED 62          STD    $2,S
4674: E3 E4          ADDD   ,S
4676: ED 64          STD    $4,S
4678: E6 61          LDB    $1,S
467A: 96 00          LDA    $00
467C: 27 06          BEQ    $4684
467E: 81 03          CMPA   #$03
4680: 27 02          BEQ    $4684
4682: E6 63          LDB    $3,S
4684: 86 40          LDA    #$40
4686: 3D             MUL
4687: 10 AE 64       LDY    $4,S
468A: BD 48 B1       JSR    $48B1
468D: ED 64          STD    $4,S
468F: 10 8E 46 9F    LDY    #$469F
4693: 96 00          LDA    $00
4695: A6 A6          LDA    A,Y
4697: AB 65          ADDA   $5,S
4699: 1C FE          ANDCC  #$FE
469B: 32 6F          LEAS   $F,S
469D: 35 FE          PULS   D,DP,X,Y,U,PC
469F: 00 40          NEG    $40
46A1: C0 80          SUBB   #$80
46A3: 32 7C          LEAS   -$4,S
46A5: EC 04          LDD    $4,X
46A7: ED E4          STD    ,S
46A9: EC 06          LDD    $6,X
46AB: E3 08          ADDD   $8,X
46AD: ED 62          STD    $2,S
46AF: EC E4          LDD    ,S
46B1: C3 00 20       ADDD   #$0020
46B4: 81 FF          CMPA   #$FF
46B6: 27 25          BEQ    $46DD
46B8: 10 93 3C       CMPD   $3C
46BB: 25 20          BCS    $46DD
46BD: DC 3C          LDD    $3C
46BF: C3 01 20       ADDD   #$0120
46C2: 10 A3 E4       CMPD   ,S
46C5: 25 16          BCS    $46DD
46C7: EC 62          LDD    $2,S
46C9: C3 00 20       ADDD   #$0020
46CC: 81 FF          CMPA   #$FF
46CE: 27 0D          BEQ    $46DD
46D0: 10 93 3F       CMPD   $3F
46D3: 25 08          BCS    $46DD
46D5: DC 3F          LDD    $3F
46D7: C3 01 20       ADDD   #$0120
46DA: 10 A3 62       CMPD   $2,S
46DD: 32 64          LEAS   $4,S
46DF: 39             RTS
46E0: 34 34          PSHS   Y,X,B
46E2: 32 7B          LEAS   -$5,S
46E4: BD 45 D7       JSR    $45D7
46E7: 96 00          LDA    $00
46E9: 1F 89          TFR    A,B
46EB: 48             ASLA
46EC: 48             ASLA
46ED: 48             ASLA
46EE: 84 08          ANDA   #$08
46F0: 97 00          STA    $00
46F2: 58             ASLB
46F3: C4 04          ANDB   #$04
46F5: DA 00          ORB    $00
46F7: D7 00          STB    $00
46F9: DC 01          LDD    $01
46FB: 10 93 03       CMPD   $03
46FE: 25 0F          BCS    $470F
4700: 0C 00          INC    $00
4702: 0C 00          INC    $00
4704: 44             LSRA
4705: 56             RORB
4706: 10 93 03       CMPD   $03
4709: 24 0F          BCC    $471A
470B: 0C 00          INC    $00
470D: 20 0B          BRA    $471A
470F: DC 03          LDD    $03
4711: 44             LSRA
4712: 56             RORB
4713: 10 93 01       CMPD   $01
4716: 24 02          BCC    $471A
4718: 0C 00          INC    $00
471A: 10 8E 47 26    LDY    #$4726
471E: D6 00          LDB    $00
4720: A6 A5          LDA    B,Y
4722: 32 65          LEAS   $5,S
4724: 35 B4          PULS   B,X,Y,PC
4726: 00 20          NEG    $20
4728: 40             NEGA
4729: 20 80          BRA    $46AB
472B: 60 40          NEG    $0,U
472D: 60 00          NEG    $0,X
472F: E0 C0          SUBB   ,U+
4731: E0 80          SUBB   ,X+
4733: A0 C0          SUBA   ,U+
4735: A0 34          SUBA   -$C,Y
4737: 66 32          ROR    -$E,Y
4739: 7F EE 88       CLR    $EE88
473C: 2D A6          BLT    $46E4
473E: 02 84 7F       AIM    #$84;$7F
4741: 81 7F          CMPA   #$7F
4743: 10 27 00 7F    LBEQ   $47C6
4747: 10 8E 02 81    LDY    #$0281
474B: B6 03 A1       LDA    $03A1
474E: 81 10          CMPA   #$10
4750: 10 24 00 72    LBCC   $47C6
4754: C6 08          LDB    #$08
4756: 3D             MUL
4757: 31 AB          LEAY   D,Y
4759: A6 88 16       LDA    $16,X
475C: 84 06          ANDA   #$06
475E: 27 0C          BEQ    $476C
4760: E6 41          LDB    $1,U
4762: E7 A4          STB    ,Y
4764: 84 02          ANDA   #$02
4766: 27 08          BEQ    $4770
4768: A6 42          LDA    $2,U
476A: 20 06          BRA    $4772
476C: A6 01          LDA    $1,X
476E: A7 A4          STA    ,Y
4770: A6 02          LDA    $2,X
4772: A7 21          STA    $1,Y
4774: EC 04          LDD    $4,X
4776: ED 22          STD    $2,Y
4778: EC 06          LDD    $6,X
477A: ED 24          STD    $4,Y
477C: EC 08          LDD    $8,X
477E: ED 26          STD    $6,Y
4780: A6 88 1B       LDA    $1B,X
4783: 84 3F          ANDA   #$3F
4785: 81 06          CMPA   #$06
4787: 27 16          BEQ    $479F
4789: 81 0A          CMPA   #$0A
478B: 27 12          BEQ    $479F
478D: 81 08          CMPA   #$08
478F: 27 0E          BEQ    $479F
4791: 86 07          LDA    #$07
4793: 26 22          BNE    $47B7
4795: A6 01          LDA    $1,X
4797: 81 04          CMPA   #$04
4799: 25 1C          BCS    $47B7
479B: 81 08          CMPA   #$08
479D: 24 18          BCC    $47B7
479F: A6 01          LDA    $1,X
47A1: 81 02          CMPA   #$02
47A3: 25 08          BCS    $47AD
47A5: A6 41          LDA    $1,U
47A7: 81 01          CMPA   #$01
47A9: 26 0C          BNE    $47B7
47AB: 27 04          BEQ    $47B1
47AD: 81 00          CMPA   #$00
47AF: 27 06          BEQ    $47B7
47B1: A6 A4          LDA    ,Y
47B3: 8A 80          ORA    #$80
47B5: A7 A4          STA    ,Y
47B7: CE 03 81       LDU    #$0381
47BA: B6 03 A1       LDA    $03A1
47BD: C6 02          LDB    #$02
47BF: 3D             MUL
47C0: 10 AF CB       STY    D,U
47C3: 7C 03 A1       INC    $03A1
47C6: 32 61          LEAS   $1,S
47C8: 35 E6          PULS   D,Y,U,PC
47CA: 34 36          PSHS   Y,X,D
47CC: D6 35          LDB    $35
47CE: C1 04          CMPB   #$04
47D0: 24 07          BCC    $47D9
47D2: 8E 00 31       LDX    #$0031
47D5: A7 85          STA    B,X
47D7: 0C 35          INC    $35
47D9: 35 B6          PULS   D,X,Y,PC
47DB: CC 00 00       LDD    #$0000
47DE: A3 0F          SUBD   $F,X
47E0: ED 0F          STD    $F,X
47E2: 39             RTS
47E3: 67 0F          ASR    $F,X
47E5: 66 88 10       ROR    $10,X
47E8: 39             RTS
47E9: A6 0F          LDA    $F,X
47EB: 2B 0A          BMI    $47F7
47ED: 81 01          CMPA   #$01
47EF: 24 12          BCC    $4803
47F1: CC 01 00       LDD    #$0100
47F4: ED 0F          STD    $F,X
47F6: 39             RTS
47F7: EC 0F          LDD    $F,X
47F9: 83 00 00       SUBD   #$0000
47FC: 25 05          BCS    $4803
47FE: CC FF 00       LDD    #$FF00
4801: ED 0F          STD    $F,X
4803: 39             RTS
4804: 34 7E          PSHS   U,Y,X,DP,D
4806: 97 00          STA    $00
4808: D6 00          LDB    $00
480A: 58             ASLB
480B: 58             ASLB
480C: DB 00          ADDB   $00
480E: DB 00          ADDB   $00
4810: 4F             CLRA
4811: 10 8E 48 2E    LDY    #$482E
4815: 31 AB          LEAY   D,Y
4817: EC A1          LDD    ,Y++
4819: ED 88 11       STD    $11,X
481C: EC A1          LDD    ,Y++
481E: ED 0F          STD    $F,X
4820: EC A1          LDD    ,Y++
4822: ED 0D          STD    $D,X
4824: A6 84          LDA    ,X
4826: 84 F0          ANDA   #$F0
4828: 8A 02          ORA    #$02
482A: A7 84          STA    ,X
482C: 35 FE          PULS   D,DP,X,Y,U,PC
482E: 01 00 01       OIM    #$00;$01
4831: 00 00          NEG    $00
4833: 90 01          SUBA   $01
4835: 00 FF          NEG    $FF
4837: 00 00          NEG    $00
4839: 90 01          SUBA   $01
483B: 00 00          NEG    $00
483D: 00 00          NEG    $00
483F: 90 08          SUBA   $08
4841: 00 03          NEG    $03
4843: 00 00          NEG    $00
4845: C0 01          SUBB   #$01
4847: 00 00          NEG    $00
4849: 00 00          NEG    $00
484B: 90 06          SUBA   $06
484D: 00 02          NEG    $02
484F: 00 00          NEG    $00
4851: 90 01          SUBA   $01
4853: 00 03          NEG    $03
4855: 00 00          NEG    $00
4857: 90 00          SUBA   $00
4859: 00 00          NEG    $00
485B: 00 00          NEG    $00
485D: 50             NEGB
485E: 0A 00          DEC    $00
4860: 02 00 00       AIM    #$00;$00
4863: D0 09          SUBB   $09
4865: 00 02          NEG    $02
4867: 00 01          NEG    $01
4869: 00 07          NEG    $07
486B: 00 00          NEG    $00
486D: 00 00          NEG    $00
486F: E0 09          SUBB   $9,X
4871: F0 02 00       SUBB   $0200
4874: 01 00 07       OIM    #$00;$07
4877: 00 00          NEG    $00
4879: 00 00          NEG    $00
487B: E0 07          SUBB   $7,X
487D: 00 00          NEG    $00
487F: 00 00          NEG    $00
4881: E0 00          SUBB   $0,X
4883: 00 01          NEG    $01
4885: 80 00          SUBA   #$00
4887: 50             NEGB
4888: 34 1F          PSHS   X,DP,D,CC
488A: 35 9F          PULS   CC,D,DP,X,PC
488C: 34 37          PSHS   Y,X,D,CC
488E: 8E 00 60       LDX    #$0060
4891: 6D 84          TST    ,X
4893: 26 12          BNE    $48A7
4895: A7 84          STA    ,X
4897: E7 01          STB    $1,X
4899: 84 40          ANDA   #$40
489B: 27 12          BEQ    $48AF
489D: A6 64          LDA    $4,S
489F: A7 02          STA    $2,X
48A1: A6 66          LDA    $6,S
48A3: A7 03          STA    $3,X
48A5: 35 B7          PULS   CC,D,X,Y,PC
48A7: C6 04          LDB    #$04
48A9: 3A             ABX
48AA: 8C 00 80       CMPX   #$0080
48AD: 25 E2          BCS    $4891
48AF: 35 B7          PULS   CC,D,X,Y,PC
48B1: 10 83 00 00    CMPD   #$0000
48B5: 27 2D          BEQ    $48E4
48B7: 10 8C 00 00    CMPY   #$0000
48BB: 27 27          BEQ    $48E4
48BD: 32 7B          LEAS   -$5,S
48BF: ED E4          STD    ,S
48C1: 10 AF 62       STY    $2,S
48C4: 86 10          LDA    #$10
48C6: A7 64          STA    $4,S
48C8: 4F             CLRA
48C9: 5F             CLRB
48CA: 68 61          ASL    $1,S
48CC: 69 E4          ROL    ,S
48CE: 59             ROLB
48CF: 49             ROLA
48D0: 10 A3 62       CMPD   $2,S
48D3: 25 04          BCS    $48D9
48D5: A3 62          SUBD   $2,S
48D7: 6C 61          INC    $1,S
48D9: 6A 64          DEC    $4,S
48DB: 26 ED          BNE    $48CA
48DD: 1F 02          TFR    D,Y
48DF: EC E4          LDD    ,S
48E1: 32 65          LEAS   $5,S
48E3: 39             RTS
48E4: 8E 00 00       LDX    #$0000
48E7: CC 00 00       LDD    #$0000
48EA: 39             RTS
48EB: 8C 00 00       CMPX   #$0000
48EE: 27 29          BEQ    $4919
48F0: C1 00          CMPB   #$00
48F2: 27 25          BEQ    $4919
48F4: 32 71          LEAS   -$F,S
48F6: AF E4          STX    ,S
48F8: E7 62          STB    $2,S
48FA: 86 10          LDA    #$10
48FC: A7 63          STA    $3,S
48FE: 4F             CLRA
48FF: 5F             CLRB
4900: 68 61          ASL    $1,S
4902: 69 E4          ROL    ,S
4904: 59             ROLB
4905: 49             ROLA
4906: E1 62          CMPB   $2,S
4908: 25 04          BCS    $490E
490A: E0 62          SUBB   $2,S
490C: 6C 61          INC    $1,S
490E: 6A 63          DEC    $3,S
4910: 26 EE          BNE    $4900
4912: 1F 02          TFR    D,Y
4914: AE E4          LDX    ,S
4916: 32 6F          LEAS   $F,S
4918: 39             RTS
4919: 8E 00 00       LDX    #$0000
491C: 10 8E 00 00    LDY    #$0000
4920: 39             RTS
4921: 81 00          CMPA   #$00
4923: 27 28          BEQ    $494D
4925: C1 00          CMPB   #$00
4927: 27 24          BEQ    $494D
4929: 32 71          LEAS   -$F,S
492B: A7 E4          STA    ,S
492D: E7 61          STB    $1,S
492F: 86 08          LDA    #$08
4931: A7 62          STA    $2,S
4933: 6F 63          CLR    $3,S
4935: 4F             CLRA
4936: 68 63          ASL    $3,S
4938: 58             ASLB
4939: 49             ROLA
493A: A1 E4          CMPA   ,S
493C: 25 04          BCS    $4942
493E: A0 E4          SUBA   ,S
4940: 6C 63          INC    $3,S
4942: 6A 62          DEC    $2,S
4944: 26 F0          BNE    $4936
4946: 1F 89          TFR    A,B
4948: A6 63          LDA    $3,S
494A: 32 6F          LEAS   $F,S
494C: 39             RTS
494D: 4F             CLRA
494E: 5F             CLRB
494F: 39             RTS
4950: 8C 00 00       CMPX   #$0000
4953: 27 43          BEQ    $4998
4955: 10 8C 00 00    CMPY   #$0000
4959: 27 3D          BEQ    $4998
495B: 32 71          LEAS   -$F,S
495D: 6F 64          CLR    $4,S
495F: 6F 65          CLR    $5,S
4961: 6F 66          CLR    $6,S
4963: 6F 67          CLR    $7,S
4965: AF E4          STX    ,S
4967: 10 AF 62       STY    $2,S
496A: A6 61          LDA    $1,S
496C: E6 63          LDB    $3,S
496E: 3D             MUL
496F: ED 66          STD    $6,S
4971: A6 E4          LDA    ,S
4973: E6 63          LDB    $3,S
4975: 3D             MUL
4976: E3 65          ADDD   $5,S
4978: ED 65          STD    $5,S
497A: A6 61          LDA    $1,S
497C: E6 62          LDB    $2,S
497E: 3D             MUL
497F: E3 65          ADDD   $5,S
4981: ED 65          STD    $5,S
4983: 24 02          BCC    $4987
4985: 6C 64          INC    $4,S
4987: A6 E4          LDA    ,S
4989: E6 62          LDB    $2,S
498B: 3D             MUL
498C: E3 64          ADDD   $4,S
498E: ED 64          STD    $4,S
4990: 10 AE 64       LDY    $4,S
4993: AE 66          LDX    $6,S
4995: 32 6F          LEAS   $F,S
4997: 39             RTS
4998: 8E 00 00       LDX    #$0000
499B: 10 8E 00 00    LDY    #$0000
499F: 39             RTS
49A0: 7F 0A F5       CLR    $0AF5
49A3: 7F 0A F6       CLR    $0AF6
49A6: BD 4A 58       JSR    $4A58
49A9: 86 20          LDA    #$20
49AB: BD FE 23       JSR    $FE23
49AE: BD 49 C0       JSR    $49C0
49B1: B6 0A F6       LDA    $0AF6
49B4: 81 02          CMPA   #$02
49B6: 27 07          BEQ    $49BF
49B8: 86 01          LDA    #$01
49BA: BD FE 23       JSR    $FE23
49BD: 20 EF          BRA    $49AE
49BF: 39             RTS
49C0: 8E 49 CA       LDX    #$49CA
49C3: F6 0A F6       LDB    $0AF6
49C6: 58             ASLB
49C7: AD 95          JSR    [B,X]
49C9: 39             RTS
49CA: 49             ROLA
49CB: CE 4A 08       LDU    #$4A08
49CE: B6 0A F5       LDA    $0AF5
49D1: 2B 14          BMI    $49E7
49D3: 7F 0A F7       CLR    $0AF7
49D6: 7F 0A F8       CLR    $0AF8
49D9: BD 4B 2E       JSR    $4B2E
49DC: BD FF B5       JSR    $FFB5
49DF: B6 0A F5       LDA    $0AF5
49E2: 8A 80          ORA    #$80
49E4: B7 0A F5       STA    $0AF5
49E7: 7C 0A F7       INC    $0AF7
49EA: B6 0A F7       LDA    $0AF7
49ED: 81 0C          CMPA   #$0C
49EF: 26 16          BNE    $4A07
49F1: 7F 0A F7       CLR    $0AF7
49F4: 7C 0A F8       INC    $0AF8
49F7: BD FF B5       JSR    $FFB5
49FA: B6 0A F8       LDA    $0AF8
49FD: 81 05          CMPA   #$05
49FF: 26 06          BNE    $4A07
4A01: 7C 0A F6       INC    $0AF6
4A04: 7F 0A F5       CLR    $0AF5
4A07: 39             RTS
4A08: B6 0A F5       LDA    $0AF5
4A0B: 2B 0E          BMI    $4A1B
4A0D: 7F 0A F7       CLR    $0AF7
4A10: 7F 0A F8       CLR    $0AF8
4A13: B6 0A F5       LDA    $0AF5
4A16: 8A 80          ORA    #$80
4A18: B7 0A F5       STA    $0AF5
4A1B: 7C 0A F7       INC    $0AF7
4A1E: B6 0A F7       LDA    $0AF7
4A21: 81 04          CMPA   #$04
4A23: 26 16          BNE    $4A3B
4A25: 7F 0A F7       CLR    $0AF7
4A28: 7C 0A F8       INC    $0AF8
4A2B: BD 4A 3C       JSR    $4A3C
4A2E: B6 0A F8       LDA    $0AF8
4A31: 81 0A          CMPA   #$0A
4A33: 26 D2          BNE    $4A07
4A35: 7C 0A F6       INC    $0AF6
4A38: 7F 0A F5       CLR    $0AF5
4A3B: 39             RTS
4A3C: 8E 4A 54       LDX    #$4A54
4A3F: F6 0A F8       LDB    $0AF8
4A42: C4 01          ANDB   #$01
4A44: 58             ASLB
4A45: EC 85          LDD    B,X
4A47: B7 11 0C       STA    $110C
4A4A: F7 13 0C       STB    $130C
4A4D: B7 10 8C       STA    $108C
4A50: F7 12 8C       STB    $128C
4A53: 39             RTS
4A54: 00 00          NEG    $00
4A56: FF 04 BD       STU    $04BD
4A59: 4A             DECA
4A5A: 97 BD          STA    $BD
4A5C: 4A             DECA
4A5D: A5 BD 4A B7    BITA   [$9518,PCR]
4A61: BD 4A 7E       JSR    $4A7E
4A64: BD 4A C7       JSR    $4AC7
4A67: BD 4A E4       JSR    $4AE4
4A6A: 39             RTS
4A6B: BD 4A 97       JSR    $4A97
4A6E: BD 4A A5       JSR    $4AA5
4A71: BD 4A B7       JSR    $4AB7
4A74: BD 4A C7       JSR    $4AC7
4A77: BD 4A E4       JSR    $4AE4
4A7A: BD 4B 2E       JSR    $4B2E
4A7D: 39             RTS
4A7E: 8E 10 10       LDX    #$1010
4A81: 10 8E 10 70    LDY    #$1070
4A85: 6F 89 02 00    CLR    $0200,X
4A89: 6F 80          CLR    ,X+
4A8B: 6F A9 02 00    CLR    $0200,Y
4A8F: 6F A0          CLR    ,Y+
4A91: 8C 10 20       CMPX   #$1020
4A94: 26 EF          BNE    $4A85
4A96: 39             RTS
4A97: 8E 30 00       LDX    #$3000
4A9A: CC 07 FF       LDD    #$07FF
4A9D: ED 81          STD    ,X++
4A9F: 8C 38 00       CMPX   #$3800
4AA2: 26 F9          BNE    $4A9D
4AA4: 39             RTS
4AA5: C6 00          LDB    #$00
4AA7: F7 38 09       STB    $3809
4AAA: F7 38 0A       STB    $380A
4AAD: 96 3A          LDA    $3A
4AAF: 84 FC          ANDA   #$FC
4AB1: 97 3A          STA    $3A
4AB3: B7 38 08       STA    $3808
4AB6: 39             RTS
4AB7: 86 04          LDA    #$04
4AB9: 97 4B          STA    $4B
4ABB: 86 00          LDA    #$00
4ABD: 97 4D          STA    $4D
4ABF: 86 0A          LDA    #$0A
4AC1: 97 4F          STA    $4F
4AC3: BD FE 36       JSR    $FE36
4AC6: 39             RTS
4AC7: 8E 4D 16       LDX    #$4D16
4ACA: C6 09          LDB    #$09
4ACC: D7 00          STB    $00
4ACE: C6 04          LDB    #$04
4AD0: D7 01          STB    $01
4AD2: 10 AE 81       LDY    ,X++
4AD5: 86 07          LDA    #$07
4AD7: E6 80          LDB    ,X+
4AD9: ED A1          STD    ,Y++
4ADB: 0A 01          DEC    $01
4ADD: 26 F8          BNE    $4AD7
4ADF: 0A 00          DEC    $00
4AE1: 26 EB          BNE    $4ACE
4AE3: 39             RTS
4AE4: 32 7E          LEAS   -$2,S
4AE6: 8E 4D 4C       LDX    #$4D4C
4AE9: 10 8E 28 00    LDY    #$2800
4AED: 86 0D          LDA    #$0D
4AEF: A7 E4          STA    ,S
4AF1: 86 0D          LDA    #$0D
4AF3: A7 61          STA    $1,S
4AF5: A6 84          LDA    ,X
4AF7: 81 FF          CMPA   #$FF
4AF9: 26 04          BNE    $4AFF
4AFB: 30 01          LEAX   $1,X
4AFD: 20 1C          BRA    $4B1B
4AFF: A6 E4          LDA    ,S
4B01: 48             ASLA
4B02: 48             ASLA
4B03: 48             ASLA
4B04: 48             ASLA
4B05: A7 A0          STA    ,Y+
4B07: 86 80          LDA    #$80
4B09: A7 A0          STA    ,Y+
4B0B: 86 03          LDA    #$03
4B0D: A7 A0          STA    ,Y+
4B0F: A6 80          LDA    ,X+
4B11: A7 A0          STA    ,Y+
4B13: A6 61          LDA    $1,S
4B15: 48             ASLA
4B16: 48             ASLA
4B17: 48             ASLA
4B18: 48             ASLA
4B19: A7 A0          STA    ,Y+
4B1B: 6A 61          DEC    $1,S
4B1D: A6 61          LDA    $1,S
4B1F: 81 04          CMPA   #$04
4B21: 26 D2          BNE    $4AF5
4B23: 6A E4          DEC    ,S
4B25: A6 E4          LDA    ,S
4B27: 81 04          CMPA   #$04
4B29: 26 C6          BNE    $4AF1
4B2B: 32 62          LEAS   $2,S
4B2D: 39             RTS
4B2E: 5F             CLRB
4B2F: 10 8E 4B 3E    LDY    #$4B3E
4B33: AE A1          LDX    ,Y++
4B35: BD 4B 46       JSR    $4B46
4B38: 5C             INCB
4B39: C1 04          CMPB   #$04
4B3B: 26 F6          BNE    $4B33
4B3D: 39             RTS
4B3E: 4B             FCB    $4B
4B3F: 7A 4B E2       DEC    $4BE2
4B42: 4C             INCA
4B43: 53             COMB
4B44: 4C             INCA
4B45: C6 34          LDB    #$34
4B47: 36 EC          PSHU   PC,S,Y,DP,B
4B49: 81 DD          CMPA   #$DD
4B4B: 00 EC          NEG    $EC
4B4D: 81 DD          CMPA   #$DD
4B4F: 02 DD 04       AIM    #$DD;$04
4B52: A6 80          LDA    ,X+
4B54: 97 06          STA    $06
4B56: 10 9E 00       LDY    $00
4B59: 96 06          LDA    $06
4B5B: E6 80          LDB    ,X+
4B5D: C1 FF          CMPB   #$FF
4B5F: 26 02          BNE    $4B63
4B61: 4F             CLRA
4B62: 5F             CLRB
4B63: ED A1          STD    ,Y++
4B65: 0A 04          DEC    $04
4B67: 26 F0          BNE    $4B59
4B69: 96 02          LDA    $02
4B6B: 97 04          STA    $04
4B6D: DC 00          LDD    $00
4B6F: C3 00 40       ADDD   #$0040
4B72: DD 00          STD    $00
4B74: 0A 05          DEC    $05
4B76: 26 DE          BNE    $4B56
4B78: 35 B6          PULS   D,X,Y,PC
4B7A: 1B             FCB    $1B
4B7B: C2 09          SBCB   #$09
4B7D: 0B 21 FF       TIM    #$21;$FF
4B80: FF 00 01       STU    >$0001
4B83: 02 FF FF       AIM    #$FF;$FF
4B86: FF FF 03       STU    $FF03
4B89: 04 05          LSR    $05
4B8B: 06 07          ROR    $07
4B8D: 08 FF          ASL    $FF
4B8F: FF FF 09       STU    $FF09
4B92: 0A 0B          DEC    $0B
4B94: 0C 0D          INC    $0D
4B96: 0E 0F          JMP    $0F
4B98: 10 FF FF 11    STS    $FF11
4B9C: 12             NOP
4B9D: 13             SYNC
4B9E: 14             SEXW
4B9F: 15             FCB    $15
4BA0: 16 17 FF       LBRA   $63A2
4BA3: FF FF 18       STU    $FF18
4BA6: 19             DAA
4BA7: 1A 1B          ORCC   #$1B
4BA9: 1C 1D          ANDCC  #$1D
4BAB: 1E FF          EXG    F,F
4BAD: 1F 20          TFR    Y,D
4BAF: 21 22          BRN    $4BD3
4BB1: FF 23 24       STU    $2324
4BB4: 25 26          BCS    $4BDC
4BB6: 27 28          BEQ    $4BE0
4BB8: 29 2A          BVS    $4BE4
4BBA: 2B 2C          BMI    $4BE8
4BBC: 2D 2E          BLT    $4BEC
4BBE: 2F 30          BLE    $4BF0
4BC0: 31 32          LEAY   -$E,Y
4BC2: 33 34          LEAU   -$C,Y
4BC4: 35 36          PULS   D,X,Y
4BC6: FF 37 38       STU    $3738
4BC9: 39             RTS
4BCA: 3A             ABX
4BCB: 3B             RTI
4BCC: 3C 3D          CWAI   #$3D
4BCE: 3E             FCB    $3E
4BCF: 3F             SWI
4BD0: 40             NEGA
4BD1: 41             FCB    $41
4BD2: 42             FCB    $42
4BD3: 43             COMA
4BD4: 44             LSRA
4BD5: 45             FCB    $45
4BD6: 46             RORA
4BD7: 47             ASRA
4BD8: 48             ASLA
4BD9: FF 49 FF       STU    $49FF
4BDC: FF FF 4A       STU    $FF4A
4BDF: 4B             FCB    $4B
4BE0: 4C             INCA
4BE1: 4D             TSTA
4BE2: 1B             FCB    $1B
4BE3: 96 09          LDA    $09
4BE5: 0C 21          INC    $21
4BE7: FF FF FF       STU    $FFFF
4BEA: FF 4E FF       STU    $4EFF
4BED: FF FF FF       STU    $FFFF
4BF0: FF 4F 50       STU    $4F50
4BF3: 51             FCB    $51
4BF4: 52             FCB    $52
4BF5: 53             COMB
4BF6: 54             LSRB
4BF7: 55             FCB    $55
4BF8: FF 56 57       STU    $5657
4BFB: 58             ASLB
4BFC: 59             ROLB
4BFD: 5A             DECB
4BFE: 5B             FCB    $5B
4BFF: 5C             INCB
4C00: 5D             TSTB
4C01: FF 5E 5F       STU    $5E5F
4C04: 60 61          NEG    $1,S
4C06: 62 63 64       AIM    #$63;$4,S
4C09: 65 FF 66       EIM    #$FF;$6,S
4C0C: 67 68          ASR    $8,S
4C0E: 69 6A          ROL    $A,S
4C10: 6B 6C 6D       TIM    #$6C;$D,S
4C13: FF 6E 6F       STU    $6E6F
4C16: 70 71 72       NEG    $7172
4C19: 73 74 FF       COM    $74FF
4C1C: FF 75 76       STU    $7576
4C1F: 77 78 79       ASR    $7879
4C22: 7A 7B 7C       DEC    $7B7C
4C25: FF 7D 7E       STU    $7D7E
4C28: 7F 80 81       CLR    $8081
4C2B: 82 83          SBCA   #$83
4C2D: 84 FF          ANDA   #$FF
4C2F: FF 85 86       STU    $8586
4C32: 87             FCB    $87
4C33: 88 89          EORA   #$89
4C35: 8A 8B          ORA    #$8B
4C37: 8C FF 8D       CMPX   #$FF8D
4C3A: 8E 8F 90       LDX    #$8F90
4C3D: 91 92          CMPA   $92
4C3F: 93 94          SUBD   $94
4C41: 95 96          BITA   $96
4C43: 97 98          STA    $98
4C45: 99 9A          ADCA   $9A
4C47: 9B 9C          ADDA   $9C
4C49: 9D 9E          JSR    $9E
4C4B: 9F A0          STX    $A0
4C4D: A1 A2          CMPA   ,-Y
4C4F: FF A3 A4       STU    $A3A4
4C52: A5 1B          BITA   -$5,X
4C54: EA 0A          ORB    $A,X
4C56: 0B 22 FF       TIM    #$22;$FF
4C59: 00 01          NEG    $01
4C5B: 02 FF 03       AIM    #$FF;$03
4C5E: 04 FF          LSR    $FF
4C60: FF FF FF       STU    $FFFF
4C63: 05 06 07       EIM    #$06;$07
4C66: 08 09          ASL    $09
4C68: 0A 0B          DEC    $0B
4C6A: FF FF 0C       STU    $FF0C
4C6D: 0D 0E          TST    $0E
4C6F: 0F 10          CLR    $10
4C71: 11 12          FCB    $11,$12
4C73: 13             FCB    $13
4C74: 14             FCB    $14
4C75: FF             FCB    $FF
4C76: FF             FCB    $FF
4C77: 15             FCB    $15
4C78: 16             FCB    $16
4C79: 17             FCB    $17
4C7A: 18             FCB    $18
4C7B: 19             FCB    $19
4C7C: 1A             FCB    $1A
4C7D: 1B             FCB    $1B
4C7E: FF             FCB    $FF
4C7F: FF             FCB    $FF
4C80: 1C             FCB    $1C
4C81: 1D             FCB    $1D
4C82: 1E             FCB    $1E
4C83: 1F             FCB    $1F
4C84: 20             FCB    $20
4C85: 21             FCB    $21
4C86: 22             FCB    $22
4C87: 23             FCB    $23
4C88: 24             FCB    $24
4C89: FF             FCB    $FF
4C8A: 25             FCB    $25
4C8B: 26             FCB    $26
4C8C: 27             FCB    $27
4C8D: 28             FCB    $28
4C8E: 29             FCB    $29
4C8F: 2A             FCB    $2A
4C90: 2B             FCB    $2B
4C91: 2C             FCB    $2C
4C92: 2D             FCB    $2D
4C93: FF             FCB    $FF
4C94: FF             FCB    $FF
4C95: 2E             FCB    $2E
4C96: 2F             FCB    $2F
4C97: 30 31 32       BAND   CC,6,1,$32
4C9A: 33 34          LEAU   -$C,Y
4C9C: 35 FF          PULS   CC,D,DP,X,Y,U,PC
4C9E: FF 36 37       STU    $3637
4CA1: 38             FCB    $38
4CA2: 39             RTS
4CA3: 3A             ABX
4CA4: 3B             RTI
4CA5: 3C 3D          CWAI   #$3D
4CA7: FF FF 3E       STU    $FF3E
4CAA: 3F             SWI
4CAB: 40             NEGA
4CAC: 41             FCB    $41
4CAD: 42             FCB    $42
4CAE: 43             COMA
4CAF: 44             LSRA
4CB0: 45             FCB    $45
4CB1: 46             RORA
4CB2: FF 47 48       STU    $4748
4CB5: 49             ROLA
4CB6: 4A             DECA
4CB7: 4B             FCB    $4B
4CB8: 4C             INCA
4CB9: 4D             TSTA
4CBA: 4E             FCB    $4E
4CBB: 4F             CLRA
4CBC: FF 50 51       STU    $5051
4CBF: 52             FCB    $52
4CC0: 53             COMB
4CC1: 54             LSRB
4CC2: 55             FCB    $55
4CC3: 56             RORB
4CC4: 57             ASRB
4CC5: 58             ASLB
4CC6: 1A C8          ORCC   #$C8
4CC8: 19             DAA
4CC9: 03 E2          COM    $E2
4CCB: 59             ROLB
4CCC: 5A             DECB
4CCD: 5B             FCB    $5B
4CCE: 5C             INCB
4CCF: 5D             TSTB
4CD0: 5E             FCB    $5E
4CD1: 5F             CLRB
4CD2: 60 61          NEG    $1,S
4CD4: 62 63 64       AIM    #$63;$4,S
4CD7: 7D 7E 7F       TST    $7E7F
4CDA: 80 81          SUBA   #$81
4CDC: 82 83          SBCA   #$83
4CDE: 84 95          ANDA   #$95
4CE0: 96 97          LDA    $97
4CE2: 98 99          EORA   $99
4CE4: 65 66 67       EIM    #$66;$7,S
4CE7: 68 69          ASL    $9,S
4CE9: 6A 6B          DEC    $B,S
4CEB: 6C 6D          INC    $D,S
4CED: 6E 6F          JMP    $F,S
4CEF: 70 85 86       NEG    $8586
4CF2: 87             FCB    $87
4CF3: 88 89          EORA   #$89
4CF5: 8A 8B          ORA    #$8B
4CF7: 8C 9A 9B       CMPX   #$9A9B
4CFA: 9C 9D          CMPX   $9D
4CFC: 9E 71          LDX    $71
4CFE: 72 73 74 75    AIM    #$73,$7475
4D02: 76 77 78       ROR    $7778
4D05: 79 7A 7B       ROL    $7A7B
4D08: 7C 8D 8E       INC    $8D8E
4D0B: 8F             FCB    $8F
4D0C: 90 91          SUBA   $91
4D0E: 92 93          SBCA   $93
4D10: 94 9F          ANDA   $9F
4D12: A0 A1          SUBA   ,Y++
4D14: A2 A3          SBCA   ,--Y
4D16: 30 96          LEAX   [A,X]
4D18: E8 E9 EA FF    EORB   -$1501,S
4D1C: 30 B6          LEAX   [A,Y]
4D1E: EB EC ED       ADDB   $4D0E,PCR
4D21: FF 30 D6       STU    $30D6
4D24: EE EF          LDU    ,--W
4D26: F0 FF 30       SUBB   $FF30
4D29: F6 FF F1       LDB    $FFF1
4D2C: F2 FF 31       SBCB   $FF31
4D2F: 16 FF F3       LBRA   $4D25
4D32: F4 FF 31       ANDB   $FF31
4D35: 36 F5          PSHU   PC,S,Y,X,B,CC
4D37: F6 FF F7       LDB    $FFF7
4D3A: 31 56          LEAY   -$A,U
4D3C: F8 F9 FA       EORB   $F9FA
4D3F: FF 31 76       STU    $3176
4D42: FB FC FF       ADDB   $FCFF
4D45: FF 31 96       STU    $3196
4D48: FD FE FF       STD    $FEFF
4D4B: FF FF CA       STU    $FFCA
4D4E: CB 98          ADDB   #$98
4D50: 99 9A          ADCA   $9A
4D52: 9B FF          ADDA   $FF
4D54: FF FF CE       STU    $FFCE
4D57: CF             FCB    $CF
4D58: 9C 9D          CMPX   $9D
4D5A: 9E 9F          LDX    $9F
4D5C: A0 FF FF D3    SUBA   [$FFD3]
4D60: D4 A1          ANDB   $A1
4D62: A2 A3          SBCA   ,--Y
4D64: A4 A5          ANDA   B,Y
4D66: A6 FF C8 C9    LDA    [$C8C9]
4D6A: A7 A8 A9       STA    -$57,Y
4D6D: AA AB          ORA    D,Y
4D6F: AC FF CC CD    CMPX   [$CCCD]
4D73: AD AE          JSR    W,Y
4D75: AF B0 B1 B2    STX    [-$4E4E,W]
4D79: D0 D1          SUBB   $D1
4D7B: D2 B3          SBCB   $B3
4D7D: B4 B5 B6       ANDA   $B5B6
4D80: B7 B8 D5       STA    $B8D5
4D83: D6 D7          LDB    $D7
4D85: B9 BA BB       ADCA   $BABB
4D88: BC BD BE       CMPX   $BDBE
4D8B: FF FF FF       STU    $FFFF
4D8E: BF C0 C1       STX    $C0C1
4D91: C2 C3          SBCB   #$C3
4D93: C4 FF          ANDB   #$FF
4D95: FF FF FF       STU    $FFFF
4D98: FF FF C5       STU    $FFC5
4D9B: C6 C7          LDB    #$C7
4D9D: D6 38          LDB    $38
4D9F: 26 0C          BNE    $4DAD
4DA1: 7F 0A 55       CLR    $0A55
4DA4: 7F 0B 02       CLR    $0B02
4DA7: 7F 0A F1       CLR    $0AF1
4DAA: 7F 0A EC       CLR    $0AEC
4DAD: 0F 00          CLR    $00
4DAF: 7F 0B 22       CLR    $0B22
4DB2: 7F 0A BC       CLR    $0ABC
4DB5: 7F 0A EC       CLR    $0AEC
4DB8: 7F 0A FB       CLR    $0AFB
4DBB: 7F 0B 11       CLR    $0B11
4DBE: 7F 0B 14       CLR    $0B14
4DC1: 7F 0B 19       CLR    $0B19
4DC4: 7F 0B 1B       CLR    $0B1B
4DC7: 7F 0B 1C       CLR    $0B1C
4DCA: 7F 0B 1D       CLR    $0B1D
4DCD: 7F 0B 1E       CLR    $0B1E
4DD0: 7F 0B 1F       CLR    $0B1F
4DD3: 7F 0B 21       CLR    $0B21
4DD6: 7F 0B 20       CLR    $0B20
4DD9: BD 4E 56       JSR    $4E56
4DDC: 39             RTS
4DDD: B6 0B 03       LDA    $0B03
4DE0: 84 C0          ANDA   #$C0
4DE2: 81 C0          CMPA   #$C0
4DE4: 27 08          BEQ    $4DEE
4DE6: 8E 4D EF       LDX    #$4DEF
4DE9: 96 36          LDA    $36
4DEB: 48             ASLA
4DEC: AD 96          JSR    [A,X]
4DEE: 39             RTS
4DEF: 4D             TSTA
4DF0: F7 4E 04       STB    $4E04
4DF3: 4E             FCB    $4E
4DF4: 0E 4E          JMP    $4E
4DF6: 18             FCB    $18
4DF7: BD 50 6C       JSR    $506C
4DFA: BD 5B 1F       JSR    $5B1F
4DFD: BD 58 8F       JSR    $588F
4E00: BD 51 E5       JSR    $51E5
4E03: 39             RTS
4E04: BD 50 71       JSR    $5071
4E07: BD FE 33       JSR    $FE33
4E0A: BD 5C 93       JSR    $5C93
4E0D: 39             RTS
4E0E: BD 50 76       JSR    $5076
4E11: BD 51 E5       JSR    $51E5
4E14: BD 54 B3       JSR    $54B3
4E17: 39             RTS
4E18: BD 50 7B       JSR    $507B
4E1B: 96 38          LDA    $38
4E1D: 81 01          CMPA   #$01
4E1F: 27 0B          BEQ    $4E2C
4E21: BD 5B 1F       JSR    $5B1F
4E24: BD 58 8F       JSR    $588F
4E27: BD FF AB       JSR    $FFAB
4E2A: 20 06          BRA    $4E32
4E2C: BD 54 B3       JSR    $54B3
4E2F: BD 4E 33       JSR    $4E33
4E32: 39             RTS
4E33: B6 0B 21       LDA    $0B21
4E36: 2B 12          BMI    $4E4A
4E38: DC 3C          LDD    $3C
4E3A: 10 83 19 60    CMPD   #$1960
4E3E: 25 0A          BCS    $4E4A
4E40: 86 01          LDA    #$01
4E42: BD 44 CD       JSR    $44CD
4E45: 86 80          LDA    #$80
4E47: B7 0B 21       STA    $0B21
4E4A: 39             RTS
4E4B: 7D 0A 54       TST    $0A54
4E4E: 27 25          BEQ    $4E75
4E50: 7F 0A 54       CLR    $0A54
4E53: 7C 0A 55       INC    $0A55
4E56: 8E 4F BA       LDX    #$4FBA
4E59: D6 36          LDB    $36
4E5B: 58             ASLB
4E5C: AE 85          LDX    B,X
4E5E: 86 05          LDA    #$05
4E60: F6 0A 55       LDB    $0A55
4E63: 3D             MUL
4E64: 30 8B          LEAX   D,X
4E66: A6 80          LDA    ,X+
4E68: B7 0A 56       STA    $0A56
4E6B: EC 81          LDD    ,X++
4E6D: FD 0A 57       STD    $0A57
4E70: EC 81          LDD    ,X++
4E72: FD 0A 59       STD    $0A59
4E75: 39             RTS
4E76: 7E 7F DD       JMP    $7FDD
4E79: C1 00          CMPB   #$00
4E7B: 26 08          BNE    $4E85
4E7D: CC 00 00       LDD    #$0000
4E80: FD 0A 42       STD    $0A42
4E83: 20 37          BRA    $4EBC
4E85: F6 0A 56       LDB    $0A56
4E88: C1 01          CMPB   #$01
4E8A: 26 0D          BNE    $4E99
4E8C: 7D 0A 42       TST    $0A42
4E8F: 2A 2B          BPL    $4EBC
4E91: CC 00 00       LDD    #$0000
4E94: FD 0A 42       STD    $0A42
4E97: 20 23          BRA    $4EBC
4E99: F6 0A 56       LDB    $0A56
4E9C: C1 02          CMPB   #$02
4E9E: 26 0D          BNE    $4EAD
4EA0: 7D 0A 42       TST    $0A42
4EA3: 2B 17          BMI    $4EBC
4EA5: CC 00 00       LDD    #$0000
4EA8: FD 0A 42       STD    $0A42
4EAB: 20 0F          BRA    $4EBC
4EAD: F6 0A 56       LDB    $0A56
4EB0: C1 04          CMPB   #$04
4EB2: 26 08          BNE    $4EBC
4EB4: 8E 4E BD       LDX    #$4EBD
4EB7: D6 36          LDB    $36
4EB9: 58             ASLB
4EBA: AD 95          JSR    [B,X]
4EBC: 39             RTS
4EBD: 4E             FCB    $4E
4EBE: C5 4E          BITB   #$4E
4EC0: DA 4F          ORB    $4F
4EC2: 36 4F          PSHU   S,DP,D,CC
4EC4: 6B FC 0A       TIM    #$FC;$A,X
4EC7: 5F             CLRB
4EC8: 10 83 05 00    CMPD   #$0500
4ECC: 24 08          BCC    $4ED6
4ECE: CC 01 00       LDD    #$0100
4ED1: FD 0A 42       STD    $0A42
4ED4: 20 03          BRA    $4ED9
4ED6: 7F 0A 56       CLR    $0A56
4ED9: 39             RTS
4EDA: CC 00 00       LDD    #$0000
4EDD: FD 0A 42       STD    $0A42
4EE0: FD 0A 44       STD    $0A44
4EE3: FC 0A 5F       LDD    $0A5F
4EE6: 10 83 08 00    CMPD   #$0800
4EEA: 24 08          BCC    $4EF4
4EEC: CC 01 00       LDD    #$0100
4EEF: FD 0A 42       STD    $0A42
4EF2: 20 41          BRA    $4F35
4EF4: B6 0B 02       LDA    $0B02
4EF7: 2B 05          BMI    $4EFE
4EF9: 8A 80          ORA    #$80
4EFB: B7 0B 02       STA    $0B02
4EFE: FC 0A 62       LDD    $0A62
4F01: 10 83 02 70    CMPD   #$0270
4F05: 23 08          BLS    $4F0F
4F07: CC FF 00       LDD    #$FF00
4F0A: FD 0A 44       STD    $0A44
4F0D: 20 26          BRA    $4F35
4F0F: FC 0A 5F       LDD    $0A5F
4F12: 10 83 08 00    CMPD   #$0800
4F16: 25 1D          BCS    $4F35
4F18: B6 0E 1A       LDA    $0E1A
4F1B: 84 03          ANDA   #$03
4F1D: 81 03          CMPA   #$03
4F1F: 26 14          BNE    $4F35
4F21: FC 0A 62       LDD    $0A62
4F24: 10 83 01 80    CMPD   #$0180
4F28: 23 08          BLS    $4F32
4F2A: CC FF 00       LDD    #$FF00
4F2D: FD 0A 44       STD    $0A44
4F30: 20 03          BRA    $4F35
4F32: 7F 0A 56       CLR    $0A56
4F35: 39             RTS
4F36: B6 0B 02       LDA    $0B02
4F39: 85 01          BITA   #$01
4F3B: 26 19          BNE    $4F56
4F3D: FC 0A 5F       LDD    $0A5F
4F40: 10 83 11 02    CMPD   #$1102
4F44: 24 08          BCC    $4F4E
4F46: CC 01 00       LDD    #$0100
4F49: FD 0A 42       STD    $0A42
4F4C: 20 1C          BRA    $4F6A
4F4E: B6 0B 02       LDA    $0B02
4F51: 8A 01          ORA    #$01
4F53: B7 0B 02       STA    $0B02
4F56: FC 0A 62       LDD    $0A62
4F59: 10 83 01 28    CMPD   #$0128
4F5D: 23 08          BLS    $4F67
4F5F: CC FF 00       LDD    #$FF00
4F62: FD 0A 44       STD    $0A44
4F65: 20 03          BRA    $4F6A
4F67: 73 0A 54       COM    $0A54
4F6A: 39             RTS
4F6B: FC 0A 5F       LDD    $0A5F
4F6E: 10 83 1A 05    CMPD   #$1A05
4F72: 23 08          BLS    $4F7C
4F74: CC FE 00       LDD    #$FE00
4F77: FD 0A 42       STD    $0A42
4F7A: 20 03          BRA    $4F7F
4F7C: 73 0A 54       COM    $0A54
4F7F: 39             RTS
4F80: F6 0A 56       LDB    $0A56
4F83: C1 01          CMPB   #$01
4F85: 26 05          BNE    $4F8C
4F87: BD 4F A0       JSR    $4FA0
4F8A: 20 13          BRA    $4F9F
4F8C: C1 02          CMPB   #$02
4F8E: 26 05          BNE    $4F95
4F90: BD 4F AD       JSR    $4FAD
4F93: 20 0A          BRA    $4F9F
4F95: C1 03          CMPB   #$03
4F97: 26 06          BNE    $4F9F
4F99: BD 4F A0       JSR    $4FA0
4F9C: BD 4F AD       JSR    $4FAD
4F9F: 39             RTS
4FA0: FC 0A 59       LDD    $0A59
4FA3: 10 B3 0A 46    CMPD   $0A46
4FA7: 24 03          BCC    $4FAC
4FA9: FD 0A 46       STD    $0A46
4FAC: 39             RTS
4FAD: FC 0A 57       LDD    $0A57
4FB0: 10 B3 0A 46    CMPD   $0A46
4FB4: 23 03          BLS    $4FB9
4FB6: FD 0A 46       STD    $0A46
4FB9: 39             RTS
4FBA: 4F             CLRA
4FBB: C2 4F          SBCB   #$4F
4FBD: EA 50          ORB    -$10,U
4FBF: 08 50          ASL    $50
4FC1: 49             ROLA
4FC2: 01 00 00       OIM    #$00;$00
4FC5: 00 D4          NEG    $D4
4FC7: 00 00          NEG    $00
4FC9: 00 FF          NEG    $FF
4FCB: FF 01 00       STU    $0100
4FCE: D4 01          ANDB   $01
4FD0: CE 03 01       LDU    #$0301
4FD3: CE 02 C8       LDU    #$02C8
4FD6: 01 00 00       OIM    #$00;$00
4FD9: FF FF 03       STU    $FF03
4FDC: 03 80          COM    $80
4FDE: 04 00          LSR    $00
4FE0: 04 00          LSR    $00
4FE2: 00 FF          NEG    $FF
4FE4: FF FF 00       STU    $FF00
4FE7: 00 FF          NEG    $FF
4FE9: FF 01 05       STU    $0105
4FEC: 00 FF          NEG    $FF
4FEE: FF 03 05       STU    $0305
4FF1: 7C 06 1E       INC    $061E
4FF4: 03 05          COM    $05
4FF6: 7C FF FF       INC    $FFFF
4FF9: 03 07          COM    $07
4FFB: 50             NEGB
4FFC: 07 C0          ASR    $C0
4FFE: 04 00          LSR    $00
5000: 00 FF          NEG    $FF
5002: FF FF 00       STU    $FF00
5005: 00 FF          NEG    $FF
5007: FF 01 08       STU    $0108
500A: 00 09          NEG    $09
500C: 09 00          ROL    $00
500E: 00 00          NEG    $00
5010: FF FF 01       STU    $FF01
5013: 09 09          ROL    $09
5015: 0B 10 00       TIM    #$10;$00
5018: 00 00          NEG    $00
501A: FF FF 01       STU    $FF01
501D: 00 00          NEG    $00
501F: 0D E6          TST    $E6
5021: 03 0D          COM    $0D
5023: E6 0E          LDB    $E,X
5025: 29 01          BVS    $5028
5027: 00 00          NEG    $00
5029: 10 00          FCB    $10,$00
502B: 03             FCB    $03
502C: 10             FCB    $10
502D: 00 10          NEG    $10
502F: 22 04          BHI    $5035
5031: 00 00          NEG    $00
5033: FF FF 01       STU    $FF01
5036: 00 00          NEG    $00
5038: 12             NOP
5039: 00 03          NEG    $03
503B: 12             NOP
503C: 00 12          NEG    $12
503E: 41             FCB    $41
503F: 01 00 00       OIM    #$00;$00
5042: 13             SYNC
5043: 08 03          ASL    $03
5045: 13             SYNC
5046: 08 13          ASL    $13
5048: 29 01          BVS    $504B
504A: 00 00          NEG    $00
504C: 18             FCB    $18
504D: DE 03          LDU    $03
504F: 18             FCB    $18
5050: DE 19          LDU    $19
5052: 05 01 00       EIM    #$01;$00
5055: 00 1A          NEG    $1A
5057: 05 03 1A       EIM    #$03;$1A
505A: 05 FF FF       EIM    #$FF;$FF
505D: 04 00          LSR    $00
505F: 00 FF          NEG    $FF
5061: FF 00 00       STU    >$0000
5064: 00 FF          NEG    $FF
5066: FF FF 00       STU    $FF00
5069: 00 FF          NEG    $FF
506B: FF 8E 50       STU    $8E50
506E: 8A 20          ORA    #$20
5070: 0F 8E          CLR    $8E
5072: 50             NEGB
5073: 9A 20          ORA    $20
5075: 0A 8E          DEC    $8E
5077: 50             NEGB
5078: A4 20          ANDA   $0,Y
507A: 05 8E 50       EIM    #$8E;$50
507D: C0 20          SUBB   #$20
507F: 00 BD          NEG    $BD
5081: 51             FCB    $51
5082: AB F6          ADDA   [A,S]
5084: 0A 55          DEC    $55
5086: 58             ASLB
5087: AD 95          JSR    [B,X]
5089: 39             RTS
508A: 50             NEGB
508B: CE 50 DA       LDU    #$50DA
508E: 50             NEGB
508F: E8 50          EORB   -$10,U
5091: DA 50          ORB    $50
5093: F4 7C 99       ANDB   $7C99
5096: 7C 99 7C       INC    $997C
5099: 99 51          ADCA   $51
509B: 00 50          NEG    $50
509D: DA 51          ORB    $51
509F: 0D 7C          TST    $7C
50A1: 99 7C          ADCA   $7C
50A3: 99 51          ADCA   $51
50A5: 1A 50          ORCC   #$50
50A7: DA 51          ORB    $51
50A9: 27 50          BEQ    $50FB
50AB: DA 51          ORB    $51
50AD: 33 50          LEAU   -$10,U
50AF: DA 51          ORB    $51
50B1: 3F             SWI
50B2: 51             FCB    $51
50B3: 4B             FCB    $4B
50B4: 7C 99 51       INC    $9951
50B7: 61 51 6D       OIM    #$51;$D,S
50BA: 51             FCB    $51
50BB: 79 51 85       ROL    $5185
50BE: 7C 99 51       INC    $9951
50C1: 91 50          CMPA   $50
50C3: DA 51          ORB    $51
50C5: 9E 7C          LDX    $7C
50C7: 99 7C          ADCA   $7C
50C9: 99 7C          ADCA   $7C
50CB: 99 7C          ADCA   $7C
50CD: 99 DC          ADCA   $DC
50CF: 3C 10          CWAI   #$10
50D1: 83 00 D4       SUBD   #$00D4
50D4: 25 03          BCS    $50D9
50D6: 73 0A 54       COM    $0A54
50D9: 39             RTS
50DA: B6 09 EF       LDA    $09EF
50DD: 26 08          BNE    $50E7
50DF: 73 0A 54       COM    $0A54
50E2: 0C 38          INC    $38
50E4: 7F 0B 1F       CLR    $0B1F
50E7: 39             RTS
50E8: DC 3C          LDD    $3C
50EA: 10 83 01 CE    CMPD   #$01CE
50EE: 25 03          BCS    $50F3
50F0: 73 0A 54       COM    $0A54
50F3: 39             RTS
50F4: DC 3C          LDD    $3C
50F6: 10 83 03 80    CMPD   #$0380
50FA: 25 03          BCS    $50FF
50FC: 73 0A 54       COM    $0A54
50FF: 39             RTS
5100: FC 0A 5F       LDD    $0A5F
5103: 10 83 05 7C    CMPD   #$057C
5107: 25 03          BCS    $510C
5109: 73 0A 54       COM    $0A54
510C: 39             RTS
510D: FC 0A 5F       LDD    $0A5F
5110: 10 83 07 50    CMPD   #$0750
5114: 25 03          BCS    $5119
5116: 73 0A 54       COM    $0A54
5119: 39             RTS
511A: FC 0A 5F       LDD    $0A5F
511D: 10 83 09 09    CMPD   #$0909
5121: 25 03          BCS    $5126
5123: 73 0A 54       COM    $0A54
5126: 39             RTS
5127: DC 3C          LDD    $3C
5129: 10 83 0B 10    CMPD   #$0B10
512D: 25 03          BCS    $5132
512F: 73 0A 54       COM    $0A54
5132: 39             RTS
5133: DC 3C          LDD    $3C
5135: 10 83 0D E6    CMPD   #$0DE6
5139: 25 F7          BCS    $5132
513B: 73 0A 54       COM    $0A54
513E: 39             RTS
513F: DC 3C          LDD    $3C
5141: 10 83 10 00    CMPD   #$1000
5145: 25 EB          BCS    $5132
5147: 73 0A 54       COM    $0A54
514A: 39             RTS
514B: 7D 09 EF       TST    $09EF
514E: 26 10          BNE    $5160
5150: 7D 09 F2       TST    $09F2
5153: 2B 0B          BMI    $5160
5155: BD 50 E2       JSR    $50E2
5158: B6 09 F2       LDA    $09F2
515B: 8A 80          ORA    #$80
515D: B7 09 F2       STA    $09F2
5160: 39             RTS
5161: DC 3C          LDD    $3C
5163: 10 83 12 00    CMPD   #$1200
5167: 25 03          BCS    $516C
5169: 73 0A 54       COM    $0A54
516C: 39             RTS
516D: DC 3C          LDD    $3C
516F: 10 83 12 41    CMPD   #$1241
5173: 25 03          BCS    $5178
5175: 73 0A 54       COM    $0A54
5178: 39             RTS
5179: DC 3C          LDD    $3C
517B: 10 83 13 08    CMPD   #$1308
517F: 25 03          BCS    $5184
5181: 73 0A 54       COM    $0A54
5184: 39             RTS
5185: B6 09 EF       LDA    $09EF
5188: 26 06          BNE    $5190
518A: 73 0A 54       COM    $0A54
518D: 7F 0B 1F       CLR    $0B1F
5190: 39             RTS
5191: FC 0A 5F       LDD    $0A5F
5194: 10 83 18 DE    CMPD   #$18DE
5198: 25 03          BCS    $519D
519A: 73 0A 54       COM    $0A54
519D: 39             RTS
519E: FC 0A 5F       LDD    $0A5F
51A1: 10 83 1A 05    CMPD   #$1A05
51A5: 25 03          BCS    $51AA
51A7: 73 0A 54       COM    $0A54
51AA: 39             RTS
51AB: B6 09 F2       LDA    $09F2
51AE: 2B 34          BMI    $51E4
51B0: 96 36          LDA    $36
51B2: D6 38          LDB    $38
51B4: 10 83 03 01    CMPD   #$0301
51B8: 24 2A          BCC    $51E4
51BA: 10 83 00 02    CMPD   #$0002
51BE: 27 24          BEQ    $51E4
51C0: 10 83 01 01    CMPD   #$0101
51C4: 27 1E          BEQ    $51E4
51C6: 10 83 02 03    CMPD   #$0203
51CA: 27 18          BEQ    $51E4
51CC: 10 83 02 04    CMPD   #$0204
51D0: 27 12          BEQ    $51E4
51D2: 7D 0B 1F       TST    $0B1F
51D5: 26 0D          BNE    $51E4
51D7: 7D 09 EF       TST    $09EF
51DA: 26 08          BNE    $51E4
51DC: 7C 0B 1F       INC    $0B1F
51DF: 86 01          LDA    #$01
51E1: B7 0E 3F       STA    $0E3F
51E4: 39             RTS
51E5: B6 0A FB       LDA    $0AFB
51E8: 85 01          BITA   #$01
51EA: 26 24          BNE    $5210
51EC: 85 80          BITA   #$80
51EE: 26 03          BNE    $51F3
51F0: BD 52 11       JSR    $5211
51F3: 8E 54 0B       LDX    #$540B
51F6: 96 36          LDA    $36
51F8: 48             ASLA
51F9: AE 86          LDX    A,X
51FB: DC 3C          LDD    $3C
51FD: 10 A3 02       CMPD   $2,X
5200: 24 0E          BCC    $5210
5202: C3 00 C0       ADDD   #$00C0
5205: 10 A3 84       CMPD   ,X
5208: 25 06          BCS    $5210
520A: BD 52 23       JSR    $5223
520D: BD 53 B0       JSR    $53B0
5210: 39             RTS
5211: 7F 0A FC       CLR    $0AFC
5214: 7F 0A FD       CLR    $0AFD
5217: 7F 0B 0F       CLR    $0B0F
521A: 7F 0B 10       CLR    $0B10
521D: 86 80          LDA    #$80
521F: B7 0A FB       STA    $0AFB
5222: 39             RTS
5223: 8E 52 2D       LDX    #$522D
5226: F6 0A FC       LDB    $0AFC
5229: 58             ASLB
522A: AD 95          JSR    [B,X]
522C: 39             RTS
522D: 52             FCB    $52
522E: 37 53          PULU   CC,A,X,S
5230: 40             NEGA
5231: 53             COMB
5232: 7B 53 8F 53    TIM    #$53,$8F53
5236: 9F B6          STX    $B6
5238: 0A FD          DEC    $FD
523A: 26 18          BNE    $5254
523C: BD 52 58       JSR    $5258
523F: 24 16          BCC    $5257
5241: 86 80          LDA    #$80
5243: D6 36          LDB    $36
5245: 27 02          BEQ    $5249
5247: 8A 01          ORA    #$01
5249: B7 0E 17       STA    $0E17
524C: 7C 0A FC       INC    $0AFC
524F: 7F 0A FD       CLR    $0AFD
5252: 20 03          BRA    $5257
5254: 7A 0A FD       DEC    $0AFD
5257: 39             RTS
5258: 32 78          LEAS   -$8,S
525A: 7F 0B 0F       CLR    $0B0F
525D: 10 8E 53 04    LDY    #$5304
5261: BD 45 B1       JSR    $45B1
5264: 84 07          ANDA   #$07
5266: C6 03          LDB    #$03
5268: 3D             MUL
5269: 31 AB          LEAY   D,Y
526B: 10 AF E4       STY    ,S
526E: 10 8E 53 1C    LDY    #$531C
5272: 96 36          LDA    $36
5274: 27 04          BEQ    $527A
5276: 10 8E 53 2E    LDY    #$532E
527A: 10 AF 62       STY    $2,S
527D: 86 01          LDA    #$01
527F: A7 64          STA    $4,S
5281: 8E 04 5E       LDX    #$045E
5284: 6D 84          TST    ,X
5286: 2A 0A          BPL    $5292
5288: 30 88 55       LEAX   $55,X
528B: 8C 07 06       CMPX   #$0706
528E: 26 F4          BNE    $5284
5290: 20 64          BRA    $52F6
5292: 86 81          LDA    #$81
5294: A7 84          STA    ,X
5296: BD 63 50       JSR    $6350
5299: 6F 88 45       CLR    $45,X
529C: 10 AE E4       LDY    ,S
529F: A6 A0          LDA    ,Y+
52A1: A7 01          STA    $1,X
52A3: BD 64 80       JSR    $6480
52A6: 80 02          SUBA   #$02
52A8: A7 88 17       STA    $17,X
52AB: 10 AF E4       STY    ,S
52AE: 86 57          LDA    #$57
52B0: A7 88 1B       STA    $1B,X
52B3: 10 AE 62       LDY    $2,S
52B6: EC A1          LDD    ,Y++
52B8: ED 04          STD    $4,X
52BA: EC A1          LDD    ,Y++
52BC: ED 06          STD    $6,X
52BE: EC A1          LDD    ,Y++
52C0: ED 08          STD    $8,X
52C2: 10 AF 62       STY    $2,S
52C5: A6 01          LDA    $1,X
52C7: BD 64 19       JSR    $6419
52CA: E7 88 1F       STB    $1F,X
52CD: B6 0B 0F       LDA    $0B0F
52D0: 26 0C          BNE    $52DE
52D2: A6 88 17       LDA    $17,X
52D5: 81 08          CMPA   #$08
52D7: 26 05          BNE    $52DE
52D9: 86 07          LDA    #$07
52DB: BD 63 94       JSR    $6394
52DE: B6 0B 0F       LDA    $0B0F
52E1: 48             ASLA
52E2: 10 8E 0B 06    LDY    #$0B06
52E6: 31 A6          LEAY   A,Y
52E8: AF A4          STX    ,Y
52EA: 7C 09 EF       INC    $09EF
52ED: 7C 0B 0F       INC    $0B0F
52F0: 6A 64          DEC    $4,S
52F2: A6 64          LDA    $4,S
52F4: 26 8E          BNE    $5284
52F6: B6 0B 0F       LDA    $0B0F
52F9: 27 04          BEQ    $52FF
52FB: 1A 01          ORCC   #$01
52FD: 20 02          BRA    $5301
52FF: 1C FE          ANDCC  #$FE
5301: 32 68          LEAS   $8,S
5303: 39             RTS
5304: 0A 09          DEC    $09
5306: 08 0A          ASL    $0A
5308: 09 08          ROL    $08
530A: 0A 08          DEC    $08
530C: 09 0A          ROL    $0A
530E: 08 09          ASL    $09
5310: 0A 0A          DEC    $0A
5312: 09 0A          ROL    $0A
5314: 0A 09          DEC    $09
5316: 0A 0A          DEC    $0A
5318: 08 0A          ASL    $0A
531A: 09 09          ROL    $09
531C: 02 38 01       AIM    #$38;$01
531F: 40             NEGA
5320: 01 00 02       OIM    #$00;$02
5323: 3B             RTI
5324: 01 40 01       OIM    #$40;$01
5327: 00 02          NEG    $02
5329: 35 01          PULS   CC
532B: 40             NEGA
532C: 01 00 09       OIM    #$00;$09
532F: B8 00 E0       EORA   >$00E0
5332: 01 00 09       OIM    #$00;$09
5335: BB 00 E0       ADDA   >$00E0
5338: 01 00 09       OIM    #$00;$09
533B: B5 00 E0       BITA   >$00E0
533E: 01 00 B6       OIM    #$00;$B6
5341: 0E 18          JMP    $18
5343: 85 01          BITA   #$01
5345: 27 33          BEQ    $537A
5347: B6 0A FD       LDA    $0AFD
534A: 26 21          BNE    $536D
534C: 8E 0B 06       LDX    #$0B06
534F: B6 0B 10       LDA    $0B10
5352: 48             ASLA
5353: AE 86          LDX    A,X
5355: A6 84          LDA    ,X
5357: 8A 40          ORA    #$40
5359: A7 84          STA    ,X
535B: 7C 0B 10       INC    $0B10
535E: B6 0B 10       LDA    $0B10
5361: B1 0B 0F       CMPA   $0B0F
5364: 27 0C          BEQ    $5372
5366: 86 20          LDA    #$20
5368: B7 0A FD       STA    $0AFD
536B: 20 0D          BRA    $537A
536D: 7A 0A FD       DEC    $0AFD
5370: 20 08          BRA    $537A
5372: 7C 0A FC       INC    $0AFC
5375: 86 80          LDA    #$80
5377: B7 0A FD       STA    $0AFD
537A: 39             RTS
537B: 7A 0A FD       DEC    $0AFD
537E: 26 0E          BNE    $538E
5380: 86 40          LDA    #$40
5382: D6 36          LDB    $36
5384: 27 02          BEQ    $5388
5386: 8A 01          ORA    #$01
5388: B7 0E 17       STA    $0E17
538B: 7C 0A FC       INC    $0AFC
538E: 39             RTS
538F: B6 0E 18       LDA    $0E18
5392: 85 01          BITA   #$01
5394: 26 08          BNE    $539E
5396: 86 FF          LDA    #$FF
5398: B7 0A FD       STA    $0AFD
539B: 7C 0A FC       INC    $0AFC
539E: 39             RTS
539F: 7A 0A FD       DEC    $0AFD
53A2: 26 0B          BNE    $53AF
53A4: 7F 0A FC       CLR    $0AFC
53A7: B6 0A FB       LDA    $0AFB
53AA: 8A 01          ORA    #$01
53AC: B7 0A FB       STA    $0AFB
53AF: 39             RTS
53B0: 32 79          LEAS   -$7,S
53B2: 96 51          LDA    $51
53B4: 84 03          ANDA   #$03
53B6: 26 50          BNE    $5408
53B8: 8E 54 0B       LDX    #$540B
53BB: 96 36          LDA    $36
53BD: 48             ASLA
53BE: AE 86          LDX    A,X
53C0: EC 84          LDD    ,X
53C2: ED E4          STD    ,S
53C4: EC 04          LDD    $4,X
53C6: ED 62          STD    $2,S
53C8: 6F 66          CLR    $6,S
53CA: A6 66          LDA    $6,S
53CC: 48             ASLA
53CD: 10 8E 54 1F    LDY    #$541F
53D1: 31 A6          LEAY   A,Y
53D3: 4F             CLRA
53D4: E6 A0          LDB    ,Y+
53D6: E3 E4          ADDD   ,S
53D8: 1F 01          TFR    D,X
53DA: 4F             CLRA
53DB: E6 A0          LDB    ,Y+
53DD: E3 62          ADDD   $2,S
53DF: 1F 02          TFR    D,Y
53E1: BD FE 30       JSR    $FE30
53E4: ED 64          STD    $4,S
53E6: 10 8E 54 3D    LDY    #$543D
53EA: 96 36          LDA    $36
53EC: 48             ASLA
53ED: 10 AE A6       LDY    A,Y
53F0: B6 0A FC       LDA    $0AFC
53F3: 48             ASLA
53F4: 10 AE A6       LDY    A,Y
53F7: A6 66          LDA    $6,S
53F9: 48             ASLA
53FA: EC A6          LDD    A,Y
53FC: AE 64          LDX    $4,S
53FE: ED 84          STD    ,X
5400: 6C 66          INC    $6,S
5402: A6 66          LDA    $6,S
5404: 81 0F          CMPA   #$0F
5406: 26 C2          BNE    $53CA
5408: 32 67          LEAS   $7,S
540A: 39             RTS
540B: 54             LSRB
540C: 13             SYNC
540D: 54             LSRB
540E: 13             SYNC
540F: 54             LSRB
5410: 19             DAA
5411: 54             LSRB
5412: 19             DAA
5413: 02 20 02       AIM    #$20;$02
5416: 50             NEGB
5417: 02 40 09       AIM    #$40;$09
541A: A0 09          SUBA   $9,X
541C: D0 01          SUBB   $01
541E: E0 00          SUBB   $0,X
5420: 40             NEGA
5421: 10 40          NEGD
5423: 20 40          BRA    $5465
5425: 00 30          NEG    $30
5427: 10 30 20       ADDR   Y,D
542A: 30 00          LEAX   $0,X
542C: 20 10          BRA    $543E
542E: 20 20          BRA    $5450
5430: 20 00          BRA    $5432
5432: 10 10          FCB    $10,$10
5434: 10 20          FCB    $10,$20
5436: 10             FCB    $10
5437: 00 00          NEG    $00
5439: 10 00          FCB    $10,$00
543B: 20             FCB    $20
543C: 00             FCB    $00
543D: 54             LSRW
543E: 45             FCB    $45
543F: 54             LSRB
5440: 45             FCB    $45
5441: 54             LSRB
5442: 4F             CLRA
5443: 54             LSRB
5444: 4F             CLRA
5445: 54             LSRB
5446: 59             ROLB
5447: 54             LSRB
5448: 95 54          BITA   $54
544A: 95 54          BITA   $54
544C: 95 54          BITA   $54
544E: 59             ROLB
544F: 54             LSRB
5450: 77 54 95       ASR    $5495
5453: 54             LSRB
5454: 95 54          BITA   $54
5456: 95 54          BITA   $54
5458: 77 00 11       ASR    >$0011
545B: 00 12          NEG    $12
545D: 00 13          NEG    $13
545F: 00 14          NEG    $14
5461: 00 15          NEG    $15
5463: 00 16          NEG    $16
5465: 00 17          NEG    $17
5467: 00 18          NEG    $18
5469: 00 19          NEG    $19
546B: 00 1A          NEG    $1A
546D: 00 1B          NEG    $1B
546F: 00 1C          NEG    $1C
5471: 00 1D          NEG    $1D
5473: 00 1E          NEG    $1E
5475: 00 1F          NEG    $1F
5477: 08 11          ASL    $11
5479: 08 12          ASL    $12
547B: 08 13          ASL    $13
547D: 08 14          ASL    $14
547F: 08 15          ASL    $15
5481: 08 16          ASL    $16
5483: 08 17          ASL    $17
5485: 08 18          ASL    $18
5487: 08 19          ASL    $19
5489: 08 1A          ASL    $1A
548B: 08 1B          ASL    $1B
548D: 08 1C          ASL    $1C
548F: 08 1D          ASL    $1D
5491: 08 1E          ASL    $1E
5493: 08 1F          ASL    $1F
5495: 00 00          NEG    $00
5497: 00 00          NEG    $00
5499: 00 00          NEG    $00
549B: 00 00          NEG    $00
549D: 00 00          NEG    $00
549F: 00 00          NEG    $00
54A1: 00 00          NEG    $00
54A3: 00 00          NEG    $00
54A5: 00 00          NEG    $00
54A7: 00 00          NEG    $00
54A9: 00 00          NEG    $00
54AB: 00 00          NEG    $00
54AD: 00 00          NEG    $00
54AF: 00 00          NEG    $00
54B1: 00 00          NEG    $00
54B3: FC 0B 04       LDD    $0B04
54B6: 10 83 02 04    CMPD   #$0204
54BA: 27 15          BEQ    $54D1
54BC: 10 83 03 01    CMPD   #$0301
54C0: 27 0F          BEQ    $54D1
54C2: 96 36          LDA    $36
54C4: D6 38          LDB    $38
54C6: 10 83 03 01    CMPD   #$0301
54CA: 27 05          BEQ    $54D1
54CC: B6 0E 2D       LDA    $0E2D
54CF: 27 09          BEQ    $54DA
54D1: BD 54 DB       JSR    $54DB
54D4: BD 56 14       JSR    $5614
54D7: BD 56 7B       JSR    $567B
54DA: 39             RTS
54DB: B6 0A F1       LDA    $0AF1
54DE: 2B 1A          BMI    $54FA
54E0: FC 0B 04       LDD    $0B04
54E3: 10 83 03 01    CMPD   #$0301
54E7: 27 0E          BEQ    $54F7
54E9: 10 83 02 04    CMPD   #$0204
54ED: 27 08          BEQ    $54F7
54EF: 10 83 03 02    CMPD   #$0302
54F3: 27 02          BEQ    $54F7
54F5: 20 12          BRA    $5509
54F7: BD 55 0A       JSR    $550A
54FA: 96 36          LDA    $36
54FC: 81 03          CMPA   #$03
54FE: 24 09          BCC    $5509
5500: BD 55 3E       JSR    $553E
5503: BD 55 73       JSR    $5573
5506: BD 56 14       JSR    $5614
5509: 39             RTS
550A: 7F 0A EC       CLR    $0AEC
550D: 7F 0A ED       CLR    $0AED
5510: 7F 0A EE       CLR    $0AEE
5513: 7F 0A F2       CLR    $0AF2
5516: 8E 56 EC       LDX    #$56EC
5519: F6 0B 04       LDB    $0B04
551C: 10 8E 55 38    LDY    #$5538
5520: E6 A5          LDB    B,Y
5522: 58             ASLB
5523: AE 85          LDX    B,X
5525: BF 0A EF       STX    $0AEF
5528: F6 0B 04       LDB    $0B04
552B: C1 02          CMPB   #$02
552D: 26 03          BNE    $5532
552F: 7C 09 EF       INC    $09EF
5532: 86 80          LDA    #$80
5534: B7 0A F1       STA    $0AF1
5537: 39             RTS
5538: 02 02 02       AIM    #$02;$02
553B: 03 03          COM    $03
553D: 03 B6          COM    $B6
553F: 0A F1          DEC    $F1
5541: 85 40          BITA   #$40
5543: 26 2D          BNE    $5572
5545: 96 36          LDA    $36
5547: 81 02          CMPA   #$02
5549: 26 19          BNE    $5564
554B: CC 13 00       LDD    #$1300
554E: 10 93 3C       CMPD   $3C
5551: 24 1F          BCC    $5572
5553: B6 09 EF       LDA    $09EF
5556: 81 07          CMPA   #$07
5558: 22 18          BHI    $5572
555A: 86 03          LDA    #$03
555C: BD 44 CD       JSR    $44CD
555F: 86 80          LDA    #$80
5561: B7 0A EC       STA    $0AEC
5564: 7F 0A ED       CLR    $0AED
5567: 7F 0A F2       CLR    $0AF2
556A: B6 0A F1       LDA    $0AF1
556D: 8A 40          ORA    #$40
556F: B7 0A F1       STA    $0AF1
5572: 39             RTS
5573: B6 0A F1       LDA    $0AF1
5576: 2A 09          BPL    $5581
5578: B6 0A F2       LDA    $0AF2
557B: 48             ASLA
557C: 8E 55 82       LDX    #$5582
557F: AD 96          JSR    [A,X]
5581: 39             RTS
5582: 55             FCB    $55
5583: 88 55          EORA   #$55
5585: 9B 55          ADDA   $55
5587: B1 B6 0A       CMPA   $B60A
558A: EC 85          LDD    B,X
558C: 01 27 0B       OIM    #$27;$0B
558F: BD 55 C1       JSR    $55C1
5592: 24 06          BCC    $559A
5594: 7C 0A F2       INC    $0AF2
5597: 7F 0A ED       CLR    $0AED
559A: 39             RTS
559B: 7C 0A ED       INC    $0AED
559E: B6 0A ED       LDA    $0AED
55A1: 81 80          CMPA   #$80
55A3: 25 0B          BCS    $55B0
55A5: B6 0A EC       LDA    $0AEC
55A8: 8A 80          ORA    #$80
55AA: B7 0A EC       STA    $0AEC
55AD: 7C 0A F2       INC    $0AF2
55B0: 39             RTS
55B1: B6 0A EC       LDA    $0AEC
55B4: 85 01          BITA   #$01
55B6: 26 08          BNE    $55C0
55B8: B6 0A F1       LDA    $0AF1
55BB: 8A 01          ORA    #$01
55BD: B7 0A F1       STA    $0AF1
55C0: 39             RTS
55C1: 34 30          PSHS   Y,X
55C3: 8E 07 06       LDX    #$0706
55C6: 6D 84          TST    ,X
55C8: 2A 04          BPL    $55CE
55CA: 1C FE          ANDCC  #$FE
55CC: 20 3D          BRA    $560B
55CE: 10 8E 56 0D    LDY    #$560D
55D2: BD 63 50       JSR    $6350
55D5: 6F 88 45       CLR    $45,X
55D8: 86 C1          LDA    #$C1
55DA: A7 84          STA    ,X
55DC: 86 57          LDA    #$57
55DE: A7 88 1B       STA    $1B,X
55E1: A6 A0          LDA    ,Y+
55E3: A7 01          STA    $1,X
55E5: BD 64 80       JSR    $6480
55E8: 80 02          SUBA   #$02
55EA: A7 88 17       STA    $17,X
55ED: EC A1          LDD    ,Y++
55EF: ED 04          STD    $4,X
55F1: EC A1          LDD    ,Y++
55F3: ED 06          STD    $6,X
55F5: EC A1          LDD    ,Y++
55F7: ED 08          STD    $8,X
55F9: A6 01          LDA    $1,X
55FB: BD 64 19       JSR    $6419
55FE: E7 88 1F       STB    $1F,X
5601: A6 88 17       LDA    $17,X
5604: 8A 80          ORA    #$80
5606: A7 88 17       STA    $17,X
5609: 1A 01          ORCC   #$01
560B: 35 B0          PULS   X,Y,PC
560D: 07 13          ASR    $13
560F: C8 01          EORB   #$01
5611: 38             FCB    $38
5612: 01 30 B6       OIM    #$30;$B6
5615: 0A EC          DEC    $EC
5617: 85 40          BITA   #$40
5619: 26 14          BNE    $562F
561B: 85 80          BITA   #$80
561D: 27 13          BEQ    $5632
561F: B6 0A EC       LDA    $0AEC
5622: 8A 40          ORA    #$40
5624: B7 0A EC       STA    $0AEC
5627: BD 56 4C       JSR    $564C
562A: BD 56 33       JSR    $5633
562D: 24 03          BCC    $5632
562F: BD 56 53       JSR    $5653
5632: 39             RTS
5633: BE 0A EF       LDX    $0AEF
5636: DC 3C          LDD    $3C
5638: 10 A3 04       CMPD   $4,X
563B: 24 0C          BCC    $5649
563D: C3 01 00       ADDD   #$0100
5640: 10 A3 84       CMPD   ,X
5643: 25 04          BCS    $5649
5645: 1A 01          ORCC   #$01
5647: 20 02          BRA    $564B
5649: 1C FE          ANDCC  #$FE
564B: 39             RTS
564C: 7F 0A EE       CLR    $0AEE
564F: 7F 0A ED       CLR    $0AED
5652: 39             RTS
5653: 7C 0A ED       INC    $0AED
5656: B6 0A ED       LDA    $0AED
5659: BE 0A EF       LDX    $0AEF
565C: A1 06          CMPA   $6,X
565E: 25 1A          BCS    $567A
5660: 7F 0A ED       CLR    $0AED
5663: 7C 0A EE       INC    $0AEE
5666: B6 0A EE       LDA    $0AEE
5669: A1 07          CMPA   $7,X
566B: 25 0D          BCS    $567A
566D: B6 0A EC       LDA    $0AEC
5670: 88 01          EORA   #$01
5672: 84 01          ANDA   #$01
5674: B7 0A EC       STA    $0AEC
5677: 7F 0A EE       CLR    $0AEE
567A: 39             RTS
567B: 32 71          LEAS   -$F,S
567D: 96 51          LDA    $51
567F: 84 03          ANDA   #$03
5681: 26 66          BNE    $56E9
5683: BD 56 33       JSR    $5633
5686: 24 61          BCC    $56E9
5688: BE 0A EF       LDX    $0AEF
568B: B6 0A EE       LDA    $0AEE
568E: F6 0A EC       LDB    $0AEC
5691: C5 01          BITB   #$01
5693: 27 03          BEQ    $5698
5695: 43             COMA
5696: AB 07          ADDA   $7,X
5698: A7 E4          STA    ,S
569A: 48             ASLA
569B: 8B 0B          ADDA   #$0B
569D: 10 AE 86       LDY    A,X
56A0: 10 AF 61       STY    $1,S
56A3: 10 AE 09       LDY    $9,X
56A6: 10 AF 63       STY    $3,S
56A9: 6F 65          CLR    $5,S
56AB: A6 08          LDA    $8,X
56AD: A7 66          STA    $6,S
56AF: EC 84          LDD    ,X
56B1: ED 67          STD    $7,S
56B3: EC 02          LDD    $2,X
56B5: ED 69          STD    $9,S
56B7: AE 63          LDX    $3,S
56B9: 4F             CLRA
56BA: E6 84          LDB    ,X
56BC: C4 F0          ANDB   #$F0
56BE: E3 67          ADDD   $7,S
56C0: ED 6B          STD    $B,S
56C2: 4F             CLRA
56C3: E6 80          LDB    ,X+
56C5: 58             ASLB
56C6: 58             ASLB
56C7: 58             ASLB
56C8: 58             ASLB
56C9: E3 69          ADDD   $9,S
56CB: ED 6D          STD    $D,S
56CD: AF 63          STX    $3,S
56CF: AE 6B          LDX    $B,S
56D1: 10 AE 6D       LDY    $D,S
56D4: BD FE 30       JSR    $FE30
56D7: 1F 02          TFR    D,Y
56D9: AE 61          LDX    $1,S
56DB: EC 81          LDD    ,X++
56DD: AF 61          STX    $1,S
56DF: ED A4          STD    ,Y
56E1: 6C 65          INC    $5,S
56E3: A6 65          LDA    $5,S
56E5: A1 66          CMPA   $6,S
56E7: 26 CE          BNE    $56B7
56E9: 32 6F          LEAS   $F,S
56EB: 39             RTS
56EC: 56             RORB
56ED: F4 56 F4       ANDB   $56F4
56F0: 56             RORB
56F1: F4 57 07       ANDB   $5707
56F4: 13             SYNC
56F5: A0 02          SUBA   $2,X
56F7: 70 13 F0       NEG    $13F0
56FA: 10 04          FCB    $10,$04
56FC: 1E             FCB    $1E
56FD: 57             FCB    $57
56FE: 18             FCB    $18
56FF: 57             FCB    $57
5700: 45             FCB    $45
5701: 57             FCB    $57
5702: 81 57 BD       CMPW   #$57BD
5705: 57             ASRB
5706: F9 1A C0       ADCB   $1AC0
5709: 01 B0 1A       OIM    #$B0;$1A
570C: F0 10 03       SUBB   $1003
570F: 0F 57          CLR    $57
5711: 36 58          PSHU   S,X,DP
5713: 35 58          PULS   DP,X,U
5715: 53             COMB
5716: 58             ASLB
5717: 71 05 15 25    OIM    #$05,$1525
571B: 35 45          PULS   CC,B,U
571D: 04 14          LSR    $14
571F: 24 34          BCC    $5755
5721: 44             LSRA
5722: 03 13          COM    $13
5724: 23 33          BLS    $5759
5726: 43             COMA
5727: 02 12 22       AIM    #$12;$22
572A: 32 42          LEAS   $2,U
572C: 01 11 21       OIM    #$11;$21
572F: 31 41          LEAY   $1,U
5731: 00 10          NEG    $10
5733: 20 30          BRA    $5765
5735: 40             NEGA
5736: 04 14          LSR    $14
5738: 24 03          BCC    $573D
573A: 13             SYNC
573B: 23 02          BLS    $573F
573D: 12             NOP
573E: 22 01          BHI    $5741
5740: 11 21          FCB    $11,$21
5742: 00             FCB    $00
5743: 10             FCB    $10
5744: 20 37          BRA    $577D
5746: 70 37 71       NEG    $3771
5749: 37 72          PULU   A,X,Y,S
574B: 37 73          PULU   CC,A,X,Y,S
574D: 37 74          PULU   B,X,Y,S
574F: 37 75          PULU   CC,B,X,Y,S
5751: 37 76          PULU   D,X,Y,S
5753: 37 77          PULU   CC,D,X,Y,S
5755: 37 78          PULU   DP,X,Y,S
5757: 37 79          PULU   CC,DP,X,Y,S
5759: 37 7A          PULU   A,DP,X,Y,S
575B: 37 7B          PULU   CC,A,DP,X,Y,S
575D: 37 7C          PULU   B,DP,X,Y,S
575F: 37 7D          PULU   CC,B,DP,X,Y,S
5761: 37 7E          PULU   D,DP,X,Y,S
5763: 37 7F          PULU   CC,D,DP,X,Y,S
5765: 37 80          PULU   PC
5767: 37 81          PULU   CC,PC
5769: 37 82          PULU   A,PC
576B: 37 83          PULU   CC,A,PC
576D: 37 84          PULU   B,PC
576F: 37 85          PULU   CC,B,PC
5771: 37 86          PULU   D,PC
5773: 37 87          PULU   CC,D,PC
5775: 37 88          PULU   DP,PC
5777: 37 89          PULU   CC,DP,PC
5779: 37 8A          PULU   A,DP,PC
577B: 37 8B          PULU   CC,A,DP,PC
577D: 37 8C          PULU   B,DP,PC
577F: 37 8D          PULU   CC,B,DP,PC
5781: 37 8E          PULU   D,DP,PC
5783: 37 8F          PULU   CC,D,DP,PC
5785: 37 AC          PULU   B,DP,Y,PC
5787: 77 8F 77       ASR    $8F77
578A: 8E 37 93       LDX    #$3793
578D: 37 94          PULU   B,X,PC
578F: 37 AC          PULU   B,DP,Y,PC
5791: 77 94 77       ASR    $9477
5794: 93 37          SUBD   $37
5796: 98 37          EORA   $37
5798: 99 37          ADCA   $37
579A: AC 77          CMPX   -$9,S
579C: 99 77          ADCA   $77
579E: 98 37          EORA   $37
57A0: 9D 37          JSR    $37
57A2: 9E 37          LDX    $37
57A4: AC 77          CMPX   -$9,S
57A6: 9E 77          LDX    $77
57A8: 9D 37          JSR    $37
57AA: A2 37          SBCA   -$9,Y
57AC: A3 37          SUBD   -$9,Y
57AE: AC 77          CMPX   -$9,S
57B0: A3 77          SUBD   -$9,S
57B2: A2 37          SBCA   -$9,Y
57B4: A7 37          STA    -$9,Y
57B6: A8 37          EORA   -$9,Y
57B8: AC 77          CMPX   -$9,S
57BA: A8 77          EORA   -$9,S
57BC: A7 37          STA    -$9,Y
57BE: 90 37          SUBA   $37
57C0: 91 37          CMPA   $37
57C2: AC 77          CMPX   -$9,S
57C4: 91 77          CMPA   $77
57C6: 90 37          SUBA   $37
57C8: 95 37          BITA   $37
57CA: 96 37          LDA    $37
57CC: AC 77          CMPX   -$9,S
57CE: 96 77          LDA    $77
57D0: 95 37          BITA   $37
57D2: 9A 37          ORA    $37
57D4: 9B 37          ADDA   $37
57D6: AC 77          CMPX   -$9,S
57D8: 9B 77          ADDA   $77
57DA: 9A 37          ORA    $37
57DC: 9F 37          STX    $37
57DE: A0 37          SUBA   -$9,Y
57E0: AC 77          CMPX   -$9,S
57E2: A0 77          SUBA   -$9,S
57E4: 9F 37          STX    $37
57E6: A4 37          ANDA   -$9,Y
57E8: A5 37          BITA   -$9,Y
57EA: AC 77          CMPX   -$9,S
57EC: A5 77          BITA   -$9,S
57EE: A4 37          ANDA   -$9,Y
57F0: A9 37          ADCA   -$9,Y
57F2: AA 37          ORA    -$9,Y
57F4: AC 77          CMPX   -$9,S
57F6: AA 77          ORA    -$9,S
57F8: A9 37          ADCA   -$9,Y
57FA: 92 37          SBCA   $37
57FC: 00 37          NEG    $37
57FE: 00 37          NEG    $37
5800: 00 77          NEG    $77
5802: 92 37          SBCA   $37
5804: 97 37          STA    $37
5806: 00 37          NEG    $37
5808: 00 37          NEG    $37
580A: 00 77          NEG    $77
580C: 97 37          STA    $37
580E: 9C 37          CMPX   $37
5810: 00 37          NEG    $37
5812: 00 37          NEG    $37
5814: 00 77          NEG    $77
5816: 9C 37          CMPX   $37
5818: A1 37          CMPA   -$9,Y
581A: 00 37          NEG    $37
581C: 00 37          NEG    $37
581E: 00 77          NEG    $77
5820: A1 37          CMPA   -$9,Y
5822: A6 37          LDA    -$9,Y
5824: 00 37          NEG    $37
5826: 00 37          NEG    $37
5828: 00 77          NEG    $77
582A: A6 37          LDA    -$9,Y
582C: AB 37          ADDA   -$9,Y
582E: 00 37          NEG    $37
5830: 00 37          NEG    $37
5832: 00 77          NEG    $77
5834: AB 57          ADDA   -$9,U
5836: D8 17          EORB   $17
5838: D7 17          STB    $17
583A: D8 57          EORB   $57
583C: DB 17          ADDB   $17
583E: DA 17          ORB    $17
5840: DB 57          ADDB   $57
5842: DE 17          LDU    $17
5844: DD 17          STD    $17
5846: DE 57          LDU    $57
5848: E1 17          CMPB   -$9,X
584A: E0 17          SUBB   -$9,X
584C: E1 57          CMPB   -$9,U
584E: E4 17          ANDB   -$9,X
5850: E3 17          ADDD   -$9,X
5852: E4 57          ANDB   -$9,U
5854: D9 17          ADCB   $17
5856: E5 17          BITB   -$9,X
5858: D9 57          ADCB   $57
585A: DC 17          LDD    $17
585C: E5 17          BITB   -$9,X
585E: DC 57          LDD    $57
5860: DF 17          STU    $17
5862: E5 17          BITB   -$9,X
5864: DF 57          STU    $57
5866: E2 17          SBCB   -$9,X
5868: E5 17          BITB   -$9,X
586A: E2 57          SBCB   -$9,U
586C: E6 17          LDB    -$9,X
586E: E5 17          BITB   -$9,X
5870: E6 17          LDB    -$9,X
5872: E5 17          BITB   -$9,X
5874: E5 17          BITB   -$9,X
5876: E5 17          BITB   -$9,X
5878: E5 17          BITB   -$9,X
587A: E5 17          BITB   -$9,X
587C: E5 17          BITB   -$9,X
587E: E5 17          BITB   -$9,X
5880: E5 17          BITB   -$9,X
5882: E5 17          BITB   -$9,X
5884: E5 17          BITB   -$9,X
5886: E5 17          BITB   -$9,X
5888: E5 17          BITB   -$9,X
588A: E5 17          BITB   -$9,X
588C: E5 17          BITB   -$9,X
588E: E5 B6          BITB   [A,Y]
5890: 0B 19 2B       TIM    #$19;$2B
5893: 2C 96          BGE    $582B
5895: 36 D6          PSHU   PC,S,X,D
5897: 38             FCB    $38
5898: 10 83 00 01    CMPD   #$0001
589C: 27 08          BEQ    $58A6
589E: 10 83 03 00    CMPD   #$0300
58A2: 27 0C          BEQ    $58B0
58A4: 20 43          BRA    $58E9
58A6: B6 09 EF       LDA    $09EF
58A9: 8B 01          ADDA   #$01
58AB: B7 09 EF       STA    $09EF
58AE: 20 08          BRA    $58B8
58B0: B6 09 EF       LDA    $09EF
58B3: 8B 02          ADDA   #$02
58B5: B7 09 EF       STA    $09EF
58B8: B6 0B 19       LDA    $0B19
58BB: 8A 80          ORA    #$80
58BD: B7 0B 19       STA    $0B19
58C0: 96 36          LDA    $36
58C2: 81 00          CMPA   #$00
58C4: 26 19          BNE    $58DF
58C6: B6 0E 15       LDA    $0E15
58C9: 85 02          BITA   #$02
58CB: 26 1C          BNE    $58E9
58CD: B6 0E 14       LDA    $0E14
58D0: 84 41          ANDA   #$41
58D2: 81 41          CMPA   #$41
58D4: 27 13          BEQ    $58E9
58D6: 86 01          LDA    #$01
58D8: 97 00          STA    $00
58DA: BD 58 EA       JSR    $58EA
58DD: 20 0A          BRA    $58E9
58DF: 81 03          CMPA   #$03
58E1: 26 06          BNE    $58E9
58E3: BD 59 DD       JSR    $59DD
58E6: BD 5A 47       JSR    $5A47
58E9: 39             RTS
58EA: 10 8E 59 95    LDY    #$5995
58EE: 8E 03 A2       LDX    #$03A2
58F1: BD 59 07       JSR    $5907
58F4: 24 05          BCC    $58FB
58F6: BD 59 35       JSR    $5935
58F9: 20 0B          BRA    $5906
58FB: 8E 04 00       LDX    #$0400
58FE: BD 59 07       JSR    $5907
5901: 24 03          BCC    $5906
5903: BD 59 35       JSR    $5935
5906: 39             RTS
5907: 34 10          PSHS   X
5909: EC 04          LDD    $4,X
590B: A3 A4          SUBD   ,Y
590D: 2A 05          BPL    $5914
590F: 43             COMA
5910: 53             COMB
5911: C3 00 01       ADDD   #$0001
5914: 10 83 00 28    CMPD   #$0028
5918: 24 17          BCC    $5931
591A: 8E 04 5E       LDX    #$045E
591D: 6D 84          TST    ,X
591F: 2A 0A          BPL    $592B
5921: 30 88 55       LEAX   $55,X
5924: 8C 07 06       CMPX   #$0706
5927: 26 F4          BNE    $591D
5929: 20 06          BRA    $5931
592B: 9F 01          STX    $01
592D: 1A 01          ORCC   #$01
592F: 20 02          BRA    $5933
5931: 1C FE          ANDCC  #$FE
5933: 35 90          PULS   X,PC
5935: 34 30          PSHS   Y,X
5937: 8E 0E 13       LDX    #$0E13
593A: 96 00          LDA    $00
593C: 30 86          LEAX   A,X
593E: 84 01          ANDA   #$01
5940: 8A 80          ORA    #$80
5942: A7 84          STA    ,X
5944: 8E 0A 98       LDX    #$0A98
5947: 10 8E 59 84    LDY    #$5984
594B: 96 00          LDA    $00
594D: 27 07          BEQ    $5956
594F: 8E 0A 9E       LDX    #$0A9E
5952: 10 8E 59 88    LDY    #$5988
5956: A6 84          LDA    ,X
5958: 2B 0A          BMI    $5964
595A: 34 30          PSHS   Y,X
595C: 10 AE 22       LDY    $2,Y
595F: BD 59 9E       JSR    $599E
5962: 35 30          PULS   X,Y
5964: 86 80          LDA    #$80
5966: A7 84          STA    ,X
5968: 6F 01          CLR    $1,X
596A: A6 A4          LDA    ,Y
596C: A7 02          STA    $2,X
596E: A6 21          LDA    $1,Y
5970: A7 03          STA    $3,X
5972: 81 01          CMPA   #$01
5974: 23 06          BLS    $597C
5976: A6 84          LDA    ,X
5978: 8A 20          ORA    #$20
597A: A7 84          STA    ,X
597C: 10 AE 22       LDY    $2,Y
597F: 10 AF 04       STY    $4,X
5982: 35 B0          PULS   X,Y,PC
5984: 00 01          NEG    $01
5986: 59             ROLB
5987: 8C 00 01       CMPX   #$0001
598A: 59             ROLB
598B: 95 02          BITA   $02
598D: 58             ASLB
598E: 01 4C 01       OIM    #$4C;$01
5991: 70 00 00       NEG    >$0000
5994: 00 02          NEG    $02
5996: E8 01          EORB   $1,X
5998: 40             NEGA
5999: 01 00 00       OIM    #$00;$00
599C: 00 00          NEG    $00
599E: 9E 01          LDX    $01
59A0: 86 C1          LDA    #$C1
59A2: A7 84          STA    ,X
59A4: 86 04          LDA    #$04
59A6: D6 36          LDB    $36
59A8: 27 02          BEQ    $59AC
59AA: 86 07          LDA    #$07
59AC: A7 01          STA    $1,X
59AE: 80 02          SUBA   #$02
59B0: A7 88 17       STA    $17,X
59B3: 86 17          LDA    #$17
59B5: A7 88 1B       STA    $1B,X
59B8: 86 00          LDA    #$00
59BA: A7 03          STA    $3,X
59BC: EC A1          LDD    ,Y++
59BE: ED 04          STD    $4,X
59C0: EC A1          LDD    ,Y++
59C2: ED 06          STD    $6,X
59C4: EC A1          LDD    ,Y++
59C6: ED 08          STD    $8,X
59C8: 6F 0A          CLR    $A,X
59CA: 6F 0B          CLR    $B,X
59CC: 6F 0C          CLR    $C,X
59CE: A6 01          LDA    $1,X
59D0: BD 64 19       JSR    $6419
59D3: E7 88 1F       STB    $1F,X
59D6: BD 63 50       JSR    $6350
59D9: 6F 88 45       CLR    $45,X
59DC: 39             RTS
59DD: B6 0A 95       LDA    $0A95
59E0: 2B 34          BMI    $5A16
59E2: DC 3C          LDD    $3C
59E4: 10 83 18 C0    CMPD   #$18C0
59E8: 25 2C          BCS    $5A16
59EA: BD 45 B1       JSR    $45B1
59ED: 84 1F          ANDA   #$1F
59EF: 8E 5A 27       LDX    #$5A27
59F2: A6 86          LDA    A,X
59F4: 8E 5A 17       LDX    #$5A17
59F7: 48             ASLA
59F8: 30 86          LEAX   A,X
59FA: A6 80          LDA    ,X+
59FC: B7 0E 13       STA    $0E13
59FF: 86 00          LDA    #$00
5A01: B7 0A 96       STA    $0A96
5A04: E6 84          LDB    ,X
5A06: F7 0E 14       STB    $0E14
5A09: C6 80          LDB    #$80
5A0B: F7 0A 97       STB    $0A97
5A0E: B6 0A 95       LDA    $0A95
5A11: 8A 80          ORA    #$80
5A13: B7 0A 95       STA    $0A95
5A16: 39             RTS
5A17: 03 02          COM    $02
5A19: 04 02          LSR    $02
5A1B: 05 02 03       EIM    #$02;$03
5A1E: 04 04          LSR    $04
5A20: 03 03          COM    $03
5A22: 05 02 04       EIM    #$02;$04
5A25: 05 03 00       EIM    #$03;$00
5A28: 00 00          NEG    $00
5A2A: 00 00          NEG    $00
5A2C: 01 01 01       OIM    #$01;$01
5A2F: 01 01 01       OIM    #$01;$01
5A32: 01 02 02       OIM    #$02;$02
5A35: 02 02 02       AIM    #$02;$02
5A38: 03 04          COM    $04
5A3A: 04 04          LSR    $04
5A3C: 04 05          LSR    $05
5A3E: 05 05 06       EIM    #$05;$06
5A41: 06 07          ROR    $07
5A43: 07 07          ASR    $07
5A45: 07 07          ASR    $07
5A47: B6 0A 95       LDA    $0A95
5A4A: 2A 3E          BPL    $5A8A
5A4C: B6 0E 13       LDA    $0E13
5A4F: 84 07          ANDA   #$07
5A51: 8E 5A 8B       LDX    #$5A8B
5A54: A6 86          LDA    A,X
5A56: 34 02          PSHS   A
5A58: B6 0E 15       LDA    $0E15
5A5B: A5 E0          BITA   ,S+
5A5D: 26 0C          BNE    $5A6B
5A5F: B6 0E 13       LDA    $0E13
5A62: 85 C0          BITA   #$C0
5A64: 26 05          BNE    $5A6B
5A66: 0F 00          CLR    $00
5A68: BD 5A 91       JSR    $5A91
5A6B: B6 0E 14       LDA    $0E14
5A6E: 84 07          ANDA   #$07
5A70: 8E 5A 8B       LDX    #$5A8B
5A73: A6 86          LDA    A,X
5A75: 34 02          PSHS   A
5A77: B6 0E 15       LDA    $0E15
5A7A: A5 E0          BITA   ,S+
5A7C: 26 0C          BNE    $5A8A
5A7E: B6 0E 14       LDA    $0E14
5A81: 85 C0          BITA   #$C0
5A83: 26 05          BNE    $5A8A
5A85: 86 01          LDA    #$01
5A87: BD 5A BB       JSR    $5ABB
5A8A: 39             RTS
5A8B: 00 00          NEG    $00
5A8D: 01 02 04       OIM    #$02;$04
5A90: 08 B6          ASL    $B6
5A92: 0A 96          DEC    $96
5A94: 26 21          BNE    $5AB7
5A96: BD 5A E5       JSR    $5AE5
5A99: 24 1F          BCC    $5ABA
5A9B: 9F 01          STX    $01
5A9D: 10 8E 5A FB    LDY    #$5AFB
5AA1: B6 0E 13       LDA    $0E13
5AA4: 84 07          ANDA   #$07
5AA6: 48             ASLA
5AA7: 10 AE A6       LDY    A,Y
5AAA: BD 59 9E       JSR    $599E
5AAD: B6 0E 13       LDA    $0E13
5AB0: 8A 80          ORA    #$80
5AB2: B7 0E 13       STA    $0E13
5AB5: 20 03          BRA    $5ABA
5AB7: 7A 0A 96       DEC    $0A96
5ABA: 39             RTS
5ABB: B6 0A 97       LDA    $0A97
5ABE: 26 21          BNE    $5AE1
5AC0: BD 5A E5       JSR    $5AE5
5AC3: 24 1F          BCC    $5AE4
5AC5: 9F 01          STX    $01
5AC7: 10 8E 5A FB    LDY    #$5AFB
5ACB: B6 0E 14       LDA    $0E14
5ACE: 84 07          ANDA   #$07
5AD0: 48             ASLA
5AD1: 10 AE A6       LDY    A,Y
5AD4: BD 59 9E       JSR    $599E
5AD7: B6 0E 14       LDA    $0E14
5ADA: 8A 80          ORA    #$80
5ADC: B7 0E 14       STA    $0E14
5ADF: 20 03          BRA    $5AE4
5AE1: 7A 0A 97       DEC    $0A97
5AE4: 39             RTS
5AE5: 8E 04 5E       LDX    #$045E
5AE8: 6D 84          TST    ,X
5AEA: 2A 0C          BPL    $5AF8
5AEC: 30 88 55       LEAX   $55,X
5AEF: 8C 07 06       CMPX   #$0706
5AF2: 26 F4          BNE    $5AE8
5AF4: 1C FE          ANDCC  #$FE
5AF6: 20 02          BRA    $5AFA
5AF8: 1A 01          ORCC   #$01
5AFA: 39             RTS
5AFB: 5B             FCB    $5B
5AFC: 07 5B          ASR    $5B
5AFE: 07 5B          ASR    $5B
5B00: 07 5B          ASR    $5B
5B02: 0D 5B          TST    $5B
5B04: 13             SYNC
5B05: 5B             FCB    $5B
5B06: 19             DAA
5B07: 19             DAA
5B08: 38             FCB    $38
5B09: 00 58          NEG    $58
5B0B: 01 00 19       OIM    #$00;$19
5B0E: 68 00          ASL    $0,X
5B10: 58             ASLB
5B11: 01 00 19       OIM    #$00;$19
5B14: 98 00          EORA   $00
5B16: 58             ASLB
5B17: 01 00 19       OIM    #$00;$19
5B1A: C8 00          EORB   #$00
5B1C: 58             ASLB
5B1D: 01 00 7F       OIM    #$00;$7F
5B20: 0A 92          DEC    $92
5B22: 86 01          LDA    #$01
5B24: B7 0A 93       STA    $0A93
5B27: B6 0E 15       LDA    $0E15
5B2A: B4 0A 93       ANDA   $0A93
5B2D: 27 0F          BEQ    $5B3E
5B2F: 0D 36          TST    $36
5B31: 27 0B          BEQ    $5B3E
5B33: B6 0A 92       LDA    $0A92
5B36: 8B 02          ADDA   #$02
5B38: B7 0A 92       STA    $0A92
5B3B: BD 5B 73       JSR    $5B73
5B3E: 78 0A 93       ASL    $0A93
5B41: 7C 0A 92       INC    $0A92
5B44: 8E 5B 6F       LDX    #$5B6F
5B47: 96 36          LDA    $36
5B49: A6 86          LDA    A,X
5B4B: B1 0A 92       CMPA   $0A92
5B4E: 26 D7          BNE    $5B27
5B50: B6 0E 13       LDA    $0E13
5B53: 85 40          BITA   #$40
5B55: 27 08          BEQ    $5B5F
5B57: 84 0F          ANDA   #$0F
5B59: B7 0A 92       STA    $0A92
5B5C: BD 5B 73       JSR    $5B73
5B5F: B6 0E 14       LDA    $0E14
5B62: 85 40          BITA   #$40
5B64: 27 08          BEQ    $5B6E
5B66: 84 0F          ANDA   #$0F
5B68: B7 0A 92       STA    $0A92
5B6B: BD 5B 73       JSR    $5B73
5B6E: 39             RTS
5B6F: 02 00 00       AIM    #$00;$00
5B72: 04 32          LSR    $32
5B74: 7A 96 51       DEC    $9651
5B77: 84 07          ANDA   #$07
5B79: 26 6D          BNE    $5BE8
5B7B: 8E 5B EB       LDX    #$5BEB
5B7E: B6 0A 92       LDA    $0A92
5B81: 48             ASLA
5B82: AE 86          LDX    A,X
5B84: 7F 0A 94       CLR    $0A94
5B87: DC 3C          LDD    $3C
5B89: C3 01 00       ADDD   #$0100
5B8C: 10 A3 84       CMPD   ,X
5B8F: 25 08          BCS    $5B99
5B91: B6 0A 94       LDA    $0A94
5B94: 8A 40          ORA    #$40
5B96: B7 0A 94       STA    $0A94
5B99: EC 02          LDD    $2,X
5B9B: 10 93 3C       CMPD   $3C
5B9E: 25 08          BCS    $5BA8
5BA0: B6 0A 94       LDA    $0A94
5BA3: 8A 20          ORA    #$20
5BA5: B7 0A 94       STA    $0A94
5BA8: B6 0A 94       LDA    $0A94
5BAB: 88 60          EORA   #$60
5BAD: 26 39          BNE    $5BE8
5BAF: A6 06          LDA    $6,X
5BB1: 97 00          STA    $00
5BB3: 10 AE 07       LDY    $7,X
5BB6: 96 00          LDA    $00
5BB8: 48             ASLA
5BB9: 31 A6          LEAY   A,Y
5BBB: 4F             CLRA
5BBC: E6 A4          LDB    ,Y
5BBE: E3 84          ADDD   ,X
5BC0: ED E4          STD    ,S
5BC2: 4F             CLRA
5BC3: E6 21          LDB    $1,Y
5BC5: E3 04          ADDD   $4,X
5BC7: ED 62          STD    $2,S
5BC9: 36 30          PSHU   Y,X
5BCB: AE E4          LDX    ,S
5BCD: 10 AE 62       LDY    $2,S
5BD0: BD FE 30       JSR    $FE30
5BD3: ED 64          STD    $4,S
5BD5: 37 30          PULU   X,Y
5BD7: 10 AE 09       LDY    $9,X
5BDA: 96 00          LDA    $00
5BDC: 48             ASLA
5BDD: EC A6          LDD    A,Y
5BDF: 10 AE 64       LDY    $4,S
5BE2: ED A4          STD    ,Y
5BE4: 0A 00          DEC    $00
5BE6: 2A CB          BPL    $5BB3
5BE8: 32 66          LEAS   $6,S
5BEA: 39             RTS
5BEB: 5B             FCB    $5B
5BEC: F7 5C 02       STB    $5C02
5BEF: 5C             INCB
5BF0: 0D 5C          TST    $5C
5BF2: 18             FCB    $18
5BF3: 5C             INCB
5BF4: 23 5C          BLS    $5C52
5BF6: 2E 02          BGT    $5BFA
5BF8: 40             NEGA
5BF9: 02 70 02       AIM    #$70;$02
5BFC: C0 0E          SUBB   #$0E
5BFE: 5C             INCB
5BFF: 39             RTS
5C00: 5C             INCB
5C01: 57             ASRB
5C02: 02 D0 03       AIM    #$D0;$03
5C05: 00 02          NEG    $02
5C07: 40             NEGA
5C08: 0E 5C          JMP    $5C
5C0A: 39             RTS
5C0B: 5C             INCB
5C0C: 57             ASRB
5C0D: 19             DAA
5C0E: 20 19          BRA    $5C29
5C10: 50             NEGB
5C11: 01 60 0E       OIM    #$60;$0E
5C14: 5C             INCB
5C15: 39             RTS
5C16: 5C             INCB
5C17: 75 19 50 19    EIM    #$19,$5019
5C1B: 80 01          SUBA   #$01
5C1D: 60 0E          NEG    $E,X
5C1F: 5C             INCB
5C20: 39             RTS
5C21: 5C             INCB
5C22: 75 19 80 19    EIM    #$19,$8019
5C26: B0 01 60       SUBA   $0160
5C29: 0E 5C          JMP    $5C
5C2B: 39             RTS
5C2C: 5C             INCB
5C2D: 75 19 B0 19    EIM    #$19,$B019
5C31: E0 01          SUBB   $1,X
5C33: 60 0E          NEG    $E,X
5C35: 5C             INCB
5C36: 39             RTS
5C37: 5C             INCB
5C38: 75 00 40 10    EIM    #$00,$4010
5C3C: 40             NEGA
5C3D: 20 40          BRA    $5C7F
5C3F: 00 30          NEG    $30
5C41: 10 30 20       ADDR   Y,D
5C44: 30 00          LEAX   $0,X
5C46: 20 10          BRA    $5C58
5C48: 20 20          BRA    $5C6A
5C4A: 20 00          BRA    $5C4C
5C4C: 10 10          FCB    $10,$10
5C4E: 10 20          FCB    $10,$20
5C50: 10             FCB    $10
5C51: 00 00          NEG    $00
5C53: 10 00          FCB    $10,$00
5C55: 20             FCB    $20
5C56: 00             FCB    $00
5C57: 27 C9 27       LBEQ   $2581
5C5A: CA 27          ORB    #$27
5C5C: CB 27          ADDB   #$27
5C5E: CC 00 00       LDD    #$0000
5C61: 27 CD          BEQ    $5C30
5C63: 27 CE          BEQ    $5C33
5C65: 00 00          NEG    $00
5C67: 27 CF          BEQ    $5C38
5C69: 27 D0          BEQ    $5C3B
5C6B: 00 00          NEG    $00
5C6D: 27 D1          BEQ    $5C40
5C6F: 27 D4          BEQ    $5C45
5C71: 27 D5          BEQ    $5C48
5C73: 27 D6          BEQ    $5C4B
5C75: 03 DB          COM    $DB
5C77: 03 DC          COM    $DC
5C79: 03 DD          COM    $DD
5C7B: 03 DE          COM    $DE
5C7D: 03 DF          COM    $DF
5C7F: 03 E0          COM    $E0
5C81: 03 E1          COM    $E1
5C83: 03 E2          COM    $E2
5C85: 03 E3          COM    $E3
5C87: 03 E4          COM    $E4
5C89: 03 E5          COM    $E5
5C8B: 03 E6          COM    $E6
5C8D: 03 E7          COM    $E7
5C8F: 03 E8          COM    $E8
5C91: 03 E9          COM    $E9
5C93: B6 0A EC       LDA    $0AEC
5C96: 85 04          BITA   #$04
5C98: 26 0B          BNE    $5CA5
5C9A: B6 0A EC       LDA    $0AEC
5C9D: 2B 03          BMI    $5CA2
5C9F: BD 5C A6       JSR    $5CA6
5CA2: BD 5C B5       JSR    $5CB5
5CA5: 39             RTS
5CA6: 7F 0A EE       CLR    $0AEE
5CA9: 7F 0A F1       CLR    $0AF1
5CAC: BD 5C D5       JSR    $5CD5
5CAF: 86 80          LDA    #$80
5CB1: B7 0A EC       STA    $0AEC
5CB4: 39             RTS
5CB5: BD 5C D5       JSR    $5CD5
5CB8: BD 5C EC       JSR    $5CEC
5CBB: 24 09          BCC    $5CC6
5CBD: 8E 5C C7       LDX    #$5CC7
5CC0: B6 0A EE       LDA    $0AEE
5CC3: 48             ASLA
5CC4: AD 96          JSR    [A,X]
5CC6: 39             RTS
5CC7: 5C             INCB
5CC8: FB 5E 12       ADDB   $5E12
5CCB: 5E             FCB    $5E
5CCC: 05 5E 47       EIM    #$5E;$47
5CCF: 5E             FCB    $5E
5CD0: 98 5E          EORA   $5E
5CD2: AE 5E          LDX    -$2,U
5CD4: EC B6          LDD    [A,Y]
5CD6: 0E 16          JMP    $16
5CD8: 84 F8          ANDA   #$F8
5CDA: 8E 5C E9       LDX    #$5CE9
5CDD: F6 0A F1       LDB    $0AF1
5CE0: AA 85          ORA    B,X
5CE2: B7 0E 16       STA    $0E16
5CE5: BD 5F 2B       JSR    $5F2B
5CE8: 39             RTS
5CE9: 04 02          LSR    $02
5CEB: 01 DC 3C       OIM    #$DC;$3C
5CEE: 10 83 07 50    CMPD   #$0750
5CF2: 25 04          BCS    $5CF8
5CF4: 1A 01          ORCC   #$01
5CF6: 20 02          BRA    $5CFA
5CF8: 1C FE          ANDCC  #$FE
5CFA: 39             RTS
5CFB: 32 7F          LEAS   -$1,S
5CFD: B6 09 EF       LDA    $09EF
5D00: 81 02          CMPA   #$02
5D02: 22 58          BHI    $5D5C
5D04: BD 5D 6F       JSR    $5D6F
5D07: A7 E4          STA    ,S
5D09: 27 54          BEQ    $5D5F
5D0B: 10 8E 53 04    LDY    #$5304
5D0F: BD 45 B1       JSR    $45B1
5D12: 84 07          ANDA   #$07
5D14: C6 03          LDB    #$03
5D16: 3D             MUL
5D17: 31 AB          LEAY   D,Y
5D19: 10 9F 00       STY    $00
5D1C: 10 8E 5D FF    LDY    #$5DFF
5D20: 10 9F 02       STY    $02
5D23: CC 00 00       LDD    #$0000
5D26: FD 0A F5       STD    $0AF5
5D29: FD 0A F7       STD    $0AF7
5D2C: FD 0A F9       STD    $0AF9
5D2F: 10 8E 0A F5    LDY    #$0AF5
5D33: 7F 0A F3       CLR    $0AF3
5D36: 8E 04 5E       LDX    #$045E
5D39: 6D 84          TST    ,X
5D3B: 2B 0F          BMI    $5D4C
5D3D: AF A1          STX    ,Y++
5D3F: BD 5D 90       JSR    $5D90
5D42: 7C 0A F3       INC    $0AF3
5D45: B6 0A F3       LDA    $0AF3
5D48: A1 E4          CMPA   ,S
5D4A: 27 0D          BEQ    $5D59
5D4C: 30 88 55       LEAX   $55,X
5D4F: 8C 07 06       CMPX   #$0706
5D52: 26 E5          BNE    $5D39
5D54: B6 0A F3       LDA    $0AF3
5D57: 27 03          BEQ    $5D5C
5D59: 7C 0A EE       INC    $0AEE
5D5C: 32 61          LEAS   $1,S
5D5E: 39             RTS
5D5F: B6 0A EC       LDA    $0AEC
5D62: 8A 04          ORA    #$04
5D64: B7 0A EC       STA    $0AEC
5D67: 7F 0A EE       CLR    $0AEE
5D6A: 7F 0A F4       CLR    $0AF4
5D6D: 20 ED          BRA    $5D5C
5D6F: 34 10          PSHS   X
5D71: 96 29          LDA    $29
5D73: 88 03          EORA   #$03
5D75: 84 03          ANDA   #$03
5D77: 27 05          BEQ    $5D7E
5D79: 8E 5D 8A       LDX    #$5D8A
5D7C: 20 03          BRA    $5D81
5D7E: 8E 5D 8D       LDX    #$5D8D
5D81: B6 0A EC       LDA    $0AEC
5D84: 84 03          ANDA   #$03
5D86: A6 86          LDA    A,X
5D88: 35 90          PULS   X,PC
5D8A: 03 02          COM    $02
5D8C: 00 03          NEG    $03
5D8E: 02 02 34       AIM    #$02;$34
5D91: 36 B6          PSHU   PC,Y,X,D
5D93: 0A F3          DEC    $F3
5D95: 48             ASLA
5D96: 8E 0A F5       LDX    #$0AF5
5D99: AE 86          LDX    A,X
5D9B: 86 81          LDA    #$81
5D9D: A7 84          STA    ,X
5D9F: 7C 09 EF       INC    $09EF
5DA2: 34 20          PSHS   Y
5DA4: 10 9E 00       LDY    $00
5DA7: A6 A0          LDA    ,Y+
5DA9: 10 9F 00       STY    $00
5DAC: 35 20          PULS   Y
5DAE: A7 01          STA    $1,X
5DB0: BD 64 80       JSR    $6480
5DB3: 80 02          SUBA   #$02
5DB5: A7 88 17       STA    $17,X
5DB8: 86 57          LDA    #$57
5DBA: A7 88 1B       STA    $1B,X
5DBD: 34 20          PSHS   Y
5DBF: 10 9E 02       LDY    $02
5DC2: EC A1          LDD    ,Y++
5DC4: 10 9F 02       STY    $02
5DC7: 35 20          PULS   Y
5DC9: ED 04          STD    $4,X
5DCB: CC 01 40       LDD    #$0140
5DCE: ED 06          STD    $6,X
5DD0: CC 01 C0       LDD    #$01C0
5DD3: ED 08          STD    $8,X
5DD5: A6 01          LDA    $1,X
5DD7: BD 64 19       JSR    $6419
5DDA: E7 88 1F       STB    $1F,X
5DDD: BD 63 50       JSR    $6350
5DE0: 6F 88 45       CLR    $45,X
5DE3: BC 0A F5       CMPX   $0AF5
5DE6: 26 15          BNE    $5DFD
5DE8: B6 0A EC       LDA    $0AEC
5DEB: 84 03          ANDA   #$03
5DED: 81 02          CMPA   #$02
5DEF: 24 0C          BCC    $5DFD
5DF1: A6 88 17       LDA    $17,X
5DF4: 81 08          CMPA   #$08
5DF6: 26 05          BNE    $5DFD
5DF8: 86 07          LDA    #$07
5DFA: BD 63 94       JSR    $6394
5DFD: 35 B6          PULS   D,X,Y,PC
5DFF: 07 E6          ASR    $E6
5E01: 07 EC          ASR    $EC
5E03: 07 E0          ASR    $E0
5E05: B6 0E 16       LDA    $0E16
5E08: 84 C7          ANDA   #$C7
5E0A: 8A 10          ORA    #$10
5E0C: B7 0E 16       STA    $0E16
5E0F: 7C 0A EE       INC    $0AEE
5E12: B6 0A EC       LDA    $0AEC
5E15: 85 10          BITA   #$10
5E17: 26 0B          BNE    $5E24
5E19: 7F 0A ED       CLR    $0AED
5E1C: B6 0A EC       LDA    $0AEC
5E1F: 8A 10          ORA    #$10
5E21: B7 0A EC       STA    $0AEC
5E24: 7C 0A ED       INC    $0AED
5E27: B6 0A ED       LDA    $0AED
5E2A: 81 18          CMPA   #$18
5E2C: 25 18          BCS    $5E46
5E2E: 7F 0A ED       CLR    $0AED
5E31: 7C 0A F1       INC    $0AF1
5E34: B6 0A F1       LDA    $0AF1
5E37: 81 02          CMPA   #$02
5E39: 25 0B          BCS    $5E46
5E3B: 7C 0A EE       INC    $0AEE
5E3E: B6 0A EC       LDA    $0AEC
5E41: 84 EF          ANDA   #$EF
5E43: B7 0A EC       STA    $0AEC
5E46: 39             RTS
5E47: B6 0A F3       LDA    $0AF3
5E4A: 27 4B          BEQ    $5E97
5E4C: B6 0E 16       LDA    $0E16
5E4F: 2A 46          BPL    $5E97
5E51: B6 0A EC       LDA    $0AEC
5E54: 85 10          BITA   #$10
5E56: 26 0E          BNE    $5E66
5E58: 7F 0A F4       CLR    $0AF4
5E5B: 7F 0A ED       CLR    $0AED
5E5E: B6 0A EC       LDA    $0AEC
5E61: 8A 10          ORA    #$10
5E63: B7 0A EC       STA    $0AEC
5E66: B6 0A ED       LDA    $0AED
5E69: 26 1A          BNE    $5E85
5E6B: B6 0A F4       LDA    $0AF4
5E6E: 48             ASLA
5E6F: 8E 0A F5       LDX    #$0AF5
5E72: AE 86          LDX    A,X
5E74: A6 84          LDA    ,X
5E76: 8A 40          ORA    #$40
5E78: A7 84          STA    ,X
5E7A: 7C 0A F4       INC    $0AF4
5E7D: B6 0A F4       LDA    $0AF4
5E80: B1 0A F3       CMPA   $0AF3
5E83: 27 0F          BEQ    $5E94
5E85: 7C 0A ED       INC    $0AED
5E88: B6 0A ED       LDA    $0AED
5E8B: 81 30          CMPA   #$30
5E8D: 26 08          BNE    $5E97
5E8F: 7F 0A ED       CLR    $0AED
5E92: 20 03          BRA    $5E97
5E94: 7C 0A EE       INC    $0AEE
5E97: 39             RTS
5E98: B6 0E 16       LDA    $0E16
5E9B: 84 C7          ANDA   #$C7
5E9D: 8A 08          ORA    #$08
5E9F: B7 0E 16       STA    $0E16
5EA2: 7C 0A EE       INC    $0AEE
5EA5: B6 0A EC       LDA    $0AEC
5EA8: 84 EF          ANDA   #$EF
5EAA: B7 0A EC       STA    $0AEC
5EAD: 39             RTS
5EAE: B6 0E 16       LDA    $0E16
5EB1: 2B 38          BMI    $5EEB
5EB3: B6 0A EC       LDA    $0AEC
5EB6: 85 10          BITA   #$10
5EB8: 26 11          BNE    $5ECB
5EBA: 7F 0A ED       CLR    $0AED
5EBD: CC 5F 7D       LDD    #$5F7D
5EC0: FD 0A EF       STD    $0AEF
5EC3: B6 0A EC       LDA    $0AEC
5EC6: 8A 10          ORA    #$10
5EC8: B7 0A EC       STA    $0AEC
5ECB: 7C 0A ED       INC    $0AED
5ECE: B6 0A ED       LDA    $0AED
5ED1: 81 18          CMPA   #$18
5ED3: 25 16          BCS    $5EEB
5ED5: 7F 0A ED       CLR    $0AED
5ED8: 7A 0A F1       DEC    $0AF1
5EDB: 2A 0E          BPL    $5EEB
5EDD: 7C 0A EE       INC    $0AEE
5EE0: 7F 0A F1       CLR    $0AF1
5EE3: B6 0A EC       LDA    $0AEC
5EE6: 84 EF          ANDA   #$EF
5EE8: B7 0A EC       STA    $0AEC
5EEB: 39             RTS
5EEC: 32 7F          LEAS   -$1,S
5EEE: 7C 0A EC       INC    $0AEC
5EF1: B6 0A EC       LDA    $0AEC
5EF4: 84 03          ANDA   #$03
5EF6: 81 03          CMPA   #$03
5EF8: 27 0E          BEQ    $5F08
5EFA: BD 5F 19       JSR    $5F19
5EFD: A7 E4          STA    ,S
5EFF: B6 0A EC       LDA    $0AEC
5F02: 84 03          ANDA   #$03
5F04: A1 E4          CMPA   ,S
5F06: 25 08          BCS    $5F10
5F08: B6 0A EC       LDA    $0AEC
5F0B: 8A 04          ORA    #$04
5F0D: B7 0A EC       STA    $0AEC
5F10: 7F 0A EE       CLR    $0AEE
5F13: 7F 0A F4       CLR    $0AF4
5F16: 32 61          LEAS   $1,S
5F18: 39             RTS
5F19: 34 10          PSHS   X
5F1B: 96 29          LDA    $29
5F1D: 88 03          EORA   #$03
5F1F: 84 03          ANDA   #$03
5F21: 27 04          BEQ    $5F27
5F23: 86 02          LDA    #$02
5F25: 20 02          BRA    $5F29
5F27: 86 03          LDA    #$03
5F29: 35 90          PULS   X,PC
5F2B: 32 7F          LEAS   -$1,S
5F2D: 86 02          LDA    #$02
5F2F: A7 E4          STA    ,S
5F31: 86 01          LDA    #$01
5F33: 97 02          STA    $02
5F35: 8E 5F 77       LDX    #$5F77
5F38: A6 E4          LDA    ,S
5F3A: 48             ASLA
5F3B: 30 86          LEAX   A,X
5F3D: A6 84          LDA    ,X
5F3F: 97 03          STA    $03
5F41: A6 01          LDA    $1,X
5F43: 97 04          STA    $04
5F45: 8E 5F 5F       LDX    #$5F5F
5F48: B6 0A F1       LDA    $0AF1
5F4B: 48             ASLA
5F4C: AE 86          LDX    A,X
5F4E: A6 E4          LDA    ,S
5F50: 48             ASLA
5F51: 30 86          LEAX   A,X
5F53: 9F 00          STX    $00
5F55: BD 44 DC       JSR    $44DC
5F58: 6A E4          DEC    ,S
5F5A: 2A D5          BPL    $5F31
5F5C: 32 61          LEAS   $1,S
5F5E: 39             RTS
5F5F: 5F             CLRB
5F60: 65 5F 6B       EIM    #$5F;$B,S
5F63: 5F             CLRB
5F64: 71 0F F0 07    OIM    #$0F,$F007
5F68: 77 07 77       ASR    $0777
5F6B: 07 77          ASR    $77
5F6D: 0F F0          CLR    $F0
5F6F: 07 77          ASR    $77
5F71: 07 77          ASR    $77
5F73: 07 77          ASR    $77
5F75: 0F F0          CLR    $F0
5F77: 01 0D 01       OIM    #$0D;$01
5F7A: 0E 01          JMP    $01
5F7C: 0F 07          CLR    $07
5F7E: E0 01          SUBB   $1,X
5F80: 35 01          PULS   CC
5F82: C0 08          SUBB   #$08
5F84: 00 34          NEG    $34
5F86: 40             NEGA
5F87: B6 0E 2D       LDA    $0E2D
5F8A: 27 20          BEQ    $5FAC
5F8C: 81 FF          CMPA   #$FF
5F8E: 27 30          BEQ    $5FC0
5F90: 96 36          LDA    $36
5F92: D6 38          LDB    $38
5F94: 10 83 02 04    CMPD   #$0204
5F98: 27 12          BEQ    $5FAC
5F9A: 96 36          LDA    $36
5F9C: 4C             INCA
5F9D: 5F             CLRB
5F9E: 10 B3 0B 04    CMPD   $0B04
5FA2: 27 1C          BEQ    $5FC0
5FA4: FD 0B 04       STD    $0B04
5FA7: 7F 0A AE       CLR    $0AAE
5FAA: 20 14          BRA    $5FC0
5FAC: 96 36          LDA    $36
5FAE: D6 38          LDB    $38
5FB0: 10 B3 0B 04    CMPD   $0B04
5FB4: 23 0A          BLS    $5FC0
5FB6: 96 36          LDA    $36
5FB8: D6 38          LDB    $38
5FBA: FD 0B 04       STD    $0B04
5FBD: 7F 0A AE       CLR    $0AAE
5FC0: B6 0E 52       LDA    $0E52
5FC3: 26 05          BNE    $5FCA
5FC5: B6 09 F2       LDA    $09F2
5FC8: 2B 27          BMI    $5FF1
5FCA: BD 60 EE       JSR    $60EE
5FCD: BD 5F F7       JSR    $5FF7
5FD0: BD 78 A2       JSR    $78A2
5FD3: BD 64 E0       JSR    $64E0
5FD6: BD 64 87       JSR    $6487
5FD9: 8E 04 5E       LDX    #$045E
5FDC: A6 84          LDA    ,X
5FDE: 85 80          BITA   #$80
5FE0: 27 07          BEQ    $5FE9
5FE2: 85 10          BITA   #$10
5FE4: 27 03          BEQ    $5FE9
5FE6: BD 61 EC       JSR    $61EC
5FE9: 30 88 55       LEAX   $55,X
5FEC: 8C 07 5B       CMPX   #$075B
5FEF: 26 EB          BNE    $5FDC
5FF1: 35 C0          PULS   U,PC
5FF3: 04 08          LSR    $08
5FF5: 14             SEXW
5FF6: 1A 34          ORCC   #$34
5FF8: 40             NEGA
5FF9: B6 0A B6       LDA    $0AB6
5FFC: 2B 08          BMI    $6006
5FFE: 10 8E 66 D2    LDY    #$66D2
6002: 10 BF 0A BA    STY    $0ABA
6006: 10 BE 0A BA    LDY    $0ABA
600A: DC 3C          LDD    $3C
600C: 10 A3 A4       CMPD   ,Y
600F: 24 04          BCC    $6015
6011: 31 3C          LEAY   -$4,Y
6013: 20 F5          BRA    $600A
6015: 10 A3 24       CMPD   $4,Y
6018: 25 04          BCS    $601E
601A: 31 24          LEAY   $4,Y
601C: 20 EC          BRA    $600A
601E: 10 BC 0A BA    CMPY   $0ABA
6022: 23 11          BLS    $6035
6024: 10 BF 0A BA    STY    $0ABA
6028: 10 AE 22       LDY    $2,Y
602B: B6 0A B6       LDA    $0AB6
602E: 84 80          ANDA   #$80
6030: B7 0A B6       STA    $0AB6
6033: 20 15          BRA    $604A
6035: 10 AE 22       LDY    $2,Y
6038: B6 0A B6       LDA    $0AB6
603B: 2A 0D          BPL    $604A
603D: B6 0A B6       LDA    $0AB6
6040: 84 40          ANDA   #$40
6042: 10 27 00 9E    LBEQ   $60E4
6046: 10 BE 0A B7    LDY    $0AB7
604A: 8E 04 5E       LDX    #$045E
604D: A6 A4          LDA    ,Y
604F: 81 FF          CMPA   #$FF
6051: 10 27 00 87    LBEQ   $60DC
6055: 81 FC          CMPA   #$FC
6057: 26 13          BNE    $606C
6059: B6 0A B6       LDA    $0AB6
605C: 8A 40          ORA    #$40
605E: B7 0A B6       STA    $0AB6
6061: 31 21          LEAY   $1,Y
6063: A6 A4          LDA    ,Y
6065: B7 0A B9       STA    $0AB9
6068: 31 21          LEAY   $1,Y
606A: 20 E1          BRA    $604D
606C: 81 FB          CMPA   #$FB
606E: 26 05          BNE    $6075
6070: 10 AE 21       LDY    $1,Y
6073: 20 D8          BRA    $604D
6075: B6 0A B6       LDA    $0AB6
6078: 84 40          ANDA   #$40
607A: 27 68          BEQ    $60E4
607C: B6 0A B5       LDA    $0AB5
607F: B1 0A B9       CMPA   $0AB9
6082: 24 4A          BCC    $60CE
6084: A6 84          LDA    ,X
6086: 84 80          ANDA   #$80
6088: 26 3C          BNE    $60C6
608A: 10 AF 88 43    STY    $43,X
608E: A6 84          LDA    ,X
6090: 8A 91          ORA    #$91
6092: A7 84          STA    ,X
6094: 7C 09 EF       INC    $09EF
6097: 6F 88 47       CLR    $47,X
609A: 6F 88 46       CLR    $46,X
609D: 6F 88 4A       CLR    $4A,X
60A0: 6F 88 45       CLR    $45,X
60A3: B6 0A B6       LDA    $0AB6
60A6: 84 40          ANDA   #$40
60A8: 27 06          BEQ    $60B0
60AA: 6A 88 45       DEC    $45,X
60AD: 7C 0A B5       INC    $0AB5
60B0: A6 24          LDA    $4,Y
60B2: 84 40          ANDA   #$40
60B4: 1C FE          ANDCC  #$FE
60B6: 48             ASLA
60B7: 48             ASLA
60B8: 49             ROLA
60B9: 5F             CLRB
60BA: D3 3C          ADDD   $3C
60BC: C3 00 30       ADDD   #$0030
60BF: A7 88 48       STA    $48,X
60C2: 31 2A          LEAY   $A,Y
60C4: 20 87          BRA    $604D
60C6: 30 88 55       LEAX   $55,X
60C9: 8C 07 06       CMPX   #$0706
60CC: 25 A7          BCS    $6075
60CE: 10 BF 0A B7    STY    $0AB7
60D2: B6 0A B6       LDA    $0AB6
60D5: 8A 20          ORA    #$20
60D7: B7 0A B6       STA    $0AB6
60DA: 20 08          BRA    $60E4
60DC: B6 0A B6       LDA    $0AB6
60DF: 84 9F          ANDA   #$9F
60E1: B7 0A B6       STA    $0AB6
60E4: B6 0A B6       LDA    $0AB6
60E7: 8A 80          ORA    #$80
60E9: B7 0A B6       STA    $0AB6
60EC: 35 C0          PULS   U,PC
60EE: 34 40          PSHS   U
60F0: B6 0A AE       LDA    $0AAE
60F3: 10 2B 00 F3    LBMI   $61EA
60F7: B6 0B 04       LDA    $0B04
60FA: 48             ASLA
60FB: 10 8E 65 52    LDY    #$6552
60FF: 10 AE A6       LDY    A,Y
6102: B6 0B 05       LDA    $0B05
6105: 48             ASLA
6106: 10 AE A6       LDY    A,Y
6109: 8E 04 5E       LDX    #$045E
610C: A6 A4          LDA    ,Y
610E: 81 FF          CMPA   #$FF
6110: 10 27 00 C6    LBEQ   $61DA
6114: 81 FE          CMPA   #$FE
6116: 26 11          BNE    $6129
6118: B6 0A AE       LDA    $0AAE
611B: 84 F0          ANDA   #$F0
611D: AA 21          ORA    $1,Y
611F: 8A 10          ORA    #$10
6121: B7 0A AE       STA    $0AAE
6124: 31 22          LEAY   $2,Y
6126: 16 FF E3       LBRA   $610C
6129: 81 FD          CMPA   #$FD
612B: 26 04          BNE    $6131
612D: 31 21          LEAY   $1,Y
612F: 20 DB          BRA    $610C
6131: 81 FC          CMPA   #$FC
6133: 26 04          BNE    $6139
6135: 31 21          LEAY   $1,Y
6137: 20 D3          BRA    $610C
6139: 81 FB          CMPA   #$FB
613B: 26 05          BNE    $6142
613D: 10 AE 21       LDY    $1,Y
6140: 20 CA          BRA    $610C
6142: B6 0A AE       LDA    $0AAE
6145: 84 40          ANDA   #$40
6147: 27 08          BEQ    $6151
6149: B6 0A B5       LDA    $0AB5
614C: B1 0A B4       CMPA   $0AB4
614F: 24 7B          BCC    $61CC
6151: A6 84          LDA    ,X
6153: 84 80          ANDA   #$80
6155: 26 6B          BNE    $61C2
6157: 10 AF 88 43    STY    $43,X
615B: A6 84          LDA    ,X
615D: 8A 91          ORA    #$91
615F: A7 84          STA    ,X
6161: 86 07          LDA    #$07
6163: A7 02          STA    $2,X
6165: 7C 09 EF       INC    $09EF
6168: 86 00          LDA    #$00
616A: A7 88 47       STA    $47,X
616D: A7 88 46       STA    $46,X
6170: A7 88 4A       STA    $4A,X
6173: A7 88 45       STA    $45,X
6176: B6 0A AE       LDA    $0AAE
6179: 84 40          ANDA   #$40
617B: 27 06          BEQ    $6183
617D: 6A 88 45       DEC    $45,X
6180: 7C 0A B5       INC    $0AB5
6183: A6 24          LDA    $4,Y
6185: 84 40          ANDA   #$40
6187: 1C FE          ANDCC  #$FE
6189: 48             ASLA
618A: 48             ASLA
618B: 49             ROLA
618C: BB 0A AF       ADDA   $0AAF
618F: A7 88 48       STA    $48,X
6192: 6F 88 49       CLR    $49,X
6195: B6 0A AE       LDA    $0AAE
6198: 84 10          ANDA   #$10
619A: 27 21          BEQ    $61BD
619C: 6A 88 49       DEC    $49,X
619F: B6 0A B3       LDA    $0AB3
61A2: A7 88 47       STA    $47,X
61A5: 7C 0A B3       INC    $0AB3
61A8: 7A 0A AE       DEC    $0AAE
61AB: B6 0A AE       LDA    $0AAE
61AE: 84 0F          ANDA   #$0F
61B0: 26 90          BNE    $6142
61B2: B6 0A AE       LDA    $0AAE
61B5: 84 EF          ANDA   #$EF
61B7: B7 0A AE       STA    $0AAE
61BA: 7F 0A B3       CLR    $0AB3
61BD: 31 2A          LEAY   $A,Y
61BF: 16 FF 4A       LBRA   $610C
61C2: 30 88 55       LEAX   $55,X
61C5: 8C 07 06       CMPX   #$0706
61C8: 10 25 FF 76    LBCS   $6142
61CC: 10 BF 0A B0    STY    $0AB0
61D0: B6 0A AE       LDA    $0AAE
61D3: 8A 20          ORA    #$20
61D5: B7 0A AE       STA    $0AAE
61D8: 20 08          BRA    $61E2
61DA: B6 0A AE       LDA    $0AAE
61DD: 84 9F          ANDA   #$9F
61DF: B7 0A AE       STA    $0AAE
61E2: B6 0A AE       LDA    $0AAE
61E5: 8A 80          ORA    #$80
61E7: B7 0A AE       STA    $0AAE
61EA: 35 C0          PULS   U,PC
61EC: 34 50          PSHS   U,X
61EE: 32 7C          LEAS   -$4,S
61F0: 10 AE 88 43    LDY    $43,X
61F4: A6 88 4A       LDA    $4A,X
61F7: 85 90          BITA   #$90
61F9: 10 2B 01 3D    LBMI   $633A
61FD: 26 7F          BNE    $627E
61FF: A6 88 45       LDA    $45,X
6202: 26 15          BNE    $6219
6204: BD 63 50       JSR    $6350
6207: A6 29          LDA    $9,Y
6209: E6 A4          LDB    ,Y
620B: ED 04          STD    $4,X
620D: 6F 0A          CLR    $A,X
620F: EC 21          LDD    $1,Y
6211: 1E 89          EXG    A,B
6213: 84 0F          ANDA   #$0F
6215: ED 06          STD    $6,X
6217: 6F 0B          CLR    $B,X
6219: EC 26          LDD    $6,Y
621B: 84 03          ANDA   #$03
621D: ED 08          STD    $8,X
621F: 6F 0C          CLR    $C,X
6221: A6 22          LDA    $2,Y
6223: 84 F0          ANDA   #$F0
6225: A7 88 46       STA    $46,X
6228: A6 24          LDA    $4,Y
622A: 84 1F          ANDA   #$1F
622C: A7 88 17       STA    $17,X
622F: CE 63 45       LDU    #$6345
6232: E6 C6          LDB    A,U
6234: E7 01          STB    $1,X
6236: 86 80          LDA    #$80
6238: A7 03          STA    $3,X
623A: A6 28          LDA    $8,Y
623C: 84 C0          ANDA   #$C0
623E: AA 88 17       ORA    $17,X
6241: A7 88 17       STA    $17,X
6244: A6 26          LDA    $6,Y
6246: 1F 89          TFR    A,B
6248: 59             ROLB
6249: 59             ROLB
624A: 59             ROLB
624B: C4 03          ANDB   #$03
624D: E7 88 3E       STB    $3E,X
6250: 44             LSRA
6251: 44             LSRA
6252: 44             LSRA
6253: 84 07          ANDA   #$07
6255: A7 88 4B       STA    $4B,X
6258: A6 28          LDA    $8,Y
625A: 84 0F          ANDA   #$0F
625C: BD 63 94       JSR    $6394
625F: A6 25          LDA    $5,Y
6261: A7 88 1B       STA    $1B,X
6264: 2A 10          BPL    $6276
6266: 48             ASLA
6267: CE 66 D2       LDU    #$66D2
626A: EE C6          LDU    A,U
626C: BD 45 B1       JSR    $45B1
626F: A4 C0          ANDA   ,U+
6271: A6 C6          LDA    A,U
6273: A7 88 1B       STA    $1B,X
6276: A6 88 4A       LDA    $4A,X
6279: 8A 10          ORA    #$10
627B: A7 88 4A       STA    $4A,X
627E: A6 88 45       LDA    $45,X
6281: 26 55          BNE    $62D8
6283: 6F 62          CLR    $2,S
6285: EC 04          LDD    $4,X
6287: 93 3C          SUBD   $3C
6289: 2A 0B          BPL    $6296
628B: ED E4          STD    ,S
628D: 86 20          LDA    #$20
628F: A7 62          STA    $2,S
6291: CC 00 00       LDD    #$0000
6294: A3 E4          SUBD   ,S
6296: ED E4          STD    ,S
6298: A6 24          LDA    $4,Y
629A: A8 62          EORA   $2,S
629C: 84 20          ANDA   #$20
629E: 10 26 00 98    LBNE   $633A
62A2: 4F             CLRA
62A3: E6 23          LDB    $3,Y
62A5: 58             ASLB
62A6: 49             ROLA
62A7: 58             ASLB
62A8: 49             ROLA
62A9: 58             ASLB
62AA: 49             ROLA
62AB: 10 A3 E4       CMPD   ,S
62AE: A6 24          LDA    $4,Y
62B0: 84 20          ANDA   #$20
62B2: 26 06          BNE    $62BA
62B4: 10 25 00 82    LBCS   $633A
62B8: 20 04          BRA    $62BE
62BA: 10 24 00 7C    LBCC   $633A
62BE: 20 18          BRA    $62D8
62C0: DC 3F          LDD    $3F
62C2: C3 00 60       ADDD   #$0060
62C5: A3 06          SUBD   $6,X
62C7: 2A 07          BPL    $62D0
62C9: ED E4          STD    ,S
62CB: CC 00 00       LDD    #$0000
62CE: A3 E4          SUBD   ,S
62D0: 10 83 00 A0    CMPD   #$00A0
62D4: 10 24 00 62    LBCC   $633A
62D8: A6 88 46       LDA    $46,X
62DB: 27 05          BEQ    $62E2
62DD: 6A 88 46       DEC    $46,X
62E0: 20 58          BRA    $633A
62E2: B6 0E 2D       LDA    $0E2D
62E5: 26 53          BNE    $633A
62E7: A6 88 47       LDA    $47,X
62EA: 27 0A          BEQ    $62F6
62EC: 6A 88 47       DEC    $47,X
62EF: 86 08          LDA    #$08
62F1: A7 88 46       STA    $46,X
62F4: 20 44          BRA    $633A
62F6: A6 88 45       LDA    $45,X
62F9: 27 1C          BEQ    $6317
62FB: DC 3C          LDD    $3C
62FD: 4C             INCA
62FE: ED E4          STD    ,S
6300: E6 A4          LDB    ,Y
6302: A6 24          LDA    $4,Y
6304: 84 20          ANDA   #$20
6306: 27 02          BEQ    $630A
6308: 6A E4          DEC    ,S
630A: 1D             SEX
630B: E3 E4          ADDD   ,S
630D: ED 04          STD    $4,X
630F: A6 22          LDA    $2,Y
6311: 84 0F          ANDA   #$0F
6313: E6 21          LDB    $1,Y
6315: ED 06          STD    $6,X
6317: A6 01          LDA    $1,X
6319: BD 64 19       JSR    $6419
631C: E7 88 1F       STB    $1F,X
631F: 96 36          LDA    $36
6321: 81 01          CMPA   #$01
6323: 26 05          BNE    $632A
6325: A6 88 17       LDA    $17,X
6328: 2B 06          BMI    $6330
632A: A6 84          LDA    ,X
632C: 8A 40          ORA    #$40
632E: A7 84          STA    ,X
6330: A6 88 4A       LDA    $4A,X
6333: 84 EF          ANDA   #$EF
6335: 8A 80          ORA    #$80
6337: A7 88 4A       STA    $4A,X
633A: 32 64          LEAS   $4,S
633C: 35 D0          PULS   X,U,PC
633E: 7A 09 EF       DEC    $09EF
6341: 6F 84          CLR    ,X
6343: 20 F5          BRA    $633A
6345: 02 03 04       AIM    #$03;$04
6348: 05 06 07       EIM    #$06;$07
634B: 08 09          ASL    $09
634D: 0A 22          DEC    $22
634F: 23 6F          BLS    $63C0
6351: 88 4B          EORA   #$4B
6353: 6F 88 21       CLR    $21,X
6356: 6F 88 41       CLR    $41,X
6359: 6F 88 42       CLR    $42,X
635C: CC 00 FF       LDD    #$00FF
635F: ED 88 29       STD    $29,X
6362: A7 88 2B       STA    $2B,X
6365: 4F             CLRA
6366: A7 88 24       STA    $24,X
6369: A7 88 25       STA    $25,X
636C: A7 88 2F       STA    $2F,X
636F: A7 88 31       STA    $31,X
6372: A6 84          LDA    ,X
6374: 85 10          BITA   #$10
6376: 27 06          BEQ    $637E
6378: A6 28          LDA    $8,Y
637A: 85 20          BITA   #$20
637C: 26 04          BNE    $6382
637E: 86 07          LDA    #$07
6380: 20 02          BRA    $6384
6382: 86 67          LDA    #$67
6384: A7 02          STA    $2,X
6386: 4F             CLRA
6387: A7 88 13       STA    $13,X
638A: A7 88 14       STA    $14,X
638D: A7 88 15       STA    $15,X
6390: A7 88 16       STA    $16,X
6393: 39             RTS
6394: 34 76          PSHS   U,Y,X,D
6396: 32 7F          LEAS   -$1,S
6398: A7 E4          STA    ,S
639A: 4D             TSTA
639B: 27 68          BEQ    $6405
639D: 10 8E 07 5B    LDY    #$075B
63A1: A6 A4          LDA    ,Y
63A3: 2A 0B          BPL    $63B0
63A5: 31 A8 21       LEAY   $21,Y
63A8: 10 8C 09 6B    CMPY   #$096B
63AC: 26 F3          BNE    $63A1
63AE: 20 55          BRA    $6405
63B0: 10 AF 88 41    STY    $41,X
63B4: A6 E4          LDA    ,S
63B6: A7 88 21       STA    $21,X
63B9: 34 10          PSHS   X
63BB: 86 80          LDA    #$80
63BD: A7 A8 16       STA    $16,Y
63C0: 86 80          LDA    #$80
63C2: A7 A4          STA    ,Y
63C4: AF A8 1F       STX    $1F,Y
63C7: CC FF FF       LDD    #$FFFF
63CA: ED 24          STD    $4,Y
63CC: CC 00 00       LDD    #$0000
63CF: ED 26          STD    $6,Y
63D1: 6F 22          CLR    $2,Y
63D3: A6 03          LDA    $3,X
63D5: 84 80          ANDA   #$80
63D7: A7 23          STA    $3,Y
63D9: A6 88 21       LDA    $21,X
63DC: 48             ASLA
63DD: 8E 64 09       LDX    #$6409
63E0: 30 86          LEAX   A,X
63E2: A6 80          LDA    ,X+
63E4: A7 A8 17       STA    $17,Y
63E7: A6 80          LDA    ,X+
63E9: A7 21          STA    $1,Y
63EB: 6F A8 1B       CLR    $1B,Y
63EE: 35 10          PULS   X
63F0: A6 A8 17       LDA    $17,Y
63F3: 84 1F          ANDA   #$1F
63F5: 81 05          CMPA   #$05
63F7: 27 04          BEQ    $63FD
63F9: 81 06          CMPA   #$06
63FB: 26 08          BNE    $6405
63FD: A6 88 17       LDA    $17,X
6400: 8A 20          ORA    #$20
6402: A7 88 17       STA    $17,X
6405: 32 61          LEAS   $1,S
6407: 35 F6          PULS   D,X,Y,U,PC
6409: 00 00          NEG    $00
640B: 06 0F          ROR    $0F
640D: 07 10          ASR    $10
640F: 00 0C          NEG    $0C
6411: 05 11 04       EIM    #$11;$04
6414: 0D 03          TST    $03
6416: 0E 0E          JMP    $0E
6418: 12             NOP
6419: 34 32          PSHS   Y,X,A
641B: BD 64 80       JSR    $6480
641E: 80 02          SUBA   #$02
6420: 2B 14          BMI    $6436
6422: 8E 64 3A       LDX    #$643A
6425: 48             ASLA
6426: AE 86          LDX    A,X
6428: B6 0B 04       LDA    $0B04
642B: E6 86          LDB    A,X
642D: 8E 64 7C       LDX    #$647C
6430: 96 55          LDA    $55
6432: EB 86          ADDB   A,X
6434: 20 02          BRA    $6438
6436: C6 0A          LDB    #$0A
6438: 35 B2          PULS   A,X,Y,PC
643A: 64 50          LSR    -$10,U
643C: 64 54          LSR    -$C,U
643E: 64 58          LSR    -$8,U
6440: 64 5C          LSR    -$4,U
6442: 64 60          LSR    $0,S
6444: 64 64          LSR    $4,S
6446: 64 68          LSR    $8,S
6448: 64 6C          LSR    $C,S
644A: 64 70          LSR    -$10,S
644C: 64 74          LSR    -$C,S
644E: 64 78          LSR    -$8,S
6450: 3C 3C          CWAI   #$3C
6452: 3C 3C          CWAI   #$3C
6454: 34 34          PSHS   Y,X,B
6456: 38             FCB    $38
6457: 3C 22          CWAI   #$22
6459: 26 2C          BNE    $6487
645B: 2E 28          BGT    $6485
645D: 2C 30          BGE    $648F
645F: 34 2C          PSHS   Y,DP,B
6461: 30 32          LEAX   -$E,Y
6463: 38             FCB    $38
6464: 30 34          LEAX   -$C,Y
6466: 38             FCB    $38
6467: 3C 0C          CWAI   #$0C
6469: 12             NOP
646A: 18             FCB    $18
646B: 1E 0C          EXG    D,0
646D: 14             SEXW
646E: 18             FCB    $18
646F: 1E 08          EXG    D,A
6471: 0C 10          INC    $10
6473: 14             SEXW
6474: 10 16          FCB    $10,$16
6476: 1E             FCB    $1E
6477: 26 10 16       LBNE   $7490
647A: 1E 26          EXG    Y,W
647C: 00 04          NEG    $04
647E: 08 0C          ASL    $0C
6480: 81 22          CMPA   #$22
6482: 25 02          BCS    $6486
6484: 80 17          SUBA   #$17
6486: 39             RTS
6487: B6 09 F2       LDA    $09F2
648A: 85 01          BITA   #$01
648C: 26 51          BNE    $64DF
648E: FC 0B 04       LDD    $0B04
6491: 10 83 00 02    CMPD   #$0002
6495: 26 48          BNE    $64DF
6497: B6 09 EF       LDA    $09EF
649A: 81 02          CMPA   #$02
649C: 22 41          BHI    $64DF
649E: 8E 07 06       LDX    #$0706
64A1: 86 C1          LDA    #$C1
64A3: A7 84          STA    ,X
64A5: BD 63 50       JSR    $6350
64A8: 86 85          LDA    #$85
64AA: A7 88 17       STA    $17,X
64AD: 8B 02          ADDA   #$02
64AF: 84 7F          ANDA   #$7F
64B1: A7 01          STA    $1,X
64B3: BD 64 19       JSR    $6419
64B6: E7 88 1F       STB    $1F,X
64B9: 86 00          LDA    #$00
64BB: A7 88 1B       STA    $1B,X
64BE: DC 3C          LDD    $3C
64C0: C3 01 08       ADDD   #$0108
64C3: ED 04          STD    $4,X
64C5: CC 01 40       LDD    #$0140
64C8: ED 06          STD    $6,X
64CA: CC 01 00       LDD    #$0100
64CD: ED 08          STD    $8,X
64CF: B6 09 F2       LDA    $09F2
64D2: 8A 01          ORA    #$01
64D4: B7 09 F2       STA    $09F2
64D7: 7C 09 EF       INC    $09EF
64DA: 86 03          LDA    #$03
64DC: BD 44 CD       JSR    $44CD
64DF: 39             RTS
64E0: B6 09 F2       LDA    $09F2
64E3: 85 01          BITA   #$01
64E5: 26 48          BNE    $652F
64E7: 8E 65 30       LDX    #$6530
64EA: B6 0B 04       LDA    $0B04
64ED: A6 86          LDA    A,X
64EF: B1 0B 05       CMPA   $0B05
64F2: 26 3B          BNE    $652F
64F4: 8E 07 06       LDX    #$0706
64F7: 10 8E 65 34    LDY    #$6534
64FB: 96 36          LDA    $36
64FD: 48             ASLA
64FE: 10 AE A6       LDY    A,Y
6501: A6 A4          LDA    ,Y
6503: 81 FF          CMPA   #$FF
6505: 27 28          BEQ    $652F
6507: 10 AF 88 43    STY    $43,X
650B: A6 84          LDA    ,X
650D: 8A 91          ORA    #$91
650F: A7 84          STA    ,X
6511: 7C 09 EF       INC    $09EF
6514: A6 29          LDA    $9,Y
6516: A7 88 48       STA    $48,X
6519: 86 00          LDA    #$00
651B: A7 88 47       STA    $47,X
651E: A7 88 46       STA    $46,X
6521: A7 88 4A       STA    $4A,X
6524: A7 88 45       STA    $45,X
6527: B6 09 F2       LDA    $09F2
652A: 8A 01          ORA    #$01
652C: B7 09 F2       STA    $09F2
652F: 39             RTS
6530: 02 01 04       AIM    #$01;$04
6533: 01 65 3C       OIM    #$65;$3C
6536: 65 3D 65       EIM    #$3D;$5,S
6539: 47             ASRA
653A: 65 48 FF 4C F5 EIM    #$48;[$4CF5]
653F: 00 24          NEG    $24
6541: 41             FCB    $41
6542: 00 01          NEG    $01
6544: 07 C0          ASR    $C0
6546: 08 FF          ASL    $FF
6548: 8C 95 00       CMPX   #$9500
654B: 24 40          BCC    $658D
654D: 19             DAA
654E: 01 60 C0       OIM    #$60;$C0
6551: 1B             FCB    $1B
6552: 65 5A 65       EIM    #$5A;$5,S
6555: 60 65          NEG    $5,S
6557: 64 65          LSR    $5,S
6559: 6E 65          JMP    $5,S
655B: 72 65 87 65    AIM    #$65,$8765
655F: 92 65          SBCA   $65
6561: B1 65 DA       CMPA   $65DA
6564: 65 DB 65       EIM    #$DB;$5,S
6567: FA 66 23       ORB    $6623
656A: 66 4C          ROR    $C,U
656C: 66 6B          ROR    $B,S
656E: 66 9E          ROR    [W,X]
6570: 66 B3          ROR    [,--Y]
6572: 20 30          BRA    $65A4
6574: 01 24 46       OIM    #$24;$46
6577: 00 01          NEG    $01
6579: 00 00          NEG    $00
657B: 01 40 20       OIM    #$40;$20
657E: 01 24 4A       OIM    #$24;$4A
6581: 00 01          NEG    $01
6583: 00 00          NEG    $00
6585: 01 FF F0       OIM    #$FF;$F0
6588: 40             NEGA
6589: 01 24 46       OIM    #$24;$46
658C: 10 09          FCB    $10,$09
658E: 70             FCB    $70
658F: 20             FCB    $20
6590: 01             FCB    $01
6591: FF 46 80       STS    $4680
6594: 01 24 46       OIM    #$24;$46
6597: 10 11          FCB    $10,$11
6599: 70 20 04       NEG    $2004
659C: 30 48          LEAX   $8,U
659E: 01 24 4A       OIM    #$24;$4A
65A1: 00 01          NEG    $01
65A3: 00 41          NEG    $41
65A5: 04 D0          LSR    $D0
65A7: 18             FCB    $18
65A8: 01 24 4A       OIM    #$24;$4A
65AB: 00 01          NEG    $01
65AD: 00 40          NEG    $40
65AF: 04 FF          LSR    $FF
65B1: 90 4F          SUBA   $4F
65B3: 01 24 49       OIM    #$24;$49
65B6: 10 11          FCB    $10,$11
65B8: 70 24 05       NEG    $2405
65BB: 1A 4C          ORCC   #$4C
65BD: 01 24 47       OIM    #$24;$47
65C0: 00 01          NEG    $01
65C2: 30 04          LEAX   $4,X
65C4: 06 7E          ROR    $7E
65C6: 16 01 24       LBRA   $66ED
65C9: 09 00          ROL    $00
65CB: 01 60 02       OIM    #$60;$02
65CE: 06 B2          ROR    $B2
65D0: 41             FCB    $41
65D1: 01 24 07       OIM    #$24;$07
65D4: 00 01          NEG    $01
65D6: 74 00 06       LSR    >$0006
65D9: FF FF 01       STU    $FF01
65DC: C4 00          ANDB   #$00
65DE: 24 46          BCC    $6626
65E0: 00 01          NEG    $01
65E2: 00 02          NEG    $02
65E4: 09 13          ROL    $13
65E6: 9F 00          STX    $00
65E8: 24 4A          BCC    $6634
65EA: 00 01          NEG    $01
65EC: 00 00          NEG    $00
65EE: 09 61          ROL    $61
65F0: BF 00 24       STX    >$0024
65F3: 4A             DECA
65F4: 00 01          NEG    $01
65F6: 00 00          NEG    $00
65F8: 09 FF          ROL    $FF
65FA: 6D BF 00 24    TST    [$0024]
65FE: 47             ASRA
65FF: 00 01          NEG    $01
6601: 00 00          NEG    $00
6603: 0A 30          DEC    $30
6605: D5 00          BITB   $00
6607: 24 46          BCC    $664F
6609: 10 09          FCB    $10,$09
660B: 63             FCB    $63
660C: 00             FCB    $00
660D: 0B             FCB    $0B
660E: 8B D5 00       ADDW   #$D500
6611: 24 46          BCC    $6659
6613: 10 11          FCB    $10,$11
6615: 63 01          COM    $1,X
6617: 0B DB 93       TIM    #$DB;$93
661A: 00 24          NEG    $24
661C: 46             RORA
661D: 10 20          FCB    $10,$20
661F: F0             FCB    $F0
6620: 01             FCB    $01
6621: 0B             FCB    $0B
6622: FF 3D C1       STS    $3DC1
6625: 00 24          NEG    $24
6627: 42             FCB    $42
6628: 00 01          NEG    $01
662A: 00 00          NEG    $00
662C: 0C 93          INC    $93
662E: BB 00 24       ADDA   >$0024
6631: 43             COMA
6632: 00 01          NEG    $01
6634: 00 00          NEG    $00
6636: 0D 31          TST    $31
6638: C5 00          BITB   #$00
663A: 24 46          BCC    $6682
663C: 10 29 43 01    LBVS   $A941
6640: 0E 2B          JMP    $2B
6642: 92 00          SBCA   $00
6644: 24 46          BCC    $668C
6646: 10 30 F0       ADDR   F,D
6649: 00 0E          NEG    $0E
664B: FF 6F AD       STU    $6FAD
664E: 00 24          NEG    $24
6650: 46             RORA
6651: 00 01          NEG    $01
6653: 00 00          NEG    $00
6655: 10 01          FCB    $10,$01
6657: C4             FCB    $C4
6658: 00             FCB    $00
6659: 24 42 00       LBCC   $A85C
665C: 01 00 00       OIM    #$00;$00
665F: 11 01          FCB    $11,$01
6661: A0 00          SUBE   $0,X
6663: 24 42          BCC    $66A7
6665: 00 01          NEG    $01
6667: 00 00          NEG    $00
6669: 11 FF          FCB    $11,$FF
666B: 62             FCB    $62
666C: C9             FCB    $C9
666D: 00             FCB    $00
666E: 24             FCB    $24
666F: 41             FCB    $41
6670: 00             FCB    $00
6671: 00             FCB    $00
6672: 90 00          SUBE   $00
6674: 11 92          FCB    $11,$92
6676: C9             FCB    $C9
6677: 00             FCB    $00
6678: 24             FCB    $24
6679: 41             FCB    $41
667A: 00             FCB    $00
667B: 00             FCB    $00
667C: 90 00          SUBE   $00
667E: 12             NOP
667F: F8 E9 00       EORB   $E900
6682: 24 47          BCC    $66CB
6684: 00 01          NEG    $01
6686: 30 04          LEAX   $4,X
6688: 12             NOP
6689: 68 1D          ASL    -$3,X
668B: 01 24 41       OIM    #$24;$41
668E: 10 39          PULSW
6690: 50             NEGB
6691: 00 13          NEG    $13
6693: 96 E3          LDA    $E3
6695: 00 24          NEG    $24
6697: 46             RORA
6698: 00 01          NEG    $01
669A: 30 00          LEAX   $0,X
669C: 13             SYNC
669D: FF B1 40       STU    $B140
66A0: 00 24          NEG    $24
66A2: 46             RORA
66A3: 13             SYNC
66A4: 21 00          BRN    $66A6
66A6: 04 17          LSR    $17
66A8: C1 40          CMPB   #$40
66AA: 00 24          NEG    $24
66AC: 47             ASRA
66AD: 14             SEXW
66AE: 29 00          BVS    $66B0
66B0: 00 17          NEG    $17
66B2: FF 8A A5       STU    $8AA5
66B5: 00 24          NEG    $24
66B7: 47             ASRA
66B8: 00 01          NEG    $01
66BA: 00 00          NEG    $00
66BC: 1A 00          ORCC   #$00
66BE: 80 00          SUBA   #$00
66C0: 24 49          BCC    $670B
66C2: 00 01          NEG    $01
66C4: 00 02          NEG    $02
66C6: 1B             FCB    $1B
66C7: 70 8F 00       NEG    $8F00
66CA: 24 42          BCC    $670E
66CC: 00 01          NEG    $01
66CE: 00 00          NEG    $00
66D0: 1B             FCB    $1B
66D1: FF 00 00       STU    >$0000
66D4: 66 F6          ROR    [A,S]
66D6: 00 80          NEG    $80
66D8: 66 F7          ROR    [E,S]
66DA: 02 00 67       AIM    #$00;$67
66DD: 0E 05          JMP    $05
66DF: 20 67          BRA    $6748
66E1: 1B             FCB    $1B
66E2: 08 20          ASL    $20
66E4: 67 28          ASR    $8,Y
66E6: 0C E0          INC    $E0
66E8: 67 35          ASR    -$B,Y
66EA: 0F A0          CLR    $A0
66EC: 67 42          ASR    $2,U
66EE: 17 A0 67       LBSR   $0758
66F1: 50             NEGB
66F2: FF FF 66       STU    $FF66
66F5: F6 FF FC       LDB    $FFFC
66F8: 02 F8 18       AIM    #$F8;$18
66FB: 01 24 27       OIM    #$24;$27
66FE: 00 01          NEG    $01
6700: 00 00          NEG    $00
6702: 00 08          NEG    $08
6704: 18             FCB    $18
6705: 01 24 06       OIM    #$24;$06
6708: 00 01          NEG    $01
670A: 00 00          NEG    $00
670C: 00 FF          NEG    $FF
670E: FC 01 08       LDD    $0108
6711: 18             FCB    $18
6712: 01 24 06       OIM    #$24;$06
6715: 00 01          NEG    $01
6717: 00 02          NEG    $02
6719: 00 FF          NEG    $FF
671B: FC 01 F8       LDD    $01F8
671E: 30 01          LEAX   $1,X
6720: 24 26          BCC    $6748
6722: 00 01          NEG    $01
6724: 00 00          NEG    $00
6726: 00 FF          NEG    $FF
6728: FC 01 F8       LDD    $01F8
672B: B8 00 24       EORA   >$0024
672E: 27 00          BEQ    $6730
6730: 01 00 00       OIM    #$00;$00
6733: 00 FF          NEG    $FF
6735: FC 01 0E       LDD    $010E
6738: B8 00 24       EORA   >$0024
673B: 07 00          ASR    $00
673D: 01 00 01       OIM    #$00;$01
6740: 00 FF          NEG    $FF
6742: FC 01 F8       LDD    $01F8
6745: B0 00 24       SUBA   >$0024
6748: 27 00          BEQ    $674A
674A: 01 00 00       OIM    #$00;$00
674D: 00 FF          NEG    $FF
674F: FF FC 01       STU    $FC01
6752: F8 35 00       EORB   $3500
6755: 24 29          BCC    $6780
6757: 00 01          NEG    $01
6759: 00 01          NEG    $01
675B: 00 FF          NEG    $FF
675D: A6 88 15       LDA    $15,X
6760: 84 01          ANDA   #$01
6762: 27 60          BEQ    $67C4
6764: A6 88 23       LDA    $23,X
6767: 2B 2E          BMI    $6797
6769: A6 01          LDA    $1,X
676B: 81 22          CMPA   #$22
676D: 25 02          BCS    $6771
676F: 80 17          SUBA   #$17
6771: 48             ASLA
6772: 10 8E 6E BA    LDY    #$6EBA
6776: 10 AE A6       LDY    A,Y
6779: A6 02          LDA    $2,X
677B: 84 7F          ANDA   #$7F
677D: 81 7F          CMPA   #$7F
677F: 26 08          BNE    $6789
6781: 10 AE 88 2D    LDY    $2D,X
6785: A6 22          LDA    $2,Y
6787: 84 7F          ANDA   #$7F
6789: 97 00          STA    $00
678B: 4F             CLRA
678C: E6 A6          LDB    A,Y
678E: 2B 07          BMI    $6797
6790: D1 00          CMPB   $00
6792: 27 2F          BEQ    $67C3
6794: 4C             INCA
6795: 20 F5          BRA    $678C
6797: A6 88 1B       LDA    $1B,X
679A: 97 00          STA    $00
679C: 84 7F          ANDA   #$7F
679E: 81 0A          CMPA   #$0A
67A0: 27 40          BEQ    $67E2
67A2: A6 88 23       LDA    $23,X
67A5: 84 7F          ANDA   #$7F
67A7: A7 88 1B       STA    $1B,X
67AA: BD 67 EC       JSR    $67EC
67AD: A6 88 15       LDA    $15,X
67B0: 84 FE          ANDA   #$FE
67B2: A7 88 15       STA    $15,X
67B5: A6 88 1F       LDA    $1F,X
67B8: 27 09          BEQ    $67C3
67BA: A0 88 20       SUBA   $20,X
67BD: 24 01          BCC    $67C0
67BF: 4F             CLRA
67C0: A7 88 1F       STA    $1F,X
67C3: 39             RTS
67C4: A6 88 24       LDA    $24,X
67C7: 27 08          BEQ    $67D1
67C9: 6A 88 24       DEC    $24,X
67CC: 26 03          BNE    $67D1
67CE: 6F 88 25       CLR    $25,X
67D1: A6 88 1B       LDA    $1B,X
67D4: 84 7F          ANDA   #$7F
67D6: 81 02          CMPA   #$02
67D8: 27 11          BEQ    $67EB
67DA: 81 03          CMPA   #$03
67DC: 27 0D          BEQ    $67EB
67DE: 81 0A          CMPA   #$0A
67E0: 27 09          BEQ    $67EB
67E2: CC FF FF       LDD    #$FFFF
67E5: ED 88 29       STD    $29,X
67E8: A7 88 2B       STA    $2B,X
67EB: 39             RTS
67EC: A6 88 1B       LDA    $1B,X
67EF: 81 0A          CMPA   #$0A
67F1: 27 18          BEQ    $680B
67F3: 10 AE 88 2D    LDY    $2D,X
67F7: 96 00          LDA    $00
67F9: 84 7F          ANDA   #$7F
67FB: 81 09          CMPA   #$09
67FD: 27 0D          BEQ    $680C
67FF: 81 0A          CMPA   #$0A
6801: 27 09          BEQ    $680C
6803: 81 06          CMPA   #$06
6805: 27 05          BEQ    $680C
6807: 81 08          CMPA   #$08
6809: 27 01          BEQ    $680C
680B: 39             RTS
680C: A6 A8 1B       LDA    $1B,Y
680F: 84 7F          ANDA   #$7F
6811: 81 0C          CMPA   #$0C
6813: 26 F6          BNE    $680B
6815: 86 00          LDA    #$00
6817: A7 88 1B       STA    $1B,X
681A: 39             RTS
681B: 34 40          PSHS   U
681D: 86 00          LDA    #$00
681F: B7 0A 6B       STA    $0A6B
6822: 8E 03 A2       LDX    #$03A2
6825: BF 0A 71       STX    $0A71
6828: BD 68 46       JSR    $6846
682B: FC 0A 71       LDD    $0A71
682E: C3 00 5E       ADDD   #$005E
6831: FD 0A 71       STD    $0A71
6834: 7C 0A 6B       INC    $0A6B
6837: B6 0A 6B       LDA    $0A6B
683A: 81 02          CMPA   #$02
683C: 26 EA          BNE    $6828
683E: BD 69 0F       JSR    $690F
6841: BD 79 EB       JSR    $79EB
6844: 35 C0          PULS   U,PC
6846: BE 0A 71       LDX    $0A71
6849: A6 84          LDA    ,X
684B: 84 C0          ANDA   #$C0
684D: 81 C0          CMPA   #$C0
684F: 10 26 00 BB    LBNE   $690E
6853: A6 88 1B       LDA    $1B,X
6856: 10 2A 00 B4    LBPL   $690E
685A: A6 02          LDA    $2,X
685C: 84 7F          ANDA   #$7F
685E: 81 7F          CMPA   #$7F
6860: 26 03          BNE    $6865
6862: AE 88 2D       LDX    $2D,X
6865: BD 6A 1F       JSR    $6A1F
6868: 10 BF 0A 6D    STY    $0A6D
686C: 86 02          LDA    #$02
686E: B7 0A 6C       STA    $0A6C
6871: 8E 04 5E       LDX    #$045E
6874: BF 0A 73       STX    $0A73
6877: BE 0A 73       LDX    $0A73
687A: A6 88 1B       LDA    $1B,X
687D: 27 12          BEQ    $6891
687F: 81 07          CMPA   #$07
6881: 27 0E          BEQ    $6891
6883: 85 80          BITA   #$80
6885: 10 27 00 70    LBEQ   $68F9
6889: 84 7F          ANDA   #$7F
688B: 81 05          CMPA   #$05
688D: 10 27 00 68    LBEQ   $68F9
6891: A6 84          LDA    ,X
6893: 10 2A 00 62    LBPL   $68F9
6897: 85 40          BITA   #$40
6899: 10 27 00 5C    LBEQ   $68F9
689D: 10 BE 0A 71    LDY    $0A71
68A1: A6 A8 31       LDA    $31,Y
68A4: AA 88 31       ORA    $31,X
68A7: 85 18          BITA   #$18
68A9: 27 0E          BEQ    $68B9
68AB: F6 0A 6B       LDB    $0A6B
68AE: 58             ASLB
68AF: CB 3B          ADDB   #$3B
68B1: A6 85          LDA    B,X
68B3: 81 08          CMPA   #$08
68B5: 24 42          BCC    $68F9
68B7: 20 0C          BRA    $68C5
68B9: F6 0A 6B       LDB    $0A6B
68BC: 58             ASLB
68BD: CB 3B          ADDB   #$3B
68BF: A6 85          LDA    B,X
68C1: 81 08          CMPA   #$08
68C3: 24 34          BCC    $68F9
68C5: F6 0A 6B       LDB    $0A6B
68C8: 58             ASLB
68C9: CB 3A          ADDB   #$3A
68CB: A6 85          LDA    B,X
68CD: 81 30          CMPA   #$30
68CF: 24 28          BCC    $68F9
68D1: BD 6A 1F       JSR    $6A1F
68D4: 10 BF 0A 6F    STY    $0A6F
68D8: B6 0A 6B       LDA    $0A6B
68DB: 81 02          CMPA   #$02
68DD: 24 0D          BCC    $68EC
68DF: C6 02          LDB    #$02
68E1: 86 01          LDA    #$01
68E3: BD 69 E2       JSR    $69E2
68E6: BD 6A 9A       JSR    $6A9A
68E9: BD 6D 91       JSR    $6D91
68EC: C6 00          LDB    #$00
68EE: 86 00          LDA    #$00
68F0: BD 69 E2       JSR    $69E2
68F3: BD 6A 9A       JSR    $6A9A
68F6: BD 6D 91       JSR    $6D91
68F9: FC 0A 73       LDD    $0A73
68FC: C3 00 55       ADDD   #$0055
68FF: FD 0A 73       STD    $0A73
6902: 7C 0A 6C       INC    $0A6C
6905: B6 0A 6C       LDA    $0A6C
6908: 81 0B          CMPA   #$0B
690A: 10 26 FF 69    LBNE   $6877
690E: 39             RTS
690F: B6 03 A2       LDA    $03A2
6912: 84 C0          ANDA   #$C0
6914: 81 C0          CMPA   #$C0
6916: 10 26 00 C7    LBNE   $69E1
691A: B6 04 00       LDA    $0400
691D: 84 C0          ANDA   #$C0
691F: 81 C0          CMPA   #$C0
6921: 10 26 00 BC    LBNE   $69E1
6925: 86 00          LDA    #$00
6927: B7 0A 6B       STA    $0A6B
692A: 8E 03 A2       LDX    #$03A2
692D: BF 0A 71       STX    $0A71
6930: A6 88 1B       LDA    $1B,X
6933: 10 2A 00 AA    LBPL   $69E1
6937: 84 7F          ANDA   #$7F
6939: 81 06          CMPA   #$06
693B: 26 0C          BNE    $6949
693D: 10 AE 88 2D    LDY    $2D,X
6941: 10 8C 04 00    CMPY   #$0400
6945: 10 27 00 98    LBEQ   $69E1
6949: A6 02          LDA    $2,X
694B: 84 7F          ANDA   #$7F
694D: 81 7F          CMPA   #$7F
694F: 26 0A          BNE    $695B
6951: AE 88 2D       LDX    $2D,X
6954: 8C 04 00       CMPX   #$0400
6957: 10 26 00 86    LBNE   $69E1
695B: BD 6A 1F       JSR    $6A1F
695E: 10 BF 0A 6D    STY    $0A6D
6962: 86 01          LDA    #$01
6964: B7 0A 6C       STA    $0A6C
6967: 8E 04 00       LDX    #$0400
696A: BF 0A 73       STX    $0A73
696D: A6 88 1B       LDA    $1B,X
6970: 2A 6F          BPL    $69E1
6972: 84 7F          ANDA   #$7F
6974: 81 06          CMPA   #$06
6976: 26 0C          BNE    $6984
6978: 10 AE 88 2D    LDY    $2D,X
697C: 10 8C 03 A2    CMPY   #$03A2
6980: 10 27 00 5D    LBEQ   $69E1
6984: A6 02          LDA    $2,X
6986: 84 7F          ANDA   #$7F
6988: 81 7F          CMPA   #$7F
698A: 26 03          BNE    $698F
698C: AE 88 2D       LDX    $2D,X
698F: BD 6A 1F       JSR    $6A1F
6992: 10 BF 0A 6F    STY    $0A6F
6996: BE 0A 71       LDX    $0A71
6999: 10 BE 0A 73    LDY    $0A73
699D: EC 06          LDD    $6,X
699F: A3 26          SUBD   $6,Y
69A1: 2A 03          BPL    $69A6
69A3: BD 6E 9D       JSR    $6E9D
69A6: A6 88 31       LDA    $31,X
69A9: AA A8 31       ORA    $31,Y
69AC: 85 18          BITA   #$18
69AE: 27 06          BEQ    $69B6
69B0: C1 08          CMPB   #$08
69B2: 24 2D          BCC    $69E1
69B4: 20 04          BRA    $69BA
69B6: C1 08          CMPB   #$08
69B8: 24 27          BCC    $69E1
69BA: EC 04          LDD    $4,X
69BC: A3 24          SUBD   $4,Y
69BE: 2A 03          BPL    $69C3
69C0: BD 6E 9D       JSR    $6E9D
69C3: C1 30          CMPB   #$30
69C5: 24 1A          BCC    $69E1
69C7: C6 02          LDB    #$02
69C9: 86 01          LDA    #$01
69CB: BD 69 E2       JSR    $69E2
69CE: BD 6A 9A       JSR    $6A9A
69D1: BD 6D 91       JSR    $6D91
69D4: C6 00          LDB    #$00
69D6: 86 00          LDA    #$00
69D8: BD 69 E2       JSR    $69E2
69DB: BD 6A 9A       JSR    $6A9A
69DE: BD 6D 91       JSR    $6D91
69E1: 39             RTS
69E2: 8E 0A 6D       LDX    #$0A6D
69E5: AE 85          LDX    B,X
69E7: BF 0A 78       STX    $0A78
69EA: 8E 0A 71       LDX    #$0A71
69ED: AE 85          LDX    B,X
69EF: BF 0A 76       STX    $0A76
69F2: 34 02          PSHS   A
69F4: 8E 0A 6B       LDX    #$0A6B
69F7: A6 86          LDA    A,X
69F9: B7 0A 75       STA    $0A75
69FC: 35 02          PULS   A
69FE: C8 02          EORB   #$02
6A00: 88 01          EORA   #$01
6A02: 8E 0A 6D       LDX    #$0A6D
6A05: AE 85          LDX    B,X
6A07: BF 0A 85       STX    $0A85
6A0A: 8E 0A 71       LDX    #$0A71
6A0D: AE 85          LDX    B,X
6A0F: BF 0A 83       STX    $0A83
6A12: 34 02          PSHS   A
6A14: 8E 0A 6B       LDX    #$0A6B
6A17: A6 86          LDA    A,X
6A19: B7 0A 82       STA    $0A82
6A1C: 35 02          PULS   A
6A1E: 39             RTS
6A1F: 32 7E          LEAS   -$2,S
6A21: A6 88 16       LDA    $16,X
6A24: 84 06          ANDA   #$06
6A26: 81 02          CMPA   #$02
6A28: 27 0E          BEQ    $6A38
6A2A: 81 04          CMPA   #$04
6A2C: 27 18          BEQ    $6A46
6A2E: A6 01          LDA    $1,X
6A30: A7 E4          STA    ,S
6A32: A6 02          LDA    $2,X
6A34: A7 61          STA    $1,S
6A36: 20 1A          BRA    $6A52
6A38: 10 AE 88 2D    LDY    $2D,X
6A3C: A6 21          LDA    $1,Y
6A3E: A7 E4          STA    ,S
6A40: A6 22          LDA    $2,Y
6A42: A7 61          STA    $1,S
6A44: 20 0C          BRA    $6A52
6A46: A6 02          LDA    $2,X
6A48: A7 61          STA    $1,S
6A4A: 10 AE 88 2D    LDY    $2D,X
6A4E: A6 21          LDA    $1,Y
6A50: A7 E4          STA    ,S
6A52: A6 61          LDA    $1,S
6A54: 84 7F          ANDA   #$7F
6A56: 48             ASLA
6A57: 1F 89          TFR    A,B
6A59: 4F             CLRA
6A5A: 10 8E 6E E0    LDY    #$6EE0
6A5E: 10 AE AB       LDY    D,Y
6A61: 36 20          PSHU   Y
6A63: 10 8E 6A 76    LDY    #$6A76
6A67: A6 E4          LDA    ,S
6A69: 84 3F          ANDA   #$3F
6A6B: A6 A6          LDA    A,Y
6A6D: 48             ASLA
6A6E: 37 20          PULU   Y
6A70: 10 AE A6       LDY    A,Y
6A73: 32 62          LEAS   $2,S
6A75: 39             RTS
6A76: 00 00          NEG    $00
6A78: 01 02 03       OIM    #$02;$03
6A7B: 03 03          COM    $03
6A7D: 03 04          COM    $04
6A7F: 04 04          LSR    $04
6A81: 04 00          LSR    $00
6A83: 00 00          NEG    $00
6A85: 00 00          NEG    $00
6A87: 00 00          NEG    $00
6A89: 00 00          NEG    $00
6A8B: 00 00          NEG    $00
6A8D: 00 00          NEG    $00
6A8F: 00 00          NEG    $00
6A91: 00 00          NEG    $00
6A93: 00 00          NEG    $00
6A95: 00 00          NEG    $00
6A97: 00 04          NEG    $04
6A99: 04 B6          LSR    $B6
6A9B: 0A 75          DEC    $75
6A9D: B1 0A 82       CMPA   $0A82
6AA0: 10 27 02 BD    LBEQ   $6D61
6AA4: BE 0A 76       LDX    $0A76
6AA7: 10 BE 0A 83    LDY    $0A83
6AAB: A6 88 1B       LDA    $1B,X
6AAE: A4 A8 1B       ANDA   $1B,Y
6AB1: 2B 15          BMI    $6AC8
6AB3: A6 88 1B       LDA    $1B,X
6AB6: 27 10          BEQ    $6AC8
6AB8: 81 07          CMPA   #$07
6ABA: 27 0C          BEQ    $6AC8
6ABC: A6 A8 1B       LDA    $1B,Y
6ABF: 27 07          BEQ    $6AC8
6AC1: 81 07          CMPA   #$07
6AC3: 27 03          BEQ    $6AC8
6AC5: 7E 6D 61       JMP    $6D61
6AC8: B6 0A 82       LDA    $0A82
6ACB: 81 01          CMPA   #$01
6ACD: 22 07          BHI    $6AD6
6ACF: A6 88 14       LDA    $14,X
6AD2: 10 2B 02 8B    LBMI   $6D61
6AD6: BE 0A 78       LDX    $0A78
6AD9: 10 BE 0A 85    LDY    $0A85
6ADD: A6 84          LDA    ,X
6ADF: A1 A4          CMPA   ,Y
6AE1: 10 2B 02 7C    LBMI   $6D61
6AE5: 26 06          BNE    $6AED
6AE7: 81 00          CMPA   #$00
6AE9: 10 27 02 74    LBEQ   $6D61
6AED: BE 0A 76       LDX    $0A76
6AF0: 10 BE 0A 83    LDY    $0A83
6AF4: EC A8 2A       LDD    $2A,Y
6AF7: 10 B3 0A 76    CMPD   $0A76
6AFB: 26 2C          BNE    $6B29
6AFD: AE A8 2A       LDX    $2A,Y
6B00: A6 88 1B       LDA    $1B,X
6B03: 84 7F          ANDA   #$7F
6B05: 81 00          CMPA   #$00
6B07: 27 20          BEQ    $6B29
6B09: 81 07          CMPA   #$07
6B0B: 26 0B          BNE    $6B18
6B0D: A6 88 1E       LDA    $1E,X
6B10: 81 07          CMPA   #$07
6B12: 27 15          BEQ    $6B29
6B14: 81 08          CMPA   #$08
6B16: 27 11          BEQ    $6B29
6B18: BE 0A 76       LDX    $0A76
6B1B: 10 BE 0A 83    LDY    $0A83
6B1F: A6 A8 29       LDA    $29,Y
6B22: A1 88 1D       CMPA   $1D,X
6B25: 10 27 02 38    LBEQ   $6D61
6B29: BE 0A 78       LDX    $0A78
6B2C: EC 04          LDD    $4,X
6B2E: FD 0A 7E       STD    $0A7E
6B31: BE 0A 85       LDX    $0A85
6B34: EC 02          LDD    $2,X
6B36: FD 0A 8D       STD    $0A8D
6B39: 10 83 77 96    CMPD   #$7796
6B3D: 10 27 02 20    LBEQ   $6D61
6B41: BE 0A 7E       LDX    $0A7E
6B44: A6 84          LDA    ,X
6B46: E6 02          LDB    $2,X
6B48: BE 0A 76       LDX    $0A76
6B4B: BD 6E 6F       JSR    $6E6F
6B4E: FD 0A 7A       STD    $0A7A
6B51: BE 0A 8D       LDX    $0A8D
6B54: A6 84          LDA    ,X
6B56: E6 02          LDB    $2,X
6B58: BE 0A 83       LDX    $0A83
6B5B: BD 6E 6F       JSR    $6E6F
6B5E: FD 0A 87       STD    $0A87
6B61: FC 0A 7A       LDD    $0A7A
6B64: 10 B3 0A 87    CMPD   $0A87
6B68: 25 0B          BCS    $6B75
6B6A: BE 0A 8D       LDX    $0A8D
6B6D: FC 0A 7A       LDD    $0A7A
6B70: B3 0A 87       SUBD   $0A87
6B73: 20 09          BRA    $6B7E
6B75: BE 0A 7E       LDX    $0A7E
6B78: FC 0A 87       LDD    $0A87
6B7B: B3 0A 7A       SUBD   $0A7A
6B7E: E1 02          CMPB   $2,X
6B80: 10 22 01 DD    LBHI   $6D61
6B84: BE 0A 76       LDX    $0A76
6B87: 10 BE 0A 7E    LDY    $0A7E
6B8B: 4F             CLRA
6B8C: E6 21          LDB    $1,Y
6B8E: E3 08          ADDD   $8,X
6B90: FD 0A 7C       STD    $0A7C
6B93: BE 0A 83       LDX    $0A83
6B96: 10 BE 0A 8D    LDY    $0A8D
6B9A: 4F             CLRA
6B9B: E6 21          LDB    $1,Y
6B9D: E3 08          ADDD   $8,X
6B9F: FD 0A 89       STD    $0A89
6BA2: FC 0A 7C       LDD    $0A7C
6BA5: 10 B3 0A 89    CMPD   $0A89
6BA9: 25 0B          BCS    $6BB6
6BAB: BE 0A 8D       LDX    $0A8D
6BAE: FC 0A 7C       LDD    $0A7C
6BB1: B3 0A 89       SUBD   $0A89
6BB4: 20 09          BRA    $6BBF
6BB6: BE 0A 7E       LDX    $0A7E
6BB9: FC 0A 89       LDD    $0A89
6BBC: B3 0A 7C       SUBD   $0A7C
6BBF: E1 03          CMPB   $3,X
6BC1: 10 22 01 9C    LBHI   $6D61
6BC5: 10 BE 0A 78    LDY    $0A78
6BC9: 10 AE 26       LDY    $6,Y
6BCC: 10 BF 0A 8F    STY    $0A8F
6BD0: BE 0A 83       LDX    $0A83
6BD3: A6 A4          LDA    ,Y
6BD5: 81 FD          CMPA   #$FD
6BD7: 10 27 01 86    LBEQ   $6D61
6BDB: 81 FC          CMPA   #$FC
6BDD: 27 1C          BEQ    $6BFB
6BDF: 81 FE          CMPA   #$FE
6BE1: 27 2E          BEQ    $6C11
6BE3: 81 FF          CMPA   #$FF
6BE5: 27 3C          BEQ    $6C23
6BE7: A6 A4          LDA    ,Y
6BE9: BD 6E A3       JSR    $6EA3
6BEC: 34 02          PSHS   A
6BEE: A6 01          LDA    $1,X
6BF0: BD 6E A3       JSR    $6EA3
6BF3: A1 E0          CMPA   ,S+
6BF5: 27 1A          BEQ    $6C11
6BF7: 31 22          LEAY   $2,Y
6BF9: 20 24          BRA    $6C1F
6BFB: 31 21          LEAY   $1,Y
6BFD: A6 A4          LDA    ,Y
6BFF: BD 6E A3       JSR    $6EA3
6C02: 34 02          PSHS   A
6C04: A6 01          LDA    $1,X
6C06: BD 6E A3       JSR    $6EA3
6C09: A1 E0          CMPA   ,S+
6C0B: 26 04          BNE    $6C11
6C0D: 31 21          LEAY   $1,Y
6C0F: 20 0E          BRA    $6C1F
6C11: 31 21          LEAY   $1,Y
6C13: A6 02          LDA    $2,X
6C15: 84 7F          ANDA   #$7F
6C17: A1 A4          CMPA   ,Y
6C19: 27 08          BEQ    $6C23
6C1B: 31 21          LEAY   $1,Y
6C1D: 20 00          BRA    $6C1F
6C1F: 31 24          LEAY   $4,Y
6C21: 20 B0          BRA    $6BD3
6C23: 31 21          LEAY   $1,Y
6C25: BE 0A 76       LDX    $0A76
6C28: A6 88 15       LDA    $15,X
6C2B: 88 04          EORA   #$04
6C2D: 84 04          ANDA   #$04
6C2F: 48             ASLA
6C30: 97 04          STA    $04
6C32: A6 03          LDA    $3,X
6C34: BE 0A 83       LDX    $0A83
6C37: A8 03          EORA   $3,X
6C39: 84 80          ANDA   #$80
6C3B: 26 02          BNE    $6C3F
6C3D: 31 22          LEAY   $2,Y
6C3F: A6 A0          LDA    ,Y+
6C41: 81 FF          CMPA   #$FF
6C43: 10 27 01 1A    LBEQ   $6D61
6C47: 81 FC          CMPA   #$FC
6C49: 27 10          BEQ    $6C5B
6C4B: 81 10          CMPA   #$10
6C4D: 10 24 01 10    LBCC   $6D61
6C51: A7 88 23       STA    $23,X
6C54: A6 A4          LDA    ,Y
6C56: A7 88 22       STA    $22,X
6C59: 20 3E          BRA    $6C99
6C5B: A6 A4          LDA    ,Y
6C5D: A7 88 22       STA    $22,X
6C60: 86 01          LDA    #$01
6C62: A7 88 23       STA    $23,X
6C65: A6 88 16       LDA    $16,X
6C68: 84 F9          ANDA   #$F9
6C6A: A7 88 16       STA    $16,X
6C6D: 86 10          LDA    #$10
6C6F: A7 88 25       STA    $25,X
6C72: 34 20          PSHS   Y
6C74: 10 AE 88 2D    LDY    $2D,X
6C78: A6 88 22       LDA    $22,X
6C7B: 84 01          ANDA   #$01
6C7D: 88 01          EORA   #$01
6C7F: A7 A8 22       STA    $22,Y
6C82: 86 01          LDA    #$01
6C84: A7 A8 1B       STA    $1B,Y
6C87: A6 A8 16       LDA    $16,Y
6C8A: 84 F9          ANDA   #$F9
6C8C: A7 A8 16       STA    $16,Y
6C8F: 86 10          LDA    #$10
6C91: A7 A8 25       STA    $25,Y
6C94: 35 20          PULS   Y
6C96: 7E 6D 2B       JMP    $6D2B
6C99: A6 88 23       LDA    $23,X
6C9C: 81 0C          CMPA   #$0C
6C9E: 27 0C          BEQ    $6CAC
6CA0: 81 09          CMPA   #$09
6CA2: 27 46          BEQ    $6CEA
6CA4: 81 FF          CMPA   #$FF
6CA6: 10 27 00 B7    LBEQ   $6D61
6CAA: 20 7F          BRA    $6D2B
6CAC: 10 BE 0A 76    LDY    $0A76
6CB0: E6 88 21       LDB    $21,X
6CB3: EA A8 21       ORB    $21,Y
6CB6: 27 06          BEQ    $6CBE
6CB8: 6F 88 23       CLR    $23,X
6CBB: 7E 6D 61       JMP    $6D61
6CBE: E6 01          LDB    $1,X
6CC0: C1 0A          CMPB   #$0A
6CC2: 10 27 00 9B    LBEQ   $6D61
6CC6: A7 88 1B       STA    $1B,X
6CC9: 8A 80          ORA    #$80
6CCB: A7 88 23       STA    $23,X
6CCE: 86 00          LDA    #$00
6CD0: A7 88 25       STA    $25,X
6CD3: FC 0A 76       LDD    $0A76
6CD6: ED 88 2D       STD    $2D,X
6CD9: 10 BE 0A 76    LDY    $0A76
6CDD: 86 06          LDA    #$06
6CDF: A7 A8 1B       STA    $1B,Y
6CE2: FC 0A 83       LDD    $0A83
6CE5: ED A8 2D       STD    $2D,Y
6CE8: 20 41          BRA    $6D2B
6CEA: 10 BE 0A 76    LDY    $0A76
6CEE: EC 24          LDD    $4,Y
6CF0: A3 04          SUBD   $4,X
6CF2: 24 04          BCC    $6CF8
6CF4: 86 80          LDA    #$80
6CF6: 20 01          BRA    $6CF9
6CF8: 4F             CLRA
6CF9: A8 23          EORA   $3,Y
6CFB: 84 80          ANDA   #$80
6CFD: 10 27 00 60    LBEQ   $6D61
6D01: A6 01          LDA    $1,X
6D03: 81 0A          CMPA   #$0A
6D05: 27 5A          BEQ    $6D61
6D07: 86 0A          LDA    #$0A
6D09: A7 88 1B       STA    $1B,X
6D0C: 8A 80          ORA    #$80
6D0E: A7 88 23       STA    $23,X
6D11: 86 00          LDA    #$00
6D13: A7 88 25       STA    $25,X
6D16: FC 0A 76       LDD    $0A76
6D19: ED 88 2D       STD    $2D,X
6D1C: 10 BE 0A 76    LDY    $0A76
6D20: 86 09          LDA    #$09
6D22: A7 A8 1B       STA    $1B,Y
6D25: FC 0A 83       LDD    $0A83
6D28: ED A8 2D       STD    $2D,Y
6D2B: 10 BE 0A 78    LDY    $0A78
6D2F: A6 21          LDA    $1,Y
6D31: A7 88 20       STA    $20,X
6D34: A6 88 15       LDA    $15,X
6D37: 84 F7          ANDA   #$F7
6D39: 9A 04          ORA    $04
6D3B: 8A 01          ORA    #$01
6D3D: A7 88 15       STA    $15,X
6D40: 10 BE 0A 76    LDY    $0A76
6D44: A6 A8 1D       LDA    $1D,Y
6D47: A7 88 29       STA    $29,X
6D4A: 10 AF 88 2A    STY    $2A,X
6D4E: B6 0A 75       LDA    $0A75
6D51: 81 01          CMPA   #$01
6D53: 23 08          BLS    $6D5D
6D55: 86 80          LDA    #$80
6D57: AA A8 14       ORA    $14,Y
6D5A: A7 A8 14       STA    $14,Y
6D5D: 1A 01          ORCC   #$01
6D5F: 20 02          BRA    $6D63
6D61: 1C FE          ANDCC  #$FE
6D63: 39             RTS
6D64: 34 10          PSHS   X
6D66: A6 88 1B       LDA    $1B,X
6D69: 84 7F          ANDA   #$7F
6D6B: 81 01          CMPA   #$01
6D6D: 26 20          BNE    $6D8F
6D6F: A6 88 22       LDA    $22,X
6D72: 84 0F          ANDA   #$0F
6D74: 81 06          CMPA   #$06
6D76: 26 17          BNE    $6D8F
6D78: A6 88 11       LDA    $11,X
6D7B: 2A 00          BPL    $6D7D
6D7D: A6 0F          LDA    $F,X
6D7F: 27 0E          BEQ    $6D8F
6D81: B6 09 F0       LDA    $09F0
6D84: 8B 02          ADDA   #$02
6D86: B7 0A 6B       STA    $0A6B
6D89: BF 0A 71       STX    $0A71
6D8C: BD 68 65       JSR    $6865
6D8F: 35 90          PULS   X,PC
6D91: 24 5D          BCC    $6DF0
6D93: BE 0A 76       LDX    $0A76
6D96: A6 88 1B       LDA    $1B,X
6D99: 84 7F          ANDA   #$7F
6D9B: 81 07          CMPA   #$07
6D9D: 26 52          BNE    $6DF1
6D9F: BD 6D F7       JSR    $6DF7
6DA2: BD 6E 0F       JSR    $6E0F
6DA5: 10 BE 0A 83    LDY    $0A83
6DA9: E6 A8 1B       LDB    $1B,Y
6DAC: C4 7F          ANDB   #$7F
6DAE: C1 0A          CMPB   #$0A
6DB0: 26 05          BNE    $6DB7
6DB2: A6 A8 22       LDA    $22,Y
6DB5: 20 14          BRA    $6DCB
6DB7: A6 88 1E       LDA    $1E,X
6DBA: 84 0F          ANDA   #$0F
6DBC: 81 02          CMPA   #$02
6DBE: 25 0B          BCS    $6DCB
6DC0: F6 0A 75       LDB    $0A75
6DC3: C1 02          CMPB   #$02
6DC5: 24 04          BCC    $6DCB
6DC7: 20 27          BRA    $6DF0
6DC9: 86 01          LDA    #$01
6DCB: 97 0F          STA    $0F
6DCD: BE 0A 83       LDX    $0A83
6DD0: A6 01          LDA    $1,X
6DD2: 84 3F          ANDA   #$3F
6DD4: 81 22          CMPA   #$22
6DD6: 25 02          BCS    $6DDA
6DD8: 80 17          SUBA   #$17
6DDA: 48             ASLA
6DDB: 9A 0F          ORA    $0F
6DDD: 10 8E 6E 3D    LDY    #$6E3D
6DE1: A6 A6          LDA    A,Y
6DE3: 27 0B          BEQ    $6DF0
6DE5: AB 88 25       ADDA   $25,X
6DE8: A7 88 25       STA    $25,X
6DEB: 86 40          LDA    #$40
6DED: 7E FD E2       JMP    $FDE2
6DF0: 39             RTS
6DF1: 86 80          LDA    #$80
6DF3: BD 44 CD       JSR    $44CD
6DF6: 39             RTS
6DF7: 10 8E 6E 57    LDY    #$6E57
6DFB: BE 0A 76       LDX    $0A76
6DFE: A6 88 1E       LDA    $1E,X
6E01: 2B 0B          BMI    $6E0E
6E03: 84 1F          ANDA   #$1F
6E05: A6 A6          LDA    A,Y
6E07: 81 00          CMPA   #$00
6E09: 27 03          BEQ    $6E0E
6E0B: BD 44 CD       JSR    $44CD
6E0E: 39             RTS
6E0F: B6 0A 75       LDA    $0A75
6E12: 81 01          CMPA   #$01
6E14: 22 0E          BHI    $6E24
6E16: A6 88 1E       LDA    $1E,X
6E19: 84 1F          ANDA   #$1F
6E1B: 10 8E 6E 25    LDY    #$6E25
6E1F: A6 A6          LDA    A,Y
6E21: BD 42 D3       JSR    $42D3
6E24: 39             RTS
6E25: 05 0A 0A       EIM    #$0A;$0A
6E28: 00 00          NEG    $00
6E2A: 2D 0B          BLT    $6E37
6E2C: 0C 0C          INC    $0C
6E2E: 00 00          NEG    $00
6E30: 0B 00 00       TIM    #$00;$00
6E33: 0B 0B 00       TIM    #$0B;$00
6E36: 00 00          NEG    $00
6E38: 0C 00          INC    $00
6E3A: 00 00          NEG    $00
6E3C: 00 02          NEG    $02
6E3E: 02 02 02       AIM    #$02;$02
6E41: 02 02 02       AIM    #$02;$02
6E44: 02 02 02       AIM    #$02;$02
6E47: 02 02 02       AIM    #$02;$02
6E4A: 02 02 02       AIM    #$02;$02
6E4D: 02 02 02       AIM    #$02;$02
6E50: 02 02 02       AIM    #$02;$02
6E53: 02 02 02       AIM    #$02;$02
6E56: 02 80 81       AIM    #$80;$81
6E59: 81 81          CMPA   #$81
6E5B: 80 80          SUBA   #$80
6E5D: 81 80          CMPA   #$80
6E5F: 81 00          CMPA   #$00
6E61: 00 80          NEG    $80
6E63: 00 00          NEG    $00
6E65: 00 00          NEG    $00
6E67: 00 00          NEG    $00
6E69: 81 81          CMPA   #$81
6E6B: 00 81          NEG    $81
6E6D: 00 00          NEG    $00
6E6F: 32 7A          LEAS   -$6,S
6E71: 36 04          PSHU   B
6E73: 1F 89          TFR    A,B
6E75: 1D             SEX
6E76: ED E4          STD    ,S
6E78: 37 04          PULU   B
6E7A: 6F 62          CLR    $2,S
6E7C: E7 63          STB    $3,S
6E7E: EC 04          LDD    $4,X
6E80: ED 64          STD    $4,S
6E82: A6 03          LDA    $3,X
6E84: 2A 10          BPL    $6E96
6E86: EC 62          LDD    $2,S
6E88: BD 6E 9D       JSR    $6E9D
6E8B: E3 64          ADDD   $4,S
6E8D: ED 64          STD    $4,S
6E8F: EC E4          LDD    ,S
6E91: BD 6E 9D       JSR    $6E9D
6E94: ED E4          STD    ,S
6E96: EC 64          LDD    $4,S
6E98: E3 E4          ADDD   ,S
6E9A: 32 66          LEAS   $6,S
6E9C: 39             RTS
6E9D: 43             COMA
6E9E: 53             COMB
6E9F: C3 00 01       ADDD   #$0001
6EA2: 39             RTS
6EA3: 84 3F          ANDA   #$3F
6EA5: 81 01          CMPA   #$01
6EA7: 26 01          BNE    $6EAA
6EA9: 4F             CLRA
6EAA: 39             RTS
6EAB: 34 30          PSHS   Y,X
6EAD: 84 7F          ANDA   #$7F
6EAF: 48             ASLA
6EB0: 58             ASLB
6EB1: 8E 6E E0       LDX    #$6EE0
6EB4: AE 86          LDX    A,X
6EB6: EC 85          LDD    B,X
6EB8: 35 B0          PULS   X,Y,PC
6EBA: 6E D4          JMP    [,U]
6EBC: 6E D4          JMP    [,U]
6EBE: 6E D4          JMP    [,U]
6EC0: 6E D4          JMP    [,U]
6EC2: 6E D4          JMP    [,U]
6EC4: 6E D4          JMP    [,U]
6EC6: 6E D4          JMP    [,U]
6EC8: 6E D4          JMP    [,U]
6ECA: 6E D4          JMP    [,U]
6ECC: 6E D4          JMP    [,U]
6ECE: 6E D4          JMP    [,U]
6ED0: 6E D4          JMP    [,U]
6ED2: 6E D4          JMP    [,U]
6ED4: 15             FCB    $15
6ED5: 12             NOP
6ED6: 1C 20          ANDCC  #$20
6ED8: 44             LSRA
6ED9: 1E 66          EXG    W,W
6EDB: 2D 36          BLT    $6F13
6EDD: 39             RTS
6EDE: 57             ASRB
6EDF: FF 6F F8       STU    $6FF8
6EE2: 6F F8 6F       CLR    [$6F,S]
6EE5: F8 6F F8       EORB   $6FF8
6EE8: 6F F8 6F       CLR    [$6F,S]
6EEB: F8 6F F8       EORB   $6FF8
6EEE: 6F F8 6F       CLR    [$6F,S]
6EF1: DE 6F          LDU    $6F
6EF3: DE 6F          LDU    $6F
6EF5: DE 6F          LDU    $6F
6EF7: DE 6F          LDU    $6F
6EF9: DE 6F          LDU    $6F
6EFB: DE 6F          LDU    $6F
6EFD: DE 70          LDU    $70
6EFF: 4F             CLRA
6F00: 6F DE          CLR    [W,U]
6F02: 70 79 70       NEG    $7970
6F05: 95 70          BITA   $70
6F07: A1 71          CMPA   -$F,S
6F09: 23 71          BLS    $6F7C
6F0B: 2F 71          BLE    $6F7E
6F0D: 3B             RTI
6F0E: 71 47 71 63    OIM    #$47,$7163
6F12: 71 7F 71 E3    OIM    #$7F,$71E3
6F16: 71 F7 72 0B    OIM    #$F7,$720B
6F1A: 72 1F 72 41    AIM    #$1F,$7241
6F1E: 72 55 72 7B    AIM    #$55,$727B
6F22: 72 97 72 B1    AIM    #$97,$72B1
6F26: 72 C5 72 DF    AIM    #$C5,$72DF
6F2A: 72 EB 72 FF    AIM    #$EB,$72FF
6F2E: 73 28 73       COM    $2873
6F31: 44             LSRA
6F32: 73 66 6F       COM    $666F
6F35: DE 6F          LDU    $6F
6F37: DE 73          LDU    $73
6F39: 7A 73 9E       DEC    $739E
6F3C: 73 B8 73       COM    $B873
6F3F: E8 74          EORB   -$C,S
6F41: 0A 74          DEC    $74
6F43: 1E 74          EXG    V,S
6F45: 32 74          LEAS   -$C,S
6F47: 46             RORA
6F48: 74 5A 74       LSR    $5A74
6F4B: 6E 74          JMP    -$C,S
6F4D: 82 74          SBCA   #$74
6F4F: 9E 74          LDX    $74
6F51: C0 74          SUBB   #$74
6F53: D4 74          ANDB   $74
6F55: E8 75          EORB   -$B,S
6F57: 10 6F          FCB    $10,$6F
6F59: DE 6F          LDS    $6F
6F5B: DE 6F          LDU    $6F
6F5D: DE 6F          LDU    $6F
6F5F: DE 6F          LDU    $6F
6F61: DE 75          LDU    $75
6F63: 24 6F          BCC    $6FD4
6F65: DE 75          LDU    $75
6F67: 38             FCB    $38
6F68: 75 54 75 70    EIM    #$54,$7570
6F6C: 75 C6 75 E8    EIM    #$C6,$75E8
6F70: 76 04 76       ROR    $0476
6F73: 20 76          BRA    $6FEB
6F75: 3C 76          CWAI   #$76
6F77: 58             ASLB
6F78: 76 6C 76       ROR    $6C76
6F7B: 80 76          SUBA   #$76
6F7D: 94 76          ANDA   $76
6F7F: A8 76          EORA   -$A,S
6F81: BC 76 D0       CMPX   $76D0
6F84: 76 E4 76       ROR    $E476
6F87: F8 76 F8       EORB   $76F8
6F8A: 76 F8 76       ROR    $F876
6F8D: F8 6F DE       EORB   $6FDE
6F90: 6F DE          CLR    [W,U]
6F92: 77 30 77       ASR    $3077
6F95: 44             LSRA
6F96: 77 50 77       ASR    $5077
6F99: 5C             INCB
6F9A: 6F DE          CLR    [W,U]
6F9C: 6F DE          CLR    [W,U]
6F9E: 77 30 77       ASR    $3077
6FA1: 30 77          LEAX   -$9,S
6FA3: 30 77          LEAX   -$9,S
6FA5: 30 77          LEAX   -$9,S
6FA7: 7C 6F DE       INC    $6FDE
6FAA: 6F DE          CLR    [W,U]
6FAC: 6F DE          CLR    [W,U]
6FAE: 6F DE          CLR    [W,U]
6FB0: 6F DE          CLR    [W,U]
6FB2: 6F DE          CLR    [W,U]
6FB4: 6F DE          CLR    [W,U]
6FB6: 6F DE          CLR    [W,U]
6FB8: 6F DE          CLR    [W,U]
6FBA: 6F DE          CLR    [W,U]
6FBC: 6F DE          CLR    [W,U]
6FBE: 6F DE          CLR    [W,U]
6FC0: 6F DE          CLR    [W,U]
6FC2: 6F DE          CLR    [W,U]
6FC4: 6F DE          CLR    [W,U]
6FC6: 6F DE          CLR    [W,U]
6FC8: 6F DE          CLR    [W,U]
6FCA: 6F DE          CLR    [W,U]
6FCC: 6F DE          CLR    [W,U]
6FCE: 6F DE          CLR    [W,U]
6FD0: 6F DE          CLR    [W,U]
6FD2: 6F DE          CLR    [W,U]
6FD4: 6F DE          CLR    [W,U]
6FD6: 6F DE          CLR    [W,U]
6FD8: 6F DE          CLR    [W,U]
6FDA: 6F DE          CLR    [W,U]
6FDC: 6F DE          CLR    [W,U]
6FDE: 6F EA          CLR    F,S
6FE0: 6F EA          CLR    F,S
6FE2: 6F EA          CLR    F,S
6FE4: 6F EA          CLR    F,S
6FE6: 6F EA          CLR    F,S
6FE8: 6F EA          CLR    F,S
6FEA: 00 00          NEG    $00
6FEC: 77 96 78       ASR    $9678
6FEF: 4A             DECA
6FF0: 6F F2          CLR    Illegal Postbyte
6FF2: FF FF FF       STU    $FFFF
6FF5: FF FF FD       STU    $FFFD
6FF8: 70 04 70       NEG    $0470
6FFB: 0C 70          INC    $70
6FFD: 14             SEXW
6FFE: 70 1C 70       NEG    $1C70
7001: 14             SEXW
7002: 6F EA          CLR    F,S
7004: 01 00 77       OIM    #$00;$77
7007: DA 78          ORB    $78
7009: 4E             FCB    $4E
700A: 70 24 00       NEG    $2400
700D: 00 78          NEG    $78
700F: 2E 78          BGT    $7089
7011: 4A             DECA
7012: 6F F2          CLR    Illegal Postbyte
7014: 00 00          NEG    $00
7016: 77 DA 78       ASR    $DA78
7019: 4A             DECA
701A: 6F F2          CLR    Illegal Postbyte
701C: 00 00          NEG    $00
701E: 78 12 78       ASL    $1278
7021: 4A             DECA
7022: 6F F2          CLR    Illegal Postbyte
7024: 00 0F          NEG    $0F
7026: 0C 00          INC    $00
7028: FF FF 02       STU    $FF02
702B: 0F 0C          CLR    $0C
702D: 00 FF          NEG    $FF
702F: FF 03 0F       STU    $030F
7032: 0C 00          INC    $00
7034: FF FF 08       STU    $FF08
7037: 0F 0C          CLR    $0C
7039: 00 FF          NEG    $FF
703B: FF 09 0F       STU    $090F
703E: 0C 00          INC    $00
7040: FF FF 22       STU    $FF22
7043: 0F 0C          CLR    $0C
7045: 00 FF          NEG    $FF
7047: FF 23 0F       STU    $230F
704A: 0C 00          INC    $00
704C: FF FF FD       STU    $FFFD
704F: 70 5B 70       NEG    $5B70
7052: 63 70          COM    -$10,S
7054: 63 70          COM    -$10,S
7056: 6B 70 63       TIM    #$70;$3,S
7059: 6F EA          CLR    F,S
705B: 00 00          NEG    $00
705D: 78 32 78       ASL    $3278
7060: 4A             DECA
7061: 6F F2          CLR    Illegal Postbyte
7063: 00 00          NEG    $00
7065: 77 D6 78       ASR    $D678
7068: 4A             DECA
7069: 6F F2          CLR    Illegal Postbyte
706B: 00 00          NEG    $00
706D: 78 1A 78       ASL    $1A78
7070: 4A             DECA
7071: 6F F2          CLR    Illegal Postbyte
7073: FF 0C FF       STU    $0CFF
7076: FF FF FD       STU    $FFFD
7079: 70 85 6F       NEG    $856F
707C: EA 70          ORB    -$10,S
707E: 85 70          BITA   #$70
7080: 8D 70          BSR    $70F2
7082: 85 6F          BITA   #$6F
7084: EA 00          ORB    $0,X
7086: 00 77          NEG    $77
7088: CA 78          ORB    #$78
708A: 4A             DECA
708B: 70 73 00       NEG    $7300
708E: 00 78          NEG    $78
7090: 06 78          ROR    $78
7092: 4A             DECA
7093: 70 73 70       NEG    $7370
7096: 85 6F          BITA   #$6F
7098: EA 70          ORB    -$10,S
709A: 85 70          BITA   #$70
709C: 8D 70          BSR    $710E
709E: 85 6F          BITA   #$6F
70A0: EA 70          ORB    -$10,S
70A2: AD 6F          JSR    $F,S
70A4: EA 70          ORB    -$10,S
70A6: AD 70          JSR    -$10,S
70A8: B5 70 AD       BITA   $70AD
70AB: 6F EA          CLR    F,S
70AD: 01 02 77       OIM    #$02;$77
70B0: CA 78          ORB    #$78
70B2: 52             FCB    $52
70B3: 70 BD 01       NEG    $BD01
70B6: 02 78 06       AIM    #$78;$06
70B9: 78 8A 70       ASL    $8A70
70BC: BD FE 22       JSR    $FE22
70BF: 01 00 01       OIM    #$00;$01
70C2: 00 FE          NEG    $FE
70C4: 23 01          BLS    $70C7
70C6: 00 01          NEG    $01
70C8: 00 FE          NEG    $FE
70CA: 24 01          BCC    $70CD
70CC: 00 01          NEG    $01
70CE: 00 FE          NEG    $FE
70D0: 25 01          BCS    $70D3
70D2: 00 01          NEG    $01
70D4: 00 FE          NEG    $FE
70D6: 26 01          BNE    $70D9
70D8: 00 01          NEG    $01
70DA: 00 00          NEG    $00
70DC: 5B             FCB    $5B
70DD: 01 00 01       OIM    #$00;$01
70E0: 00 03          NEG    $03
70E2: 5B             FCB    $5B
70E3: 01 00 01       OIM    #$00;$01
70E6: 00 08          NEG    $08
70E8: 5B             FCB    $5B
70E9: 01 00 01       OIM    #$00;$01
70EC: 00 09          NEG    $09
70EE: 5B             FCB    $5B
70EF: 01 00 01       OIM    #$00;$01
70F2: 00 22          NEG    $22
70F4: 5B             FCB    $5B
70F5: 01 00 01       OIM    #$00;$01
70F8: 00 23          NEG    $23
70FA: 5B             FCB    $5B
70FB: 01 00 01       OIM    #$00;$01
70FE: 00 03          NEG    $03
7100: 59             ROLB
7101: 01 00 01       OIM    #$00;$01
7104: 00 08          NEG    $08
7106: 59             ROLB
7107: 01 00 01       OIM    #$00;$01
710A: 00 09          NEG    $09
710C: 59             ROLB
710D: 01 00 01       OIM    #$00;$01
7110: 00 22          NEG    $22
7112: 59             ROLB
7113: 01 00 01       OIM    #$00;$01
7116: 00 23          NEG    $23
7118: 59             ROLB
7119: 01 00 01       OIM    #$00;$01
711C: 00 FF          NEG    $FF
711E: 02 00 03       AIM    #$00;$03
7121: 01 FD 70       OIM    #$FD;$70
7124: 85 6F          BITA   #$6F
7126: EA 70          ORB    -$10,S
7128: 85 70          BITA   #$70
712A: 8D 70          BSR    $719C
712C: 85 6F          BITA   #$6F
712E: EA 70          ORB    -$10,S
7130: 85 6F          BITA   #$6F
7132: EA 70          ORB    -$10,S
7134: 85 70          BITA   #$70
7136: 8D 70          BSR    $71A8
7138: 85 6F          BITA   #$6F
713A: EA 70          ORB    -$10,S
713C: AD 6F          JSR    $F,S
713E: EA 70          ORB    -$10,S
7140: AD 70          JSR    -$10,S
7142: B5 70 AD       BITA   $70AD
7145: 6F EA          CLR    F,S
7147: 71 53 71 5B    OIM    #$53,$715B
714B: 71 53 6F EA    OIM    #$53,$6FEA
714F: 71 53 6F EA    OIM    #$53,$6FEA
7153: 00 00          NEG    $00
7155: 77 9E 78       ASR    $9E78
7158: 4A             DECA
7159: 6F F2          CLR    Illegal Postbyte
715B: 00 00          NEG    $00
715D: 78 2E 78       ASL    $2E78
7160: 4A             DECA
7161: 6F F2          CLR    Illegal Postbyte
7163: 71 6F 71 77    OIM    #$6F,$7177
7167: 71 6F 6F EA    OIM    #$6F,$6FEA
716B: 71 6F 6F EA    OIM    #$6F,$6FEA
716F: 00 00          NEG    $00
7171: 77 CE 78       ASR    $CE78
7174: 4A             DECA
7175: 6F F2          CLR    Illegal Postbyte
7177: 00 00          NEG    $00
7179: 78 3A 78       ASL    $3A78
717C: 4A             DECA
717D: 6F F2          CLR    Illegal Postbyte
717F: 71 8B 6F EA    OIM    #$8B,$6FEA
7183: 71 93 6F EA    OIM    #$93,$6FEA
7187: 71 93 6F EA    OIM    #$93,$6FEA
718B: 01 03 77       OIM    #$03;$77
718E: EE 78          LDU    -$8,S
7190: 56             RORB
7191: 71 A1 01 03    OIM    #$A1,$0103
7195: 77 EE 78       ASR    $EE78
7198: 56             RORB
7199: 71 9B FF 01    OIM    #$9B,$FF01
719D: 00 01          NEG    $01
719F: 01 FD 03       OIM    #$FD;$03
71A2: 59             ROLB
71A3: FC 00 FC       LDD    >$00FC
71A6: 01 08 59       OIM    #$08;$59
71A9: FC 00 FC       LDD    >$00FC
71AC: 01 09 59       OIM    #$09;$59
71AF: FC 00 FC       LDD    >$00FC
71B2: 01 22 59       OIM    #$22;$59
71B5: FC 00 FC       LDD    >$00FC
71B8: 01 23 59       OIM    #$23;$59
71BB: FC 00 FC       LDD    >$00FC
71BE: 01 03 5B       OIM    #$03;$5B
71C1: FC 00 FC       LDD    >$00FC
71C4: 01 08 5B       OIM    #$08;$5B
71C7: FC 00 FC       LDD    >$00FC
71CA: 01 09 5B       OIM    #$09;$5B
71CD: FC 00 FC       LDD    >$00FC
71D0: 01 22 5B       OIM    #$22;$5B
71D3: FC 00 FC       LDD    >$00FC
71D6: 01 23 5B       OIM    #$23;$5B
71D9: FC 00 FC       LDD    >$00FC
71DC: 01 FF 01       OIM    #$FF;$01
71DF: 00 01          NEG    $01
71E1: 01 FD 71       OIM    #$FD;$71
71E4: EF 6F          STU    $F,S
71E6: EA 71          ORB    -$F,S
71E8: EF 6F          STU    $F,S
71EA: EA 6F          ORB    $F,S
71EC: EA 6F          ORB    $F,S
71EE: EA 01          ORB    $1,X
71F0: 00 77          NEG    $77
71F2: D2 78          SBCB   $78
71F4: 4A             DECA
71F5: 6F F2          CLR    Illegal Postbyte
71F7: 72 03 6F EA    AIM    #$03,$6FEA
71FB: 72 03 6F EA    AIM    #$03,$6FEA
71FF: 6F EA          CLR    F,S
7201: 6F EA          CLR    F,S
7203: 01 03 77       OIM    #$03;$77
7206: A2 78          SBCA   -$8,S
7208: 5A             DECB
7209: 71 9B 72 17    OIM    #$9B,$7217
720D: 6F EA          CLR    F,S
720F: 72 17 6F EA    AIM    #$17,$6FEA
7213: 6F EA          CLR    F,S
7215: 6F EA          CLR    F,S
7217: 00 00          NEG    $00
7219: 77 D6 78       ASR    $D678
721C: 4A             DECA
721D: 6F F2          CLR    Illegal Postbyte
721F: 72 2B 72 33    AIM    #$2B,$7233
7223: 72 2B 6F EA    AIM    #$2B,$6FEA
7227: 6F EA          CLR    F,S
7229: 6F EA          CLR    F,S
722B: 01 05 77       OIM    #$05;$77
722E: DA 78          ORB    $78
7230: 5E             FCB    $5E
7231: 72 3B 00 00    AIM    #$3B,$0000
7235: 78 2E 78       ASL    $2E78
7238: 4A             DECA
7239: 6F F2          CLR    Illegal Postbyte
723B: FF 01 01       STU    $0101
723E: 01 01 FD       OIM    #$01;$FD
7241: 72 4D 72 33    AIM    #$4D,$7233
7245: 72 4D 6F EA    AIM    #$4D,$6FEA
7249: 6F EA          CLR    F,S
724B: 6F EA          CLR    F,S
724D: 00 00          NEG    $00
724F: 77 DE 78       ASR    $DE78
7252: 4A             DECA
7253: 6F F2          CLR    Illegal Postbyte
7255: 72 61 72 33    AIM    #$61,$7233
7259: 72 61 6F EA    AIM    #$61,$6FEA
725D: 6F EA          CLR    F,S
725F: 6F EA          CLR    F,S
7261: 01 03 77       OIM    #$03;$77
7264: DE 78          LDU    $78
7266: 62 72 69       AIM    #$72;$9,S
7269: FE 59 01       LDU    $5901
726C: 01 FF 00       OIM    #$FF;$00
726F: FE 5B 01       LDU    $5B01
7272: 01 FF 00       OIM    #$FF;$00
7275: FF 03 00       STU    $0300
7278: 03 01          COM    $01
727A: FD 72 87       STD    $7287
727D: 72 8F 72 87    AIM    #$8F,$7287
7281: 6F EA          CLR    F,S
7283: 6F EA          CLR    F,S
7285: 6F EA          CLR    F,S
7287: 00 00          NEG    $00
7289: 77 C2 78       ASR    $C278
728C: 4A             DECA
728D: 6F F2          CLR    Illegal Postbyte
728F: 00 00          NEG    $00
7291: 78 3E 78       ASL    $3E78
7294: 4A             DECA
7295: 6F F2          CLR    Illegal Postbyte
7297: 72 A3 72 33    AIM    #$A3,$7233
729B: 72 A3 6F EA    AIM    #$A3,$6FEA
729F: 6F EA          CLR    F,S
72A1: 6F EA          CLR    F,S
72A3: 01 01 77       OIM    #$01;$77
72A6: D6 78          LDB    $78
72A8: 66 72          ROR    -$E,S
72AA: AB FF 03 00    ADDA   [$0300]
72AE: 03 01          COM    $01
72B0: FD 72 BD       STD    $72BD
72B3: 72 33 72 BD    AIM    #$33,$72BD
72B7: 6F EA          CLR    F,S
72B9: 72 BD 6F EA    AIM    #$BD,$6FEA
72BD: 00 00          NEG    $00
72BF: 77 DA 78       ASR    $DA78
72C2: 4A             DECA
72C3: 6F F2          CLR    Illegal Postbyte
72C5: 72 BD 72 D1    AIM    #$BD,$72D1
72C9: 72 BD 6F EA    AIM    #$BD,$6FEA
72CD: 72 BD 6F EA    AIM    #$BD,$6FEA
72D1: 01 01 78       OIM    #$01;$78
72D4: 2E 78          BGT    $734E
72D6: 96 72          LDA    $72
72D8: D9 FF          ADCB   $FF
72DA: 01 00 01       OIM    #$00;$01
72DD: 01 FD 72       OIM    #$FD;$72
72E0: BD 72 33       JSR    $7233
72E3: 72 BD 6F EA    AIM    #$BD,$6FEA
72E7: 72 BD 6F EA    AIM    #$BD,$6FEA
72EB: 72 F7 72 33    AIM    #$F7,$7233
72EF: 72 F7 6F EA    AIM    #$F7,$6FEA
72F3: 72 F7 6F EA    AIM    #$F7,$6FEA
72F7: 00 00          NEG    $00
72F9: 77 A6 78       ASR    $A678
72FC: 4A             DECA
72FD: 6F F2          CLR    Illegal Postbyte
72FF: 73 0B 73       COM    $0B73
7302: 13             SYNC
7303: 73 0B 6F       COM    $0B6F
7306: EA 73          ORB    -$D,S
7308: 0B 6F EA       TIM    #$6F;$EA
730B: 00 00          NEG    $00
730D: 77 AA 78       ASR    $AA78
7310: 4A             DECA
7311: 6F F2          CLR    Illegal Postbyte
7313: 01 00 78       OIM    #$00;$78
7316: 2E 78          BGT    $7390
7318: 9A 73          ORA    $73
731A: 1B             FCB    $1B
731B: 00 1F          NEG    $1F
731D: 01 09 FF       OIM    #$09;$FF
7320: FF 00 3A       STU    >$003A
7323: 01 09 FF       OIM    #$09;$FF
7326: FF FD 73       STU    $FD73
7329: 34 73          PSHS   U,Y,X,A,CC
732B: 3C 73          CWAI   #$73
732D: 34 6F          PSHS   U,Y,DP,D,CC
732F: EA 73          ORB    -$D,S
7331: 34 6F          PSHS   U,Y,DP,D,CC
7333: EA 00          ORB    $0,X
7335: 00 77          NEG    $77
7337: D6 78          LDB    $78
7339: 4A             DECA
733A: 6F F2          CLR    Illegal Postbyte
733C: 00 00          NEG    $00
733E: 78 42 78       ASL    $4278
7341: 4A             DECA
7342: 6F F2          CLR    Illegal Postbyte
7344: 73 50 73       COM    $5073
7347: 58             ASLB
7348: 73 50 6F       COM    $506F
734B: EA 73          ORB    -$D,S
734D: 50             NEGB
734E: 6F EA          CLR    F,S
7350: 00 00          NEG    $00
7352: 77 D6 78       ASR    $D678
7355: 4A             DECA
7356: 6F F2          CLR    Illegal Postbyte
7358: 01 04 78       OIM    #$04;$78
735B: 46             RORA
735C: 78 9E 73       ASL    $9E73
735F: 60 FF 01 00    NEG    [$0100]
7363: 01 01 FD       OIM    #$01;$FD
7366: 73 72 6F       COM    $726F
7369: EA 73          ORB    -$D,S
736B: 72 6F EA 73    AIM    #$6F,$EA73
736F: 72 6F EA 00    AIM    #$6F,$EA00
7373: 00 77          NEG    $77
7375: D6 78          LDB    $78
7377: 4A             DECA
7378: 6F F2          CLR    Illegal Postbyte
737A: 73 86 6F       COM    $866F
737D: EA 73          ORB    -$D,S
737F: 86 73          LDA    #$73
7381: 8E 73 96       LDX    #$7396
7384: 6F EA          CLR    F,S
7386: 00 00          NEG    $00
7388: 77 D6 78       ASR    $D678
738B: 4A             DECA
738C: 6F F2          CLR    Illegal Postbyte
738E: 00 00          NEG    $00
7390: 78 22 78       ASL    $2278
7393: 4A             DECA
7394: 6F F2          CLR    Illegal Postbyte
7396: 00 00          NEG    $00
7398: 78 2A 78       ASL    $2A78
739B: 4A             DECA
739C: 6F F2          CLR    Illegal Postbyte
739E: 73 AA 6F       COM    $AA6F
73A1: EA 73          ORB    -$D,S
73A3: AA 73          ORA    -$D,S
73A5: 8E 73 96       LDX    #$7396
73A8: 6F EA          CLR    F,S
73AA: 01 06 77       OIM    #$06;$77
73AD: B2 78 6E       SBCA   $786E
73B0: 73 B2 FF       COM    $B2FF
73B3: 01 00 01       OIM    #$00;$01
73B6: 01 FD 73       OIM    #$FD;$73
73B9: C4 6F          ANDB   #$6F
73BB: EA 73          ORB    -$D,S
73BD: C4 73          ANDB   #$73
73BF: CC 73 D4       LDD    #$73D4
73C2: 6F EA          CLR    F,S
73C4: 00 00          NEG    $00
73C6: 77 DA 78       ASR    $DA78
73C9: 4A             DECA
73CA: 6F F2          CLR    Illegal Postbyte
73CC: 01 01 78       OIM    #$01;$78
73CF: 22 78          BHI    $7449
73D1: 86 73          LDA    #$73
73D3: DC 01          LDD    $01
73D5: 01 78 2A       OIM    #$78;$2A
73D8: 78 92 73       ASL    $9273
73DB: E2 FF 01 00    SBCB   [$0100]
73DF: 01 01 FD       OIM    #$01;$FD
73E2: FF 03 00       STU    $0300
73E5: 01 01 FD       OIM    #$01;$FD
73E8: 73 F4 6F       COM    $F46F
73EB: EA 73          ORB    -$D,S
73ED: F4 6F EA       ANDB   $6FEA
73F0: 73 FC 6F       COM    $FC6F
73F3: EA 01          ORB    $1,X
73F5: 01 77 D6       OIM    #$77;$D6
73F8: 78 82 74       ASL    $8274
73FB: 04 00          LSR    $00
73FD: 00 77          NEG    $77
73FF: D6 78          LDB    $78
7401: 4A             DECA
7402: 6F F2          CLR    Illegal Postbyte
7404: FF 03 00       STU    $0300
7407: 01 01 FD       OIM    #$01;$FD
740A: 74 16 6F       LSR    $166F
740D: EA 74          ORB    -$C,S
740F: 16 6F EA       LBRA   $E3FC
7412: 74 16 6F       LSR    $166F
7415: EA 00          ORB    $0,X
7417: 00 77          NEG    $77
7419: A2 78          SBCA   -$8,S
741B: 4A             DECA
741C: 6F F2          CLR    Illegal Postbyte
741E: 74 2A 6F       LSR    $2A6F
7421: EA 74          ORB    -$C,S
7423: 2A 6F          BPL    $7494
7425: EA 74          ORB    -$C,S
7427: 2A 6F          BPL    $7498
7429: EA 00          ORB    $0,X
742B: 00 77          NEG    $77
742D: D2 78          SBCB   $78
742F: 4A             DECA
7430: 6F F2          CLR    Illegal Postbyte
7432: 74 3E 6F       LSR    $3E6F
7435: EA 74          ORB    -$C,S
7437: 3E             FCB    $3E
7438: 6F EA          CLR    F,S
743A: 74 3E 6F       LSR    $3E6F
743D: EA 00          ORB    $0,X
743F: 00 77          NEG    $77
7441: A6 78          LDA    -$8,S
7443: 4A             DECA
7444: 6F F2          CLR    Illegal Postbyte
7446: 74 52 6F       LSR    $526F
7449: EA 74          ORB    -$C,S
744B: 52             FCB    $52
744C: 6F EA          CLR    F,S
744E: 74 52 6F       LSR    $526F
7451: EA 00          ORB    $0,X
7453: 00 77          NEG    $77
7455: DA 78          ORB    $78
7457: 4A             DECA
7458: 6F F2          CLR    Illegal Postbyte
745A: 6F EA          CLR    F,S
745C: 6F EA          CLR    F,S
745E: 74 66 6F       LSR    $666F
7461: EA 6F          ORB    $F,S
7463: EA 6F          ORB    $F,S
7465: EA 00          ORB    $0,X
7467: 00 77          NEG    $77
7469: FE 78 4A       LDU    $784A
746C: 6F F2          CLR    Illegal Postbyte
746E: 6F EA          CLR    F,S
7470: 6F EA          CLR    F,S
7472: 6F EA          CLR    F,S
7474: 74 7A 6F       LSR    $7A6F
7477: EA 6F          ORB    $F,S
7479: EA 00          ORB    $0,X
747B: 00 78          NEG    $78
747D: 12             NOP
747E: 78 4A 6F       ASL    $4A6F
7481: F2 74 8E       SBCB   $748E
7484: 6F EA          CLR    F,S
7486: 74 8E 74       LSR    $8E74
7489: 96 6F          LDA    $6F
748B: EA 6F          ORB    $F,S
748D: EA 00          ORB    $0,X
748F: 00 77          NEG    $77
7491: B6 78 4A       LDA    $784A
7494: 6F F2          CLR    Illegal Postbyte
7496: 00 00          NEG    $00
7498: 78 12 78       ASL    $1278
749B: 4A             DECA
749C: 6F F2          CLR    Illegal Postbyte
749E: 74 AA 6F       LSR    $AA6F
74A1: EA 74          ORB    -$C,S
74A3: AA 74          ORA    -$C,S
74A5: B2 6F EA       SBCA   $6FEA
74A8: 6F EA          CLR    F,S
74AA: 01 03 77       OIM    #$03;$77
74AD: B6 78 72       LDA    $7872
74B0: 74 BA 00       LSR    $BA00
74B3: 00 78          NEG    $78
74B5: 12             NOP
74B6: 78 4A 6F       ASL    $4A6F
74B9: F2 FF 01       SBCB   $FF01
74BC: 00 01          NEG    $01
74BE: 01 FD 74       OIM    #$FD;$74
74C1: CC 6F EA       LDD    #$6FEA
74C4: 74 CC 6F       LSR    $CC6F
74C7: EA 6F          ORB    $F,S
74C9: EA 6F          ORB    $F,S
74CB: EA 00          ORB    $0,X
74CD: 00 77          NEG    $77
74CF: D2 78          SBCB   $78
74D1: 4A             DECA
74D2: 6F F2          CLR    Illegal Postbyte
74D4: 74 E0 6F       LSR    $E06F
74D7: EA 74          ORB    -$C,S
74D9: E0 6F          SUBB   $F,S
74DB: EA 6F          ORB    $F,S
74DD: EA 6F          ORB    $F,S
74DF: EA 00          ORB    $0,X
74E1: 00 77          NEG    $77
74E3: F2 78 4A       SBCB   $784A
74E6: 6F F2          CLR    Illegal Postbyte
74E8: 74 F4 6F       LSR    $F46F
74EB: EA 74          ORB    -$C,S
74ED: FC 6F EA       LDD    $6FEA
74F0: 6F EA          CLR    F,S
74F2: 6F EA          CLR    F,S
74F4: 01 04 77       OIM    #$04;$77
74F7: F6 78 76       LDB    $7876
74FA: 75 0A 01 04    EIM    #$0A,$0104
74FE: 77 F6 78       ASR    $F678
7501: 76 75 04       ROR    $7504
7504: FF 01 00       STU    $0100
7507: 01 01 FD       OIM    #$01;$FD
750A: FF 01 00       STU    $0100
750D: 01 01 FD       OIM    #$01;$FD
7510: 75 1C 6F EA    EIM    #$1C,$6FEA
7514: 75 1C 6F EA    EIM    #$1C,$6FEA
7518: 6F EA          CLR    F,S
751A: 6F EA          CLR    F,S
751C: 00 00          NEG    $00
751E: 77 D6 78       ASR    $D678
7521: 4A             DECA
7522: 6F F2          CLR    Illegal Postbyte
7524: 75 30 6F EA    EIM    #$30,$6FEA
7528: 75 30 6F EA    EIM    #$30,$6FEA
752C: 75 30 6F EA    EIM    #$30,$6FEA
7530: 00 00          NEG    $00
7532: 77 EA 78       ASR    $EA78
7535: 4A             DECA
7536: 6F F2          CLR    Illegal Postbyte
7538: 75 44 6F EA    EIM    #$44,$6FEA
753C: 75 44 75 4C    EIM    #$44,$754C
7540: 75 44 6F EA    EIM    #$44,$6FEA
7544: 00 00          NEG    $00
7546: 77 A2 78       ASR    $A278
7549: 4A             DECA
754A: 6F F2          CLR    Illegal Postbyte
754C: 00 00          NEG    $00
754E: 78 0A 78       ASL    $0A78
7551: 4A             DECA
7552: 6F F2          CLR    Illegal Postbyte
7554: 75 60 6F EA    EIM    #$60,$6FEA
7558: 75 60 75 68    EIM    #$60,$7568
755C: 75 60 6F EA    EIM    #$60,$6FEA
7560: 00 00          NEG    $00
7562: 77 A2 78       ASR    $A278
7565: 4A             DECA
7566: 6F F2          CLR    Illegal Postbyte
7568: 00 00          NEG    $00
756A: 77 FA 78       ASR    $FA78
756D: 4A             DECA
756E: 6F F2          CLR    Illegal Postbyte
7570: 75 7C 6F EA    EIM    #$7C,$6FEA
7574: 75 7C 6F EA    EIM    #$7C,$6FEA
7578: 75 7C 6F EA    EIM    #$7C,$6FEA
757C: 01 05 77       OIM    #$05;$77
757F: C6 78          LDB    #$78
7581: 7A 75 84       DEC    $7584
7584: 03 59          COM    $59
7586: 01 01 FC       OIM    #$01;$FC
7589: 00 08          NEG    $08
758B: 59             ROLB
758C: 01 01 FC       OIM    #$01;$FC
758F: 00 09          NEG    $09
7591: 59             ROLB
7592: 01 01 FC       OIM    #$01;$FC
7595: 00 22          NEG    $22
7597: 59             ROLB
7598: 01 01 FC       OIM    #$01;$FC
759B: 00 23          NEG    $23
759D: 59             ROLB
759E: 01 01 FC       OIM    #$01;$FC
75A1: 00 03          NEG    $03
75A3: 5B             FCB    $5B
75A4: 01 01 FC       OIM    #$01;$FC
75A7: 00 08          NEG    $08
75A9: 5B             FCB    $5B
75AA: 01 01 FC       OIM    #$01;$FC
75AD: 00 09          NEG    $09
75AF: 5B             FCB    $5B
75B0: 01 01 FC       OIM    #$01;$FC
75B3: 00 22          NEG    $22
75B5: 5B             FCB    $5B
75B6: 01 01 FC       OIM    #$01;$FC
75B9: 00 23          NEG    $23
75BB: 5B             FCB    $5B
75BC: 01 01 FC       OIM    #$01;$FC
75BF: 00 FF          NEG    $FF
75C1: 01 00 01       OIM    #$00;$01
75C4: 01 FD 75       OIM    #$FD;$75
75C7: D2 6F          SBCB   $6F
75C9: EA 75          ORB    -$B,S
75CB: D2 75          SBCB   $75
75CD: DA 75          ORB    $75
75CF: D2 6F          SBCB   $6F
75D1: EA 00          ORB    $0,X
75D3: 00 77          NEG    $77
75D5: A2 78          SBCA   -$8,S
75D7: 4A             DECA
75D8: 6F F2          CLR    Illegal Postbyte
75DA: 01 01 78       OIM    #$01;$78
75DD: 02 78 8E       AIM    #$78;$8E
75E0: 75 E2 FF 01    EIM    #$E2,$FF01
75E4: 00 01          NEG    $01
75E6: 01 FD 75       OIM    #$FD;$75
75E9: F4 6F EA       ANDB   $6FEA
75EC: 75 F4 75 FC    EIM    #$F4,$75FC
75F0: 75 F4 6F EA    EIM    #$F4,$6FEA
75F4: 00 00          NEG    $00
75F6: 77 E2 78       ASR    $E278
75F9: 4A             DECA
75FA: 6F F2          CLR    Illegal Postbyte
75FC: 00 00          NEG    $00
75FE: 78 16 78       ASL    $1678
7601: 4A             DECA
7602: 6F F2          CLR    Illegal Postbyte
7604: 76 10 6F       ROR    $106F
7607: EA 76          ORB    -$A,S
7609: 10 76          FCB    $10,$76
760B: 18             FCB    $18
760C: 76             FCB    $76
760D: 10             FCB    $10
760E: 6F EA          CLR    F,S
7610: 00 00          NEG    $00
7612: 77 E6 78       ASR    $E678
7615: 4A             DECA
7616: 6F F2          CLR    Illegal Postbyte
7618: 00 00          NEG    $00
761A: 78 1A 78       ASL    $1A78
761D: 4A             DECA
761E: 6F F2          CLR    Illegal Postbyte
7620: 76 2C 6F       ROR    $2C6F
7623: EA 76          ORB    -$A,S
7625: 2C 76          BGE    $769D
7627: 34 76          PSHS   U,Y,X,D
7629: 2C 6F          BGE    $769A
762B: EA 00          ORB    $0,X
762D: 00 77          NEG    $77
762F: C6 78          LDB    #$78
7631: 4A             DECA
7632: 6F F2          CLR    Illegal Postbyte
7634: 00 00          NEG    $00
7636: 78 26 78       ASL    $2678
7639: 4A             DECA
763A: 6F F2          CLR    Illegal Postbyte
763C: 76 48 6F       ROR    $486F
763F: EA 76          ORB    -$A,S
7641: 48             ASLA
7642: 76 50 76       ROR    $5076
7645: 48             ASLA
7646: 6F EA          CLR    F,S
7648: 00 00          NEG    $00
764A: 77 D6 78       ASR    $D678
764D: 4A             DECA
764E: 6F F2          CLR    Illegal Postbyte
7650: 00 00          NEG    $00
7652: 78 1E 78       ASL    $1E78
7655: 4A             DECA
7656: 6F F2          CLR    Illegal Postbyte
7658: 76 64 6F       ROR    $646F
765B: EA 76          ORB    -$A,S
765D: 64 76          LSR    -$A,S
765F: 50             NEGB
7660: 76 64 6F       ROR    $646F
7663: EA 00          ORB    $0,X
7665: 00 77          NEG    $77
7667: D6 78          LDB    $78
7669: 4A             DECA
766A: 6F F2          CLR    Illegal Postbyte
766C: 76 78 6F       ROR    $786F
766F: EA 76          ORB    -$A,S
7671: 78 76 50       ASL    $7650
7674: 76 78 6F       ROR    $786F
7677: EA 00          ORB    $0,X
7679: 00 77          NEG    $77
767B: D6 78          LDB    $78
767D: 4A             DECA
767E: 6F F2          CLR    Illegal Postbyte
7680: 76 8C 6F       ROR    $8C6F
7683: EA 76          ORB    -$A,S
7685: 8C 76 50       CMPX   #$7650
7688: 76 8C 6F       ROR    $8C6F
768B: EA 00          ORB    $0,X
768D: 00 77          NEG    $77
768F: D6 78          LDB    $78
7691: 4A             DECA
7692: 6F F2          CLR    Illegal Postbyte
7694: 76 A0 6F       ROR    $A06F
7697: EA 76          ORB    -$A,S
7699: A0 76          SUBA   -$A,S
769B: 50             NEGB
769C: 76 A0 6F       ROR    $A06F
769F: EA 00          ORB    $0,X
76A1: 00 77          NEG    $77
76A3: D6 78          LDB    $78
76A5: 4A             DECA
76A6: 6F F2          CLR    Illegal Postbyte
76A8: 76 B4 6F       ROR    $B46F
76AB: EA 76          ORB    -$A,S
76AD: B4 76 50       ANDA   $7650
76B0: 76 B4 6F       ROR    $B46F
76B3: EA 00          ORB    $0,X
76B5: 00 77          NEG    $77
76B7: D6 78          LDB    $78
76B9: 4A             DECA
76BA: 6F F2          CLR    Illegal Postbyte
76BC: 76 C8 6F       ROR    $C86F
76BF: EA 76          ORB    -$A,S
76C1: C8 76          EORB   #$76
76C3: 50             NEGB
76C4: 76 C8 6F       ROR    $C86F
76C7: EA 00          ORB    $0,X
76C9: 00 77          NEG    $77
76CB: D6 78          LDB    $78
76CD: 4A             DECA
76CE: 6F F2          CLR    Illegal Postbyte
76D0: 76 DC 6F       ROR    $DC6F
76D3: EA 76          ORB    -$A,S
76D5: DC 76          LDD    $76
76D7: 50             NEGB
76D8: 76 DC 6F       ROR    $DC6F
76DB: EA 00          ORB    $0,X
76DD: 00 77          NEG    $77
76DF: D6 78          LDB    $78
76E1: 4A             DECA
76E2: 6F F2          CLR    Illegal Postbyte
76E4: 76 F0 6F       ROR    $F06F
76E7: EA 76          ORB    -$A,S
76E9: F0 76 50       SUBB   $7650
76EC: 76 F0 6F       ROR    $F06F
76EF: EA 00          ORB    $0,X
76F1: 00 77          NEG    $77
76F3: BA 78 4A       ORA    $784A
76F6: 6F F2          CLR    Illegal Postbyte
76F8: 77 3C 6F       ASR    $3C6F
76FB: EA 77          ORB    -$9,S
76FD: 3C 6F          CWAI   #$6F
76FF: EA 77          ORB    -$9,S
7701: 3C 6F          CWAI   #$6F
7703: EA 00          ORB    $0,X
7705: 00 77          NEG    $77
7707: 96 78          LDA    $78
7709: 4A             DECA
770A: 6F F2          CLR    Illegal Postbyte
770C: 6F EA          CLR    F,S
770E: 6F EA          CLR    F,S
7710: 6F EA          CLR    F,S
7712: 6F EA          CLR    F,S
7714: 6F EA          CLR    F,S
7716: 6F EA          CLR    F,S
7718: 6F EA          CLR    F,S
771A: 6F EA          CLR    F,S
771C: 6F EA          CLR    F,S
771E: 6F EA          CLR    F,S
7720: 6F EA          CLR    F,S
7722: 6F EA          CLR    F,S
7724: 6F EA          CLR    F,S
7726: 6F EA          CLR    F,S
7728: 6F EA          CLR    F,S
772A: 6F EA          CLR    F,S
772C: 6F EA          CLR    F,S
772E: 6F EA          CLR    F,S
7730: 77 3C 6F       ASR    $3C6F
7733: EA 77          ORB    -$9,S
7735: 3C 6F          CWAI   #$6F
7737: EA 77          ORB    -$9,S
7739: 3C 6F          CWAI   #$6F
773B: EA 00          ORB    $0,X
773D: 00 77          NEG    $77
773F: BE 78 4A       LDX    $784A
7742: 6F F2          CLR    Illegal Postbyte
7744: 77 3C 6F       ASR    $3C6F
7747: EA 77          ORB    -$9,S
7749: 3C 6F          CWAI   #$6F
774B: EA 77          ORB    -$9,S
774D: 3C 6F          CWAI   #$6F
774F: EA 77          ORB    -$9,S
7751: 3C 6F          CWAI   #$6F
7753: EA 77          ORB    -$9,S
7755: 3C 6F          CWAI   #$6F
7757: EA 77          ORB    -$9,S
7759: 3C 6F          CWAI   #$6F
775B: EA 77          ORB    -$9,S
775D: 3C 6F          CWAI   #$6F
775F: EA 77          ORB    -$9,S
7761: 3C 6F          CWAI   #$6F
7763: EA 77          ORB    -$9,S
7765: 3C 6F          CWAI   #$6F
7767: EA 6F          ORB    $F,S
7769: EA 6F          ORB    $F,S
776B: EA 77          ORB    -$9,S
776D: 74 6F EA       LSR    $6FEA
7770: 77 74 6F       ASR    $746F
7773: EA 01          ORB    $1,X
7775: 04 77          LSR    $77
7777: BE 78 4A       LDX    $784A
777A: 6F F2          CLR    Illegal Postbyte
777C: 6F EA          CLR    F,S
777E: 6F EA          CLR    F,S
7780: 77 88 6F       ASR    $886F
7783: EA 77          ORB    -$9,S
7785: 88 6F          EORA   #$6F
7787: EA 01          ORB    $1,X
7789: 04 77          LSR    $77
778B: BE 78 7E       LDX    $787E
778E: 77 90 FF       ASR    $90FF
7791: 03 00          COM    $00
7793: 03 01          COM    $01
7795: FD 00 00       STD    >$0000
7798: 00 00          NEG    $00
779A: 08 00          ASL    $00
779C: 20 0C          BRA    $77AA
779E: 00 10          NEG    $10
77A0: 0C 38          INC    $38
77A2: 00 00          NEG    $00
77A4: 0C 38          INC    $38
77A6: 00 00          NEG    $00
77A8: 08 38          ASL    $38
77AA: 00 10          NEG    $10
77AC: 0C 28          INC    $28
77AE: 00 10          NEG    $10
77B0: 10 28 00 00    LBVC   $77B4
77B4: 08 38          ASL    $38
77B6: 00 20          NEG    $20
77B8: 10 10          FCB    $10,$10
77BA: 00 10          NEG    $10
77BC: 10 20          FCB    $10,$20
77BE: 00             FCB    $00
77BF: 00             FCB    $00
77C0: 08             FCB    $08
77C1: 38             PSHSW
77C2: FC 00 0C       LDD    >$000C
77C5: 38             FCB    $38
77C6: FC 00 08       LDD    >$0008
77C9: 38             FCB    $38
77CA: F8 00 28       EORB   >$0028
77CD: 38             FCB    $38
77CE: F8 10 10       EORB   $1010
77D1: 18             FCB    $18
77D2: F8 00 08       EORB   >$0008
77D5: 38             FCB    $38
77D6: F8 00 10       EORB   >$0010
77D9: 38             FCB    $38
77DA: FA 08 0A       ORB    $080A
77DD: 2A F8          BPL    $77D7
77DF: 18             FCB    $18
77E0: 0C 20          INC    $20
77E2: F8 00 10       EORB   >$0010
77E5: 20 F8          BRA    $77DF
77E7: 00 10          NEG    $10
77E9: 30 F8 08       LEAX   [$08,S]
77EC: 10 18          FCB    $10,$18
77EE: F0             FCB    $F0
77EF: 10             FCB    $10
77F0: 10 18          FCB    $10,$18
77F2: F0             FCB    $F0
77F3: 00             FCB    $00
77F4: 10             FCB    $10
77F5: 38             FCB    $38
77F6: F0 18 10       SUBB   $1810
77F9: 20 04          BRA    $77FF
77FB: 10 10          FCB    $10,$10
77FD: 30 00          LEAX   $0,X
77FF: 00 10          NEG    $10
7801: 40             NEGA
7802: 00 10          NEG    $10
7804: 10 38          PSHSW
7806: FC 18 0C       LDD    $180C
7809: 30 FC 10       LEAX   [$781C,PCR]
780C: 10 30 FC       ADDR   F,0
780F: 10 10          FCB    $10,$10
7811: 38             FCB    $38
7812: F8 00 10       EORB   >$0010
7815: 48             ASLA
7816: F8 00 18       EORB   >$0018
7819: 28 F8          BVC    $7813
781B: 00 10          NEG    $10
781D: 38             FCB    $38
781E: F8 18 10       EORB   $1810
7821: 30 F4          LEAX   [,S]
7823: 00 0C          NEG    $0C
7825: 48             ASLA
7826: F8 18 10       EORB   $1810
7829: 30 F8 00       LEAX   [$00,S]
782C: 10 18          FCB    $10,$18
782E: F8             FCB    $F8
782F: 00             FCB    $00
7830: 10             FCB    $10
7831: 38             FCB    $38
7832: F4 00 10       ANDB   >$0010
7835: 30 00          LEAX   $0,X
7837: 00 10          NEG    $10
7839: 28 F8          BVC    $7833
783B: 04 10          LSR    $10
783D: 20 00          BRA    $783F
783F: 00 10          NEG    $10
7841: 38             FCB    $38
7842: F4 10 10       ANDB   $1010
7845: 28 00          BVC    $7847
7847: 18             FCB    $18
7848: 10 20          FCB    $10,$20
784A: 00             FCB    $00
784B: 00             FCB    $00
784C: 00             FCB    $00
784D: 00             FCB    $00
784E: FC 00 14       LDQ    >$0014
7851: 38             FCB    $38
7852: 0C 30          INC    $30
7854: 10 08          FCB    $10,$08
7856: 08             FCB    $08
7857: 10             FCB    $10
7858: 0C 0C          INC    $0C
785A: 08 28          ASL    $28
785C: 0E 0E          JMP    $0E
785E: DC 20          LDD    $20
7860: 10 10          FCB    $10,$10
7862: 0C 30          INC    $30
7864: 0C 0C          INC    $0C
7866: 04 00          LSR    $00
7868: 08 08          ASL    $08
786A: 00 00          NEG    $00
786C: 08 10          ASL    $10
786E: 0C 24          INC    $24
7870: 0C 10          INC    $10
7872: EC 20          LDD    $0,Y
7874: 0C 08          INC    $08
7876: 10 2C 0C 0C    LBGE   $8486
787A: 08 20          ASL    $20
787C: 1D             SEX
787D: 08 10          ASL    $10
787F: 18             FCB    $18
7880: 14             SEXW
7881: 10 08          FCB    $10,$08
7883: 20             FCB    $20
7884: 04             FCB    $04
7885: 08             FCB    $08
7886: 08             FCB    $08
7887: 30 0C          ADDR   D,0
7889: 0C 18          INC    $18
788B: 10 0C          FCB    $10,$0C
788D: 10             FCB    $10
788E: 0C 20          INC    $20
7890: 1C 0C          ANDCC  #$0C
7892: 14             SEXW
7893: 1C 0C          ANDCC  #$0C
7895: 08 0C          ASL    $0C
7897: 28 18          BVC    $78B1
7899: 18             FCB    $18
789A: 08 20          ASL    $20
789C: 30 20          LEAX   $0,Y
789E: E0 20          SUBB   $0,Y
78A0: 20 10          BRA    $78B2
78A2: B6 0A AE       LDA    $0AAE
78A5: 85 40          BITA   #$40
78A7: 10 26 00 86    LBNE   $7931
78AB: 10 8E 79 7B    LDY    #$797B
78AF: B6 0B 04       LDA    $0B04
78B2: 48             ASLA
78B3: 10 AE A6       LDY    A,Y
78B6: F6 0B 05       LDB    $0B05
78B9: 58             ASLB
78BA: 10 AE A5       LDY    B,Y
78BD: 8E 07 5B       LDX    #$075B
78C0: A6 A4          LDA    ,Y
78C2: 81 FF          CMPA   #$FF
78C4: 27 63          BEQ    $7929
78C6: A6 84          LDA    ,X
78C8: 85 80          BITA   #$80
78CA: 26 55          BNE    $7921
78CC: A6 A4          LDA    ,Y
78CE: 97 00          STA    $00
78D0: BD 79 42       JSR    $7942
78D3: 24 46          BCC    $791B
78D5: BD 63 86       JSR    $6386
78D8: 86 80          LDA    #$80
78DA: A7 84          STA    ,X
78DC: CC FF FF       LDD    #$FFFF
78DF: ED 04          STD    $4,X
78E1: CC 00 00       LDD    #$0000
78E4: ED 06          STD    $6,X
78E6: 96 00          LDA    $00
78E8: A7 88 17       STA    $17,X
78EB: 34 20          PSHS   Y
78ED: 10 8E 79 32    LDY    #$7932
78F1: 84 1F          ANDA   #$1F
78F3: A6 A6          LDA    A,Y
78F5: A7 01          STA    $1,X
78F7: 35 20          PULS   Y
78F9: 6F 02          CLR    $2,X
78FB: EC 21          LDD    $1,Y
78FD: ED 04          STD    $4,X
78FF: 6F 0A          CLR    $A,X
7901: EC 23          LDD    $3,Y
7903: ED 06          STD    $6,X
7905: 6F 0B          CLR    $B,X
7907: EC 25          LDD    $5,Y
7909: ED 08          STD    $8,X
790B: 6F 0C          CLR    $C,X
790D: 86 05          LDA    #$05
790F: A7 88 1B       STA    $1B,X
7912: 6F 88 16       CLR    $16,X
7915: 6F 88 1F       CLR    $1F,X
7918: 6F 88 20       CLR    $20,X
791B: 31 A9 00 07    LEAY   $0007,Y
791F: 20 9F          BRA    $78C0
7921: 30 88 21       LEAX   $21,X
7924: 8C 09 6B       CMPX   #$096B
7927: 26 9D          BNE    $78C6
7929: B6 0A AE       LDA    $0AAE
792C: 8A 40          ORA    #$40
792E: B7 0A AE       STA    $0AAE
7931: 39             RTS
7932: 0C 00          INC    $00
7934: 00 0E          NEG    $0E
7936: 0D 11          TST    $11
7938: 0F 10          CLR    $10
793A: 00 00          NEG    $00
793C: 00 00          NEG    $00
793E: 00 00          NEG    $00
7940: 12             NOP
7941: 00 81          NEG    $81
7943: 00 27          NEG    $27
7945: 0A 81          DEC    $81
7947: 04 27          LSR    $27
7949: 12             NOP
794A: 81 03          CMPA   #$03
794C: 27 1A          BEQ    $7968
794E: 20 28          BRA    $7978
7950: B6 0E 39       LDA    $0E39
7953: 81 02          CMPA   #$02
7955: 24 21          BCC    $7978
7957: 7C 0E 39       INC    $0E39
795A: 20 18          BRA    $7974
795C: B6 0E 3A       LDA    $0E3A
795F: 81 02          CMPA   #$02
7961: 24 15          BCC    $7978
7963: 7C 0E 3A       INC    $0E3A
7966: 20 0C          BRA    $7974
7968: B6 0E 3B       LDA    $0E3B
796B: 81 02          CMPA   #$02
796D: 24 09          BCC    $7978
796F: 7C 0E 3B       INC    $0E3B
7972: 20 00          BRA    $7974
7974: 1A 01          ORCC   #$01
7976: 20 02          BRA    $797A
7978: 1C FE          ANDCC  #$FE
797A: 39             RTS
797B: 79 81 79       ROL    $8179
797E: 87             FCB    $87
797F: 79 8B 79       ROL    $8B79
7982: 99 79          ADCA   $79
7984: 9A 79          ORA    $79
7986: 9B 79          ADDA   $79
7988: AA 79          ORA    -$7,S
798A: B2 79 BA       SBCA   $79BA
798D: 79 C2 79       ROL    $C279
7990: C3 79 C4       ADDD   #$79C4
7993: 79 D3 79       ROL    $D379
7996: E9 79          ADCB   -$7,S
7998: EA FF FF 00    ORB    [$FF00]
799C: 04 55          LSR    $55
799E: 01 39 01       OIM    #$39;$01
79A1: 00 00          NEG    $00
79A3: 04 C1          LSR    $C1
79A5: 01 1D 01       OIM    #$1D;$01
79A8: 00 FF          NEG    $FF
79AA: 04 05          LSR    $05
79AC: A2 01          SBCA   $1,X
79AE: 35 01          PULS   CC
79B0: 00 FF          NEG    $FF
79B2: 04 07          LSR    $07
79B4: A4 01          ANDA   $1,X
79B6: 20 01          BRA    $79B9
79B8: C0 FF          SUBB   #$FF
79BA: 00 09          NEG    $09
79BC: 53             COMB
79BD: 00 A3          NEG    $A3
79BF: 01 00 FF       OIM    #$00;$FF
79C2: FF FF 03       STU    $FF03
79C5: 10 98 00       EORD   $00
79C8: B2 01 00       SBCA   $0100
79CB: 03 10          COM    $10
79CD: D0 00          SUBB   $00
79CF: D0 01          SUBB   $01
79D1: 00 FF          NEG    $FF
79D3: 03 12          COM    $12
79D5: 9A 00          ORA    $00
79D7: E7 01          STB    $1,X
79D9: 30 03          LEAX   $3,X
79DB: 13             SYNC
79DC: 64 00          LSR    $0,X
79DE: FD 01 30       STD    $0130
79E1: 03 13          COM    $13
79E3: A6 01          LDA    $1,X
79E5: 19             DAA
79E6: 01 30 FF       OIM    #$30;$FF
79E9: FF FF 34       STU    $FF34
79EC: 76 10 8E       ROR    $108E
79EF: 07 5B          ASR    $5B
79F1: A6 A4          LDA    ,Y
79F3: 2A 7F          BPL    $7A74
79F5: 34 10          PSHS   X
79F7: 8E 7B 0D       LDX    #$7B0D
79FA: A6 A8 17       LDA    $17,Y
79FD: 84 1F          ANDA   #$1F
79FF: A6 86          LDA    A,X
7A01: 35 10          PULS   X
7A03: 26 6F          BNE    $7A74
7A05: A6 22          LDA    $2,Y
7A07: 84 7F          ANDA   #$7F
7A09: 81 7F          CMPA   #$7F
7A0B: 27 67          BEQ    $7A74
7A0D: A6 A8 1B       LDA    $1B,Y
7A10: 84 7F          ANDA   #$7F
7A12: 81 03          CMPA   #$03
7A14: 27 5E          BEQ    $7A74
7A16: DC 3C          LDD    $3C
7A18: 10 A3 24       CMPD   $4,Y
7A1B: 24 57          BCC    $7A74
7A1D: C3 01 00       ADDD   #$0100
7A20: 10 A3 24       CMPD   $4,Y
7A23: 25 4F          BCS    $7A74
7A25: A6 A8 17       LDA    $17,Y
7A28: 84 3F          ANDA   #$3F
7A2A: 81 0E          CMPA   #$0E
7A2C: 26 10          BNE    $7A3E
7A2E: A6 22          LDA    $2,Y
7A30: 84 7F          ANDA   #$7F
7A32: 81 13          CMPA   #$13
7A34: 27 08          BEQ    $7A3E
7A36: A6 A8 1D       LDA    $1D,Y
7A39: 84 3F          ANDA   #$3F
7A3B: A7 A8 1D       STA    $1D,Y
7A3E: 86 01          LDA    #$01
7A40: 97 00          STA    $00
7A42: 8E 03 A2       LDX    #$03A2
7A45: A6 84          LDA    ,X
7A47: 84 C0          ANDA   #$C0
7A49: 81 C0          CMPA   #$C0
7A4B: 26 03          BNE    $7A50
7A4D: BD 7A 81       JSR    $7A81
7A50: 86 01          LDA    #$01
7A52: 97 00          STA    $00
7A54: 8E 04 00       LDX    #$0400
7A57: A6 84          LDA    ,X
7A59: 84 C0          ANDA   #$C0
7A5B: 81 C0          CMPA   #$C0
7A5D: 26 03          BNE    $7A62
7A5F: BD 7A 81       JSR    $7A81
7A62: 86 02          LDA    #$02
7A64: 97 00          STA    $00
7A66: 8E 04 5E       LDX    #$045E
7A69: BD 7A 81       JSR    $7A81
7A6C: 30 88 55       LEAX   $55,X
7A6F: 8C 07 5B       CMPX   #$075B
7A72: 26 F5          BNE    $7A69
7A74: 31 A8 21       LEAY   $21,Y
7A77: 10 8C 09 6B    CMPY   #$096B
7A7B: 10 26 FF 72    LBNE   $79F1
7A7F: 35 F6          PULS   D,X,Y,U,PC
7A81: A6 84          LDA    ,X
7A83: 10 2A 00 85    LBPL   $7B0C
7A87: 84 C0          ANDA   #$C0
7A89: 81 C0          CMPA   #$C0
7A8B: 10 26 00 7D    LBNE   $7B0C
7A8F: A6 A8 17       LDA    $17,Y
7A92: 84 1F          ANDA   #$1F
7A94: 34 20          PSHS   Y
7A96: 10 8E 7B 0D    LDY    #$7B0D
7A9A: A6 A6          LDA    A,Y
7A9C: 35 20          PULS   Y
7A9E: 26 6C          BNE    $7B0C
7AA0: DC 3C          LDD    $3C
7AA2: 10 A3 04       CMPD   $4,X
7AA5: 24 65          BCC    $7B0C
7AA7: C3 01 30       ADDD   #$0130
7AAA: 10 A3 04       CMPD   $4,X
7AAD: 25 5D          BCS    $7B0C
7AAF: 96 00          LDA    $00
7AB1: 27 08          BEQ    $7ABB
7AB3: 10 AC 88 1F    CMPY   $1F,X
7AB7: 27 53          BEQ    $7B0C
7AB9: 20 09          BRA    $7AC4
7ABB: A6 88 1B       LDA    $1B,X
7ABE: 84 7F          ANDA   #$7F
7AC0: 81 03          CMPA   #$03
7AC2: 27 48          BEQ    $7B0C
7AC4: BD 7D 14       JSR    $7D14
7AC7: 24 43          BCC    $7B0C
7AC9: BD 7D 92       JSR    $7D92
7ACC: 25 05          BCS    $7AD3
7ACE: BD 7C AA       JSR    $7CAA
7AD1: 20 39          BRA    $7B0C
7AD3: BD 7B 2D       JSR    $7B2D
7AD6: A6 88 34       LDA    $34,X
7AD9: 2A 31          BPL    $7B0C
7ADB: A6 88 34       LDA    $34,X
7ADE: 84 FD          ANDA   #$FD
7AE0: A7 88 34       STA    $34,X
7AE3: A6 A8 34       LDA    $34,Y
7AE6: 84 FE          ANDA   #$FE
7AE8: A7 A8 34       STA    $34,Y
7AEB: E6 A8 1B       LDB    $1B,Y
7AEE: C4 7F          ANDB   #$7F
7AF0: C1 02          CMPB   #$02
7AF2: 26 08          BNE    $7AFC
7AF4: A6 A8 34       LDA    $34,Y
7AF7: 8A 01          ORA    #$01
7AF9: A7 A8 34       STA    $34,Y
7AFC: 34 20          PSHS   Y
7AFE: 10 8E 7B 21    LDY    #$7B21
7B02: A6 88 34       LDA    $34,X
7B05: AA A5          ORA    B,Y
7B07: A7 88 34       STA    $34,X
7B0A: 35 20          PULS   Y
7B0C: 39             RTS
7B0D: 00 FF          NEG    $FF
7B0F: FF 00 00       STU    >$0000
7B12: 00 00          NEG    $00
7B14: 00 FF          NEG    $FF
7B16: 00 FF          NEG    $FF
7B18: 00 FF          NEG    $FF
7B1A: FF 00 00       STU    >$0000
7B1D: FF FF FF       STU    $FFFF
7B20: FF 00 02       STU    >$0002
7B23: 02 00 00       AIM    #$00;$00
7B26: 00 02          NEG    $02
7B28: 02 00 00       AIM    #$00;$00
7B2B: 00 00          NEG    $00
7B2D: 34 30          PSHS   Y,X
7B2F: 10 9F 0E       STY    $0E
7B32: A6 A8 1B       LDA    $1B,Y
7B35: 84 7F          ANDA   #$7F
7B37: 81 05          CMPA   #$05
7B39: 26 05          BNE    $7B40
7B3B: BD 7C 9A       JSR    $7C9A
7B3E: 20 0C          BRA    $7B4C
7B40: A6 A8 17       LDA    $17,Y
7B43: 84 1F          ANDA   #$1F
7B45: 48             ASLA
7B46: 10 8E 7B 4E    LDY    #$7B4E
7B4A: AD B6          JSR    [A,Y]
7B4C: 35 B0          PULS   X,Y,PC
7B4E: 7B 6E 7C 99    TIM    #$6E,$7C99
7B52: 7C 99 7B       INC    $997B
7B55: 77 7B 80       ASR    $7B80
7B58: 7B 89 7B B4    TIM    #$89,$7BB4
7B5C: 7B C9 7C 99    TIM    #$C9,$7C99
7B60: 7B D9 7C 99    TIM    #$D9,$7C99
7B64: 7B EF 7C 99    TIM    #$EF,$7C99
7B68: 7C 99 7C       INC    $997C
7B6B: 05 7C 66       EIM    #$7C;$66
7B6E: 86 06          LDA    #$06
7B70: A7 88 20       STA    $20,X
7B73: BD 7C 9A       JSR    $7C9A
7B76: 39             RTS
7B77: 86 06          LDA    #$06
7B79: A7 88 20       STA    $20,X
7B7C: BD 7C 9A       JSR    $7C9A
7B7F: 39             RTS
7B80: 86 05          LDA    #$05
7B82: A7 88 20       STA    $20,X
7B85: BD 7C 9A       JSR    $7C9A
7B88: 39             RTS
7B89: 10 9E 0E       LDY    $0E
7B8C: A6 A8 1B       LDA    $1B,Y
7B8F: 84 7F          ANDA   #$7F
7B91: 81 01          CMPA   #$01
7B93: 27 1E          BEQ    $7BB3
7B95: 81 04          CMPA   #$04
7B97: 26 17          BNE    $7BB0
7B99: 86 20          LDA    #$20
7B9B: A7 88 20       STA    $20,X
7B9E: 86 01          LDA    #$01
7BA0: A7 88 23       STA    $23,X
7BA3: 86 01          LDA    #$01
7BA5: A7 88 22       STA    $22,X
7BA8: 86 10          LDA    #$10
7BAA: A7 88 25       STA    $25,X
7BAD: BD 7C 90       JSR    $7C90
7BB0: BD 7C 9A       JSR    $7C9A
7BB3: 39             RTS
7BB4: 10 9E 0E       LDY    $0E
7BB7: A6 A8 1B       LDA    $1B,Y
7BBA: 84 7F          ANDA   #$7F
7BBC: 81 01          CMPA   #$01
7BBE: 27 08          BEQ    $7BC8
7BC0: 86 10          LDA    #$10
7BC2: A7 88 20       STA    $20,X
7BC5: BD 7C 9A       JSR    $7C9A
7BC8: 39             RTS
7BC9: 10 9E 0E       LDY    $0E
7BCC: A6 A8 1B       LDA    $1B,Y
7BCF: 84 7F          ANDA   #$7F
7BD1: 81 05          CMPA   #$05
7BD3: 26 03          BNE    $7BD8
7BD5: BD 7C 9A       JSR    $7C9A
7BD8: 39             RTS
7BD9: 86 20          LDA    #$20
7BDB: A7 88 20       STA    $20,X
7BDE: 86 07          LDA    #$07
7BE0: A7 88 22       STA    $22,X
7BE3: 86 01          LDA    #$01
7BE5: A7 88 23       STA    $23,X
7BE8: BD 7C 90       JSR    $7C90
7BEB: BD 7C 9A       JSR    $7C9A
7BEE: 39             RTS
7BEF: 86 14          LDA    #$14
7BF1: A7 88 20       STA    $20,X
7BF4: 86 07          LDA    #$07
7BF6: A7 88 22       STA    $22,X
7BF9: 86 01          LDA    #$01
7BFB: A7 88 23       STA    $23,X
7BFE: BD 7C 90       JSR    $7C90
7C01: BD 7C 9A       JSR    $7C9A
7C04: 39             RTS
7C05: 10 9E 0E       LDY    $0E
7C08: A6 A8 1B       LDA    $1B,Y
7C0B: 84 7F          ANDA   #$7F
7C0D: 81 05          CMPA   #$05
7C0F: 27 51          BEQ    $7C62
7C11: 81 00          CMPA   #$00
7C13: 26 50          BNE    $7C65
7C15: A6 22          LDA    $2,Y
7C17: 84 7F          ANDA   #$7F
7C19: 81 13          CMPA   #$13
7C1B: 26 48          BNE    $7C65
7C1D: A6 01          LDA    $1,X
7C1F: 84 3F          ANDA   #$3F
7C21: 12             NOP
7C22: 12             NOP
7C23: 12             NOP
7C24: 12             NOP
7C25: C6 03          LDB    #$03
7C27: E7 88 23       STB    $23,X
7C2A: 6C 88 25       INC    $25,X
7C2D: 20 05          BRA    $7C34
7C2F: 86 01          LDA    #$01
7C31: A7 88 23       STA    $23,X
7C34: 86 03          LDA    #$03
7C36: A7 88 20       STA    $20,X
7C39: 86 00          LDA    #$00
7C3B: A7 88 22       STA    $22,X
7C3E: 34 30          PSHS   Y,X
7C40: AE A8 1F       LDX    $1F,Y
7C43: A6 01          LDA    $1,X
7C45: 81 01          CMPA   #$01
7C47: 22 12          BHI    $7C5B
7C49: A6 A8 1D       LDA    $1D,Y
7C4C: 2B 0D          BMI    $7C5B
7C4E: 86 0B          LDA    #$0B
7C50: BD 42 D3       JSR    $42D3
7C53: A6 A8 1D       LDA    $1D,Y
7C56: 8A 80          ORA    #$80
7C58: A7 A8 1D       STA    $1D,Y
7C5B: 35 30          PULS   X,Y
7C5D: BD 7C 90       JSR    $7C90
7C60: 26 03          BNE    $7C65
7C62: BD 7C 9A       JSR    $7C9A
7C65: 39             RTS
7C66: 10 9E 0E       LDY    $0E
7C69: A6 01          LDA    $1,X
7C6B: 84 3F          ANDA   #$3F
7C6D: 81 01          CMPA   #$01
7C6F: 22 1E          BHI    $7C8F
7C71: A6 22          LDA    $2,Y
7C73: 84 7F          ANDA   #$7F
7C75: 81 00          CMPA   #$00
7C77: 26 16          BNE    $7C8F
7C79: A6 88 1F       LDA    $1F,X
7C7C: A7 88 20       STA    $20,X
7C7F: 86 01          LDA    #$01
7C81: A7 88 23       STA    $23,X
7C84: 86 01          LDA    #$01
7C86: A7 88 22       STA    $22,X
7C89: BD 7C 90       JSR    $7C90
7C8C: BD 7C 9A       JSR    $7C9A
7C8F: 39             RTS
7C90: A6 88 15       LDA    $15,X
7C93: 8A 01          ORA    #$01
7C95: A7 88 15       STA    $15,X
7C98: 39             RTS
7C99: 39             RTS
7C9A: 10 9E 0E       LDY    $0E
7C9D: A6 88 34       LDA    $34,X
7CA0: 8A 80          ORA    #$80
7CA2: A7 88 34       STA    $34,X
7CA5: 10 AF 88 35    STY    $35,X
7CA9: 39             RTS
7CAA: 96 00          LDA    $00
7CAC: 81 01          CMPA   #$01
7CAE: 26 61          BNE    $7D11
7CB0: A6 A8 17       LDA    $17,Y
7CB3: 84 1F          ANDA   #$1F
7CB5: 81 06          CMPA   #$06
7CB7: 26 58          BNE    $7D11
7CB9: A6 A8 1B       LDA    $1B,Y
7CBC: 84 7F          ANDA   #$7F
7CBE: 81 02          CMPA   #$02
7CC0: 26 4F          BNE    $7D11
7CC2: E6 02          LDB    $2,X
7CC4: C4 7F          ANDB   #$7F
7CC6: C1 19          CMPB   #$19
7CC8: 27 0E          BEQ    $7CD8
7CCA: C1 1F          CMPB   #$1F
7CCC: 27 0A          BEQ    $7CD8
7CCE: C1 37          CMPB   #$37
7CD0: 27 06          BEQ    $7CD8
7CD2: C1 3A          CMPB   #$3A
7CD4: 27 02          BEQ    $7CD8
7CD6: 20 39          BRA    $7D11
7CD8: 34 20          PSHS   Y
7CDA: 58             ASLB
7CDB: 4F             CLRA
7CDC: 10 8E 6E E0    LDY    #$6EE0
7CE0: 10 AE AB       LDY    D,Y
7CE3: 10 AE A4       LDY    ,Y
7CE6: 10 AE 24       LDY    $4,Y
7CE9: EC A1          LDD    ,Y++
7CEB: 97 07          STA    $07
7CED: D7 09          STB    $09
7CEF: CC 00 06       LDD    #$0006
7CF2: 97 08          STA    $08
7CF4: D7 0B          STB    $0B
7CF6: EC A1          LDD    ,Y++
7CF8: 97 0A          STA    $0A
7CFA: D7 0C          STB    $0C
7CFC: 35 20          PULS   Y
7CFE: BD 7D 92       JSR    $7D92
7D01: 24 0E          BCC    $7D11
7D03: 86 01          LDA    #$01
7D05: A7 A8 1B       STA    $1B,Y
7D08: 86 90          LDA    #$90
7D0A: BD 44 CD       JSR    $44CD
7D0D: 1A 01          ORCC   #$01
7D0F: 20 02          BRA    $7D13
7D11: 1C FE          ANDCC  #$FE
7D13: 39             RTS
7D14: 34 70          PSHS   U,Y,X
7D16: CE 7E 30       LDU    #$7E30
7D19: A6 A8 17       LDA    $17,Y
7D1C: 84 1F          ANDA   #$1F
7D1E: 48             ASLA
7D1F: EE C6          LDU    A,U
7D21: 4F             CLRA
7D22: E6 22          LDB    $2,Y
7D24: C4 7F          ANDB   #$7F
7D26: C1 7F          CMPB   #$7F
7D28: 27 64          BEQ    $7D8E
7D2A: 58             ASLB
7D2B: 49             ROLA
7D2C: EE CB          LDU    D,U
7D2E: A6 C0          LDA    ,U+
7D30: 97 01          STA    $01
7D32: A6 C0          LDA    ,U+
7D34: 97 02          STA    $02
7D36: A6 C0          LDA    ,U+
7D38: 97 03          STA    $03
7D3A: A6 C0          LDA    ,U+
7D3C: 97 04          STA    $04
7D3E: A6 C0          LDA    ,U+
7D40: 97 05          STA    $05
7D42: A6 C0          LDA    ,U+
7D44: 97 06          STA    $06
7D46: E6 02          LDB    $2,X
7D48: C4 7F          ANDB   #$7F
7D4A: C1 7F          CMPB   #$7F
7D4C: 27 40          BEQ    $7D8E
7D4E: 58             ASLB
7D4F: 4F             CLRA
7D50: CE 6E E0       LDU    #$6EE0
7D53: EE CB          LDU    D,U
7D55: 11 83 6F DE    CMPU   #$6FDE
7D59: 27 33          BEQ    $7D8E
7D5B: 34 20          PSHS   Y
7D5D: 10 8E 6A 76    LDY    #$6A76
7D61: A6 01          LDA    $1,X
7D63: A6 A6          LDA    A,Y
7D65: 48             ASLA
7D66: 35 20          PULS   Y
7D68: EE C6          LDU    A,U
7D6A: 11 83 6F EA    CMPU   #$6FEA
7D6E: 27 1E          BEQ    $7D8E
7D70: EE 42          LDU    $2,U
7D72: A6 C0          LDA    ,U+
7D74: 97 07          STA    $07
7D76: 86 00          LDA    #$00
7D78: 97 08          STA    $08
7D7A: A6 C0          LDA    ,U+
7D7C: 97 09          STA    $09
7D7E: A6 C0          LDA    ,U+
7D80: 97 0A          STA    $0A
7D82: 86 04          LDA    #$04
7D84: 97 0B          STA    $0B
7D86: A6 C0          LDA    ,U+
7D88: 97 0C          STA    $0C
7D8A: 1A 01          ORCC   #$01
7D8C: 20 02          BRA    $7D90
7D8E: 1C FE          ANDCC  #$FE
7D90: 35 F0          PULS   X,Y,U,PC
7D92: 96 01          LDA    $01
7D94: D6 04          LDB    $04
7D96: 34 10          PSHS   X
7D98: 1F 21          TFR    Y,X
7D9A: BD 6E 6F       JSR    $6E6F
7D9D: 35 10          PULS   X
7D9F: FD 0A 7A       STD    $0A7A
7DA2: 96 07          LDA    $07
7DA4: D6 0A          LDB    $0A
7DA6: BD 6E 6F       JSR    $6E6F
7DA9: FD 0A 87       STD    $0A87
7DAC: FC 0A 7A       LDD    $0A7A
7DAF: 10 B3 0A 87    CMPD   $0A87
7DB3: 25 0C          BCS    $7DC1
7DB5: FC 0A 7A       LDD    $0A7A
7DB8: B3 0A 87       SUBD   $0A87
7DBB: D1 0A          CMPB   $0A
7DBD: 22 6E          BHI    $7E2D
7DBF: 20 0A          BRA    $7DCB
7DC1: FC 0A 87       LDD    $0A87
7DC4: B3 0A 7A       SUBD   $0A7A
7DC7: D1 04          CMPB   $04
7DC9: 22 62          BHI    $7E2D
7DCB: D6 02          LDB    $02
7DCD: 1D             SEX
7DCE: E3 26          ADDD   $6,Y
7DD0: FD 0A 7C       STD    $0A7C
7DD3: D6 08          LDB    $08
7DD5: 1D             SEX
7DD6: E3 06          ADDD   $6,X
7DD8: FD 0A 89       STD    $0A89
7DDB: FC 0A 7C       LDD    $0A7C
7DDE: 10 B3 0A 89    CMPD   $0A89
7DE2: 25 0C          BCS    $7DF0
7DE4: FC 0A 7C       LDD    $0A7C
7DE7: B3 0A 89       SUBD   $0A89
7DEA: D1 0B          CMPB   $0B
7DEC: 22 3F          BHI    $7E2D
7DEE: 20 0A          BRA    $7DFA
7DF0: FC 0A 89       LDD    $0A89
7DF3: B3 0A 7C       SUBD   $0A7C
7DF6: D1 05          CMPB   $05
7DF8: 22 33          BHI    $7E2D
7DFA: D6 03          LDB    $03
7DFC: 1D             SEX
7DFD: E3 28          ADDD   $8,Y
7DFF: FD 0A 7C       STD    $0A7C
7E02: D6 09          LDB    $09
7E04: 1D             SEX
7E05: E3 08          ADDD   $8,X
7E07: FD 0A 89       STD    $0A89
7E0A: FC 0A 7C       LDD    $0A7C
7E0D: 10 B3 0A 89    CMPD   $0A89
7E11: 25 0C          BCS    $7E1F
7E13: FC 0A 7C       LDD    $0A7C
7E16: B3 0A 89       SUBD   $0A89
7E19: D1 0C          CMPB   $0C
7E1B: 22 10          BHI    $7E2D
7E1D: 20 0A          BRA    $7E29
7E1F: FC 0A 89       LDD    $0A89
7E22: B3 0A 7C       SUBD   $0A7C
7E25: D1 06          CMPB   $06
7E27: 22 04          BHI    $7E2D
7E29: 1A 01          ORCC   #$01
7E2B: 20 02          BRA    $7E2F
7E2D: 1C FE          ANDCC  #$FE
7E2F: 39             RTS
7E30: 7E 50 7E       JMP    $507E
7E33: 88 7E          EORA   #$7E
7E35: 88 7E          EORA   #$7E
7E37: 88 7E          EORA   #$7E
7E39: 98 7E          EORA   $7E
7E3B: AA 7E          ORA    -$2,S
7E3D: F4 7F 2C       ANDB   $7F2C
7E40: 7F 52 7F       CLR    $527F
7E43: 52             FCB    $52
7E44: 7F 5E 7F       CLR    $5E7F
7E47: 5E             FCB    $5E
7E48: 7F 8A 7F       CLR    $8A7F
7E4B: 8A 7F          ORA    #$7F
7E4D: 8A 7F          ORA    #$7F
7E4F: C4 7E          ANDB   #$7E
7E51: 70 7E 70       NEG    $7E70
7E54: 7E 70 7E       JMP    $707E
7E57: 70 7E 76       NEG    $7E76
7E5A: 7E 76 7E       JMP    $767E
7E5D: 76 7E 76       ROR    $7E76
7E60: 7E 76 7E       JMP    $767E
7E63: 76 7E 76       ROR    $7E76
7E66: 7E 76 7E       JMP    $767E
7E69: 76 7E 76       ROR    $7E76
7E6C: 7E 7C 7E       JMP    $7C7E
7E6F: 82 00          SBCA   #$00
7E71: 00 00          NEG    $00
7E73: 00 00          NEG    $00
7E75: 00 FE          NEG    $FE
7E77: F0 FE 18       SUBB   $FE18
7E7A: 30 18          LEAX   -$8,X
7E7C: E0 00          SUBB   $0,X
7E7E: 00 20          NEG    $20
7E80: 14             SEXW
7E81: 14             SEXW
7E82: F0 00 08       SUBB   >$0008
7E85: 18             FCB    $18
7E86: 14             SEXW
7E87: 20 7E          BRA    $7F07
7E89: 92 7E          SBCA   $7E
7E8B: 92 7E          SBCA   $7E
7E8D: 92 7E          SBCA   $7E
7E8F: 70 7E 92       NEG    $7E92
7E92: FE FA FE       LDU    $FAFE
7E95: 16 1C 16       LBRA   $9AAE
7E98: 7E A4 7E       JMP    $A47E
7E9B: 70 7E A4       NEG    $7EA4
7E9E: 7E A4 7E       JMP    $A47E
7EA1: A4 7E          ANDA   -$2,S
7EA3: 70 FE EE       NEG    $FEEE
7EA6: FE 16 34       LDU    $1634
7EA9: 16 7E 70       LBRA   $FD1C
7EAC: 7E 70 7E       JMP    $707E
7EAF: 70 7E 70       NEG    $7E70
7EB2: 7E 70 7E       JMP    $707E
7EB5: 70 7E 70       NEG    $7E70
7EB8: 7E 70 7E       JMP    $707E
7EBB: 70 7E 70       NEG    $7E70
7EBE: 7E 70 7E       JMP    $707E
7EC1: 70 7E 70       NEG    $7E70
7EC4: 7E 70 7E       JMP    $707E
7EC7: 70 7E 70       NEG    $7E70
7ECA: 7E 70 7E       JMP    $707E
7ECD: 70 7E 70       NEG    $7E70
7ED0: 7E 70 7E       JMP    $707E
7ED3: 70 7E 70       NEG    $7E70
7ED6: 7E E8 7E       JMP    $E87E
7ED9: 70 7E 70       NEG    $7E70
7EDC: 7E 70 7E       JMP    $707E
7EDF: EE 7E          LDU    -$2,S
7EE1: EE 7E          LDU    -$2,S
7EE3: EE 7E          LDU    -$2,S
7EE5: EE 7E          LDU    -$2,S
7EE7: EE FA          LDU    [F,S]
7EE9: FC 00 0C       LDD    >$000C
7EEC: 08 06          ASL    $06
7EEE: F1 F1 F1       CMPB   $F1F1
7EF1: 1E 1E          EXG    X,E
7EF3: 1E 7E          EXG    V,E
7EF5: 70 7E 70       NEG    $7E70
7EF8: 7E 70 7E       JMP    $707E
7EFB: 70 7E 70       NEG    $7E70
7EFE: 7E 70 7E       JMP    $707E
7F01: 70 7E 70       NEG    $7E70
7F04: 7E 70 7E       JMP    $707E
7F07: 70 7E 70       NEG    $7E70
7F0A: 7E 70 7E       JMP    $707E
7F0D: 70 7E 70       NEG    $7E70
7F10: 7E 70 7E       JMP    $707E
7F13: 70 7E 70       NEG    $7E70
7F16: 7F 26 7F       CLR    $267F
7F19: 26 7F          BNE    $7F9A
7F1B: 26 7F          BNE    $7F9C
7F1D: 26 7F          BNE    $7F9E
7F1F: 26 7E          BNE    $7F9F
7F21: 70 7E 70       NEG    $7E70
7F24: 7E 70 FA       JMP    $70FA
7F27: FA FE 0C       ORB    $FE0C
7F2A: 0C 08          INC    $08
7F2C: 7E 70 7E       JMP    $707E
7F2F: 70 7E 70       NEG    $7E70
7F32: 7E 70 7E       JMP    $707E
7F35: 70 7E 70       NEG    $7E70
7F38: 7E 70 7E       JMP    $707E
7F3B: 70 7E 70       NEG    $7E70
7F3E: 7E 70 7F       JMP    $707F
7F41: 4C             INCA
7F42: 7E 70 7E       JMP    $707E
7F45: 70 7E 70       NEG    $7E70
7F48: 7E 70 7E       JMP    $707E
7F4B: 70 F4 FC       NEG    $F4FC
7F4E: 00 18          NEG    $18
7F50: 08 08          ASL    $08
7F52: 7E 70 7F       JMP    $707F
7F55: 58             ASLB
7F56: 7E 70 90       JMP    $7090
7F59: F0 B0 18       SUBB   $B018
7F5C: 18             FCB    $18
7F5D: 10 7E          FCB    $10,$7E
7F5F: 70             FCB    $70
7F60: 7E             FCB    $7E
7F61: 70             FCB    $70
7F62: 7F             FCB    $7F
7F63: 6C             FCB    $6C
7F64: 7F             FCB    $7F
7F65: 72             FCB    $72
7F66: 7F             FCB    $7F
7F67: 78             FCB    $78
7F68: 7F             FCB    $7F
7F69: 7E             FCB    $7E
7F6A: 7F             FCB    $7F
7F6B: 84 10 F8       ANDD   #$10F8
7F6E: DB 14          ADDB   $14
7F70: 0C 25          INC    $25
7F72: 14             SEXW
7F73: F0 DB 14       SUBB   $DB14
7F76: 14             SEXW
7F77: 25 18          BCS    $7F91
7F79: E8 DB          EORB   [D,U]
7F7B: 14             SEXW
7F7C: 1C 25          ANDCC  #$25
7F7E: 1C E0          ANDCC  #$E0
7F80: DB 14          ADDB   $14
7F82: 24 25          BCC    $7FA9
7F84: 20 D8          BRA    $7F5E
7F86: DB 14          ADDB   $14
7F88: 2C 25          BGE    $7FAF
7F8A: 7E 70 7E       JMP    $707E
7F8D: 70 7E 70       NEG    $7E70
7F90: 7E 70 7E       JMP    $707E
7F93: 70 7E 70       NEG    $7E70
7F96: 7E 70 7E       JMP    $707E
7F99: 70 7E 70       NEG    $7E70
7F9C: 7E 70 7E       JMP    $707E
7F9F: 70 7E 70       NEG    $7E70
7FA2: 7E 70 7E       JMP    $707E
7FA5: 70 7E 70       NEG    $7E70
7FA8: 7E 70 7E       JMP    $707E
7FAB: 70 7E 70       NEG    $7E70
7FAE: 7E 70 7F       JMP    $707F
7FB1: BE 7E 70       LDX    $7E70
7FB4: 7E 70 7F       JMP    $707F
7FB7: B8 F4 FC       EORA   $F4FC
7FBA: 00 18          NEG    $18
7FBC: 08 08          ASL    $08
7FBE: F6 FD 00       LDB    $FD00
7FC1: 0F 05          CLR    $05
7FC3: 16 7F D6       LBRA   $FF9C
7FC6: 7E 70 7E       JMP    $707E
7FC9: 70 7E 70       NEG    $7E70
7FCC: 7E 70 7E       JMP    $707E
7FCF: 70 7E 70       NEG    $7E70
7FD2: 7E 70 7E       JMP    $707E
7FD5: 70 FC FC       NEG    $FCFC
7FD8: FC 08 08       LDD    $0808
7FDB: 08 DC          ASL    $DC
7FDD: 96 36          LDA    $36
7FDF: D6 38          LDB    $38
7FE1: 10 83 03 01    CMPD   #$0301
7FE5: 26 13          BNE    $7FFA
7FE7: 7D 09 EF       TST    $09EF
7FEA: 26 0E          BNE    $7FFA
7FEC: DC 3C          LDD    $3C
7FEE: 10 83 1A 05    CMPD   #$1A05
7FF2: 24 06          BCC    $7FFA
7FF4: CC 01 00       LDD    #$0100
7FF7: 7E 4E 80       JMP    $4E80
7FFA: F6 0A 56       LDB    $0A56
7FFD: 7E 4E 79       JMP    $4E79
