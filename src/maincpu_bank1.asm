4000: 7E 41 00    JMP    $4100
4003: 7E 41 1E    JMP    $411E
4006: 7E 5C 88    JMP    $5C88
4009: 7E 5C EE    JMP    $5CEE
400C: 7E 5D D0    JMP    $5DD0
400F: 7E 5D DA    JMP    $5DDA
4012: 7E 5E 19    JMP    $5E19
4015: 7E 56 F5    JMP    $56F5
4018: 7E 57 F6    JMP    $57F6
401B: 7E 51 9C    JMP    $519C
401E: 7E 43 13    JMP    $4313
4021: 7E 4A F7    JMP    $4AF7
4024: 7E 4B 7B    JMP    $4B7B
4027: 7E 4C 0E    JMP    $4C0E
402A: 7E 4D 90    JMP    $4D90
402D: 7E 50 61    JMP    $5061
4030: 7E 5E DE    JMP    $5EDE
4033: 7E 54 FF    JMP    $54FF
4036: 7E 5E 91    JMP    $5E91
4039: 7E 5B 90    JMP    $5B90
403C: 7E 51 3E    JMP    $513E
403F: 7E 51 2B    JMP    $512B
4042: 7E 44 66    JMP    $4466
4045: 7E 4F 7E    JMP    $4F7E
4048: 7E 4F FD    JMP    $4FFD
404B: 7E 4E 4B    JMP    $4E4B
404E: 7E 53 0A    JMP    $530A
4051: 7E 52 9F    JMP    $529F
4054: 7E 51 71    JMP    $5171
4057: 7E 5E 55    JMP    $5E55
405A: 7E 5F 90    JMP    $5F90
405D: 7E 60 FB    JMP    $60FB
4060: 7E 61 69    JMP    $6169
4063: 7E 50 A7    JMP    $50A7
4066: 7E 50 A7    JMP    $50A7
4069: 7E 50 A7    JMP    $50A7
406C: 7E 42 0B    JMP    $420B
406F: 7E 61 BA    JMP    $61BA
4072: 7E 61 D4    JMP    $61D4
4075: 7E 5B FD    JMP    $5BFD
4078: 7E 5C 32    JMP    $5C32
407B: 7E 61 D5    JMP    $61D5
407E: 7E 63 76    JMP    $6376
4081: 7E 63 DD    JMP    $63DD
4084: 7E 64 11    JMP    $6411
4087: 7E 62 46    JMP    $6246
408A: 7E 64 86    JMP    $6486
408D: 7E 62 81    JMP    $6281
4090: 7E 63 0D    JMP    $630D
4093: 7E 64 AA    JMP    $64AA
4096: 7E 64 AA    JMP    $64AA
4099: 7E 42 79    JMP    $4279
409C: 7E 65 01    JMP    $6501
409F: 7E 65 26    JMP    $6526
40A2: 7E 42 D1    JMP    $42D1
40A5: 7E 64 AA    JMP    $64AA
40A8: 7E 64 AB    JMP    $64AB
40AB: 7E 64 CD    JMP    $64CD
40AE: 7E 5D DC    JMP    $5DDC
40B1: 7E 72 9C    JMP    $729C
40B4: 7E 72 9D    JMP    $729D
40B7: 7E 6D 63    JMP    $6D63
40BA: 7E 6D D2    JMP    $6DD2
40BD: 7E 6E 59    JMP    $6E59
40C0: 7E 43 C3    JMP    $43C3
40C3: 7E 73 5E    JMP    $735E
40C6: 7E 75 39    JMP    $7539
40C9: 7E 75 5F    JMP    $755F
40CC: 7E 75 9C    JMP    $759C
40CF: 7E 66 CC    JMP    $66CC
40D2: 7E 77 57    JMP    $7757
40D5: 7E 76 74    JMP    $7674
40D8: 7E 76 2F    JMP    $762F
40DB: 7E 75 A9    JMP    $75A9
40DE: 7E 75 EC    JMP    $75EC
40E1: 7E 76 B2    JMP    $76B2
40E4: 7E 76 FE    JMP    $76FE
40E7: 00 00       NEG    $00
40E9: 00 00       NEG    $00
40EB: 00 00       NEG    $00
40ED: 00 00       NEG    $00
40EF: 00 00       NEG    $00
40F1: 00 00       NEG    $00
40F3: 00 00       NEG    $00
40F5: 00 00       NEG    $00
40F7: 00 00       NEG    $00
40F9: 00 00       NEG    $00
40FB: 00 00       NEG    $00
40FD: 00 00       NEG    $00
40FF: 00 34       NEG    $34
4101: 26 10       BNE    $4113
4103: 8E 03 81    LDX    #$0381
4106: B6 03 A1    LDA    $03A1
4109: 81 20       CMPA   #$20
410B: 24 0F       BCC    $411C
410D: E6 02       LDB    $2,X
410F: C4 7F       ANDB   #$7F
4111: C1 7F       CMPB   #$7F
4113: 27 07       BEQ    $411C
4115: AF A6       STX    A,Y
4117: 8B 02       ADDA   #$02
4119: B7 03 A1    STA    $03A1
411C: 35 A6       PULS   D,Y,PC
411E: 34 40       PSHS   U
4120: 96 3A       LDA    $3A
4122: 8A 10       ORA    #$10
4124: 97 3A       STA    $3A
4126: B7 38 08    STA    $3808
4129: B6 38 02    LDA    $3802
412C: 84 10       ANDA   #$10
412E: 26 F9       BNE    $4129
4130: 7F 20 00    CLR    $2000
4133: DC 3C       LDD    $3C
4135: FD 21 F9    STD    $21F9
4138: DC 3F       LDD    $3F
413A: FD 21 FB    STD    $21FB
413D: 96 2B       LDA    $2B
413F: B7 21 FE    STA    $21FE
4142: 7F 21 FD    CLR    $21FD
4145: 7D 03 A1    TST    $03A1
4148: 10 27 00 A7 LBEQ   $41F3
414C: 10 8E 03 81 LDY    #$0381
4150: CE 20 01    LDU    #$2001
4153: 5F          CLRB
4154: AE A5       LDX    B,Y
4156: A6 01       LDA    $1,X
4158: A7 C4       STA    ,U
415A: A6 02       LDA    $2,X
415C: A7 41       STA    $1,U
415E: A6 04       LDA    $4,X
4160: A7 42       STA    $2,U
4162: A6 05       LDA    $5,X
4164: A7 43       STA    $3,U
4166: A6 06       LDA    $6,X
4168: A7 44       STA    $4,U
416A: A6 07       LDA    $7,X
416C: A7 45       STA    $5,U
416E: A6 08       LDA    $8,X
4170: A7 46       STA    $6,U
4172: A6 09       LDA    $9,X
4174: A7 47       STA    $7,U
4176: A6 88 16    LDA    $16,X
4179: 84 06       ANDA   #$06
417B: 27 12       BEQ    $418F
417D: AE 88 2D    LDX    $2D,X
4180: A6 01       LDA    $1,X
4182: A7 C4       STA    ,U
4184: A6 88 16    LDA    $16,X
4187: 84 02       ANDA   #$02
4189: 27 04       BEQ    $418F
418B: A6 02       LDA    $2,X
418D: A7 41       STA    $1,U
418F: AE A5       LDX    B,Y
4191: A6 88 1B    LDA    $1B,X
4194: 84 3F       ANDA   #$3F
4196: 81 06       CMPA   #$06
4198: 27 16       BEQ    $41B0
419A: 81 0A       CMPA   #$0A
419C: 27 12       BEQ    $41B0
419E: 81 08       CMPA   #$08
41A0: 27 0E       BEQ    $41B0
41A2: 81 07       CMPA   #$07
41A4: 26 28       BNE    $41CE
41A6: A6 01       LDA    $1,X
41A8: 81 04       CMPA   #$04
41AA: 25 22       BCS    $41CE
41AC: 81 08       CMPA   #$08
41AE: 24 1E       BCC    $41CE
41B0: A6 01       LDA    $1,X
41B2: 81 02       CMPA   #$02
41B4: 24 09       BCC    $41BF
41B6: A6 88 16    LDA    $16,X
41B9: 84 06       ANDA   #$06
41BB: 27 11       BEQ    $41CE
41BD: 20 03       BRA    $41C2
41BF: AE 88 2D    LDX    $2D,X
41C2: A6 01       LDA    $1,X
41C4: 81 00       CMPA   #$00
41C6: 27 06       BEQ    $41CE
41C8: A6 C4       LDA    ,U
41CA: 8A 80       ORA    #$80
41CC: A7 C4       STA    ,U
41CE: A6 01       LDA    $1,X
41D0: 81 02       CMPA   #$02
41D2: 24 0F       BCC    $41E3
41D4: AE 88 2D    LDX    $2D,X
41D7: A6 01       LDA    $1,X
41D9: 81 02       CMPA   #$02
41DB: 24 06       BCC    $41E3
41DD: A6 C4       LDA    ,U
41DF: 84 7F       ANDA   #$7F
41E1: A7 C4       STA    ,U
41E3: 33 48       LEAU   $8,U
41E5: CB 02       ADDB   #$02
41E7: F1 03 A1    CMPB   $03A1
41EA: 10 25 FF 66 LBCS   $4154
41EE: 1E 03       EXG    D,U
41F0: F7 20 00    STB    $2000
41F3: 96 3A       LDA    $3A
41F5: 84 EF       ANDA   #$EF
41F7: 97 3A       STA    $3A
41F9: B7 38 08    STA    $3808
41FC: B6 38 02    LDA    $3802
41FF: 84 10       ANDA   #$10
4201: 27 F9       BEQ    $41FC
4203: B7 38 0F    STA    $380F
4206: 7F 03 A1    CLR    $03A1
4209: 35 C0       PULS   U,PC
420B: 34 76       PSHS   U,Y,X,D
420D: 10 8E 42 CD LDY    #$42CD
4211: A6 88 1B    LDA    $1B,X
4214: 2B 31       BMI    $4247
4216: A6 88 15    LDA    $15,X
4219: 85 40       BITA   #$40
421B: 10 26 00 58 LBNE   $4277
421F: BD FE 64    JSR    $FE64
4222: A6 A4       LDA    ,Y
4224: AA 03       ORA    $3,X
4226: A7 02       STA    $2,X
4228: 86 08       LDA    #$08
422A: A7 88 19    STA    $19,X
422D: A6 88 21    LDA    $21,X
4230: 27 08       BEQ    $423A
4232: BD 5C 32    JSR    $5C32
4235: 86 01       LDA    #$01
4237: A7 A8 1B    STA    $1B,Y
423A: A6 88 16    LDA    $16,X
423D: 84 F9       ANDA   #$F9
423F: A7 88 16    STA    $16,X
4242: 86 97       LDA    #$97
4244: BD 64 77    JSR    $6477
4247: 6A 88 19    DEC    $19,X
424A: 26 15       BNE    $4261
424C: 6C 88 18    INC    $18,X
424F: A6 88 18    LDA    $18,X
4252: 81 04       CMPA   #$04
4254: 24 0D       BCC    $4263
4256: E6 A6       LDB    A,Y
4258: EA 03       ORB    $3,X
425A: E7 02       STB    $2,X
425C: C6 08       LDB    #$08
425E: E7 88 19    STB    $19,X
4261: 20 14       BRA    $4277
4263: 6F 84       CLR    ,X
4265: A6 88 4C    LDA    $4C,X
4268: 8A 80       ORA    #$80
426A: 6D 88 48    TST    $48,X
426D: 26 02       BNE    $4271
426F: 8A 20       ORA    #$20
4271: A7 88 4C    STA    $4C,X
4274: BD 42 79    JSR    $4279
4277: 35 F6       PULS   D,X,Y,U,PC
4279: 34 30       PSHS   Y,X
427B: 96 36       LDA    $36
427D: 81 03       CMPA   #$03
427F: 26 48       BNE    $42C9
4281: 0D 37       TST    $37
4283: 27 44       BEQ    $42C9
4285: 0F 2A       CLR    $2A
4287: FC 0E 5D    LDD    $0E5D
428A: 27 3D       BEQ    $42C9
428C: 8C 03 A2    CMPX   #$03A2
428F: 27 07       BEQ    $4298
4291: 0C 2A       INC    $2A
4293: 8E 03 A2    LDX    #$03A2
4296: 20 03       BRA    $429B
4298: 30 88 5E    LEAX   $5E,X
429B: 6D 88 4C    TST    $4C,X
429E: 2B 29       BMI    $42C9
42A0: A6 88 1B    LDA    $1B,X
42A3: 84 3F       ANDA   #$3F
42A5: 81 0B       CMPA   #$0B
42A7: 27 20       BEQ    $42C9
42A9: 81 01       CMPA   #$01
42AB: 26 07       BNE    $42B4
42AD: A6 88 22    LDA    $22,X
42B0: 81 08       CMPA   #$08
42B2: 27 15       BEQ    $42C9
42B4: A6 88 4C    LDA    $4C,X
42B7: 8A 60       ORA    #$60
42B9: A7 88 4C    STA    $4C,X
42BC: 96 2A       LDA    $2A
42BE: 4C          INCA
42BF: 88 FF       EORA   #$FF
42C1: 94 29       ANDA   $29
42C3: 97 29       STA    $29
42C5: 1A 01       ORCC   #$01
42C7: 20 02       BRA    $42CB
42C9: 1C FE       ANDCC  #$FE
42CB: 35 B0       PULS   X,Y,PC
42CD: 63 64       COM    $4,S
42CF: 65 65 34    EIM    #$65;-$C,Y
42D2: 76 10 8E    ROR    $108E
42D5: 43          COMA
42D6: 0F A6       CLR    $A6
42D8: 88 1B       EORA   #$1B
42DA: 2B 0E       BMI    $42EA
42DC: BD FE 64    JSR    $FE64
42DF: A6 A0       LDA    ,Y+
42E1: AA 03       ORA    $3,X
42E3: A7 02       STA    $2,X
42E5: A6 A4       LDA    ,Y
42E7: A7 88 19    STA    $19,X
42EA: 6A 88 19    DEC    $19,X
42ED: 26 1E       BNE    $430D
42EF: 6C 88 18    INC    $18,X
42F2: A6 88 18    LDA    $18,X
42F5: 81 02       CMPA   #$02
42F7: 24 0F       BCC    $4308
42F9: 48          ASLA
42FA: E6 A6       LDB    A,Y
42FC: EA 03       ORB    $3,X
42FE: E7 02       STB    $2,X
4300: 4C          INCA
4301: E6 A6       LDB    A,Y
4303: E7 88 19    STB    $19,X
4306: 20 05       BRA    $430D
4308: 86 00       LDA    #$00
430A: A7 88 1B    STA    $1B,X
430D: 35 F6       PULS   D,X,Y,U,PC
430F: 39          RTS
4310: 03 38       COM    $38
4312: 03 A6       COM    $A6
4314: 88 4B       EORA   #$4B
4316: 27 01       BEQ    $4319
4318: 39          RTS
4319: BD FB 8A    JSR    $FB8A
431C: 25 FA       BCS    $4318
431E: A6 84       LDA    ,X
4320: 85 40       BITA   #$40
4322: 27 F4       BEQ    $4318
4324: A6 88 1B    LDA    $1B,X
4327: 2B 6E       BMI    $4397
4329: BD FE 64    JSR    $FE64
432C: 86 07       LDA    #$07
432E: AA 03       ORA    $3,X
4330: A7 02       STA    $2,X
4332: A6 88 15    LDA    $15,X
4335: 84 BF       ANDA   #$BF
4337: A7 88 15    STA    $15,X
433A: A6 84       LDA    ,X
433C: 84 F0       ANDA   #$F0
433E: 8A 01       ORA    #$01
4340: A7 84       STA    ,X
4342: 96 55       LDA    $55
4344: 48          ASLA
4345: 8B 0E       ADDA   #$0E
4347: A7 0E       STA    $E,X
4349: BD F9 3C    JSR    $F93C
434C: BD FC 1E    JSR    $FC1E
434F: A6 88 13    LDA    $13,X
4352: 84 DF       ANDA   #$DF
4354: A7 88 13    STA    $13,X
4357: A6 88 38    LDA    $38,X
435A: 84 0F       ANDA   #$0F
435C: 81 0E       CMPA   #$0E
435E: 27 06       BEQ    $4366
4360: 81 06       CMPA   #$06
4362: 27 33       BEQ    $4397
4364: 26 07       BNE    $436D
4366: A6 88 52    LDA    $52,X
4369: 81 04       CMPA   #$04
436B: 25 2A       BCS    $4397
436D: BD 43 D6    JSR    $43D6
4370: 25 25       BCS    $4397
4372: A6 88 39    LDA    $39,X
4375: 84 7F       ANDA   #$7F
4377: 81 06       CMPA   #$06
4379: 25 02       BCS    $437D
437B: 86 05       LDA    #$05
437D: 10 8E 43 D0 LDY    #$43D0
4381: E6 A6       LDB    A,Y
4383: E7 88 38    STB    $38,X
4386: A6 88 17    LDA    $17,X
4389: 2A 0C       BPL    $4397
438B: B5 09 F1    BITA   $09F1
438E: 2B 07       BMI    $4397
4390: 86 09       LDA    #$09
4392: A7 88 38    STA    $38,X
4395: 20 0C       BRA    $43A3
4397: B6 09 F2    LDA    $09F2
439A: 84 C0       ANDA   #$C0
439C: 27 05       BEQ    $43A3
439E: 86 0C       LDA    #$0C
43A0: A7 88 38    STA    $38,X
43A3: A6 88 38    LDA    $38,X
43A6: 84 0F       ANDA   #$0F
43A8: 48          ASLA
43A9: 10 8E 43 B0 LDY    #$43B0
43AD: AD B6       JSR    [A,Y]
43AF: 39          RTS
43B0: 43          COMA
43B1: F4 45 02    ANDB   $4502
43B4: 45          FCB    $45
43B5: 96 46       LDA    $46
43B7: 21 46       BRN    $43FF
43B9: 9F 46       STX    $46
43BB: C9 46       ADCB   #$46
43BD: D2 48       SBCB   $48
43BF: 5B          FCB    $5B
43C0: 48          ASLA
43C1: 9B 48       ADDA   $48
43C3: B6 48 B6    LDA    $48B6
43C6: 48          ASLA
43C7: BA 48 E8    ORA    $48E8
43CA: 4A          DECA
43CB: 0E 4A       JMP    $4A
43CD: 0E 4A       JMP    $4A
43CF: 7A 00 06    DEC    >$0006
43D2: 07 07       ASR    $07
43D4: 07 08       ASR    $08
43D6: A6 88 39    LDA    $39,X
43D9: 84 7F       ANDA   #$7F
43DB: 81 01       CMPA   #$01
43DD: 26 12       BNE    $43F1
43DF: BD 5B B6    JSR    $5BB6
43E2: 26 0D       BNE    $43F1
43E4: BD 5B 90    JSR    $5B90
43E7: 26 08       BNE    $43F1
43E9: 86 06       LDA    #$06
43EB: A7 88 38    STA    $38,X
43EE: 1A 01       ORCC   #$01
43F0: 39          RTS
43F1: 1C FE       ANDCC  #$FE
43F3: 39          RTS
43F4: BD 59 51    JSR    $5951
43F7: 25 16       BCS    $440F
43F9: BD 5B 07    JSR    $5B07
43FC: 25 11       BCS    $440F
43FE: BD FB 94    JSR    $FB94
4401: BD 5A 36    JSR    $5A36
4404: 10 25 00 80 LBCS   $4488
4408: A6 88 38    LDA    $38,X
440B: 84 0F       ANDA   #$0F
440D: 27 01       BEQ    $4410
440F: 39          RTS
4410: A6 88 38    LDA    $38,X
4413: 10 2B 00 8F LBMI   $44A6
4417: B6 0E 48    LDA    $0E48
441A: 81 14       CMPA   #$14
441C: 10 25 00 68 LBCS   $4488
4420: B6 0E 49    LDA    $0E49
4423: 26 10       BNE    $4435
4425: B6 0E 48    LDA    $0E48
4428: 81 16       CMPA   #$16
442A: 10 25 00 3F LBCS   $446D
442E: B6 0E 4A    LDA    $0E4A
4431: 84 01       ANDA   #$01
4433: 20 29       BRA    $445E
4435: 81 02       CMPA   #$02
4437: 24 02       BCC    $443B
4439: 20 F3       BRA    $442E
443B: B6 0E 48    LDA    $0E48
443E: 81 34       CMPA   #$34
4440: 24 15       BCC    $4457
4442: 81 24       CMPA   #$24
4444: 24 07       BCC    $444D
4446: B6 0E 4A    LDA    $0E4A
4449: 88 01       EORA   #$01
444B: 20 0D       BRA    $445A
444D: B6 0E 4A    LDA    $0E4A
4450: 84 02       ANDA   #$02
4452: 44          LSRA
4453: 8B 06       ADDA   #$06
4455: 20 07       BRA    $445E
4457: B6 0E 4A    LDA    $0E4A
445A: 84 03       ANDA   #$03
445C: 8B 02       ADDA   #$02
445E: 10 8E 44 B0 LDY    #$44B0
4462: A6 A6       LDA    A,Y
4464: A7 0D       STA    $D,X
4466: 96 55       LDA    $55
4468: 48          ASLA
4469: 8B 0E       ADDA   #$0E
446B: A7 0E       STA    $E,X
446D: BD 53 2C    JSR    $532C
4470: 25 15       BCS    $4487
4472: BD 52 9F    JSR    $529F
4475: BD F9 3C    JSR    $F93C
4478: BD FC 1E    JSR    $FC1E
447B: BD 44 B8    JSR    $44B8
447E: BD 54 86    JSR    $5486
4481: BD FB A8    JSR    $FBA8
4484: BD FB 9E    JSR    $FB9E
4487: 39          RTS
4488: BD 51 2B    JSR    $512B
448B: BD 51 3E    JSR    $513E
448E: 96 55       LDA    $55
4490: 48          ASLA
4491: 8B 12       ADDA   #$12
4493: A7 0E       STA    $E,X
4495: BD 53 2C    JSR    $532C
4498: 25 15       BCS    $44AF
449A: BD 52 9F    JSR    $529F
449D: BD F9 3C    JSR    $F93C
44A0: BD FC 1E    JSR    $FC1E
44A3: BD 44 B8    JSR    $44B8
44A6: BD 54 86    JSR    $5486
44A9: BD FB A8    JSR    $FBA8
44AC: BD FB 9E    JSR    $FB9E
44AF: 39          RTS
44B0: 40          NEGA
44B1: C0 20       SUBB   #$20
44B3: E0 60       SUBB   $0,S
44B5: A0 00       SUBA   $0,X
44B7: 80 B6       SUBA   #$B6
44B9: 0B 4B 84    TIM    #$4B;$84
44BC: 0F 27       CLR    $27
44BE: 3E          FCB    $3E
44BF: C6 0E       LDB    #$0E
44C1: E7 88 38    STB    $38,X
44C4: 5F          CLRB
44C5: 44          LSRA
44C6: 25 09       BCS    $44D1
44C8: 5C          INCB
44C9: 44          LSRA
44CA: 25 05       BCS    $44D1
44CC: 5C          INCB
44CD: 44          LSRA
44CE: 25 01       BCS    $44D1
44D0: 5C          INCB
44D1: 10 8E 44 FE LDY    #$44FE
44D5: A6 A5       LDA    B,Y
44D7: A7 0D       STA    $D,X
44D9: E7 88 54    STB    $54,X
44DC: 10 BE 0E 4B LDY    $0E4B
44E0: A6 A8 31    LDA    $31,Y
44E3: 84 18       ANDA   #$18
44E5: 27 16       BEQ    $44FD
44E7: B6 0E 4A    LDA    $0E4A
44EA: C6 3E       LDB    #$3E
44EC: 84 01       ANDA   #$01
44EE: 27 02       BEQ    $44F2
44F0: C6 C2       LDB    #$C2
44F2: E7 0D       STB    $D,X
44F4: 49          ROLA
44F5: 49          ROLA
44F6: 84 01       ANDA   #$01
44F8: 88 01       EORA   #$01
44FA: A7 88 54    STA    $54,X
44FD: 39          RTS
44FE: C2 80       SBCB   #$80
4500: 3E          FCB    $3E
4501: 00 10       NEG    $10
4503: BE 0E 4B    LDX    $0E4B
4506: A6 A8 1B    LDA    $1B,Y
4509: 84 7F       ANDA   #$7F
450B: 81 06       CMPA   #$06
450D: 27 10       BEQ    $451F
450F: 81 08       CMPA   #$08
4511: 27 0C       BEQ    $451F
4513: 81 09       CMPA   #$09
4515: 27 08       BEQ    $451F
4517: 81 0C       CMPA   #$0C
4519: 27 04       BEQ    $451F
451B: 6F 88 38    CLR    $38,X
451E: 39          RTS
451F: A6 88 38    LDA    $38,X
4522: 2B 0B       BMI    $452F
4524: BD 51 45    JSR    $5145
4527: A6 88 38    LDA    $38,X
452A: 8A 80       ORA    #$80
452C: A7 88 38    STA    $38,X
452F: BD 5B 90    JSR    $5B90
4532: 27 07       BEQ    $453B
4534: B6 0E 48    LDA    $0E48
4537: 81 08       CMPA   #$08
4539: 24 1B       BCC    $4556
453B: B6 0E 49    LDA    $0E49
453E: 81 10       CMPA   #$10
4540: 25 0E       BCS    $4550
4542: BD 51 2B    JSR    $512B
4545: BD 5B 90    JSR    $5B90
4548: 27 06       BEQ    $4550
454A: A6 0D       LDA    $D,X
454C: 88 80       EORA   #$80
454E: A7 0D       STA    $D,X
4550: BD 44 66    JSR    $4466
4553: 7E 45 89    JMP    $4589
4556: B6 0E 49    LDA    $0E49
4559: 81 02       CMPA   #$02
455B: 24 0F       BCC    $456C
455D: A6 88 38    LDA    $38,X
4560: 84 0F       ANDA   #$0F
4562: 81 06       CMPA   #$06
4564: 27 03       BEQ    $4569
4566: 6F 88 38    CLR    $38,X
4569: 6F 0E       CLR    $E,X
456B: 39          RTS
456C: C6 40       LDB    #$40
456E: F0 0E 49    SUBB   $0E49
4571: B6 0E 4A    LDA    $0E4A
4574: 85 02       BITA   #$02
4576: 27 07       BEQ    $457F
4578: 50          NEGB
4579: C4 7F       ANDB   #$7F
457B: 26 02       BNE    $457F
457D: C6 80       LDB    #$80
457F: 85 01       BITA   #$01
4581: 26 01       BNE    $4584
4583: 50          NEGB
4584: E7 0D       STB    $D,X
4586: BD 44 66    JSR    $4466
4589: A6 88 16    LDA    $16,X
458C: 84 20       ANDA   #$20
458E: 27 05       BEQ    $4595
4590: 86 02       LDA    #$02
4592: A7 88 38    STA    $38,X
4595: 39          RTS
4596: A6 88 38    LDA    $38,X
4599: 2B 0B       BMI    $45A6
459B: BD 51 45    JSR    $5145
459E: A6 88 38    LDA    $38,X
45A1: 8A 80       ORA    #$80
45A3: A7 88 38    STA    $38,X
45A6: BD 5B 90    JSR    $5B90
45A9: 26 07       BNE    $45B2
45AB: B6 0E 48    LDA    $0E48
45AE: 81 08       CMPA   #$08
45B0: 24 21       BCC    $45D3
45B2: B6 0E 49    LDA    $0E49
45B5: 81 10       CMPA   #$10
45B7: 25 0E       BCS    $45C7
45B9: BD 51 2B    JSR    $512B
45BC: BD 5B 90    JSR    $5B90
45BF: 26 06       BNE    $45C7
45C1: A6 0D       LDA    $D,X
45C3: 88 80       EORA   #$80
45C5: A7 0D       STA    $D,X
45C7: BD 44 66    JSR    $4466
45CA: B6 0B 4B    LDA    $0B4B
45CD: 84 0F       ANDA   #$0F
45CF: 27 4F       BEQ    $4620
45D1: 20 4A       BRA    $461D
45D3: B6 0E 49    LDA    $0E49
45D6: 81 02       CMPA   #$02
45D8: 24 18       BCC    $45F2
45DA: 10 BE 0E 4B LDY    $0E4B
45DE: A6 A8 1B    LDA    $1B,Y
45E1: C6 04       LDB    #$04
45E3: 84 0F       ANDA   #$0F
45E5: 81 06       CMPA   #$06
45E7: 27 05       BEQ    $45EE
45E9: 81 08       CMPA   #$08
45EB: 27 01       BEQ    $45EE
45ED: 5F          CLRB
45EE: E7 88 38    STB    $38,X
45F1: 39          RTS
45F2: F6 0E 48    LDB    $0E48
45F5: C1 40       CMPB   #$40
45F7: 25 02       BCS    $45FB
45F9: C6 40       LDB    #$40
45FB: D7 00       STB    $00
45FD: 86 40       LDA    #$40
45FF: 90 00       SUBA   $00
4601: 97 00       STA    $00
4603: B6 0E 4A    LDA    $0E4A
4606: D6 00       LDB    $00
4608: 85 02       BITA   #$02
460A: 27 05       BEQ    $4611
460C: C8 FF       EORB   #$FF
460E: 5C          INCB
460F: C4 7F       ANDB   #$7F
4611: 85 01       BITA   #$01
4613: 26 03       BNE    $4618
4615: C8 FF       EORB   #$FF
4617: 5C          INCB
4618: E7 0D       STB    $D,X
461A: BD 44 66    JSR    $4466
461D: 6F 88 38    CLR    $38,X
4620: 39          RTS
4621: A6 88 38    LDA    $38,X
4624: 85 10       BITA   #$10
4626: 26 13       BNE    $463B
4628: 8A 10       ORA    #$10
462A: A7 88 38    STA    $38,X
462D: EC 88 41    LDD    $41,X
4630: DD 00       STD    $00
4632: BD FB 44    JSR    $FB44
4635: A7 0D       STA    $D,X
4637: 84 80       ANDA   #$80
4639: A7 03       STA    $3,X
463B: 96 55       LDA    $55
463D: 48          ASLA
463E: 8B 18       ADDA   #$18
4640: A7 0E       STA    $E,X
4642: BD 44 6D    JSR    $446D
4645: EC 88 41    LDD    $41,X
4648: DD 00       STD    $00
464A: BD FB 4E    JSR    $FB4E
464D: 0D 01       TST    $01
464F: 26 46       BNE    $4697
4651: 0D 03       TST    $03
4653: 26 42       BNE    $4697
4655: 96 02       LDA    $02
4657: D6 04       LDB    $04
4659: 81 14       CMPA   #$14
465B: 24 1D       BCC    $467A
465D: C1 04       CMPB   #$04
465F: 24 23       BCC    $4684
4661: 10 AE 88 41 LDY    $41,X
4665: A6 A8 17    LDA    $17,Y
4668: 84 0F       ANDA   #$0F
466A: 27 08       BEQ    $4674
466C: 81 04       CMPA   #$04
466E: 27 04       BEQ    $4674
4670: 86 0D       LDA    #$0D
4672: 20 02       BRA    $4676
4674: 86 16       LDA    #$16
4676: A7 88 1B    STA    $1B,X
4679: 39          RTS
467A: C1 04       CMPB   #$04
467C: 24 19       BCC    $4697
467E: 96 00       LDA    $00
4680: 84 01       ANDA   #$01
4682: 20 07       BRA    $468B
4684: 96 00       LDA    $00
4686: 44          LSRA
4687: 84 01       ANDA   #$01
4689: 8B 02       ADDA   #$02
468B: 10 8E 46 9B LDY    #$469B
468F: E6 A6       LDB    A,Y
4691: E7 0D       STB    $D,X
4693: C4 80       ANDB   #$80
4695: E7 03       STB    $3,X
4697: BD 5D FC    JSR    $5DFC
469A: 39          RTS
469B: 40          NEGA
469C: C0 00       SUBB   #$00
469E: 80 10       SUBA   #$10
46A0: BE 0E 4B    LDX    $0E4B
46A3: A6 A8 1B    LDA    $1B,Y
46A6: 84 3F       ANDA   #$3F
46A8: 81 00       CMPA   #$00
46AA: 27 14       BEQ    $46C0
46AC: 81 0A       CMPA   #$0A
46AE: 27 10       BEQ    $46C0
46B0: 96 29       LDA    $29
46B2: 84 03       ANDA   #$03
46B4: 81 03       CMPA   #$03
46B6: 26 10       BNE    $46C8
46B8: A6 88 14    LDA    $14,X
46BB: 88 40       EORA   #$40
46BD: A7 88 14    STA    $14,X
46C0: 86 00       LDA    #$00
46C2: A7 88 38    STA    $38,X
46C5: BD 44 6D    JSR    $446D
46C8: 39          RTS
46C9: BD FB 8A    JSR    $FB8A
46CC: 25 03       BCS    $46D1
46CE: BD 5B 07    JSR    $5B07
46D1: 39          RTS
46D2: 10 BE 0E 4B LDY    $0E4B
46D6: A6 A8 1B    LDA    $1B,Y
46D9: 84 3F       ANDA   #$3F
46DB: 81 0A       CMPA   #$0A
46DD: 26 06       BNE    $46E5
46DF: BD 59 9A    JSR    $599A
46E2: 24 01       BCC    $46E5
46E4: 39          RTS
46E5: A6 88 38    LDA    $38,X
46E8: 2B 12       BMI    $46FC
46EA: 6F 88 4F    CLR    $4F,X
46ED: 6F 88 50    CLR    $50,X
46F0: A6 88 38    LDA    $38,X
46F3: 8A 80       ORA    #$80
46F5: A7 88 38    STA    $38,X
46F8: 86 10       LDA    #$10
46FA: A7 0E       STA    $E,X
46FC: A6 88 50    LDA    $50,X
46FF: 10 8E 47 08 LDY    #$4708
4703: 84 0F       ANDA   #$0F
4705: 48          ASLA
4706: 6E B6       JMP    [A,Y]
4708: 47          ASRA
4709: 10 47       ASRD
470B: 77 47 CF    ASR    $47CF
470E: 48          ASLA
470F: 13          SYNC
4710: A6 88 50    LDA    $50,X
4713: 2B 0E       BMI    $4723
4715: 8A 80       ORA    #$80
4717: A7 88 50    STA    $50,X
471A: BD 51 60    JSR    $5160
471D: A6 0D       LDA    $D,X
471F: 88 80       EORA   #$80
4721: A7 0D       STA    $D,X
4723: 86 10       LDA    #$10
4725: A7 0E       STA    $E,X
4727: 6C 88 4F    INC    $4F,X
472A: A6 88 4F    LDA    $4F,X
472D: 81 08       CMPA   #$08
472F: 25 05       BCS    $4736
4731: 86 01       LDA    #$01
4733: A7 88 50    STA    $50,X
4736: BD 52 9F    JSR    $529F
4739: BD F9 3C    JSR    $F93C
473C: BD FC 1E    JSR    $FC1E
473F: BD 47 5E    JSR    $475E
4742: 24 13       BCC    $4757
4744: BD 53 1E    JSR    $531E
4747: A6 88 50    LDA    $50,X
474A: 2B 0C       BMI    $4758
474C: 8A 80       ORA    #$80
474E: A7 88 50    STA    $50,X
4751: A6 0D       LDA    $D,X
4753: 88 80       EORA   #$80
4755: A7 0D       STA    $D,X
4757: 39          RTS
4758: 86 01       LDA    #$01
475A: A7 88 50    STA    $50,X
475D: 39          RTS
475E: B6 0B 4A    LDA    $0B4A
4761: 26 11       BNE    $4774
4763: B6 0B 4B    LDA    $0B4B
4766: 84 0F       ANDA   #$0F
4768: 26 0A       BNE    $4774
476A: B6 0B 4D    LDA    $0B4D
476D: 84 F0       ANDA   #$F0
476F: 27 03       BEQ    $4774
4771: 1C FE       ANDCC  #$FE
4773: 39          RTS
4774: 1A 01       ORCC   #$01
4776: 39          RTS
4777: A6 88 50    LDA    $50,X
477A: 2B 17       BMI    $4793
477C: 8A 80       ORA    #$80
477E: A7 88 50    STA    $50,X
4781: BD 51 2B    JSR    $512B
4784: A6 88 38    LDA    $38,X
4787: 84 30       ANDA   #$30
4789: 27 08       BEQ    $4793
478B: 48          ASLA
478C: 48          ASLA
478D: 84 80       ANDA   #$80
478F: 8A 40       ORA    #$40
4791: A7 0D       STA    $D,X
4793: 86 10       LDA    #$10
4795: A7 0E       STA    $E,X
4797: BD 52 9F    JSR    $529F
479A: BD F9 3C    JSR    $F93C
479D: BD FC 1E    JSR    $FC1E
47A0: BD 47 5E    JSR    $475E
47A3: 24 06       BCC    $47AB
47A5: 6F 88 38    CLR    $38,X
47A8: BD 53 1E    JSR    $531E
47AB: BD 5B 90    JSR    $5B90
47AE: 27 08       BEQ    $47B8
47B0: BD 5B B6    JSR    $5BB6
47B3: 27 03       BEQ    $47B8
47B5: 6F 88 38    CLR    $38,X
47B8: B6 0E 48    LDA    $0E48
47BB: 81 05       CMPA   #$05
47BD: 24 05       BCC    $47C4
47BF: 86 02       LDA    #$02
47C1: A7 88 50    STA    $50,X
47C4: A6 04       LDA    $4,X
47C6: 81 FF       CMPA   #$FF
47C8: 26 04       BNE    $47CE
47CA: 86 40       LDA    #$40
47CC: A7 0D       STA    $D,X
47CE: 39          RTS
47CF: 32 7F       LEAS   -$1,S
47D1: 86 10       LDA    #$10
47D3: A7 0E       STA    $E,X
47D5: BD 52 9F    JSR    $529F
47D8: BD F9 3C    JSR    $F93C
47DB: BD FC 1E    JSR    $FC1E
47DE: BD 47 5E    JSR    $475E
47E1: 24 03       BCC    $47E6
47E3: 6F 88 38    CLR    $38,X
47E6: B6 0E 48    LDA    $0E48
47E9: 81 08       CMPA   #$08
47EB: 25 19       BCS    $4806
47ED: BD 5B 90    JSR    $5B90
47F0: 26 08       BNE    $47FA
47F2: BD 5B B6    JSR    $5BB6
47F5: 26 03       BNE    $47FA
47F7: 6F 88 38    CLR    $38,X
47FA: B6 0E 48    LDA    $0E48
47FD: 81 20       CMPA   #$20
47FF: 25 05       BCS    $4806
4801: 86 03       LDA    #$03
4803: A7 88 50    STA    $50,X
4806: A6 04       LDA    $4,X
4808: 81 FF       CMPA   #$FF
480A: 26 04       BNE    $4810
480C: 86 40       LDA    #$40
480E: A7 0D       STA    $D,X
4810: 32 61       LEAS   $1,S
4812: 39          RTS
4813: 32 7F       LEAS   -$1,S
4815: BD 59 9A    JSR    $599A
4818: 25 3E       BCS    $4858
481A: A6 88 50    LDA    $50,X
481D: 2B 08       BMI    $4827
481F: 8A 80       ORA    #$80
4821: A7 88 50    STA    $50,X
4824: BD 51 60    JSR    $5160
4827: 86 10       LDA    #$10
4829: A7 0E       STA    $E,X
482B: BD 52 9F    JSR    $529F
482E: BD F9 3C    JSR    $F93C
4831: BD FC 1E    JSR    $FC1E
4834: BD 47 5E    JSR    $475E
4837: 24 06       BCC    $483F
4839: 6F 88 38    CLR    $38,X
483C: BD 53 1E    JSR    $531E
483F: B6 0E 49    LDA    $0E49
4842: 81 04       CMPA   #$04
4844: 24 12       BCC    $4858
4846: BD 5B 90    JSR    $5B90
4849: 26 03       BNE    $484E
484B: 6F 88 38    CLR    $38,X
484E: B6 0E 49    LDA    $0E49
4851: 81 20       CMPA   #$20
4853: 25 03       BCS    $4858
4855: 6F 88 38    CLR    $38,X
4858: 32 61       LEAS   $1,S
485A: 39          RTS
485B: BD 59 EB    JSR    $59EB
485E: 24 01       BCC    $4861
4860: 39          RTS
4861: BD 51 2B    JSR    $512B
4864: A6 88 39    LDA    $39,X
4867: 84 7F       ANDA   #$7F
4869: F6 0E 48    LDB    $0E48
486C: 10 8E 48 83 LDY    #$4883
4870: 48          ASLA
4871: 48          ASLA
4872: 4C          INCA
4873: E1 A6       CMPB   A,Y
4875: 24 08       BCC    $487F
4877: 4C          INCA
4878: E1 A6       CMPB   A,Y
487A: 24 06       BCC    $4882
487C: BD 51 3E    JSR    $513E
487F: 7E 44 66    JMP    $4466
4882: 39          RTS
4883: 60 38       NEG    -$8,Y
4885: 28 2C       BVC    $48B3
4887: 68 40       ASL    $0,U
4889: 30 30       LEAX   -$10,Y
488B: 60 38       NEG    -$8,Y
488D: 28 2C       BVC    $48BB
488F: 68 40       ASL    $0,U
4891: 30 30       LEAX   -$10,Y
4893: 70 48 38    NEG    $4838
4896: 34 78       PSHS   U,Y,X,DP
4898: 50          NEGB
4899: 40          NEGA
489A: 3C B6       CWAI   #$B6
489C: 0E 48       JMP    $48
489E: 81 90       CMPA   #$90
48A0: 24 13       BCC    $48B5
48A2: BD 51 2B    JSR    $512B
48A5: BD 51 3E    JSR    $513E
48A8: 96 55       LDA    $55
48AA: 48          ASLA
48AB: 8B 1A       ADDA   #$1A
48AD: A7 0E       STA    $E,X
48AF: BD 44 6D    JSR    $446D
48B2: BD 44 B8    JSR    $44B8
48B5: 39          RTS
48B6: 6F 88 38    CLR    $38,X
48B9: 39          RTS
48BA: 32 7F       LEAS   -$1,S
48BC: 10 BE 0E 4B LDY    $0E4B
48C0: A6 A8 1B    LDA    $1B,Y
48C3: 84 3F       ANDA   #$3F
48C5: 81 05       CMPA   #$05
48C7: 26 17       BNE    $48E0
48C9: BD 51 2B    JSR    $512B
48CC: BD 51 3E    JSR    $513E
48CF: BD 44 66    JSR    $4466
48D2: B6 09 F0    LDA    $09F0
48D5: 8B 28       ADDA   #$28
48D7: 97 00       STA    $00
48D9: B6 0E 48    LDA    $0E48
48DC: 91 00       CMPA   $00
48DE: 25 05       BCS    $48E5
48E0: 86 04       LDA    #$04
48E2: A7 88 38    STA    $38,X
48E5: 32 61       LEAS   $1,S
48E7: 39          RTS
48E8: 96 36       LDA    $36
48EA: 81 03       CMPA   #$03
48EC: 27 4E       BEQ    $493C
48EE: 86 80       LDA    #$80
48F0: A7 0D       STA    $D,X
48F2: A6 88 16    LDA    $16,X
48F5: 8A 08       ORA    #$08
48F7: A7 88 16    STA    $16,X
48FA: 96 55       LDA    $55
48FC: 48          ASLA
48FD: 8B 0E       ADDA   #$0E
48FF: A7 0E       STA    $E,X
4901: 96 36       LDA    $36
4903: 10 8E 49 C3 LDY    #$49C3
4907: 48          ASLA
4908: EC A6       LDD    A,Y
490A: 10 A3 06    CMPD   $6,X
490D: 25 04       BCS    $4913
490F: 86 C0       LDA    #$C0
4911: A7 0D       STA    $D,X
4913: BD 53 2C    JSR    $532C
4916: 25 09       BCS    $4921
4918: BD 52 9F    JSR    $529F
491B: BD F9 3C    JSR    $F93C
491E: BD FC 1E    JSR    $FC1E
4921: DC 3C       LDD    $3C
4923: C3 FF F0    ADDD   #$FFF0
4926: 10 A3 04    CMPD   $4,X
4929: 25 10       BCS    $493B
492B: BD 49 C9    JSR    $49C9
492E: 6F 84       CLR    ,X
4930: 7A 09 EF    DEC    $09EF
4933: A6 88 45    LDA    $45,X
4936: 27 03       BEQ    $493B
4938: 7A 0A B5    DEC    $0AB5
493B: 39          RTS
493C: 32 7D       LEAS   -$3,S
493E: B6 0A EC    LDA    $0AEC
4941: 85 40       BITA   #$40
4943: 26 09       BNE    $494E
4945: 85 01       BITA   #$01
4947: 26 05       BNE    $494E
4949: 8A 80       ORA    #$80
494B: B7 0A EC    STA    $0AEC
494E: 86 10       LDA    #$10
4950: A7 0E       STA    $E,X
4952: 86 40       LDA    #$40
4954: A7 E4       STA    ,S
4956: EC 04       LDD    $4,X
4958: 10 83 1A D0 CMPD   #$1AD0
495C: 25 04       BCS    $4962
495E: 86 C0       LDA    #$C0
4960: A7 E4       STA    ,S
4962: A6 E4       LDA    ,S
4964: A7 0D       STA    $D,X
4966: EC 04       LDD    $4,X
4968: 83 1A D0    SUBD   #$1AD0
496B: 2A 07       BPL    $4974
496D: ED E4       STD    ,S
496F: CC 00 00    LDD    #$0000
4972: A3 E4       SUBD   ,S
4974: 10 83 00 08 CMPD   #$0008
4978: 24 2C       BCC    $49A6
497A: 5F          CLRB
497B: B6 0A EC    LDA    $0AEC
497E: 85 40       BITA   #$40
4980: 26 06       BNE    $4988
4982: 85 01       BITA   #$01
4984: 27 02       BEQ    $4988
4986: C6 10       LDB    #$10
4988: E7 0E       STB    $E,X
498A: 86 00       LDA    #$00
498C: A7 0D       STA    $D,X
498E: EC 06       LDD    $6,X
4990: 10 83 00 A8 CMPD   #$00A8
4994: 25 10       BCS    $49A6
4996: BD 49 C9    JSR    $49C9
4999: 6F 84       CLR    ,X
499B: 7A 09 EF    DEC    $09EF
499E: A6 88 45    LDA    $45,X
49A1: 27 03       BEQ    $49A6
49A3: 7A 0A B5    DEC    $0AB5
49A6: 7D 09 EF    TST    $09EF
49A9: 26 0C       BNE    $49B7
49AB: B6 0A EC    LDA    $0AEC
49AE: 85 01       BITA   #$01
49B0: 27 05       BEQ    $49B7
49B2: 8A 80       ORA    #$80
49B4: B7 0A EC    STA    $0AEC
49B7: BD FB 58    JSR    $FB58
49BA: BD F9 3C    JSR    $F93C
49BD: BD FC 1E    JSR    $FC1E
49C0: 32 63       LEAS   $3,S
49C2: 39          RTS
49C3: 01 20 01    OIM    #$20;$01
49C6: 03 00       COM    $00
49C8: F0 34 66    SUBB   $3466
49CB: A6 88 21    LDA    $21,X
49CE: 27 2B       BEQ    $49FB
49D0: 81 07       CMPA   #$07
49D2: 24 16       BCC    $49EA
49D4: EE 88 41    LDU    $41,X
49D7: 10 8E 49 FD LDY    #$49FD
49DB: A6 A6       LDA    A,Y
49DD: 81 FF       CMPA   #$FF
49DF: 27 09       BEQ    $49EA
49E1: 10 8E 4A 04 LDY    #$4A04
49E5: 10 AE A6    LDY    A,Y
49E8: 6A A4       DEC    ,Y
49EA: CC 00 00    LDD    #$0000
49ED: A7 C4       STA    ,U
49EF: ED C8 1F    STD    $1F,U
49F2: A7 C8 16    STA    $16,U
49F5: ED 88 41    STD    $41,X
49F8: A7 88 21    STA    $21,X
49FB: 35 E6       PULS   D,Y,U,PC
49FD: FF 00 FF    STU    >$00FF
4A00: 04 06       LSR    $06
4A02: 02 08 0E    AIM    #$08;$0E
4A05: 37 0E       PULU   D,DP
4A07: 38          FCB    $38
4A08: 0E 39       JMP    $39
4A0A: 0E 3A       JMP    $3A
4A0C: 0E 3B       JMP    $3B
4A0E: A6 88 38    LDA    $38,X
4A11: 2B 33       BMI    $4A46
4A13: 8A 80       ORA    #$80
4A15: A7 88 38    STA    $38,X
4A18: 6C 88 52    INC    $52,X
4A1B: A6 88 52    LDA    $52,X
4A1E: 81 04       CMPA   #$04
4A20: 25 14       BCS    $4A36
4A22: 6F 88 52    CLR    $52,X
4A25: BD FB 76    JSR    $FB76
4A28: 84 8F       ANDA   #$8F
4A2A: 1F 89       TFR    A,B
4A2C: C4 0F       ANDB   #$0F
4A2E: 4D          TSTA
4A2F: 2A 01       BPL    $4A32
4A31: 50          NEGB
4A32: EB 0D       ADDB   $D,X
4A34: E7 0D       STB    $D,X
4A36: 10 8E 4A 76 LDY    #$4A76
4A3A: E6 A6       LDB    A,Y
4A3C: A7 88 54    STA    $54,X
4A3F: D6 55       LDB    $55
4A41: 58          ASLB
4A42: CB 0E       ADDB   #$0E
4A44: E7 0E       STB    $E,X
4A46: 6A 88 54    DEC    $54,X
4A49: 27 0E       BEQ    $4A59
4A4B: B6 0E 48    LDA    $0E48
4A4E: 81 14       CMPA   #$14
4A50: 25 07       BCS    $4A59
4A52: B6 0E 49    LDA    $0E49
4A55: 81 14       CMPA   #$14
4A57: 25 05       BCS    $4A5E
4A59: 86 00       LDA    #$00
4A5B: A7 88 38    STA    $38,X
4A5E: BD 53 2C    JSR    $532C
4A61: 25 12       BCS    $4A75
4A63: BD 52 9F    JSR    $529F
4A66: BD F9 3C    JSR    $F93C
4A69: BD FC 1E    JSR    $FC1E
4A6C: BD 54 86    JSR    $5486
4A6F: BD FB A8    JSR    $FBA8
4A72: BD FB 9E    JSR    $FB9E
4A75: 39          RTS
4A76: 18          FCB    $18
4A77: 10 08       FCB    $10,$08
4A79: 02          FCB    $02
4A7A: 32 7E       SUBR   V,E
4A7C: 86 40       LDA    #$40
4A7E: 97 00       STA    $00
4A80: EC 04       LDD    $4,X
4A82: 10 83 10 00 CMPD   #$1000
4A86: 25 0A       BCS    $4A92
4A88: 10 83 10 20 CMPD   #$1020
4A8C: 25 17       BCS    $4AA5
4A8E: 86 C0       LDA    #$C0
4A90: 97 00       STA    $00
4A92: 96 00       LDA    $00
4A94: A7 0D       STA    $D,X
4A96: 86 10       LDA    #$10
4A98: A7 0E       STA    $E,X
4A9A: BD 52 9F    JSR    $529F
4A9D: BD F9 3C    JSR    $F93C
4AA0: BD FC 1E    JSR    $FC1E
4AA3: 20 42       BRA    $4AE7
4AA5: 86 80       LDA    #$80
4AA7: A7 0D       STA    $D,X
4AA9: 86 10       LDA    #$10
4AAB: A7 0E       STA    $E,X
4AAD: BD 52 9F    JSR    $529F
4AB0: BD F9 3C    JSR    $F93C
4AB3: BD FC 1E    JSR    $FC1E
4AB6: B6 0B 4A    LDA    $0B4A
4AB9: 81 03       CMPA   #$03
4ABB: 27 07       BEQ    $4AC4
4ABD: B6 0B 4D    LDA    $0B4D
4AC0: 84 F0       ANDA   #$F0
4AC2: 27 23       BEQ    $4AE7
4AC4: 86 03       LDA    #$03
4AC6: A7 88 37    STA    $37,X
4AC9: 86 12       LDA    #$12
4ACB: A7 88 1B    STA    $1B,X
4ACE: A6 88 31    LDA    $31,X
4AD1: 8A 10       ORA    #$10
4AD3: A7 88 31    STA    $31,X
4AD6: 10 8E 03 A2 LDY    #$03A2
4ADA: A6 84       LDA    ,X
4ADC: 84 C0       ANDA   #$C0
4ADE: 26 03       BNE    $4AE3
4AE0: 31 A8 5E    LEAY   $5E,Y
4AE3: 10 AF 88 2D STY    $2D,X
4AE7: B6 03 D3    LDA    $03D3
4AEA: BA 04 31    ORA    $0431
4AED: 84 08       ANDA   #$08
4AEF: 27 03       BEQ    $4AF4
4AF1: 6F 88 38    CLR    $38,X
4AF4: 32 62       LEAS   $2,S
4AF6: 39          RTS
4AF7: 10 AE 88 2D LDY    $2D,X
4AFB: A6 88 1B    LDA    $1B,X
4AFE: 2B 11       BMI    $4B11
4B00: A6 88 15    LDA    $15,X
4B03: 84 EF       ANDA   #$EF
4B05: A7 88 15    STA    $15,X
4B08: BD FE 64    JSR    $FE64
4B0B: BD 51 71    JSR    $5171
4B0E: 6F A8 25    CLR    $25,Y
4B11: 10 8E 4B 65 LDY    #$4B65
4B15: A6 88 18    LDA    $18,X
4B18: 48          ASLA
4B19: 4C          INCA
4B1A: E6 88 19    LDB    $19,X
4B1D: E1 A6       CMPB   A,Y
4B1F: 25 0D       BCS    $4B2E
4B21: A6 88 18    LDA    $18,X
4B24: 81 02       CMPA   #$02
4B26: 24 06       BCC    $4B2E
4B28: 6C 88 18    INC    $18,X
4B2B: 6F 88 19    CLR    $19,X
4B2E: 6C 88 19    INC    $19,X
4B31: A6 88 18    LDA    $18,X
4B34: 48          ASLA
4B35: E6 A6       LDB    A,Y
4B37: EA 03       ORB    $3,X
4B39: E7 02       STB    $2,X
4B3B: 6D 88 18    TST    $18,X
4B3E: 27 24       BEQ    $4B64
4B40: A6 88 19    LDA    $19,X
4B43: 81 08       CMPA   #$08
4B45: 25 1D       BCS    $4B64
4B47: 10 8E 4B 6B LDY    #$4B6B
4B4B: 96 51       LDA    $51
4B4D: 44          LSRA
4B4E: 84 01       ANDA   #$01
4B50: C6 07       LDB    #$07
4B52: 3D          MUL
4B53: 31 AB       LEAY   D,Y
4B55: 96 51       LDA    $51
4B57: 44          LSRA
4B58: 84 07       ANDA   #$07
4B5A: A6 A6       LDA    A,Y
4B5C: A7 88 1E    STA    $1E,X
4B5F: 86 08       LDA    #$08
4B61: A7 88 1B    STA    $1B,X
4B64: 39          RTS
4B65: 79 08 7A    ROL    $087A
4B68: 08 68       ASL    $68
4B6A: F0 12 12    SUBB   $1212
4B6D: 12          NOP
4B6E: 12          NOP
4B6F: 11 11       FCB    $11,$11
4B71: 11 11       FCB    $11,$11
4B73: 11 11       FCB    $11,$11
4B75: 11 11       FCB    $11,$11
4B77: 12          NOP
4B78: 12          NOP
4B79: 12          NOP
4B7A: 12          NOP
4B7B: 10 8E 4B CA LDY    #$4BCA
4B7F: 96 36       LDA    $36
4B81: 48          ASLA
4B82: 10 AE A6    LDY    A,Y
4B85: A6 88 4B    LDA    $4B,X
4B88: 4A          DECA
4B89: 48          ASLA
4B8A: 48          ASLA
4B8B: 31 A6       LEAY   A,Y
4B8D: A6 88 1B    LDA    $1B,X
4B90: 2B 09       BMI    $4B9B
4B92: BD FE 64    JSR    $FE64
4B95: A6 A4       LDA    ,Y
4B97: AA 03       ORA    $3,X
4B99: A7 02       STA    $2,X
4B9B: EC 21       LDD    $1,Y
4B9D: 10 B3 03 A6 CMPD   $03A6
4BA1: 24 17       BCC    $4BBA
4BA3: EC 08       LDD    $8,X
4BA5: 10 B3 03 AA CMPD   $03AA
4BA9: 26 04       BNE    $4BAF
4BAB: 86 04       LDA    #$04
4BAD: 20 07       BRA    $4BB6
4BAF: A6 23       LDA    $3,Y
4BB1: A7 88 4E    STA    $4E,X
4BB4: 86 11       LDA    #$11
4BB6: A7 88 1B    STA    $1B,X
4BB9: 39          RTS
4BBA: 10 B3 04 04 CMPD   $0404
4BBE: 24 F9       BCC    $4BB9
4BC0: EC 08       LDD    $8,X
4BC2: 10 B3 03 AA CMPD   $03AA
4BC6: 26 E7       BNE    $4BAF
4BC8: 20 E1       BRA    $4BAB
4BCA: 4B          FCB    $4B
4BCB: D2 4B       SBCB   $4B
4BCD: DA 4B       ORB    $4B
4BCF: EA 4C       ORB    $C,U
4BD1: 06 67       ROR    $67
4BD3: 01 88 03    OIM    #$88;$03
4BD6: 67 03       ASR    $3,X
4BD8: 80 03       SUBA   #$03
4BDA: 67 05       ASR    $5,X
4BDC: 70 03 67    NEG    $0367
4BDF: 05 78 03    EIM    #$78;$03
4BE2: 67 07       ASR    $7,X
4BE4: 00 03       NEG    $03
4BE6: 67 07       ASR    $7,X
4BE8: 80 03       SUBA   #$03
4BEA: 67 0B       ASR    $B,X
4BEC: 00 03       NEG    $03
4BEE: 67 0B       ASR    $B,X
4BF0: 60 03       NEG    $3,X
4BF2: 67 0B       ASR    $B,X
4BF4: 68 03       ASL    $3,X
4BF6: 07 0B       ASR    $0B
4BF8: B0 03 67    SUBA   $0367
4BFB: 0D F0       TST    $F0
4BFD: 03 07       COM    $07
4BFF: 0D F8       TST    $F8
4C01: 03 07       COM    $07
4C03: 13          SYNC
4C04: 40          NEGA
4C05: 03 07       COM    $07
4C07: 1B          FCB    $1B
4C08: 40          NEGA
4C09: 03 07       COM    $07
4C0B: 1B          FCB    $1B
4C0C: 48          ASLA
4C0D: 03 34       COM    $34
4C0F: 7E 10 8E    JMP    $108E
4C12: 4D          TSTA
4C13: 1D          SEX
4C14: A6 88 4E    LDA    $4E,X
4C17: 1F 89       TFR    A,B
4C19: 48          ASLA
4C1A: 10 AE A6    LDY    A,Y
4C1D: A6 88 1B    LDA    $1B,X
4C20: 10 2B 00 96 LBMI   $4CBA
4C24: 34 20       PSHS   Y
4C26: BD FE 64    JSR    $FE64
4C29: CE 4D 2D    LDU    #$4D2D
4C2C: 1F 98       TFR    B,A
4C2E: 48          ASLA
4C2F: EE C6       LDU    A,U
4C31: C1 02       CMPB   #$02
4C33: 24 0D       BCC    $4C42
4C35: 34 04       PSHS   B
4C37: EC 06       LDD    $6,X
4C39: C3 FF FD    ADDD   #$FFFD
4C3C: ED 06       STD    $6,X
4C3E: 35 04       PULS   B
4C40: 20 38       BRA    $4C7A
4C42: C1 02       CMPB   #$02
4C44: 26 19       BNE    $4C5F
4C46: E6 0D       LDB    $D,X
4C48: 54          LSRB
4C49: 54          LSRB
4C4A: 54          LSRB
4C4B: 54          LSRB
4C4C: 54          LSRB
4C4D: C4 07       ANDB   #$07
4C4F: 34 44       PSHS   U,B
4C51: CE 4D 56    LDU    #$4D56
4C54: 58          ASLB
4C55: EC C5       LDD    B,U
4C57: E3 06       ADDD   $6,X
4C59: ED 06       STD    $6,X
4C5B: 35 44       PULS   B,U
4C5D: 20 1B       BRA    $4C7A
4C5F: 96 36       LDA    $36
4C61: 48          ASLA
4C62: EE C6       LDU    A,U
4C64: E6 88 4B    LDB    $4B,X
4C67: 5A          DECB
4C68: 10 8E 4D 6A LDY    #$4D6A
4C6C: 10 AE A6    LDY    A,Y
4C6F: 34 04       PSHS   B
4C71: 58          ASLB
4C72: EC A5       LDD    B,Y
4C74: E3 06       ADDD   $6,X
4C76: ED 06       STD    $6,X
4C78: 35 04       PULS   B
4C7A: A6 C5       LDA    B,U
4C7C: 34 02       PSHS   A
4C7E: A6 88 13    LDA    $13,X
4C81: 85 40       BITA   #$40
4C83: 27 04       BEQ    $4C89
4C85: 86 05       LDA    #$05
4C87: A7 E4       STA    ,S
4C89: 35 02       PULS   A
4C8B: BD FB 62    JSR    $FB62
4C8E: 35 20       PULS   Y
4C90: A6 84       LDA    ,X
4C92: 84 F0       ANDA   #$F0
4C94: 8A 02       ORA    #$02
4C96: A7 84       STA    ,X
4C98: A6 A0       LDA    ,Y+
4C9A: AA 03       ORA    $3,X
4C9C: A7 02       STA    $2,X
4C9E: A6 A4       LDA    ,Y
4CA0: A7 88 19    STA    $19,X
4CA3: A6 88 15    LDA    $15,X
4CA6: 8A 40       ORA    #$40
4CA8: A7 88 15    STA    $15,X
4CAB: A6 88 13    LDA    $13,X
4CAE: 84 BF       ANDA   #$BF
4CB0: A7 88 13    STA    $13,X
4CB3: 6D 03       TST    $3,X
4CB5: 2A 03       BPL    $4CBA
4CB7: BD FB 6C    JSR    $FB6C
4CBA: 6A 88 19    DEC    $19,X
4CBD: 26 18       BNE    $4CD7
4CBF: A6 88 18    LDA    $18,X
4CC2: 81 02       CMPA   #$02
4CC4: 24 04       BCC    $4CCA
4CC6: 4C          INCA
4CC7: A7 88 18    STA    $18,X
4CCA: 48          ASLA
4CCB: E6 A6       LDB    A,Y
4CCD: EA 03       ORB    $3,X
4CCF: E7 02       STB    $2,X
4CD1: 4C          INCA
4CD2: E6 A6       LDB    A,Y
4CD4: E7 88 19    STB    $19,X
4CD7: BD 52 9F    JSR    $529F
4CDA: BD 53 0A    JSR    $530A
4CDD: A6 88 11    LDA    $11,X
4CE0: 2A 39       BPL    $4D1B
4CE2: B6 0B 4D    LDA    $0B4D
4CE5: 84 F0       ANDA   #$F0
4CE7: 26 1A       BNE    $4D03
4CE9: B6 0B 4C    LDA    $0B4C
4CEC: 84 F0       ANDA   #$F0
4CEE: 27 2B       BEQ    $4D1B
4CF0: B6 0B 4A    LDA    $0B4A
4CF3: 81 0A       CMPA   #$0A
4CF5: 25 0C       BCS    $4D03
4CF7: 81 0D       CMPA   #$0D
4CF9: 24 08       BCC    $4D03
4CFB: A6 88 13    LDA    $13,X
4CFE: 8A 40       ORA    #$40
4D00: A7 88 13    STA    $13,X
4D03: 86 04       LDA    #$04
4D05: A7 88 1B    STA    $1B,X
4D08: A6 84       LDA    ,X
4D0A: 84 F0       ANDA   #$F0
4D0C: 8A 01       ORA    #$01
4D0E: A7 84       STA    ,X
4D10: A6 88 15    LDA    $15,X
4D13: 84 BF       ANDA   #$BF
4D15: A7 88 15    STA    $15,X
4D18: 6F 88 4B    CLR    $4B,X
4D1B: 35 FE       PULS   D,DP,X,Y,U,PC
4D1D: 4D          TSTA
4D1E: 25 4D       BCS    $4D6D
4D20: 25 4D       BCS    $4D6F
4D22: 25 4D       BCS    $4D71
4D24: 25 17       BCS    $4D3D
4D26: 08 18       ASL    $18
4D28: 08 18       ASL    $18
4D2A: 08 18       ASL    $18
4D2C: 08 4D       ASL    $4D
4D2E: 35 4D       PULS   CC,B,DP,U
4D30: 35 4D       PULS   CC,B,DP,U
4D32: 37 4D       PULU   CC,B,DP,S
4D34: 3F          SWI
4D35: 03 02       COM    $02
4D37: 06 06       ROR    $06
4D39: 02 02 02    AIM    #$02;$02
4D3C: 02 06 06    AIM    #$06;$06
4D3F: 4D          TSTA
4D40: 47          ASRA
4D41: 4D          TSTA
4D42: 49          ROLA
4D43: 4D          TSTA
4D44: 4D          TSTA
4D45: 4D          TSTA
4D46: 54          LSRB
4D47: 04 04       LSR    $04
4D49: 04 04       LSR    $04
4D4B: 04 04       LSR    $04
4D4D: 04 04       LSR    $04
4D4F: 04 03       LSR    $03
4D51: 04 03       LSR    $03
4D53: 04 04       LSR    $04
4D55: 04 FF       LSR    $FF
4D57: F0 FF F0    SUBB   $FFF0
4D5A: FF F0 FF    STU    $F0FF
4D5D: F0 FF F0    SUBB   $FFF0
4D60: FF F0 FF    STU    $F0FF
4D63: F0 FF F0    SUBB   $FFF0
4D66: FF F0 FF    STU    $F0FF
4D69: F0 4D 72    SUBB   $4D72
4D6C: 4D          TSTA
4D6D: 76 4D 7E    ROR    $4D7E
4D70: 4D          TSTA
4D71: 8C FF F0    CMPX   #$FFF0
4D74: FF F0 FF    STU    $F0FF
4D77: F0 FF F0    SUBB   $FFF0
4D7A: FF F0 FF    STU    $F0FF
4D7D: F0 FF F0    SUBB   $FFF0
4D80: FF F0 FF    STU    $F0FF
4D83: F0 FF F0    SUBB   $FFF0
4D86: FF F0 FF    STU    $F0FF
4D89: F0 FF F0    SUBB   $FFF0
4D8C: FF F0 FF    STU    $F0FF
4D8F: F0 34 7E    SUBB   $347E
4D92: 6F 03       CLR    $3,X
4D94: 96 36       LDA    $36
4D96: 81 01       CMPA   #$01
4D98: 26 06       BNE    $4DA0
4D9A: A6 03       LDA    $3,X
4D9C: 88 80       EORA   #$80
4D9E: A7 03       STA    $3,X
4DA0: A6 88 37    LDA    $37,X
4DA3: 80 02       SUBA   #$02
4DA5: 48          ASLA
4DA6: 10 8E 4D AE LDY    #$4DAE
4DAA: AD B6       JSR    [A,Y]
4DAC: 35 FE       PULS   D,DP,X,Y,U,PC
4DAE: 4D          TSTA
4DAF: BE 4D BE    LDX    $4DBE
4DB2: 4D          TSTA
4DB3: BE 4D BE    LDX    $4DBE
4DB6: 4D          TSTA
4DB7: BE 4D BE    LDX    $4DBE
4DBA: 4F          CLRA
4DBB: 7E 4F FD    JMP    $4FFD
4DBE: 32 7C       LEAS   -$4,S
4DC0: 6F 0E       CLR    $E,X
4DC2: 10 AE 88 2D LDY    $2D,X
4DC6: A6 A8 37    LDA    $37,Y
4DC9: 81 04       CMPA   #$04
4DCB: 25 04       BCS    $4DD1
4DCD: 81 08       CMPA   #$08
4DCF: 25 19       BCS    $4DEA
4DD1: EC 08       LDD    $8,X
4DD3: 10 A3 28    CMPD   $8,Y
4DD6: 25 09       BCS    $4DE1
4DD8: 86 03       LDA    #$03
4DDA: A7 88 37    STA    $37,X
4DDD: 86 05       LDA    #$05
4DDF: 20 19       BRA    $4DFA
4DE1: 86 02       LDA    #$02
4DE3: A7 88 37    STA    $37,X
4DE6: 86 01       LDA    #$01
4DE8: 20 10       BRA    $4DFA
4DEA: 10 9F 00    STY    $00
4DED: BD FB 44    JSR    $FB44
4DF0: A7 0D       STA    $D,X
4DF2: 44          LSRA
4DF3: 44          LSRA
4DF4: 44          LSRA
4DF5: 44          LSRA
4DF6: 44          LSRA
4DF7: 84 07       ANDA   #$07
4DF9: 4C          INCA
4DFA: 97 0F       STA    $0F
4DFC: A6 88 31    LDA    $31,X
4DFF: 85 08       BITA   #$08
4E01: 26 0A       BNE    $4E0D
4E03: CE 50 34    LDU    #$5034
4E06: 96 0F       LDA    $0F
4E08: A6 C6       LDA    A,U
4E0A: A7 88 37    STA    $37,X
4E0D: EE 88 2D    LDU    $2D,X
4E10: A6 C8 1B    LDA    $1B,U
4E13: 84 7F       ANDA   #$7F
4E15: 81 00       CMPA   #$00
4E17: 26 2C       BNE    $4E45
4E19: A6 C8 37    LDA    $37,U
4E1C: 81 02       CMPA   #$02
4E1E: 25 25       BCS    $4E45
4E20: A6 88 38    LDA    $38,X
4E23: 84 0F       ANDA   #$0F
4E25: 27 09       BEQ    $4E30
4E27: B6 0E 48    LDA    $0E48
4E2A: 81 30       CMPA   #$30
4E2C: 10 25 00 18 LBCS   $4E48
4E30: EC 08       LDD    $8,X
4E32: A3 28       SUBD   $8,Y
4E34: 2A 07       BPL    $4E3D
4E36: DD 00       STD    $00
4E38: CC 00 00    LDD    #$0000
4E3B: 93 00       SUBD   $00
4E3D: 10 83 00 30 CMPD   #$0030
4E41: 10 25 00 03 LBCS   $4E48
4E45: BD 4E 4B    JSR    $4E4B
4E48: 32 64       LEAS   $4,S
4E4A: 39          RTS
4E4B: 32 71       LEAS   -$F,S
4E4D: A6 88 18    LDA    $18,X
4E50: E6 02       LDB    $2,X
4E52: ED E4       STD    ,S
4E54: EC 04       LDD    $4,X
4E56: ED 62       STD    $2,S
4E58: EC 06       LDD    $6,X
4E5A: ED 64       STD    $4,S
4E5C: EC 08       LDD    $8,X
4E5E: ED 66       STD    $6,S
4E60: BD FC 1E    JSR    $FC1E
4E63: A6 E4       LDA    ,S
4E65: A1 88 18    CMPA   $18,X
4E68: 10 27 00 3C LBEQ   $4EA8
4E6C: 10 8E 50 3D LDY    #$503D
4E70: 96 0F       LDA    $0F
4E72: C6 04       LDB    #$04
4E74: 3D          MUL
4E75: 31 AB       LEAY   D,Y
4E77: CE 0B 31    LDU    #$0B31
4E7A: EC 62       LDD    $2,S
4E7C: ED C4       STD    ,U
4E7E: E3 A4       ADDD   ,Y
4E80: ED 46       STD    $6,U
4E82: ED 04       STD    $4,X
4E84: EC 64       LDD    $4,S
4E86: ED 42       STD    $2,U
4E88: ED 48       STD    $8,U
4E8A: EC 66       LDD    $6,S
4E8C: ED 44       STD    $4,U
4E8E: E3 22       ADDD   $2,Y
4E90: ED 4A       STD    $A,U
4E92: A6 03       LDA    $3,X
4E94: A7 4C       STA    $C,U
4E96: BD FE 20    JSR    $FE20
4E99: BD FB 00    JSR    $FB00
4E9C: A6 88 37    LDA    $37,X
4E9F: 80 02       SUBA   #$02
4EA1: 48          ASLA
4EA2: 10 8E 4E AB LDY    #$4EAB
4EA6: 6E B6       JMP    [A,Y]
4EA8: 32 6F       LEAS   $F,S
4EAA: 39          RTS
4EAB: 4E          FCB    $4E
4EAC: B7 4E E8    STA    $4EE8
4EAF: 4E          FCB    $4E
4EB0: B7 4E E8    STA    $4EE8
4EB3: 4F          CLRA
4EB4: 33 4F       LEAU   $F,U
4EB6: 33 B6       LEAU   [A,Y]
4EB8: 0B 4B 85    TIM    #$4B;$85
4EBB: 0F 10       CLR    $10
4EBD: 26 00       BNE    $4EBF
4EBF: 9C B6       CMPX   $B6
4EC1: 0B 4D 84    TIM    #$4D;$84
4EC4: 0F 27       CLR    $27
4EC6: 09 EC       ROL    $EC
4EC8: 66 C3       ROR    ,--U
4ECA: 00 0A       NEG    $0A
4ECC: ED 08       STD    $8,X
4ECE: 20 15       BRA    $4EE5
4ED0: EC 66       LDD    $6,S
4ED2: C3 00 19    ADDD   #$0019
4ED5: ED 08       STD    $8,X
4ED7: 86 08       LDA    #$08
4ED9: A7 88 37    STA    $37,X
4EDC: 86 26       LDA    #$26
4EDE: A7 02       STA    $2,X
4EE0: 86 08       LDA    #$08
4EE2: A7 88 19    STA    $19,X
4EE5: 7E 4E A8    JMP    $4EA8
4EE8: B6 0B 4B    LDA    $0B4B
4EEB: 85 0F       BITA   #$0F
4EED: 26 6D       BNE    $4F5C
4EEF: B6 0B 4D    LDA    $0B4D
4EF2: 84 F0       ANDA   #$F0
4EF4: 26 29       BNE    $4F1F
4EF6: B6 0B 4C    LDA    $0B4C
4EF9: 84 F0       ANDA   #$F0
4EFB: 27 15       BEQ    $4F12
4EFD: B6 0B 4A    LDA    $0B4A
4F00: 81 0A       CMPA   #$0A
4F02: 25 1B       BCS    $4F1F
4F04: 81 0D       CMPA   #$0D
4F06: 24 17       BCC    $4F1F
4F08: A6 88 13    LDA    $13,X
4F0B: 8A 40       ORA    #$40
4F0D: A7 88 13    STA    $13,X
4F10: 20 0D       BRA    $4F1F
4F12: EC 66       LDD    $6,S
4F14: C3 FF F6    ADDD   #$FFF6
4F17: ED 08       STD    $8,X
4F19: EC 64       LDD    $4,S
4F1B: ED 06       STD    $6,X
4F1D: 20 11       BRA    $4F30
4F1F: EC 66       LDD    $6,S
4F21: C3 FF F8    ADDD   #$FFF8
4F24: ED 08       STD    $8,X
4F26: 86 09       LDA    #$09
4F28: A7 88 37    STA    $37,X
4F2B: 86 08       LDA    #$08
4F2D: A7 88 19    STA    $19,X
4F30: 7E 4E A8    JMP    $4EA8
4F33: 10 8E 0B 4A LDY    #$0B4A
4F37: EC 24       LDD    $4,Y
4F39: ED 04       STD    $4,X
4F3B: EC 26       LDD    $6,Y
4F3D: ED 06       STD    $6,X
4F3F: EC 28       LDD    $8,Y
4F41: ED 08       STD    $8,X
4F43: A6 A4       LDA    ,Y
4F45: 81 02       CMPA   #$02
4F47: 27 04       BEQ    $4F4D
4F49: 81 03       CMPA   #$03
4F4B: 26 0F       BNE    $4F5C
4F4D: A6 21       LDA    $1,Y
4F4F: 84 05       ANDA   #$05
4F51: 27 24       BEQ    $4F77
4F53: EC E4       LDD    ,S
4F55: A7 88 18    STA    $18,X
4F58: E7 02       STB    $2,X
4F5A: 20 1B       BRA    $4F77
4F5C: 86 11       LDA    #$11
4F5E: A7 88 1B    STA    $1B,X
4F61: A6 88 37    LDA    $37,X
4F64: 80 06       SUBA   #$06
4F66: 84 01       ANDA   #$01
4F68: 48          ASLA
4F69: 10 8E 4F 7A LDY    #$4F7A
4F6D: 31 A6       LEAY   A,Y
4F6F: A6 A0       LDA    ,Y+
4F71: A7 0D       STA    $D,X
4F73: A6 A4       LDA    ,Y
4F75: A7 03       STA    $3,X
4F77: 7E 4E A8    JMP    $4EA8
4F7A: 40          NEGA
4F7B: 00 C0       NEG    $C0
4F7D: 80 6A       SUBA   #$6A
4F7F: 88 19       EORA   #$19
4F81: 10 26 00 77 LBNE   $4FFC
4F85: CE 0B 31    LDU    #$0B31
4F88: EC 04       LDD    $4,X
4F8A: ED C4       STD    ,U
4F8C: ED 46       STD    $6,U
4F8E: EC 06       LDD    $6,X
4F90: ED 42       STD    $2,U
4F92: C3 00 08    ADDD   #$0008
4F95: ED 48       STD    $8,U
4F97: EC 08       LDD    $8,X
4F99: ED 44       STD    $4,U
4F9B: C3 00 07    ADDD   #$0007
4F9E: ED 4A       STD    $A,U
4FA0: A6 03       LDA    $3,X
4FA2: A7 4C       STA    $C,U
4FA4: BD FE 20    JSR    $FE20
4FA7: BD FB 00    JSR    $FB00
4FAA: FC 0B 50    LDD    $0B50
4FAD: C3 00 01    ADDD   #$0001
4FB0: ED 06       STD    $6,X
4FB2: FC 0B 52    LDD    $0B52
4FB5: ED 08       STD    $8,X
4FB7: A6 01       LDA    $1,X
4FB9: 81 02       CMPA   #$02
4FBB: 25 2C       BCS    $4FE9
4FBD: A6 88 38    LDA    $38,X
4FC0: 84 0F       ANDA   #$0F
4FC2: 26 0E       BNE    $4FD2
4FC4: CC 00 00    LDD    #$0000
4FC7: FD 0E 0D    STD    $0E0D
4FCA: B7 0E 0B    STA    $0E0B
4FCD: ED 88 2D    STD    $2D,X
4FD0: 20 17       BRA    $4FE9
4FD2: 7A 0E 0C    DEC    $0E0C
4FD5: 10 8E 0E 0F LDY    #$0E0F
4FD9: AC A4       CMPX   ,Y
4FDB: 26 04       BNE    $4FE1
4FDD: EC 22       LDD    $2,Y
4FDF: ED A4       STD    ,Y
4FE1: CC 00 00    LDD    #$0000
4FE4: ED 22       STD    $2,Y
4FE6: ED 88 2D    STD    $2D,X
4FE9: 86 00       LDA    #$00
4FEB: A7 88 1B    STA    $1B,X
4FEE: A6 88 31    LDA    $31,X
4FF1: 84 E7       ANDA   #$E7
4FF3: A7 88 31    STA    $31,X
4FF6: 6F 88 38    CLR    $38,X
4FF9: 6F 88 37    CLR    $37,X
4FFC: 39          RTS
4FFD: 6A 88 19    DEC    $19,X
5000: 26 FA       BNE    $4FFC
5002: CE 0B 31    LDU    #$0B31
5005: EC 04       LDD    $4,X
5007: ED C4       STD    ,U
5009: ED 46       STD    $6,U
500B: EC 06       LDD    $6,X
500D: ED 42       STD    $2,U
500F: C3 FF FE    ADDD   #$FFFE
5012: ED 48       STD    $8,U
5014: EC 08       LDD    $8,X
5016: ED 44       STD    $4,U
5018: C3 FF F8    ADDD   #$FFF8
501B: ED 4A       STD    $A,U
501D: A6 03       LDA    $3,X
501F: A7 4C       STA    $C,U
5021: BD FE 20    JSR    $FE20
5024: BD FB 00    JSR    $FB00
5027: FC 0B 50    LDD    $0B50
502A: ED 06       STD    $6,X
502C: FC 0B 52    LDD    $0B52
502F: ED 08       STD    $8,X
5031: 7E 4F B7    JMP    $4FB7
5034: 04 04       LSR    $04
5036: 04 06       LSR    $06
5038: 05 05 05    EIM    #$05;$05
503B: 07 04       ASR    $04
503D: 00 00       NEG    $00
503F: 00 00       NEG    $00
5041: 00 00       NEG    $00
5043: 00 20       NEG    $20
5045: 00 04       NEG    $04
5047: 00 20       NEG    $20
5049: 00 04       NEG    $04
504B: 00 00       NEG    $00
504D: 00 04       NEG    $04
504F: FF F0 00    STU    $F000
5052: 00 FF       NEG    $FF
5054: F0 FF FC    SUBB   $FFFC
5057: FF F0 FF    STU    $F0FF
505A: FC 00 00    LDD    >$0000
505D: FF FC 00    STU    $FC00
5060: 20 10       BRA    $5072
5062: 8E 50 A5    LDX    #$50A5
5065: A6 88 1B    LDA    $1B,X
5068: 85 40       BITA   #$40
506A: 26 2E       BNE    $509A
506C: 4D          TSTA
506D: 2B 0E       BMI    $507D
506F: BD FE 64    JSR    $FE64
5072: A6 A0       LDA    ,Y+
5074: AA 03       ORA    $3,X
5076: A7 02       STA    $2,X
5078: 86 08       LDA    #$08
507A: A7 88 19    STA    $19,X
507D: 6A 88 19    DEC    $19,X
5080: 26 17       BNE    $5099
5082: 6C 88 18    INC    $18,X
5085: A6 88 18    LDA    $18,X
5088: 81 04       CMPA   #$04
508A: 24 0E       BCC    $509A
508C: 84 01       ANDA   #$01
508E: A6 A6       LDA    A,Y
5090: AA 03       ORA    $3,X
5092: A7 02       STA    $2,X
5094: 86 08       LDA    #$08
5096: A7 88 19    STA    $19,X
5099: 39          RTS
509A: 86 00       LDA    #$00
509C: A7 88 1B    STA    $1B,X
509F: 86 10       LDA    #$10
50A1: A7 88 53    STA    $53,X
50A4: 39          RTS
50A5: 20 21       BRA    $50C8
50A7: A6 88 1B    LDA    $1B,X
50AA: 2B 09       BMI    $50B5
50AC: BD FE 64    JSR    $FE64
50AF: 6F 88 1E    CLR    $1E,X
50B2: 6F 88 1D    CLR    $1D,X
50B5: A6 88 1E    LDA    $1E,X
50B8: 10 8E 50 BF LDY    #$50BF
50BC: 48          ASLA
50BD: 6E B6       JMP    [A,Y]
50BF: 50          NEGB
50C0: C3 50 FD    ADDD   #$50FD
50C3: A6 88 4B    LDA    $4B,X
50C6: 81 04       CMPA   #$04
50C8: 25 08       BCS    $50D2
50CA: 80 04       SUBA   #$04
50CC: 81 05       CMPA   #$05
50CE: 25 02       BCS    $50D2
50D0: 86 04       LDA    #$04
50D2: 10 8E 50 F3 LDY    #$50F3
50D6: 48          ASLA
50D7: EC A6       LDD    A,Y
50D9: 10 B3 03 A6 CMPD   $03A6
50DD: 25 06       BCS    $50E5
50DF: 10 B3 04 04 CMPD   $0404
50E3: 24 0D       BCC    $50F2
50E5: 86 01       LDA    #$01
50E7: A7 88 1E    STA    $1E,X
50EA: A6 84       LDA    ,X
50EC: 84 F0       ANDA   #$F0
50EE: 8A C1       ORA    #$C1
50F0: A7 84       STA    ,X
50F2: 39          RTS
50F3: 17 84 17    LBSR   $D50D
50F6: D0 17       SUBB   $17
50F8: 84 18       ANDA   #$18
50FA: CE 18 CE    LDU    #$18CE
50FD: A6 88 1E    LDA    $1E,X
5100: 2B 12       BMI    $5114
5102: 8A 80       ORA    #$80
5104: A7 88 1E    STA    $1E,X
5107: 86 80       LDA    #$80
5109: A7 0D       STA    $D,X
510B: 86 08       LDA    #$08
510D: A7 88 1D    STA    $1D,X
5110: 86 10       LDA    #$10
5112: A7 0E       STA    $E,X
5114: 6A 88 1D    DEC    $1D,X
5117: 26 08       BNE    $5121
5119: 86 00       LDA    #$00
511B: A7 88 1B    STA    $1B,X
511E: 6F 88 4B    CLR    $4B,X
5121: BD FB 58    JSR    $FB58
5124: BD F9 3C    JSR    $F93C
5127: BD FC 1E    JSR    $FC1E
512A: 39          RTS
512B: 34 26       PSHS   Y,D
512D: B6 0E 4A    LDA    $0E4A
5130: 10 8E 51 3C LDY    #$513C
5134: 84 01       ANDA   #$01
5136: A6 A6       LDA    A,Y
5138: A7 0D       STA    $D,X
513A: 35 A6       PULS   D,Y,PC
513C: 40          NEGA
513D: C0 A6       SUBB   #$A6
513F: 0D 88       TST    $88
5141: 80 A7       SUBA   #$A7
5143: 0D 39       TST    $39
5145: 32 7F       LEAS   -$1,S
5147: 6F E4       CLR    ,S
5149: EC 06       LDD    $6,X
514B: E3 08       ADDD   $8,X
514D: 93 3F       SUBD   $3F
514F: 10 83 00 80 CMPD   #$0080
5153: 25 04       BCS    $5159
5155: 86 80       LDA    #$80
5157: A7 E4       STA    ,S
5159: A6 E4       LDA    ,S
515B: A7 0D       STA    $D,X
515D: 32 61       LEAS   $1,S
515F: 39          RTS
5160: B6 0E 4A    LDA    $0E4A
5163: 84 02       ANDA   #$02
5165: 44          LSRA
5166: 10 8E 51 6F LDY    #$516F
516A: A6 A6       LDA    A,Y
516C: A7 0D       STA    $D,X
516E: 39          RTS
516F: 00 80       NEG    $80
5171: 34 40       PSHS   U
5173: 10 AE 88 2D LDY    $2D,X
5177: B6 0E 4A    LDA    $0E4A
517A: 84 01       ANDA   #$01
517C: E6 01       LDB    $1,X
517E: C1 02       CMPB   #$02
5180: 24 02       BCC    $5184
5182: 88 01       EORA   #$01
5184: CE 51 97    LDU    #$5197
5187: 48          ASLA
5188: E6 C6       LDB    A,U
518A: E7 03       STB    $3,X
518C: 4C          INCA
518D: E6 C6       LDB    A,U
518F: A6 23       LDA    $3,Y
5191: 88 80       EORA   #$80
5193: A7 03       STA    $3,X
5195: 35 C0       PULS   U,PC
5197: 80 18       SUBA   #$18
5199: 00 E8       NEG    $E8
519B: 39          RTS
519C: 34 7E       PSHS   U,Y,X,DP,D
519E: 8E 07 5B    LDX    #$075B
51A1: 0F 01       CLR    $01
51A3: A6 84       LDA    ,X
51A5: 10 2A 00 B4 LBPL   $525D
51A9: A6 88 17    LDA    $17,X
51AC: 27 10       BEQ    $51BE
51AE: 81 0E       CMPA   #$0E
51B0: 27 0C       BEQ    $51BE
51B2: 81 03       CMPA   #$03
51B4: 10 25 00 A5 LBCS   $525D
51B8: 81 08       CMPA   #$08
51BA: 10 24 00 9F LBCC   $525D
51BE: A6 88 1B    LDA    $1B,X
51C1: 84 3F       ANDA   #$3F
51C3: 81 05       CMPA   #$05
51C5: 10 26 00 94 LBNE   $525D
51C9: A6 88 16    LDA    $16,X
51CC: 10 2B 00 8D LBMI   $525D
51D0: DC 3C       LDD    $3C
51D2: 10 A3 04    CMPD   $4,X
51D5: 10 24 00 84 LBCC   $525D
51D9: C3 01 00    ADDD   #$0100
51DC: 10 A3 04    CMPD   $4,X
51DF: 25 7C       BCS    $525D
51E1: 10 8E 04 5E LDY    #$045E
51E5: 0F 00       CLR    $00
51E7: A6 A8 17    LDA    $17,Y
51EA: 85 20       BITA   #$20
51EC: 26 64       BNE    $5252
51EE: 4D          TSTA
51EF: 2B 61       BMI    $5252
51F1: A6 A8 1B    LDA    $1B,Y
51F4: 84 3F       ANDA   #$3F
51F6: 81 00       CMPA   #$00
51F8: 26 58       BNE    $5252
51FA: A6 A8 38    LDA    $38,Y
51FD: 84 0F       ANDA   #$0F
51FF: 81 03       CMPA   #$03
5201: 27 4F       BEQ    $5252
5203: A6 A8 37    LDA    $37,Y
5206: 81 02       CMPA   #$02
5208: 24 48       BCC    $5252
520A: A6 A8 21    LDA    $21,Y
520D: 26 43       BNE    $5252
520F: A6 A4       LDA    ,Y
5211: 84 C0       ANDA   #$C0
5213: 81 C0       CMPA   #$C0
5215: 26 3B       BNE    $5252
5217: A6 21       LDA    $1,Y
5219: 81 22       CMPA   #$22
521B: 25 02       BCS    $521F
521D: 80 17       SUBA   #$17
521F: 80 02       SUBA   #$02
5221: CE 52 6C    LDU    #$526C
5224: 48          ASLA
5225: EE C6       LDU    A,U
5227: A6 C4       LDA    ,U
5229: 81 FF       CMPA   #$FF
522B: 27 25       BEQ    $5252
522D: A6 88 17    LDA    $17,X
5230: 84 1F       ANDA   #$1F
5232: A1 C0       CMPA   ,U+
5234: 26 F1       BNE    $5227
5236: A6 A8 1B    LDA    $1B,Y
5239: 84 3F       ANDA   #$3F
523B: 81 00       CMPA   #$00
523D: 26 13       BNE    $5252
523F: EC 28       LDD    $8,Y
5241: 10 A3 08    CMPD   $8,X
5244: 26 0C       BNE    $5252
5246: 86 0D       LDA    #$0D
5248: AF A8 41    STX    $41,Y
524B: 86 03       LDA    #$03
524D: A7 A8 38    STA    $38,Y
5250: 20 0B       BRA    $525D
5252: 31 A8 55    LEAY   $55,Y
5255: 0C 00       INC    $00
5257: 96 00       LDA    $00
5259: 81 09       CMPA   #$09
525B: 25 8A       BCS    $51E7
525D: C6 21       LDB    #$21
525F: 3A          ABX
5260: 0C 01       INC    $01
5262: 96 01       LDA    $01
5264: 81 10       CMPA   #$10
5266: 10 25 FF 39 LBCS   $51A3
526A: 35 FE       PULS   D,DP,X,Y,U,PC
526C: 52          FCB    $52
526D: 82 52       SBCA   #$52
526F: 82 52       SBCA   #$52
5271: 83 52 87    SUBD   #$5287
5274: 52          FCB    $52
5275: 8B 52       ADDA   #$52
5277: 8F          FCB    $8F
5278: 52          FCB    $52
5279: 99 52       ADCA   $52
527B: 93 52       SUBD   $52
527D: 9C 52       CMPX   $52
527F: 99 52       ADCA   $52
5281: 93 FF       SUBD   $FF
5283: 00 03       NEG    $03
5285: 04 FF       LSR    $FF
5287: 00 03       NEG    $03
5289: 04 FF       LSR    $FF
528B: 00 03       NEG    $03
528D: 04 FF       LSR    $FF
528F: 00 03       NEG    $03
5291: 04 FF       LSR    $FF
5293: 00 03       NEG    $03
5295: 04 06       LSR    $06
5297: 07 FF       ASR    $FF
5299: 06 07       ROR    $07
529B: FF 0E FF    STU    $0EFF
529E: 39          RTS
529F: 34 7E       PSHS   U,Y,X,DP,D
52A1: B6 09 F2    LDA    $09F2
52A4: 2B 03       BMI    $52A9
52A6: BD 60 33    JSR    $6033
52A9: CE 0B 31    LDU    #$0B31
52AC: 10 8E 0D FB LDY    #$0DFB
52B0: EC 04       LDD    $4,X
52B2: ED C1       STD    ,U++
52B4: ED A1       STD    ,Y++
52B6: EC 06       LDD    $6,X
52B8: ED C1       STD    ,U++
52BA: ED A1       STD    ,Y++
52BC: EC 08       LDD    $8,X
52BE: ED C1       STD    ,U++
52C0: ED A1       STD    ,Y++
52C2: BD FB 58    JSR    $FB58
52C5: BD 64 86    JSR    $6486
52C8: BD 64 AB    JSR    $64AB
52CB: CC 00 20    LDD    #$0020
52CE: 10 A3 04    CMPD   $4,X
52D1: 25 0E       BCS    $52E1
52D3: ED 04       STD    $4,X
52D5: A6 88 15    LDA    $15,X
52D8: 85 40       BITA   #$40
52DA: 27 05       BEQ    $52E1
52DC: CC 00 00    LDD    #$0000
52DF: ED 0F       STD    $F,X
52E1: EC 04       LDD    $4,X
52E3: ED C1       STD    ,U++
52E5: EC 06       LDD    $6,X
52E7: ED C1       STD    ,U++
52E9: EC 08       LDD    $8,X
52EB: ED C1       STD    ,U++
52ED: A6 03       LDA    $3,X
52EF: 84 80       ANDA   #$80
52F1: A7 C0       STA    ,U+
52F3: BD FE 20    JSR    $FE20
52F6: BD FB 00    JSR    $FB00
52F9: CE 0D F5    LDU    #$0DF5
52FC: 8E 0B 54    LDX    #$0B54
52FF: EC 83       LDD    ,--X
5301: 36 06       PSHU   D
5303: 8C 0B 4A    CMPX   #$0B4A
5306: 26 F7       BNE    $52FF
5308: 35 FE       PULS   D,DP,X,Y,U,PC
530A: 34 7E       PSHS   U,Y,X,DP,D
530C: 10 8E 0D EF LDY    #$0DEF
5310: EC A1       LDD    ,Y++
5312: ED 04       STD    $4,X
5314: EC A1       LDD    ,Y++
5316: ED 06       STD    $6,X
5318: EC A1       LDD    ,Y++
531A: ED 08       STD    $8,X
531C: 35 FE       PULS   D,DP,X,Y,U,PC
531E: 34 7E       PSHS   U,Y,X,DP,D
5320: 10 8E 0D FB LDY    #$0DFB
5324: 20 EA       BRA    $5310
5326: 32 64       LEAS   $4,S
5328: 1C FE       ANDCC  #$FE
532A: 35 FE       PULS   D,DP,X,Y,U,PC
532C: 34 7E       PSHS   U,Y,X,DP,D
532E: 32 7C       LEAS   -$4,S
5330: A6 88 21    LDA    $21,X
5333: 81 03       CMPA   #$03
5335: 27 EF       BEQ    $5326
5337: 81 05       CMPA   #$05
5339: 27 EB       BEQ    $5326
533B: 81 06       CMPA   #$06
533D: 27 E7       BEQ    $5326
533F: A6 01       LDA    $1,X
5341: CE 54 7B    LDU    #$547B
5344: 81 22       CMPA   #$22
5346: 25 02       BCS    $534A
5348: 80 17       SUBA   #$17
534A: 80 02       SUBA   #$02
534C: A6 C6       LDA    A,U
534E: 26 D6       BNE    $5326
5350: A6 88 21    LDA    $21,X
5353: 81 03       CMPA   #$03
5355: 25 04       BCS    $535B
5357: 81 05       CMPA   #$05
5359: 26 CB       BNE    $5326
535B: A6 88 53    LDA    $53,X
535E: 27 05       BEQ    $5365
5360: 6A 88 53    DEC    $53,X
5363: 20 C1       BRA    $5326
5365: 10 BE 0E 4B LDY    $0E4B
5369: CE 0B 31    LDU    #$0B31
536C: 4F          CLRA
536D: BD 54 09    JSR    $5409
5370: EC 08       LDD    $8,X
5372: 10 A3 28    CMPD   $8,Y
5375: 26 12       BNE    $5389
5377: EC 46       LDD    $6,U
5379: A3 C4       SUBD   ,U
537B: 2A 07       BPL    $5384
537D: ED 61       STD    $1,S
537F: CC 00 00    LDD    #$0000
5382: A3 61       SUBD   $1,S
5384: F1 0E 48    CMPB   $0E48
5387: 24 9D       BCC    $5326
5389: A6 88 15    LDA    $15,X
538C: 84 40       ANDA   #$40
538E: 26 73       BNE    $5403
5390: EC 06       LDD    $6,X
5392: ED 42       STD    $2,U
5394: ED 48       STD    $8,U
5396: EC 08       LDD    $8,X
5398: ED 44       STD    $4,U
539A: ED 4A       STD    $A,U
539C: A6 0D       LDA    $D,X
539E: 84 80       ANDA   #$80
53A0: A7 4C       STA    $C,U
53A2: BD FE 20    JSR    $FE20
53A5: BD FB 00    JSR    $FB00
53A8: B6 0B 4B    LDA    $0B4B
53AB: 84 05       ANDA   #$05
53AD: 27 54       BEQ    $5403
53AF: 4F          CLRA
53B0: BD 54 09    JSR    $5409
53B3: EC 08       LDD    $8,X
53B5: ED 44       STD    $4,U
53B7: C3 00 30    ADDD   #$0030
53BA: ED 4A       STD    $A,U
53BC: A6 03       LDA    $3,X
53BE: 84 80       ANDA   #$80
53C0: A7 4C       STA    $C,U
53C2: BD FE 20    JSR    $FE20
53C5: BD FB 00    JSR    $FB00
53C8: B6 0B 4B    LDA    $0B4B
53CB: 84 05       ANDA   #$05
53CD: 26 15       BNE    $53E4
53CF: EC 06       LDD    $6,X
53D1: 10 A3 26    CMPD   $6,Y
53D4: 25 2D       BCS    $5403
53D6: 86 11       LDA    #$11
53D8: A7 88 1B    STA    $1B,X
53DB: 86 00       LDA    #$00
53DD: A7 88 4E    STA    $4E,X
53E0: 1A 01       ORCC   #$01
53E2: 20 21       BRA    $5405
53E4: B6 0E 4A    LDA    $0E4A
53E7: 84 01       ANDA   #$01
53E9: 27 06       BEQ    $53F1
53EB: 6D 0D       TST    $D,X
53ED: 2A 14       BPL    $5403
53EF: 20 04       BRA    $53F5
53F1: 6D 0D       TST    $D,X
53F3: 2B 0E       BMI    $5403
53F5: A6 88 1B    LDA    $1B,X
53F8: 84 3F       ANDA   #$3F
53FA: 81 12       CMPA   #$12
53FC: 27 05       BEQ    $5403
53FE: 86 0E       LDA    #$0E
5400: A7 88 38    STA    $38,X
5403: 1C FE       ANDCC  #$FE
5405: 32 64       LEAS   $4,S
5407: 35 FE       PULS   D,DP,X,Y,U,PC
5409: 34 22       PSHS   Y,A
540B: EC 04       LDD    $4,X
540D: ED C4       STD    ,U
540F: 10 8E 54 3B LDY    #$543B
5413: 6D E4       TST    ,S
5415: 27 04       BEQ    $541B
5417: 10 8E 54 5B LDY    #$545B
541B: A6 0D       LDA    $D,X
541D: 44          LSRA
541E: 44          LSRA
541F: 44          LSRA
5420: 84 1C       ANDA   #$1C
5422: 31 A6       LEAY   A,Y
5424: EC A1       LDD    ,Y++
5426: E3 04       ADDD   $4,X
5428: 81 FF       CMPA   #$FF
542A: 26 03       BNE    $542F
542C: CC 00 00    LDD    #$0000
542F: ED 46       STD    $6,U
5431: EC 06       LDD    $6,X
5433: ED 42       STD    $2,U
5435: E3 A1       ADDD   ,Y++
5437: ED 48       STD    $8,U
5439: 35 A2       PULS   A,Y,PC
543B: 00 10       NEG    $10
543D: 00 00       NEG    $00
543F: 00 10       NEG    $10
5441: 00 00       NEG    $00
5443: 00 10       NEG    $10
5445: 00 00       NEG    $00
5447: 00 10       NEG    $10
5449: 00 00       NEG    $00
544B: FF F0 00    STU    $F000
544E: 00 FF       NEG    $FF
5450: F0 00 00    SUBB   >$0000
5453: FF F0 00    STU    $F000
5456: 00 FF       NEG    $FF
5458: F0 00 00    SUBB   >$0000
545B: 00 40       NEG    $40
545D: 00 08       NEG    $08
545F: 00 40       NEG    $40
5461: 00 08       NEG    $08
5463: 00 40       NEG    $40
5465: 00 00       NEG    $00
5467: 00 40       NEG    $40
5469: FF F8 FF    STU    $F8FF
546C: C0 FF       SUBB   #$FF
546E: F8 FF C0    EORB   $FFC0
5471: FF F8 FF    STU    $F8FF
5474: C0 00       SUBB   #$00
5476: 00 FF       NEG    $FF
5478: C0 00       SUBB   #$00
547A: 08 FF       ASL    $FF
547C: 00 FF       NEG    $FF
547E: FF FF FF    STU    $FFFF
5481: 00 00       NEG    $00
5483: FF 00 00    STU    >$0000
5486: 34 7E       PSHS   U,Y,X,DP,D
5488: FE 0E 4B    LDU    $0E4B
548B: B6 0B 4D    LDA    $0B4D
548E: 84 F0       ANDA   #$F0
5490: 26 5D       BNE    $54EF
5492: B6 0B 4C    LDA    $0B4C
5495: 84 F0       ANDA   #$F0
5497: 26 56       BNE    $54EF
5499: A6 88 21    LDA    $21,X
549C: 81 03       CMPA   #$03
549E: 27 36       BEQ    $54D6
54A0: 81 05       CMPA   #$05
54A2: 27 32       BEQ    $54D6
54A4: 81 06       CMPA   #$06
54A6: 27 2E       BEQ    $54D6
54A8: A6 01       LDA    $1,X
54AA: 81 22       CMPA   #$22
54AC: 25 02       BCS    $54B0
54AE: 80 17       SUBA   #$17
54B0: 80 02       SUBA   #$02
54B2: 10 8E 54 F4 LDY    #$54F4
54B6: A6 A6       LDA    A,Y
54B8: 26 1C       BNE    $54D6
54BA: EC 48       LDD    $8,U
54BC: 10 A3 08    CMPD   $8,X
54BF: 27 15       BEQ    $54D6
54C1: 24 13       BCC    $54D6
54C3: A6 C8 15    LDA    $15,U
54C6: 85 40       BITA   #$40
54C8: 26 0C       BNE    $54D6
54CA: 86 11       LDA    #$11
54CC: A7 88 1B    STA    $1B,X
54CF: 86 01       LDA    #$01
54D1: A7 88 4E    STA    $4E,X
54D4: 20 19       BRA    $54EF
54D6: A6 88 38    LDA    $38,X
54D9: 84 0F       ANDA   #$0F
54DB: 81 0E       CMPA   #$0E
54DD: 27 0B       BEQ    $54EA
54DF: 86 0E       LDA    #$0E
54E1: A7 88 38    STA    $38,X
54E4: A6 0D       LDA    $D,X
54E6: 8B 80       ADDA   #$80
54E8: A7 0D       STA    $D,X
54EA: BD 53 1E    JSR    $531E
54ED: 20 03       BRA    $54F2
54EF: BD 53 0A    JSR    $530A
54F2: 35 FE       PULS   D,DP,X,Y,U,PC
54F4: FF 00 00    STU    >$0000
54F7: 00 00       NEG    $00
54F9: 00 00       NEG    $00
54FB: 00 FF       NEG    $FF
54FD: 00 00       NEG    $00
54FF: A6 88 1B    LDA    $1B,X
5502: 2B 06       BMI    $550A
5504: BD FE 64    JSR    $FE64
5507: 7F 0E 55    CLR    $0E55
550A: B6 0E 55    LDA    $0E55
550D: 84 0F       ANDA   #$0F
550F: 48          ASLA
5510: 10 8E 55 17 LDY    #$5517
5514: 6E B6       JMP    [A,Y]
5516: 39          RTS
5517: 55          FCB    $55
5518: 25 55       BCS    $556F
551A: 7B 55 B6 55 TIM    #$55,$B655
551E: F7 56 35    STB    $5635
5521: 56          RORB
5522: 7B 56 B8 10 TIM    #$56,$B810
5526: 8E 55 71    LDX    #$5571
5529: B6 0E 55    LDA    $0E55
552C: 2B 0F       BMI    $553D
552E: 8A 80       ORA    #$80
5530: B7 0E 55    STA    $0E55
5533: 6F 88 18    CLR    $18,X
5536: 86 10       LDA    #$10
5538: A7 88 19    STA    $19,X
553B: A6 A4       LDA    ,Y
553D: 6A 88 19    DEC    $19,X
5540: 26 22       BNE    $5564
5542: 6C 88 18    INC    $18,X
5545: A6 88 18    LDA    $18,X
5548: 81 02       CMPA   #$02
554A: 25 04       BCS    $5550
554C: 6F 88 18    CLR    $18,X
554F: 4F          CLRA
5550: A6 A6       LDA    A,Y
5552: AA 03       ORA    $3,X
5554: A7 02       STA    $2,X
5556: BD FB 76    JSR    $FB76
5559: 84 07       ANDA   #$07
555B: 10 8E 55 73 LDY    #$5573
555F: A6 A6       LDA    A,Y
5561: A7 88 19    STA    $19,X
5564: B6 0B 22    LDA    $0B22
5567: 81 03       CMPA   #$03
5569: 25 05       BCS    $5570
556B: 86 01       LDA    #$01
556D: B7 0E 55    STA    $0E55
5570: 39          RTS
5571: 1D          SEX
5572: 1E 20       EXG    Y,D
5574: 18          FCB    $18
5575: 10 08       FCB    $10,$08
5577: 10          FCB    $10
5578: 18          FCB    $18
5579: 20 08       BRA    $5583
557B: B6 0E 55    LDA    $0E55
557E: 2B 17       BMI    $5597
5580: 8A 80       ORA    #$80
5582: B7 0E 55    STA    $0E55
5585: 6F 88 18    CLR    $18,X
5588: 86 19       LDA    #$19
558A: A7 02       STA    $2,X
558C: 86 08       LDA    #$08
558E: A7 88 19    STA    $19,X
5591: 10 BE 0E 53 LDY    $0E53
5595: 6F A4       CLR    ,Y
5597: 6A 88 19    DEC    $19,X
559A: 26 13       BNE    $55AF
559C: 6C 88 18    INC    $18,X
559F: A6 88 18    LDA    $18,X
55A2: 81 02       CMPA   #$02
55A4: 24 0A       BCC    $55B0
55A6: 86 1A       LDA    #$1A
55A8: A7 02       STA    $2,X
55AA: 86 08       LDA    #$08
55AC: A7 88 19    STA    $19,X
55AF: 39          RTS
55B0: 86 02       LDA    #$02
55B2: B7 0E 55    STA    $0E55
55B5: 39          RTS
55B6: B6 0E 55    LDA    $0E55
55B9: 2B 28       BMI    $55E3
55BB: 8A 80       ORA    #$80
55BD: B7 0E 55    STA    $0E55
55C0: 6F 88 18    CLR    $18,X
55C3: 86 00       LDA    #$00
55C5: A7 88 37    STA    $37,X
55C8: A7 03       STA    $3,X
55CA: 86 00       LDA    #$00
55CC: AA 03       ORA    $3,X
55CE: A7 02       STA    $2,X
55D0: 86 01       LDA    #$01
55D2: A7 88 19    STA    $19,X
55D5: 86 40       LDA    #$40
55D7: A7 0D       STA    $D,X
55D9: 86 10       LDA    #$10
55DB: A7 0E       STA    $E,X
55DD: 10 BE 0E 53 LDY    $0E53
55E1: 6F A4       CLR    ,Y
55E3: BD FB 58    JSR    $FB58
55E6: EC 04       LDD    $4,X
55E8: 10 83 1B C0 CMPD   #$1BC0
55EC: 25 05       BCS    $55F3
55EE: 86 03       LDA    #$03
55F0: B7 0E 55    STA    $0E55
55F3: BD FC 1E    JSR    $FC1E
55F6: 39          RTS
55F7: B6 0E 55    LDA    $0E55
55FA: 2B 2E       BMI    $562A
55FC: 8A 80       ORA    #$80
55FE: B7 0E 55    STA    $0E55
5601: CC 1B 4E    LDD    #$1B4E
5604: ED 04       STD    $4,X
5606: CC 00 B0    LDD    #$00B0
5609: ED 06       STD    $6,X
560B: CC 01 00    LDD    #$0100
560E: ED 08       STD    $8,X
5610: 86 C0       LDA    #$C0
5612: A7 0D       STA    $D,X
5614: 86 7F       LDA    #$7F
5616: A7 02       STA    $2,X
5618: 86 30       LDA    #$30
561A: A7 88 19    STA    $19,X
561D: 86 00       LDA    #$00
561F: A7 88 37    STA    $37,X
5622: 6F 0E       CLR    $E,X
5624: 10 BE 0E 53 LDY    $0E53
5628: 6F A4       CLR    ,Y
562A: 6A 88 19    DEC    $19,X
562D: 26 05       BNE    $5634
562F: 86 04       LDA    #$04
5631: B7 0E 55    STA    $0E55
5634: 39          RTS
5635: 10 8E 56 79 LDY    #$5679
5639: B6 0E 55    LDA    $0E55
563C: 2B 0E       BMI    $564C
563E: 8A 80       ORA    #$80
5640: B7 0E 55    STA    $0E55
5643: 86 10       LDA    #$10
5645: A7 0E       STA    $E,X
5647: 86 10       LDA    #$10
5649: A7 88 19    STA    $19,X
564C: 6A 88 19    DEC    $19,X
564F: 26 17       BNE    $5668
5651: 6C 88 18    INC    $18,X
5654: A6 88 18    LDA    $18,X
5657: 81 02       CMPA   #$02
5659: 25 04       BCS    $565F
565B: 6F 88 18    CLR    $18,X
565E: 4F          CLRA
565F: A6 A6       LDA    A,Y
5661: A7 02       STA    $2,X
5663: 86 10       LDA    #$10
5665: A7 88 19    STA    $19,X
5668: BD FB 58    JSR    $FB58
566B: EC 04       LDD    $4,X
566D: 10 83 1A FE CMPD   #$1AFE
5671: 24 05       BCC    $5678
5673: 86 05       LDA    #$05
5675: B7 0E 55    STA    $0E55
5678: 39          RTS
5679: 5A          DECB
567A: 5B          FCB    $5B
567B: B6 0E 55    LDA    $0E55
567E: 2B 28       BMI    $56A8
5680: 8A 80       ORA    #$80
5682: B7 0E 55    STA    $0E55
5685: CC 1A D4    LDD    #$1AD4
5688: ED 04       STD    $4,X
568A: CC 00 A5    LDD    #$00A5
568D: ED 06       STD    $6,X
568F: CC 01 00    LDD    #$0100
5692: ED 08       STD    $8,X
5694: 86 C0       LDA    #$C0
5696: A7 0D       STA    $D,X
5698: 86 7F       LDA    #$7F
569A: A7 02       STA    $2,X
569C: 86 30       LDA    #$30
569E: A7 88 19    STA    $19,X
56A1: 86 00       LDA    #$00
56A3: A7 88 37    STA    $37,X
56A6: 6F 0E       CLR    $E,X
56A8: 6A 88 19    DEC    $19,X
56AB: 26 0A       BNE    $56B7
56AD: 86 06       LDA    #$06
56AF: B7 0E 55    STA    $0E55
56B2: 86 80       LDA    #$80
56B4: B7 0A EC    STA    $0AEC
56B7: 39          RTS
56B8: B6 0A EC    LDA    $0AEC
56BB: 85 01       BITA   #$01
56BD: 27 35       BEQ    $56F4
56BF: B6 0E 55    LDA    $0E55
56C2: 2B 16       BMI    $56DA
56C4: 8A 80       ORA    #$80
56C6: B7 0E 55    STA    $0E55
56C9: 86 08       LDA    #$08
56CB: A7 0E       STA    $E,X
56CD: 86 01       LDA    #$01
56CF: A7 88 19    STA    $19,X
56D2: 6F 88 18    CLR    $18,X
56D5: 6F 03       CLR    $3,X
56D7: 6F 88 37    CLR    $37,X
56DA: BD FC 1E    JSR    $FC1E
56DD: BD FB 58    JSR    $FB58
56E0: 86 07       LDA    #$07
56E2: A7 02       STA    $2,X
56E4: B6 0A EC    LDA    $0AEC
56E7: 8A 80       ORA    #$80
56E9: B7 0A EC    STA    $0AEC
56EC: 86 00       LDA    #$00
56EE: A7 88 1B    STA    $1B,X
56F1: 7F 0E 55    CLR    $0E55
56F4: 39          RTS
56F5: 8E 04 5E    LDX    #$045E
56F8: 7F 09 F0    CLR    $09F0
56FB: 0F 80       CLR    $80
56FD: 0F 93       CLR    $93
56FF: 0F A6       CLR    $A6
5701: 0F B9       CLR    $B9
5703: A6 84       LDA    ,X
5705: 84 C0       ANDA   #$C0
5707: 81 C0       CMPA   #$C0
5709: 26 0B       BNE    $5716
570B: 10 8E 57 24 LDY    #$5724
570F: 96 29       LDA    $29
5711: 84 03       ANDA   #$03
5713: 48          ASLA
5714: AD B6       JSR    [A,Y]
5716: C6 55       LDB    #$55
5718: 3A          ABX
5719: 7C 09 F0    INC    $09F0
571C: B6 09 F0    LDA    $09F0
571F: 81 09       CMPA   #$09
5721: 25 E0       BCS    $5703
5723: 39          RTS
5724: 57          ASRB
5725: 2C 57       BGE    $577E
5727: 2D 57       BLT    $5780
5729: 38          FCB    $38
572A: 57          ASRB
572B: 43          COMA
572C: 39          RTS
572D: 10 8E 03 A2 LDY    #$03A2
5731: BD 57 55    JSR    $5755
5734: BD F9 00    JSR    $F900
5737: 39          RTS
5738: 10 8E 04 00 LDY    #$0400
573C: BD 57 55    JSR    $5755
573F: BD F9 0A    JSR    $F90A
5742: 39          RTS
5743: 10 8E 03 A2 LDY    #$03A2
5747: BD 57 55    JSR    $5755
574A: 10 8E 04 00 LDY    #$0400
574E: BD 57 55    JSR    $5755
5751: BD F9 14    JSR    $F914
5754: 39          RTS
5755: 32 71       LEAS   -$F,S
5757: EC 24       LDD    $4,Y
5759: ED E4       STD    ,S
575B: EC 04       LDD    $4,X
575D: ED 62       STD    $2,S
575F: A6 A8 1B    LDA    $1B,Y
5762: 84 7F       ANDA   #$7F
5764: 81 05       CMPA   #$05
5766: 26 0E       BNE    $5776
5768: CC 00 10    LDD    #$0010
576B: 6D 23       TST    $3,Y
576D: 2A 03       BPL    $5772
576F: CC FF F0    LDD    #$FFF0
5772: E3 24       ADDD   $4,Y
5774: ED 24       STD    $4,Y
5776: A6 88 1B    LDA    $1B,X
5779: 84 0F       ANDA   #$0F
577B: 81 05       CMPA   #$05
577D: 26 0E       BNE    $578D
577F: CC 00 10    LDD    #$0010
5782: 6D 03       TST    $3,X
5784: 2A 03       BPL    $5789
5786: CC FF F0    LDD    #$FFF0
5789: E3 04       ADDD   $4,X
578B: ED 04       STD    $4,X
578D: 10 9F 00    STY    $00
5790: BD FB 4E    JSR    $FB4E
5793: 10 8C 03 A2 CMPY   #$03A2
5797: 26 2A       BNE    $57C3
5799: A6 88 13    LDA    $13,X
579C: 84 FC       ANDA   #$FC
579E: 9A 00       ORA    $00
57A0: A7 88 13    STA    $13,X
57A3: DC 01       LDD    $01
57A5: 0D 01       TST    $01
57A7: 27 04       BEQ    $57AD
57A9: 86 FF       LDA    #$FF
57AB: 97 02       STA    $02
57AD: 96 02       LDA    $02
57AF: A7 88 3A    STA    $3A,X
57B2: DC 03       LDD    $03
57B4: 0D 03       TST    $03
57B6: 27 04       BEQ    $57BC
57B8: 86 FF       LDA    #$FF
57BA: 97 04       STA    $04
57BC: 96 04       LDA    $04
57BE: A7 88 3B    STA    $3B,X
57C1: 20 28       BRA    $57EB
57C3: A6 88 14    LDA    $14,X
57C6: 84 FC       ANDA   #$FC
57C8: 9A 00       ORA    $00
57CA: A7 88 14    STA    $14,X
57CD: DC 01       LDD    $01
57CF: 0D 01       TST    $01
57D1: 27 04       BEQ    $57D7
57D3: 86 FF       LDA    #$FF
57D5: 97 02       STA    $02
57D7: 96 02       LDA    $02
57D9: A7 88 3C    STA    $3C,X
57DC: DC 03       LDD    $03
57DE: 0D 03       TST    $03
57E0: 27 04       BEQ    $57E6
57E2: 86 FF       LDA    #$FF
57E4: 97 04       STA    $04
57E6: 96 04       LDA    $04
57E8: A7 88 3D    STA    $3D,X
57EB: EC E4       LDD    ,S
57ED: ED 24       STD    $4,Y
57EF: EC 62       LDD    $2,S
57F1: ED 04       STD    $4,X
57F3: 32 6F       LEAS   $F,S
57F5: 39          RTS
57F6: 34 7E       PSHS   U,Y,X,DP,D
57F8: CC 00 00    LDD    #$0000
57FB: B7 03 E1    STA    $03E1
57FE: B7 04 3F    STA    $043F
5801: B7 03 E0    STA    $03E0
5804: B7 04 3E    STA    $043E
5807: FD 03 DE    STD    $03DE
580A: FD 04 3C    STD    $043C
580D: 96 29       LDA    $29
580F: 84 03       ANDA   #$03
5811: 48          ASLA
5812: 10 8E 58 1A LDY    #$581A
5816: AD B6       JSR    [A,Y]
5818: 35 FE       PULS   D,DP,X,Y,U,PC
581A: 58          ASLB
581B: 22 58       BHI    $5875
581D: 23 58       BLS    $5877
581F: 4F          CLRA
5820: 58          ASLB
5821: 7B 39 0F 00 TIM    #$39,$0F00
5825: 96 80       LDA    $80
5827: 27 12       BEQ    $583B
5829: B7 03 E1    STA    $03E1
582C: 10 8E 00 82 LDY    #$0082
5830: 0F 01       CLR    $01
5832: BD F9 1E    JSR    $F91E
5835: 96 01       LDA    $01
5837: 91 80       CMPA   $80
5839: 25 F7       BCS    $5832
583B: 96 93       LDA    $93
583D: 27 0F       BEQ    $584E
583F: 10 8E 00 95 LDY    #$0095
5843: 0F 01       CLR    $01
5845: BD F9 1E    JSR    $F91E
5848: 96 01       LDA    $01
584A: 91 93       CMPA   $93
584C: 25 F7       BCS    $5845
584E: 39          RTS
584F: 0F 00       CLR    $00
5851: 96 A6       LDA    $A6
5853: 27 12       BEQ    $5867
5855: B7 04 3F    STA    $043F
5858: 10 8E 00 A8 LDY    #$00A8
585C: 0F 01       CLR    $01
585E: BD F9 28    JSR    $F928
5861: 96 01       LDA    $01
5863: 91 A6       CMPA   $A6
5865: 25 F7       BCS    $585E
5867: 96 B9       LDA    $B9
5869: 27 0F       BEQ    $587A
586B: 10 8E 00 BB LDY    #$00BB
586F: 0F 01       CLR    $01
5871: BD F9 28    JSR    $F928
5874: 96 01       LDA    $01
5876: 91 B9       CMPA   $B9
5878: 25 F7       BCS    $5871
587A: 39          RTS
587B: B6 03 A2    LDA    $03A2
587E: 10 2A FF CD LBPL   $584F
5882: B6 04 00    LDA    $0400
5885: 10 2A FF 9A LBPL   $5823
5889: 34 7E       PSHS   U,Y,X,DP,D
588B: 0F 02       CLR    $02
588D: 0F 03       CLR    $03
588F: 0F 04       CLR    $04
5891: 96 80       LDA    $80
5893: 26 06       BNE    $589B
5895: 96 A6       LDA    $A6
5897: 27 42       BEQ    $58DB
5899: 0C 04       INC    $04
589B: 96 80       LDA    $80
589D: 97 00       STA    $00
589F: 96 A6       LDA    $A6
58A1: 97 01       STA    $01
58A3: CE 09 F9    LDU    #$09F9
58A6: 8E 00 81    LDX    #$0081
58A9: 10 8E 00 A7 LDY    #$00A7
58AD: 0D 04       TST    $04
58AF: 27 0C       BEQ    $58BD
58B1: 1F 10       TFR    X,D
58B3: 1F 21       TFR    Y,X
58B5: 1F 02       TFR    D,Y
58B7: DC 00       LDD    $00
58B9: 97 01       STA    $01
58BB: D7 00       STB    $00
58BD: 0D 00       TST    $00
58BF: 27 08       BEQ    $58C9
58C1: EC 81       LDD    ,X++
58C3: ED C1       STD    ,U++
58C5: 0C 02       INC    $02
58C7: 0A 00       DEC    $00
58C9: 0D 01       TST    $01
58CB: 27 08       BEQ    $58D5
58CD: EC A1       LDD    ,Y++
58CF: ED C1       STD    ,U++
58D1: 0C 02       INC    $02
58D3: 0A 01       DEC    $01
58D5: 96 00       LDA    $00
58D7: 9A 01       ORA    $01
58D9: 26 E2       BNE    $58BD
58DB: CE 0A 1D    LDU    #$0A1D
58DE: 8E 00 94    LDX    #$0094
58E1: 10 8E 00 BA LDY    #$00BA
58E5: 96 93       LDA    $93
58E7: D6 B9       LDB    $B9
58E9: DD 00       STD    $00
58EB: 0D 00       TST    $00
58ED: 27 08       BEQ    $58F7
58EF: EC 81       LDD    ,X++
58F1: ED C1       STD    ,U++
58F3: 0C 03       INC    $03
58F5: 0A 00       DEC    $00
58F7: 0D 01       TST    $01
58F9: 27 08       BEQ    $5903
58FB: EC A1       LDD    ,Y++
58FD: ED C1       STD    ,U++
58FF: 0C 03       INC    $03
5901: 0A 01       DEC    $01
5903: 96 00       LDA    $00
5905: 9A 01       ORA    $01
5907: 26 E2       BNE    $58EB
5909: 0F 00       CLR    $00
590B: 0F 01       CLR    $01
590D: 96 02       LDA    $02
590F: 27 15       BEQ    $5926
5911: 10 8E 09 FA LDY    #$09FA
5915: 0F 05       CLR    $05
5917: BD F9 32    JSR    $F932
591A: 96 04       LDA    $04
591C: 88 01       EORA   #$01
591E: 97 04       STA    $04
5920: 96 05       LDA    $05
5922: 91 02       CMPA   $02
5924: 25 F1       BCS    $5917
5926: 10 8E 0A 1E LDY    #$0A1E
592A: 0F 05       CLR    $05
592C: 96 03       LDA    $03
592E: 27 0F       BEQ    $593F
5930: BD F9 32    JSR    $F932
5933: 96 04       LDA    $04
5935: 88 01       EORA   #$01
5937: 97 04       STA    $04
5939: 96 05       LDA    $05
593B: 91 03       CMPA   $03
593D: 25 F1       BCS    $5930
593F: 35 FE       PULS   D,DP,X,Y,U,PC
5941: 34 36       PSHS   Y,X,D
5943: 8E 04 5E    LDX    #$045E
5946: 96 0F       LDA    $0F
5948: C6 55       LDB    #$55
594A: 3D          MUL
594B: 30 8B       LEAX   D,X
594D: 9F 0E       STX    $0E
594F: 35 B6       PULS   D,X,Y,PC
5951: 34 3E       PSHS   Y,X,DP,D
5953: 10 BE 0E 4B LDY    $0E4B
5957: A6 A8 1B    LDA    $1B,Y
595A: 84 7F       ANDA   #$7F
595C: 81 0A       CMPA   #$0A
595E: 26 09       BNE    $5969
5960: BD 5B 90    JSR    $5B90
5963: 27 31       BEQ    $5996
5965: 86 06       LDA    #$06
5967: 26 26       BNE    $598F
5969: 81 09       CMPA   #$09
596B: 27 08       BEQ    $5975
596D: 81 06       CMPA   #$06
596F: 27 04       BEQ    $5975
5971: 81 08       CMPA   #$08
5973: 26 09       BNE    $597E
5975: BD 5B 90    JSR    $5B90
5978: 26 1C       BNE    $5996
597A: 86 06       LDA    #$06
597C: 20 11       BRA    $598F
597E: 81 0C       CMPA   #$0C
5980: 27 F8       BEQ    $597A
5982: 81 05       CMPA   #$05
5984: 26 10       BNE    $5996
5986: B6 0E 48    LDA    $0E48
5989: 81 2C       CMPA   #$2C
598B: 24 09       BCC    $5996
598D: 86 0B       LDA    #$0B
598F: A7 88 38    STA    $38,X
5992: 1A 01       ORCC   #$01
5994: 35 BE       PULS   D,DP,X,Y,PC
5996: 1C FE       ANDCC  #$FE
5998: 35 BE       PULS   D,DP,X,Y,PC
599A: 34 3E       PSHS   Y,X,DP,D
599C: 10 BE 0E 4B LDY    $0E4B
59A0: A6 A8 1B    LDA    $1B,Y
59A3: 84 3F       ANDA   #$3F
59A5: 81 0A       CMPA   #$0A
59A7: 26 0E       BNE    $59B7
59A9: BD 5B 90    JSR    $5B90
59AC: 27 31       BEQ    $59DF
59AE: BD 5B F7    JSR    $5BF7
59B1: 26 34       BNE    $59E7
59B3: 86 02       LDA    #$02
59B5: 26 29       BNE    $59E0
59B7: 81 09       CMPA   #$09
59B9: 27 08       BEQ    $59C3
59BB: 81 06       CMPA   #$06
59BD: 27 04       BEQ    $59C3
59BF: 81 08       CMPA   #$08
59C1: 26 0E       BNE    $59D1
59C3: BD 5B 90    JSR    $5B90
59C6: 26 17       BNE    $59DF
59C8: BD 5B F7    JSR    $5BF7
59CB: 26 1A       BNE    $59E7
59CD: 86 01       LDA    #$01
59CF: 26 0F       BNE    $59E0
59D1: B6 0E 49    LDA    $0E49
59D4: 81 04       CMPA   #$04
59D6: 24 0F       BCC    $59E7
59D8: B6 0E 48    LDA    $0E48
59DB: 81 24       CMPA   #$24
59DD: 24 08       BCC    $59E7
59DF: 4F          CLRA
59E0: A7 88 38    STA    $38,X
59E3: 1A 01       ORCC   #$01
59E5: 35 BE       PULS   D,DP,X,Y,PC
59E7: 1C FE       ANDCC  #$FE
59E9: 35 BE       PULS   D,DP,X,Y,PC
59EB: 34 36       PSHS   Y,X,D
59ED: A6 88 39    LDA    $39,X
59F0: 81 02       CMPA   #$02
59F2: 26 3E       BNE    $5A32
59F4: 10 BE 0E 4B LDY    $0E4B
59F8: A6 A8 54    LDA    $54,Y
59FB: 97 0F       STA    $0F
59FD: BD 59 41    JSR    $5941
5A00: 10 9E 0E    LDY    $0E
5A03: A6 A8 1B    LDA    $1B,Y
5A06: 84 3F       ANDA   #$3F
5A08: 81 0C       CMPA   #$0C
5A0A: 26 26       BNE    $5A32
5A0C: BD 5B F1    JSR    $5BF1
5A0F: 27 21       BEQ    $5A32
5A11: 10 BE 0E 4B LDY    $0E4B
5A15: A6 A8 1B    LDA    $1B,Y
5A18: 84 3F       ANDA   #$3F
5A1A: 81 0A       CMPA   #$0A
5A1C: 26 07       BNE    $5A25
5A1E: BD 5B 90    JSR    $5B90
5A21: 27 07       BEQ    $5A2A
5A23: 26 0D       BNE    $5A32
5A25: BD 5B 90    JSR    $5B90
5A28: 27 08       BEQ    $5A32
5A2A: 4F          CLRA
5A2B: A7 88 38    STA    $38,X
5A2E: 1A 01       ORCC   #$01
5A30: 35 B6       PULS   D,X,Y,PC
5A32: 1C FE       ANDCC  #$FE
5A34: 35 B6       PULS   D,X,Y,PC
5A36: 34 7E       PSHS   U,Y,X,DP,D
5A38: A6 88 38    LDA    $38,X
5A3B: 84 20       ANDA   #$20
5A3D: 26 47       BNE    $5A86
5A3F: 10 BE 0E 4B LDY    $0E4B
5A43: A6 A8 1B    LDA    $1B,Y
5A46: 84 3F       ANDA   #$3F
5A48: 81 07       CMPA   #$07
5A4A: 10 26 00 7A LBNE   $5AC8
5A4E: 96 51       LDA    $51
5A50: 84 0E       ANDA   #$0E
5A52: 10 26 00 72 LBNE   $5AC8
5A56: A6 A8 1E    LDA    $1E,Y
5A59: 84 7F       ANDA   #$7F
5A5B: 81 09       CMPA   #$09
5A5D: 26 07       BNE    $5A66
5A5F: BD 5B 90    JSR    $5B90
5A62: 26 64       BNE    $5AC8
5A64: 27 05       BEQ    $5A6B
5A66: BD 5B 90    JSR    $5B90
5A69: 26 5D       BNE    $5AC8
5A6B: E6 01       LDB    $1,X
5A6D: C1 22       CMPB   #$22
5A6F: 25 02       BCS    $5A73
5A71: C0 17       SUBB   #$17
5A73: C0 02       SUBB   #$02
5A75: 86 07       LDA    #$07
5A77: 97 00       STA    $00
5A79: 10 8E 5A CC LDY    #$5ACC
5A7D: A6 A5       LDA    B,Y
5A7F: 97 01       STA    $01
5A81: BD FC 0A    JSR    $FC0A
5A84: 27 42       BEQ    $5AC8
5A86: 10 BE 0E 4B LDY    $0E4B
5A8A: A6 A8 1E    LDA    $1E,Y
5A8D: 84 7F       ANDA   #$7F
5A8F: 48          ASLA
5A90: 10 8E 5A D7 LDY    #$5AD7
5A94: 31 A6       LEAY   A,Y
5A96: A6 A0       LDA    ,Y+
5A98: 2B 26       BMI    $5AC0
5A9A: B1 0E 48    CMPA   $0E48
5A9D: 24 0E       BCC    $5AAD
5A9F: A6 A0       LDA    ,Y+
5AA1: B1 0E 48    CMPA   $0E48
5AA4: 24 07       BCC    $5AAD
5AA6: 86 04       LDA    #$04
5AA8: A7 88 38    STA    $38,X
5AAB: 20 13       BRA    $5AC0
5AAD: A6 88 38    LDA    $38,X
5AB0: 8A 20       ORA    #$20
5AB2: A7 88 38    STA    $38,X
5AB5: B6 0E 49    LDA    $0E49
5AB8: 81 0C       CMPA   #$0C
5ABA: 24 0C       BCC    $5AC8
5ABC: 1A 01       ORCC   #$01
5ABE: 20 0A       BRA    $5ACA
5AC0: A6 88 38    LDA    $38,X
5AC3: 84 DF       ANDA   #$DF
5AC5: A7 88 38    STA    $38,X
5AC8: 1C FE       ANDCC  #$FE
5ACA: 35 FE       PULS   D,DP,X,Y,U,PC
5ACC: 02 03 03    AIM    #$03;$03
5ACF: 03 03       COM    $03
5AD1: 03 03       COM    $03
5AD3: 03 03       COM    $03
5AD5: 03 03       COM    $03
5AD7: 24 2C       BCC    $5B05
5AD9: 24 2C       BCC    $5B07
5ADB: 24 2E       BCC    $5B0B
5ADD: 24 2C       BCC    $5B0B
5ADF: 24 2C       BCC    $5B0D
5AE1: 24 2C       BCC    $5B0F
5AE3: 24 2E       BCC    $5B13
5AE5: 24 2C       BCC    $5B13
5AE7: 24 2E       BCC    $5B17
5AE9: 24 2C       BCC    $5B17
5AEB: 24 2C       BCC    $5B19
5AED: 24 2C       BCC    $5B1B
5AEF: 24 2C       BCC    $5B1D
5AF1: 24 2C       BCC    $5B1F
5AF3: 24 2E       BCC    $5B23
5AF5: 24 2E       BCC    $5B25
5AF7: 24 2C       BCC    $5B25
5AF9: 24 2C       BCC    $5B27
5AFB: 24 2C       BCC    $5B29
5AFD: 24 2C       BCC    $5B2B
5AFF: FF FF FF    STU    $FFFF
5B02: FF FF FF    STU    $FFFF
5B05: FF FF 32    STU    $FF32
5B08: 7C A6 88    INC    $A688
5B0B: 21 81       BRN    $5A8E
5B0D: 03 25       COM    $25
5B0F: 0A 81       DEC    $81
5B11: 04 27       LSR    $27
5B13: 06 81       ROR    $81
5B15: 06 10       ROR    $10
5B17: 26 00       BNE    $5B19
5B19: 66 96       ROR    [A,X]
5B1B: 51          FCB    $51
5B1C: 84 06       ANDA   #$06
5B1E: 26 60       BNE    $5B80
5B20: 10 BE 0E 4B LDY    $0E4B
5B24: EC 28       LDD    $8,Y
5B26: A3 08       SUBD   $8,X
5B28: 2B 56       BMI    $5B80
5B2A: 10 83 00 50 CMPD   #$0050
5B2E: 24 50       BCC    $5B80
5B30: B6 0E 49    LDA    $0E49
5B33: 81 04       CMPA   #$04
5B35: 24 49       BCC    $5B80
5B37: B6 0E 48    LDA    $0E48
5B3A: 81 24       CMPA   #$24
5B3C: 24 42       BCC    $5B80
5B3E: A6 A8 1B    LDA    $1B,Y
5B41: 84 3F       ANDA   #$3F
5B43: 81 07       CMPA   #$07
5B45: 26 39       BNE    $5B80
5B47: A6 A8 1E    LDA    $1E,Y
5B4A: 84 7F       ANDA   #$7F
5B4C: 81 01       CMPA   #$01
5B4E: 27 04       BEQ    $5B54
5B50: 81 02       CMPA   #$02
5B52: 26 2C       BNE    $5B80
5B54: E6 01       LDB    $1,X
5B56: 6D 88 17    TST    $17,X
5B59: 2A 01       BPL    $5B5C
5B5B: 5F          CLRB
5B5C: C1 22       CMPB   #$22
5B5E: 25 02       BCS    $5B62
5B60: C0 17       SUBB   #$17
5B62: C0 02       SUBB   #$02
5B64: 86 07       LDA    #$07
5B66: 97 00       STA    $00
5B68: 10 8E 5B 85 LDY    #$5B85
5B6C: A6 A5       LDA    B,Y
5B6E: 97 01       STA    $01
5B70: BD FC 0A    JSR    $FC0A
5B73: 4D          TSTA
5B74: 26 0A       BNE    $5B80
5B76: C6 04       LDB    #$04
5B78: E7 88 1B    STB    $1B,X
5B7B: 32 64       LEAS   $4,S
5B7D: 1A 01       ORCC   #$01
5B7F: 39          RTS
5B80: 32 64       LEAS   $4,S
5B82: 1C FE       ANDCC  #$FE
5B84: 39          RTS
5B85: 02 02 02    AIM    #$02;$02
5B88: 02 02 02    AIM    #$02;$02
5B8B: 05 02 04    EIM    #$02;$04
5B8E: 05 02 34    EIM    #$02;$34
5B91: 76 FE 0E    ROR    $FE0E
5B94: 4B          FCB    $4B
5B95: B6 0E 4A    LDA    $0E4A
5B98: 84 01       ANDA   #$01
5B9A: 10 8E 5B A4 LDY    #$5BA4
5B9E: E6 43       LDB    $3,U
5BA0: E1 A6       CMPB   A,Y
5BA2: 35 F6       PULS   D,X,Y,U,PC
5BA4: 80 00       SUBA   #$00
5BA6: B6 0E 4A    LDA    $0E4A
5BA9: 84 01       ANDA   #$01
5BAB: 10 8E 5B B4 LDY    #$5BB4
5BAF: E6 A6       LDB    A,Y
5BB1: E1 0D       CMPB   $D,X
5BB3: 39          RTS
5BB4: 40          NEGA
5BB5: C0 34       SUBB   #$34
5BB7: 36 4F       PSHU   S,DP,D,CC
5BB9: 10 8E 03 F6 LDY    #$03F6
5BBD: E6 88 14    LDB    $14,X
5BC0: C5 40       BITB   #$40
5BC2: 27 04       BEQ    $5BC8
5BC4: 10 8E 04 54 LDY    #$0454
5BC8: E6 A6       LDB    A,Y
5BCA: D7 0F       STB    $0F
5BCC: BD 59 41    JSR    $5941
5BCF: 10 9E 0E    LDY    $0E
5BD2: A6 88 14    LDA    $14,X
5BD5: 85 40       BITA   #$40
5BD7: 26 08       BNE    $5BE1
5BD9: A6 88 13    LDA    $13,X
5BDC: A8 A8 13    EORA   $13,Y
5BDF: 20 06       BRA    $5BE7
5BE1: A6 88 14    LDA    $14,X
5BE4: A8 A8 14    EORA   $14,Y
5BE7: 84 01       ANDA   #$01
5BE9: 35 B6       PULS   D,X,Y,PC
5BEB: 39          RTS
5BEC: 1C FE       ANDCC  #$FE
5BEE: 35 B6       PULS   D,X,Y,PC
5BF0: 39          RTS
5BF1: 34 36       PSHS   Y,X,D
5BF3: 86 01       LDA    #$01
5BF5: 20 C2       BRA    $5BB9
5BF7: 34 36       PSHS   Y,X,D
5BF9: 86 02       LDA    #$02
5BFB: 20 BC       BRA    $5BB9
5BFD: CC 03 A2    LDD    #$03A2
5C00: FD 0E 4B    STD    $0E4B
5C03: A6 88 3A    LDA    $3A,X
5C06: B7 0E 48    STA    $0E48
5C09: A6 88 3B    LDA    $3B,X
5C0C: B7 0E 49    STA    $0E49
5C0F: A6 88 13    LDA    $13,X
5C12: B7 0E 4A    STA    $0E4A
5C15: A6 88 14    LDA    $14,X
5C18: 85 40       BITA   #$40
5C1A: 27 15       BEQ    $5C31
5C1C: B7 0E 4A    STA    $0E4A
5C1F: CC 04 00    LDD    #$0400
5C22: FD 0E 4B    STD    $0E4B
5C25: A6 88 3C    LDA    $3C,X
5C28: B7 0E 48    STA    $0E48
5C2B: A6 88 3D    LDA    $3D,X
5C2E: B7 0E 49    STA    $0E49
5C31: 39          RTS
5C32: 34 16       PSHS   X,D
5C34: 10 AE 88 41 LDY    $41,X
5C38: CC 00 00    LDD    #$0000
5C3B: ED 88 41    STD    $41,X
5C3E: ED A8 1F    STD    $1F,Y
5C41: A7 A8 16    STA    $16,Y
5C44: A7 88 21    STA    $21,X
5C47: 86 02       LDA    #$02
5C49: A7 A8 1B    STA    $1B,Y
5C4C: A6 03       LDA    $3,X
5C4E: A7 23       STA    $3,Y
5C50: A6 01       LDA    $1,X
5C52: A7 A8 1E    STA    $1E,Y
5C55: 81 02       CMPA   #$02
5C57: 25 2D       BCS    $5C86
5C59: A6 A8 17    LDA    $17,Y
5C5C: 84 1F       ANDA   #$1F
5C5E: 81 05       CMPA   #$05
5C60: 27 15       BEQ    $5C77
5C62: 81 06       CMPA   #$06
5C64: 26 20       BNE    $5C86
5C66: 7C 0E 37    INC    $0E37
5C69: B6 0E 37    LDA    $0E37
5C6C: 81 02       CMPA   #$02
5C6E: 25 16       BCS    $5C86
5C70: 7A 0E 37    DEC    $0E37
5C73: 6F A4       CLR    ,Y
5C75: 20 0F       BRA    $5C86
5C77: 7C 0E 38    INC    $0E38
5C7A: B6 0E 38    LDA    $0E38
5C7D: 81 02       CMPA   #$02
5C7F: 25 05       BCS    $5C86
5C81: 7A 0E 38    DEC    $0E38
5C84: 6F A4       CLR    ,Y
5C86: 35 96       PULS   D,X,PC
5C88: 96 36       LDA    $36
5C8A: 81 01       CMPA   #$01
5C8C: 26 5F       BNE    $5CED
5C8E: B6 0A 56    LDA    $0A56
5C91: 81 03       CMPA   #$03
5C93: 26 58       BNE    $5CED
5C95: B6 0B 4C    LDA    $0B4C
5C98: 84 F0       ANDA   #$F0
5C9A: 27 34       BEQ    $5CD0
5C9C: B6 0B 4A    LDA    $0B4A
5C9F: 81 09       CMPA   #$09
5CA1: 26 2D       BNE    $5CD0
5CA3: EC 06       LDD    $6,X
5CA5: 10 83 01 25 CMPD   #$0125
5CA9: 25 05       BCS    $5CB0
5CAB: CC 01 25    LDD    #$0125
5CAE: ED 06       STD    $6,X
5CB0: EC 04       LDD    $4,X
5CB2: C3 00 01    ADDD   #$0001
5CB5: ED 04       STD    $4,X
5CB7: B6 0E 16    LDA    $0E16
5CBA: 85 20       BITA   #$20
5CBC: 26 2F       BNE    $5CED
5CBE: B6 0A EC    LDA    $0AEC
5CC1: 84 04       ANDA   #$04
5CC3: 26 28       BNE    $5CED
5CC5: B6 09 F2    LDA    $09F2
5CC8: 2B 23       BMI    $5CED
5CCA: 86 0F       LDA    #$0F
5CCC: BD 64 77    JSR    $6477
5CCF: 39          RTS
5CD0: B6 0E 16    LDA    $0E16
5CD3: 85 20       BITA   #$20
5CD5: 26 16       BNE    $5CED
5CD7: B6 0A EC    LDA    $0AEC
5CDA: 84 04       ANDA   #$04
5CDC: 26 0F       BNE    $5CED
5CDE: B6 09 F2    LDA    $09F2
5CE1: 2B 0A       BMI    $5CED
5CE3: B6 0E 3F    LDA    $0E3F
5CE6: 26 05       BNE    $5CED
5CE8: 86 FE       LDA    #$FE
5CEA: B7 38 0E    STA    $380E
5CED: 39          RTS
5CEE: B6 0B 4A    LDA    $0B4A
5CF1: 81 04       CMPA   #$04
5CF3: 10 26 00 7A LBNE   $5D71
5CF7: A6 88 4B    LDA    $4B,X
5CFA: 81 04       CMPA   #$04
5CFC: 27 73       BEQ    $5D71
5CFE: 81 06       CMPA   #$06
5D00: 27 6F       BEQ    $5D71
5D02: 7F 0B 4A    CLR    $0B4A
5D05: BD 5D 74    JSR    $5D74
5D08: 25 67       BCS    $5D71
5D0A: 96 36       LDA    $36
5D0C: 81 02       CMPA   #$02
5D0E: 26 1D       BNE    $5D2D
5D10: A6 01       LDA    $1,X
5D12: 81 02       CMPA   #$02
5D14: 25 17       BCS    $5D2D
5D16: A6 88 1B    LDA    $1B,X
5D19: 84 3F       ANDA   #$3F
5D1B: 81 00       CMPA   #$00
5D1D: 26 0E       BNE    $5D2D
5D1F: 86 00       LDA    #$00
5D21: A7 88 38    STA    $38,X
5D24: 86 00       LDA    #$00
5D26: A7 0D       STA    $D,X
5D28: BD 53 1E    JSR    $531E
5D2B: 20 44       BRA    $5D71
5D2D: A6 88 1B    LDA    $1B,X
5D30: 84 3F       ANDA   #$3F
5D32: 81 0B       CMPA   #$0B
5D34: 27 38       BEQ    $5D6E
5D36: 81 09       CMPA   #$09
5D38: 27 10       BEQ    $5D4A
5D3A: 81 0A       CMPA   #$0A
5D3C: 27 0C       BEQ    $5D4A
5D3E: 81 06       CMPA   #$06
5D40: 27 08       BEQ    $5D4A
5D42: 81 08       CMPA   #$08
5D44: 27 04       BEQ    $5D4A
5D46: 81 0C       CMPA   #$0C
5D48: 26 1C       BNE    $5D66
5D4A: 10 AE 88 2D LDY    $2D,X
5D4E: A6 88 16    LDA    $16,X
5D51: 84 F9       ANDA   #$F9
5D53: A7 88 16    STA    $16,X
5D56: A6 A8 16    LDA    $16,Y
5D59: 84 F9       ANDA   #$F9
5D5B: A7 A8 16    STA    $16,Y
5D5E: 86 0B       LDA    #$0B
5D60: A7 A8 1B    STA    $1B,Y
5D63: BD 5D 8A    JSR    $5D8A
5D66: 86 0B       LDA    #$0B
5D68: A7 88 1B    STA    $1B,X
5D6B: BD 5D 8A    JSR    $5D8A
5D6E: 1A 01       ORCC   #$01
5D70: 39          RTS
5D71: 1C FE       ANDCC  #$FE
5D73: 39          RTS
5D74: A6 88 1B    LDA    $1B,X
5D77: 84 3F       ANDA   #$3F
5D79: 81 01       CMPA   #$01
5D7B: 26 07       BNE    $5D84
5D7D: B6 0B 4D    LDA    $0B4D
5D80: 85 80       BITA   #$80
5D82: 26 03       BNE    $5D87
5D84: 1C FE       ANDCC  #$FE
5D86: 39          RTS
5D87: 1A 01       ORCC   #$01
5D89: 39          RTS
5D8A: 10 8E 5D BD LDY    #$5DBD
5D8E: 5F          CLRB
5D8F: A6 02       LDA    $2,X
5D91: 84 7F       ANDA   #$7F
5D93: 97 00       STA    $00
5D95: A6 A5       LDA    B,Y
5D97: 81 FF       CMPA   #$FF
5D99: 27 21       BEQ    $5DBC
5D9B: 91 00       CMPA   $00
5D9D: 27 03       BEQ    $5DA2
5D9F: 5C          INCB
5DA0: 20 F3       BRA    $5D95
5DA2: 10 8E 5D C4 LDY    #$5DC4
5DA6: 58          ASLB
5DA7: EC A5       LDD    B,Y
5DA9: 6D 02       TST    $2,X
5DAB: 2A 09       BPL    $5DB6
5DAD: DD 00       STD    $00
5DAF: CC 00 00    LDD    #$0000
5DB2: 93 00       SUBD   $00
5DB4: DD 00       STD    $00
5DB6: DC 00       LDD    $00
5DB8: E3 04       ADDD   $4,X
5DBA: ED 04       STD    $4,X
5DBC: 39          RTS
5DBD: 0A 0B       DEC    $0B
5DBF: 0C 0D       INC    $0D
5DC1: 35 0E       PULS   D,DP
5DC3: FF FF E4    STU    $FFE4
5DC6: FF E4 00    STU    $E400
5DC9: 10 00       FCB    $10,$00
5DCB: 10          FCB    $10
5DCC: 00 10       NEG    $10
5DCE: 00 10       NEG    $10
5DD0: B6 0B 4A    LDA    $0B4A
5DD3: 81 06       CMPA   #$06
5DD5: 26 9A       BNE    $5D71
5DD7: 7E 5D 02    JMP    $5D02
5DDA: B6 0B 4A    LDA    $0B4A
5DDD: 81 05       CMPA   #$05
5DDF: 26 90       BNE    $5D71
5DE1: 7F 0B 4A    CLR    $0B4A
5DE4: BD 5D 74    JSR    $5D74
5DE7: 25 88       BCS    $5D71
5DE9: A6 88 1B    LDA    $1B,X
5DEC: 84 3F       ANDA   #$3F
5DEE: 81 18       CMPA   #$18
5DF0: 10 27 FF 7D LBEQ   $5D71
5DF4: 86 18       LDA    #$18
5DF6: A7 88 1B    STA    $1B,X
5DF9: 1A 01       ORCC   #$01
5DFB: 39          RTS
5DFC: 10 AE 88 41 LDY    $41,X
5E00: A6 A8 16    LDA    $16,Y
5E03: 2B 07       BMI    $5E0C
5E05: EC 28       LDD    $8,Y
5E07: 10 A3 08    CMPD   $8,X
5E0A: 27 0C       BEQ    $5E18
5E0C: CC 00 00    LDD    #$0000
5E0F: ED 88 41    STD    $41,X
5E12: A7 88 21    STA    $21,X
5E15: A7 88 38    STA    $38,X
5E18: 39          RTS
5E19: 10 8E 0B 31 LDY    #$0B31
5E1D: EC 04       LDD    $4,X
5E1F: ED A4       STD    ,Y
5E21: ED 26       STD    $6,Y
5E23: EC 06       LDD    $6,X
5E25: ED 22       STD    $2,Y
5E27: ED 28       STD    $8,Y
5E29: EC 08       LDD    $8,X
5E2B: ED 24       STD    $4,Y
5E2D: 83 00 02    SUBD   #$0002
5E30: ED 2A       STD    $A,Y
5E32: A6 03       LDA    $3,X
5E34: A7 2C       STA    $C,Y
5E36: BD FE 20    JSR    $FE20
5E39: BD FB 00    JSR    $FB00
5E3C: B6 0B 4A    LDA    $0B4A
5E3F: 81 09       CMPA   #$09
5E41: 26 11       BNE    $5E54
5E43: FC 0B 50    LDD    $0B50
5E46: 10 83 01 25 CMPD   #$0125
5E4A: 10 25 00 06 LBCS   $5E54
5E4E: CC 01 25    LDD    #$0125
5E51: FD 0B 50    STD    $0B50
5E54: 39          RTS
5E55: A6 A4       LDA    ,Y
5E57: 26 17       BNE    $5E70
5E59: 6F 03       CLR    $3,X
5E5B: 86 40       LDA    #$40
5E5D: A7 0D       STA    $D,X
5E5F: EC 21       LDD    $1,Y
5E61: 10 A3 04    CMPD   $4,X
5E64: 24 1B       BCC    $5E81
5E66: 86 C0       LDA    #$C0
5E68: A7 0D       STA    $D,X
5E6A: 86 80       LDA    #$80
5E6C: A7 03       STA    $3,X
5E6E: 20 20       BRA    $5E90
5E70: 6F 03       CLR    $3,X
5E72: 86 80       LDA    #$80
5E74: A7 0D       STA    $D,X
5E76: EC 21       LDD    $1,Y
5E78: 10 A3 06    CMPD   $6,X
5E7B: 25 04       BCS    $5E81
5E7D: 86 00       LDA    #$00
5E7F: A7 0D       STA    $D,X
5E81: 96 36       LDA    $36
5E83: 81 03       CMPA   #$03
5E85: 26 09       BNE    $5E90
5E87: 0D 38       TST    $38
5E89: 26 05       BNE    $5E90
5E8B: 86 90       LDA    #$90
5E8D: B7 03 AF    STA    $03AF
5E90: 39          RTS
5E91: 96 51       LDA    $51
5E93: B8 09 F0    EORA   $09F0
5E96: 84 01       ANDA   #$01
5E98: 27 41       BEQ    $5EDB
5E9A: A6 84       LDA    ,X
5E9C: 84 C0       ANDA   #$C0
5E9E: 81 C0       CMPA   #$C0
5EA0: 26 23       BNE    $5EC5
5EA2: B6 03 A2    LDA    $03A2
5EA5: BA 04 00    ORA    $0400
5EA8: 84 C0       ANDA   #$C0
5EAA: 26 16       BNE    $5EC2
5EAC: 7D 0E 63    TST    $0E63
5EAF: 2A 11       BPL    $5EC2
5EB1: A6 88 1B    LDA    $1B,X
5EB4: 84 3F       ANDA   #$3F
5EB6: 81 00       CMPA   #$00
5EB8: 27 0B       BEQ    $5EC5
5EBA: 81 19       CMPA   #$19
5EBC: 25 04       BCS    $5EC2
5EBE: 81 1B       CMPA   #$1B
5EC0: 25 03       BCS    $5EC5
5EC2: 1A 01       ORCC   #$01
5EC4: 39          RTS
5EC5: 6D 84       TST    ,X
5EC7: 2A 12       BPL    $5EDB
5EC9: 96 36       LDA    $36
5ECB: 81 03       CMPA   #$03
5ECD: 26 0C       BNE    $5EDB
5ECF: 0D 38       TST    $38
5ED1: 27 08       BEQ    $5EDB
5ED3: A6 84       LDA    ,X
5ED5: 8A C0       ORA    #$C0
5ED7: A7 84       STA    ,X
5ED9: 20 E7       BRA    $5EC2
5EDB: 1C FE       ANDCC  #$FE
5EDD: 39          RTS
5EDE: 34 7E       PSHS   U,Y,X,DP,D
5EE0: BD 53 0A    JSR    $530A
5EE3: B6 0B 4B    LDA    $0B4B
5EE6: 84 0F       ANDA   #$0F
5EE8: 27 2B       BEQ    $5F15
5EEA: 6D 0F       TST    $F,X
5EEC: 2A 0F       BPL    $5EFD
5EEE: 85 01       BITA   #$01
5EF0: 26 23       BNE    $5F15
5EF2: 85 04       BITA   #$04
5EF4: 26 16       BNE    $5F0C
5EF6: CC FF FF    LDD    #$FFFF
5EF9: ED 0F       STD    $F,X
5EFB: 20 18       BRA    $5F15
5EFD: 85 04       BITA   #$04
5EFF: 26 14       BNE    $5F15
5F01: 85 01       BITA   #$01
5F03: 26 07       BNE    $5F0C
5F05: CC 00 00    LDD    #$0000
5F08: ED 0F       STD    $F,X
5F0A: 20 09       BRA    $5F15
5F0C: CC 00 00    LDD    #$0000
5F0F: A3 0F       SUBD   $F,X
5F11: ED 0F       STD    $F,X
5F13: 20 00       BRA    $5F15
5F15: B6 0B 4D    LDA    $0B4D
5F18: 84 F0       ANDA   #$F0
5F1A: 27 06       BEQ    $5F22
5F1C: 85 80       BITA   #$80
5F1E: 26 55       BNE    $5F75
5F20: 20 12       BRA    $5F34
5F22: B6 0B 4C    LDA    $0B4C
5F25: 84 F0       ANDA   #$F0
5F27: 27 51       BEQ    $5F7A
5F29: B6 0B 4A    LDA    $0B4A
5F2C: 81 0A       CMPA   #$0A
5F2E: 25 45       BCS    $5F75
5F30: 81 0D       CMPA   #$0D
5F32: 24 41       BCC    $5F75
5F34: DC 3C       LDD    $3C
5F36: C3 00 31    ADDD   #$0031
5F39: 10 A3 04    CMPD   $4,X
5F3C: 24 37       BCC    $5F75
5F3E: C3 00 8E    ADDD   #$008E
5F41: 10 A3 04    CMPD   $4,X
5F44: 25 2F       BCS    $5F75
5F46: A6 88 15    LDA    $15,X
5F49: 8A 40       ORA    #$40
5F4B: A7 88 15    STA    $15,X
5F4E: A6 84       LDA    ,X
5F50: 84 F0       ANDA   #$F0
5F52: 8A 02       ORA    #$02
5F54: A7 84       STA    ,X
5F56: 10 8E 5F 7C LDY    #$5F7C
5F5A: A6 88 22    LDA    $22,X
5F5D: 48          ASLA
5F5E: EC A6       LDD    A,Y
5F60: ED 88 11    STD    $11,X
5F63: EC 0F       LDD    $F,X
5F65: DD 00       STD    $00
5F67: CC 02 00    LDD    #$0200
5F6A: ED 0F       STD    $F,X
5F6C: 0D 00       TST    $00
5F6E: 2A 0A       BPL    $5F7A
5F70: BD FB 6C    JSR    $FB6C
5F73: 20 05       BRA    $5F7A
5F75: 86 05       LDA    #$05
5F77: A7 88 1B    STA    $1B,X
5F7A: 35 FE       PULS   D,DP,X,Y,U,PC
5F7C: 04 00       LSR    $00
5F7E: 02 00 04    AIM    #$00;$04
5F81: 00 04       NEG    $04
5F83: 00 04       NEG    $04
5F85: 00 04       NEG    $04
5F87: 00 04       NEG    $04
5F89: 00 04       NEG    $04
5F8B: 00 04       NEG    $04
5F8D: 00 04       NEG    $04
5F8F: 00 34       NEG    $34
5F91: 76 32 7C    ROR    $327C
5F94: A6 88 21    LDA    $21,X
5F97: 26 74       BNE    $600D
5F99: FE 0E 4B    LDU    $0E4B
5F9C: EC 48       LDD    $8,U
5F9E: A3 08       SUBD   $8,X
5FA0: 2B 6B       BMI    $600D
5FA2: 4D          TSTA
5FA3: 26 68       BNE    $600D
5FA5: E7 62       STB    $2,S
5FA7: A6 01       LDA    $1,X
5FA9: 81 04       CMPA   #$04
5FAB: 25 60       BCS    $600D
5FAD: 81 08       CMPA   #$08
5FAF: 24 5C       BCC    $600D
5FB1: B6 0E 49    LDA    $0E49
5FB4: 81 05       CMPA   #$05
5FB6: 24 55       BCC    $600D
5FB8: B6 0E 48    LDA    $0E48
5FBB: 81 24       CMPA   #$24
5FBD: 24 4E       BCC    $600D
5FBF: A6 62       LDA    $2,S
5FC1: 81 10       CMPA   #$10
5FC3: 24 48       BCC    $600D
5FC5: 10 8E 60 13 LDY    #$6013
5FC9: A6 01       LDA    $1,X
5FCB: 80 04       SUBA   #$04
5FCD: 48          ASLA
5FCE: 48          ASLA
5FCF: 48          ASLA
5FD0: 34 02       PSHS   A
5FD2: BD FB 76    JSR    $FB76
5FD5: 84 07       ANDA   #$07
5FD7: AA E4       ORA    ,S
5FD9: E6 A6       LDB    A,Y
5FDB: 35 02       PULS   A
5FDD: E7 88 1E    STB    $1E,X
5FE0: 86 07       LDA    #$07
5FE2: A7 88 1B    STA    $1B,X
5FE5: 86 00       LDA    #$00
5FE7: A7 88 1D    STA    $1D,X
5FEA: C1 01       CMPB   #$01
5FEC: 26 1B       BNE    $6009
5FEE: A6 C8 1B    LDA    $1B,U
5FF1: 84 3F       ANDA   #$3F
5FF3: 81 0C       CMPA   #$0C
5FF5: 26 07       BNE    $5FFE
5FF7: 86 00       LDA    #$00
5FF9: A7 88 1E    STA    $1E,X
5FFC: 20 0B       BRA    $6009
5FFE: 86 0C       LDA    #$0C
6000: A7 C8 1B    STA    $1B,U
6003: EF 88 2D    STU    $2D,X
6006: AF C8 2D    STX    $2D,U
6009: 1A 01       ORCC   #$01
600B: 20 02       BRA    $600F
600D: 1C FE       ANDCC  #$FE
600F: 32 64       LEAS   $4,S
6011: 35 F6       PULS   D,X,Y,U,PC
6013: 00 00       NEG    $00
6015: 00 00       NEG    $00
6017: 01 01 01    OIM    #$01;$01
601A: 01 00 00    OIM    #$00;$00
601D: 00 01       NEG    $01
601F: 01 01 01    OIM    #$01;$01
6022: 01 00 00    OIM    #$00;$00
6025: 01 01 01    OIM    #$01;$01
6028: 01 01 01    OIM    #$01;$01
602B: 00 00       NEG    $00
602D: 01 01 01    OIM    #$01;$01
6030: 01 01 01    OIM    #$01;$01
6033: 34 40       PSHS   U
6035: 32 71       LEAS   -$F,S
6037: 6F E4       CLR    ,S
6039: A6 04       LDA    $4,X
603B: 81 FF       CMPA   #$FF
603D: 10 27 00 8E LBEQ   $60CF
6041: DC 3C       LDD    $3C
6043: 10 A3 04    CMPD   $4,X
6046: 24 0C       BCC    $6054
6048: 6C E4       INC    ,S
604A: C3 01 00    ADDD   #$0100
604D: 10 A3 04    CMPD   $4,X
6050: 10 24 00 A1 LBCC   $60F5
6054: DC 3C       LDD    $3C
6056: 6D E4       TST    ,S
6058: 27 03       BEQ    $605D
605A: C3 01 00    ADDD   #$0100
605D: A3 04       SUBD   $4,X
605F: 2A 07       BPL    $6068
6061: ED 61       STD    $1,S
6063: CC 00 00    LDD    #$0000
6066: A3 61       SUBD   $1,S
6068: 10 83 00 40 CMPD   #$0040
606C: 25 61       BCS    $60CF
606E: 96 36       LDA    $36
6070: 81 03       CMPA   #$03
6072: 26 04       BNE    $6078
6074: 0D 38       TST    $38
6076: 26 57       BNE    $60CF
6078: 6F 84       CLR    ,X
607A: 6F 88 13    CLR    $13,X
607D: 6F 88 15    CLR    $15,X
6080: 7A 09 EF    DEC    $09EF
6083: A6 88 45    LDA    $45,X
6086: 27 03       BEQ    $608B
6088: 7A 0A B5    DEC    $0AB5
608B: A6 88 17    LDA    $17,X
608E: 2A 08       BPL    $6098
6090: B6 09 F2    LDA    $09F2
6093: 8A 80       ORA    #$80
6095: B7 09 F2    STA    $09F2
6098: A6 88 21    LDA    $21,X
609B: 27 58       BEQ    $60F5
609D: 10 AE 88 41 LDY    $41,X
60A1: CC 00 00    LDD    #$0000
60A4: A7 A4       STA    ,Y
60A6: A7 88 21    STA    $21,X
60A9: A7 A8 16    STA    $16,Y
60AC: ED A8 1F    STD    $1F,Y
60AF: ED 88 41    STD    $41,X
60B2: A6 A8 17    LDA    $17,Y
60B5: 81 07       CMPA   #$07
60B7: 24 3C       BCC    $60F5
60B9: CE 49 FD    LDU    #$49FD
60BC: A6 C6       LDA    A,U
60BE: 81 FF       CMPA   #$FF
60C0: 27 33       BEQ    $60F5
60C2: CE 4A 04    LDU    #$4A04
60C5: EE C6       LDU    A,U
60C7: 6D C4       TST    ,U
60C9: 27 2A       BEQ    $60F5
60CB: 6A C4       DEC    ,U
60CD: 20 26       BRA    $60F5
60CF: A6 88 15    LDA    $15,X
60D2: 85 40       BITA   #$40
60D4: 26 1F       BNE    $60F5
60D6: A6 84       LDA    ,X
60D8: 84 0F       ANDA   #$0F
60DA: 81 01       CMPA   #$01
60DC: 26 17       BNE    $60F5
60DE: 10 8E 60 F9 LDY    #$60F9
60E2: A6 E4       LDA    ,S
60E4: A6 A6       LDA    A,Y
60E6: A7 0D       STA    $D,X
60E8: 86 00       LDA    #$00
60EA: A7 88 38    STA    $38,X
60ED: A6 0E       LDA    $E,X
60EF: 26 04       BNE    $60F5
60F1: 86 0E       LDA    #$0E
60F3: A7 0E       STA    $E,X
60F5: 32 6F       LEAS   $F,S
60F7: 35 C0       PULS   U,PC
60F9: 40          NEGA
60FA: C0 34       SUBB   #$34
60FC: 36 32       PSHU   Y,X,A
60FE: 7F BD FB    CLR    $BDFB
6101: 76 84 0F    ROR    $840F
6104: A7 E4       STA    ,S
6106: A6 88 1F    LDA    $1F,X
6109: 84 F0       ANDA   #$F0
610B: AA E4       ORA    ,S
610D: 10 8E 61 19 LDY    #$6119
6111: C6 10       LDB    #$10
6113: E1 A6       CMPB   A,Y
6115: 32 61       LEAS   $1,S
6117: 35 B6       PULS   D,X,Y,PC
6119: 00 00       NEG    $00
611B: 00 00       NEG    $00
611D: 00 00       NEG    $00
611F: 00 00       NEG    $00
6121: 00 00       NEG    $00
6123: 00 00       NEG    $00
6125: 00 00       NEG    $00
6127: 20 20       BRA    $6149
6129: 00 00       NEG    $00
612B: 00 00       NEG    $00
612D: 00 00       NEG    $00
612F: 00 00       NEG    $00
6131: 00 00       NEG    $00
6133: 20 20       BRA    $6155
6135: 20 20       BRA    $6157
6137: 20 20       BRA    $6159
6139: 00 00       NEG    $00
613B: 00 00       NEG    $00
613D: 20 20       BRA    $615F
613F: 20 20       BRA    $6161
6141: 20 20       BRA    $6163
6143: 20 20       BRA    $6165
6145: 20 20       BRA    $6167
6147: 20 20       BRA    $6169
6149: 00 20       NEG    $20
614B: 20 20       BRA    $616D
614D: 20 20       BRA    $616F
614F: 20 20       BRA    $6171
6151: 20 20       BRA    $6173
6153: 20 20       BRA    $6175
6155: 20 20       BRA    $6177
6157: 20 20       BRA    $6179
6159: 00 00       NEG    $00
615B: 00 00       NEG    $00
615D: 00 00       NEG    $00
615F: 00 00       NEG    $00
6161: 00 00       NEG    $00
6163: 00 00       NEG    $00
6165: 00 00       NEG    $00
6167: 00 00       NEG    $00
6169: 32 7D       LEAS   -$3,S
616B: B6 0E 49    LDA    $0E49
616E: 81 04       CMPA   #$04
6170: 24 2A       BCC    $619C
6172: B6 0E 48    LDA    $0E48
6175: 81 04       CMPA   #$04
6177: 25 23       BCS    $619C
6179: 81 34       CMPA   #$34
617B: 24 1F       BCC    $619C
617D: 10 BE 0E 4B LDY    $0E4B
6181: A6 A8 1B    LDA    $1B,Y
6184: 84 3F       ANDA   #$3F
6186: 10 8E 61 A1 LDY    #$61A1
618A: A6 A6       LDA    A,Y
618C: 26 0E       BNE    $619C
618E: A6 88 19    LDA    $19,X
6191: 27 09       BEQ    $619C
6193: 86 07       LDA    #$07
6195: A7 88 1B    STA    $1B,X
6198: 1A 01       ORCC   #$01
619A: 20 02       BRA    $619E
619C: 1C FE       ANDCC  #$FE
619E: 32 63       LEAS   $3,S
61A0: 39          RTS
61A1: 00 00       NEG    $00
61A3: 00 00       NEG    $00
61A5: 00 FF       NEG    $FF
61A7: 00 00       NEG    $00
61A9: 00 00       NEG    $00
61AB: 00 00       NEG    $00
61AD: 00 00       NEG    $00
61AF: 00 FF       NEG    $FF
61B1: 00 00       NEG    $00
61B3: 00 FF       NEG    $FF
61B5: FF FF 00    STU    $FF00
61B8: 00 FF       NEG    $FF
61BA: 34 40       PSHS   U
61BC: 32 71       LEAS   -$F,S
61BE: DC 3C       LDD    $3C
61C0: 10 83 19 06 CMPD   #$1906
61C4: 25 0B       BCS    $61D1
61C6: EC 04       LDD    $4,X
61C8: 10 83 19 06 CMPD   #$1906
61CC: 24 03       BCC    $61D1
61CE: 7E 60 6E    JMP    $606E
61D1: 7E 60 F5    JMP    $60F5
61D4: 39          RTS
61D5: 32 7C       LEAS   -$4,S
61D7: 0D 36       TST    $36
61D9: 27 04       BEQ    $61DF
61DB: 6D 84       TST    ,X
61DD: 2A 58       BPL    $6237
61DF: 86 C1       LDA    #$C1
61E1: A7 84       STA    ,X
61E3: 96 2A       LDA    $2A
61E5: A7 01       STA    $1,X
61E7: 86 40       LDA    #$40
61E9: A7 88 1F    STA    $1F,X
61EC: 6F 88 1B    CLR    $1B,X
61EF: 6F 88 37    CLR    $37,X
61F2: 6F 0E       CLR    $E,X
61F4: 6F 03       CLR    $3,X
61F6: 6F 88 13    CLR    $13,X
61F9: 6F 88 14    CLR    $14,X
61FC: 6F 88 15    CLR    $15,X
61FF: 6F 88 16    CLR    $16,X
6202: 86 07       LDA    #$07
6204: A7 02       STA    $2,X
6206: 10 8E 62 3A LDY    #$623A
620A: 96 36       LDA    $36
620C: 84 02       ANDA   #$02
620E: A7 E4       STA    ,S
6210: 48          ASLA
6211: AB E4       ADDA   ,S
6213: 31 A6       LEAY   A,Y
6215: EC A1       LDD    ,Y++
6217: ED E4       STD    ,S
6219: 96 36       LDA    $36
621B: 26 0B       BNE    $6228
621D: 0D 2A       TST    $2A
621F: 27 07       BEQ    $6228
6221: EC E4       LDD    ,S
6223: C3 00 30    ADDD   #$0030
6226: ED E4       STD    ,S
6228: EC E4       LDD    ,S
622A: ED 04       STD    $4,X
622C: EC A1       LDD    ,Y++
622E: ED 06       STD    $6,X
6230: EC A1       LDD    ,Y++
6232: ED 08       STD    $8,X
6234: 7F 0E 30    CLR    $0E30
6237: 32 64       LEAS   $4,S
6239: 39          RTS
623A: 00 28       NEG    $28
623C: 01 41 01    OIM    #$41;$01
623F: 00 15       NEG    $15
6241: 5E          FCB    $5E
6242: 00 50       NEG    $50
6244: 01 00 32    OIM    #$00;$32
6247: 7F 8E 07    CLR    $8E07
624A: 5B          FCB    $5B
624B: 86 05       LDA    #$05
624D: A7 E4       STA    ,S
624F: 86 80       LDA    #$80
6251: A7 84       STA    ,X
6253: 86 14       LDA    #$14
6255: A7 01       STA    $1,X
6257: 86 01       LDA    #$01
6259: A7 02       STA    $2,X
625B: 6F 88 1B    CLR    $1B,X
625E: CC 00 3E    LDD    #$003E
6261: ED 04       STD    $4,X
6263: CC 01 40    LDD    #$0140
6266: ED 06       STD    $6,X
6268: A6 E4       LDA    ,S
626A: C6 10       LDB    #$10
626C: 3D          MUL
626D: C3 00 F0    ADDD   #$00F0
6270: ED 08       STD    $8,X
6272: C6 21       LDB    #$21
6274: 3A          ABX
6275: 6A E4       DEC    ,S
6277: 26 D6       BNE    $624F
6279: 32 61       LEAS   $1,S
627B: 86 10       LDA    #$10
627D: B7 0E 31    STA    $0E31
6280: 39          RTS
6281: B6 0E 2F    LDA    $0E2F
6284: 81 05       CMPA   #$05
6286: 24 2F       BCC    $62B7
6288: B6 0E 31    LDA    $0E31
628B: 32 7F       LEAS   -$1,S
628D: 86 04       LDA    #$04
628F: A7 E4       STA    ,S
6291: 10 8E 62 B8 LDY    #$62B8
6295: 8E 07 5B    LDX    #$075B
6298: A6 84       LDA    ,X
629A: 2A 12       BPL    $62AE
629C: B6 0E 31    LDA    $0E31
629F: 26 0A       BNE    $62AB
62A1: B6 0E 2F    LDA    $0E2F
62A4: A1 E4       CMPA   ,S
62A6: 26 03       BNE    $62AB
62A8: BD 62 C8    JSR    $62C8
62AB: BD 41 00    JSR    $4100
62AE: C6 21       LDB    #$21
62B0: 3A          ABX
62B1: 6A E4       DEC    ,S
62B3: 2A E3       BPL    $6298
62B5: 32 61       LEAS   $1,S
62B7: 39          RTS
62B8: 02 03 04    AIM    #$03;$04
62BB: 05 01 20    EIM    #$01;$20
62BE: 00 60       NEG    $60
62C0: 00 80       NEG    $80
62C2: 00 1F       NEG    $1F
62C4: 15          FCB    $15
62C5: 60 15       NEG    -$B,X
62C7: 80 A6       SUBA   #$A6
62C9: 88 1B       EORA   #$1B
62CB: 2B 21       BMI    $62EE
62CD: BD FE 64    JSR    $FE64
62D0: A6 A4       LDA    ,Y
62D2: A7 02       STA    $2,X
62D4: 86 04       LDA    #$04
62D6: A7 88 19    STA    $19,X
62D9: B6 0E 2F    LDA    $0E2F
62DC: 26 07       BNE    $62E5
62DE: 86 95       LDA    #$95
62E0: BD 64 77    JSR    $6477
62E3: 20 09       BRA    $62EE
62E5: 81 03       CMPA   #$03
62E7: 26 05       BNE    $62EE
62E9: 86 94       LDA    #$94
62EB: BD 64 77    JSR    $6477
62EE: 6A 88 19    DEC    $19,X
62F1: 26 13       BNE    $6306
62F3: 6C 88 18    INC    $18,X
62F6: A6 88 18    LDA    $18,X
62F9: 81 04       CMPA   #$04
62FB: 24 0A       BCC    $6307
62FD: E6 A6       LDB    A,Y
62FF: E7 02       STB    $2,X
6301: C6 04       LDB    #$04
6303: E7 88 19    STB    $19,X
6306: 39          RTS
6307: 6F 84       CLR    ,X
6309: 7C 0E 2F    INC    $0E2F
630C: 39          RTS
630D: 10 8E 63 6E LDY    #$636E
6311: A6 88 21    LDA    $21,X
6314: 81 07       CMPA   #$07
6316: 24 04       BCC    $631C
6318: A6 A6       LDA    A,Y
631A: 27 0D       BEQ    $6329
631C: A6 88 45    LDA    $45,X
631F: 26 0B       BNE    $632C
6321: A6 88 17    LDA    $17,X
6324: 2B 03       BMI    $6329
6326: 6C 88 17    INC    $17,X
6329: 1C FE       ANDCC  #$FE
632B: 39          RTS
632C: A1 88 47    CMPA   $47,X
632F: 26 35       BNE    $6366
6331: A7 88 47    STA    $47,X
6334: 81 03       CMPA   #$03
6336: 27 04       BEQ    $633C
6338: 81 07       CMPA   #$07
633A: 26 2D       BNE    $6369
633C: A6 88 17    LDA    $17,X
633F: 27 E8       BEQ    $6329
6341: 81 08       CMPA   #$08
6343: 24 24       BCC    $6369
6345: 5F          CLRB
6346: A6 88 45    LDA    $45,X
6349: 81 03       CMPA   #$03
634B: 27 02       BEQ    $634F
634D: C6 80       LDB    #$80
634F: E7 03       STB    $3,X
6351: 86 07       LDA    #$07
6353: A7 88 1B    STA    $1B,X
6356: 86 0B       LDA    #$0B
6358: A7 88 1E    STA    $1E,X
635B: 86 00       LDA    #$00
635D: A7 88 1D    STA    $1D,X
6360: 6F 88 17    CLR    $17,X
6363: 1A 01       ORCC   #$01
6365: 39          RTS
6366: A7 88 47    STA    $47,X
6369: 6F 88 17    CLR    $17,X
636C: 20 BB       BRA    $6329
636E: FF FF FF    STU    $FFFF
6371: 00 FF       NEG    $FF
6373: 00 00       NEG    $00
6375: FF 34 36    STU    $3436
6378: B6 0B 22    LDA    $0B22
637B: 81 03       CMPA   #$03
637D: 24 5C       BCC    $63DB
637F: 96 36       LDA    $36
6381: 81 03       CMPA   #$03
6383: 26 56       BNE    $63DB
6385: 96 38       LDA    $38
6387: 81 01       CMPA   #$01
6389: 26 50       BNE    $63DB
638B: B6 09 EF    LDA    $09EF
638E: 81 04       CMPA   #$04
6390: 24 49       BCC    $63DB
6392: 8E 04 5E    LDX    #$045E
6395: 5F          CLRB
6396: A6 84       LDA    ,X
6398: 2B 39       BMI    $63D3
639A: 86 C1       LDA    #$C1
639C: A7 84       STA    ,X
639E: 86 1A       LDA    #$1A
63A0: A7 88 1B    STA    $1B,X
63A3: CC 1B B0    LDD    #$1BB0
63A6: ED 04       STD    $4,X
63A8: CC 00 88    LDD    #$0088
63AB: ED 06       STD    $6,X
63AD: CC 01 60    LDD    #$0160
63B0: ED 08       STD    $8,X
63B2: 86 03       LDA    #$03
63B4: A7 01       STA    $1,X
63B6: 86 80       LDA    #$80
63B8: A7 03       STA    $3,X
63BA: 86 40       LDA    #$40
63BC: A7 88 1F    STA    $1F,X
63BF: CC 00 00    LDD    #$0000
63C2: ED 88 41    STD    $41,X
63C5: ED 88 13    STD    $13,X
63C8: ED 88 15    STD    $15,X
63CB: 7C 0B 22    INC    $0B22
63CE: 7C 09 EF    INC    $09EF
63D1: 20 08       BRA    $63DB
63D3: 30 88 55    LEAX   $55,X
63D6: 5C          INCB
63D7: C1 09       CMPB   #$09
63D9: 25 BB       BCS    $6396
63DB: 35 B6       PULS   D,X,Y,PC
63DD: A6 88 1B    LDA    $1B,X
63E0: 2B 1B       BMI    $63FD
63E2: 8A 80       ORA    #$80
63E4: A7 88 1B    STA    $1B,X
63E7: A6 84       LDA    ,X
63E9: 84 F0       ANDA   #$F0
63EB: 8A 01       ORA    #$01
63ED: A7 84       STA    ,X
63EF: 86 10       LDA    #$10
63F1: A7 0E       STA    $E,X
63F3: 86 C0       LDA    #$C0
63F5: A7 0D       STA    $D,X
63F7: 6F 88 19    CLR    $19,X
63FA: 6F 88 18    CLR    $18,X
63FD: BD FB 58    JSR    $FB58
6400: BD FC 1E    JSR    $FC1E
6403: EC 04       LDD    $4,X
6405: 10 83 1B 80 CMPD   #$1B80
6409: 24 05       BCC    $6410
640B: 86 1B       LDA    #$1B
640D: A7 88 1B    STA    $1B,X
6410: 39          RTS
6411: A6 88 1B    LDA    $1B,X
6414: 2B 23       BMI    $6439
6416: 8A 80       ORA    #$80
6418: A7 88 1B    STA    $1B,X
641B: A6 84       LDA    ,X
641D: 84 F0       ANDA   #$F0
641F: 8A 02       ORA    #$02
6421: A7 84       STA    ,X
6423: CC FE 00    LDD    #$FE00
6426: ED 0F       STD    $F,X
6428: CC 04 00    LDD    #$0400
642B: ED 88 11    STD    $11,X
642E: CC 00 80    LDD    #$0080
6431: ED 0D       STD    $D,X
6433: 6F 88 19    CLR    $19,X
6436: 6F 88 18    CLR    $18,X
6439: BD FB 58    JSR    $FB58
643C: 86 97       LDA    #$97
643E: AB 88 18    ADDA   $18,X
6441: A7 02       STA    $2,X
6443: 6C 88 19    INC    $19,X
6446: A6 88 19    LDA    $19,X
6449: 81 10       CMPA   #$10
644B: 25 0B       BCS    $6458
644D: 6F 88 19    CLR    $19,X
6450: A6 88 18    LDA    $18,X
6453: 26 03       BNE    $6458
6455: 6C 88 18    INC    $18,X
6458: EC 08       LDD    $8,X
645A: 10 83 01 00 CMPD   #$0100
645E: 24 16       BCC    $6476
6460: CC 01 00    LDD    #$0100
6463: ED 08       STD    $8,X
6465: 86 04       LDA    #$04
6467: A7 88 1B    STA    $1B,X
646A: DC 3C       LDD    $3C
646C: C3 01 10    ADDD   #$0110
646F: 10 A3 04    CMPD   $4,X
6472: 24 02       BCC    $6476
6474: ED 04       STD    $4,X
6476: 39          RTS
6477: D6 26       LDB    $26
6479: 26 07       BNE    $6482
647B: F6 38 04    LDB    $3804
647E: C4 04       ANDB   #$04
6480: 27 03       BEQ    $6485
6482: B7 38 0E    STA    $380E
6485: 39          RTS
6486: DC 3C       LDD    $3C
6488: 10 83 0F 00 CMPD   #$0F00
648C: 25 1B       BCS    $64A9
648E: 10 83 10 00 CMPD   #$1000
6492: 24 15       BCC    $64A9
6494: DC 3F       LDD    $3F
6496: 10 83 01 6C CMPD   #$016C
649A: 25 0D       BCS    $64A9
649C: EC 06       LDD    $6,X
649E: 10 83 00 88 CMPD   #$0088
64A2: 24 05       BCC    $64A9
64A4: CC 00 88    LDD    #$0088
64A7: ED 06       STD    $6,X
64A9: 39          RTS
64AA: 39          RTS
64AB: 96 36       LDA    $36
64AD: 81 03       CMPA   #$03
64AF: 26 1B       BNE    $64CC
64B1: 96 38       LDA    $38
64B3: 81 01       CMPA   #$01
64B5: 26 15       BNE    $64CC
64B7: EC 04       LDD    $4,X
64B9: 10 83 1A 10 CMPD   #$1A10
64BD: 24 0D       BCC    $64CC
64BF: EC 06       LDD    $6,X
64C1: 10 83 00 55 CMPD   #$0055
64C5: 25 05       BCS    $64CC
64C7: CC 00 55    LDD    #$0055
64CA: ED 06       STD    $6,X
64CC: 39          RTS
64CD: 32 7E       LEAS   -$2,S
64CF: 96 36       LDA    $36
64D1: 81 01       CMPA   #$01
64D3: 26 29       BNE    $64FE
64D5: DC 3C       LDD    $3C
64D7: 10 83 06 E0 CMPD   #$06E0
64DB: 25 21       BCS    $64FE
64DD: DC 3F       LDD    $3F
64DF: 10 83 02 B5 CMPD   #$02B5
64E3: 25 19       BCS    $64FE
64E5: EC 06       LDD    $6,X
64E7: E3 08       ADDD   $8,X
64E9: ED E4       STD    ,S
64EB: DC 3F       LDD    $3F
64ED: C3 00 04    ADDD   #$0004
64F0: 10 A3 E4    CMPD   ,S
64F3: 25 09       BCS    $64FE
64F5: DC 3F       LDD    $3F
64F7: C3 00 04    ADDD   #$0004
64FA: A3 08       SUBD   $8,X
64FC: ED 06       STD    $6,X
64FE: 32 62       LEAS   $2,S
6500: 39          RTS
6501: 10 8E 70 00 LDY    #$7000
6505: 8C 03 A2    CMPX   #$03A2
6508: 27 04       BEQ    $650E
650A: 10 8E 78 00 LDY    #$7800
650E: E6 88 5D    LDB    $5D,X
6511: A6 88 33    LDA    $33,X
6514: 58          ASLB
6515: 49          ROLA
6516: 31 AB       LEAY   D,Y
6518: A6 A4       LDA    ,Y
651A: A7 88 5A    STA    $5A,X
651D: A6 21       LDA    $1,Y
651F: A7 88 5C    STA    $5C,X
6522: 6C 88 5D    INC    $5D,X
6525: 39          RTS
6526: 10 8E 70 00 LDY    #$7000
652A: 8C 03 A2    CMPX   #$03A2
652D: 27 04       BEQ    $6533
652F: 10 8E 78 00 LDY    #$7800
6533: E6 88 5D    LDB    $5D,X
6536: A6 88 33    LDA    $33,X
6539: 58          ASLB
653A: 49          ROLA
653B: 31 AB       LEAY   D,Y
653D: A6 88 5B    LDA    $5B,X
6540: A7 A0       STA    ,Y+
6542: A6 88 5C    LDA    $5C,X
6545: A7 A4       STA    ,Y
6547: 39          RTS
6548: 48          ASLA
6549: 20 F6       BRA    $6541
654B: 8E 19 5A    LDX    #$195A
654E: E6 A0       LDB    ,Y+
6550: C1 FF       CMPB   #$FF
6552: 27 04       BEQ    $6558
6554: ED 81       STD    ,X++
6556: 20 F6       BRA    $654E
6558: BD 65 8D    JSR    $658D
655B: 7F 0E 63    CLR    $0E63
655E: 86 9F       LDA    #$9F
6560: BD 5F FF    JSR    $5FFF
6563: 35 B6       PULS   D,X,Y,PC
6565: 70 70 90    NEG    $7090
6568: 90 30       SUBA   $30
656A: B6 09 F2    LDA    $09F2
656D: 2B 5B       BMI    $65CA
656F: B6 0E 63    LDA    $0E63
6572: 2B 56       BMI    $65CA
6574: BD 65 CB    JSR    $65CB
6577: 24 0D       BCC    $6586
6579: B6 0E 63    LDA    $0E63
657C: 8A 80       ORA    #$80
657E: B7 0E 63    STA    $0E63
6581: 86 1F       LDA    #$1F
6583: BD 5F FF    JSR    $5FFF
6586: B6 0E 5F    LDA    $0E5F
6589: 10 26 00 3D LBNE   $65CA
658D: B6 0E 5E    LDA    $0E5E
6590: 1F 89       TFR    A,B
6592: 44          LSRA
6593: 44          LSRA
6594: 44          LSRA
6595: 44          LSRA
6596: 84 0F       ANDA   #$0F
6598: B7 0E 61    STA    $0E61
659B: C4 0F       ANDB   #$0F
659D: F7 0E 62    STB    $0E62
65A0: B6 0E 61    LDA    $0E61
65A3: 8E 66 52    LDX    #$6652
65A6: 48          ASLA
65A7: 30 86       LEAX   A,X
65A9: 86 00       LDA    #$00
65AB: E6 80       LDB    ,X+
65AD: FD 19 22    STD    $1922
65B0: E6 80       LDB    ,X+
65B2: FD 19 62    STD    $1962
65B5: B6 0E 62    LDA    $0E62
65B8: 48          ASLA
65B9: 8E 66 52    LDX    #$6652
65BC: 30 86       LEAX   A,X
65BE: 86 00       LDA    #$00
65C0: E6 80       LDB    ,X+
65C2: FD 19 24    STD    $1924
65C5: E6 80       LDB    ,X+
65C7: FD 19 64    STD    $1964
65CA: 39          RTS
65CB: 96 51       LDA    $51
65CD: 84 01       ANDA   #$01
65CF: 27 36       BEQ    $6607
65D1: 7C 0E 5F    INC    $0E5F
65D4: 96 55       LDA    $55
65D6: 10 8E 66 44 LDY    #$6644
65DA: E6 A6       LDB    A,Y
65DC: F1 0E 5F    CMPB   $0E5F
65DF: 24 1E       BCC    $65FF
65E1: 7F 0E 5F    CLR    $0E5F
65E4: B6 0E 5E    LDA    $0E5E
65E7: 8B 99       ADDA   #$99
65E9: 19          DAA
65EA: B7 0E 5E    STA    $0E5E
65ED: 81 99       CMPA   #$99
65EF: 26 0E       BNE    $65FF
65F1: 86 59       LDA    #$59
65F3: B7 0E 5E    STA    $0E5E
65F6: B6 0E 5D    LDA    $0E5D
65F9: 8B 99       ADDA   #$99
65FB: 19          DAA
65FC: B7 0E 5D    STA    $0E5D
65FF: FC 0E 5D    LDD    $0E5D
6602: 26 03       BNE    $6607
6604: 1A 01       ORCC   #$01
6606: 39          RTS
6607: 1C FE       ANDCC  #$FE
6609: 39          RTS
660A: 34 10       PSHS   X
660C: B6 03 EA    LDA    $03EA
660F: 81 09       CMPA   #$09
6611: 25 02       BCS    $6615
6613: 86 09       LDA    #$09
6615: 8E 66 52    LDX    #$6652
6618: 48          ASLA
6619: 30 86       LEAX   A,X
661B: 86 00       LDA    #$00
661D: E6 80       LDB    ,X+
661F: FD 1F 08    STD    $1F08
6622: E6 80       LDB    ,X+
6624: FD 1F 48    STD    $1F48
6627: B6 04 48    LDA    $0448
662A: 81 09       CMPA   #$09
662C: 25 02       BCS    $6630
662E: 86 09       LDA    #$09
6630: 8E 66 52    LDX    #$6652
6633: 48          ASLA
6634: 30 86       LEAX   A,X
6636: 86 00       LDA    #$00
6638: E6 80       LDB    ,X+
663A: FD 1F 30    STD    $1F30
663D: E6 80       LDB    ,X+
663F: FD 1F 70    STD    $1F70
6642: 35 90       PULS   X,PC
6644: A0 90       SUBA   [,W]
6646: 78 60 63    ASL    $6063
6649: 64 65       LSR    $5,S
664B: 66 FF 6C 6D ROR    [$6C6D]
664F: 6E 6F       JMP    $F,S
6651: FF 70 7A    STU    $707A
6654: 71 7B 72 7C OIM    #$7B,$727C
6658: 73 7D 74    COM    $7D74
665B: 7E 75 7F    JMP    $757F
665E: 76 80 77    ROR    $8077
6661: 81 78       CMPA   #$78
6663: 82 79       SBCA   #$79
6665: 83 B6 03    SUBD   #$B603
6668: C1 97       CMPB   #$97
666A: 00 86       NEG    $86
666C: C0 97       SUBB   #$97
666E: 03 CC       COM    $CC
6670: 1F 4A       TFR    S,CC
6672: DD 01       STD    $01
6674: BD 66 89    JSR    $6689
6677: B6 04 1F    LDA    $041F
667A: 97 00       STA    $00
667C: 86 00       LDA    #$00
667E: 97 03       STA    $03
6680: CC 1F 72    LDD    #$1F72
6683: DD 01       STD    $01
6685: BD 66 89    JSR    $6689
6688: 39          RTS
6689: 34 50       PSHS   U,X
668B: 32 7E       LEAS   -$2,S
668D: 96 00       LDA    $00
668F: BD 66 BA    JSR    $66BA
6692: E7 E4       STB    ,S
6694: DE 01       LDU    $01
6696: 86 05       LDA    #$05
6698: A7 61       STA    $1,S
669A: 96 03       LDA    $03
669C: 6D E4       TST    ,S
669E: 27 0E       BEQ    $66AE
66A0: C6 61       LDB    #$61
66A2: ED C1       STD    ,U++
66A4: 6A 61       DEC    $1,S
66A6: 6A E4       DEC    ,S
66A8: 26 F8       BNE    $66A2
66AA: 6D 61       TST    $1,S
66AC: 27 08       BEQ    $66B6
66AE: C6 60       LDB    #$60
66B0: ED C1       STD    ,U++
66B2: 6A 61       DEC    $1,S
66B4: 26 FA       BNE    $66B0
66B6: 32 62       LEAS   $2,S
66B8: 35 D0       PULS   X,U,PC
66BA: 5F          CLRB
66BB: 4D          TSTA
66BC: 27 0D       BEQ    $66CB
66BE: 5C          INCB
66BF: C1 05       CMPB   #$05
66C1: 25 04       BCS    $66C7
66C3: C6 05       LDB    #$05
66C5: 20 04       BRA    $66CB
66C7: 80 0A       SUBA   #$0A
66C9: 2A F3       BPL    $66BE
66CB: 39          RTS
66CC: 34 02       PSHS   A
66CE: 10 AE 88 2D LDY    $2D,X
66D2: A6 A8 1F    LDA    $1F,Y
66D5: 27 08       BEQ    $66DF
66D7: A0 E4       SUBA   ,S
66D9: 24 01       BCC    $66DC
66DB: 4F          CLRA
66DC: A7 A8 1F    STA    $1F,Y
66DF: BD 66 66    JSR    $6666
66E2: 35 82       PULS   A,PC
66E4: D6 26       LDB    $26
66E6: 26 07       BNE    $66EF
66E8: F6 38 04    LDB    $3804
66EB: C4 04       ANDB   #$04
66ED: 27 03       BEQ    $66F2
66EF: B7 38 0E    STA    $380E
66F2: 39          RTS
66F3: 34 40       PSHS   U
66F5: 10 AE 88 35 LDY    $35,X
66F9: A6 A8 16    LDA    $16,Y
66FC: 2B 32       BMI    $6730
66FE: A6 88 34    LDA    $34,X
6701: 2A 2D       BPL    $6730
6703: E6 A8 17    LDB    $17,Y
6706: C1 09       CMPB   #$09
6708: 26 03       BNE    $670D
670A: BD 75 5F    JSR    $755F
670D: 85 02       BITA   #$02
670F: 27 1F       BEQ    $6730
6711: 32 7E       LEAS   -$2,S
6713: 6F E4       CLR    ,S
6715: A6 A8 17    LDA    $17,Y
6718: 81 07       CMPA   #$07
671A: 27 12       BEQ    $672E
671C: 81 0E       CMPA   #$0E
671E: 27 0E       BEQ    $672E
6720: 81 05       CMPA   #$05
6722: 27 0A       BEQ    $672E
6724: A6 A8 34    LDA    $34,Y
6727: 85 08       BITA   #$08
6729: 26 03       BNE    $672E
672B: 7E 67 F6    JMP    $67F6
672E: 32 62       LEAS   $2,S
6730: 35 C0       PULS   U,PC
6732: 34 40       PSHS   U
6734: A6 88 1B    LDA    $1B,X
6737: 84 3F       ANDA   #$3F
6739: 81 01       CMPA   #$01
673B: 26 07       BNE    $6744
673D: A6 88 22    LDA    $22,X
6740: 81 08       CMPA   #$08
6742: 27 EC       BEQ    $6730
6744: A6 88 34    LDA    $34,X
6747: 2A E7       BPL    $6730
6749: EE 88 35    LDU    $35,X
674C: E6 C8 16    LDB    $16,U
674F: 2B DF       BMI    $6730
6751: E6 C8 17    LDB    $17,U
6754: C1 09       CMPB   #$09
6756: 26 03       BNE    $675B
6758: BD 75 5F    JSR    $755F
675B: 85 02       BITA   #$02
675D: 26 54       BNE    $67B3
675F: A6 88 43    LDA    $43,X
6762: 85 40       BITA   #$40
6764: 26 1D       BNE    $6783
6766: 85 10       BITA   #$10
6768: 27 C6       BEQ    $6730
676A: 10 8E 68 83 LDY    #$6883
676E: A6 C8 17    LDA    $17,U
6771: A6 A6       LDA    A,Y
6773: 81 16       CMPA   #$16
6775: 26 B9       BNE    $6730
6777: 86 07       LDA    #$07
6779: A7 88 1B    STA    $1B,X
677C: 86 09       LDA    #$09
677E: A7 88 1E    STA    $1E,X
6781: 20 AD       BRA    $6730
6783: A6 88 21    LDA    $21,X
6786: 26 A8       BNE    $6730
6788: A6 88 1B    LDA    $1B,X
678B: 84 3F       ANDA   #$3F
678D: 81 0D       CMPA   #$0D
678F: 27 9F       BEQ    $6730
6791: 81 16       CMPA   #$16
6793: 27 9B       BEQ    $6730
6795: 10 AE 88 35 LDY    $35,X
6799: A6 A8 17    LDA    $17,Y
679C: CE 68 83    LDU    #$6883
679F: A6 C6       LDA    A,U
67A1: 81 FF       CMPA   #$FF
67A3: 27 8B       BEQ    $6730
67A5: A7 88 1B    STA    $1B,X
67A8: 10 AF 88 41 STY    $41,X
67AC: 7E 68 81    JMP    $6881
67AF: 32 62       LEAS   $2,S
67B1: 35 C0       PULS   U,PC
67B3: 32 7E       LEAS   -$2,S
67B5: A6 88 1B    LDA    $1B,X
67B8: 84 3F       ANDA   #$3F
67BA: 81 07       CMPA   #$07
67BC: 26 08       BNE    $67C6
67BE: A6 02       LDA    $2,X
67C0: 84 7F       ANDA   #$7F
67C2: 81 52       CMPA   #$52
67C4: 27 E9       BEQ    $67AF
67C6: 6F E4       CLR    ,S
67C8: 10 AE 88 35 LDY    $35,X
67CC: A6 A8 17    LDA    $17,Y
67CF: 81 07       CMPA   #$07
67D1: 27 DC       BEQ    $67AF
67D3: 81 0E       CMPA   #$0E
67D5: 27 D8       BEQ    $67AF
67D7: 81 05       CMPA   #$05
67D9: 27 D4       BEQ    $67AF
67DB: E6 A8 34    LDB    $34,Y
67DE: C5 01       BITB   #$01
67E0: 27 CD       BEQ    $67AF
67E2: C5 04       BITB   #$04
67E4: 27 10       BEQ    $67F6
67E6: A6 01       LDA    $1,X
67E8: 4C          INCA
67E9: 46          RORA
67EA: 46          RORA
67EB: 46          RORA
67EC: 46          RORA
67ED: A8 A8 34    EORA   $34,Y
67F0: 84 60       ANDA   #$60
67F2: 10 26 00 89 LBNE   $687F
67F6: A6 A8 34    LDA    $34,Y
67F9: 84 93       ANDA   #$93
67FB: A7 A8 34    STA    $34,Y
67FE: EC 24       LDD    $4,Y
6800: A3 04       SUBD   $4,X
6802: 2A 04       BPL    $6808
6804: 86 80       LDA    #$80
6806: A7 E4       STA    ,S
6808: 6F 61       CLR    $1,S
680A: A6 03       LDA    $3,X
680C: A8 E4       EORA   ,S
680E: 27 02       BEQ    $6812
6810: 6C 61       INC    $1,S
6812: A6 0F       LDA    $F,X
6814: A8 E4       EORA   ,S
6816: 26 06       BNE    $681E
6818: A6 61       LDA    $1,S
681A: 88 01       EORA   #$01
681C: A7 61       STA    $1,S
681E: 86 01       LDA    #$01
6820: A7 88 1B    STA    $1B,X
6823: A6 61       LDA    $1,S
6825: A7 88 22    STA    $22,X
6828: A6 88 1F    LDA    $1F,X
682B: A0 88 20    SUBA   $20,X
682E: 24 01       BCC    $6831
6830: 4F          CLRA
6831: A7 88 1F    STA    $1F,X
6834: CE 68 92    LDU    #$6892
6837: E6 A8 17    LDB    $17,Y
683A: C4 3F       ANDB   #$3F
683C: A6 01       LDA    $1,X
683E: 81 02       CMPA   #$02
6840: 25 1A       BCS    $685C
6842: A6 C5       LDA    B,U
6844: 81 FF       CMPA   #$FF
6846: 27 14       BEQ    $685C
6848: 34 34       PSHS   Y,X,B
684A: E6 A8 34    LDB    $34,Y
684D: 8E 03 A2    LDX    #$03A2
6850: C5 20       BITB   #$20
6852: 27 03       BEQ    $6857
6854: 30 88 5E    LEAX   $5E,X
6857: BD F9 46    JSR    $F946
685A: 35 34       PULS   B,X,Y
685C: C1 06       CMPB   #$06
685E: 26 1F       BNE    $687F
6860: 86 11       LDA    #$11
6862: A7 A8 1B    STA    $1B,Y
6865: A6 A8 16    LDA    $16,Y
6868: 2A 15       BPL    $687F
686A: EE A8 1F    LDU    $1F,Y
686D: CC 00 00    LDD    #$0000
6870: A7 88 16    STA    $16,X
6873: ED A8 1F    STD    $1F,Y
6876: ED C8 41    STD    $41,U
6879: A7 C8 21    STA    $21,U
687C: 7A 0E 37    DEC    $0E37
687F: 32 62       LEAS   $2,S
6881: 35 C0       PULS   U,PC
6883: 16 FF FF    LBRA   $6885
6886: 16 16 0D    LBRA   $7E96
6889: 0D 0D       TST    $0D
688B: FF FF FF    STU    $FFFF
688E: FF FF FF    STU    $FFFF
6891: 0D 0B       TST    $0B
6893: FF FF 0B    STU    $FF0B
6896: 0B 11 0E    TIM    #$11;$0E
6899: FF FF FF    STU    $FFFF
689C: FF FF FF    STU    $FFFF
689F: FF 0B FF    STU    $0BFF
68A2: FF FF A6    STU    $FFA6
68A5: 88 34       EORA   #$34
68A7: 2A 28       BPL    $68D1
68A9: 10 AE 88 35 LDY    $35,X
68AD: A6 A8 17    LDA    $17,Y
68B0: 84 7F       ANDA   #$7F
68B2: 81 0F       CMPA   #$0F
68B4: 26 1B       BNE    $68D1
68B6: 86 01       LDA    #$01
68B8: A7 88 1B    STA    $1B,X
68BB: 86 01       LDA    #$01
68BD: A7 88 22    STA    $22,X
68C0: A6 88 1F    LDA    $1F,X
68C3: A0 88 20    SUBA   $20,X
68C6: 24 01       BCC    $68C9
68C8: 4F          CLRA
68C9: A7 88 1F    STA    $1F,X
68CC: 86 02       LDA    #$02
68CE: A7 A8 31    STA    $31,Y
68D1: 39          RTS
68D2: 32 7C       LEAS   -$4,S
68D4: B6 0E 2D    LDA    $0E2D
68D7: 26 6B       BNE    $6944
68D9: A6 84       LDA    ,X
68DB: 84 C0       ANDA   #$C0
68DD: 81 C0       CMPA   #$C0
68DF: 26 63       BNE    $6944
68E1: EC 06       LDD    $6,X
68E3: E3 08       ADDD   $8,X
68E5: ED E4       STD    ,S
68E7: DC 3F       LDD    $3F
68E9: C3 01 80    ADDD   #$0180
68EC: 10 A3 E4    CMPD   ,S
68EF: 25 16       BCS    $6907
68F1: EC E4       LDD    ,S
68F3: C3 00 40    ADDD   #$0040
68F6: 81 FF       CMPA   #$FF
68F8: 27 16       BEQ    $6910
68FA: 10 93 3F    CMPD   $3F
68FD: 25 11       BCS    $6910
68FF: A6 84       LDA    ,X
6901: 8A 40       ORA    #$40
6903: A7 84       STA    ,X
6905: 20 3D       BRA    $6944
6907: A6 88 15    LDA    $15,X
690A: 85 40       BITA   #$40
690C: 26 36       BNE    $6944
690E: 20 34       BRA    $6944
6910: 6F 84       CLR    ,X
6912: 6D 88 17    TST    $17,X
6915: 2A 08       BPL    $691F
6917: B6 09 F2    LDA    $09F2
691A: 8A 80       ORA    #$80
691C: B7 09 F2    STA    $09F2
691F: 7A 09 EF    DEC    $09EF
6922: A6 88 45    LDA    $45,X
6925: 27 03       BEQ    $692A
6927: 7A 0A B5    DEC    $0AB5
692A: A6 88 21    LDA    $21,X
692D: 27 15       BEQ    $6944
692F: 10 AE 88 41 LDY    $41,X
6933: 6F A4       CLR    ,Y
6935: 6F A8 16    CLR    $16,Y
6938: 6F A8 1F    CLR    $1F,Y
693B: 6F A8 20    CLR    $20,Y
693E: 6F 88 21    CLR    $21,X
6941: 6F 88 42    CLR    $42,X
6944: 32 64       LEAS   $4,S
6946: 39          RTS
6947: A6 88 21    LDA    $21,X
694A: 81 01       CMPA   #$01
694C: 26 09       BNE    $6957
694E: B6 0E 37    LDA    $0E37
6951: 81 01       CMPA   #$01
6953: 24 6C       BCC    $69C1
6955: 25 0B       BCS    $6962
6957: 81 04       CMPA   #$04
6959: 26 66       BNE    $69C1
695B: B6 0E 38    LDA    $0E38
695E: 81 01       CMPA   #$01
6960: 24 5F       BCC    $69C1
6962: A6 88 1B    LDA    $1B,X
6965: 84 3F       ANDA   #$3F
6967: 81 00       CMPA   #$00
6969: 27 0F       BEQ    $697A
696B: 81 10       CMPA   #$10
696D: 26 52       BNE    $69C1
696F: A6 88 4B    LDA    $4B,X
6972: 81 04       CMPA   #$04
6974: 27 04       BEQ    $697A
6976: 81 06       CMPA   #$06
6978: 26 47       BNE    $69C1
697A: B6 0E 49    LDA    $0E49
697D: 81 08       CMPA   #$08
697F: 24 40       BCC    $69C1
6981: B6 0E 48    LDA    $0E48
6984: 81 E0       CMPA   #$E0
6986: 24 39       BCC    $69C1
6988: 81 30       CMPA   #$30
698A: 25 36       BCS    $69C2
698C: BD FC 00    JSR    $FC00
698F: 26 30       BNE    $69C1
6991: 10 8E 69 D8 LDY    #$69D8
6995: A6 88 1B    LDA    $1B,X
6998: 84 3F       ANDA   #$3F
699A: 81 07       CMPA   #$07
699C: 27 07       BEQ    $69A5
699E: 86 07       LDA    #$07
69A0: A7 88 1B    STA    $1B,X
69A3: 20 0F       BRA    $69B4
69A5: A6 88 1E    LDA    $1E,X
69A8: E6 01       LDB    $1,X
69AA: C1 22       CMPB   #$22
69AC: 25 02       BCS    $69B0
69AE: C0 17       SUBB   #$17
69B0: A1 A5       CMPA   B,Y
69B2: 27 0D       BEQ    $69C1
69B4: A6 01       LDA    $1,X
69B6: 81 22       CMPA   #$22
69B8: 25 02       BCS    $69BC
69BA: 80 17       SUBA   #$17
69BC: A6 A6       LDA    A,Y
69BE: A7 88 1E    STA    $1E,X
69C1: 39          RTS
69C2: A6 88 4B    LDA    $4B,X
69C5: 81 04       CMPA   #$04
69C7: 27 04       BEQ    $69CD
69C9: 81 06       CMPA   #$06
69CB: 26 0A       BNE    $69D7
69CD: 86 11       LDA    #$11
69CF: A7 88 1B    STA    $1B,X
69D2: 86 03       LDA    #$03
69D4: A7 88 4E    STA    $4E,X
69D7: 39          RTS
69D8: 0C 0C       INC    $0C
69DA: FF 0D FF    STU    $0DFF
69DD: FF FF FF    STU    $FFFF
69E0: 03 02       COM    $02
69E2: FF 03 02    STU    $0302
69E5: 69 ED 69 F9 ROL    $D3E2,PCR
69E9: 6A 01       DEC    $1,X
69EB: 6A 15       DEC    -$B,X
69ED: 01 D4 00    OIM    #$D4;$00
69F0: 20 03       BRA    $69F5
69F2: C8 01       EORB   #$01
69F4: D8 04       EORB   $04
69F6: F0 03 80    SUBB   $0380
69F9: 07 1E       ASR    $1E
69FB: 05 10 08    EIM    #$10;$08
69FE: A0 07       SUBA   $7,X
6A00: 1E 0A       EXG    D,CC
6A02: 09 08       ROL    $08
6A04: 00 0C       NEG    $0C
6A06: 10 0A       FCB    $10,$0A
6A08: 10          FCB    $10
6A09: 0F 29       CLR    $29
6A0B: 0C 10       INC    $10
6A0D: 11 22       FCB    $11,$22
6A0F: 0F          FCB    $0F
6A10: 30 14 30    BAND   CC,2,4,$30
6A13: 11 26       FCB    $11,$26
6A15: 1A          FCB    $1A
6A16: 00          FCB    $00
6A17: 15          FCB    $15
6A18: 10          FCB    $10
6A19: 1B          FCB    $1B
6A1A: F0 15 10    SUBB   $1510
6A1D: B6 09 F2    LDA    $09F2
6A20: 10 2B 00 9A LBMI   $6ABE
6A24: EC 04       LDD    $4,X
6A26: C3 00 40    ADDD   #$0040
6A29: 10 93 3C    CMPD   $3C
6A2C: 25 35       BCS    $6A63
6A2E: 96 36       LDA    $36
6A30: 10 8E 69 E5 LDY    #$69E5
6A34: 48          ASLA
6A35: 10 AE A6    LDY    A,Y
6A38: 96 38       LDA    $38
6A3A: 48          ASLA
6A3B: 48          ASLA
6A3C: 31 A6       LEAY   A,Y
6A3E: A6 04       LDA    $4,X
6A40: 81 FF       CMPA   #$FF
6A42: 27 1F       BEQ    $6A63
6A44: DC 3C       LDD    $3C
6A46: 10 A3 04    CMPD   $4,X
6A49: 24 11       BCC    $6A5C
6A4B: EC A4       LDD    ,Y
6A4D: 10 A3 04    CMPD   $4,X
6A50: 25 11       BCS    $6A63
6A52: DC 3C       LDD    $3C
6A54: C3 01 20    ADDD   #$0120
6A57: 10 A3 04    CMPD   $4,X
6A5A: 24 62       BCC    $6ABE
6A5C: EC 22       LDD    $2,Y
6A5E: 10 A3 04    CMPD   $4,X
6A61: 25 5B       BCS    $6ABE
6A63: A6 88 16    LDA    $16,X
6A66: 2A 0F       BPL    $6A77
6A68: 10 AE 88 1F LDY    $1F,X
6A6C: A6 A4       LDA    ,Y
6A6E: 2A 07       BPL    $6A77
6A70: A6 A8 21    LDA    $21,Y
6A73: 27 02       BEQ    $6A77
6A75: 20 47       BRA    $6ABE
6A77: A6 88 1B    LDA    $1B,X
6A7A: 84 3F       ANDA   #$3F
6A7C: E6 88 17    LDB    $17,X
6A7F: C1 05       CMPB   #$05
6A81: 27 0A       BEQ    $6A8D
6A83: C1 06       CMPB   #$06
6A85: 26 0E       BNE    $6A95
6A87: 81 03       CMPA   #$03
6A89: 27 33       BEQ    $6ABE
6A8B: 26 08       BNE    $6A95
6A8D: 81 04       CMPA   #$04
6A8F: 27 2D       BEQ    $6ABE
6A91: 81 10       CMPA   #$10
6A93: 27 29       BEQ    $6ABE
6A95: CC 00 00    LDD    #$0000
6A98: A7 84       STA    ,X
6A9A: ED 88 1F    STD    $1F,X
6A9D: A7 88 16    STA    $16,X
6AA0: A6 88 17    LDA    $17,X
6AA3: 81 07       CMPA   #$07
6AA5: 24 17       BCC    $6ABE
6AA7: 10 8E 73 4D LDY    #$734D
6AAB: A6 A6       LDA    A,Y
6AAD: 81 FF       CMPA   #$FF
6AAF: 27 0D       BEQ    $6ABE
6AB1: 10 8E 73 54 LDY    #$7354
6AB5: 10 AE A6    LDY    A,Y
6AB8: 6D A4       TST    ,Y
6ABA: 27 02       BEQ    $6ABE
6ABC: 6A A4       DEC    ,Y
6ABE: 39          RTS
6ABF: 34 40       PSHS   U
6AC1: 32 7D       LEAS   -$3,S
6AC3: 96 38       LDA    $38
6AC5: 27 5A       BEQ    $6B21
6AC7: A6 01       LDA    $1,X
6AC9: 81 02       CMPA   #$02
6ACB: 26 54       BNE    $6B21
6ACD: A6 88 15    LDA    $15,X
6AD0: 85 40       BITA   #$40
6AD2: 26 4D       BNE    $6B21
6AD4: A6 88 1B    LDA    $1B,X
6AD7: 84 3F       ANDA   #$3F
6AD9: 81 00       CMPA   #$00
6ADB: 26 44       BNE    $6B21
6ADD: FE 0E 4B    LDU    $0E4B
6AE0: A6 C8 1B    LDA    $1B,U
6AE3: 84 3F       ANDA   #$3F
6AE5: 81 05       CMPA   #$05
6AE7: 27 38       BEQ    $6B21
6AE9: 81 01       CMPA   #$01
6AEB: 27 34       BEQ    $6B21
6AED: 81 04       CMPA   #$04
6AEF: 27 30       BEQ    $6B21
6AF1: B6 0E 49    LDA    $0E49
6AF4: 81 08       CMPA   #$08
6AF6: 24 29       BCC    $6B21
6AF8: B6 0E 48    LDA    $0E48
6AFB: 81 39       CMPA   #$39
6AFD: 25 22       BCS    $6B21
6AFF: BD 4D B3    JSR    $4DB3
6B02: 1F 89       TFR    A,B
6B04: 84 07       ANDA   #$07
6B06: 10 8E 6B 25 LDY    #$6B25
6B0A: A6 A6       LDA    A,Y
6B0C: 2B 13       BMI    $6B21
6B0E: 86 07       LDA    #$07
6B10: A7 88 1B    STA    $1B,X
6B13: 86 04       LDA    #$04
6B15: A7 88 1E    STA    $1E,X
6B18: B6 0E 4A    LDA    $0E4A
6B1B: 46          RORA
6B1C: 46          RORA
6B1D: 84 80       ANDA   #$80
6B1F: A7 03       STA    $3,X
6B21: 32 63       LEAS   $3,S
6B23: 35 C0       PULS   U,PC
6B25: 00 00       NEG    $00
6B27: 00 00       NEG    $00
6B29: 00 00       NEG    $00
6B2B: 00 00       NEG    $00
6B2D: 32 7F       LEAS   -$1,S
6B2F: B6 09 F2    LDA    $09F2
6B32: 2A 37       BPL    $6B6B
6B34: B6 0E 2D    LDA    $0E2D
6B37: 26 32       BNE    $6B6B
6B39: 8E 04 5E    LDX    #$045E
6B3C: 6F E4       CLR    ,S
6B3E: A6 84       LDA    ,X
6B40: 84 C0       ANDA   #$C0
6B42: 81 80       CMPA   #$80
6B44: 26 0D       BNE    $6B53
6B46: 6F 84       CLR    ,X
6B48: 7A 09 EF    DEC    $09EF
6B4B: A6 88 45    LDA    $45,X
6B4E: 27 03       BEQ    $6B53
6B50: 7A 0A B5    DEC    $0AB5
6B53: A6 88 21    LDA    $21,X
6B56: 27 08       BEQ    $6B60
6B58: BD 6B 6E    JSR    $6B6E
6B5B: 86 01       LDA    #$01
6B5D: A7 A8 1B    STA    $1B,Y
6B60: C6 55       LDB    #$55
6B62: 3A          ABX
6B63: 6C E4       INC    ,S
6B65: A6 E4       LDA    ,S
6B67: 81 09       CMPA   #$09
6B69: 25 D3       BCS    $6B3E
6B6B: 32 61       LEAS   $1,S
6B6D: 39          RTS
6B6E: 34 16       PSHS   X,D
6B70: 10 AE 88 41 LDY    $41,X
6B74: CC 00 00    LDD    #$0000
6B77: ED 88 41    STD    $41,X
6B7A: A7 88 40    STA    $40,X
6B7D: ED A8 1F    STD    $1F,Y
6B80: A7 A8 16    STA    $16,Y
6B83: 6F 88 21    CLR    $21,X
6B86: 86 02       LDA    #$02
6B88: A7 A8 1B    STA    $1B,Y
6B8B: A6 03       LDA    $3,X
6B8D: A7 23       STA    $3,Y
6B8F: A6 A8 34    LDA    $34,Y
6B92: 84 93       ANDA   #$93
6B94: A7 A8 34    STA    $34,Y
6B97: A6 01       LDA    $1,X
6B99: 81 02       CMPA   #$02
6B9B: 24 0F       BCC    $6BAC
6B9D: C6 44       LDB    #$44
6B9F: 4D          TSTA
6BA0: 27 02       BEQ    $6BA4
6BA2: C6 24       LDB    #$24
6BA4: AA A8 34    ORA    $34,Y
6BA7: A7 A8 34    STA    $34,Y
6BAA: 20 35       BRA    $6BE1
6BAC: A6 A8 34    LDA    $34,Y
6BAF: 8A 08       ORA    #$08
6BB1: A7 A8 34    STA    $34,Y
6BB4: A6 A8 17    LDA    $17,Y
6BB7: 84 1F       ANDA   #$1F
6BB9: 81 05       CMPA   #$05
6BBB: 27 15       BEQ    $6BD2
6BBD: 81 06       CMPA   #$06
6BBF: 26 20       BNE    $6BE1
6BC1: 7C 0E 37    INC    $0E37
6BC4: B6 0E 37    LDA    $0E37
6BC7: 81 02       CMPA   #$02
6BC9: 25 16       BCS    $6BE1
6BCB: 7A 0E 37    DEC    $0E37
6BCE: 6F A4       CLR    ,Y
6BD0: 20 0F       BRA    $6BE1
6BD2: 7C 0E 38    INC    $0E38
6BD5: B6 0E 38    LDA    $0E38
6BD8: 81 02       CMPA   #$02
6BDA: 25 05       BCS    $6BE1
6BDC: 7A 0E 38    DEC    $0E38
6BDF: 6F A4       CLR    ,Y
6BE1: 35 96       PULS   D,X,PC
6BE3: 32 7D       LEAS   -$3,S
6BE5: 6F 88 37    CLR    $37,X
6BE8: B6 0E 4A    LDA    $0E4A
6BEB: 85 02       BITA   #$02
6BED: 26 15       BNE    $6C04
6BEF: 10 BE 0E 4B LDY    $0E4B
6BF3: A6 A8 31    LDA    $31,Y
6BF6: 84 18       ANDA   #$18
6BF8: 26 07       BNE    $6C01
6BFA: B6 0E 49    LDA    $0E49
6BFD: 81 08       CMPA   #$08
6BFF: 25 03       BCS    $6C04
6C01: 6C 88 37    INC    $37,X
6C04: A6 88 38    LDA    $38,X
6C07: 84 0F       ANDA   #$0F
6C09: 81 03       CMPA   #$03
6C0B: 27 0C       BEQ    $6C19
6C0D: 5F          CLRB
6C0E: B6 0E 4A    LDA    $0E4A
6C11: 85 01       BITA   #$01
6C13: 27 02       BEQ    $6C17
6C15: CA 80       ORB    #$80
6C17: E7 03       STB    $3,X
6C19: 32 63       LEAS   $3,S
6C1B: 39          RTS
6C1C: 34 7E       PSHS   U,Y,X,DP,D
6C1E: 10 8E 6C 40 LDY    #$6C40
6C22: A6 01       LDA    $1,X
6C24: 81 22       CMPA   #$22
6C26: 25 02       BCS    $6C2A
6C28: 80 17       SUBA   #$17
6C2A: A6 A6       LDA    A,Y
6C2C: 26 10       BNE    $6C3E
6C2E: 10 BE 0E 4B LDY    $0E4B
6C32: A6 88 1B    LDA    $1B,X
6C35: 84 3F       ANDA   #$3F
6C37: 81 12       CMPA   #$12
6C39: 27 03       BEQ    $6C3E
6C3B: BD 6C 4D    JSR    $6C4D
6C3E: 35 FE       PULS   D,DP,X,Y,U,PC
6C40: 00 00       NEG    $00
6C42: FF 00 FF    STU    >$00FF
6C45: FF FF FF    STU    $FFFF
6C48: 00 00       NEG    $00
6C4A: FF 00 00    STU    >$0000
6C4D: 34 20       PSHS   Y
6C4F: 32 7C       LEAS   -$4,S
6C51: 86 02       LDA    #$02
6C53: A7 E4       STA    ,S
6C55: EC 28       LDD    $8,Y
6C57: A3 08       SUBD   $8,X
6C59: 10 27 00 B8 LBEQ   $6D15
6C5D: 2A 15       BPL    $6C74
6C5F: ED 61       STD    $1,S
6C61: CC 00 00    LDD    #$0000
6C64: A3 61       SUBD   $1,S
6C66: 10 83 00 60 CMPD   #$0060
6C6A: 10 25 00 A7 LBCS   $6D15
6C6E: 86 03       LDA    #$03
6C70: A7 E4       STA    ,S
6C72: 20 08       BRA    $6C7C
6C74: 10 83 00 38 CMPD   #$0038
6C78: 10 25 00 99 LBCS   $6D15
6C7C: B6 0B 4D    LDA    $0B4D
6C7F: 84 0F       ANDA   #$0F
6C81: 10 27 00 90 LBEQ   $6D15
6C85: A6 88 21    LDA    $21,X
6C88: 27 17       BEQ    $6CA1
6C8A: A6 01       LDA    $1,X
6C8C: 81 02       CMPA   #$02
6C8E: 10 25 00 83 LBCS   $6D15
6C92: A6 88 21    LDA    $21,X
6C95: 81 03       CMPA   #$03
6C97: 25 08       BCS    $6CA1
6C99: 81 04       CMPA   #$04
6C9B: 27 04       BEQ    $6CA1
6C9D: 81 07       CMPA   #$07
6C9F: 26 74       BNE    $6D15
6CA1: A6 88 32    LDA    $32,X
6CA4: 84 BF       ANDA   #$BF
6CA6: A7 88 32    STA    $32,X
6CA9: 5F          CLRB
6CAA: B6 0B 4A    LDA    $0B4A
6CAD: 81 01       CMPA   #$01
6CAF: 27 2E       BEQ    $6CDF
6CB1: 81 02       CMPA   #$02
6CB3: 26 1C       BNE    $6CD1
6CB5: EC 08       LDD    $8,X
6CB7: 10 83 01 10 CMPD   #$0110
6CBB: 25 22       BCS    $6CDF
6CBD: 10 83 01 60 CMPD   #$0160
6CC1: 24 1C       BCC    $6CDF
6CC3: 10 8E 0D FB LDY    #$0DFB
6CC7: EC A1       LDD    ,Y++
6CC9: ED 04       STD    $4,X
6CCB: EC A1       LDD    ,Y++
6CCD: ED 06       STD    $6,X
6CCF: 25 44       BCS    $6D15
6CD1: 81 03       CMPA   #$03
6CD3: 27 0A       BEQ    $6CDF
6CD5: E6 88 32    LDB    $32,X
6CD8: CA 40       ORB    #$40
6CDA: E7 88 32    STB    $32,X
6CDD: C6 80       LDB    #$80
6CDF: E7 61       STB    $1,S
6CE1: C4 0F       ANDB   #$0F
6CE3: 1F 98       TFR    B,A
6CE5: 4C          INCA
6CE6: A7 62       STA    $2,S
6CE8: 10 8E 0E 0B LDY    #$0E0B
6CEC: A6 A5       LDA    B,Y
6CEE: A1 62       CMPA   $2,S
6CF0: 24 23       BCC    $6D15
6CF2: 6C A5       INC    B,Y
6CF4: A6 61       LDA    $1,S
6CF6: A7 88 38    STA    $38,X
6CF9: A6 E4       LDA    ,S
6CFB: A7 88 37    STA    $37,X
6CFE: 86 12       LDA    #$12
6D00: A7 88 1B    STA    $1B,X
6D03: A6 88 31    LDA    $31,X
6D06: 8A 10       ORA    #$10
6D08: 5D          TSTB
6D09: 26 02       BNE    $6D0D
6D0B: 8A 08       ORA    #$08
6D0D: A7 88 31    STA    $31,X
6D10: EC 64       LDD    $4,S
6D12: ED 88 2D    STD    $2D,X
6D15: 32 64       LEAS   $4,S
6D17: 35 A0       PULS   Y,PC
6D19: 96 36       LDA    $36
6D1B: D6 37       LDB    $37
6D1D: 10 83 02 01 CMPD   #$0201
6D21: 26 3F       BNE    $6D62
6D23: DC 3C       LDD    $3C
6D25: 10 83 11 00 CMPD   #$1100
6D29: 25 37       BCS    $6D62
6D2B: DC 3F       LDD    $3F
6D2D: 10 83 01 20 CMPD   #$0120
6D31: 24 2F       BCC    $6D62
6D33: B6 03 D3    LDA    $03D3
6D36: BA 04 31    ORA    $0431
6D39: 84 08       ANDA   #$08
6D3B: 26 25       BNE    $6D62
6D3D: 10 8E 6C 40 LDY    #$6C40
6D41: A6 01       LDA    $1,X
6D43: 81 22       CMPA   #$22
6D45: 25 02       BCS    $6D49
6D47: 80 17       SUBA   #$17
6D49: A6 A6       LDA    A,Y
6D4B: 26 15       BNE    $6D62
6D4D: A6 88 38    LDA    $38,X
6D50: 84 0F       ANDA   #$0F
6D52: 81 0F       CMPA   #$0F
6D54: 27 0C       BEQ    $6D62
6D56: A6 88 31    LDA    $31,X
6D59: 85 08       BITA   #$08
6D5B: 27 05       BEQ    $6D62
6D5D: 86 0F       LDA    #$0F
6D5F: A7 88 38    STA    $38,X
6D62: 39          RTS
6D63: 34 40       PSHS   U
6D65: 96 36       LDA    $36
6D67: 81 01       CMPA   #$01
6D69: 26 65       BNE    $6DD0
6D6B: DC 3C       LDD    $3C
6D6D: 10 83 06 18 CMPD   #$0618
6D71: 25 5D       BCS    $6DD0
6D73: CC 06 00    LDD    #$0600
6D76: 10 A3 04    CMPD   $4,X
6D79: 25 55       BCS    $6DD0
6D7B: 6F 84       CLR    ,X
6D7D: 6F 88 13    CLR    $13,X
6D80: 6F 88 15    CLR    $15,X
6D83: 7A 09 EF    DEC    $09EF
6D86: A6 88 45    LDA    $45,X
6D89: 27 03       BEQ    $6D8E
6D8B: 7A 0A B5    DEC    $0AB5
6D8E: A6 88 17    LDA    $17,X
6D91: 2A 08       BPL    $6D9B
6D93: B6 09 F2    LDA    $09F2
6D96: 8A 80       ORA    #$80
6D98: B7 09 F2    STA    $09F2
6D9B: A6 88 21    LDA    $21,X
6D9E: 27 30       BEQ    $6DD0
6DA0: 10 AE 88 41 LDY    $41,X
6DA4: CC 00 00    LDD    #$0000
6DA7: A7 A4       STA    ,Y
6DA9: A7 88 21    STA    $21,X
6DAC: ED 88 41    STD    $41,X
6DAF: ED A8 1F    STD    $1F,Y
6DB2: A7 A8 16    STA    $16,Y
6DB5: A6 A8 17    LDA    $17,Y
6DB8: 81 07       CMPA   #$07
6DBA: 24 14       BCC    $6DD0
6DBC: CE 73 4D    LDU    #$734D
6DBF: A6 C6       LDA    A,U
6DC1: 81 FF       CMPA   #$FF
6DC3: 27 0B       BEQ    $6DD0
6DC5: CE 73 54    LDU    #$7354
6DC8: EE C6       LDU    A,U
6DCA: 6D C4       TST    ,U
6DCC: 27 02       BEQ    $6DD0
6DCE: 6A C4       DEC    ,U
6DD0: 35 C0       PULS   U,PC
6DD2: 34 20       PSHS   Y
6DD4: FC 0E 5D    LDD    $0E5D
6DD7: 10 26 00 7C LBNE   $6E57
6DDB: A6 88 1B    LDA    $1B,X
6DDE: 84 7F       ANDA   #$7F
6DE0: 81 01       CMPA   #$01
6DE2: 27 73       BEQ    $6E57
6DE4: 81 00       CMPA   #$00
6DE6: 26 13       BNE    $6DFB
6DE8: A6 88 37    LDA    $37,X
6DEB: 81 02       CMPA   #$02
6DED: 25 53       BCS    $6E42
6DEF: 86 01       LDA    #$01
6DF1: A7 88 1B    STA    $1B,X
6DF4: 86 01       LDA    #$01
6DF6: A7 88 22    STA    $22,X
6DF9: 20 5C       BRA    $6E57
6DFB: E6 88 15    LDB    $15,X
6DFE: C5 40       BITB   #$40
6E00: 26 55       BNE    $6E57
6E02: 84 F7       ANDA   #$F7
6E04: A7 88 4C    STA    $4C,X
6E07: A6 88 1B    LDA    $1B,X
6E0A: 84 3F       ANDA   #$3F
6E0C: 81 06       CMPA   #$06
6E0E: 27 0C       BEQ    $6E1C
6E10: 81 08       CMPA   #$08
6E12: 27 08       BEQ    $6E1C
6E14: 81 09       CMPA   #$09
6E16: 27 04       BEQ    $6E1C
6E18: 86 0A       LDA    #$0A
6E1A: 26 26       BNE    $6E42
6E1C: 10 AE 88 2D LDY    $2D,X
6E20: A6 A8 16    LDA    $16,Y
6E23: 84 F9       ANDA   #$F9
6E25: A7 A8 16    STA    $16,Y
6E28: A6 21       LDA    $1,Y
6E2A: 81 02       CMPA   #$02
6E2C: 24 0F       BCC    $6E3D
6E2E: 86 01       LDA    #$01
6E30: A7 A8 1B    STA    $1B,Y
6E33: 86 08       LDA    #$08
6E35: A7 A8 22    STA    $22,Y
6E38: 6F A8 1F    CLR    $1F,Y
6E3B: 20 05       BRA    $6E42
6E3D: 86 00       LDA    #$00
6E3F: A7 A8 1B    STA    $1B,Y
6E42: 86 01       LDA    #$01
6E44: A7 88 1B    STA    $1B,X
6E47: 86 08       LDA    #$08
6E49: A7 88 22    STA    $22,X
6E4C: 6F 88 1F    CLR    $1F,X
6E4F: A6 88 16    LDA    $16,X
6E52: 84 F9       ANDA   #$F9
6E54: A7 88 16    STA    $16,X
6E57: 35 A0       PULS   Y,PC
6E59: 34 40       PSHS   U
6E5B: 0D 37       TST    $37
6E5D: 27 6B       BEQ    $6ECA
6E5F: DC 3F       LDD    $3F
6E61: 10 83 01 70 CMPD   #$0170
6E65: 25 61       BCS    $6EC8
6E67: EC 08       LDD    $8,X
6E69: E3 06       ADDD   $6,X
6E6B: C3 00 10    ADDD   #$0010
6E6E: 10 93 3F    CMPD   $3F
6E71: 24 55       BCC    $6EC8
6E73: 6F 84       CLR    ,X
6E75: 6F 88 13    CLR    $13,X
6E78: 6F 88 15    CLR    $15,X
6E7B: 7A 09 EF    DEC    $09EF
6E7E: A6 88 45    LDA    $45,X
6E81: 27 03       BEQ    $6E86
6E83: 7A 0A B5    DEC    $0AB5
6E86: A6 88 17    LDA    $17,X
6E89: 2A 08       BPL    $6E93
6E8B: B6 09 F2    LDA    $09F2
6E8E: 8A 80       ORA    #$80
6E90: B7 09 F2    STA    $09F2
6E93: A6 88 21    LDA    $21,X
6E96: 27 30       BEQ    $6EC8
6E98: 10 AE 88 41 LDY    $41,X
6E9C: CC 00 00    LDD    #$0000
6E9F: A7 A4       STA    ,Y
6EA1: A7 88 21    STA    $21,X
6EA4: A7 A8 16    STA    $16,Y
6EA7: ED 88 41    STD    $41,X
6EAA: ED A8 1F    STD    $1F,Y
6EAD: A6 A8 17    LDA    $17,Y
6EB0: 81 07       CMPA   #$07
6EB2: 24 14       BCC    $6EC8
6EB4: CE 73 4D    LDU    #$734D
6EB7: A6 C6       LDA    A,U
6EB9: 81 FF       CMPA   #$FF
6EBB: 27 0B       BEQ    $6EC8
6EBD: CE 73 54    LDU    #$7354
6EC0: EE C6       LDU    A,U
6EC2: 6D C4       TST    ,U
6EC4: 27 02       BEQ    $6EC8
6EC6: 6A C4       DEC    ,U
6EC8: 35 C0       PULS   U,PC
6ECA: CC 11 20    LDD    #$1120
6ECD: 10 A3 04    CMPD   $4,X
6ED0: 24 F6       BCC    $6EC8
6ED2: 7E 6E 73    JMP    $6E73
6ED5: A6 88 3A    LDA    $3A,X
6ED8: 81 40       CMPA   #$40
6EDA: 24 27       BCC    $6F03
6EDC: 1F 89       TFR    A,B
6EDE: 3D          MUL
6EDF: 34 06       PSHS   D
6EE1: A6 88 3B    LDA    $3B,X
6EE4: 1F 89       TFR    A,B
6EE6: 3D          MUL
6EE7: E3 E4       ADDD   ,S
6EE9: 34 02       PSHS   A
6EEB: 10 8E 00 81 LDY    #$0081
6EEF: 96 80       LDA    $80
6EF1: C6 02       LDB    #$02
6EF3: 3D          MUL
6EF4: 31 AB       LEAY   D,Y
6EF6: 35 02       PULS   A
6EF8: A7 A0       STA    ,Y+
6EFA: B6 09 F0    LDA    $09F0
6EFD: A7 A4       STA    ,Y
6EFF: 0C 80       INC    $80
6F01: 35 86       PULS   D,PC
6F03: 34 02       PSHS   A
6F05: 10 8E 00 94 LDY    #$0094
6F09: 96 93       LDA    $93
6F0B: C6 02       LDB    #$02
6F0D: 3D          MUL
6F0E: 31 AB       LEAY   D,Y
6F10: 35 02       PULS   A
6F12: A7 A0       STA    ,Y+
6F14: B6 09 F0    LDA    $09F0
6F17: A7 A4       STA    ,Y
6F19: 0C 93       INC    $93
6F1B: 39          RTS
6F1C: A6 88 3C    LDA    $3C,X
6F1F: 81 40       CMPA   #$40
6F21: 24 27       BCC    $6F4A
6F23: 1F 89       TFR    A,B
6F25: 3D          MUL
6F26: 34 06       PSHS   D
6F28: A6 88 3D    LDA    $3D,X
6F2B: 1F 89       TFR    A,B
6F2D: 3D          MUL
6F2E: E3 E4       ADDD   ,S
6F30: 34 02       PSHS   A
6F32: 10 8E 00 A7 LDY    #$00A7
6F36: 96 A6       LDA    $A6
6F38: C6 02       LDB    #$02
6F3A: 3D          MUL
6F3B: 31 AB       LEAY   D,Y
6F3D: 35 02       PULS   A
6F3F: A7 A0       STA    ,Y+
6F41: B6 09 F0    LDA    $09F0
6F44: A7 A4       STA    ,Y
6F46: 0C A6       INC    $A6
6F48: 35 86       PULS   D,PC
6F4A: 34 02       PSHS   A
6F4C: 10 8E 00 BA LDY    #$00BA
6F50: 96 B9       LDA    $B9
6F52: C6 02       LDB    #$02
6F54: 3D          MUL
6F55: 31 AB       LEAY   D,Y
6F57: 35 02       PULS   A
6F59: A7 A0       STA    ,Y+
6F5B: B6 09 F0    LDA    $09F0
6F5E: A7 A4       STA    ,Y
6F60: 0C B9       INC    $B9
6F62: 39          RTS
6F63: A6 88 3A    LDA    $3A,X
6F66: A1 88 3C    CMPA   $3C,X
6F69: 27 08       BEQ    $6F73
6F6B: 10 25 FF 66 LBCS   $6ED5
6F6F: 10 24 FF A9 LBCC   $6F1C
6F73: A6 88 3B    LDA    $3B,X
6F76: A1 88 3D    CMPA   $3D,X
6F79: 10 25 FF 58 LBCS   $6ED5
6F7D: 10 24 FF 9B LBCC   $6F1C
6F81: 10 8E 00 81 LDY    #$0081
6F85: 96 80       LDA    $80
6F87: 5F          CLRB
6F88: BD 6F AC    JSR    $6FAC
6F8B: 10 8E 00 94 LDY    #$0094
6F8F: 96 93       LDA    $93
6F91: 5F          CLRB
6F92: BD 6F AC    JSR    $6FAC
6F95: 10 8E 00 A7 LDY    #$00A7
6F99: 96 A6       LDA    $A6
6F9B: C6 01       LDB    #$01
6F9D: BD 6F AC    JSR    $6FAC
6FA0: 10 8E 00 BA LDY    #$00BA
6FA4: 96 B9       LDA    $B9
6FA6: C6 01       LDB    #$01
6FA8: BD 6F AC    JSR    $6FAC
6FAB: 39          RTS
6FAC: 34 70       PSHS   U,Y,X
6FAE: 4D          TSTA
6FAF: 27 60       BEQ    $7011
6FB1: 97 00       STA    $00
6FB3: D7 05       STB    $05
6FB5: 10 9F 01    STY    $01
6FB8: 9E 01       LDX    $01
6FBA: 31 02       LEAY   $2,X
6FBC: 0F 03       CLR    $03
6FBE: 0F 04       CLR    $04
6FC0: 96 03       LDA    $03
6FC2: 4C          INCA
6FC3: 91 00       CMPA   $00
6FC5: 24 46       BCC    $700D
6FC7: 0C 03       INC    $03
6FC9: A6 A1       LDA    ,Y++
6FCB: A1 81       CMPA   ,X++
6FCD: 25 2E       BCS    $6FFD
6FCF: 26 3A       BNE    $700B
6FD1: A6 3F       LDA    -$1,Y
6FD3: 97 0F       STA    $0F
6FD5: BD 71 F5    JSR    $71F5
6FD8: DE 0E       LDU    $0E
6FDA: E6 C8 3B    LDB    $3B,U
6FDD: 0D 05       TST    $05
6FDF: 27 03       BEQ    $6FE4
6FE1: E6 C8 3D    LDB    $3D,U
6FE4: A6 1F       LDA    -$1,X
6FE6: 97 0F       STA    $0F
6FE8: BD 71 F5    JSR    $71F5
6FEB: DE 0E       LDU    $0E
6FED: 0D 05       TST    $05
6FEF: 27 07       BEQ    $6FF8
6FF1: E1 C8 3D    CMPB   $3D,U
6FF4: 24 15       BCC    $700B
6FF6: 25 05       BCS    $6FFD
6FF8: E1 C8 3B    CMPB   $3B,U
6FFB: 24 0E       BCC    $700B
6FFD: EC 1E       LDD    -$2,X
6FFF: 34 00       PSHS   
7001: 00 08       NEG    $08
7003: 0A 28       DEC    $28
7005: 18          FCB    $18
7006: 08 63       ASL    $63
7008: 0A 0C       DEC    $0C
700A: 12          NOP
700B: 04 02       LSR    $02
700D: 02 04 01    AIM    #$04;$01
7010: 14          SEXW
7011: 04 04       LSR    $04
7013: 03 14       COM    $14
7015: 02 04 02    AIM    #$04;$02
7018: 14          SEXW
7019: 01 04 03    OIM    #$04;$03
701C: 14          SEXW
701D: 03 04       COM    $04
701F: 01 14 04    OIM    #$14;$04
7022: 04 03       LSR    $03
7024: 14          SEXW
7025: 03 04       COM    $04
7027: 02 14 04    AIM    #$14;$04
702A: 04 00       LSR    $00
702C: 00 03       NEG    $03
702E: 10 03       FCB    $10,$03
7030: 00          FCB    $00
7031: 03          FCB    $03
7032: 10          FCB    $10
7033: 04 00       LSR    $00
7035: 03 10       COM    $10
7037: 03 00       COM    $00
7039: 03 10       COM    $10
703B: 04 00       LSR    $00
703D: 03 10       COM    $10
703F: 04 00       LSR    $00
7041: 02 10 01    AIM    #$10;$01
7044: 00 01       NEG    $01
7046: 10 02       FCB    $10,$02
7048: 00          FCB    $00
7049: 01          FCB    $01
704A: 10          FCB    $10
704B: 01 00 06    OIM    #$00;$06
704E: 08 1F       ASL    $1F
7050: 09 0C       ROL    $0C
7052: 08 13       ASL    $13
7054: 48          ASLA
7055: 02 68 12    AIM    #$68;$12
7058: 08 02       ASL    $02
705A: 48          ASLA
705B: 01 08 00    OIM    #$08;$00
705E: 48          ASLA
705F: 01 08 01    OIM    #$08;$01
7062: 48          ASLA
7063: 02 08 01    AIM    #$08;$01
7066: 48          ASLA
7067: 01 08 00    OIM    #$08;$00
706A: 48          ASLA
706B: 01 08 00    OIM    #$08;$00
706E: 00 00       NEG    $00
7070: 40          NEGA
7071: 00 00       NEG    $00
7073: 2B 04       BMI    $7079
7075: 0A 05       DEC    $05
7077: 05 04 00    EIM    #$04;$00
707A: 14          SEXW
707B: 02 00 03    AIM    #$00;$03
707E: 10 04       FCB    $10,$04
7080: 00          FCB    $00
7081: 02          FCB    $02
7082: 10          FCB    $10
7083: 02 00 01    AIM    #$00;$01
7086: 10 04       FCB    $10,$04
7088: 00          FCB    $00
7089: 01          FCB    $01
708A: 10          FCB    $10
708B: 01 00 02    OIM    #$00;$02
708E: 10 02       FCB    $10,$02
7090: 00          FCB    $00
7091: 02          FCB    $02
7092: 10          FCB    $10
7093: 02 00 01    AIM    #$00;$01
7096: 10 01       FCB    $10,$01
7098: 00          FCB    $00
7099: 02          FCB    $02
709A: 10          FCB    $10
709B: 02 00 02    AIM    #$00;$02
709E: 10 02       FCB    $10,$02
70A0: 00          FCB    $00
70A1: 01          FCB    $01
70A2: 10          FCB    $10
70A3: 02 00 02    AIM    #$00;$02
70A6: 10 01       FCB    $10,$01
70A8: 00          FCB    $00
70A9: 02          FCB    $02
70AA: 10          FCB    $10
70AB: 02 00 03    AIM    #$00;$03
70AE: 10 01       FCB    $10,$01
70B0: 00          FCB    $00
70B1: 07          FCB    $07
70B2: 01          FCB    $01
70B3: 06          FCB    $06
70B4: 09          FCB    $09
70B5: 00          FCB    $00
70B6: 18          FCB    $18
70B7: 02          FCB    $02
70B8: 08          FCB    $08
70B9: 02          FCB    $02
70BA: 18          FCB    $18
70BB: 01          FCB    $01
70BC: 08          FCB    $08
70BD: 02          FCB    $02
70BE: 18          FCB    $18
70BF: 01          FCB    $01
70C0: 08          FCB    $08
70C1: 03          FCB    $03
70C2: 18          FCB    $18
70C3: 01          FCB    $01
70C4: 08          FCB    $08
70C5: 02          FCB    $02
70C6: 18          FCB    $18
70C7: 03          FCB    $03
70C8: 08          FCB    $08
70C9: 04          FCB    $04
70CA: 10          FCB    $10
70CB: 02 00 02    AIM    #$00;$02
70CE: 10 02       FCB    $10,$02
70D0: 00          FCB    $00
70D1: 01          FCB    $01
70D2: 10          FCB    $10
70D3: 02 00 02    AIM    #$00;$02
70D6: 10 02       FCB    $10,$02
70D8: 00          FCB    $00
70D9: 02          FCB    $02
70DA: 10          FCB    $10
70DB: 02 00 02    AIM    #$00;$02
70DE: 10 02       FCB    $10,$02
70E0: 00          FCB    $00
70E1: 01          FCB    $01
70E2: 10          FCB    $10
70E3: 02 00 03    AIM    #$00;$03
70E6: 10 02       FCB    $10,$02
70E8: 00          FCB    $00
70E9: 02          FCB    $02
70EA: 10          FCB    $10
70EB: 03 00       COM    $00
70ED: 1D          SEX
70EE: 30 2A       LEAX   $A,Y
70F0: 20 00       BRA    $70F2
70F2: 00 0B       NEG    $0B
70F4: 08 07       ASL    $07
70F6: 0A 25       DEC    $25
70F8: 08 01       ASL    $01
70FA: 00 00       NEG    $00
70FC: 01 0D 21    OIM    #$0D;$21
70FF: 03 68       COM    $68
7101: 12          NOP
7102: 60 09       NEG    $9,X
7104: 40          NEGA
7105: 01 00 15    OIM    #$00;$15
7108: 30 2C       LEAX   $C,Y
710A: 20 00       BRA    $710C
710C: 00 2F       NEG    $2F
710E: 04 09       LSR    $09
7110: 00 01       NEG    $01
7112: 30 19       LEAX   -$7,X
7114: 20 06       BRA    $711C
7116: 00 09       NEG    $09
7118: 08 06       ASL    $06
711A: 00 18       NEG    $18
711C: 20 07       BRA    $7125
711E: 00 06       NEG    $06
7120: 20 00       BRA    $7122
7122: 30 1D       LEAX   -$3,X
7124: 20 02       BRA    $7128
7126: 00 03       NEG    $03
7128: 04 03       LSR    $03
712A: 14          SEXW
712B: 01 10 00    OIM    #$10;$00
712E: 00 02       NEG    $02
7130: 10 03       FCB    $10,$03
7132: 00          FCB    $00
7133: 03          FCB    $03
7134: 10          FCB    $10
7135: 04 00       LSR    $00
7137: 03 10       COM    $10
7139: 04 00       LSR    $00
713B: 04 10       LSR    $10
713D: 03 00       COM    $00
713F: 03 10       COM    $10
7141: 03 00       COM    $00
7143: 01 10 03    OIM    #$10;$03
7146: 00 0C       NEG    $0C
7148: 08 17       ASL    $17
714A: 00 03       NEG    $03
714C: 04 06       LSR    $06
714E: 10 04       FCB    $10,$04
7150: 00          FCB    $00
7151: 04          FCB    $04
7152: 10          FCB    $10
7153: 03 00       COM    $00
7155: 02 10 04    AIM    #$10;$04
7158: 00 02       NEG    $02
715A: 10 03       FCB    $10,$03
715C: 00          FCB    $00
715D: 04          FCB    $04
715E: 10          FCB    $10
715F: 02 00 03    AIM    #$00;$03
7162: 10 04       FCB    $10,$04
7164: 00          FCB    $00
7165: 02          FCB    $02
7166: 10          FCB    $10
7167: 03 00       COM    $00
7169: 03 10       COM    $10
716B: 03 00       COM    $00
716D: 02 10 03    AIM    #$10;$03
7170: 00 01       NEG    $01
7172: 10 04       FCB    $10,$04
7174: 00          FCB    $00
7175: 01          FCB    $01
7176: 10          FCB    $10
7177: 03 00       COM    $00
7179: 02 10 03    AIM    #$10;$03
717C: 00 02       NEG    $02
717E: 10 03       FCB    $10,$03
7180: 00          FCB    $00
7181: 03          FCB    $03
7182: 10          FCB    $10
7183: 03 00       COM    $00
7185: 01 10 03    OIM    #$10;$03
7188: 00 02       NEG    $02
718A: 10 03       FCB    $10,$03
718C: 00          FCB    $00
718D: 03          FCB    $03
718E: 10          FCB    $10
718F: 02 00 03    AIM    #$00;$03
7192: 10 03       FCB    $10,$03
7194: 00          FCB    $00
7195: 03          FCB    $03
7196: 10          FCB    $10
7197: 03 00       COM    $00
7199: 02 10 03    AIM    #$10;$03
719C: 00 02       NEG    $02
719E: 10 02       FCB    $10,$02
71A0: 00          FCB    $00
71A1: 02          FCB    $02
71A2: 10          FCB    $10
71A3: 03 00       COM    $00
71A5: 06 20       ROR    $20
71A7: 04 08       LSR    $08
71A9: 08 28       ASL    $28
71AB: 03 08       COM    $08
71AD: 02 28 04    AIM    #$28;$04
71B0: 08 02       ASL    $02
71B2: 28 03       BVC    $71B7
71B4: 08 03       ASL    $03
71B6: 28 04       BVC    $71BC
71B8: 08 0F       ASL    $0F
71BA: 0A 4B       DEC    $4B
71BC: 08 23       ASL    $23
71BE: 09 0A       ROL    $0A
71C0: 08 81       ASL    $81
71C2: 28 09       BVC    $71CD
71C4: 68 20       ASL    $0,Y
71C6: 08 01       ASL    $01
71C8: 00 03       NEG    $03
71CA: 04 05       LSR    $05
71CC: 14          SEXW
71CD: 00 10       NEG    $10
71CF: 02 00 03    AIM    #$00;$03
71D2: 10 01       FCB    $10,$01
71D4: 18          FCB    $18
71D5: 01          FCB    $01
71D6: 08          FCB    $08
71D7: 08          FCB    $08
71D8: 18          FCB    $18
71D9: 01          FCB    $01
71DA: 08          FCB    $08
71DB: 0E          FCB    $0E
71DC: 28 05 2A    LBVC   $7709
71DF: 03 6A       COM    $6A
71E1: 23 42       BLS    $7225
71E3: 01 02 08    OIM    #$02;$08
71E6: 06 01       ROR    $01
71E8: 14          SEXW
71E9: 03 04       COM    $04
71EB: 04 14       LSR    $14
71ED: 03 04       COM    $04
71EF: 02 00 00    AIM    #$00;$00
71F2: 10 04       FCB    $10,$04
71F4: 00          FCB    $00
71F5: 01          FCB    $01
71F6: 10          FCB    $10
71F7: 03 00       COM    $00
71F9: 04 10       LSR    $10
71FB: 03 00       COM    $00
71FD: 04 10       LSR    $10
71FF: 03 00       COM    $00
7201: 02 40 17    AIM    #$40;$17
7204: 48          ASLA
7205: 00 08       NEG    $08
7207: 02 48 06    AIM    #$48;$06
720A: 40          NEGA
720B: 0A 00       DEC    $00
720D: 02 04 08    AIM    #$04;$08
7210: 44          LSRA
7211: 02 00 01    AIM    #$00;$01
7214: 40          NEGA
7215: 02 00 01    AIM    #$00;$01
7218: 40          NEGA
7219: 02 00 01    AIM    #$00;$01
721C: 40          NEGA
721D: 04 00       LSR    $00
721F: 04 08       LSR    $08
7221: 10 09       FCB    $10,$09
7223: 12          FCB    $12
7224: 28 07 68    LBVC   $798F
7227: 1F 08       TFR    D,A
7229: 10 29 07 28 LBVS   $7955
722D: 00 68       NEG    $68
722F: 0A 69       DEC    $69
7231: 00 61       NEG    $61
7233: 00 01       NEG    $01
7235: 1C 09       ANDCC  #$09
7237: 00 08       NEG    $08
7239: 00 28       NEG    $28
723B: 04 68       LSR    $68
723D: 0E 48       JMP    $48
723F: 00 08       NEG    $08
7241: 02 48 01    AIM    #$48;$01
7244: 08 02       ASL    $02
7246: 48          ASLA
7247: 01 08 02    OIM    #$08;$02
724A: 48          ASLA
724B: 01 08 02    OIM    #$08;$02
724E: 48          ASLA
724F: 02 08 01    AIM    #$08;$01
7252: 48          ASLA
7253: 02 08 01    AIM    #$08;$01
7256: 48          ASLA
7257: 01 40 00    OIM    #$40;$00
725A: 00 01       NEG    $01
725C: 40          NEGA
725D: 02 00 01    AIM    #$00;$01
7260: 40          NEGA
7261: 02 00 00    AIM    #$00;$00
7264: 40          NEGA
7265: 02 00 01    AIM    #$00;$01
7268: 40          NEGA
7269: 01 00 02    OIM    #$00;$02
726C: 40          NEGA
726D: 01 00 01    OIM    #$00;$01
7270: 40          NEGA
7271: 01 00 00    OIM    #$00;$00
7274: 40          NEGA
7275: 02 00 01    AIM    #$00;$01
7278: 40          NEGA
7279: 01 00 00    OIM    #$00;$00
727C: 00 00       NEG    $00
727E: 00 00       NEG    $00
7280: 00 00       NEG    $00
7282: 00 00       NEG    $00
7284: 00 00       NEG    $00
7286: 00 00       NEG    $00
7288: 00 00       NEG    $00
728A: 00 00       NEG    $00
728C: 00 00       NEG    $00
728E: 00 00       NEG    $00
7290: 00 00       NEG    $00
7292: 00 00       NEG    $00
7294: 00 00       NEG    $00
7296: 00 00       NEG    $00
7298: 00 00       NEG    $00
729A: 00 00       NEG    $00
729C: 00 00       NEG    $00
729E: 00 00       NEG    $00
72A0: 00 00       NEG    $00
72A2: 00 00       NEG    $00
72A4: 00 00       NEG    $00
72A6: 00 00       NEG    $00
72A8: 00 00       NEG    $00
72AA: 00 00       NEG    $00
72AC: 00 00       NEG    $00
72AE: 00 00       NEG    $00
72B0: 00 00       NEG    $00
72B2: 00 00       NEG    $00
72B4: 00 00       NEG    $00
72B6: 00 00       NEG    $00
72B8: 00 00       NEG    $00
72BA: 00 00       NEG    $00
72BC: 00 00       NEG    $00
72BE: 00 00       NEG    $00
72C0: 00 00       NEG    $00
72C2: 00 00       NEG    $00
72C4: 00 00       NEG    $00
72C6: 00 00       NEG    $00
72C8: 00 00       NEG    $00
72CA: 00 00       NEG    $00
72CC: 00 00       NEG    $00
72CE: 00 00       NEG    $00
72D0: 00 00       NEG    $00
72D2: 00 00       NEG    $00
72D4: 00 00       NEG    $00
72D6: 00 00       NEG    $00
72D8: 00 00       NEG    $00
72DA: 00 00       NEG    $00
72DC: 00 00       NEG    $00
72DE: 00 00       NEG    $00
72E0: 00 00       NEG    $00
72E2: 00 00       NEG    $00
72E4: 00 00       NEG    $00
72E6: 00 00       NEG    $00
72E8: 00 00       NEG    $00
72EA: 00 00       NEG    $00
72EC: 00 00       NEG    $00
72EE: 00 00       NEG    $00
72F0: 00 00       NEG    $00
72F2: 00 00       NEG    $00
72F4: 00 00       NEG    $00
72F6: 00 00       NEG    $00
72F8: 00 00       NEG    $00
72FA: 00 00       NEG    $00
72FC: 00 00       NEG    $00
72FE: 00 00       NEG    $00
7300: 00 00       NEG    $00
7302: 00 00       NEG    $00
7304: 00 00       NEG    $00
7306: 00 00       NEG    $00
7308: 00 00       NEG    $00
730A: 00 00       NEG    $00
730C: 00 00       NEG    $00
730E: 00 00       NEG    $00
7310: 00 00       NEG    $00
7312: 00 00       NEG    $00
7314: 00 00       NEG    $00
7316: 00 00       NEG    $00
7318: 00 00       NEG    $00
731A: 00 00       NEG    $00
731C: 00 00       NEG    $00
731E: 00 00       NEG    $00
7320: 00 00       NEG    $00
7322: 00 00       NEG    $00
7324: 00 00       NEG    $00
7326: 00 00       NEG    $00
7328: 00 00       NEG    $00
732A: 00 00       NEG    $00
732C: 00 00       NEG    $00
732E: 00 00       NEG    $00
7330: 00 00       NEG    $00
7332: 00 00       NEG    $00
7334: 00 00       NEG    $00
7336: 00 00       NEG    $00
7338: 00 00       NEG    $00
733A: 00 00       NEG    $00
733C: 00 00       NEG    $00
733E: 00 00       NEG    $00
7340: 00 00       NEG    $00
7342: 00 00       NEG    $00
7344: 00 00       NEG    $00
7346: 00 00       NEG    $00
7348: 00 00       NEG    $00
734A: 00 00       NEG    $00
734C: 00 00       NEG    $00
734E: 00 00       NEG    $00
7350: 00 00       NEG    $00
7352: 00 00       NEG    $00
7354: 00 00       NEG    $00
7356: 00 00       NEG    $00
7358: 00 00       NEG    $00
735A: 00 00       NEG    $00
735C: 00 00       NEG    $00
735E: 00 00       NEG    $00
7360: 00 00       NEG    $00
7362: 00 00       NEG    $00
7364: 00 00       NEG    $00
7366: 00 00       NEG    $00
7368: 00 00       NEG    $00
736A: 00 00       NEG    $00
736C: 00 00       NEG    $00
736E: 00 00       NEG    $00
7370: 00 00       NEG    $00
7372: 00 00       NEG    $00
7374: 00 00       NEG    $00
7376: 00 00       NEG    $00
7378: 00 00       NEG    $00
737A: 00 00       NEG    $00
737C: 00 00       NEG    $00
737E: 00 00       NEG    $00
7380: 00 00       NEG    $00
7382: 00 00       NEG    $00
7384: 00 00       NEG    $00
7386: 00 00       NEG    $00
7388: 00 00       NEG    $00
738A: 00 00       NEG    $00
738C: 00 00       NEG    $00
738E: 00 00       NEG    $00
7390: 00 00       NEG    $00
7392: 00 00       NEG    $00
7394: 00 00       NEG    $00
7396: 00 00       NEG    $00
7398: 00 00       NEG    $00
739A: 00 00       NEG    $00
739C: 00 00       NEG    $00
739E: 00 00       NEG    $00
73A0: 00 00       NEG    $00
73A2: 00 00       NEG    $00
73A4: 00 00       NEG    $00
73A6: 00 00       NEG    $00
73A8: 00 00       NEG    $00
73AA: 00 00       NEG    $00
73AC: 00 00       NEG    $00
73AE: 00 00       NEG    $00
73B0: 00 00       NEG    $00
73B2: 00 00       NEG    $00
73B4: 00 00       NEG    $00
73B6: 00 00       NEG    $00
73B8: 00 00       NEG    $00
73BA: 00 00       NEG    $00
73BC: 00 00       NEG    $00
73BE: 00 00       NEG    $00
73C0: 00 00       NEG    $00
73C2: 00 00       NEG    $00
73C4: 00 00       NEG    $00
73C6: 00 00       NEG    $00
73C8: 00 00       NEG    $00
73CA: 00 00       NEG    $00
73CC: 00 00       NEG    $00
73CE: 00 00       NEG    $00
73D0: 00 00       NEG    $00
73D2: 00 00       NEG    $00
73D4: 00 00       NEG    $00
73D6: 00 00       NEG    $00
73D8: 00 00       NEG    $00
73DA: 00 00       NEG    $00
73DC: 00 00       NEG    $00
73DE: 00 00       NEG    $00
73E0: 00 00       NEG    $00
73E2: 00 00       NEG    $00
73E4: 00 00       NEG    $00
73E6: 00 00       NEG    $00
73E8: 00 00       NEG    $00
73EA: 00 00       NEG    $00
73EC: 00 00       NEG    $00
73EE: 00 00       NEG    $00
73F0: 00 00       NEG    $00
73F2: 00 00       NEG    $00
73F4: 00 00       NEG    $00
73F6: 00 00       NEG    $00
73F8: 00 00       NEG    $00
73FA: 00 00       NEG    $00
73FC: 00 00       NEG    $00
73FE: 00 00       NEG    $00
7400: 00 00       NEG    $00
7402: 00 00       NEG    $00
7404: 00 00       NEG    $00
7406: 00 00       NEG    $00
7408: 00 00       NEG    $00
740A: 00 00       NEG    $00
740C: 00 00       NEG    $00
740E: 00 00       NEG    $00
7410: 00 00       NEG    $00
7412: 00 00       NEG    $00
7414: 00 00       NEG    $00
7416: 00 00       NEG    $00
7418: 00 00       NEG    $00
741A: 00 00       NEG    $00
741C: 00 00       NEG    $00
741E: 00 00       NEG    $00
7420: 00 00       NEG    $00
7422: 00 00       NEG    $00
7424: 00 00       NEG    $00
7426: 00 00       NEG    $00
7428: 00 00       NEG    $00
742A: 00 00       NEG    $00
742C: 00 00       NEG    $00
742E: 00 00       NEG    $00
7430: 00 00       NEG    $00
7432: 00 00       NEG    $00
7434: 00 00       NEG    $00
7436: 00 00       NEG    $00
7438: 00 00       NEG    $00
743A: 00 00       NEG    $00
743C: 00 00       NEG    $00
743E: 00 00       NEG    $00
7440: 00 00       NEG    $00
7442: 00 00       NEG    $00
7444: 00 00       NEG    $00
7446: 00 00       NEG    $00
7448: 00 00       NEG    $00
744A: 00 00       NEG    $00
744C: 00 00       NEG    $00
744E: 00 00       NEG    $00
7450: 00 00       NEG    $00
7452: 00 00       NEG    $00
7454: 00 00       NEG    $00
7456: 00 00       NEG    $00
7458: 00 00       NEG    $00
745A: 00 00       NEG    $00
745C: 00 00       NEG    $00
745E: 00 00       NEG    $00
7460: 00 00       NEG    $00
7462: 00 00       NEG    $00
7464: 00 00       NEG    $00
7466: 00 00       NEG    $00
7468: 00 00       NEG    $00
746A: 00 00       NEG    $00
746C: 00 00       NEG    $00
746E: 00 00       NEG    $00
7470: 00 00       NEG    $00
7472: 00 00       NEG    $00
7474: 00 00       NEG    $00
7476: 00 00       NEG    $00
7478: 00 00       NEG    $00
747A: 00 00       NEG    $00
747C: 00 00       NEG    $00
747E: 00 00       NEG    $00
7480: 00 00       NEG    $00
7482: 00 00       NEG    $00
7484: 00 00       NEG    $00
7486: 00 00       NEG    $00
7488: 00 00       NEG    $00
748A: 00 00       NEG    $00
748C: 00 00       NEG    $00
748E: 00 00       NEG    $00
7490: 00 00       NEG    $00
7492: 00 00       NEG    $00
7494: 00 00       NEG    $00
7496: 00 00       NEG    $00
7498: 00 00       NEG    $00
749A: 00 00       NEG    $00
749C: 00 00       NEG    $00
749E: 00 00       NEG    $00
74A0: 00 00       NEG    $00
74A2: 00 00       NEG    $00
74A4: 00 00       NEG    $00
74A6: 00 00       NEG    $00
74A8: 00 00       NEG    $00
74AA: 00 00       NEG    $00
74AC: 00 00       NEG    $00
74AE: 00 00       NEG    $00
74B0: 00 00       NEG    $00
74B2: 00 00       NEG    $00
74B4: 00 00       NEG    $00
74B6: 00 00       NEG    $00
74B8: 00 00       NEG    $00
74BA: 00 00       NEG    $00
74BC: 00 00       NEG    $00
74BE: 00 00       NEG    $00
74C0: 00 00       NEG    $00
74C2: 00 00       NEG    $00
74C4: 00 00       NEG    $00
74C6: 00 00       NEG    $00
74C8: 00 00       NEG    $00
74CA: 00 00       NEG    $00
74CC: 00 00       NEG    $00
74CE: 00 00       NEG    $00
74D0: 00 00       NEG    $00
74D2: 00 00       NEG    $00
74D4: 00 00       NEG    $00
74D6: 00 00       NEG    $00
74D8: 00 00       NEG    $00
74DA: 00 00       NEG    $00
74DC: 00 00       NEG    $00
74DE: 00 00       NEG    $00
74E0: 00 00       NEG    $00
74E2: 00 00       NEG    $00
74E4: 00 00       NEG    $00
74E6: 00 00       NEG    $00
74E8: 00 00       NEG    $00
74EA: 00 00       NEG    $00
74EC: 00 00       NEG    $00
74EE: 00 00       NEG    $00
74F0: 00 00       NEG    $00
74F2: 00 00       NEG    $00
74F4: 00 00       NEG    $00
74F6: 00 00       NEG    $00
74F8: 00 00       NEG    $00
74FA: 00 00       NEG    $00
74FC: 00 00       NEG    $00
74FE: 00 00       NEG    $00
7500: 00 00       NEG    $00
7502: 00 00       NEG    $00
7504: 00 00       NEG    $00
7506: 00 00       NEG    $00
7508: 00 00       NEG    $00
750A: 00 00       NEG    $00
750C: 00 00       NEG    $00
750E: 00 00       NEG    $00
7510: 00 00       NEG    $00
7512: 00 00       NEG    $00
7514: 00 00       NEG    $00
7516: 00 00       NEG    $00
7518: 00 00       NEG    $00
751A: 00 00       NEG    $00
751C: 00 00       NEG    $00
751E: 00 00       NEG    $00
7520: 00 00       NEG    $00
7522: 00 00       NEG    $00
7524: 00 00       NEG    $00
7526: 00 00       NEG    $00
7528: 00 00       NEG    $00
752A: 00 00       NEG    $00
752C: 00 00       NEG    $00
752E: 00 00       NEG    $00
7530: 00 00       NEG    $00
7532: 00 00       NEG    $00
7534: 00 00       NEG    $00
7536: 00 00       NEG    $00
7538: 00 00       NEG    $00
753A: 00 00       NEG    $00
753C: 00 00       NEG    $00
753E: 00 00       NEG    $00
7540: 00 00       NEG    $00
7542: 00 00       NEG    $00
7544: 00 00       NEG    $00
7546: 00 00       NEG    $00
7548: 00 00       NEG    $00
754A: 00 00       NEG    $00
754C: 00 00       NEG    $00
754E: 00 00       NEG    $00
7550: 00 00       NEG    $00
7552: 00 00       NEG    $00
7554: 00 00       NEG    $00
7556: 00 00       NEG    $00
7558: 00 00       NEG    $00
755A: 00 00       NEG    $00
755C: 00 00       NEG    $00
755E: 00 00       NEG    $00
7560: 00 00       NEG    $00
7562: 00 00       NEG    $00
7564: 00 00       NEG    $00
7566: 00 00       NEG    $00
7568: 00 00       NEG    $00
756A: 00 00       NEG    $00
756C: 00 00       NEG    $00
756E: 00 00       NEG    $00
7570: 00 00       NEG    $00
7572: 00 00       NEG    $00
7574: 00 00       NEG    $00
7576: 00 00       NEG    $00
7578: 00 00       NEG    $00
757A: 00 00       NEG    $00
757C: 00 00       NEG    $00
757E: 00 00       NEG    $00
7580: 00 00       NEG    $00
7582: 00 00       NEG    $00
7584: 00 00       NEG    $00
7586: 00 00       NEG    $00
7588: 00 00       NEG    $00
758A: 00 00       NEG    $00
758C: 00 00       NEG    $00
758E: 00 00       NEG    $00
7590: 00 00       NEG    $00
7592: 00 00       NEG    $00
7594: 00 00       NEG    $00
7596: 00 00       NEG    $00
7598: 00 00       NEG    $00
759A: 00 00       NEG    $00
759C: 00 00       NEG    $00
759E: 00 00       NEG    $00
75A0: 00 00       NEG    $00
75A2: 00 00       NEG    $00
75A4: 00 00       NEG    $00
75A6: 00 00       NEG    $00
75A8: 00 00       NEG    $00
75AA: 00 00       NEG    $00
75AC: 00 00       NEG    $00
75AE: 00 00       NEG    $00
75B0: 00 00       NEG    $00
75B2: 00 00       NEG    $00
75B4: 00 00       NEG    $00
75B6: 00 00       NEG    $00
75B8: 00 00       NEG    $00
75BA: 00 00       NEG    $00
75BC: 00 00       NEG    $00
75BE: 00 00       NEG    $00
75C0: 00 00       NEG    $00
75C2: 00 00       NEG    $00
75C4: 00 00       NEG    $00
75C6: 00 00       NEG    $00
75C8: 00 00       NEG    $00
75CA: 00 00       NEG    $00
75CC: 00 00       NEG    $00
75CE: 00 00       NEG    $00
75D0: 00 00       NEG    $00
75D2: 00 00       NEG    $00
75D4: 00 00       NEG    $00
75D6: 00 00       NEG    $00
75D8: 00 00       NEG    $00
75DA: 00 00       NEG    $00
75DC: 00 00       NEG    $00
75DE: 00 00       NEG    $00
75E0: 00 00       NEG    $00
75E2: 00 00       NEG    $00
75E4: 00 00       NEG    $00
75E6: 00 00       NEG    $00
75E8: 00 00       NEG    $00
75EA: 00 00       NEG    $00
75EC: 00 00       NEG    $00
75EE: 00 00       NEG    $00
75F0: 00 00       NEG    $00
75F2: 00 00       NEG    $00
75F4: 00 00       NEG    $00
75F6: 00 00       NEG    $00
75F8: 00 00       NEG    $00
75FA: 00 00       NEG    $00
75FC: 00 00       NEG    $00
75FE: 00 00       NEG    $00
7600: 00 00       NEG    $00
7602: 00 00       NEG    $00
7604: 00 00       NEG    $00
7606: 00 00       NEG    $00
7608: 00 00       NEG    $00
760A: 00 00       NEG    $00
760C: 00 00       NEG    $00
760E: 00 00       NEG    $00
7610: 00 00       NEG    $00
7612: 00 00       NEG    $00
7614: 00 00       NEG    $00
7616: 00 00       NEG    $00
7618: 00 00       NEG    $00
761A: 00 00       NEG    $00
761C: 00 00       NEG    $00
761E: 00 00       NEG    $00
7620: 00 00       NEG    $00
7622: 00 00       NEG    $00
7624: 00 00       NEG    $00
7626: 00 00       NEG    $00
7628: 00 00       NEG    $00
762A: 00 00       NEG    $00
762C: 00 00       NEG    $00
762E: 00 00       NEG    $00
7630: 00 00       NEG    $00
7632: 00 00       NEG    $00
7634: 00 00       NEG    $00
7636: 00 00       NEG    $00
7638: 00 00       NEG    $00
763A: 00 00       NEG    $00
763C: 00 00       NEG    $00
763E: 00 00       NEG    $00
7640: 00 00       NEG    $00
7642: 00 00       NEG    $00
7644: 00 00       NEG    $00
7646: 00 00       NEG    $00
7648: 00 00       NEG    $00
764A: 00 00       NEG    $00
764C: 00 00       NEG    $00
764E: 00 00       NEG    $00
7650: 00 00       NEG    $00
7652: 00 00       NEG    $00
7654: 00 00       NEG    $00
7656: 00 00       NEG    $00
7658: 00 00       NEG    $00
765A: 00 00       NEG    $00
765C: 00 00       NEG    $00
765E: 00 00       NEG    $00
7660: 00 00       NEG    $00
7662: 00 00       NEG    $00
7664: 00 00       NEG    $00
7666: 00 00       NEG    $00
7668: 00 00       NEG    $00
766A: 00 00       NEG    $00
766C: 00 00       NEG    $00
766E: 00 00       NEG    $00
7670: 00 00       NEG    $00
7672: 00 00       NEG    $00
7674: 00 00       NEG    $00
7676: 00 00       NEG    $00
7678: 00 00       NEG    $00
767A: 00 00       NEG    $00
767C: 00 00       NEG    $00
767E: 00 00       NEG    $00
7680: 00 00       NEG    $00
7682: 00 00       NEG    $00
7684: 00 00       NEG    $00
7686: 00 00       NEG    $00
7688: 00 00       NEG    $00
768A: 00 00       NEG    $00
768C: 00 00       NEG    $00
768E: 00 00       NEG    $00
7690: 00 00       NEG    $00
7692: 00 00       NEG    $00
7694: 00 00       NEG    $00
7696: 00 00       NEG    $00
7698: 00 00       NEG    $00
769A: 00 00       NEG    $00
769C: 00 00       NEG    $00
769E: 00 00       NEG    $00
76A0: 00 00       NEG    $00
76A2: 00 00       NEG    $00
76A4: 00 00       NEG    $00
76A6: 00 00       NEG    $00
76A8: 00 00       NEG    $00
76AA: 00 00       NEG    $00
76AC: 00 00       NEG    $00
76AE: 00 00       NEG    $00
76B0: 00 00       NEG    $00
76B2: 00 00       NEG    $00
76B4: 00 00       NEG    $00
76B6: 00 00       NEG    $00
76B8: 00 00       NEG    $00
76BA: 00 00       NEG    $00
76BC: 00 00       NEG    $00
76BE: 00 00       NEG    $00
76C0: 00 00       NEG    $00
76C2: 00 00       NEG    $00
76C4: 00 00       NEG    $00
76C6: 00 00       NEG    $00
76C8: 00 00       NEG    $00
76CA: 00 00       NEG    $00
76CC: 00 00       NEG    $00
76CE: 00 00       NEG    $00
76D0: 00 00       NEG    $00
76D2: 00 00       NEG    $00
76D4: 00 00       NEG    $00
76D6: 00 00       NEG    $00
76D8: 00 00       NEG    $00
76DA: 00 00       NEG    $00
76DC: 00 00       NEG    $00
76DE: 00 00       NEG    $00
76E0: 00 00       NEG    $00
76E2: 00 00       NEG    $00
76E4: 00 00       NEG    $00
76E6: 00 00       NEG    $00
76E8: 00 00       NEG    $00
76EA: 00 00       NEG    $00
76EC: 00 00       NEG    $00
76EE: 00 00       NEG    $00
76F0: 00 00       NEG    $00
76F2: 00 00       NEG    $00
76F4: 00 00       NEG    $00
76F6: 00 00       NEG    $00
76F8: 00 00       NEG    $00
76FA: 00 00       NEG    $00
76FC: 00 00       NEG    $00
76FE: 00 00       NEG    $00
7700: 00 00       NEG    $00
7702: 00 00       NEG    $00
7704: 00 00       NEG    $00
7706: 00 00       NEG    $00
7708: 00 00       NEG    $00
770A: 00 00       NEG    $00
770C: 00 00       NEG    $00
770E: 00 00       NEG    $00
7710: 00 00       NEG    $00
7712: 00 00       NEG    $00
7714: 00 00       NEG    $00
7716: 00 00       NEG    $00
7718: 00 00       NEG    $00
771A: 00 00       NEG    $00
771C: 00 00       NEG    $00
771E: 00 00       NEG    $00
7720: 00 00       NEG    $00
7722: 00 00       NEG    $00
7724: 00 00       NEG    $00
7726: 00 00       NEG    $00
7728: 00 00       NEG    $00
772A: 00 00       NEG    $00
772C: 00 00       NEG    $00
772E: 00 00       NEG    $00
7730: 00 00       NEG    $00
7732: 00 00       NEG    $00
7734: 00 00       NEG    $00
7736: 00 00       NEG    $00
7738: 00 00       NEG    $00
773A: 00 00       NEG    $00
773C: 00 00       NEG    $00
773E: 00 00       NEG    $00
7740: 00 00       NEG    $00
7742: 00 00       NEG    $00
7744: 00 00       NEG    $00
7746: 00 00       NEG    $00
7748: 00 00       NEG    $00
774A: 00 00       NEG    $00
774C: 00 00       NEG    $00
774E: 00 00       NEG    $00
7750: 00 00       NEG    $00
7752: 00 00       NEG    $00
7754: 00 00       NEG    $00
7756: 00 00       NEG    $00
7758: 00 00       NEG    $00
775A: 00 00       NEG    $00
775C: 00 00       NEG    $00
775E: 00 00       NEG    $00
7760: 00 00       NEG    $00
7762: 00 00       NEG    $00
7764: 00 00       NEG    $00
7766: 00 00       NEG    $00
7768: 00 00       NEG    $00
776A: 00 00       NEG    $00
776C: 00 00       NEG    $00
776E: 00 00       NEG    $00
7770: 00 00       NEG    $00
7772: 00 00       NEG    $00
7774: 00 00       NEG    $00
7776: 00 00       NEG    $00
7778: 00 00       NEG    $00
777A: 00 00       NEG    $00
777C: 00 00       NEG    $00
777E: 00 00       NEG    $00
7780: 00 00       NEG    $00
7782: 00 00       NEG    $00
7784: 00 00       NEG    $00
7786: 00 00       NEG    $00
7788: 00 00       NEG    $00
778A: 00 00       NEG    $00
778C: 00 00       NEG    $00
778E: 00 00       NEG    $00
7790: 00 00       NEG    $00
7792: 00 00       NEG    $00
7794: 00 00       NEG    $00
7796: 00 00       NEG    $00
7798: 00 00       NEG    $00
779A: 00 00       NEG    $00
779C: 00 00       NEG    $00
779E: 00 00       NEG    $00
77A0: 00 00       NEG    $00
77A2: 00 00       NEG    $00
77A4: 00 00       NEG    $00
77A6: 00 00       NEG    $00
77A8: 00 00       NEG    $00
77AA: 00 00       NEG    $00
77AC: 00 00       NEG    $00
77AE: 00 00       NEG    $00
77B0: 00 00       NEG    $00
77B2: 00 00       NEG    $00
77B4: 00 00       NEG    $00
77B6: 00 00       NEG    $00
77B8: 00 00       NEG    $00
77BA: 00 00       NEG    $00
77BC: 00 00       NEG    $00
77BE: 00 00       NEG    $00
77C0: 00 00       NEG    $00
77C2: 00 00       NEG    $00
77C4: 00 00       NEG    $00
77C6: 00 00       NEG    $00
77C8: 00 00       NEG    $00
77CA: 00 00       NEG    $00
77CC: 00 00       NEG    $00
77CE: 00 00       NEG    $00
77D0: 00 00       NEG    $00
77D2: 00 00       NEG    $00
77D4: 00 00       NEG    $00
77D6: 00 00       NEG    $00
77D8: 00 00       NEG    $00
77DA: 00 00       NEG    $00
77DC: 00 00       NEG    $00
77DE: 00 00       NEG    $00
77E0: 00 00       NEG    $00
77E2: 00 00       NEG    $00
77E4: 00 00       NEG    $00
77E6: 00 00       NEG    $00
77E8: 00 00       NEG    $00
77EA: 00 00       NEG    $00
77EC: 00 00       NEG    $00
77EE: 00 00       NEG    $00
77F0: 00 00       NEG    $00
77F2: 00 00       NEG    $00
77F4: 00 00       NEG    $00
77F6: 00 00       NEG    $00
77F8: 00 00       NEG    $00
77FA: 00 00       NEG    $00
77FC: 00 00       NEG    $00
77FE: 00 00       NEG    $00
7800: 00 04       NEG    $04
7802: 01 0A 09    OIM    #$0A;$09
7805: 04 08       LSR    $08
7807: 33 18       LEAU   -$8,X
7809: 08 08       ASL    $08
780B: 03 18       COM    $18
780D: 04 08       LSR    $08
780F: 01 18 02    OIM    #$18;$02
7812: 08 05       ASL    $05
7814: 10 08       FCB    $10,$08
7816: 00          FCB    $00
7817: 1F          FCB    $1F
7818: 20          FCB    $20
7819: 06          FCB    $06
781A: 00          FCB    $00
781B: 23 08 57    LBLS   $8075
781E: 0A 06       DEC    $06
7820: 48          ASLA
7821: 02 08 00    AIM    #$08;$00
7824: 48          ASLA
7825: 01 40 00    OIM    #$40;$00
7828: 00 00       NEG    $00
782A: 40          NEGA
782B: 02 00 00    AIM    #$00;$00
782E: 40          NEGA
782F: 01 00 01    OIM    #$00;$01
7832: 40          NEGA
7833: 01 00 01    OIM    #$00;$01
7836: 40          NEGA
7837: 01 00 01    OIM    #$00;$01
783A: 40          NEGA
783B: 00 00       NEG    $00
783D: 01 40 01    OIM    #$40;$01
7840: 00 00       NEG    $00
7842: 40          NEGA
7843: 02 00 01    AIM    #$00;$01
7846: 40          NEGA
7847: 02 00 01    AIM    #$00;$01
784A: 40          NEGA
784B: 01 00 02    OIM    #$00;$02
784E: 40          NEGA
784F: 01 00 03    OIM    #$00;$03
7852: 04 1F       LSR    $1F
7854: 06 0A       ROR    $0A
7856: 04 07       LSR    $07
7858: 44          LSRA
7859: 01 04 03    OIM    #$04;$03
785C: 44          LSRA
785D: 02 04 01    AIM    #$04;$01
7860: 44          LSRA
7861: 02 40 00    AIM    #$40;$00
7864: 00 01       NEG    $01
7866: 40          NEGA
7867: 02 00 00    AIM    #$00;$00
786A: 40          NEGA
786B: 01 00 01    OIM    #$00;$01
786E: 40          NEGA
786F: 01 00 01    OIM    #$00;$01
7872: 40          NEGA
7873: 01 00 00    OIM    #$00;$00
7876: 40          NEGA
7877: 02 00 00    AIM    #$00;$00
787A: 40          NEGA
787B: 01 00 03    OIM    #$00;$03
787E: 01 04 09    OIM    #$04;$09
7881: 03 49       COM    $49
7883: 00 48       NEG    $48
7885: 00 08       NEG    $08
7887: 02 48 01    AIM    #$48;$01
788A: 08 00       ASL    $00
788C: 48          ASLA
788D: 02 08 01    AIM    #$08;$01
7890: 48          ASLA
7891: 01 08 02    OIM    #$08;$02
7894: 48          ASLA
7895: 00 40       NEG    $40
7897: 02 00 01    AIM    #$00;$01
789A: 40          NEGA
789B: 02 00 01    AIM    #$00;$01
789E: 40          NEGA
789F: 02 00 01    AIM    #$00;$01
78A2: 40          NEGA
78A3: 02 00 00    AIM    #$00;$00
78A6: 40          NEGA
78A7: 01 00 01    OIM    #$00;$01
78AA: 40          NEGA
78AB: 01 00 03    OIM    #$00;$03
78AE: 40          NEGA
78AF: 01 00 00    OIM    #$00;$00
78B2: 40          NEGA
78B3: 01 00 01    OIM    #$00;$01
78B6: 40          NEGA
78B7: 01 00 01    OIM    #$00;$01
78BA: 40          NEGA
78BB: 00 49       NEG    $49
78BD: 02 09 02    AIM    #$09;$02
78C0: 01 09 41    OIM    #$09;$41
78C3: 01 01 02    OIM    #$01;$02
78C6: 41          FCB    $41
78C7: 01 01 01    OIM    #$01;$01
78CA: 09 00       ROL    $00
78CC: 49          ROLA
78CD: 02 09 01    AIM    #$09;$01
78D0: 41          FCB    $41
78D1: 02 01 19    AIM    #$01;$19
78D4: 09 03       ROL    $03
78D6: 08 00       ASL    $00
78D8: 48          ASLA
78D9: 03 08       COM    $08
78DB: 01 48 02    OIM    #$48;$02
78DE: 40          NEGA
78DF: 01 00 01    OIM    #$00;$01
78E2: 40          NEGA
78E3: 02 00 02    AIM    #$00;$02
78E6: 40          NEGA
78E7: 01 00 02    OIM    #$00;$02
78EA: 44          LSRA
78EB: 00 04       NEG    $04
78ED: 03 44       COM    $44
78EF: 03 04       COM    $04
78F1: 01 44 02    OIM    #$44;$02
78F4: 04 02       LSR    $02
78F6: 44          LSRA
78F7: 02 04 00    AIM    #$04;$00
78FA: 44          LSRA
78FB: 03 00       COM    $00
78FD: 05 40 01    EIM    #$40;$01
7900: 00 01       NEG    $01
7902: 40          NEGA
7903: 02 00 01    AIM    #$00;$01
7906: 40          NEGA
7907: 02 00 01    AIM    #$00;$01
790A: 40          NEGA
790B: 01 00 01    OIM    #$00;$01
790E: 40          NEGA
790F: 01 00 02    OIM    #$00;$02
7912: 40          NEGA
7913: 02 00 01    AIM    #$00;$01
7916: 40          NEGA
7917: 01 00 05    OIM    #$00;$05
791A: 08 03       ASL    $03
791C: 48          ASLA
791D: 03 08       COM    $08
791F: 02 48 01    AIM    #$48;$01
7922: 00 01       NEG    $01
7924: 40          NEGA
7925: 02 00 01    AIM    #$00;$01
7928: 40          NEGA
7929: 01 00 01    OIM    #$00;$01
792C: 40          NEGA
792D: 01 00 01    OIM    #$00;$01
7930: 40          NEGA
7931: 01 00 01    OIM    #$00;$01
7934: 40          NEGA
7935: 02 00 45    AIM    #$00;$45
7938: 08 02       ASL    $02
793A: 48          ASLA
793B: 01 00 01    OIM    #$00;$01
793E: 40          NEGA
793F: 01 00 02    OIM    #$00;$02
7942: 40          NEGA
7943: 02 00 01    AIM    #$00;$01
7946: 40          NEGA
7947: 01 00 00    OIM    #$00;$00
794A: 08 14       ASL    $14
794C: 00 03       NEG    $03
794E: 04 01       LSR    $01
7950: 44          LSRA
7951: 01 04 06    OIM    #$04;$06
7954: 44          LSRA
7955: 01 04 01    OIM    #$04;$01
7958: 44          LSRA
7959: 00 40       NEG    $40
795B: 00 00       NEG    $00
795D: 02 40 02    AIM    #$40;$02
7960: 00 02       NEG    $02
7962: 40          NEGA
7963: 00 00       NEG    $00
7965: 01 40 02    OIM    #$40;$02
7968: 00 02       NEG    $02
796A: 08 0A       ASL    $0A
796C: 48          ASLA
796D: 02 08 03    AIM    #$08;$03
7970: 48          ASLA
7971: 01 08 02    OIM    #$08;$02
7974: 48          ASLA
7975: 02 08 02    AIM    #$08;$02
7978: 48          ASLA
7979: 03 08       COM    $08
797B: 00 00       NEG    $00
797D: 00 40       NEG    $40
797F: 02 00 00    AIM    #$00;$00
7982: 40          NEGA
7983: 02 00 01    AIM    #$00;$01
7986: 40          NEGA
7987: 01 00 02    OIM    #$00;$02
798A: 40          NEGA
798B: 04 00       LSR    $00
798D: 02 40 02    AIM    #$40;$02
7990: 00 03       NEG    $03
7992: 40          NEGA
7993: 02 00 03    AIM    #$00;$03
7996: 40          NEGA
7997: 03 00       COM    $00
7999: 02 40 02    AIM    #$40;$02
799C: 00 02       NEG    $02
799E: 40          NEGA
799F: 02 00 01    AIM    #$00;$01
79A2: 40          NEGA
79A3: 02 00 02    AIM    #$00;$02
79A6: 40          NEGA
79A7: 01 00 01    OIM    #$00;$01
79AA: 08 33       ASL    $33
79AC: 48          ASLA
79AD: 03 08       COM    $08
79AF: 01 48 00    OIM    #$48;$00
79B2: 40          NEGA
79B3: 01 00 02    OIM    #$00;$02
79B6: 40          NEGA
79B7: 00 00       NEG    $00
79B9: 02 40 01    AIM    #$40;$01
79BC: 00 02       NEG    $02
79BE: 40          NEGA
79BF: 02 00 03    AIM    #$00;$03
79C2: 40          NEGA
79C3: 03 00       COM    $00
79C5: 04 40       LSR    $40
79C7: 02 00 03    AIM    #$00;$03
79CA: 40          NEGA
79CB: 03 00       COM    $00
79CD: 03 40       COM    $40
79CF: 03 00       COM    $00
79D1: 02 40 04    AIM    #$40;$04
79D4: 00 03       NEG    $03
79D6: 40          NEGA
79D7: 03 00       COM    $00
79D9: 03 40       COM    $40
79DB: 01 00 01    OIM    #$00;$01
79DE: 40          NEGA
79DF: 03 00       COM    $00
79E1: 03 40       COM    $40
79E3: 03 00       COM    $00
79E5: 0B 40 03    TIM    #$40;$03
79E8: 00 12       NEG    $12
79EA: 08 43       ASL    $43
79EC: 00 02       NEG    $02
79EE: 04 9C       LSR    $9C
79F0: 00 18       NEG    $18
79F2: 08 37       ASL    $37
79F4: 28 06       BVC    $79FC
79F6: 68 06       ASL    $6,X
79F8: 48          ASLA
79F9: 27 08       BEQ    $7A03
79FB: 18          FCB    $18
79FC: 00 00       NEG    $00
79FE: 02 0E 42    AIM    #$0E;$42
7A01: 00 40       NEG    $40
7A03: 01 48 02    OIM    #$48;$02
7A06: 08 0A       ASL    $0A
7A08: 00 56       NEG    $56
7A0A: 08 00       ASL    $00
7A0C: 09 1E       ROL    $1E
7A0E: 08 71       ASL    $71
7A10: 18          FCB    $18
7A11: 03 08       COM    $08
7A13: 04 18       LSR    $18
7A15: 03 08       COM    $08
7A17: 03 18       COM    $18
7A19: 01 08 02    OIM    #$08;$02
7A1C: 10 02       FCB    $10,$02
7A1E: 00          FCB    $00
7A1F: 01          FCB    $01
7A20: 10          FCB    $10
7A21: 03 00       COM    $00
7A23: 05 10 04    EIM    #$10;$04
7A26: 00 02       NEG    $02
7A28: 10 03       FCB    $10,$03
7A2A: 00          FCB    $00
7A2B: 01          FCB    $01
7A2C: 10          FCB    $10
7A2D: 03 00       COM    $00
7A2F: 07 10       ASR    $10
7A31: 02 00 02    AIM    #$00;$02
7A34: 10 04       FCB    $10,$04
7A36: 00          FCB    $00
7A37: 02          FCB    $02
7A38: 10          FCB    $10
7A39: 03 00       COM    $00
7A3B: 02 10 01    AIM    #$10;$01
7A3E: 00 02       NEG    $02
7A40: 10 03       FCB    $10,$03
7A42: 00          FCB    $00
7A43: 03          FCB    $03
7A44: 10          FCB    $10
7A45: 01 00 04    OIM    #$00;$04
7A48: 08 01       ASL    $01
7A4A: 0A 1C       DEC    $1C
7A4C: 08 04       ASL    $04
7A4E: 09 05       ROL    $05
7A50: 08 0A       ASL    $0A
7A52: 00 02       NEG    $02
7A54: 10 02       FCB    $10,$02
7A56: 00          FCB    $00
7A57: 02          FCB    $02
7A58: 10          FCB    $10
7A59: 02 00 03    AIM    #$00;$03
7A5C: 10 01       FCB    $10,$01
7A5E: 00          FCB    $00
7A5F: 02          FCB    $02
7A60: 10          FCB    $10
7A61: 02 00 01    AIM    #$00;$01
7A64: 10 05       FCB    $10,$05
7A66: 00          FCB    $00
7A67: 01          FCB    $01
7A68: 10          FCB    $10
7A69: 01 00 02    OIM    #$00;$02
7A6C: 10 03       FCB    $10,$03
7A6E: 00          FCB    $00
7A6F: 03          FCB    $03
7A70: 10          FCB    $10
7A71: 02 00 01    AIM    #$00;$01
7A74: 10 02       FCB    $10,$02
7A76: 00          FCB    $00
7A77: 00          FCB    $00
7A78: 10          FCB    $10
7A79: 04 00       LSR    $00
7A7B: 01 10 02    OIM    #$10;$02
7A7E: 00 02       NEG    $02
7A80: 10 03       FCB    $10,$03
7A82: 00          FCB    $00
7A83: 02          FCB    $02
7A84: 10          FCB    $10
7A85: 01 00 13    OIM    #$00;$13
7A88: 02 06 06    AIM    #$06;$06
7A8B: 00 04       NEG    $04
7A8D: 13          SYNC
7A8E: 14          SEXW
7A8F: 02 04 06    AIM    #$04;$06
7A92: 00 11       NEG    $11
7A94: 08 35       ASL    $35
7A96: 09 0A       ROL    $0A
7A98: 08 02       ASL    $02
7A9A: 0A 03       DEC    $03
7A9C: 2A 03       BPL    $7AA1
7A9E: 6A 02       DEC    $2,X
7AA0: 4A          DECA
7AA1: 00 00       NEG    $00
7AA3: 00 00       NEG    $00
7AA5: 00 00       NEG    $00
7AA7: 00 00       NEG    $00
7AA9: 00 00       NEG    $00
7AAB: 00 00       NEG    $00
7AAD: 00 00       NEG    $00
7AAF: 00 00       NEG    $00
7AB1: 00 00       NEG    $00
7AB3: 00 00       NEG    $00
7AB5: 00 00       NEG    $00
7AB7: 00 00       NEG    $00
7AB9: 00 00       NEG    $00
7ABB: 00 00       NEG    $00
7ABD: 00 00       NEG    $00
7ABF: 00 00       NEG    $00
7AC1: 00 00       NEG    $00
7AC3: 00 00       NEG    $00
7AC5: 00 00       NEG    $00
7AC7: 00 00       NEG    $00
7AC9: 00 00       NEG    $00
7ACB: 00 00       NEG    $00
7ACD: 00 00       NEG    $00
7ACF: 00 00       NEG    $00
7AD1: 00 00       NEG    $00
7AD3: 00 00       NEG    $00
7AD5: 00 00       NEG    $00
7AD7: 00 00       NEG    $00
7AD9: 00 00       NEG    $00
7ADB: 00 00       NEG    $00
7ADD: 00 00       NEG    $00
7ADF: 00 00       NEG    $00
7AE1: 00 00       NEG    $00
7AE3: 00 00       NEG    $00
7AE5: 00 00       NEG    $00
7AE7: 00 00       NEG    $00
7AE9: 00 00       NEG    $00
7AEB: 00 00       NEG    $00
7AED: 00 00       NEG    $00
7AEF: 00 00       NEG    $00
7AF1: 00 00       NEG    $00
7AF3: 00 00       NEG    $00
7AF5: 00 00       NEG    $00
7AF7: 00 00       NEG    $00
7AF9: 00 00       NEG    $00
7AFB: 00 00       NEG    $00
7AFD: 00 00       NEG    $00
7AFF: 00 00       NEG    $00
7B01: 00 00       NEG    $00
7B03: 00 00       NEG    $00
7B05: 00 00       NEG    $00
7B07: 00 00       NEG    $00
7B09: 00 00       NEG    $00
7B0B: 00 00       NEG    $00
7B0D: 00 00       NEG    $00
7B0F: 00 00       NEG    $00
7B11: 00 00       NEG    $00
7B13: 00 00       NEG    $00
7B15: 00 00       NEG    $00
7B17: 00 00       NEG    $00
7B19: 00 00       NEG    $00
7B1B: 00 00       NEG    $00
7B1D: 00 00       NEG    $00
7B1F: 00 00       NEG    $00
7B21: 00 00       NEG    $00
7B23: 00 00       NEG    $00
7B25: 00 00       NEG    $00
7B27: 00 00       NEG    $00
7B29: 00 00       NEG    $00
7B2B: 00 00       NEG    $00
7B2D: 00 00       NEG    $00
7B2F: 00 00       NEG    $00
7B31: 00 00       NEG    $00
7B33: 00 00       NEG    $00
7B35: 00 00       NEG    $00
7B37: 00 00       NEG    $00
7B39: 00 00       NEG    $00
7B3B: 00 00       NEG    $00
7B3D: 00 00       NEG    $00
7B3F: 00 00       NEG    $00
7B41: 00 00       NEG    $00
7B43: 00 00       NEG    $00
7B45: 00 00       NEG    $00
7B47: 00 00       NEG    $00
7B49: 00 00       NEG    $00
7B4B: 00 00       NEG    $00
7B4D: 00 00       NEG    $00
7B4F: 00 00       NEG    $00
7B51: 00 00       NEG    $00
7B53: 00 00       NEG    $00
7B55: 00 00       NEG    $00
7B57: 00 00       NEG    $00
7B59: 00 00       NEG    $00
7B5B: 00 00       NEG    $00
7B5D: 00 00       NEG    $00
7B5F: 00 00       NEG    $00
7B61: 00 00       NEG    $00
7B63: 00 00       NEG    $00
7B65: 00 00       NEG    $00
7B67: 00 00       NEG    $00
7B69: 00 00       NEG    $00
7B6B: 00 00       NEG    $00
7B6D: 00 00       NEG    $00
7B6F: 00 00       NEG    $00
7B71: 00 00       NEG    $00
7B73: 00 00       NEG    $00
7B75: 00 00       NEG    $00
7B77: 00 00       NEG    $00
7B79: 00 00       NEG    $00
7B7B: 00 00       NEG    $00
7B7D: 00 00       NEG    $00
7B7F: 00 00       NEG    $00
7B81: 00 00       NEG    $00
7B83: 00 00       NEG    $00
7B85: 00 00       NEG    $00
7B87: 00 00       NEG    $00
7B89: 00 00       NEG    $00
7B8B: 00 00       NEG    $00
7B8D: 00 00       NEG    $00
7B8F: 00 00       NEG    $00
7B91: 00 00       NEG    $00
7B93: 00 00       NEG    $00
7B95: 00 00       NEG    $00
7B97: 00 00       NEG    $00
7B99: 00 00       NEG    $00
7B9B: 00 00       NEG    $00
7B9D: 00 00       NEG    $00
7B9F: 00 00       NEG    $00
7BA1: 00 00       NEG    $00
7BA3: 00 00       NEG    $00
7BA5: 00 00       NEG    $00
7BA7: 00 00       NEG    $00
7BA9: 00 00       NEG    $00
7BAB: 00 00       NEG    $00
7BAD: 00 00       NEG    $00
7BAF: 00 00       NEG    $00
7BB1: 00 00       NEG    $00
7BB3: 00 00       NEG    $00
7BB5: 00 00       NEG    $00
7BB7: 00 00       NEG    $00
7BB9: 00 00       NEG    $00
7BBB: 00 00       NEG    $00
7BBD: 00 00       NEG    $00
7BBF: 00 00       NEG    $00
7BC1: 00 00       NEG    $00
7BC3: 00 00       NEG    $00
7BC5: 00 00       NEG    $00
7BC7: 00 00       NEG    $00
7BC9: 00 00       NEG    $00
7BCB: 00 00       NEG    $00
7BCD: 00 00       NEG    $00
7BCF: 00 00       NEG    $00
7BD1: 00 00       NEG    $00
7BD3: 00 00       NEG    $00
7BD5: 00 00       NEG    $00
7BD7: 00 00       NEG    $00
7BD9: 00 00       NEG    $00
7BDB: 00 00       NEG    $00
7BDD: 00 00       NEG    $00
7BDF: 00 00       NEG    $00
7BE1: 00 00       NEG    $00
7BE3: 00 00       NEG    $00
7BE5: 00 00       NEG    $00
7BE7: 00 00       NEG    $00
7BE9: 00 00       NEG    $00
7BEB: 00 00       NEG    $00
7BED: 00 00       NEG    $00
7BEF: 00 00       NEG    $00
7BF1: 00 00       NEG    $00
7BF3: 00 00       NEG    $00
7BF5: 00 00       NEG    $00
7BF7: 00 00       NEG    $00
7BF9: 00 00       NEG    $00
7BFB: 00 00       NEG    $00
7BFD: 00 00       NEG    $00
7BFF: 00 00       NEG    $00
7C01: 00 00       NEG    $00
7C03: 00 00       NEG    $00
7C05: 00 00       NEG    $00
7C07: 00 00       NEG    $00
7C09: 00 00       NEG    $00
7C0B: 00 00       NEG    $00
7C0D: 00 00       NEG    $00
7C0F: 00 00       NEG    $00
7C11: 00 00       NEG    $00
7C13: 00 00       NEG    $00
7C15: 00 00       NEG    $00
7C17: 00 00       NEG    $00
7C19: 00 00       NEG    $00
7C1B: 00 00       NEG    $00
7C1D: 00 00       NEG    $00
7C1F: 00 00       NEG    $00
7C21: 00 00       NEG    $00
7C23: 00 00       NEG    $00
7C25: 00 00       NEG    $00
7C27: 00 00       NEG    $00
7C29: 00 00       NEG    $00
7C2B: 00 00       NEG    $00
7C2D: 00 00       NEG    $00
7C2F: 00 00       NEG    $00
7C31: 00 00       NEG    $00
7C33: 00 00       NEG    $00
7C35: 00 00       NEG    $00
7C37: 00 00       NEG    $00
7C39: 00 00       NEG    $00
7C3B: 00 00       NEG    $00
7C3D: 00 00       NEG    $00
7C3F: 00 00       NEG    $00
7C41: 00 00       NEG    $00
7C43: 00 00       NEG    $00
7C45: 00 00       NEG    $00
7C47: 00 00       NEG    $00
7C49: 00 00       NEG    $00
7C4B: 00 00       NEG    $00
7C4D: 00 00       NEG    $00
7C4F: 00 00       NEG    $00
7C51: 00 00       NEG    $00
7C53: 00 00       NEG    $00
7C55: 00 00       NEG    $00
7C57: 00 00       NEG    $00
7C59: 00 00       NEG    $00
7C5B: 00 00       NEG    $00
7C5D: 00 00       NEG    $00
7C5F: 00 00       NEG    $00
7C61: 00 00       NEG    $00
7C63: 00 00       NEG    $00
7C65: 00 00       NEG    $00
7C67: 00 00       NEG    $00
7C69: 00 00       NEG    $00
7C6B: 00 00       NEG    $00
7C6D: 00 00       NEG    $00
7C6F: 00 00       NEG    $00
7C71: 00 00       NEG    $00
7C73: 00 00       NEG    $00
7C75: 00 00       NEG    $00
7C77: 00 00       NEG    $00
7C79: 00 00       NEG    $00
7C7B: 00 00       NEG    $00
7C7D: 00 00       NEG    $00
7C7F: 00 00       NEG    $00
7C81: 00 00       NEG    $00
7C83: 00 00       NEG    $00
7C85: 00 00       NEG    $00
7C87: 00 00       NEG    $00
7C89: 00 00       NEG    $00
7C8B: 00 00       NEG    $00
7C8D: 00 00       NEG    $00
7C8F: 00 00       NEG    $00
7C91: 00 00       NEG    $00
7C93: 00 00       NEG    $00
7C95: 00 00       NEG    $00
7C97: 00 00       NEG    $00
7C99: 00 00       NEG    $00
7C9B: 00 00       NEG    $00
7C9D: 00 00       NEG    $00
7C9F: 00 00       NEG    $00
7CA1: 00 00       NEG    $00
7CA3: 00 00       NEG    $00
7CA5: 00 00       NEG    $00
7CA7: 00 00       NEG    $00
7CA9: 00 00       NEG    $00
7CAB: 00 00       NEG    $00
7CAD: 00 00       NEG    $00
7CAF: 00 00       NEG    $00
7CB1: 00 00       NEG    $00
7CB3: 00 00       NEG    $00
7CB5: 00 00       NEG    $00
7CB7: 00 00       NEG    $00
7CB9: 00 00       NEG    $00
7CBB: 00 00       NEG    $00
7CBD: 00 00       NEG    $00
7CBF: 00 00       NEG    $00
7CC1: 00 00       NEG    $00
7CC3: 00 00       NEG    $00
7CC5: 00 00       NEG    $00
7CC7: 00 00       NEG    $00
7CC9: 00 00       NEG    $00
7CCB: 00 00       NEG    $00
7CCD: 00 00       NEG    $00
7CCF: 00 00       NEG    $00
7CD1: 00 00       NEG    $00
7CD3: 00 00       NEG    $00
7CD5: 00 00       NEG    $00
7CD7: 00 00       NEG    $00
7CD9: 00 00       NEG    $00
7CDB: 00 00       NEG    $00
7CDD: 00 00       NEG    $00
7CDF: 00 00       NEG    $00
7CE1: 00 00       NEG    $00
7CE3: 00 00       NEG    $00
7CE5: 00 00       NEG    $00
7CE7: 00 00       NEG    $00
7CE9: 00 00       NEG    $00
7CEB: 00 00       NEG    $00
7CED: 00 00       NEG    $00
7CEF: 00 00       NEG    $00
7CF1: 00 00       NEG    $00
7CF3: 00 00       NEG    $00
7CF5: 00 00       NEG    $00
7CF7: 00 00       NEG    $00
7CF9: 00 00       NEG    $00
7CFB: 00 00       NEG    $00
7CFD: 00 00       NEG    $00
7CFF: 00 00       NEG    $00
7D01: 00 00       NEG    $00
7D03: 00 00       NEG    $00
7D05: 00 00       NEG    $00
7D07: 00 00       NEG    $00
7D09: 00 00       NEG    $00
7D0B: 00 00       NEG    $00
7D0D: 00 00       NEG    $00
7D0F: 00 00       NEG    $00
7D11: 00 00       NEG    $00
7D13: 00 00       NEG    $00
7D15: 00 00       NEG    $00
7D17: 00 00       NEG    $00
7D19: 00 00       NEG    $00
7D1B: 00 00       NEG    $00
7D1D: 00 00       NEG    $00
7D1F: 00 00       NEG    $00
7D21: 00 00       NEG    $00
7D23: 00 00       NEG    $00
7D25: 00 00       NEG    $00
7D27: 00 00       NEG    $00
7D29: 00 00       NEG    $00
7D2B: 00 00       NEG    $00
7D2D: 00 00       NEG    $00
7D2F: 00 00       NEG    $00
7D31: 00 00       NEG    $00
7D33: 00 00       NEG    $00
7D35: 00 00       NEG    $00
7D37: 00 00       NEG    $00
7D39: 00 00       NEG    $00
7D3B: 00 00       NEG    $00
7D3D: 00 00       NEG    $00
7D3F: 00 00       NEG    $00
7D41: 00 00       NEG    $00
7D43: 00 00       NEG    $00
7D45: 00 00       NEG    $00
7D47: 00 00       NEG    $00
7D49: 00 00       NEG    $00
7D4B: 00 00       NEG    $00
7D4D: 00 00       NEG    $00
7D4F: 00 00       NEG    $00
7D51: 00 00       NEG    $00
7D53: 00 00       NEG    $00
7D55: 00 00       NEG    $00
7D57: 00 00       NEG    $00
7D59: 00 00       NEG    $00
7D5B: 00 00       NEG    $00
7D5D: 00 00       NEG    $00
7D5F: 00 00       NEG    $00
7D61: 00 00       NEG    $00
7D63: 00 00       NEG    $00
7D65: 00 00       NEG    $00
7D67: 00 00       NEG    $00
7D69: 00 00       NEG    $00
7D6B: 00 00       NEG    $00
7D6D: 00 00       NEG    $00
7D6F: 00 00       NEG    $00
7D71: 00 00       NEG    $00
7D73: 00 00       NEG    $00
7D75: 00 00       NEG    $00
7D77: 00 00       NEG    $00
7D79: 00 00       NEG    $00
7D7B: 00 00       NEG    $00
7D7D: 00 00       NEG    $00
7D7F: 00 00       NEG    $00
7D81: 00 00       NEG    $00
7D83: 00 00       NEG    $00
7D85: 00 00       NEG    $00
7D87: 00 00       NEG    $00
7D89: 00 00       NEG    $00
7D8B: 00 00       NEG    $00
7D8D: 00 00       NEG    $00
7D8F: 00 00       NEG    $00
7D91: 00 00       NEG    $00
7D93: 00 00       NEG    $00
7D95: 00 00       NEG    $00
7D97: 00 00       NEG    $00
7D99: 00 00       NEG    $00
7D9B: 00 00       NEG    $00
7D9D: 00 00       NEG    $00
7D9F: 00 00       NEG    $00
7DA1: 00 00       NEG    $00
7DA3: 00 00       NEG    $00
7DA5: 00 00       NEG    $00
7DA7: 00 00       NEG    $00
7DA9: 00 00       NEG    $00
7DAB: 00 00       NEG    $00
7DAD: 00 00       NEG    $00
7DAF: 00 00       NEG    $00
7DB1: 00 00       NEG    $00
7DB3: 00 00       NEG    $00
7DB5: 00 00       NEG    $00
7DB7: 00 00       NEG    $00
7DB9: 00 00       NEG    $00
7DBB: 00 00       NEG    $00
7DBD: 00 00       NEG    $00
7DBF: 00 00       NEG    $00
7DC1: 00 00       NEG    $00
7DC3: 00 00       NEG    $00
7DC5: 00 00       NEG    $00
7DC7: 00 00       NEG    $00
7DC9: 00 00       NEG    $00
7DCB: 00 00       NEG    $00
7DCD: 00 00       NEG    $00
7DCF: 00 00       NEG    $00
7DD1: 00 00       NEG    $00
7DD3: 00 00       NEG    $00
7DD5: 00 00       NEG    $00
7DD7: 00 00       NEG    $00
7DD9: 00 00       NEG    $00
7DDB: 00 00       NEG    $00
7DDD: 00 00       NEG    $00
7DDF: 00 00       NEG    $00
7DE1: 00 00       NEG    $00
7DE3: 00 00       NEG    $00
7DE5: 00 00       NEG    $00
7DE7: 00 00       NEG    $00
7DE9: 00 00       NEG    $00
7DEB: 00 00       NEG    $00
7DED: 00 00       NEG    $00
7DEF: 00 00       NEG    $00
7DF1: 00 00       NEG    $00
7DF3: 00 00       NEG    $00
7DF5: 00 00       NEG    $00
7DF7: 00 00       NEG    $00
7DF9: 00 00       NEG    $00
7DFB: 00 00       NEG    $00
7DFD: 00 00       NEG    $00
7DFF: 00 00       NEG    $00
7E01: 00 00       NEG    $00
7E03: 00 00       NEG    $00
7E05: 00 00       NEG    $00
7E07: 00 00       NEG    $00
7E09: 00 00       NEG    $00
7E0B: 00 00       NEG    $00
7E0D: 00 00       NEG    $00
7E0F: 00 00       NEG    $00
7E11: 00 00       NEG    $00
7E13: 00 00       NEG    $00
7E15: 00 00       NEG    $00
7E17: 00 00       NEG    $00
7E19: 00 00       NEG    $00
7E1B: 00 00       NEG    $00
7E1D: 00 00       NEG    $00
7E1F: 00 00       NEG    $00
7E21: 00 00       NEG    $00
7E23: 00 00       NEG    $00
7E25: 00 00       NEG    $00
7E27: 00 00       NEG    $00
7E29: 00 00       NEG    $00
7E2B: 00 00       NEG    $00
7E2D: 00 00       NEG    $00
7E2F: 00 00       NEG    $00
7E31: 00 00       NEG    $00
7E33: 00 00       NEG    $00
7E35: 00 00       NEG    $00
7E37: 00 00       NEG    $00
7E39: 00 00       NEG    $00
7E3B: 00 00       NEG    $00
7E3D: 00 00       NEG    $00
7E3F: 00 00       NEG    $00
7E41: 00 00       NEG    $00
7E43: 00 00       NEG    $00
7E45: 00 00       NEG    $00
7E47: 00 00       NEG    $00
7E49: 00 00       NEG    $00
7E4B: 00 00       NEG    $00
7E4D: 00 00       NEG    $00
7E4F: 00 00       NEG    $00
7E51: 00 00       NEG    $00
7E53: 00 00       NEG    $00
7E55: 00 00       NEG    $00
7E57: 00 00       NEG    $00
7E59: 00 00       NEG    $00
7E5B: 00 00       NEG    $00
7E5D: 00 00       NEG    $00
7E5F: 00 00       NEG    $00
7E61: 00 00       NEG    $00
7E63: 00 00       NEG    $00
7E65: 00 00       NEG    $00
7E67: 00 00       NEG    $00
7E69: 00 00       NEG    $00
7E6B: 00 00       NEG    $00
7E6D: 00 00       NEG    $00
7E6F: 00 00       NEG    $00
7E71: 00 00       NEG    $00
7E73: 00 00       NEG    $00
7E75: 00 00       NEG    $00
7E77: 00 00       NEG    $00
7E79: 00 00       NEG    $00
7E7B: 00 00       NEG    $00
7E7D: 00 00       NEG    $00
7E7F: 00 00       NEG    $00
7E81: 00 00       NEG    $00
7E83: 00 00       NEG    $00
7E85: 00 00       NEG    $00
7E87: 00 00       NEG    $00
7E89: 00 00       NEG    $00
7E8B: 00 00       NEG    $00
7E8D: 00 00       NEG    $00
7E8F: 00 00       NEG    $00
7E91: 00 00       NEG    $00
7E93: 00 00       NEG    $00
7E95: 00 00       NEG    $00
7E97: 00 00       NEG    $00
7E99: 00 00       NEG    $00
7E9B: 00 00       NEG    $00
7E9D: 00 00       NEG    $00
7E9F: 00 00       NEG    $00
7EA1: 00 00       NEG    $00
7EA3: 00 00       NEG    $00
7EA5: 00 00       NEG    $00
7EA7: 00 00       NEG    $00
7EA9: 00 00       NEG    $00
7EAB: 00 00       NEG    $00
7EAD: 00 00       NEG    $00
7EAF: 00 00       NEG    $00
7EB1: 00 00       NEG    $00
7EB3: 00 00       NEG    $00
7EB5: 00 00       NEG    $00
7EB7: 00 00       NEG    $00
7EB9: 00 00       NEG    $00
7EBB: 00 00       NEG    $00
7EBD: 00 00       NEG    $00
7EBF: 00 00       NEG    $00
7EC1: 00 00       NEG    $00
7EC3: 00 00       NEG    $00
7EC5: 00 00       NEG    $00
7EC7: 00 00       NEG    $00
7EC9: 00 00       NEG    $00
7ECB: 00 00       NEG    $00
7ECD: 00 00       NEG    $00
7ECF: 00 00       NEG    $00
7ED1: 00 00       NEG    $00
7ED3: 00 00       NEG    $00
7ED5: 00 00       NEG    $00
7ED7: 00 00       NEG    $00
7ED9: 00 00       NEG    $00
7EDB: 00 00       NEG    $00
7EDD: 00 00       NEG    $00
7EDF: 00 00       NEG    $00
7EE1: 00 00       NEG    $00
7EE3: 00 00       NEG    $00
7EE5: 00 00       NEG    $00
7EE7: 00 00       NEG    $00
7EE9: 00 00       NEG    $00
7EEB: 00 00       NEG    $00
7EED: 00 00       NEG    $00
7EEF: 00 00       NEG    $00
7EF1: 00 00       NEG    $00
7EF3: 00 00       NEG    $00
7EF5: 00 00       NEG    $00
7EF7: 00 00       NEG    $00
7EF9: 00 00       NEG    $00
7EFB: 00 00       NEG    $00
7EFD: 00 00       NEG    $00
7EFF: 00 00       NEG    $00
7F01: 00 00       NEG    $00
7F03: 00 00       NEG    $00
7F05: 00 00       NEG    $00
7F07: 00 00       NEG    $00
7F09: 00 00       NEG    $00
7F0B: 00 00       NEG    $00
7F0D: 00 00       NEG    $00
7F0F: 00 00       NEG    $00
7F11: 00 00       NEG    $00
7F13: 00 00       NEG    $00
7F15: 00 00       NEG    $00
7F17: 00 00       NEG    $00
7F19: 00 00       NEG    $00
7F1B: 00 00       NEG    $00
7F1D: 00 00       NEG    $00
7F1F: 00 00       NEG    $00
7F21: 00 00       NEG    $00
7F23: 00 00       NEG    $00
7F25: 00 00       NEG    $00
7F27: 00 00       NEG    $00
7F29: 00 00       NEG    $00
7F2B: 00 00       NEG    $00
7F2D: 00 00       NEG    $00
7F2F: 00 00       NEG    $00
7F31: 00 00       NEG    $00
7F33: 00 00       NEG    $00
7F35: 00 00       NEG    $00
7F37: 00 00       NEG    $00
7F39: 00 00       NEG    $00
7F3B: 00 00       NEG    $00
7F3D: 00 00       NEG    $00
7F3F: 00 00       NEG    $00
7F41: 00 00       NEG    $00
7F43: 00 00       NEG    $00
7F45: 00 00       NEG    $00
7F47: 00 00       NEG    $00
7F49: 00 00       NEG    $00
7F4B: 00 00       NEG    $00
7F4D: 00 00       NEG    $00
7F4F: 00 00       NEG    $00
7F51: 00 00       NEG    $00
7F53: 00 00       NEG    $00
7F55: 00 00       NEG    $00
7F57: 00 00       NEG    $00
7F59: 00 00       NEG    $00
7F5B: 00 00       NEG    $00
7F5D: 00 00       NEG    $00
7F5F: 00 00       NEG    $00
7F61: 00 00       NEG    $00
7F63: 00 00       NEG    $00
7F65: 00 00       NEG    $00
7F67: 00 00       NEG    $00
7F69: 00 00       NEG    $00
7F6B: 00 00       NEG    $00
7F6D: 00 00       NEG    $00
7F6F: 00 00       NEG    $00
7F71: 00 00       NEG    $00
7F73: 00 00       NEG    $00
7F75: 00 00       NEG    $00
7F77: 00 00       NEG    $00
7F79: 00 00       NEG    $00
7F7B: 00 00       NEG    $00
7F7D: 00 00       NEG    $00
7F7F: 00 00       NEG    $00
7F81: 00 00       NEG    $00
7F83: 00 00       NEG    $00
7F85: 00 00       NEG    $00
7F87: 00 00       NEG    $00
7F89: 00 00       NEG    $00
7F8B: 00 00       NEG    $00
7F8D: 00 00       NEG    $00
7F8F: 00 00       NEG    $00
7F91: 00 00       NEG    $00
7F93: 00 00       NEG    $00
7F95: 00 00       NEG    $00
7F97: 00 00       NEG    $00
7F99: 00 00       NEG    $00
7F9B: 00 00       NEG    $00
7F9D: 00 00       NEG    $00
7F9F: 00 00       NEG    $00
7FA1: 00 00       NEG    $00
7FA3: 00 00       NEG    $00
7FA5: 00 00       NEG    $00
7FA7: 00 00       NEG    $00
7FA9: 00 00       NEG    $00
7FAB: 00 00       NEG    $00
7FAD: 00 00       NEG    $00
7FAF: 00 00       NEG    $00
7FB1: 00 00       NEG    $00
7FB3: 00 00       NEG    $00
7FB5: 00 00       NEG    $00
7FB7: 00 00       NEG    $00
7FB9: 00 00       NEG    $00
7FBB: 00 00       NEG    $00
7FBD: 00 00       NEG    $00
7FBF: 00 00       NEG    $00
7FC1: 00 00       NEG    $00
7FC3: 00 00       NEG    $00
7FC5: 00 00       NEG    $00
7FC7: 00 00       NEG    $00
7FC9: 00 00       NEG    $00
7FCB: 00 00       NEG    $00
7FCD: 00 00       NEG    $00
7FCF: 00 00       NEG    $00
7FD1: 00 00       NEG    $00
7FD3: 00 00       NEG    $00
7FD5: 00 00       NEG    $00
7FD7: 00 00       NEG    $00
7FD9: 00 00       NEG    $00
7FDB: 00 00       NEG    $00
7FDD: 00 00       NEG    $00
7FDF: 00 00       NEG    $00
7FE1: 00 00       NEG    $00
7FE3: 00 00       NEG    $00
7FE5: 00 00       NEG    $00
7FE7: 00 00       NEG    $00
7FE9: 00 00       NEG    $00
7FEB: 00 00       NEG    $00
7FED: 00 00       NEG    $00
7FEF: 00 00       NEG    $00
7FF1: 00 00       NEG    $00
7FF3: 00 00       NEG    $00
7FF5: 00 00       NEG    $00
7FF7: 00 00       NEG    $00
7FF9: 00 00       NEG    $00
7FFB: 00 00       NEG    $00
7FFD: 00 00       NEG    $00
7FFF: 00 4F       NEG    $4F
