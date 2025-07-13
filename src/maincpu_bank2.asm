4000: 34 7E          PSHS   U,Y,X,DP,D
4002: CE 0B 4A       LDU    #$0B4A
4005: 86 0B          LDA    #$0B
4007: 1F 8B          TFR    A,DP
4009: 0F 4A          CLR    $4A
400B: 0F 4B          CLR    $4B
400D: 0F 4C          CLR    $4C
400F: 0F 4D          CLR    $4D
4011: 0F 6E          CLR    $6E
4013: 0F 6F          CLR    $6F
4015: 0F 70          CLR    $70
4017: 0F 71          CLR    $71
4019: 9F 54          STX    $54
401B: 8E 0B 31       LDX    #$0B31
401E: DC 35          LDD    $35
4020: D3 33          ADDD   $33
4022: DD 35          STD    $35
4024: DC 3B          LDD    $3B
4026: D3 39          ADDD   $39
4028: DD 3B          STD    $3B
402A: 96 3D          LDA    $3D
402C: 84 FF          ANDA   #$FF
402E: 27 08          BEQ    $4038
4030: 00 3E          NEG    $3E
4032: 00 41          NEG    $41
4034: 00 44          NEG    $44
4036: 00 47          NEG    $47
4038: BD 40 7F       JSR    $407F
403B: DC 37          LDD    $37
403D: F3 40 79       ADDD   $4079
4040: DD 4E          STD    $4E
4042: DC 39          LDD    $39
4044: F3 40 7B       ADDD   $407B
4047: DD 50          STD    $50
4049: DC 3B          LDD    $3B
404B: F3 40 7B       ADDD   $407B
404E: F3 40 7D       ADDD   $407D
4051: DD 52          STD    $52
4053: BD 40 AF       JSR    $40AF
4056: BD 45 07       JSR    $4507
4059: DC 4E          LDD    $4E
405B: B3 40 79       SUBD   $4079
405E: DD 4E          STD    $4E
4060: DC 50          LDD    $50
4062: B3 40 7B       SUBD   $407B
4065: DD 50          STD    $50
4067: DC 52          LDD    $52
4069: B3 40 7B       SUBD   $407B
406C: B3 40 7D       SUBD   $407D
406F: DD 52          STD    $52
4071: DC 52          LDD    $52
4073: 93 50          SUBD   $50
4075: DD 52          STD    $52
4077: 35 FE          PULS   D,DP,X,Y,U,PC
4079: 00 02          NEG    $02
407B: 00 06          NEG    $06
407D: 00 00          NEG    $00
407F: 10 8E 40 A6    LDY    #$40A6
4083: DC 31          LDD    $31
4085: 10 93 37       CMPD   $37
4088: 2C 04          BGE    $408E
408A: 31 22          LEAY   $2,Y
408C: 20 04          BRA    $4092
408E: 26 02          BNE    $4092
4090: 31 21          LEAY   $1,Y
4092: DC 33          LDD    $33
4094: 10 93 39       CMPD   $39
4097: 2F 04          BLE    $409D
4099: 31 26          LEAY   $6,Y
409B: 20 04          BRA    $40A1
409D: 26 02          BNE    $40A1
409F: 31 23          LEAY   $3,Y
40A1: A6 A4          LDA    ,Y
40A3: 97 59          STA    $59
40A5: 39             RTS
40A6: 08 01          ASL    $01
40A8: 02 07 00       AIM    #$07;$00
40AB: 03 06          COM    $06
40AD: 05 04 C6       EIM    #$04;$C6
40B0: 01 D7 58       OIM    #$D7;$58
40B3: BD 40 E6       JSR    $40E6
40B6: 4D             TSTA
40B7: 27 24          BEQ    $40DD
40B9: BD 41 54       JSR    $4154
40BC: 10 AE 9F 0B 56 LDY    [$0B56]
40C1: BD 41 A7       JSR    $41A7
40C4: BD 41 E0       JSR    $41E0
40C7: 4D             TSTA
40C8: 27 03          BEQ    $40CD
40CA: BD 42 51       JSR    $4251
40CD: 9E 56          LDX    $56
40CF: 30 02          LEAX   $2,X
40D1: 9F 56          STX    $56
40D3: EC 9F 0B 56    LDD    [$0B56]
40D7: 10 83 FF FF    CMPD   #$FFFF
40DB: 26 DF          BNE    $40BC
40DD: 0C 58          INC    $58
40DF: D6 58          LDB    $58
40E1: C1 05          CMPB   #$05
40E3: 25 CE          BCS    $40B3
40E5: 39             RTS
40E6: 8E 0B 31       LDX    #$0B31
40E9: 86 03          LDA    #$03
40EB: D6 58          LDB    $58
40ED: 5A             DECB
40EE: 3D             MUL
40EF: CB 0D          ADDB   #$0D
40F1: 3A             ABX
40F2: A6 84          LDA    ,X
40F4: AA 01          ORA    $1,X
40F6: AA 02          ORA    $2,X
40F8: 27 35          BEQ    $412F
40FA: E6 84          LDB    ,X
40FC: 1D             SEX
40FD: D3 4E          ADDD   $4E
40FF: DD 5A          STD    $5A
4101: E6 01          LDB    $1,X
4103: 1D             SEX
4104: D3 50          ADDD   $50
4106: DD 5E          STD    $5E
4108: E6 02          LDB    $2,X
410A: 1D             SEX
410B: D3 52          ADDD   $52
410D: 93 5E          SUBD   $5E
410F: 83 00 01       SUBD   #$0001
4112: DD 60          STD    $60
4114: 8E 41 30       LDX    #$4130
4117: D6 59          LDB    $59
4119: 58             ASLB
411A: 58             ASLB
411B: 3A             ABX
411C: DC 5A          LDD    $5A
411E: E3 84          ADDD   ,X
4120: 2A 03          BPL    $4125
4122: CC 00 00       LDD    #$0000
4125: DD 5A          STD    $5A
4127: DC 5E          LDD    $5E
4129: E3 02          ADDD   $2,X
412B: DD 5E          STD    $5E
412D: 86 FF          LDA    #$FF
412F: 39             RTS
4130: 00 00          NEG    $00
4132: 00 00          NEG    $00
4134: 00 00          NEG    $00
4136: 00 04          NEG    $04
4138: 00 06          NEG    $06
413A: 00 04          NEG    $04
413C: 00 06          NEG    $06
413E: 00 00          NEG    $00
4140: 00 06          NEG    $06
4142: FF FC 00       STU    $FC00
4145: 00 FF          NEG    $FF
4147: FC FF FA       LDD    $FFFA
414A: FF FC FF       STU    $FCFF
414D: FA 00 00       ORB    >$0000
4150: FF FA 00       STU    $FA00
4153: 04 DC          LSR    $DC
4155: 60 D3          NEG    [,--U]
4157: 5E             FCB    $5E
4158: C6 80          LDB    #$80
415A: 3D             MUL
415B: 34 06          PSHS   D
415D: DC 5A          LDD    $5A
415F: 58             ASLB
4160: 49             ROLA
4161: 48             ASLA
4162: 1F 89          TFR    A,B
4164: 4F             CLRA
4165: E3 E1          ADDD   ,S++
4167: C3 47 80       ADDD   #$4780
416A: 1F 01          TFR    D,X
416C: EC 84          LDD    ,X
416E: 26 03          BNE    $4173
4170: BD 41 A1       JSR    $41A1
4173: DC 60          LDD    $60
4175: D3 5E          ADDD   $5E
4177: 4F             CLRA
4178: 54             LSRB
4179: 54             LSRB
417A: 54             LSRB
417B: 58             ASLB
417C: E3 84          ADDD   ,X
417E: 1F 01          TFR    D,X
4180: 10 AE 84       LDY    ,X
4183: 10 9F 56       STY    $56
4186: 8E 0B 31       LDX    #$0B31
4189: 96 37          LDA    $37
418B: 81 20          CMPA   #$20
418D: 25 03          BCS    $4192
418F: BD 41 A1       JSR    $41A1
4192: 96 3B          LDA    $3B
4194: 26 03          BNE    $4199
4196: BD 41 A1       JSR    $41A1
4199: 81 04          CMPA   #$04
419B: 25 03          BCS    $41A0
419D: BD 41 A1       JSR    $41A1
41A0: 39             RTS
41A1: 35 10          PULS   X
41A3: 12             NOP
41A4: 35 10          PULS   X
41A6: 39             RTS
41A7: EC 22          LDD    $2,Y
41A9: DD 64          STD    $64
41AB: EC 24          LDD    $4,Y
41AD: 93 64          SUBD   $64
41AF: DD 66          STD    $66
41B1: A6 29          LDA    $9,Y
41B3: 84 C0          ANDA   #$C0
41B5: 81 40          CMPA   #$40
41B7: 24 0E          BCC    $41C7
41B9: EC A4          LDD    ,Y
41BB: 93 64          SUBD   $64
41BD: DD 62          STD    $62
41BF: DC 5A          LDD    $5A
41C1: 93 5E          SUBD   $5E
41C3: DD 5C          STD    $5C
41C5: 20 18          BRA    $41DF
41C7: 26 0E          BNE    $41D7
41C9: EC A4          LDD    ,Y
41CB: D3 64          ADDD   $64
41CD: DD 62          STD    $62
41CF: DC 5A          LDD    $5A
41D1: D3 5E          ADDD   $5E
41D3: DD 5C          STD    $5C
41D5: 20 08          BRA    $41DF
41D7: EC A4          LDD    ,Y
41D9: DD 62          STD    $62
41DB: DC 5A          LDD    $5A
41DD: DD 5C          STD    $5C
41DF: 39             RTS
41E0: 4F             CLRA
41E1: E6 28          LDB    $8,Y
41E3: 26 01          BNE    $41E6
41E5: 4C             INCA
41E6: 34 06          PSHS   D
41E8: 4F             CLRA
41E9: E6 27          LDB    $7,Y
41EB: 26 01          BNE    $41EE
41ED: 4C             INCA
41EE: 34 06          PSHS   D
41F0: 4F             CLRA
41F1: E6 26          LDB    $6,Y
41F3: 26 01          BNE    $41F6
41F5: 4C             INCA
41F6: 34 06          PSHS   D
41F8: DC 62          LDD    $62
41FA: 10 93 5C       CMPD   $5C
41FD: 2E 4E          BGT    $424D
41FF: E3 E4          ADDD   ,S
4201: 10 93 5C       CMPD   $5C
4204: 2F 47          BLE    $424D
4206: DC 64          LDD    $64
4208: 10 93 5E       CMPD   $5E
420B: 2E 40          BGT    $424D
420D: E3 62          ADDD   $2,S
420F: 10 93 5E       CMPD   $5E
4212: 2F 39          BLE    $424D
4214: DC 66          LDD    $66
4216: 10 93 60       CMPD   $60
4219: 2E 32          BGT    $424D
421B: E3 64          ADDD   $4,S
421D: 10 93 60       CMPD   $60
4220: 2F 2B          BLE    $424D
4222: D6 5D          LDB    $5D
4224: D0 63          SUBB   $63
4226: D7 69          STB    $69
4228: E6 26          LDB    $6,Y
422A: 5A             DECB
422B: D0 69          SUBB   $69
422D: D7 6B          STB    $6B
422F: D6 5F          LDB    $5F
4231: D0 65          SUBB   $65
4233: D7 6A          STB    $6A
4235: E6 27          LDB    $7,Y
4237: 5A             DECB
4238: D0 6A          SUBB   $6A
423A: D7 6C          STB    $6C
423C: D6 61          LDB    $61
423E: D0 67          SUBB   $67
4240: D7 6D          STB    $6D
4242: E6 28          LDB    $8,Y
4244: 5A             DECB
4245: D0 6D          SUBB   $6D
4247: D7 68          STB    $68
4249: 86 FF          LDA    #$FF
424B: 20 01          BRA    $424E
424D: 4F             CLRA
424E: 32 66          LEAS   $6,S
4250: 39             RTS
4251: C6 06          LDB    #$06
4253: A6 2A          LDA    $A,Y
4255: 8E 0B 68       LDX    #$0B68
4258: 44             LSRA
4259: 25 04          BCS    $425F
425B: 6F 84          CLR    ,X
425D: 6A 84          DEC    ,X
425F: 30 01          LEAX   $1,X
4261: 5A             DECB
4262: 26 F4          BNE    $4258
4264: BD 43 29       JSR    $4329
4267: 5D             TSTB
4268: 27 18          BEQ    $4282
426A: 81 07          CMPA   #$07
426C: 26 0F          BNE    $427D
426E: F6 0A F8       LDB    $0AF8
4271: C4 C1          ANDB   #$C1
4273: 10 27 00 9F    LBEQ   $4316
4277: C1 C1          CMPB   #$C1
4279: 10 27 00 99    LBEQ   $4316
427D: 97 4A          STA    $4A
427F: 7E 43 16       JMP    $4316
4282: 86 01          LDA    #$01
4284: 8E 0B 68       LDX    #$0B68
4287: E6 84          LDB    ,X
4289: 27 16          BEQ    $42A1
428B: E1 86          CMPB   A,X
428D: 22 3F          BHI    $42CE
428F: 4C             INCA
4290: 81 06          CMPA   #$06
4292: 26 F7          BNE    $428B
4294: 4F             CLRA
4295: 34 06          PSHS   D
4297: D3 52          ADDD   $52
4299: DD 52          STD    $52
429B: 35 06          PULS   D
429D: D3 60          ADDD   $60
429F: DD 60          STD    $60
42A1: 9E 54          LDX    $54
42A3: A6 88 15       LDA    $15,X
42A6: 85 40          BITA   #$40
42A8: 27 14          BEQ    $42BE
42AA: 8E 41 30       LDX    #$4130
42AD: D6 59          LDB    $59
42AF: 58             ASLB
42B0: 58             ASLB
42B1: 3A             ABX
42B2: DC 4E          LDD    $4E
42B4: E3 84          ADDD   ,X
42B6: DD 4E          STD    $4E
42B8: DC 5A          LDD    $5A
42BA: E3 84          ADDD   ,X
42BC: DD 5A          STD    $5A
42BE: A6 29          LDA    $9,Y
42C0: 84 0F          ANDA   #$0F
42C2: 81 04          CMPA   #$04
42C4: 24 01          BCC    $42C7
42C6: 4F             CLRA
42C7: BD 44 CA       JSR    $44CA
42CA: 0C 6F          INC    $6F
42CC: 20 48          BRA    $4316
42CE: A6 29          LDA    $9,Y
42D0: 84 0F          ANDA   #$0F
42D2: 81 0F          CMPA   #$0F
42D4: 26 05          BNE    $42DB
42D6: BD 44 9A       JSR    $449A
42D9: 20 3B          BRA    $4316
42DB: 81 0E          CMPA   #$0E
42DD: 26 08          BNE    $42E7
42DF: 9E 54          LDX    $54
42E1: A6 01          LDA    $1,X
42E3: 81 02          CMPA   #$02
42E5: 24 2F          BCC    $4316
42E7: A6 29          LDA    $9,Y
42E9: 84 0F          ANDA   #$0F
42EB: 81 0D          CMPA   #$0D
42ED: 26 1A          BNE    $4309
42EF: 9E 54          LDX    $54
42F1: A6 01          LDA    $1,X
42F3: 81 02          CMPA   #$02
42F5: 25 12          BCS    $4309
42F7: DC 5E          LDD    $5E
42F9: 10 83 00 48    CMPD   #$0048
42FD: 24 0A          BCC    $4309
42FF: 96 59          LDA    $59
4301: 81 03          CMPA   #$03
4303: 27 11          BEQ    $4316
4305: 81 07          CMPA   #$07
4307: 27 0D          BEQ    $4316
4309: BD 43 43       JSR    $4343
430C: 20 08          BRA    $4316
430E: 8E 43 17       LDX    #$4317
4311: D6 59          LDB    $59
4313: 58             ASLB
4314: AD 95          JSR    [B,X]
4316: 39             RTS
4317: 43             COMA
4318: 43             COMA
4319: 43             COMA
431A: 63 43          COM    $3,U
431C: FD 44 06       STD    $4406
431F: 44             LSRA
4320: 27 44          BEQ    $4366
4322: 2F 44          BLE    $4368
4324: 68 44          ASL    $4,U
4326: 70 44 91       NEG    $4491
4329: 8E 43 3E       LDX    #$433E
432C: A6 29          LDA    $9,Y
432E: 84 0F          ANDA   #$0F
4330: C6 FF          LDB    #$FF
4332: A1 84          CMPA   ,X
4334: 27 07          BEQ    $433D
4336: 30 01          LEAX   $1,X
4338: E1 84          CMPB   ,X
433A: 26 F6          BNE    $4332
433C: 5F             CLRB
433D: 39             RTS
433E: 04 05          LSR    $05
4340: 06 07          ROR    $07
4342: FF 8E 44       STU    $8E44
4345: 06 96          ROR    $96
4347: 69 91          ROL    [,X++]
4349: 6A 23          DEC    $3,Y
434B: 05 8E 43       EIM    #$8E;$43
434E: 63 96          COM    [A,X]
4350: 6A 91          DEC    [,X++]
4352: 6B 23 05       TIM    #$23;$5,X
4355: 8E 44 70       LDX    #$4470
4358: 96 6B          LDA    $6B
435A: 91 6C          CMPA   $6C
435C: 23 03          BLS    $4361
435E: 8E 44 2F       LDX    #$442F
4361: 6E 84          JMP    ,X
4363: 4F             CLRA
4364: D6 6A          LDB    $6A
4366: C1 FF          CMPB   #$FF
4368: 26 03          BNE    $436D
436A: BD 45 CF       JSR    $45CF
436D: 34 06          PSHS   D
436F: 10 8C 57 73    CMPY   #$5773
4373: 26 0A          BNE    $437F
4375: 9E 54          LDX    $54
4377: A6 84          LDA    ,X
4379: 84 0F          ANDA   #$0F
437B: 81 02          CMPA   #$02
437D: 27 3C          BEQ    $43BB
437F: A6 29          LDA    $9,Y
4381: 84 0F          ANDA   #$0F
4383: 27 18          BEQ    $439D
4385: 81 04          CMPA   #$04
4387: 24 14          BCC    $439D
4389: 0C 71          INC    $71
438B: BD 44 CA       JSR    $44CA
438E: BD 43 BE       JSR    $43BE
4391: 10 8C 57 73    CMPY   #$5773
4395: 26 12          BNE    $43A9
4397: 86 0F          LDA    #$0F
4399: 97 4A          STA    $4A
439B: 20 0C          BRA    $43A9
439D: 0C 70          INC    $70
439F: 86 02          LDA    #$02
43A1: 97 4B          STA    $4B
43A3: A6 61          LDA    $1,S
43A5: 8B 01          ADDA   #$01
43A7: A7 61          STA    $1,S
43A9: DC 50          LDD    $50
43AB: A3 E4          SUBD   ,S
43AD: DD 50          STD    $50
43AF: DC 5E          LDD    $5E
43B1: A3 E4          SUBD   ,S
43B3: DD 5E          STD    $5E
43B5: DC 52          LDD    $52
43B7: A3 E4          SUBD   ,S
43B9: DD 52          STD    $52
43BB: 32 62          LEAS   $2,S
43BD: 39             RTS
43BE: 8E 43 EB       LDX    #$43EB
43C1: CC FF FF       LDD    #$FFFF
43C4: 10 AC 84       CMPY   ,X
43C7: 27 09          BEQ    $43D2
43C9: 30 04          LEAX   $4,X
43CB: 10 A3 84       CMPD   ,X
43CE: 26 F4          BNE    $43C4
43D0: 20 04          BRA    $43D6
43D2: EC 02          LDD    $2,X
43D4: DD 4E          STD    $4E
43D6: 8E 41 30       LDX    #$4130
43D9: D6 59          LDB    $59
43DB: 58             ASLB
43DC: 58             ASLB
43DD: 3A             ABX
43DE: DC 50          LDD    $50
43E0: E3 02          ADDD   $2,X
43E2: DD 50          STD    $50
43E4: DC 52          LDD    $52
43E6: E3 02          ADDD   $2,X
43E8: DD 52          STD    $52
43EA: 39             RTS
43EB: 4F             CLRA
43EC: 75 02 0A 4F    EIM    #$02,$0A4F
43F0: C2 03          SBCB   #$03
43F2: 0A 58          DEC    $58
43F4: 44             LSRA
43F5: 07 AE          ASR    $AE
43F7: 57             ASRB
43F8: 73 06 18       COM    $0618
43FB: FF FF 96       STU    $FF96
43FE: 69 91          ROL    [,X++]
4400: 6A 25          DEC    $5,Y
4402: 03 7E          COM    $7E
4404: 43             COMA
4405: 63 4F          COM    $F,U
4407: D6 69          LDB    $69
4409: C1 FF          CMPB   #$FF
440B: 26 03          BNE    $4410
440D: BD 45 CF       JSR    $45CF
4410: CB 01          ADDB   #$01
4412: 34 06          PSHS   D
4414: DC 4E          LDD    $4E
4416: A3 E4          SUBD   ,S
4418: DD 4E          STD    $4E
441A: DC 5A          LDD    $5A
441C: A3 E1          SUBD   ,S++
441E: DD 5A          STD    $5A
4420: 86 01          LDA    #$01
4422: 97 4B          STA    $4B
4424: 0C 70          INC    $70
4426: 39             RTS
4427: 96 69          LDA    $69
4429: 91 6C          CMPA   $6C
442B: 25 D9          BCS    $4406
442D: 20 00          BRA    $442F
442F: D6 6C          LDB    $6C
4431: C1 FF          CMPB   #$FF
4433: 26 03          BNE    $4438
4435: BD 45 CF       JSR    $45CF
4438: 10 8C 57 CB    CMPY   #$57CB
443C: 26 0A          BNE    $4448
443E: 9E 54          LDX    $54
4440: A6 84          LDA    ,X
4442: 84 0F          ANDA   #$0F
4444: 81 02          CMPA   #$02
4446: 27 1F          BEQ    $4467
4448: 4F             CLRA
4449: CB 01          ADDB   #$01
444B: 34 06          PSHS   D
444D: 0C 70          INC    $70
444F: DC 50          LDD    $50
4451: E3 E4          ADDD   ,S
4453: DD 50          STD    $50
4455: DC 5E          LDD    $5E
4457: E3 E4          ADDD   ,S
4459: DD 5E          STD    $5E
445B: DC 52          LDD    $52
445D: E3 E4          ADDD   ,S
445F: DD 52          STD    $52
4461: 32 62          LEAS   $2,S
4463: 86 08          LDA    #$08
4465: 97 4B          STA    $4B
4467: 39             RTS
4468: 96 6C          LDA    $6C
446A: 91 6B          CMPA   $6B
446C: 25 C1          BCS    $442F
446E: 20 00          BRA    $4470
4470: 4F             CLRA
4471: D6 6B          LDB    $6B
4473: C1 FF          CMPB   #$FF
4475: 26 03          BNE    $447A
4477: BD 45 CF       JSR    $45CF
447A: CB 01          ADDB   #$01
447C: 34 06          PSHS   D
447E: DC 4E          LDD    $4E
4480: E3 E4          ADDD   ,S
4482: DD 4E          STD    $4E
4484: DC 5A          LDD    $5A
4486: E3 E1          ADDD   ,S++
4488: DD 5A          STD    $5A
448A: 86 04          LDA    #$04
448C: 97 4B          STA    $4B
448E: 0C 70          INC    $70
4490: 39             RTS
4491: 96 6B          LDA    $6B
4493: 91 6A          CMPA   $6A
4495: 25 D9          BCS    $4470
4497: 7E 43 63       JMP    $4363
449A: D6 6C          LDB    $6C
449C: C1 FF          CMPB   #$FF
449E: 26 03          BNE    $44A3
44A0: BD 45 CF       JSR    $45CF
44A3: 4F             CLRA
44A4: C3 00 01       ADDD   #$0001
44A7: 34 06          PSHS   D
44A9: 0C 6E          INC    $6E
44AB: DC 50          LDD    $50
44AD: E3 E4          ADDD   ,S
44AF: DD 50          STD    $50
44B1: DC 5E          LDD    $5E
44B3: E3 E4          ADDD   ,S
44B5: DD 5E          STD    $5E
44B7: DC 52          LDD    $52
44B9: E3 E4          ADDD   ,S
44BB: 83 00 01       SUBD   #$0001
44BE: DD 52          STD    $52
44C0: DC 60          LDD    $60
44C2: 83 00 01       SUBD   #$0001
44C5: DD 60          STD    $60
44C7: 32 62          LEAS   $2,S
44C9: 39             RTS
44CA: 4D             TSTA
44CB: 27 02          BEQ    $44CF
44CD: 97 4A          STA    $4A
44CF: 8E 44 E7       LDX    #$44E7
44D2: 48             ASLA
44D3: 30 86          LEAX   A,X
44D5: A6 01          LDA    $1,X
44D7: D6 58          LDB    $58
44D9: 5A             DECB
44DA: 27 04          BEQ    $44E0
44DC: 44             LSRA
44DD: 5A             DECB
44DE: 26 FC          BNE    $44DC
44E0: E6 84          LDB    ,X
44E2: AA C5          ORA    B,U
44E4: A7 C5          STA    B,U
44E6: 39             RTS
44E7: 03 80          COM    $80
44E9: 03 08          COM    $08
44EB: 03 08          COM    $08
44ED: 03 08          COM    $08
44EF: 00 00          NEG    $00
44F1: 00 00          NEG    $00
44F3: 00 00          NEG    $00
44F5: 00 00          NEG    $00
44F7: 02 80 02       AIM    #$80;$02
44FA: 80 02          SUBA   #$02
44FC: 80 02          SUBA   #$02
44FE: 80 02          SUBA   #$02
4500: 80 00          SUBA   #$00
4502: 00 00          NEG    $00
4504: 00 00          NEG    $00
4506: 00 8E          NEG    $8E
4508: 07 5B          ASR    $5B
450A: 9F 56          STX    $56
450C: C6 10          LDB    #$10
450E: 34 04          PSHS   B
4510: 6D 84          TST    ,X
4512: 2A 1A          BPL    $452E
4514: A6 88 17       LDA    $17,X
4517: 8E 45 3B       LDX    #$453B
451A: C6 FF          LDB    #$FF
451C: A1 84          CMPA   ,X
451E: 27 08          BEQ    $4528
4520: 30 05          LEAX   $5,X
4522: E1 84          CMPB   ,X
4524: 26 F6          BNE    $451C
4526: 20 06          BRA    $452E
4528: 10 AE 03       LDY    $3,X
452B: AD 98 01       JSR    [$01,X]
452E: 9E 56          LDX    $56
4530: 30 88 21       LEAX   $21,X
4533: 9F 56          STX    $56
4535: 35 04          PULS   B
4537: 5A             DECB
4538: 26 D4          BNE    $450E
453A: 39             RTS
453B: 01 45 46       OIM    #$45;$46
453E: 45             FCB    $45
453F: B9 04 45       ADCA   $0445
4542: AC 45          CMPX   $5,U
4544: C4 FF          ANDB   #$FF
4546: C6 01          LDB    #$01
4548: D7 58          STB    $58
454A: BD 40 E6       JSR    $40E6
454D: 4D             TSTA
454E: 27 0C          BEQ    $455C
4550: BD 45 65       JSR    $4565
4553: BD 41 E0       JSR    $41E0
4556: 4D             TSTA
4557: 27 03          BEQ    $455C
4559: BD 42 51       JSR    $4251
455C: 0C 58          INC    $58
455E: D6 58          LDB    $58
4560: C1 05          CMPB   #$05
4562: 25 E6          BCS    $454A
4564: 39             RTS
4565: 9E 56          LDX    $56
4567: EC 06          LDD    $6,X
4569: E3 22          ADDD   $2,Y
456B: DD 64          STD    $64
456D: EC 08          LDD    $8,X
456F: E3 24          ADDD   $4,Y
4571: 93 64          SUBD   $64
4573: D3 64          ADDD   $64
4575: DD 66          STD    $66
4577: A6 29          LDA    $9,Y
4579: 84 C0          ANDA   #$C0
457B: 81 40          CMPA   #$40
457D: 24 10          BCC    $458F
457F: EC 04          LDD    $4,X
4581: E3 A4          ADDD   ,Y
4583: 93 64          SUBD   $64
4585: DD 62          STD    $62
4587: DC 5A          LDD    $5A
4589: 93 5E          SUBD   $5E
458B: DD 5C          STD    $5C
458D: 20 1C          BRA    $45AB
458F: 26 10          BNE    $45A1
4591: EC 04          LDD    $4,X
4593: E3 A4          ADDD   ,Y
4595: D3 64          ADDD   $64
4597: DD 62          STD    $62
4599: DC 5A          LDD    $5A
459B: D3 5E          ADDD   $5E
459D: DD 5C          STD    $5C
459F: 20 0A          BRA    $45AB
45A1: EC 04          LDD    $4,X
45A3: E3 A4          ADDD   ,Y
45A5: DD 62          STD    $62
45A7: DC 5A          LDD    $5A
45A9: DD 5C          STD    $5C
45AB: 39             RTS
45AC: 9E 56          LDX    $56
45AE: E6 88 1B       LDB    $1B,X
45B1: C4 7F          ANDB   #$7F
45B3: 26 03          BNE    $45B8
45B5: BD 45 46       JSR    $4546
45B8: 39             RTS
45B9: FF F4 FF       STU    $F4FF
45BC: E4 FF F0 48    ANDB   [$F048]
45C0: 1A 10          ORCC   #$10
45C2: 48             ASLA
45C3: 01 00 00       OIM    #$00;$00
45C6: 00 00          NEG    $00
45C8: 00 00          NEG    $00
45CA: 18             FCB    $18
45CB: 10 18          FCB    $10,$18
45CD: 8B 1F 34       ADDW   #$1F34
45D0: 16 AE 64       LBRA   $F437
45D3: CC 25 32       LDD    #$2532
45D6: FD 21 D0       STD    $21D0
45D9: F7 21 D2       STB    $21D2
45DC: 35 06          PULS   D
45DE: 12             NOP
45DF: 12             NOP
45E0: 12             NOP
45E1: 7E 45 DE       JMP    $45DE
45E4: 35 10          PULS   X
45E6: 39             RTS
45E7: 8A 02          ORA    #$02
45E9: 97 00          STA    $00
45EB: CC 00 00       LDD    #$0000
45EE: 93 03          SUBD   $03
45F0: DD 03          STD    $03
45F2: EC 24          LDD    $4,Y
45F4: A3 04          SUBD   $4,X
45F6: DD 01          STD    $01
45F8: 2A 0D          BPL    $4607
45FA: 96 00          LDA    $00
45FC: 8A 01          ORA    #$01
45FE: 97 00          STA    $00
4600: CC 00 00       LDD    #$0000
4603: 93 01          SUBD   $01
4605: DD 01          STD    $01
4607: 35 FE          PULS   D,DP,X,Y,U,PC
4609: 34 7E          PSHS   U,Y,X,DP,D
460B: 10 9E 00       LDY    $00
460E: 0F 00          CLR    $00
4610: EC 26          LDD    $6,Y
4612: A3 06          SUBD   $6,X
4614: DD 03          STD    $03
4616: 2A 0D          BPL    $4625
4618: 96 00          LDA    $00
461A: 8A 02          ORA    #$02
461C: 97 00          STA    $00
461E: CC 00 00       LDD    #$0000
4621: 93 03          SUBD   $03
4623: DD 03          STD    $03
4625: EC 24          LDD    $4,Y
4627: A3 04          SUBD   $4,X
4629: DD 01          STD    $01
462B: 2A 0D          BPL    $463A
462D: 96 00          LDA    $00
462F: 8A 01          ORA    #$01
4631: 97 00          STA    $00
4633: CC 00 00       LDD    #$0000
4636: 93 01          SUBD   $01
4638: DD 01          STD    $01
463A: EC 28          LDD    $8,Y
463C: A3 08          SUBD   $8,X
463E: DD 05          STD    $05
4640: 2A 0D          BPL    $464F
4642: 96 00          LDA    $00
4644: 8A 04          ORA    #$04
4646: 97 00          STA    $00
4648: CC 00 00       LDD    #$0000
464B: 93 05          SUBD   $05
464D: DD 05          STD    $05
464F: 35 FE          PULS   D,DP,X,Y,U,PC
4651: 34 7E          PSHS   U,Y,X,DP,D
4653: 32 71          LEAS   -$F,S
4655: BD 45 D6       JSR    $45D6
4658: BD 46 A2       JSR    $46A2
465B: 25 3D          BCS    $469A
465D: D6 02          LDB    $02
465F: 0D 01          TST    $01
4661: 27 02          BEQ    $4665
4663: C6 FF          LDB    #$FF
4665: 4F             CLRA
4666: ED E4          STD    ,S
4668: D6 04          LDB    $04
466A: 0D 03          TST    $03
466C: 27 02          BEQ    $4670
466E: C6 FF          LDB    #$FF
4670: 4F             CLRA
4671: ED 62          STD    $2,S
4673: E3 E4          ADDD   ,S
4675: ED 64          STD    $4,S
4677: E6 61          LDB    $1,S
4679: 96 00          LDA    $00
467B: 27 06          BEQ    $4683
467D: 81 03          CMPA   #$03
467F: 27 02          BEQ    $4683
4681: E6 63          LDB    $3,S
4683: 86 40          LDA    #$40
4685: 3D             MUL
4686: 10 AE 64       LDY    $4,S
4689: BD 48 B0       JSR    $48B0
468C: ED 64          STD    $4,S
468E: 10 8E 46 9E    LDY    #$469E
4692: 96 00          LDA    $00
4694: A6 A6          LDA    A,Y
4696: AB 65          ADDA   $5,S
4698: 1C FE          ANDCC  #$FE
469A: 32 6F          LEAS   $F,S
469C: 35 FE          PULS   D,DP,X,Y,U,PC
469E: 00 40          NEG    $40
46A0: C0 80          SUBB   #$80
46A2: 32 7C          LEAS   -$4,S
46A4: EC 04          LDD    $4,X
46A6: ED E4          STD    ,S
46A8: EC 06          LDD    $6,X
46AA: E3 08          ADDD   $8,X
46AC: ED 62          STD    $2,S
46AE: EC E4          LDD    ,S
46B0: C3 00 20       ADDD   #$0020
46B3: 81 FF          CMPA   #$FF
46B5: 27 25          BEQ    $46DC
46B7: 10 93 3C       CMPD   $3C
46BA: 25 20          BCS    $46DC
46BC: DC 3C          LDD    $3C
46BE: C3 01 20       ADDD   #$0120
46C1: 10 A3 E4       CMPD   ,S
46C4: 25 16          BCS    $46DC
46C6: EC 62          LDD    $2,S
46C8: C3 00 20       ADDD   #$0020
46CB: 81 FF          CMPA   #$FF
46CD: 27 0D          BEQ    $46DC
46CF: 10 93 3F       CMPD   $3F
46D2: 25 08          BCS    $46DC
46D4: DC 3F          LDD    $3F
46D6: C3 01 20       ADDD   #$0120
46D9: 10 A3 62       CMPD   $2,S
46DC: 32 64          LEAS   $4,S
46DE: 39             RTS
46DF: 34 34          PSHS   Y,X,B
46E1: 32 7B          LEAS   -$5,S
46E3: BD 45 D6       JSR    $45D6
46E6: 96 00          LDA    $00
46E8: 1F 89          TFR    A,B
46EA: 48             ASLA
46EB: 48             ASLA
46EC: 48             ASLA
46ED: 84 08          ANDA   #$08
46EF: 97 00          STA    $00
46F1: 58             ASLB
46F2: C4 04          ANDB   #$04
46F4: DA 00          ORB    $00
46F6: D7 00          STB    $00
46F8: DC 01          LDD    $01
46FA: 10 93 03       CMPD   $03
46FD: 25 0F          BCS    $470E
46FF: 0C 00          INC    $00
4701: 0C 00          INC    $00
4703: 44             LSRA
4704: 56             RORB
4705: 10 93 03       CMPD   $03
4708: 24 0F          BCC    $4719
470A: 0C 00          INC    $00
470C: 20 0B          BRA    $4719
470E: DC 03          LDD    $03
4710: 44             LSRA
4711: 56             RORB
4712: 10 93 01       CMPD   $01
4715: 24 02          BCC    $4719
4717: 0C 00          INC    $00
4719: 10 8E 47 25    LDY    #$4725
471D: D6 00          LDB    $00
471F: A6 A5          LDA    B,Y
4721: 32 65          LEAS   $5,S
4723: 35 B4          PULS   B,X,Y,PC
4725: 00 20          NEG    $20
4727: 40             NEGA
4728: 20 80          BRA    $46AA
472A: 60 40          NEG    $0,U
472C: 60 00          NEG    $0,X
472E: E0 C0          SUBB   ,U+
4730: E0 80          SUBB   ,X+
4732: A0 C0          SUBA   ,U+
4734: A0 34          SUBA   -$C,Y
4736: 66 32          ROR    -$E,Y
4738: 7F EE 88       CLR    $EE88
473B: 2D A6          BLT    $46E3
473D: 02 84 7F       AIM    #$84;$7F
4740: 81 7F          CMPA   #$7F
4742: 10 27 00 7F    LBEQ   $47C5
4746: 10 8E 02 81    LDY    #$0281
474A: B6 03 A1       LDA    $03A1
474D: 81 10          CMPA   #$10
474F: 10 24 00 72    LBCC   $47C5
4753: C6 08          LDB    #$08
4755: 3D             MUL
4756: 31 AB          LEAY   D,Y
4758: A6 88 16       LDA    $16,X
475B: 84 06          ANDA   #$06
475D: 27 0C          BEQ    $476B
475F: E6 41          LDB    $1,U
4761: E7 A4          STB    ,Y
4763: 84 02          ANDA   #$02
4765: 27 08          BEQ    $476F
4767: A6 42          LDA    $2,U
4769: 20 06          BRA    $4771
476B: A6 01          LDA    $1,X
476D: A7 A4          STA    ,Y
476F: A6 02          LDA    $2,X
4771: A7 21          STA    $1,Y
4773: EC 04          LDD    $4,X
4775: ED 22          STD    $2,Y
4777: EC 06          LDD    $6,X
4779: ED 24          STD    $4,Y
477B: EC 08          LDD    $8,X
477D: ED 26          STD    $6,Y
477F: A6 88 1B       LDA    $1B,X
4782: 84 3F          ANDA   #$3F
4784: 81 06          CMPA   #$06
4786: 27 16          BEQ    $479E
4788: 81 0A          CMPA   #$0A
478A: 27 12          BEQ    $479E
478C: 81 08          CMPA   #$08
478E: 27 0E          BEQ    $479E
4790: 86 07          LDA    #$07
4792: 26 22          BNE    $47B6
4794: A6 01          LDA    $1,X
4796: 81 04          CMPA   #$04
4798: 25 1C          BCS    $47B6
479A: 81 08          CMPA   #$08
479C: 24 18          BCC    $47B6
479E: A6 01          LDA    $1,X
47A0: 81 02          CMPA   #$02
47A2: 25 08          BCS    $47AC
47A4: A6 41          LDA    $1,U
47A6: 81 01          CMPA   #$01
47A8: 26 0C          BNE    $47B6
47AA: 27 04          BEQ    $47B0
47AC: 81 00          CMPA   #$00
47AE: 27 06          BEQ    $47B6
47B0: A6 A4          LDA    ,Y
47B2: 8A 80          ORA    #$80
47B4: A7 A4          STA    ,Y
47B6: CE 03 81       LDU    #$0381
47B9: B6 03 A1       LDA    $03A1
47BC: C6 02          LDB    #$02
47BE: 3D             MUL
47BF: 10 AF CB       STY    D,U
47C2: 7C 03 A1       INC    $03A1
47C5: 32 61          LEAS   $1,S
47C7: 35 E6          PULS   D,Y,U,PC
47C9: 34 36          PSHS   Y,X,D
47CB: D6 35          LDB    $35
47CD: C1 04          CMPB   #$04
47CF: 24 07          BCC    $47D8
47D1: 8E 00 31       LDX    #$0031
47D4: A7 85          STA    B,X
47D6: 0C 35          INC    $35
47D8: 35 B6          PULS   D,X,Y,PC
47DA: CC 00 00       LDD    #$0000
47DD: A3 0F          SUBD   $F,X
47DF: ED 0F          STD    $F,X
47E1: 39             RTS
47E2: 67 0F          ASR    $F,X
47E4: 66 88 10       ROR    $10,X
47E7: 39             RTS
47E8: A6 0F          LDA    $F,X
47EA: 2B 0A          BMI    $47F6
47EC: 81 01          CMPA   #$01
47EE: 24 12          BCC    $4802
47F0: CC 01 00       LDD    #$0100
47F3: ED 0F          STD    $F,X
47F5: 39             RTS
47F6: EC 0F          LDD    $F,X
47F8: 83 00 00       SUBD   #$0000
47FB: 25 05          BCS    $4802
47FD: CC FF 00       LDD    #$FF00
4800: 00 00          NEG    $00
4802: 00 00          NEG    $00
4804: 00 00          NEG    $00
4806: 00 00          NEG    $00
4808: 00 00          NEG    $00
480A: 00 00          NEG    $00
480C: 00 00          NEG    $00
480E: 00 00          NEG    $00
4810: 00 00          NEG    $00
4812: 00 00          NEG    $00
4814: 00 00          NEG    $00
4816: 00 00          NEG    $00
4818: 00 00          NEG    $00
481A: 00 00          NEG    $00
481C: 00 00          NEG    $00
481E: 00 00          NEG    $00
4820: 58             ASLB
4821: F4 59 34       ANDB   $5934
4824: 59             ROLB
4825: 74 59 B4       LSR    $59B4
4828: 5A             DECB
4829: 74 5A B4       LSR    $5AB4
482C: 5B             FCB    $5B
482D: 74 5B B4       LSR    $5BB4
4830: 5C             INCB
4831: 74 5C B4       LSR    $5CB4
4834: 5D             TSTB
4835: F4 5E 34       ANDB   $5E34
4838: 5E             FCB    $5E
4839: 74 5E B4       LSR    $5EB4
483C: 5F             CLRB
483D: 74 5F B4       LSR    $5FB4
4840: 60 74          NEG    -$C,S
4842: 60 B4          NEG    [,Y]
4844: 61 74 61       OIM    #$74;$1,S
4847: B4 62 74       ANDA   $6274
484A: 62 B4 63       AIM    #$B4;$3,S
484D: 74 63 B4       LSR    $63B4
4850: 64 74          LSR    -$C,S
4852: 64 B4          LSR    [,Y]
4854: 6B FB 6C       TIM    #$FB;$C,S
4857: 3B             RTI
4858: 6C 7B          INC    -$5,S
485A: 6C BB          INC    [D,Y]
485C: 6C FB          INC    [D,S]
485E: 6D 3B          TST    -$5,Y
4860: 6D 7B          TST    -$5,S
4862: 6D BB          TST    [D,Y]
4864: 6D FB          TST    [D,S]
4866: 6E 3B          JMP    -$5,Y
4868: 6E 7B          JMP    -$5,S
486A: 6E BB          JMP    [D,Y]
486C: 6F 7B          CLR    -$5,S
486E: 6F BB          CLR    [D,Y]
4870: 00 00          NEG    $00
4872: 00 00          NEG    $00
4874: 00 00          NEG    $00
4876: 00 00          NEG    $00
4878: 00 00          NEG    $00
487A: 00 00          NEG    $00
487C: 00 00          NEG    $00
487E: 00 00          NEG    $00
4880: 49             ROLA
4881: 80 49          SUBA   #$49
4883: C0 4A          SUBB   #$4A
4885: 00 4A          NEG    $4A
4887: 40             NEGA
4888: 4B             FCB    $4B
4889: 00 4B          NEG    $4B
488B: 40             NEGA
488C: 4C             INCA
488D: 00 4C          NEG    $4C
488F: 40             NEGA
4890: 4D             TSTA
4891: 00 4D          NEG    $4D
4893: 40             NEGA
4894: 50             NEGB
4895: 3B             RTI
4896: 50             NEGB
4897: 7B 51 3B 51    TIM    #$51,$3B51
489B: 7B 52 3B 52    TIM    #$52,$3B52
489F: 7B 53 3B 53    TIM    #$53,$3B53
48A3: 7B 59 F4 5A    TIM    #$59,$F45A
48A7: 34 5A          PSHS   U,X,DP,A
48A9: F4 5B 34       ANDB   $5B34
48AC: 5B             FCB    $5B
48AD: F4 5C 34       ANDB   $5C34
48B0: 5C             INCB
48B1: F4 5D 34       ANDB   $5D34
48B4: 5D             TSTB
48B5: 74 5D B4       LSR    $5DB4
48B8: 5E             FCB    $5E
48B9: F4 5F 34       ANDB   $5F34
48BC: 5F             CLRB
48BD: F4 60 34       ANDB   $6034
48C0: 60 F4          NEG    [,S]
48C2: 61 34 61       OIM    #$34;$1,S
48C5: F4 62 34       ANDB   $6234
48C8: 62 F4 63       AIM    #$F4;$3,S
48CB: 34 63          PSHS   U,Y,A,CC
48CD: F4 64 34       ANDB   $6434
48D0: 64 F4          LSR    [,S]
48D2: 65 34 00       EIM    #$34;$0,X
48D5: 00 00          NEG    $00
48D7: 00 00          NEG    $00
48D9: 00 00          NEG    $00
48DB: 00 00          NEG    $00
48DD: 00 00          NEG    $00
48DF: 00 00          NEG    $00
48E1: 00 00          NEG    $00
48E3: 00 00          NEG    $00
48E5: 00 00          NEG    $00
48E7: 00 6E          NEG    $6E
48E9: FB 6F 3B       ADDB   $6F3B
48EC: 6F FB          CLR    [D,S]
48EE: 70 3B 00       NEG    $3B00
48F1: 00 00          NEG    $00
48F3: 00 00          NEG    $00
48F5: 00 00          NEG    $00
48F7: 00 00          NEG    $00
48F9: 00 00          NEG    $00
48FB: 00 00          NEG    $00
48FD: 00 00          NEG    $00
48FF: 00 00          NEG    $00
4901: 00 00          NEG    $00
4903: 00 4A          NEG    $4A
4905: 80 4A          SUBA   #$4A
4907: C0 4B          SUBB   #$4B
4909: 80 4B          SUBA   #$4B
490B: C0 4C          SUBB   #$4C
490D: 80 4C          SUBA   #$4C
490F: C0 00          SUBB   #$00
4911: 00 00          NEG    $00
4913: 00 50          NEG    $50
4915: BB 50 FB       ADDA   $50FB
4918: 51             FCB    $51
4919: BB 51 FB       ADDA   $51FB
491C: 52             FCB    $52
491D: BB 52 FB       ADDA   $52FB
4920: 53             COMB
4921: BB 53 FB       ADDA   $53FB
4924: 00 00          NEG    $00
4926: 00 00          NEG    $00
4928: 00 00          NEG    $00
492A: 00 00          NEG    $00
492C: 00 00          NEG    $00
492E: 00 00          NEG    $00
4930: 00 00          NEG    $00
4932: 00 00          NEG    $00
4934: 00 00          NEG    $00
4936: 00 00          NEG    $00
4938: 00 00          NEG    $00
493A: 00 00          NEG    $00
493C: 00 00          NEG    $00
493E: 00 00          NEG    $00
4940: 00 00          NEG    $00
4942: 00 00          NEG    $00
4944: 00 00          NEG    $00
4946: 00 00          NEG    $00
4948: 00 00          NEG    $00
494A: 00 00          NEG    $00
494C: 00 00          NEG    $00
494E: 00 00          NEG    $00
4950: 00 00          NEG    $00
4952: 00 00          NEG    $00
4954: 00 00          NEG    $00
4956: 00 00          NEG    $00
4958: 00 00          NEG    $00
495A: 00 00          NEG    $00
495C: 00 00          NEG    $00
495E: 00 00          NEG    $00
4960: 00 00          NEG    $00
4962: 00 00          NEG    $00
4964: 00 00          NEG    $00
4966: 00 00          NEG    $00
4968: 00 00          NEG    $00
496A: 00 00          NEG    $00
496C: 00 00          NEG    $00
496E: 00 00          NEG    $00
4970: 00 00          NEG    $00
4972: 00 00          NEG    $00
4974: 00 00          NEG    $00
4976: 00 00          NEG    $00
4978: 00 00          NEG    $00
497A: 00 00          NEG    $00
497C: 00 00          NEG    $00
497E: 00 00          NEG    $00
4980: 4D             TSTA
4981: 94 4D          ANDA   $4D
4983: 8E 4D 8E       LDX    #$4D8E
4986: 4D             TSTA
4987: 8A 4D          ORA    #$4D
4989: 8A 4D          ORA    #$4D
498B: 8A 4D          ORA    #$4D
498D: 8A 4D          ORA    #$4D
498F: 84 4D          ANDA   #$4D
4991: 84 4D          ANDA   #$4D
4993: 80 4D          SUBA   #$4D
4995: 80 4D          SUBA   #$4D
4997: 80 4D          SUBA   #$4D
4999: 80 4D          SUBA   #$4D
499B: 80 4D          SUBA   #$4D
499D: 80 4D          SUBA   #$4D
499F: 80 4D          SUBA   #$4D
49A1: 80 4D          SUBA   #$4D
49A3: 80 4D          SUBA   #$4D
49A5: 80 4D          SUBA   #$4D
49A7: 80 4D          SUBA   #$4D
49A9: 80 4D          SUBA   #$4D
49AB: 80 4D          SUBA   #$4D
49AD: 80 4D          SUBA   #$4D
49AF: 80 4D          SUBA   #$4D
49B1: 80 4D          SUBA   #$4D
49B3: 80 4D          SUBA   #$4D
49B5: 80 4D          SUBA   #$4D
49B7: 80 4D          SUBA   #$4D
49B9: 80 4D          SUBA   #$4D
49BB: 80 4D          SUBA   #$4D
49BD: 80 4D          SUBA   #$4D
49BF: 80 4D          SUBA   #$4D
49C1: AC 4D          CMPX   $D,U
49C3: A6 4D          LDA    $D,U
49C5: A6 4D          LDA    $D,U
49C7: A2 4D          SBCA   $D,U
49C9: A2 4D          SBCA   $D,U
49CB: A2 4D          SBCA   $D,U
49CD: A2 4D          SBCA   $D,U
49CF: 9C 4D          CMPX   $4D
49D1: 9C 4D          CMPX   $4D
49D3: 98 4D          EORA   $4D
49D5: 98 4D          EORA   $4D
49D7: 98 4D          EORA   $4D
49D9: 98 4D          EORA   $4D
49DB: 98 4D          EORA   $4D
49DD: 98 4D          EORA   $4D
49DF: 98 4D          EORA   $4D
49E1: 98 4D          EORA   $4D
49E3: 98 4D          EORA   $4D
49E5: 98 4D          EORA   $4D
49E7: 98 4D          EORA   $4D
49E9: 98 4D          EORA   $4D
49EB: 98 4D          EORA   $4D
49ED: 98 4D          EORA   $4D
49EF: 98 4D          EORA   $4D
49F1: 98 4D          EORA   $4D
49F3: 98 4D          EORA   $4D
49F5: 98 4D          EORA   $4D
49F7: 98 4D          EORA   $4D
49F9: 98 4D          EORA   $4D
49FB: 98 4D          EORA   $4D
49FD: 98 4D          EORA   $4D
49FF: 98 4D          EORA   $4D
4A01: C4 4D          ANDB   #$4D
4A03: BE 4D BE       LDX    $4DBE
4A06: 4D             TSTA
4A07: BA 4D BA       ORA    $4DBA
4A0A: 4D             TSTA
4A0B: BA 4D BA       ORA    $4DBA
4A0E: 4D             TSTA
4A0F: B4 4D B4       ANDA   $4DB4
4A12: 4D             TSTA
4A13: B0 4D B0       SUBA   $4DB0
4A16: 4D             TSTA
4A17: B0 4D B0       SUBA   $4DB0
4A1A: 4D             TSTA
4A1B: B0 4D B0       SUBA   $4DB0
4A1E: 4D             TSTA
4A1F: B0 4D B0       SUBA   $4DB0
4A22: 4D             TSTA
4A23: B0 4D B0       SUBA   $4DB0
4A26: 4D             TSTA
4A27: B0 4D B0       SUBA   $4DB0
4A2A: 4D             TSTA
4A2B: B0 4D B0       SUBA   $4DB0
4A2E: 4D             TSTA
4A2F: B0 4D B0       SUBA   $4DB0
4A32: 4D             TSTA
4A33: B0 4D B0       SUBA   $4DB0
4A36: 4D             TSTA
4A37: B0 4D B0       SUBA   $4DB0
4A3A: 4D             TSTA
4A3B: B0 4D B0       SUBA   $4DB0
4A3E: 4D             TSTA
4A3F: B0 4D EE       SUBA   $4DEE
4A42: 4D             TSTA
4A43: E8 4D          EORB   $D,U
4A45: E8 4D          EORB   $D,U
4A47: E4 4D          ANDB   $D,U
4A49: E4 4D          ANDB   $D,U
4A4B: E4 4D          ANDB   $D,U
4A4D: E4 4D          ANDB   $D,U
4A4F: DC 4D          LDD    $4D
4A51: DC 4D          LDD    $4D
4A53: D6 4D          LDB    $4D
4A55: D6 4D          LDB    $4D
4A57: D6 4D          LDB    $4D
4A59: D6 4D          LDB    $4D
4A5B: D6 4D          LDB    $4D
4A5D: D6 4D          LDB    $4D
4A5F: D6 4D          LDB    $4D
4A61: D6 4D          LDB    $4D
4A63: D6 4D          LDB    $4D
4A65: D6 4D          LDB    $4D
4A67: D6 4D          LDB    $4D
4A69: D6 4D          LDB    $4D
4A6B: D6 4D          LDB    $4D
4A6D: D6 4D          LDB    $4D
4A6F: CE 4D CE       LDU    #$4DCE
4A72: 4D             TSTA
4A73: C8 4D          EORB   #$4D
4A75: C8 4D          EORB   #$4D
4A77: C8 4D          EORB   #$4D
4A79: C8 4D          EORB   #$4D
4A7B: C8 4D          EORB   #$4D
4A7D: C8 4D          EORB   #$4D
4A7F: C8 4D          EORB   #$4D
4A81: F2 4D F2       SBCB   $4DF2
4A84: 4D             TSTA
4A85: F2 4D F2       SBCB   $4DF2
4A88: 4D             TSTA
4A89: F2 4D F2       SBCB   $4DF2
4A8C: 4D             TSTA
4A8D: F2 4D F2       SBCB   $4DF2
4A90: 4D             TSTA
4A91: F2 4D F2       SBCB   $4DF2
4A94: 4D             TSTA
4A95: F2 4D F2       SBCB   $4DF2
4A98: 4D             TSTA
4A99: F2 4D F2       SBCB   $4DF2
4A9C: 4D             TSTA
4A9D: F2 4D F2       SBCB   $4DF2
4AA0: 4D             TSTA
4AA1: F2 4D F2       SBCB   $4DF2
4AA4: 4D             TSTA
4AA5: F2 4D F2       SBCB   $4DF2
4AA8: 4D             TSTA
4AA9: F2 4D F2       SBCB   $4DF2
4AAC: 4D             TSTA
4AAD: F2 4D F2       SBCB   $4DF2
4AB0: 4D             TSTA
4AB1: F2 4D F2       SBCB   $4DF2
4AB4: 4D             TSTA
4AB5: F2 4D F2       SBCB   $4DF2
4AB8: 4D             TSTA
4AB9: F2 4D F2       SBCB   $4DF2
4ABC: 4D             TSTA
4ABD: F2 4D F2       SBCB   $4DF2
4AC0: 4D             TSTA
4AC1: F2 4D F2       SBCB   $4DF2
4AC4: 4D             TSTA
4AC5: F2 4D F2       SBCB   $4DF2
4AC8: 4D             TSTA
4AC9: F2 4D F2       SBCB   $4DF2
4ACC: 4D             TSTA
4ACD: F2 4D F2       SBCB   $4DF2
4AD0: 4D             TSTA
4AD1: F2 4D F2       SBCB   $4DF2
4AD4: 4D             TSTA
4AD5: F2 4D F2       SBCB   $4DF2
4AD8: 4D             TSTA
4AD9: F2 4D F2       SBCB   $4DF2
4ADC: 4D             TSTA
4ADD: F2 4D F2       SBCB   $4DF2
4AE0: 4D             TSTA
4AE1: F2 4D F2       SBCB   $4DF2
4AE4: 4D             TSTA
4AE5: F2 4D F2       SBCB   $4DF2
4AE8: 4D             TSTA
4AE9: F2 4D F2       SBCB   $4DF2
4AEC: 4D             TSTA
4AED: F2 4D F2       SBCB   $4DF2
4AF0: 4D             TSTA
4AF1: F2 4D F2       SBCB   $4DF2
4AF4: 4D             TSTA
4AF5: F2 4D F2       SBCB   $4DF2
4AF8: 4D             TSTA
4AF9: F2 4D F2       SBCB   $4DF2
4AFC: 4D             TSTA
4AFD: F2 4D F2       SBCB   $4DF2
4B00: 4E             FCB    $4E
4B01: 22 4E          BHI    $4B51
4B03: 1C 4E          ANDCC  #$4E
4B05: 1C 4E          ANDCC  #$4E
4B07: 18             FCB    $18
4B08: 4E             FCB    $4E
4B09: 18             FCB    $18
4B0A: 4E             FCB    $4E
4B0B: 18             FCB    $18
4B0C: 4E             FCB    $4E
4B0D: 18             FCB    $18
4B0E: 4E             FCB    $4E
4B0F: 10 4E          FCB    $10,$4E
4B11: 10             FCB    $10
4B12: 4E             FCB    $4E
4B13: 0A 4E          DEC    $4E
4B15: 0A 4E          DEC    $4E
4B17: 0A 4E          DEC    $4E
4B19: 0A 4E          DEC    $4E
4B1B: 0A 4E          DEC    $4E
4B1D: 0A 4E          DEC    $4E
4B1F: 0A 4E          DEC    $4E
4B21: 0A 4E          DEC    $4E
4B23: 0A 4E          DEC    $4E
4B25: 0A 4E          DEC    $4E
4B27: 02 4E 02       AIM    #$4E;$02
4B2A: 4E             FCB    $4E
4B2B: 02 4E 02       AIM    #$4E;$02
4B2E: 4D             TSTA
4B2F: FA 4D FA       ORB    $4DFA
4B32: 4D             TSTA
4B33: F6 4D F6       LDB    $4DF6
4B36: 4D             TSTA
4B37: F6 4D F6       LDB    $4DF6
4B3A: 4D             TSTA
4B3B: F6 4D F6       LDB    $4DF6
4B3E: 4D             TSTA
4B3F: F6 4E 44       LDB    $4E44
4B42: 4E             FCB    $4E
4B43: 3E             FCB    $3E
4B44: 4E             FCB    $4E
4B45: 3E             FCB    $3E
4B46: 4E             FCB    $4E
4B47: 3A             ABX
4B48: 4E             FCB    $4E
4B49: 3A             ABX
4B4A: 4E             FCB    $4E
4B4B: 3A             ABX
4B4C: 4E             FCB    $4E
4B4D: 3A             ABX
4B4E: 4E             FCB    $4E
4B4F: 34 4E          PSHS   U,DP,D
4B51: 34 4E          PSHS   U,DP,D
4B53: 30 4E          LEAX   $E,U
4B55: 30 4E          LEAX   $E,U
4B57: 30 4E          LEAX   $E,U
4B59: 30 4E          LEAX   $E,U
4B5B: 30 4E          LEAX   $E,U
4B5D: 30 4E          LEAX   $E,U
4B5F: 30 4E          LEAX   $E,U
4B61: 30 4E          LEAX   $E,U
4B63: 30 4E          LEAX   $E,U
4B65: 30 4E          LEAX   $E,U
4B67: 30 4E          LEAX   $E,U
4B69: 30 4E          LEAX   $E,U
4B6B: 30 4E          LEAX   $E,U
4B6D: 30 4E          LEAX   $E,U
4B6F: 2A 4E          BPL    $4BBF
4B71: 2A 4E          BPL    $4BC1
4B73: 26 4E          BNE    $4BC3
4B75: 26 4E          BNE    $4BC5
4B77: 26 4E          BNE    $4BC7
4B79: 26 4E          BNE    $4BC9
4B7B: 26 4E          BNE    $4BCB
4B7D: 26 4E          BNE    $4BCD
4B7F: 26 4E          BNE    $4BCF
4B81: 48             ASLA
4B82: 4E             FCB    $4E
4B83: 48             ASLA
4B84: 4E             FCB    $4E
4B85: 48             ASLA
4B86: 4E             FCB    $4E
4B87: 48             ASLA
4B88: 4E             FCB    $4E
4B89: 48             ASLA
4B8A: 4E             FCB    $4E
4B8B: 48             ASLA
4B8C: 4E             FCB    $4E
4B8D: 48             ASLA
4B8E: 4E             FCB    $4E
4B8F: 48             ASLA
4B90: 4E             FCB    $4E
4B91: 48             ASLA
4B92: 4E             FCB    $4E
4B93: 48             ASLA
4B94: 4E             FCB    $4E
4B95: 48             ASLA
4B96: 4E             FCB    $4E
4B97: 48             ASLA
4B98: 4E             FCB    $4E
4B99: 48             ASLA
4B9A: 4E             FCB    $4E
4B9B: 48             ASLA
4B9C: 4E             FCB    $4E
4B9D: 48             ASLA
4B9E: 4E             FCB    $4E
4B9F: 48             ASLA
4BA0: 4E             FCB    $4E
4BA1: 48             ASLA
4BA2: 4E             FCB    $4E
4BA3: 48             ASLA
4BA4: 4E             FCB    $4E
4BA5: 48             ASLA
4BA6: 4E             FCB    $4E
4BA7: 48             ASLA
4BA8: 4E             FCB    $4E
4BA9: 48             ASLA
4BAA: 4E             FCB    $4E
4BAB: 48             ASLA
4BAC: 4E             FCB    $4E
4BAD: 48             ASLA
4BAE: 4E             FCB    $4E
4BAF: 48             ASLA
4BB0: 4E             FCB    $4E
4BB1: 48             ASLA
4BB2: 4E             FCB    $4E
4BB3: 48             ASLA
4BB4: 4E             FCB    $4E
4BB5: 48             ASLA
4BB6: 4E             FCB    $4E
4BB7: 48             ASLA
4BB8: 4E             FCB    $4E
4BB9: 48             ASLA
4BBA: 4E             FCB    $4E
4BBB: 48             ASLA
4BBC: 4E             FCB    $4E
4BBD: 48             ASLA
4BBE: 4E             FCB    $4E
4BBF: 48             ASLA
4BC0: 4E             FCB    $4E
4BC1: 48             ASLA
4BC2: 4E             FCB    $4E
4BC3: 48             ASLA
4BC4: 4E             FCB    $4E
4BC5: 48             ASLA
4BC6: 4E             FCB    $4E
4BC7: 48             ASLA
4BC8: 4E             FCB    $4E
4BC9: 48             ASLA
4BCA: 4E             FCB    $4E
4BCB: 48             ASLA
4BCC: 4E             FCB    $4E
4BCD: 48             ASLA
4BCE: 4E             FCB    $4E
4BCF: 48             ASLA
4BD0: 4E             FCB    $4E
4BD1: 48             ASLA
4BD2: 4E             FCB    $4E
4BD3: 48             ASLA
4BD4: 4E             FCB    $4E
4BD5: 48             ASLA
4BD6: 4E             FCB    $4E
4BD7: 48             ASLA
4BD8: 4E             FCB    $4E
4BD9: 48             ASLA
4BDA: 4E             FCB    $4E
4BDB: 48             ASLA
4BDC: 4E             FCB    $4E
4BDD: 48             ASLA
4BDE: 4E             FCB    $4E
4BDF: 48             ASLA
4BE0: 4E             FCB    $4E
4BE1: 48             ASLA
4BE2: 4E             FCB    $4E
4BE3: 48             ASLA
4BE4: 4E             FCB    $4E
4BE5: 48             ASLA
4BE6: 4E             FCB    $4E
4BE7: 48             ASLA
4BE8: 4E             FCB    $4E
4BE9: 48             ASLA
4BEA: 4E             FCB    $4E
4BEB: 48             ASLA
4BEC: 4E             FCB    $4E
4BED: 48             ASLA
4BEE: 4E             FCB    $4E
4BEF: 48             ASLA
4BF0: 4E             FCB    $4E
4BF1: 48             ASLA
4BF2: 4E             FCB    $4E
4BF3: 48             ASLA
4BF4: 4E             FCB    $4E
4BF5: 48             ASLA
4BF6: 4E             FCB    $4E
4BF7: 48             ASLA
4BF8: 4E             FCB    $4E
4BF9: 48             ASLA
4BFA: 4E             FCB    $4E
4BFB: 48             ASLA
4BFC: 4E             FCB    $4E
4BFD: 48             ASLA
4BFE: 4E             FCB    $4E
4BFF: 48             ASLA
4C00: 4E             FCB    $4E
4C01: 98 4E          EORA   $4E
4C03: 92 4E          SBCA   $4E
4C05: 92 4E          SBCA   $4E
4C07: 8E 4E 8E       LDX    #$4E8E
4C0A: 4E             FCB    $4E
4C0B: 8E 4E 8E       LDX    #$4E8E
4C0E: 4E             FCB    $4E
4C0F: 86 4E          LDA    #$4E
4C11: 7C 4E 70       INC    $4E70
4C14: 4E             FCB    $4E
4C15: 70 4E 66       NEG    $4E66
4C18: 4E             FCB    $4E
4C19: 66 4E          ROR    $E,U
4C1B: 66 4E          ROR    $E,U
4C1D: 66 4E          ROR    $E,U
4C1F: 66 4E          ROR    $E,U
4C21: 66 4E          ROR    $E,U
4C23: 66 4E          ROR    $E,U
4C25: 66 4E          ROR    $E,U
4C27: 5A             DECB
4C28: 4E             FCB    $4E
4C29: 5A             DECB
4C2A: 4E             FCB    $4E
4C2B: 5A             DECB
4C2C: 4E             FCB    $4E
4C2D: 5A             DECB
4C2E: 4E             FCB    $4E
4C2F: 50             NEGB
4C30: 4E             FCB    $4E
4C31: 50             NEGB
4C32: 4E             FCB    $4E
4C33: 4C             INCA
4C34: 4E             FCB    $4E
4C35: 4C             INCA
4C36: 4E             FCB    $4E
4C37: 4C             INCA
4C38: 4E             FCB    $4E
4C39: 4C             INCA
4C3A: 4E             FCB    $4E
4C3B: 4C             INCA
4C3C: 4E             FCB    $4E
4C3D: 4C             INCA
4C3E: 4E             FCB    $4E
4C3F: 4C             INCA
4C40: 4E             FCB    $4E
4C41: BA 4E B4       ORA    $4EB4
4C44: 4E             FCB    $4E
4C45: B4 4E B0       ANDA   $4EB0
4C48: 4E             FCB    $4E
4C49: B0 4E B0       SUBA   $4EB0
4C4C: 4E             FCB    $4E
4C4D: B0 4E B0       SUBA   $4EB0
4C50: 4E             FCB    $4E
4C51: B0 4E AA       SUBA   $4EAA
4C54: 4E             FCB    $4E
4C55: AA 4E          ORA    $E,U
4C57: AA 4E          ORA    $E,U
4C59: AA 4E          ORA    $E,U
4C5B: A2 4E          SBCA   $E,U
4C5D: A2 4E          SBCA   $E,U
4C5F: 9C 4E          CMPX   $4E
4C61: 9C 4E          CMPX   $4E
4C63: 9C 4E          CMPX   $4E
4C65: 9C 4E          CMPX   $4E
4C67: 9C 4E          CMPX   $4E
4C69: 9C 4E          CMPX   $4E
4C6B: 9C 4E          CMPX   $4E
4C6D: 9C 4E          CMPX   $4E
4C6F: 9C 4E          CMPX   $4E
4C71: 9C 4E          CMPX   $4E
4C73: 9C 4E          CMPX   $4E
4C75: 9C 4E          CMPX   $4E
4C77: 9C 4E          CMPX   $4E
4C79: 9C 4E          CMPX   $4E
4C7B: 9C 4E          CMPX   $4E
4C7D: 9C 4E          CMPX   $4E
4C7F: 9C 4E          CMPX   $4E
4C81: BE 4E BE       LDX    $4EBE
4C84: 4E             FCB    $4E
4C85: BE 4E BE       LDX    $4EBE
4C88: 4E             FCB    $4E
4C89: BE 4E BE       LDX    $4EBE
4C8C: 4E             FCB    $4E
4C8D: BE 4E BE       LDX    $4EBE
4C90: 4E             FCB    $4E
4C91: BE 4E BE       LDX    $4EBE
4C94: 4E             FCB    $4E
4C95: BE 4E BE       LDX    $4EBE
4C98: 4E             FCB    $4E
4C99: BE 4E BE       LDX    $4EBE
4C9C: 4E             FCB    $4E
4C9D: BE 4E BE       LDX    $4EBE
4CA0: 4E             FCB    $4E
4CA1: BE 4E BE       LDX    $4EBE
4CA4: 4E             FCB    $4E
4CA5: BE 4E BE       LDX    $4EBE
4CA8: 4E             FCB    $4E
4CA9: BE 4E BE       LDX    $4EBE
4CAC: 4E             FCB    $4E
4CAD: BE 4E BE       LDX    $4EBE
4CB0: 4E             FCB    $4E
4CB1: BE 4E BE       LDX    $4EBE
4CB4: 4E             FCB    $4E
4CB5: BE 4E BE       LDX    $4EBE
4CB8: 4E             FCB    $4E
4CB9: BE 4E BE       LDX    $4EBE
4CBC: 4E             FCB    $4E
4CBD: BE 4E BE       LDX    $4EBE
4CC0: 4E             FCB    $4E
4CC1: BE 4E BE       LDX    $4EBE
4CC4: 4E             FCB    $4E
4CC5: BE 4E BE       LDX    $4EBE
4CC8: 4E             FCB    $4E
4CC9: BE 4E BE       LDX    $4EBE
4CCC: 4E             FCB    $4E
4CCD: BE 4E BE       LDX    $4EBE
4CD0: 4E             FCB    $4E
4CD1: BE 4E BE       LDX    $4EBE
4CD4: 4E             FCB    $4E
4CD5: BE 4E BE       LDX    $4EBE
4CD8: 4E             FCB    $4E
4CD9: BE 4E BE       LDX    $4EBE
4CDC: 4E             FCB    $4E
4CDD: BE 4E BE       LDX    $4EBE
4CE0: 4E             FCB    $4E
4CE1: BE 4E BE       LDX    $4EBE
4CE4: 4E             FCB    $4E
4CE5: BE 4E BE       LDX    $4EBE
4CE8: 4E             FCB    $4E
4CE9: BE 4E BE       LDX    $4EBE
4CEC: 4E             FCB    $4E
4CED: BE 4E BE       LDX    $4EBE
4CF0: 4E             FCB    $4E
4CF1: BE 4E BE       LDX    $4EBE
4CF4: 4E             FCB    $4E
4CF5: BE 4E BE       LDX    $4EBE
4CF8: 4E             FCB    $4E
4CF9: BE 4E BE       LDX    $4EBE
4CFC: 4E             FCB    $4E
4CFD: BE 4E BE       LDX    $4EBE
4D00: 4E             FCB    $4E
4D01: D6 4E          LDB    $4E
4D03: D0 4E          SUBB   $4E
4D05: D0 4E          SUBB   $4E
4D07: CC 4E CC       LDD    #$4ECC
4D0A: 4E             FCB    $4E
4D0B: CC 4E CC       LDD    #$4ECC
4D0E: 4E             FCB    $4E
4D0F: CC 4E CC       LDD    #$4ECC
4D12: 4E             FCB    $4E
4D13: CC 4E CC       LDD    #$4ECC
4D16: 4E             FCB    $4E
4D17: CC 4E CC       LDD    #$4ECC
4D1A: 4E             FCB    $4E
4D1B: C6 4E          LDB    #$4E
4D1D: C6 4E          LDB    #$4E
4D1F: C2 4E          SBCB   #$4E
4D21: C2 4E          SBCB   #$4E
4D23: C2 4E          SBCB   #$4E
4D25: C2 4E          SBCB   #$4E
4D27: C2 4E          SBCB   #$4E
4D29: C2 4E          SBCB   #$4E
4D2B: C2 4E          SBCB   #$4E
4D2D: C2 4E          SBCB   #$4E
4D2F: C2 4E          SBCB   #$4E
4D31: C2 4E          SBCB   #$4E
4D33: C2 4E          SBCB   #$4E
4D35: C2 4E          SBCB   #$4E
4D37: C2 4E          SBCB   #$4E
4D39: C2 4E          SBCB   #$4E
4D3B: C2 4E          SBCB   #$4E
4D3D: C2 4E          SBCB   #$4E
4D3F: C2 4E          SBCB   #$4E
4D41: F8 4E F2       EORB   $4EF2
4D44: 4E             FCB    $4E
4D45: F2 4E EE       SBCB   $4EEE
4D48: 4E             FCB    $4E
4D49: EE 4E          LDU    $E,U
4D4B: EE 4E          LDU    $E,U
4D4D: EE 4E          LDU    $E,U
4D4F: EE 4E          LDU    $E,U
4D51: EE 4E          LDU    $E,U
4D53: E8 4E          EORB   $E,U
4D55: E8 4E          EORB   $E,U
4D57: E8 4E          EORB   $E,U
4D59: E8 4E          EORB   $E,U
4D5B: E0 4E          SUBB   $E,U
4D5D: E0 4E          SUBB   $E,U
4D5F: DA 4E          ORB    $4E
4D61: DA 4E          ORB    $4E
4D63: DA 4E          ORB    $4E
4D65: DA 4E          ORB    $4E
4D67: DA 4E          ORB    $4E
4D69: DA 4E          ORB    $4E
4D6B: DA 4E          ORB    $4E
4D6D: DA 4E          ORB    $4E
4D6F: DA 4E          ORB    $4E
4D71: DA 4E          ORB    $4E
4D73: DA 4E          ORB    $4E
4D75: DA 4E          ORB    $4E
4D77: DA 4E          ORB    $4E
4D79: DA 4E          ORB    $4E
4D7B: DA 4E          ORB    $4E
4D7D: DA 4E          ORB    $4E
4D7F: DA 4F          ORB    $4F
4D81: 12             NOP
4D82: FF FF 4F       STU    $FF4F
4D85: 07 4F          ASR    $4F
4D87: 12             NOP
4D88: FF FF 4F       STU    $FF4F
4D8B: 07 FF          ASR    $FF
4D8D: FF 4E FC       STU    $4EFC
4D90: 4F             CLRA
4D91: 07 FF          ASR    $FF
4D93: FF 4E FC       STU    $4EFC
4D96: FF FF 4F       STU    $FF4F
4D99: 12             NOP
4D9A: FF FF 4F       STU    $FF4F
4D9D: 07 4F          ASR    $4F
4D9F: 12             NOP
4DA0: FF FF 4F       STU    $FF4F
4DA3: 07 FF          ASR    $FF
4DA5: FF 4E FC       STU    $4EFC
4DA8: 4F             CLRA
4DA9: 07 FF          ASR    $FF
4DAB: FF 4E FC       STU    $4EFC
4DAE: FF FF 4F       STU    $FF4F
4DB1: 33 FF FF 4F    LEAU   [$FF4F]
4DB5: 28 4F          BVC    $4E06
4DB7: 33 FF FF 4F    LEAU   [$FF4F]
4DBB: 28 FF          BVC    $4DBC
4DBD: FF 4F 1D       STU    $4F1D
4DC0: 4F             CLRA
4DC1: 28 FF          BVC    $4DC2
4DC3: FF 4F 1D       STU    $4F1D
4DC6: FF FF 4F       STU    $FF4F
4DC9: 33 4F          LEAU   $F,U
4DCB: 49             ROLA
4DCC: FF FF 4F       STU    $FF4F
4DCF: 33 4F          LEAU   $F,U
4DD1: 3E             FCB    $3E
4DD2: 4F             CLRA
4DD3: 49             ROLA
4DD4: FF FF 4F       STU    $FF4F
4DD7: 33 4F          LEAU   $F,U
4DD9: 3E             FCB    $3E
4DDA: FF FF 4F       STU    $FF4F
4DDD: 28 4F          BVC    $4E2E
4DDF: 33 4F          LEAU   $F,U
4DE1: 3E             FCB    $3E
4DE2: FF FF 4F       STU    $FF4F
4DE5: 28 FF          BVC    $4DE6
4DE7: FF 4F 1D       STU    $4F1D
4DEA: 4F             CLRA
4DEB: 28 FF          BVC    $4DEC
4DED: FF 4F 1D       STU    $4F1D
4DF0: FF FF 4F       STU    $FF4F
4DF3: 54             LSRB
4DF4: FF FF 4F       STU    $FF4F
4DF7: 8B FF          ADDA   #$FF
4DF9: FF 4F 75       STU    $4F75
4DFC: 4F             CLRA
4DFD: 80 4F          SUBA   #$4F
4DFF: 8B FF          ADDA   #$FF
4E01: FF 4F 96       STU    $4F96
4E04: 4F             CLRA
4E05: 75 4F 80 FF    EIM    #$4F,$80FF
4E09: FF 4F 75       STU    $4F75
4E0C: 4F             CLRA
4E0D: 80 FF          SUBA   #$FF
4E0F: FF 4F 6A       STU    $4F6A
4E12: 4F             CLRA
4E13: 75 4F 80 FF    EIM    #$4F,$80FF
4E17: FF 4F 6A       STU    $4F6A
4E1A: FF FF 4F       STU    $FF4F
4E1D: 5F             CLRB
4E1E: 4F             CLRA
4E1F: 6A FF FF 4F    DEC    [$FF4F]
4E23: 5F             CLRB
4E24: FF FF 4F       STU    $FF4F
4E27: 8B FF          ADDA   #$FF
4E29: FF 4F 80       STU    $4F80
4E2C: 4F             CLRA
4E2D: 8B FF          ADDA   #$FF
4E2F: FF 4F 80       STU    $4F80
4E32: FF FF 4F       STU    $FF4F
4E35: 6A 4F          DEC    $F,U
4E37: 80 FF          SUBA   #$FF
4E39: FF 4F 6A       STU    $4F6A
4E3C: FF FF 4F       STU    $FF4F
4E3F: 5F             CLRB
4E40: 4F             CLRA
4E41: 6A FF FF 4F    DEC    [$FF4F]
4E45: 5F             CLRB
4E46: FF FF 4F       STU    $FF4F
4E49: A1 FF FF 4F    CMPA   [$FF4F]
4E4D: E3 FF FF 4F    ADDD   [$FF4F]
4E51: E3 4F          ADDD   $F,U
4E53: D8 4F          EORB   $4F
4E55: CD 4F C2 FF FF LDQ    #$4FC2FFFF
4E5A: 4F             CLRA
4E5B: F9 4F E3       ADCB   $4FE3
4E5E: 4F             CLRA
4E5F: D8 4F          EORB   $4F
4E61: CD 4F C2 FF FF LDQ    #$4FC2FFFF
4E66: 4F             CLRA
4E67: E3 4F          ADDD   $F,U
4E69: D8 4F          EORB   $4F
4E6B: CD 4F C2 FF FF LDQ    #$4FC2FFFF
4E70: 4F             CLRA
4E71: E3 4F          ADDD   $F,U
4E73: D8 4F          EORB   $4F
4E75: CD 4F C2 4F B7 LDQ    #$4FC24FB7
4E7A: FF FF 4F       STU    $FF4F
4E7D: D8 4F          EORB   $4F
4E7F: CD 4F C2 4F B7 LDQ    #$4FC24FB7
4E84: FF FF 4F       STU    $FF4F
4E87: CD 4F C2 4F B7 LDQ    #$4FC24FB7
4E8C: FF FF 4F       STU    $FF4F
4E8F: B7 FF FF       STA    $FFFF
4E92: 4F             CLRA
4E93: AC 4F          CMPX   $F,U
4E95: B7 FF FF       STA    $FFFF
4E98: 4F             CLRA
4E99: AC FF FF 4F    CMPX   [$FF4F]
4E9D: E3 4F          ADDD   $F,U
4E9F: EE FF FF 4F    LDU    [$FF4F]
4EA3: B7 4F E3       STA    $4FE3
4EA6: 4F             CLRA
4EA7: EE FF FF 4F    LDU    [$FF4F]
4EAB: B7 4F E3       STA    $4FE3
4EAE: FF FF 4F       STU    $FF4F
4EB1: B7 FF FF       STA    $FFFF
4EB4: 4F             CLRA
4EB5: AC 4F          CMPX   $F,U
4EB7: B7 FF FF       STA    $FFFF
4EBA: 4F             CLRA
4EBB: AC FF FF 50    CMPX   [$FF50]
4EBF: 04 FF          LSR    $FF
4EC1: FF 50 25       STU    $5025
4EC4: FF FF 50       STU    $FF50
4EC7: 25 50          BCS    $4F19
4EC9: 1A FF          ORCC   #$FF
4ECB: FF 50 1A       STU    $501A
4ECE: FF FF 50       STU    $FF50
4ED1: 1A 50          ORCC   #$50
4ED3: 0F FF          CLR    $FF
4ED5: FF 50 0F       STU    $500F
4ED8: FF FF 50       STU    $FF50
4EDB: 25 50          BCS    $4F2D
4EDD: 30 FF FF 50    LEAX   [$FF50]
4EE1: 30 50          LEAX   -$10,U
4EE3: 25 50          BCS    $4F35
4EE5: 1A FF          ORCC   #$FF
4EE7: FF 50 1A       STU    $501A
4EEA: 50             NEGB
4EEB: 30 FF FF 50    LEAX   [$FF50]
4EEF: 1A FF          ORCC   #$FF
4EF1: FF 50 1A       STU    $501A
4EF4: 50             NEGB
4EF5: 0F FF          CLR    $FF
4EF7: FF 50 0F       STU    $500F
4EFA: FF FF 00       STU    $FF00
4EFD: 00 01          NEG    $01
4EFF: 00 01          NEG    $01
4F01: F0 00 10       SUBB   >$0010
4F04: FF 80 10       STU    $8010
4F07: 00 00          NEG    $00
4F09: 01 00 01       OIM    #$00;$01
4F0C: F0 00 50       SUBB   >$0050
4F0F: 10 80 01 00    SUBW   #$0100
4F13: 00 01          NEG    $01
4F15: 40             NEGA
4F16: 02 30 00       AIM    #$30;$00
4F19: 10 D0          FCB    $10,$D0
4F1B: 80 04 01       SUBW   #$0401
4F1E: 00 01          NEG    $01
4F20: 00 01          NEG    $01
4F22: F0 00 10       SUBB   >$0010
4F25: FF 80 10       STU    $8010
4F28: 01 00 01       OIM    #$00;$01
4F2B: 00 01          NEG    $01
4F2D: F0 00 50       SUBB   >$0050
4F30: 10 80 01 00    SUBW   #$0100
4F34: F0 01 40       SUBB   $0140
4F37: 02 30 F0       AIM    #$30;$F0
4F3A: 20 D0          BRA    $4F0C
4F3C: 00 0C          NEG    $0C
4F3E: 01 D0 01       OIM    #$D0;$01
4F41: 40             NEGA
4F42: 02 30 30       AIM    #$30;$30
4F45: 20 80          BRA    $4EC7
4F47: 00 05          NEG    $05
4F49: 01 E0 01       OIM    #$E0;$01
4F4C: 50             NEGB
4F4D: 02 B0 20       AIM    #$B0;$20
4F50: 10 50          FCB    $10,$50
4F52: 80 04 01       SUBW   #$0401
4F55: 00 01          NEG    $01
4F57: 50             NEGB
4F58: 03 00          COM    $00
4F5A: 00 10          NEG    $10
4F5C: FF 80 04       STU    $8004
4F5F: 02 00 01       AIM    #$00;$01
4F62: 00 01          NEG    $01
4F64: F0 00 10       SUBB   >$0010
4F67: FF 80 10       STU    $8010
4F6A: 02 00 01       AIM    #$00;$01
4F6D: 00 01          NEG    $01
4F6F: F0 00 50       SUBB   >$0050
4F72: 10 80 01 02    SUBW   #$0102
4F76: 00 01          NEG    $01
4F78: 40             NEGA
4F79: 02 30 14       AIM    #$30;$14
4F7C: 20 80          BRA    $4EFE
4F7E: 81 05          CMPA   #$05
4F80: 02 14 01       AIM    #$14;$01
4F83: 40             NEGA
4F84: 02 30 EC       AIM    #$30;$EC
4F87: 20 80          BRA    $4F09
4F89: 80 05          SUBA   #$05
4F8B: 02 00 01       AIM    #$00;$01
4F8E: 50             NEGB
4F8F: 02 B0 00       AIM    #$B0;$00
4F92: 10 50          FCB    $10,$50
4F94: 80 04 02       SUBW   #$0402
4F97: 00 01          NEG    $01
4F99: 30 02          LEAX   $2,X
4F9B: 9F 14          STX    $14
4F9D: 10 01          FCB    $10,$01
4F9F: 8F             FCB    $8F
4FA0: 10             FCB    $10
4FA1: 02 00 01       AIM    #$00;$01
4FA4: 50             NEGB
4FA5: 03 00          COM    $00
4FA7: 00 10          NEG    $10
4FA9: FF 80 04       STU    $8004
4FAC: 03 00          COM    $00
4FAE: 01 00 01       OIM    #$00;$01
4FB1: F0 00 10       SUBB   >$0010
4FB4: FF 80 10       STU    $8010
4FB7: 03 00          COM    $00
4FB9: 01 00 01       OIM    #$00;$01
4FBC: F0 00 90       SUBB   >$0090
4FBF: 10 80 01 02    SUBW   #$0102
4FC3: F0 01 40       SUBB   $0140
4FC6: 02 30 24       AIM    #$30;$24
4FC9: 20 80          BRA    $4F4B
4FCB: 01 05 03       OIM    #$05;$03
4FCE: 14             SEXW
4FCF: 01 40 02       OIM    #$40;$02
4FD2: 30 2C          LEAX   $C,Y
4FD4: 08 80          ASL    $80
4FD6: 00 0D          NEG    $0D
4FD8: 03 1C          COM    $1C
4FDA: 01 48 02       OIM    #$48;$02
4FDD: 38             FCB    $38
4FDE: 3C 18          CWAI   #$18
4FE0: 80 00          SUBA   #$00
4FE2: 0D 02          TST    $02
4FE4: F0 01 50       SUBB   $0150
4FE7: 02 40 D0       AIM    #$40;$D0
4FEA: 40             NEGA
4FEB: C0 00          SUBB   #$00
4FED: 0C 03          INC    $03
4FEF: D0 01          SUBB   $01
4FF1: 70 02 60       NEG    $0260
4FF4: 30 10          LEAX   -$10,X
4FF6: FF 80 04       STU    $8004
4FF9: 03 00          COM    $00
4FFB: 01 30 02       OIM    #$30;$02
4FFE: 9F 14          STX    $14
5000: 10 01          FCB    $10,$01
5002: 8F             FCB    $8F
5003: 10             FCB    $10
5004: 03 00          COM    $00
5006: 01 50 03       OIM    #$50;$03
5009: 00 00          NEG    $00
500B: 10 FF 80 04    STS    $8004
500F: 04 00          LSR    $00
5011: 01 00 01       OIM    #$00;$01
5014: F0 00 10       SUBB   >$0010
5017: FF 80 10       STU    $8010
501A: 04 00          LSR    $00
501C: 01 00 01       OIM    #$00;$01
501F: F0 00 90       SUBB   >$0090
5022: 10 80 01 04    SUBW   #$0104
5026: 00 01          NEG    $01
5028: 70 02 60       NEG    $0260
502B: F0 10 FF       SUBB   $10FF
502E: 80 04          SUBA   #$04
5030: 05 00 01       EIM    #$00;$01
5033: 50             NEGB
5034: 02 40 10       AIM    #$40;$10
5037: 40             NEGA
5038: FF 40 02       STU    $4002
503B: 54             LSRB
503C: 71 54 6B 54    OIM    #$54,$6B54
5040: 6B 54 67       TIM    #$54;$7,S
5043: 54             LSRB
5044: 67 54          ASR    -$C,U
5046: 67 54          ASR    -$C,U
5048: 67 54          ASR    -$C,U
504A: 67 54          ASR    -$C,U
504C: 67 54          ASR    -$C,U
504E: 5D             TSTB
504F: 54             LSRB
5050: 5D             TSTB
5051: 54             LSRB
5052: 55             FCB    $55
5053: 54             LSRB
5054: 55             FCB    $55
5055: 54             LSRB
5056: 55             FCB    $55
5057: 54             LSRB
5058: 55             FCB    $55
5059: 54             LSRB
505A: 55             FCB    $55
505B: 54             LSRB
505C: 55             FCB    $55
505D: 54             LSRB
505E: 55             FCB    $55
505F: 54             LSRB
5060: 55             FCB    $55
5061: 54             LSRB
5062: 55             FCB    $55
5063: 54             LSRB
5064: 55             FCB    $55
5065: 54             LSRB
5066: 4B             FCB    $4B
5067: 54             LSRB
5068: 4B             FCB    $4B
5069: 54             LSRB
506A: 4B             FCB    $4B
506B: 54             LSRB
506C: 4B             FCB    $4B
506D: 54             LSRB
506E: 41             FCB    $41
506F: 54             LSRB
5070: 41             FCB    $41
5071: 54             LSRB
5072: 3B             RTI
5073: 54             LSRB
5074: 3B             RTI
5075: 54             LSRB
5076: 3B             RTI
5077: 54             LSRB
5078: 3B             RTI
5079: 54             LSRB
507A: 3B             RTI
507B: 54             LSRB
507C: C1 54          CMPB   #$54
507E: B9 54 B9       ADCA   $54B9
5081: 54             LSRB
5082: B3 54 B3       SUBD   $54B3
5085: 54             LSRB
5086: AB 54          ADDA   -$C,U
5088: AB 54          ADDA   -$C,U
508A: A5 54          BITA   -$C,U
508C: A5 54          BITA   -$C,U
508E: 9D 54          JSR    $54
5090: 9D 54          JSR    $54
5092: 97 54          STA    $54
5094: 97 54          STA    $54
5096: 97 54          STA    $54
5098: 97 54          STA    $54
509A: 8F             FCB    $8F
509B: 54             LSRB
509C: 8F             FCB    $8F
509D: 54             LSRB
509E: 89 54          ADCA   #$54
50A0: 89 54          ADCA   #$54
50A2: 89 54          ADCA   #$54
50A4: 89 54          ADCA   #$54
50A6: 81 54          CMPA   #$54
50A8: 81 54          CMPA   #$54
50AA: 81 54          CMPA   #$54
50AC: 81 54          CMPA   #$54
50AE: 79 54 79       ROL    $5479
50B1: 54             LSRB
50B2: 75 54 75 54    EIM    #$54,$7554
50B6: 75 54 75 54    EIM    #$54,$7554
50BA: 75 54 C5 54    EIM    #$54,$C554
50BE: C5 54          BITB   #$54
50C0: C5 54          BITB   #$54
50C2: C5 54          BITB   #$54
50C4: C5 54          BITB   #$54
50C6: C5 54          BITB   #$54
50C8: C5 54          BITB   #$54
50CA: C5 54          BITB   #$54
50CC: C5 54          BITB   #$54
50CE: C5 54          BITB   #$54
50D0: C5 54          BITB   #$54
50D2: C5 54          BITB   #$54
50D4: C5 54          BITB   #$54
50D6: C5 54          BITB   #$54
50D8: C5 54          BITB   #$54
50DA: C5 54          BITB   #$54
50DC: C5 54          BITB   #$54
50DE: C5 54          BITB   #$54
50E0: C5 54          BITB   #$54
50E2: C5 54          BITB   #$54
50E4: C5 54          BITB   #$54
50E6: C5 54          BITB   #$54
50E8: C5 54          BITB   #$54
50EA: C5 54          BITB   #$54
50EC: C5 54          BITB   #$54
50EE: C5 54          BITB   #$54
50F0: C5 54          BITB   #$54
50F2: C5 54          BITB   #$54
50F4: C5 54          BITB   #$54
50F6: C5 54          BITB   #$54
50F8: C5 54          BITB   #$54
50FA: C5 54          BITB   #$54
50FC: C5 54          BITB   #$54
50FE: C5 54          BITB   #$54
5100: C5 54          BITB   #$54
5102: C5 54          BITB   #$54
5104: C5 54          BITB   #$54
5106: C5 54          BITB   #$54
5108: C5 54          BITB   #$54
510A: C5 54          BITB   #$54
510C: C5 54          BITB   #$54
510E: C5 54          BITB   #$54
5110: C5 54          BITB   #$54
5112: C5 54          BITB   #$54
5114: C5 54          BITB   #$54
5116: C5 54          BITB   #$54
5118: C5 54          BITB   #$54
511A: C5 54          BITB   #$54
511C: C5 54          BITB   #$54
511E: C5 54          BITB   #$54
5120: C5 54          BITB   #$54
5122: C5 54          BITB   #$54
5124: C5 54          BITB   #$54
5126: C5 54          BITB   #$54
5128: C5 54          BITB   #$54
512A: C5 54          BITB   #$54
512C: C5 54          BITB   #$54
512E: C5 54          BITB   #$54
5130: C5 54          BITB   #$54
5132: C5 54          BITB   #$54
5134: C5 54          BITB   #$54
5136: C5 54          BITB   #$54
5138: C5 54          BITB   #$54
513A: C5 55          BITB   #$55
513C: 23 55          BLS    $5193
513E: 23 55          BLS    $5195
5140: 23 55          BLS    $5197
5142: 23 55          BLS    $5199
5144: 23 55          BLS    $519B
5146: 1D             SEX
5147: 55             FCB    $55
5148: 1D             SEX
5149: 55             FCB    $55
514A: 17 55 17       LBSR   $A664
514D: 55             FCB    $55
514E: 17 55 17       LBSR   $A668
5151: 55             FCB    $55
5152: 17 55 17       LBSR   $A66C
5155: 55             FCB    $55
5156: 17 55 17       LBSR   $A670
5159: 55             FCB    $55
515A: 0D 55          TST    $55
515C: 0D 55          TST    $55
515E: 05 55 05       EIM    #$55;$05
5161: 55             FCB    $55
5162: 05 55 05       EIM    #$55;$05
5165: 54             LSRB
5166: F9 54 F9       ADCB   $54F9
5169: 54             LSRB
516A: ED 54          STD    -$C,U
516C: DF 54          STU    $54
516E: D3 54          ADDD   $54
5170: D3 54          ADDD   $54
5172: C9 54          ADCB   #$54
5174: C9 54          ADCB   #$54
5176: C9 54          ADCB   #$54
5178: C9 54          ADCB   #$54
517A: C9 55          ADCB   #$55
517C: 67 55          ASR    -$B,U
517E: 67 55          ASR    -$B,U
5180: 67 55          ASR    -$B,U
5182: 67 55          ASR    -$B,U
5184: 67 55          ASR    -$B,U
5186: 67 55          ASR    -$B,U
5188: 67 55          ASR    -$B,U
518A: 67 55          ASR    -$B,U
518C: 67 55          ASR    -$B,U
518E: 67 55          ASR    -$B,U
5190: 67 55          ASR    -$B,U
5192: 67 55          ASR    -$B,U
5194: 67 55          ASR    -$B,U
5196: 67 55          ASR    -$B,U
5198: 67 55          ASR    -$B,U
519A: 61 55 61       OIM    #$55;$1,S
519D: 55             FCB    $55
519E: 59             ROLB
519F: 55             FCB    $55
51A0: 59             ROLB
51A1: 55             FCB    $55
51A2: 4F             CLRA
51A3: 55             FCB    $55
51A4: 4F             CLRA
51A5: 55             FCB    $55
51A6: 43             COMA
51A7: 55             FCB    $55
51A8: 39             RTS
51A9: 55             FCB    $55
51AA: 31 55          LEAY   -$B,U
51AC: 31 55          LEAY   -$B,U
51AE: 2B 55          BMI    $5205
51B0: 2B 55          BMI    $5207
51B2: 2B 55          BMI    $5209
51B4: 2B 55          BMI    $520B
51B6: 2B 55          BMI    $520D
51B8: 2B 55          BMI    $520F
51BA: 27 55          BEQ    $5211
51BC: 6B 55 6B       TIM    #$55;$B,S
51BF: 55             FCB    $55
51C0: 6B 55 6B       TIM    #$55;$B,S
51C3: 55             FCB    $55
51C4: 6B 55 6B       TIM    #$55;$B,S
51C7: 55             FCB    $55
51C8: 6B 55 6B       TIM    #$55;$B,S
51CB: 55             FCB    $55
51CC: 6B 55 6B       TIM    #$55;$B,S
51CF: 55             FCB    $55
51D0: 6B 55 6B       TIM    #$55;$B,S
51D3: 55             FCB    $55
51D4: 6B 55 6B       TIM    #$55;$B,S
51D7: 55             FCB    $55
51D8: 6B 55 6B       TIM    #$55;$B,S
51DB: 55             FCB    $55
51DC: 6B 55 6B       TIM    #$55;$B,S
51DF: 55             FCB    $55
51E0: 6B 55 6B       TIM    #$55;$B,S
51E3: 55             FCB    $55
51E4: 6B 55 6B       TIM    #$55;$B,S
51E7: 55             FCB    $55
51E8: 6B 55 6B       TIM    #$55;$B,S
51EB: 55             FCB    $55
51EC: 6B 55 6B       TIM    #$55;$B,S
51EF: 55             FCB    $55
51F0: 6B 55 6B       TIM    #$55;$B,S
51F3: 55             FCB    $55
51F4: 6B 55 6B       TIM    #$55;$B,S
51F7: 55             FCB    $55
51F8: 6B 55 6B       TIM    #$55;$B,S
51FB: 55             FCB    $55
51FC: 6B 55 6B       TIM    #$55;$B,S
51FF: 55             FCB    $55
5200: 6B 55 6B       TIM    #$55;$B,S
5203: 55             FCB    $55
5204: 6B 55 6B       TIM    #$55;$B,S
5207: 55             FCB    $55
5208: 6B 55 6B       TIM    #$55;$B,S
520B: 55             FCB    $55
520C: 6B 55 6B       TIM    #$55;$B,S
520F: 55             FCB    $55
5210: 6B 55 6B       TIM    #$55;$B,S
5213: 55             FCB    $55
5214: 6B 55 6B       TIM    #$55;$B,S
5217: 55             FCB    $55
5218: 6B 55 6B       TIM    #$55;$B,S
521B: 55             FCB    $55
521C: 6B 55 6B       TIM    #$55;$B,S
521F: 55             FCB    $55
5220: 6B 55 6B       TIM    #$55;$B,S
5223: 55             FCB    $55
5224: 6B 55 6B       TIM    #$55;$B,S
5227: 55             FCB    $55
5228: 6B 55 6B       TIM    #$55;$B,S
522B: 55             FCB    $55
522C: 6B 55 6B       TIM    #$55;$B,S
522F: 55             FCB    $55
5230: 6B 55 6B       TIM    #$55;$B,S
5233: 55             FCB    $55
5234: 6B 55 6B       TIM    #$55;$B,S
5237: 55             FCB    $55
5238: 6B 55 6B       TIM    #$55;$B,S
523B: 55             FCB    $55
523C: AB 55          ADDA   -$B,U
523E: A5 55          BITA   -$B,U
5240: A5 55          BITA   -$B,U
5242: A5 55          BITA   -$B,U
5244: A5 55          BITA   -$B,U
5246: A5 55          BITA   -$B,U
5248: A5 55          BITA   -$B,U
524A: A5 55          BITA   -$B,U
524C: A5 55          BITA   -$B,U
524E: A5 55          BITA   -$B,U
5250: A5 55          BITA   -$B,U
5252: A5 55          BITA   -$B,U
5254: A5 55          BITA   -$B,U
5256: 9D 55          JSR    $55
5258: 9D 55          JSR    $55
525A: 9D 55          JSR    $55
525C: 9D 55          JSR    $55
525E: 95 55          BITA   $55
5260: 95 55          BITA   $55
5262: 8B 55          ADDA   #$55
5264: 83 55 83       SUBD   #$5583
5267: 55             FCB    $55
5268: 7D 55 7D       TST    $557D
526B: 55             FCB    $55
526C: 7D 55 7D       TST    $557D
526F: 55             FCB    $55
5270: 7D 55 7D       TST    $557D
5273: 55             FCB    $55
5274: 7D 55 75       TST    $5575
5277: 55             FCB    $55
5278: 75 55 6F 55    EIM    #$55,$6F55
527C: B1 55 B1       CMPA   $55B1
527F: 55             FCB    $55
5280: B1 55 B1       CMPA   $55B1
5283: 55             FCB    $55
5284: B1 55 B1       CMPA   $55B1
5287: 55             FCB    $55
5288: B1 55 B1       CMPA   $55B1
528B: 55             FCB    $55
528C: B1 55 B1       CMPA   $55B1
528F: 55             FCB    $55
5290: B1 55 B1       CMPA   $55B1
5293: 55             FCB    $55
5294: B1 55 B1       CMPA   $55B1
5297: 55             FCB    $55
5298: B1 55 B1       CMPA   $55B1
529B: 55             FCB    $55
529C: B1 55 B1       CMPA   $55B1
529F: 55             FCB    $55
52A0: B1 55 B1       CMPA   $55B1
52A3: 55             FCB    $55
52A4: B1 55 B1       CMPA   $55B1
52A7: 55             FCB    $55
52A8: B1 55 B1       CMPA   $55B1
52AB: 55             FCB    $55
52AC: B1 55 B1       CMPA   $55B1
52AF: 55             FCB    $55
52B0: B1 55 B1       CMPA   $55B1
52B3: 55             FCB    $55
52B4: B1 55 B1       CMPA   $55B1
52B7: 55             FCB    $55
52B8: B1 55 B1       CMPA   $55B1
52BB: 55             FCB    $55
52BC: FB 55 F1       ADDB   $55F1
52BF: 55             FCB    $55
52C0: F1 55 EB       CMPB   $55EB
52C3: 55             FCB    $55
52C4: EB 55          ADDB   -$B,U
52C6: E3 55          ADDD   -$B,U
52C8: E3 55          ADDD   -$B,U
52CA: E3 55          ADDD   -$B,U
52CC: D9 55          ADCB   $55
52CE: D1 55          CMPB   $55
52D0: D1 55          CMPB   $55
52D2: C7             FCB    $C7
52D3: 55             FCB    $55
52D4: BF 55 BF       STX    $55BF
52D7: 55             FCB    $55
52D8: BF 55 B9       STX    $55B9
52DB: 55             FCB    $55
52DC: B9 55 B9       ADCA   $55B9
52DF: 55             FCB    $55
52E0: B9 55 B5       ADCA   $55B5
52E3: 55             FCB    $55
52E4: B5 55 B5       BITA   $55B5
52E7: 55             FCB    $55
52E8: B5 55 B5       BITA   $55B5
52EB: 55             FCB    $55
52EC: B5 55 B5       BITA   $55B5
52EF: 55             FCB    $55
52F0: B5 55 B5       BITA   $55B5
52F3: 55             FCB    $55
52F4: B5 55 B5       BITA   $55B5
52F7: 55             FCB    $55
52F8: B5 55 B5       BITA   $55B5
52FB: 56             RORB
52FC: 23 56          BLS    $5354
52FE: 1B             FCB    $1B
52FF: 56             RORB
5300: 1B             FCB    $1B
5301: 56             RORB
5302: 1B             FCB    $1B
5303: 56             RORB
5304: 1B             FCB    $1B
5305: 56             RORB
5306: 1B             FCB    $1B
5307: 56             RORB
5308: 1B             FCB    $1B
5309: 56             RORB
530A: 1B             FCB    $1B
530B: 56             RORB
530C: 1B             FCB    $1B
530D: 56             RORB
530E: 1B             FCB    $1B
530F: 56             RORB
5310: 1B             FCB    $1B
5311: 56             RORB
5312: 1B             FCB    $1B
5313: 56             RORB
5314: 1B             FCB    $1B
5315: 56             RORB
5316: 11 56          FCB    $11,$56
5318: 11             FCB    $11
5319: 56             RORB
531A: 11 56          FCB    $11,$56
531C: 11             FCB    $11
531D: 56             RORB
531E: 07 56          ASR    $56
5320: 07 56          ASR    $56
5322: 03 56          COM    $56
5324: 03 56          COM    $56
5326: 03 56          COM    $56
5328: 03 56          COM    $56
532A: 03 56          COM    $56
532C: 03 56          COM    $56
532E: 03 56          COM    $56
5330: 03 56          COM    $56
5332: 03 56          COM    $56
5334: 03 56          COM    $56
5336: 03 56          COM    $56
5338: 03 56          COM    $56
533A: 03 56          COM    $56
533C: 57             ASRB
533D: 56             RORB
533E: 53             COMB
533F: 56             RORB
5340: 53             COMB
5341: 56             RORB
5342: 53             COMB
5343: 56             RORB
5344: 53             COMB
5345: 56             RORB
5346: 53             COMB
5347: 56             RORB
5348: 53             COMB
5349: 56             RORB
534A: 53             COMB
534B: 56             RORB
534C: 53             COMB
534D: 56             RORB
534E: 53             COMB
534F: 56             RORB
5350: 53             COMB
5351: 56             RORB
5352: 53             COMB
5353: 56             RORB
5354: 53             COMB
5355: 56             RORB
5356: 53             COMB
5357: 56             RORB
5358: 53             COMB
5359: 56             RORB
535A: 53             COMB
535B: 56             RORB
535C: 53             COMB
535D: 56             RORB
535E: 53             COMB
535F: 56             RORB
5360: 53             COMB
5361: 56             RORB
5362: 53             COMB
5363: 56             RORB
5364: 53             COMB
5365: 56             RORB
5366: 53             COMB
5367: 56             RORB
5368: 4D             TSTA
5369: 56             RORB
536A: 4D             TSTA
536B: 56             RORB
536C: 4D             TSTA
536D: 56             RORB
536E: 4D             TSTA
536F: 56             RORB
5370: 4D             TSTA
5371: 56             RORB
5372: 43             COMA
5373: 56             RORB
5374: 43             COMA
5375: 56             RORB
5376: 39             RTS
5377: 56             RORB
5378: 39             RTS
5379: 56             RORB
537A: 2F 56          BLE    $53D2
537C: 8D 56          BSR    $53D4
537E: 87             FCB    $87
537F: 56             RORB
5380: 87             FCB    $87
5381: 56             RORB
5382: 87             FCB    $87
5383: 56             RORB
5384: 87             FCB    $87
5385: 56             RORB
5386: 87             FCB    $87
5387: 56             RORB
5388: 87             FCB    $87
5389: 56             RORB
538A: 87             FCB    $87
538B: 56             RORB
538C: 87             FCB    $87
538D: 56             RORB
538E: 87             FCB    $87
538F: 56             RORB
5390: 87             FCB    $87
5391: 56             RORB
5392: 87             FCB    $87
5393: 56             RORB
5394: 87             FCB    $87
5395: 56             RORB
5396: 87             FCB    $87
5397: 56             RORB
5398: 87             FCB    $87
5399: 56             RORB
539A: 7F 56 7F       CLR    $567F
539D: 56             RORB
539E: 7F 56 7F       CLR    $567F
53A1: 56             RORB
53A2: 7F 56 7F       CLR    $567F
53A5: 56             RORB
53A6: 77 56 77       ASR    $5677
53A9: 56             RORB
53AA: 77 56 77       ASR    $5677
53AD: 56             RORB
53AE: 77 56 77       ASR    $5677
53B1: 56             RORB
53B2: 6D 56          TST    -$A,U
53B4: 6D 56          TST    -$A,U
53B6: 65 56 65       EIM    #$56;$5,S
53B9: 56             RORB
53BA: 5D             TSTB
53BB: 56             RORB
53BC: D7 56          STB    $56
53BE: D1 56          CMPB   $56
53C0: D1 56          CMPB   $56
53C2: C7             FCB    $C7
53C3: 56             RORB
53C4: C7             FCB    $C7
53C5: 56             RORB
53C6: C7             FCB    $C7
53C7: 56             RORB
53C8: BB 56 B1       ADDA   $56B1
53CB: 56             RORB
53CC: B1 56 B1       CMPA   $56B1
53CF: 56             RORB
53D0: A9 56          ADCA   -$A,U
53D2: A9 56          ADCA   -$A,U
53D4: A9 56          ADCA   -$A,U
53D6: A3 56          SUBD   -$A,U
53D8: A3 56          SUBD   -$A,U
53DA: A3 56          SUBD   -$A,U
53DC: A3 56          SUBD   -$A,U
53DE: 9B 56          ADDA   $56
53E0: 9B 56          ADDA   $56
53E2: 95 56          BITA   $56
53E4: 95 56          BITA   $56
53E6: 95 56          BITA   $56
53E8: 95 56          BITA   $56
53EA: 95 56          BITA   $56
53EC: 95 56          BITA   $56
53EE: 95 56          BITA   $56
53F0: 95 56          BITA   $56
53F2: 95 56          BITA   $56
53F4: 95 56          BITA   $56
53F6: 95 56          BITA   $56
53F8: 95 56          BITA   $56
53FA: 95 56          BITA   $56
53FC: EB 56          ADDB   -$A,U
53FE: EB 56          ADDB   -$A,U
5400: EB 56          ADDB   -$A,U
5402: E5 56          BITB   -$A,U
5404: E5 56          BITB   -$A,U
5406: E1 56          CMPB   -$A,U
5408: E1 56          CMPB   -$A,U
540A: E1 56          CMPB   -$A,U
540C: E1 56          CMPB   -$A,U
540E: E1 56          CMPB   -$A,U
5410: E1 56          CMPB   -$A,U
5412: E1 56          CMPB   -$A,U
5414: E1 56          CMPB   -$A,U
5416: E1 56          CMPB   -$A,U
5418: E1 56          CMPB   -$A,U
541A: E1 56          CMPB   -$A,U
541C: E1 56          CMPB   -$A,U
541E: E1 56          CMPB   -$A,U
5420: E1 56          CMPB   -$A,U
5422: E1 56          CMPB   -$A,U
5424: E1 56          CMPB   -$A,U
5426: E1 56          CMPB   -$A,U
5428: E1 56          CMPB   -$A,U
542A: E1 56          CMPB   -$A,U
542C: E1 56          CMPB   -$A,U
542E: E1 56          CMPB   -$A,U
5430: E1 56          CMPB   -$A,U
5432: E1 56          CMPB   -$A,U
5434: E1 56          CMPB   -$A,U
5436: E1 56          CMPB   -$A,U
5438: E1 56          CMPB   -$A,U
543A: E1 57          CMPB   -$9,U
543C: 10 57          FCB    $10,$57
543E: 31 FF          ADCR   F,F
5440: FF 57 10       STU    $5710
5443: 57             ASRB
5444: 1B             FCB    $1B
5445: 57             ASRB
5446: 26 57          BNE    $549F
5448: 31 FF FF 57    LEAY   [$FF57]
544C: 52             FCB    $52
544D: 57             ASRB
544E: 10 57          FCB    $10,$57
5450: 1B             FCB    $1B
5451: 57             FCB    $57
5452: 26 FF FF       LBNE   $5454
5455: 57             ASRB
5456: 10 57          FCB    $10,$57
5458: 1B             FCB    $1B
5459: 57             FCB    $57
545A: 26 FF FF       LBNE   $545C
545D: 56             RORB
545E: FA 57 10       ORB    $5710
5461: 57             ASRB
5462: 1B             FCB    $1B
5463: 57             ASRB
5464: 26 FF          BNE    $5465
5466: FF 56 FA       STU    $56FA
5469: FF FF 56       STU    $FF56
546C: FA 56 EF       ORB    $56EF
546F: FF FF 56       STU    $FF56
5472: EF FF FF 57    STU    [$FF57]
5476: 31 FF FF 57    LEAY   [$FF57]
547A: 31 57          LEAY   -$9,U
547C: 3C 57          CWAI   #$57
547E: 26 FF          BNE    $547F
5480: FF 57 52       STU    $5752
5483: 57             ASRB
5484: 3C 57          CWAI   #$57
5486: 26 FF          BNE    $5487
5488: FF 57 3C       STU    $573C
548B: 57             ASRB
548C: 26 FF          BNE    $548D
548E: FF 57 3C       STU    $573C
5491: 57             ASRB
5492: 47             ASRA
5493: 57             ASRB
5494: 26 FF          BNE    $5495
5496: FF 57 47       STU    $5747
5499: 57             ASRB
549A: 26 FF          BNE    $549B
549C: FF 57 47       STU    $5747
549F: 57             ASRB
54A0: 26 56          BNE    $54F8
54A2: FA FF FF       ORB    $FFFF
54A5: 57             ASRB
54A6: 47             ASRA
54A7: 56             RORB
54A8: FA FF FF       ORB    $FFFF
54AB: 57             ASRB
54AC: 47             ASRA
54AD: 56             RORB
54AE: FA 57 05       ORB    $5705
54B1: FF FF 56       STU    $FF56
54B4: FA 57 05       ORB    $5705
54B7: FF FF 56       STU    $FF56
54BA: EF 56          STU    -$A,U
54BC: FA 57 05       ORB    $5705
54BF: FF FF 56       STU    $FF56
54C2: EF FF FF 57    STU    [$FF57]
54C6: 5D             TSTB
54C7: FF FF 57       STU    $FF57
54CA: B5 57 7E       BITA   $577E
54CD: 57             ASRB
54CE: CB 57          ADDB   #$57
54D0: 73 FF FF       COM    $FFFF
54D3: 57             ASRB
54D4: B5 57 7E       BITA   $577E
54D7: 57             ASRB
54D8: 3C 57          CWAI   #$57
54DA: CB 57          ADDB   #$57
54DC: 73 FF FF       COM    $FFFF
54DF: 57             ASRB
54E0: B5 57 C0       BITA   $57C0
54E3: 57             ASRB
54E4: 7E 57 3C       JMP    $573C
54E7: 57             ASRB
54E8: CB 57          ADDB   #$57
54EA: 73 FF FF       COM    $FFFF
54ED: 57             ASRB
54EE: C0 57          SUBB   #$57
54F0: 7E 57 3C       JMP    $573C
54F3: 57             ASRB
54F4: CB 57          ADDB   #$57
54F6: 73 FF FF       COM    $FFFF
54F9: 57             ASRB
54FA: 68 57          ASL    -$9,U
54FC: 7E 57 3C       JMP    $573C
54FF: 57             ASRB
5500: CB 57          ADDB   #$57
5502: 73 FF FF       COM    $FFFF
5505: 57             ASRB
5506: 68 57          ASL    -$9,U
5508: 3C 57          CWAI   #$57
550A: 73 FF FF       COM    $FFFF
550D: 57             ASRB
550E: 68 57          ASL    -$9,U
5510: 3C 57          CWAI   #$57
5512: 47             ASRA
5513: 57             ASRB
5514: 73 FF FF       COM    $FFFF
5517: 57             ASRB
5518: 68 57          ASL    -$9,U
551A: 47             ASRA
551B: FF FF 57       STU    $FF57
551E: 68 57          ASL    -$9,U
5520: 47             ASRA
5521: FF FF 57       STU    $FF57
5524: 68 FF FF 57    ASL    [$FF57]
5528: 89 FF          ADCA   #$FF
552A: FF 57 89       STU    $5789
552D: 57             ASRB
552E: AA FF FF 57    ORA    [$FF57]
5532: 89 57          ADCA   #$57
5534: 94 57          ANDA   $57
5536: AA FF FF 57    ORA    [$FF57]
553A: 89 57          ADCA   #$57
553C: 68 57          ASL    -$9,U
553E: 94 57          ANDA   $57
5540: AA FF FF 57    ORA    [$FF57]
5544: 89 57          ADCA   #$57
5546: 68 57          ASL    -$9,U
5548: 94 57          ANDA   $57
554A: 9F 57          STX    $57
554C: AA FF FF 57    ORA    [$FF57]
5550: 68 57          ASL    -$9,U
5552: 94 57          ANDA   $57
5554: 9F 57          STX    $57
5556: AA FF FF 57    ORA    [$FF57]
555A: 68 57          ASL    -$9,U
555C: 94 57          ANDA   $57
555E: 9F FF          STX    $FF
5560: FF 57 68       STU    $5768
5563: 57             ASRB
5564: 9F FF          STX    $FF
5566: FF 57 68       STU    $5768
5569: FF FF 57       STU    $FF57
556C: E1 FF FF 58    CMPB   [$FF58]
5570: 02 57 89       AIM    #$57;$89
5573: FF FF 58       STU    $FF58
5576: 02 57 AA       AIM    #$57;$AA
5579: 57             ASRB
557A: 89 FF          ADCA   #$FF
557C: FF 58 02       STU    $5802
557F: 57             ASRB
5580: AA FF FF 58    ORA    [$FF58]
5584: 02 57 AA       AIM    #$57;$AA
5587: 57             ASRB
5588: 9F FF          STX    $FF
558A: FF 58 02       STU    $5802
558D: 57             ASRB
558E: AA 57          ORA    -$9,U
5590: 9F 57          STX    $57
5592: F7 FF FF       STB    $FFFF
5595: 58             ASLB
5596: 02 57 9F       AIM    #$57;$9F
5599: 57             ASRB
559A: F7 FF FF       STB    $FFFF
559D: 58             ASLB
559E: 02 57 F7       AIM    #$57;$F7
55A1: 57             ASRB
55A2: 68 FF FF 58    ASL    [$FF58]
55A6: 02 57 68       AIM    #$57;$68
55A9: FF FF 57       STU    $FF57
55AC: 68 58          ASL    -$8,U
55AE: 02 FF FF       AIM    #$FF;$FF
55B1: 58             ASLB
55B2: 0D FF          TST    $FF
55B4: FF 58 5A       STU    $585A
55B7: FF FF 58       STU    $FF58
55BA: 5A             DECB
55BB: 58             ASLB
55BC: 39             RTS
55BD: FF FF 58       STU    $FF58
55C0: 5A             DECB
55C1: 58             ASLB
55C2: 39             RTS
55C3: 58             ASLB
55C4: 2E FF          BGT    $55C5
55C6: FF 58 5A       STU    $585A
55C9: 58             ASLB
55CA: 39             RTS
55CB: 58             ASLB
55CC: 2E 58          BGT    $5626
55CE: 23 FF          BLS    $55CF
55D0: FF 58 5A       STU    $585A
55D3: 58             ASLB
55D4: 2E 58          BGT    $562E
55D6: 23 FF          BLS    $55D7
55D8: FF 58 5A       STU    $585A
55DB: 58             ASLB
55DC: 2E 58          BGT    $5636
55DE: 23 58          BLS    $5638
55E0: 18             FCB    $18
55E1: FF FF 58       STU    $FF58
55E4: 5A             DECB
55E5: 58             ASLB
55E6: 23 58          BLS    $5640
55E8: 18             FCB    $18
55E9: FF FF 58       STU    $FF58
55EC: 5A             DECB
55ED: 58             ASLB
55EE: 18             FCB    $18
55EF: FF FF 58       STU    $FF58
55F2: 5A             DECB
55F3: 58             ASLB
55F4: 18             FCB    $18
55F5: 58             ASLB
55F6: 02 57 89       AIM    #$57;$89
55F9: FF FF 58       STU    $FF58
55FC: 18             FCB    $18
55FD: 58             ASLB
55FE: 02 57 89       AIM    #$57;$89
5601: FF FF 58       STU    $FF58
5604: 5A             DECB
5605: FF FF 58       STU    $FF58
5608: 5A             DECB
5609: 58             ASLB
560A: 39             RTS
560B: 58             ASLB
560C: 44             LSRA
560D: 58             ASLB
560E: 4F             CLRA
560F: FF FF 58       STU    $FF58
5612: 65 58 39       EIM    #$58;-$7,Y
5615: 58             ASLB
5616: 44             LSRA
5617: 58             ASLB
5618: 4F             CLRA
5619: FF FF 58       STU    $FF58
561C: 39             RTS
561D: 58             ASLB
561E: 44             LSRA
561F: 58             ASLB
5620: 4F             CLRA
5621: FF FF 58       STU    $FF58
5624: 18             FCB    $18
5625: 58             ASLB
5626: 39             RTS
5627: 58             ASLB
5628: 44             LSRA
5629: 58             ASLB
562A: 4F             CLRA
562B: 58             ASLB
562C: 0D FF          TST    $FF
562E: FF 58 86       STU    $5886
5631: 58             ASLB
5632: BD 58 7B       JSR    $587B
5635: 58             ASLB
5636: B2 FF FF       SBCA   $FFFF
5639: 58             ASLB
563A: 86 58          LDA    #$58
563C: BD 58 7B       JSR    $587B
563F: 58             ASLB
5640: B2 FF FF       SBCA   $FFFF
5643: 58             ASLB
5644: 7B 58 70 58    TIM    #$58,$7058
5648: 86 58          LDA    #$58
564A: B2 FF FF       SBCA   $FFFF
564D: 58             ASLB
564E: 70 58 B2       NEG    $58B2
5651: FF FF 58       STU    $FF58
5654: 70 FF FF       NEG    $FFFF
5657: 58             ASLB
5658: 70 58 A7       NEG    $58A7
565B: FF FF 58       STU    $FF58
565E: 7B 58 91 58    TIM    #$58,$9158
5662: B2 FF FF       SBCA   $FFFF
5665: 58             ASLB
5666: 7B 58 91 58    TIM    #$58,$9158
566A: B2 FF FF       SBCA   $FFFF
566D: 58             ASLB
566E: 7B 58 70 58    TIM    #$58,$7058
5672: 91 58          CMPA   $58
5674: B2 FF FF       SBCA   $FFFF
5677: 58             ASLB
5678: 70 58 91       NEG    $5891
567B: 58             ASLB
567C: B2 FF FF       SBCA   $FFFF
567F: 58             ASLB
5680: 70 58 91       NEG    $5891
5683: 58             ASLB
5684: 9C FF          CMPX   $FF
5686: FF 58 70       STU    $5870
5689: 58             ASLB
568A: 9C FF          CMPX   $FF
568C: FF 58 70       STU    $5870
568F: 58             ASLB
5690: 9C 58          CMPX   $58
5692: A7 FF FF 58    STA    [$FF58]
5696: DE 58          LDU    $58
5698: E9 FF FF 58    ADCB   [$FF58]
569C: DE 58          LDU    $58
569E: 4F             CLRA
569F: 58             ASLB
56A0: E9 FF FF 58    ADCB   [$FF58]
56A4: 4F             CLRA
56A5: 58             ASLB
56A6: E9 FF FF 58    ADCB   [$FF58]
56AA: 4F             CLRA
56AB: 58             ASLB
56AC: D3 58          ADDD   $58
56AE: E9 FF FF 58    ADCB   [$FF58]
56B2: 4F             CLRA
56B3: 58             ASLB
56B4: C8 58          EORB   #$58
56B6: D3 58          ADDD   $58
56B8: E9 FF FF 58    ADCB   [$FF58]
56BC: 4F             CLRA
56BD: 58             ASLB
56BE: BD 58 C8       JSR    $58C8
56C1: 58             ASLB
56C2: D3 58          ADDD   $58
56C4: E9 FF FF 58    ADCB   [$FF58]
56C8: 4F             CLRA
56C9: 58             ASLB
56CA: BD 58 C8       JSR    $58C8
56CD: 58             ASLB
56CE: E9 FF FF 58    ADCB   [$FF58]
56D2: 4F             CLRA
56D3: 58             ASLB
56D4: BD FF FF       JSR    $FFFF
56D7: 58             ASLB
56D8: 86 58          LDA    #$58
56DA: 4F             CLRA
56DB: 58             ASLB
56DC: BD 58 7B       JSR    $587B
56DF: FF FF 58       STU    $FF58
56E2: E9 FF FF 58    ADCB   [$FF58]
56E6: E9 58          ADCB   -$8,U
56E8: 91 FF          CMPA   $FF
56EA: FF 58 91       STU    $5891
56ED: FF FF 05       STU    $FF05
56F0: 00 01          NEG    $01
56F2: 00 01          NEG    $01
56F4: F0 00 10       SUBB   >$0010
56F7: FF 80 10       STU    $8010
56FA: 05 00 01       EIM    #$00;$01
56FD: 00 01          NEG    $01
56FF: F0 EC 60       SUBB   $EC60
5702: 10 80 01 05    SUBW   #$0105
5706: E0 01          SUBB   $1,X
5708: 00 01          NEG    $01
570A: F0 30 24       SUBB   $3024
570D: 10 40          NEGD
570F: 01 05 00       OIM    #$05;$00
5712: 01 50 02       OIM    #$50;$02
5715: 40             NEGA
5716: 28 20          BVC    $5738
5718: C0 80          SUBB   #$80
571A: 0C 05          INC    $05
571C: 20 01          BRA    $571F
571E: 50             NEGB
571F: 02 40 20       AIM    #$40;$20
5722: 20 80          BRA    $56A4
5724: 80 05          SUBA   #$05
5726: 05 40 01       EIM    #$40;$01
5729: 50             NEGB
572A: 02 40 80       AIM    #$40;$80
572D: 20 80          BRA    $56AF
572F: 82 05          SBCA   #$05
5731: 05 10 01       EIM    #$10;$01
5734: 60 02          NEG    $2,X
5736: C0 F0          SUBB   #$F0
5738: 10 FF 80 04    STS    $8004
573C: 05 C0 01       EIM    #$C0;$01
573F: 50             NEGB
5740: 02 40 50       AIM    #$40;$50
5743: 20 80          BRA    $56C5
5745: 40             NEGA
5746: 05 05 E0       EIM    #$05;$E0
5749: 01 30 02       OIM    #$30;$02
574C: 20 70          BRA    $57BE
574E: 30 40          LEAX   $0,U
5750: 40             NEGA
5751: 07 05          ASR    $05
5753: 40             NEGA
5754: 01 40 02       OIM    #$40;$02
5757: AF 80          STX    ,X+
5759: 10 01          FCB    $10,$01
575B: 8F             FCB    $8F
575C: 10             FCB    $10
575D: 05 00 01       EIM    #$00;$01
5760: 60 03          NEG    $3,X
5762: 00 00          NEG    $00
5764: 10 FF 80 04    STS    $8004
5768: 06 70          ROR    $70
576A: 01 00 02       OIM    #$00;$02
576D: 00 F0          NEG    $F0
576F: 60 60          NEG    $0,S
5771: 40             NEGA
5772: 07 06          ASR    $06
5774: 10 01          FCB    $10,$01
5776: 50             FCB    $50
5777: 02             FCB    $02
5778: 70             FCB    $70
5779: 10             FCB    $10
577A: 08 90          ASL    $90
577C: 41             FCB    $41
577D: 04 06          LSR    $06
577F: 20 01          BRA    $5782
5781: 50             NEGB
5782: 02 70 60       AIM    #$70;$60
5785: FF FF 40       STU    $FF40
5788: 04 06          LSR    $06
578A: 80 01          SUBA   #$01
578C: 4C             INCA
578D: 02 9C 84       AIM    #$9C;$84
5790: FF FF 40       STU    $FF40
5793: 04 06          LSR    $06
5795: 9C 01          CMPX   $01
5797: 30 02          LEAX   $2,X
5799: 80 A4          SUBA   #$A4
579B: 2C 24          BGE    $57C1
579D: 40             NEGA
579E: 07 06          ASR    $06
57A0: E0 01          SUBB   $1,X
57A2: 20 02          BRA    $57A6
57A4: 70 60 10       NEG    $6010
57A7: 24 40          BCC    $57E9
57A9: 07 06          ASR    $06
57AB: EC 01          LDD    $1,X
57AD: 30 02          LEAX   $2,X
57AF: 80 44          SUBA   #$44
57B1: 20 54          BRA    $5807
57B3: 40             NEGA
57B4: 07 06          ASR    $06
57B6: 08 01          ASL    $01
57B8: 58             ASLB
57B9: 02 B8 10       AIM    #$B8;$10
57BC: FF 48 40       STU    $4840
57BF: 02 06 00       AIM    #$06;$00
57C2: 01 50 02       OIM    #$50;$02
57C5: B8 10 01       EORA   $1001
57C8: 08 40          ASL    $40
57CA: 01 06 18       OIM    #$06;$18
57CD: 01 40 02       OIM    #$40;$02
57D0: 70 10 10       NEG    $1010
57D3: 80 40          SUBA   #$40
57D5: 10 06          FCB    $10,$06
57D7: 18             FCB    $18
57D8: 01             FCB    $01
57D9: 40             NEGD
57DA: 02 F8 10       AIM    #$F8;$10
57DD: 20 10          BRA    $57EF
57DF: 40             NEGA
57E0: 20 06          BRA    $57E8
57E2: 00 01          NEG    $01
57E4: 4C             INCA
57E5: 03 00          COM    $00
57E7: 00 10          NEG    $10
57E9: FF 80 04       STU    $8004
57EC: 07 00          ASR    $00
57EE: 00 F0          NEG    $F0
57F0: 01 E0 00       OIM    #$E0;$00
57F3: 10 FF 80 10    STS    $8010
57F7: 07 10          ASR    $10
57F9: 01 10 02       OIM    #$10;$02
57FC: 60 40          NEG    $0,U
57FE: 10 24 40 07    LBCC   $9809
5802: 07 50          ASR    $50
5804: 01 00 01       OIM    #$00;$01
5807: F0 B0 60       SUBB   $B060
580A: D0 40          SUBB   $40
580C: 07 07          ASR    $07
580E: 80 01          SUBA   #$01
5810: 00 01          NEG    $01
5812: F0 FF 60       SUBB   $FF60
5815: D0 40          SUBB   $40
5817: 05 07 38       EIM    #$07;$38
581A: 01 40 02       OIM    #$40;$02
581D: F0 58 20       SUBB   $5820
5820: 40             NEGA
5821: 4A             DECA
5822: 07 07          ASR    $07
5824: 50             NEGB
5825: 01 40 02       OIM    #$40;$02
5828: F0 30 20       SUBB   $3020
582B: 58             ASLB
582C: 4A             DECA
582D: 07 07          ASR    $07
582F: 68 01          ASL    $1,X
5831: 40             NEGA
5832: 02 F0 28       AIM    #$F0;$28
5835: 20 70          BRA    $58A7
5837: 4A             DECA
5838: 07 07          ASR    $07
583A: 80 01          SUBA   #$01
583C: 40             NEGA
583D: 02 F0 25       AIM    #$F0;$25
5840: 20 90          BRA    $57D2
5842: 40             NEGA
5843: 07 07          ASR    $07
5845: A5 01          BITA   $1,X
5847: 40             NEGA
5848: 02 F0 13       AIM    #$F0;$13
584B: 20 90          BRA    $57DD
584D: 41             FCB    $41
584E: 05 07 B8       EIM    #$07;$B8
5851: 01 40 02       OIM    #$40;$02
5854: F0 B8 20       SUBB   $B820
5857: 90 40          SUBA   $40
5859: 05 07 00       EIM    #$07;$00
585C: 01 50 03       OIM    #$50;$03
585F: 00 00          NEG    $00
5861: 10 FF 80 04    STS    $8004
5865: 07 A5          ASR    $A5
5867: 01 30 03       OIM    #$30;$03
586A: 6F 13          CLR    -$D,X
586C: 10 01          FCB    $10,$01
586E: 8F             FCB    $8F
586F: 10             FCB    $10
5870: 08 00          ASL    $00
5872: 01 00 01       OIM    #$00;$01
5875: F0 C0 20       SUBB   $C020
5878: D0 40          SUBB   $40
587A: 05 08 30       EIM    #$08;$30
587D: 01 20 02       OIM    #$20;$02
5880: D0 58          SUBB   $58
5882: 10 20          FCB    $10,$20
5884: 49             ROLD
5885: 07 08          ASR    $08
5887: 00 01          NEG    $01
5889: 20 02          BRA    $588D
588B: 10 80 30 D0    SUBW   #$30D0
588F: 40             NEGA
5890: 01 08 C0       OIM    #$08;$C0
5893: 00 E0          NEG    $E0
5895: 02 80 50       AIM    #$80;$50
5898: 40             NEGA
5899: A0 48          SUBA   $8,U
589B: 06 08          ROR    $08
589D: D0 00          SUBB   $00
589F: E0 01          SUBB   $1,X
58A1: D0 40          SUBB   $40
58A3: 40             NEGA
58A4: B0 40 06       SUBA   $4006
58A7: 08 00          ASL    $00
58A9: 00 F0          NEG    $F0
58AB: 01 E0 FF       OIM    #$E0;$FF
58AE: 20 10          BRA    $58C0
58B0: 80 01          SUBA   #$01
58B2: 08 88          ASL    $88
58B4: 01 20 02       OIM    #$20;$02
58B7: B0 30 10       SUBA   $3010
58BA: 41             FCB    $41
58BB: 44             LSRA
58BC: 00 08          NEG    $08
58BE: 28 01          BVC    $58C1
58C0: 30 02          LEAX   $2,X
58C2: E0 58          SUBB   -$8,U
58C4: 20 40          BRA    $5906
58C6: 4A             DECA
58C7: 07 08          ASR    $08
58C9: 40             NEGA
58CA: 01 30 03       OIM    #$30;$03
58CD: 10 40          NEGD
58CF: 20 28          BRA    $58F9
58D1: 4A             DECA
58D2: 07 08          ASR    $08
58D4: 58             ASLB
58D5: 01 30 03       OIM    #$30;$03
58D8: 28 28          BVC    $5902
58DA: 20 28          BRA    $5904
58DC: 4A             DECA
58DD: 07 08          ASR    $08
58DF: 00 01          NEG    $01
58E1: 50             NEGB
58E2: 03 00          COM    $00
58E4: FF FF FF       STU    $FFFF
58E7: 80 04          SUBA   #$04
58E9: 08 80          ASL    $80
58EB: 01 20 03       OIM    #$20;$03
58EE: 20 FF          BRA    $58EF
58F0: FF FF 40       STU    $FF40
58F3: 06 65          ROR    $65
58F5: 7E 65 7E       JMP    $657E
58F8: 65 7E 65       EIM    #$7E;$5,S
58FB: 7E 65 7E       JMP    $657E
58FE: 65 7E 65       EIM    #$7E;$5,S
5901: 7E 65 7E       JMP    $657E
5904: 65 7E 65       EIM    #$7E;$5,S
5907: 7E 65 7E       JMP    $657E
590A: 65 7E 65       EIM    #$7E;$5,S
590D: 7E 65 7E       JMP    $657E
5910: 65 7E 65       EIM    #$7E;$5,S
5913: 7E 65 7E       JMP    $657E
5916: 65 7E 65       EIM    #$7E;$5,S
5919: 7E 65 7A       JMP    $657A
591C: 65 7A 65       EIM    #$7A;$5,S
591F: 7A 65 7A       DEC    $657A
5922: 65 7A 65       EIM    #$7A;$5,S
5925: 7A 65 7A       DEC    $657A
5928: 65 7A 65       EIM    #$7A;$5,S
592B: 7A 65 7A       DEC    $657A
592E: 65 7A 65       EIM    #$7A;$5,S
5931: 7A 65 74       DEC    $6574
5934: 65 96 65       EIM    #$96;$5,S
5937: 96 65          LDA    $65
5939: 96 65          LDA    $65
593B: 96 65          LDA    $65
593D: 96 65          LDA    $65
593F: 96 65          LDA    $65
5941: 96 65          LDA    $65
5943: 96 65          LDA    $65
5945: 96 65          LDA    $65
5947: 96 65          LDA    $65
5949: 96 65          LDA    $65
594B: 96 65          LDA    $65
594D: 96 65          LDA    $65
594F: 96 65          LDA    $65
5951: 96 65          LDA    $65
5953: 96 65          LDA    $65
5955: 96 65          LDA    $65
5957: 96 65          LDA    $65
5959: 96 65          LDA    $65
595B: 92 65          SBCA   $65
595D: 92 65          SBCA   $65
595F: 92 65          SBCA   $65
5961: 92 65          SBCA   $65
5963: 92 65          SBCA   $65
5965: 92 65          SBCA   $65
5967: 92 65          SBCA   $65
5969: 92 65          SBCA   $65
596B: 8C 65 8C       CMPX   #$658C
596E: 65 8C 65       EIM    #$8C;$5,S
5971: 8C 65 84       CMPX   #$6584
5974: 65 AA 65       EIM    #$AA;$5,S
5977: AA 65          ORA    $5,S
5979: AA 65          ORA    $5,S
597B: AA 65          ORA    $5,S
597D: AA 65          ORA    $5,S
597F: AA 65          ORA    $5,S
5981: AA 65          ORA    $5,S
5983: AA 65          ORA    $5,S
5985: AA 65          ORA    $5,S
5987: AA 65          ORA    $5,S
5989: AA 65          ORA    $5,S
598B: AA 65          ORA    $5,S
598D: AA 65          ORA    $5,S
598F: AA 65          ORA    $5,S
5991: AA 65          ORA    $5,S
5993: AA 65          ORA    $5,S
5995: AA 65          ORA    $5,S
5997: AA 65          ORA    $5,S
5999: AA 65          ORA    $5,S
599B: A6 65          LDA    $5,S
599D: A6 65          LDA    $5,S
599F: A6 65          LDA    $5,S
59A1: A6 65          LDA    $5,S
59A3: A6 65          LDA    $5,S
59A5: A6 65          LDA    $5,S
59A7: A6 65          LDA    $5,S
59A9: A6 65          LDA    $5,S
59AB: A0 65          SUBA   $5,S
59AD: A0 65          SUBA   $5,S
59AF: 9C 65          CMPX   $65
59B1: 9C 65          CMPX   $65
59B3: 9C 65          CMPX   $65
59B5: BE 65 BE       LDX    $65BE
59B8: 65 BE 65       EIM    #$BE;$5,S
59BB: BE 65 BE       LDX    $65BE
59BE: 65 BE 65       EIM    #$BE;$5,S
59C1: BE 65 BE       LDX    $65BE
59C4: 65 BE 65       EIM    #$BE;$5,S
59C7: BE 65 BE       LDX    $65BE
59CA: 65 BE 65       EIM    #$BE;$5,S
59CD: BE 65 BE       LDX    $65BE
59D0: 65 BE 65       EIM    #$BE;$5,S
59D3: BE 65 BE       LDX    $65BE
59D6: 65 BE 65       EIM    #$BE;$5,S
59D9: BE 65 BA       LDX    $65BA
59DC: 65 BA 65       EIM    #$BA;$5,S
59DF: BA 65 BA       ORA    $65BA
59E2: 65 BA 65       EIM    #$BA;$5,S
59E5: BA 65 BA       ORA    $65BA
59E8: 65 BA 65       EIM    #$BA;$5,S
59EB: B4 65 B4       ANDA   $65B4
59EE: 65 B0 65       EIM    #$B0;$5,S
59F1: B0 65 B0       SUBA   $65B0
59F4: 65 C4 65       EIM    #$C4;$5,S
59F7: C4 65          ANDB   #$65
59F9: C4 65          ANDB   #$65
59FB: C4 65          ANDB   #$65
59FD: C4 65          ANDB   #$65
59FF: C4 65          ANDB   #$65
5A01: C4 65          ANDB   #$65
5A03: C4 65          ANDB   #$65
5A05: C4 65          ANDB   #$65
5A07: C4 65          ANDB   #$65
5A09: C4 65          ANDB   #$65
5A0B: C4 65          ANDB   #$65
5A0D: C4 65          ANDB   #$65
5A0F: C4 65          ANDB   #$65
5A11: C4 65          ANDB   #$65
5A13: C4 65          ANDB   #$65
5A15: C4 65          ANDB   #$65
5A17: C4 65          ANDB   #$65
5A19: C4 65          ANDB   #$65
5A1B: C4 65          ANDB   #$65
5A1D: C4 65          ANDB   #$65
5A1F: C4 65          ANDB   #$65
5A21: C4 65          ANDB   #$65
5A23: C4 65          ANDB   #$65
5A25: C4 65          ANDB   #$65
5A27: C4 65          ANDB   #$65
5A29: C4 65          ANDB   #$65
5A2B: C4 65          ANDB   #$65
5A2D: C4 65          ANDB   #$65
5A2F: C4 65          ANDB   #$65
5A31: C4 65          ANDB   #$65
5A33: C4 65          ANDB   #$65
5A35: C4 65          ANDB   #$65
5A37: C4 65          ANDB   #$65
5A39: C4 65          ANDB   #$65
5A3B: C4 65          ANDB   #$65
5A3D: C4 65          ANDB   #$65
5A3F: C4 65          ANDB   #$65
5A41: C4 65          ANDB   #$65
5A43: C4 65          ANDB   #$65
5A45: C4 65          ANDB   #$65
5A47: C4 65          ANDB   #$65
5A49: C4 65          ANDB   #$65
5A4B: C4 65          ANDB   #$65
5A4D: C4 65          ANDB   #$65
5A4F: C4 65          ANDB   #$65
5A51: C4 65          ANDB   #$65
5A53: C4 65          ANDB   #$65
5A55: C4 65          ANDB   #$65
5A57: C4 65          ANDB   #$65
5A59: C4 65          ANDB   #$65
5A5B: C4 65          ANDB   #$65
5A5D: C4 65          ANDB   #$65
5A5F: C4 65          ANDB   #$65
5A61: C4 65          ANDB   #$65
5A63: C4 65          ANDB   #$65
5A65: C4 65          ANDB   #$65
5A67: C4 65          ANDB   #$65
5A69: C4 65          ANDB   #$65
5A6B: C4 65          ANDB   #$65
5A6D: C4 65          ANDB   #$65
5A6F: C4 65          ANDB   #$65
5A71: C4 65          ANDB   #$65
5A73: C4 65          ANDB   #$65
5A75: D6 65          LDB    $65
5A77: D6 65          LDB    $65
5A79: D6 65          LDB    $65
5A7B: D6 65          LDB    $65
5A7D: D6 65          LDB    $65
5A7F: D6 65          LDB    $65
5A81: D6 65          LDB    $65
5A83: D6 65          LDB    $65
5A85: D6 65          LDB    $65
5A87: D6 65          LDB    $65
5A89: D6 65          LDB    $65
5A8B: D6 65          LDB    $65
5A8D: D6 65          LDB    $65
5A8F: D6 65          LDB    $65
5A91: D6 65          LDB    $65
5A93: D6 65          LDB    $65
5A95: D6 65          LDB    $65
5A97: D6 65          LDB    $65
5A99: D6 65          LDB    $65
5A9B: D2 65          SBCB   $65
5A9D: D2 65          SBCB   $65
5A9F: D2 65          SBCB   $65
5AA1: D2 65          SBCB   $65
5AA3: D2 65          SBCB   $65
5AA5: D2 65          SBCB   $65
5AA7: D2 65          SBCB   $65
5AA9: D2 65          SBCB   $65
5AAB: CC 65 CC       LDD    #$65CC
5AAE: 65 C8 65       EIM    #$C8;$5,S
5AB1: C8 65          EORB   #$65
5AB3: C8 65          EORB   #$65
5AB5: EA 65          ORB    $5,S
5AB7: EA 65          ORB    $5,S
5AB9: EA 65          ORB    $5,S
5ABB: EA 65          ORB    $5,S
5ABD: EA 65          ORB    $5,S
5ABF: EA 65          ORB    $5,S
5AC1: EA 65          ORB    $5,S
5AC3: EA 65          ORB    $5,S
5AC5: EA 65          ORB    $5,S
5AC7: EA 65          ORB    $5,S
5AC9: EA 65          ORB    $5,S
5ACB: EA 65          ORB    $5,S
5ACD: EA 65          ORB    $5,S
5ACF: EA 65          ORB    $5,S
5AD1: EA 65          ORB    $5,S
5AD3: EA 65          ORB    $5,S
5AD5: EA 65          ORB    $5,S
5AD7: EA 65          ORB    $5,S
5AD9: EA 65          ORB    $5,S
5ADB: E6 65          LDB    $5,S
5ADD: E6 65          LDB    $5,S
5ADF: E6 65          LDB    $5,S
5AE1: E6 65          LDB    $5,S
5AE3: E6 65          LDB    $5,S
5AE5: E6 65          LDB    $5,S
5AE7: E6 65          LDB    $5,S
5AE9: E6 65          LDB    $5,S
5AEB: E0 65          SUBB   $5,S
5AED: E0 65          SUBB   $5,S
5AEF: DC 65          LDD    $65
5AF1: DC 65          LDD    $65
5AF3: DC 65          LDD    $65
5AF5: F0 65 F0       SUBB   $65F0
5AF8: 65 F0 65       EIM    #$F0;$5,S
5AFB: F0 65 F0       SUBB   $65F0
5AFE: 65 F0 65       EIM    #$F0;$5,S
5B01: F0 65 F0       SUBB   $65F0
5B04: 65 F0 65       EIM    #$F0;$5,S
5B07: F0 65 F0       SUBB   $65F0
5B0A: 65 F0 65       EIM    #$F0;$5,S
5B0D: F0 65 F0       SUBB   $65F0
5B10: 65 F0 65       EIM    #$F0;$5,S
5B13: F0 65 F0       SUBB   $65F0
5B16: 65 F0 65       EIM    #$F0;$5,S
5B19: F0 65 F0       SUBB   $65F0
5B1C: 65 F0 65       EIM    #$F0;$5,S
5B1F: F0 65 F0       SUBB   $65F0
5B22: 65 F0 65       EIM    #$F0;$5,S
5B25: F0 65 F0       SUBB   $65F0
5B28: 65 F0 65       EIM    #$F0;$5,S
5B2B: F0 65 F0       SUBB   $65F0
5B2E: 65 F0 65       EIM    #$F0;$5,S
5B31: F0 65 F0       SUBB   $65F0
5B34: 65 F4 65       EIM    #$F4;$5,S
5B37: F4 65 F4       ANDB   $65F4
5B3A: 65 F4 65       EIM    #$F4;$5,S
5B3D: F4 65 F4       ANDB   $65F4
5B40: 65 F4 65       EIM    #$F4;$5,S
5B43: F4 65 F4       ANDB   $65F4
5B46: 65 F4 65       EIM    #$F4;$5,S
5B49: F4 65 F4       ANDB   $65F4
5B4C: 65 F4 65       EIM    #$F4;$5,S
5B4F: F4 65 F4       ANDB   $65F4
5B52: 65 F4 65       EIM    #$F4;$5,S
5B55: F4 65 F4       ANDB   $65F4
5B58: 65 F4 65       EIM    #$F4;$5,S
5B5B: F4 65 F4       ANDB   $65F4
5B5E: 65 F4 65       EIM    #$F4;$5,S
5B61: F4 65 F4       ANDB   $65F4
5B64: 65 F4 65       EIM    #$F4;$5,S
5B67: F4 65 F4       ANDB   $65F4
5B6A: 65 F4 65       EIM    #$F4;$5,S
5B6D: F4 65 F4       ANDB   $65F4
5B70: 65 F4 65       EIM    #$F4;$5,S
5B73: F4 66 26       ANDB   $6626
5B76: 66 26          ROR    $6,Y
5B78: 66 26          ROR    $6,Y
5B7A: 66 26          ROR    $6,Y
5B7C: 66 26          ROR    $6,Y
5B7E: 66 26          ROR    $6,Y
5B80: 66 26          ROR    $6,Y
5B82: 66 26          ROR    $6,Y
5B84: 66 26          ROR    $6,Y
5B86: 66 26          ROR    $6,Y
5B88: 66 26          ROR    $6,Y
5B8A: 66 26          ROR    $6,Y
5B8C: 66 26          ROR    $6,Y
5B8E: 66 26          ROR    $6,Y
5B90: 66 26          ROR    $6,Y
5B92: 66 26          ROR    $6,Y
5B94: 66 26          ROR    $6,Y
5B96: 66 26          ROR    $6,Y
5B98: 66 26          ROR    $6,Y
5B9A: 66 22          ROR    $2,Y
5B9C: 66 22          ROR    $2,Y
5B9E: 66 22          ROR    $2,Y
5BA0: 66 22          ROR    $2,Y
5BA2: 66 22          ROR    $2,Y
5BA4: 66 22          ROR    $2,Y
5BA6: 66 1A          ROR    -$6,X
5BA8: 66 1A          ROR    -$6,X
5BAA: 66 0C          ROR    $C,X
5BAC: 66 0C          ROR    $C,X
5BAE: 66 00          ROR    $0,X
5BB0: 66 00          ROR    $0,X
5BB2: 65 F8 66       EIM    #$F8;$6,S
5BB5: 56             RORB
5BB6: 66 56          ROR    -$A,U
5BB8: 66 56          ROR    -$A,U
5BBA: 66 56          ROR    -$A,U
5BBC: 66 56          ROR    -$A,U
5BBE: 66 56          ROR    -$A,U
5BC0: 66 56          ROR    -$A,U
5BC2: 66 56          ROR    -$A,U
5BC4: 66 56          ROR    -$A,U
5BC6: 66 56          ROR    -$A,U
5BC8: 66 56          ROR    -$A,U
5BCA: 66 56          ROR    -$A,U
5BCC: 66 56          ROR    -$A,U
5BCE: 66 56          ROR    -$A,U
5BD0: 66 56          ROR    -$A,U
5BD2: 66 56          ROR    -$A,U
5BD4: 66 56          ROR    -$A,U
5BD6: 66 56          ROR    -$A,U
5BD8: 66 56          ROR    -$A,U
5BDA: 66 50          ROR    -$10,U
5BDC: 66 50          ROR    -$10,U
5BDE: 66 4A          ROR    $A,U
5BE0: 66 4A          ROR    $A,U
5BE2: 66 4A          ROR    $A,U
5BE4: 66 4A          ROR    $A,U
5BE6: 66 44          ROR    $4,U
5BE8: 66 44          ROR    $4,U
5BEA: 66 3A          ROR    -$6,Y
5BEC: 66 3A          ROR    -$6,Y
5BEE: 66 32          ROR    -$E,Y
5BF0: 66 32          ROR    -$E,Y
5BF2: 66 2C          ROR    $C,Y
5BF4: 66 62          ROR    $2,S
5BF6: 66 5E          ROR    -$2,U
5BF8: 66 5E          ROR    -$2,U
5BFA: 66 5E          ROR    -$2,U
5BFC: 66 5E          ROR    -$2,U
5BFE: 66 5E          ROR    -$2,U
5C00: 66 5E          ROR    -$2,U
5C02: 66 5E          ROR    -$2,U
5C04: 66 5E          ROR    -$2,U
5C06: 66 5E          ROR    -$2,U
5C08: 66 5E          ROR    -$2,U
5C0A: 66 5E          ROR    -$2,U
5C0C: 66 5E          ROR    -$2,U
5C0E: 66 5E          ROR    -$2,U
5C10: 66 5E          ROR    -$2,U
5C12: 66 5E          ROR    -$2,U
5C14: 66 5E          ROR    -$2,U
5C16: 66 5E          ROR    -$2,U
5C18: 66 5E          ROR    -$2,U
5C1A: 66 5E          ROR    -$2,U
5C1C: 66 5E          ROR    -$2,U
5C1E: 66 5E          ROR    -$2,U
5C20: 66 5E          ROR    -$2,U
5C22: 66 5E          ROR    -$2,U
5C24: 66 5E          ROR    -$2,U
5C26: 66 5E          ROR    -$2,U
5C28: 66 5E          ROR    -$2,U
5C2A: 66 5E          ROR    -$2,U
5C2C: 66 5E          ROR    -$2,U
5C2E: 66 5E          ROR    -$2,U
5C30: 66 5E          ROR    -$2,U
5C32: 66 5E          ROR    -$2,U
5C34: 66 6C          ROR    $C,S
5C36: 66 6A          ROR    $A,S
5C38: 66 6A          ROR    $A,S
5C3A: 66 6A          ROR    $A,S
5C3C: 66 6A          ROR    $A,S
5C3E: 66 6A          ROR    $A,S
5C40: 66 6A          ROR    $A,S
5C42: 66 6A          ROR    $A,S
5C44: 66 6A          ROR    $A,S
5C46: 66 6A          ROR    $A,S
5C48: 66 6A          ROR    $A,S
5C4A: 66 6A          ROR    $A,S
5C4C: 66 6A          ROR    $A,S
5C4E: 66 6A          ROR    $A,S
5C50: 66 6A          ROR    $A,S
5C52: 66 6A          ROR    $A,S
5C54: 66 6A          ROR    $A,S
5C56: 66 6A          ROR    $A,S
5C58: 66 6A          ROR    $A,S
5C5A: 66 6A          ROR    $A,S
5C5C: 66 6A          ROR    $A,S
5C5E: 66 6A          ROR    $A,S
5C60: 66 6A          ROR    $A,S
5C62: 66 6A          ROR    $A,S
5C64: 66 6A          ROR    $A,S
5C66: 66 6A          ROR    $A,S
5C68: 66 6A          ROR    $A,S
5C6A: 66 6A          ROR    $A,S
5C6C: 66 6A          ROR    $A,S
5C6E: 66 6A          ROR    $A,S
5C70: 66 6A          ROR    $A,S
5C72: 66 6A          ROR    $A,S
5C74: 66 B0 66 B0    ROR    [$66B0,W]
5C78: 66 B0 66 B0    ROR    [$66B0,W]
5C7C: 66 B0 66 B0    ROR    [$66B0,W]
5C80: 66 B0 66 B0    ROR    [$66B0,W]
5C84: 66 B0 66 B0    ROR    [$66B0,W]
5C88: 66 B0 66 B0    ROR    [$66B0,W]
5C8C: 66 B0 66 B0    ROR    [$66B0,W]
5C90: 66 B0 66 B0    ROR    [$66B0,W]
5C94: 66 B0 66 B0    ROR    [$66B0,W]
5C98: 66 B0 66 AA    ROR    [$66AA,W]
5C9C: 66 AA          ROR    F,Y
5C9E: 66 A4          ROR    ,Y
5CA0: 66 9A          ROR    [F,X]
5CA2: 66 9A          ROR    [F,X]
5CA4: 66 92          ROR    Illegal Postbyte
5CA6: 66 88 66       ROR    $66,X
5CA9: 80 66          SUBA   #$66
5CAB: 78 66 78       ASL    $6678
5CAE: 66 72          ROR    -$E,S
5CB0: 66 72          ROR    -$E,S
5CB2: 66 72          ROR    -$E,S
5CB4: 66 C8 66       ROR    $66,U
5CB7: C8 66          EORB   #$66
5CB9: C8 66          EORB   #$66
5CBB: C8 66          EORB   #$66
5CBD: C8 66          EORB   #$66
5CBF: C8 66          EORB   #$66
5CC1: C8 66          EORB   #$66
5CC3: C8 66          EORB   #$66
5CC5: C8 66          EORB   #$66
5CC7: C8 66          EORB   #$66
5CC9: C8 66          EORB   #$66
5CCB: C8 66          EORB   #$66
5CCD: C8 66          EORB   #$66
5CCF: C8 66          EORB   #$66
5CD1: C8 66          EORB   #$66
5CD3: C8 66          EORB   #$66
5CD5: C8 66          EORB   #$66
5CD7: C8 66          EORB   #$66
5CD9: C8 66          EORB   #$66
5CDB: C8 66          EORB   #$66
5CDD: C8 66          EORB   #$66
5CDF: C8 66          EORB   #$66
5CE1: C2 66          SBCB   #$66
5CE3: BC 66 BC       CMPX   $66BC
5CE6: 66 BC 66       ROR    [$5D4F,PCR]
5CE9: BC 66 B8       CMPX   $66B8
5CEC: 66 B8 66       ROR    [$66,Y]
5CEF: B8 66 B8       EORA   $66B8
5CF2: 66 B8 66       ROR    [$66,Y]
5CF5: CC 66 CC       LDD    #$66CC
5CF8: 66 CC 66       ROR    $5D61,PCR
5CFB: CC 66 CC       LDD    #$66CC
5CFE: 66 CC 66       ROR    $5D67,PCR
5D01: CC 66 CC       LDD    #$66CC
5D04: 66 CC 66       ROR    $5D6D,PCR
5D07: CC 66 CC       LDD    #$66CC
5D0A: 66 CC 66       ROR    $5D73,PCR
5D0D: CC 66 CC       LDD    #$66CC
5D10: 66 CC 66       ROR    $5D79,PCR
5D13: CC 66 CC       LDD    #$66CC
5D16: 66 CC 66       ROR    $5D7F,PCR
5D19: CC 66 CC       LDD    #$66CC
5D1C: 66 CC 66       ROR    $5D85,PCR
5D1F: CC 66 CC       LDD    #$66CC
5D22: 66 CC 66       ROR    $5D8B,PCR
5D25: CC 66 CC       LDD    #$66CC
5D28: 66 CC 66       ROR    $5D91,PCR
5D2B: CC 66 CC       LDD    #$66CC
5D2E: 66 CC 66       ROR    $5D97,PCR
5D31: CC 66 CC       LDD    #$66CC
5D34: 66 D2          ROR    Illegal Postbyte
5D36: 66 D2          ROR    Illegal Postbyte
5D38: 66 D2          ROR    Illegal Postbyte
5D3A: 66 D2          ROR    Illegal Postbyte
5D3C: 66 D2          ROR    Illegal Postbyte
5D3E: 66 D2          ROR    Illegal Postbyte
5D40: 66 D2          ROR    Illegal Postbyte
5D42: 66 D2          ROR    Illegal Postbyte
5D44: 66 D2          ROR    Illegal Postbyte
5D46: 66 D2          ROR    Illegal Postbyte
5D48: 66 D2          ROR    Illegal Postbyte
5D4A: 66 D2          ROR    Illegal Postbyte
5D4C: 66 D2          ROR    Illegal Postbyte
5D4E: 66 D2          ROR    Illegal Postbyte
5D50: 66 D2          ROR    Illegal Postbyte
5D52: 66 D2          ROR    Illegal Postbyte
5D54: 66 D2          ROR    Illegal Postbyte
5D56: 66 D2          ROR    Illegal Postbyte
5D58: 66 D2          ROR    Illegal Postbyte
5D5A: 66 D2          ROR    Illegal Postbyte
5D5C: 66 D2          ROR    Illegal Postbyte
5D5E: 66 D2          ROR    Illegal Postbyte
5D60: 66 D2          ROR    Illegal Postbyte
5D62: 66 D2          ROR    Illegal Postbyte
5D64: 66 D2          ROR    Illegal Postbyte
5D66: 66 D2          ROR    Illegal Postbyte
5D68: 66 D2          ROR    Illegal Postbyte
5D6A: 66 D2          ROR    Illegal Postbyte
5D6C: 66 D2          ROR    Illegal Postbyte
5D6E: 66 D2          ROR    Illegal Postbyte
5D70: 66 D2          ROR    Illegal Postbyte
5D72: 66 D2          ROR    Illegal Postbyte
5D74: 66 D6          ROR    [A,U]
5D76: 66 D6          ROR    [A,U]
5D78: 66 D6          ROR    [A,U]
5D7A: 66 D6          ROR    [A,U]
5D7C: 66 D6          ROR    [A,U]
5D7E: 66 D6          ROR    [A,U]
5D80: 66 D6          ROR    [A,U]
5D82: 66 D6          ROR    [A,U]
5D84: 66 D6          ROR    [A,U]
5D86: 66 D6          ROR    [A,U]
5D88: 66 D6          ROR    [A,U]
5D8A: 66 D6          ROR    [A,U]
5D8C: 66 D6          ROR    [A,U]
5D8E: 66 D6          ROR    [A,U]
5D90: 66 D6          ROR    [A,U]
5D92: 66 D6          ROR    [A,U]
5D94: 66 D6          ROR    [A,U]
5D96: 66 D6          ROR    [A,U]
5D98: 66 D6          ROR    [A,U]
5D9A: 66 D6          ROR    [A,U]
5D9C: 66 D6          ROR    [A,U]
5D9E: 66 D6          ROR    [A,U]
5DA0: 66 D6          ROR    [A,U]
5DA2: 66 D6          ROR    [A,U]
5DA4: 66 D6          ROR    [A,U]
5DA6: 66 D6          ROR    [A,U]
5DA8: 66 D6          ROR    [A,U]
5DAA: 66 D6          ROR    [A,U]
5DAC: 66 D6          ROR    [A,U]
5DAE: 66 D6          ROR    [A,U]
5DB0: 66 D6          ROR    [A,U]
5DB2: 66 D6          ROR    [A,U]
5DB4: 66 D6          ROR    [A,U]
5DB6: 66 D6          ROR    [A,U]
5DB8: 66 D6          ROR    [A,U]
5DBA: 66 D6          ROR    [A,U]
5DBC: 66 D6          ROR    [A,U]
5DBE: 66 D6          ROR    [A,U]
5DC0: 66 D6          ROR    [A,U]
5DC2: 66 D6          ROR    [A,U]
5DC4: 66 D6          ROR    [A,U]
5DC6: 66 D6          ROR    [A,U]
5DC8: 66 D6          ROR    [A,U]
5DCA: 66 D6          ROR    [A,U]
5DCC: 66 D6          ROR    [A,U]
5DCE: 66 D6          ROR    [A,U]
5DD0: 66 D6          ROR    [A,U]
5DD2: 66 D6          ROR    [A,U]
5DD4: 66 D6          ROR    [A,U]
5DD6: 66 D6          ROR    [A,U]
5DD8: 66 D6          ROR    [A,U]
5DDA: 66 D6          ROR    [A,U]
5DDC: 66 D6          ROR    [A,U]
5DDE: 66 D6          ROR    [A,U]
5DE0: 66 D6          ROR    [A,U]
5DE2: 66 D6          ROR    [A,U]
5DE4: 66 D6          ROR    [A,U]
5DE6: 66 D6          ROR    [A,U]
5DE8: 66 D6          ROR    [A,U]
5DEA: 66 D6          ROR    [A,U]
5DEC: 66 D6          ROR    [A,U]
5DEE: 66 D6          ROR    [A,U]
5DF0: 66 D6          ROR    [A,U]
5DF2: 66 D6          ROR    [A,U]
5DF4: 67 06          ASR    $6,X
5DF6: 67 06          ASR    $6,X
5DF8: 67 06          ASR    $6,X
5DFA: 67 06          ASR    $6,X
5DFC: 67 06          ASR    $6,X
5DFE: 67 06          ASR    $6,X
5E00: 67 06          ASR    $6,X
5E02: 67 06          ASR    $6,X
5E04: 67 06          ASR    $6,X
5E06: 67 06          ASR    $6,X
5E08: 67 06          ASR    $6,X
5E0A: 67 06          ASR    $6,X
5E0C: 67 06          ASR    $6,X
5E0E: 67 06          ASR    $6,X
5E10: 67 06          ASR    $6,X
5E12: 67 06          ASR    $6,X
5E14: 67 06          ASR    $6,X
5E16: 67 06          ASR    $6,X
5E18: 67 06          ASR    $6,X
5E1A: 67 06          ASR    $6,X
5E1C: 67 00          ASR    $0,X
5E1E: 66 F8 66       ROR    [$66,S]
5E21: EC 66          LDD    $6,S
5E23: EC 66          LDD    $6,S
5E25: E4 66          ANDB   $6,S
5E27: E4 66          ANDB   $6,S
5E29: DE 66          LDU    $66
5E2B: DA 66          ORB    $66
5E2D: DA 66          ORB    $66
5E2F: DA 66          ORB    $66
5E31: DA 66          ORB    $66
5E33: DA 67          ORB    $67
5E35: 26 67          BNE    $5E9E
5E37: 26 67          BNE    $5EA0
5E39: 26 67          BNE    $5EA2
5E3B: 26 67          BNE    $5EA4
5E3D: 26 67          BNE    $5EA6
5E3F: 26 67          BNE    $5EA8
5E41: 26 67          BNE    $5EAA
5E43: 26 67          BNE    $5EAC
5E45: 26 67          BNE    $5EAE
5E47: 26 67          BNE    $5EB0
5E49: 26 67          BNE    $5EB2
5E4B: 26 67          BNE    $5EB4
5E4D: 26 67          BNE    $5EB6
5E4F: 26 67          BNE    $5EB8
5E51: 26 67          BNE    $5EBA
5E53: 26 67          BNE    $5EBC
5E55: 26 67          BNE    $5EBE
5E57: 26 67          BNE    $5EC0
5E59: 26 67          BNE    $5EC2
5E5B: 22 67          BHI    $5EC4
5E5D: 22 67          BHI    $5EC6
5E5F: 22 67          BHI    $5EC8
5E61: 1C 67          ANDCC  #$67
5E63: 1C 67          ANDCC  #$67
5E65: 18             FCB    $18
5E66: 67 12          ASR    -$E,X
5E68: 67 12          ASR    -$E,X
5E6A: 67 0E          ASR    $E,X
5E6C: 67 0E          ASR    $E,X
5E6E: 67 0E          ASR    $E,X
5E70: 67 0E          ASR    $E,X
5E72: 67 0E          ASR    $E,X
5E74: 67 4C          ASR    $C,U
5E76: 67 4C          ASR    $C,U
5E78: 67 4C          ASR    $C,U
5E7A: 67 4C          ASR    $C,U
5E7C: 67 4C          ASR    $C,U
5E7E: 67 4C          ASR    $C,U
5E80: 67 4C          ASR    $C,U
5E82: 67 4C          ASR    $C,U
5E84: 67 4C          ASR    $C,U
5E86: 67 4C          ASR    $C,U
5E88: 67 4C          ASR    $C,U
5E8A: 67 4C          ASR    $C,U
5E8C: 67 4C          ASR    $C,U
5E8E: 67 4C          ASR    $C,U
5E90: 67 4C          ASR    $C,U
5E92: 67 4C          ASR    $C,U
5E94: 67 4C          ASR    $C,U
5E96: 67 4C          ASR    $C,U
5E98: 67 4C          ASR    $C,U
5E9A: 67 46          ASR    $6,U
5E9C: 67 46          ASR    $6,U
5E9E: 67 42          ASR    $2,U
5EA0: 67 42          ASR    $2,U
5EA2: 67 3A          ASR    -$6,Y
5EA4: 67 3A          ASR    -$6,Y
5EA6: 67 32          ASR    -$E,Y
5EA8: 67 32          ASR    -$E,Y
5EAA: 67 2C          ASR    $C,Y
5EAC: 67 2C          ASR    $C,Y
5EAE: 67 2C          ASR    $C,Y
5EB0: 67 2C          ASR    $C,Y
5EB2: 67 2C          ASR    $C,Y
5EB4: 67 7A          ASR    -$6,S
5EB6: 67 7A          ASR    -$6,S
5EB8: 67 7A          ASR    -$6,S
5EBA: 67 7A          ASR    -$6,S
5EBC: 67 7A          ASR    -$6,S
5EBE: 67 7A          ASR    -$6,S
5EC0: 67 7A          ASR    -$6,S
5EC2: 67 7A          ASR    -$6,S
5EC4: 67 7A          ASR    -$6,S
5EC6: 67 7A          ASR    -$6,S
5EC8: 67 7A          ASR    -$6,S
5ECA: 67 7A          ASR    -$6,S
5ECC: 67 7A          ASR    -$6,S
5ECE: 67 7A          ASR    -$6,S
5ED0: 67 7A          ASR    -$6,S
5ED2: 67 7A          ASR    -$6,S
5ED4: 67 7A          ASR    -$6,S
5ED6: 67 7A          ASR    -$6,S
5ED8: 67 7A          ASR    -$6,S
5EDA: 67 76          ASR    -$A,S
5EDC: 67 76          ASR    -$A,S
5EDE: 67 70          ASR    -$10,S
5EE0: 67 70          ASR    -$10,S
5EE2: 67 66          ASR    $6,S
5EE4: 67 66          ASR    $6,S
5EE6: 67 5E          ASR    -$2,U
5EE8: 67 5E          ASR    -$2,U
5EEA: 67 58          ASR    -$8,U
5EEC: 67 58          ASR    -$8,U
5EEE: 67 54          ASR    -$C,U
5EF0: 67 54          ASR    -$C,U
5EF2: 67 54          ASR    -$C,U
5EF4: 67 80          ASR    ,X+
5EF6: 67 80          ASR    ,X+
5EF8: 67 80          ASR    ,X+
5EFA: 67 80          ASR    ,X+
5EFC: 67 80          ASR    ,X+
5EFE: 67 80          ASR    ,X+
5F00: 67 80          ASR    ,X+
5F02: 67 80          ASR    ,X+
5F04: 67 80          ASR    ,X+
5F06: 67 80          ASR    ,X+
5F08: 67 80          ASR    ,X+
5F0A: 67 80          ASR    ,X+
5F0C: 67 80          ASR    ,X+
5F0E: 67 80          ASR    ,X+
5F10: 67 80          ASR    ,X+
5F12: 67 80          ASR    ,X+
5F14: 67 80          ASR    ,X+
5F16: 67 80          ASR    ,X+
5F18: 67 80          ASR    ,X+
5F1A: 67 80          ASR    ,X+
5F1C: 67 80          ASR    ,X+
5F1E: 67 80          ASR    ,X+
5F20: 67 80          ASR    ,X+
5F22: 67 80          ASR    ,X+
5F24: 67 80          ASR    ,X+
5F26: 67 80          ASR    ,X+
5F28: 67 80          ASR    ,X+
5F2A: 67 80          ASR    ,X+
5F2C: 67 80          ASR    ,X+
5F2E: 67 80          ASR    ,X+
5F30: 67 80          ASR    ,X+
5F32: 67 80          ASR    ,X+
5F34: 67 86          ASR    A,X
5F36: 67 86          ASR    A,X
5F38: 67 86          ASR    A,X
5F3A: 67 86          ASR    A,X
5F3C: 67 86          ASR    A,X
5F3E: 67 86          ASR    A,X
5F40: 67 86          ASR    A,X
5F42: 67 86          ASR    A,X
5F44: 67 86          ASR    A,X
5F46: 67 86          ASR    A,X
5F48: 67 86          ASR    A,X
5F4A: 67 86          ASR    A,X
5F4C: 67 86          ASR    A,X
5F4E: 67 86          ASR    A,X
5F50: 67 86          ASR    A,X
5F52: 67 86          ASR    A,X
5F54: 67 86          ASR    A,X
5F56: 67 86          ASR    A,X
5F58: 67 86          ASR    A,X
5F5A: 67 86          ASR    A,X
5F5C: 67 86          ASR    A,X
5F5E: 67 86          ASR    A,X
5F60: 67 86          ASR    A,X
5F62: 67 86          ASR    A,X
5F64: 67 86          ASR    A,X
5F66: 67 86          ASR    A,X
5F68: 67 86          ASR    A,X
5F6A: 67 86          ASR    A,X
5F6C: 67 86          ASR    A,X
5F6E: 67 86          ASR    A,X
5F70: 67 86          ASR    A,X
5F72: 67 86          ASR    A,X
5F74: 67 A2          ASR    ,-Y
5F76: 67 A2          ASR    ,-Y
5F78: 67 A2          ASR    ,-Y
5F7A: 67 A2          ASR    ,-Y
5F7C: 67 A2          ASR    ,-Y
5F7E: 67 A2          ASR    ,-Y
5F80: 67 A2          ASR    ,-Y
5F82: 67 A2          ASR    ,-Y
5F84: 67 A2          ASR    ,-Y
5F86: 67 A2          ASR    ,-Y
5F88: 67 A2          ASR    ,-Y
5F8A: 67 A2          ASR    ,-Y
5F8C: 67 A2          ASR    ,-Y
5F8E: 67 A2          ASR    ,-Y
5F90: 67 A2          ASR    ,-Y
5F92: 67 A2          ASR    ,-Y
5F94: 67 A2          ASR    ,-Y
5F96: 67 A2          ASR    ,-Y
5F98: 67 A2          ASR    ,-Y
5F9A: 67 9E          ASR    [W,X]
5F9C: 67 9E          ASR    [W,X]
5F9E: 67 9E          ASR    [W,X]
5FA0: 67 9E          ASR    [W,X]
5FA2: 67 98 67       ASR    [$67,X]
5FA5: 98 67          EORA   $67
5FA7: 90 67          SUBA   $67
5FA9: 90 67          SUBA   $67
5FAB: 8A 67          ORA    #$67
5FAD: 8A 67          ORA    #$67
5FAF: 8A 67          ORA    #$67
5FB1: 8A 67          ORA    #$67
5FB3: 8A 67          ORA    #$67
5FB5: B6 67 B6       LDA    $67B6
5FB8: 67 B6          ASR    [A,Y]
5FBA: 67 B6          ASR    [A,Y]
5FBC: 67 B6          ASR    [A,Y]
5FBE: 67 B6          ASR    [A,Y]
5FC0: 67 B6          ASR    [A,Y]
5FC2: 67 B6          ASR    [A,Y]
5FC4: 67 B6          ASR    [A,Y]
5FC6: 67 B6          ASR    [A,Y]
5FC8: 67 B6          ASR    [A,Y]
5FCA: 67 B6          ASR    [A,Y]
5FCC: 67 B6          ASR    [A,Y]
5FCE: 67 B6          ASR    [A,Y]
5FD0: 67 B6          ASR    [A,Y]
5FD2: 67 B6          ASR    [A,Y]
5FD4: 67 B6          ASR    [A,Y]
5FD6: 67 B6          ASR    [A,Y]
5FD8: 67 B6          ASR    [A,Y]
5FDA: 67 B2          ASR    Illegal Postbyte
5FDC: 67 B2          ASR    Illegal Postbyte
5FDE: 67 B2          ASR    Illegal Postbyte
5FE0: 67 B2          ASR    Illegal Postbyte
5FE2: 67 B2          ASR    Illegal Postbyte
5FE4: 67 B2          ASR    Illegal Postbyte
5FE6: 67 AC 67       ASR    $6050,PCR
5FE9: AC 67          CMPX   $7,S
5FEB: A8 67          EORA   $7,S
5FED: A8 67          EORA   $7,S
5FEF: A8 67          EORA   $7,S
5FF1: A8 67          EORA   $7,S
5FF3: A8 67          EORA   $7,S
5FF5: BC 67 BC       CMPX   $67BC
5FF8: 67 BC 67       ASR    [$6062,PCR]
5FFB: BC 67 BC       CMPX   $67BC
5FFE: 67 BC 67       ASR    [$6068,PCR]
6001: BC 67 BC       CMPX   $67BC
6004: 67 BC 67       ASR    [$606E,PCR]
6007: BC 67 BC       CMPX   $67BC
600A: 67 BC 67       ASR    [$6074,PCR]
600D: BC 67 BC       CMPX   $67BC
6010: 67 BC 67       ASR    [$607A,PCR]
6013: BC 67 BC       CMPX   $67BC
6016: 67 BC 67       ASR    [$6080,PCR]
6019: BC 67 BC       CMPX   $67BC
601C: 67 BC 67       ASR    [$6086,PCR]
601F: BC 67 BC       CMPX   $67BC
6022: 67 BC 67       ASR    [$608C,PCR]
6025: BC 67 BC       CMPX   $67BC
6028: 67 BC 67       ASR    [$6092,PCR]
602B: BC 67 BC       CMPX   $67BC
602E: 67 BC 67       ASR    [$6098,PCR]
6031: BC 67 BC       CMPX   $67BC
6034: 67 C2          ASR    ,-U
6036: 67 C2          ASR    ,-U
6038: 67 C2          ASR    ,-U
603A: 67 C2          ASR    ,-U
603C: 67 C2          ASR    ,-U
603E: 67 C2          ASR    ,-U
6040: 67 C2          ASR    ,-U
6042: 67 C2          ASR    ,-U
6044: 67 C2          ASR    ,-U
6046: 67 C2          ASR    ,-U
6048: 67 C2          ASR    ,-U
604A: 67 C2          ASR    ,-U
604C: 67 C2          ASR    ,-U
604E: 67 C2          ASR    ,-U
6050: 67 C2          ASR    ,-U
6052: 67 C2          ASR    ,-U
6054: 67 C2          ASR    ,-U
6056: 67 C2          ASR    ,-U
6058: 67 C2          ASR    ,-U
605A: 67 C2          ASR    ,-U
605C: 67 C2          ASR    ,-U
605E: 67 C2          ASR    ,-U
6060: 67 C2          ASR    ,-U
6062: 67 C2          ASR    ,-U
6064: 67 C2          ASR    ,-U
6066: 67 C2          ASR    ,-U
6068: 67 C2          ASR    ,-U
606A: 67 C2          ASR    ,-U
606C: 67 C2          ASR    ,-U
606E: 67 C2          ASR    ,-U
6070: 67 C2          ASR    ,-U
6072: 67 C2          ASR    ,-U
6074: 67 D0          ASR    [,W++]
6076: 67 D0          ASR    [,W++]
6078: 67 D0          ASR    [,W++]
607A: 67 D0          ASR    [,W++]
607C: 67 D0          ASR    [,W++]
607E: 67 D0          ASR    [,W++]
6080: 67 D0          ASR    [,W++]
6082: 67 D0          ASR    [,W++]
6084: 67 D0          ASR    [,W++]
6086: 67 D0          ASR    [,W++]
6088: 67 D0          ASR    [,W++]
608A: 67 D0          ASR    [,W++]
608C: 67 D0          ASR    [,W++]
608E: 67 D0          ASR    [,W++]
6090: 67 D0          ASR    [,W++]
6092: 67 D0          ASR    [,W++]
6094: 67 D0          ASR    [,W++]
6096: 67 D0          ASR    [,W++]
6098: 67 D0          ASR    [,W++]
609A: 67 D0          ASR    [,W++]
609C: 67 D0          ASR    [,W++]
609E: 67 D0          ASR    [,W++]
60A0: 67 D0          ASR    [,W++]
60A2: 67 D0          ASR    [,W++]
60A4: 67 D0          ASR    [,W++]
60A6: 67 CA          ASR    F,U
60A8: 67 CA          ASR    F,U
60AA: 67 C6          ASR    A,U
60AC: 67 C6          ASR    A,U
60AE: 67 C6          ASR    A,U
60B0: 67 C6          ASR    A,U
60B2: 67 C6          ASR    A,U
60B4: 67 F8 67       ASR    [$67,S]
60B7: F8 67 F8       EORB   $67F8
60BA: 67 F8 67       ASR    [$67,S]
60BD: F8 67 F8       EORB   $67F8
60C0: 67 F8 67       ASR    [$67,S]
60C3: F8 67 F8       EORB   $67F8
60C6: 67 F8 67       ASR    [$67,S]
60C9: F8 67 F8       EORB   $67F8
60CC: 67 F8 67       ASR    [$67,S]
60CF: F8 67 F8       EORB   $67F8
60D2: 67 F8 67       ASR    [$67,S]
60D5: F8 67 F8       EORB   $67F8
60D8: 67 F8 67       ASR    [$67,S]
60DB: F8 67 F8       EORB   $67F8
60DE: 67 F8 67       ASR    [$67,S]
60E1: F8 67 F8       EORB   $67F8
60E4: 67 F8 67       ASR    [$67,S]
60E7: F2 67 F2       SBCB   $67F2
60EA: 67 EA          ASR    F,S
60EC: 67 EA          ASR    F,S
60EE: 67 E0          ASR    ,S+
60F0: 67 E0          ASR    ,S+
60F2: 67 D4          ASR    [,U]
60F4: 67 FC 67       ASR    [$615E,PCR]
60F7: FC 67 FC       LDD    $67FC
60FA: 67 FC 67       ASR    [$6164,PCR]
60FD: FC 67 FC       LDD    $67FC
6100: 67 FC 67       ASR    [$616A,PCR]
6103: FC 67 FC       LDD    $67FC
6106: 67 FC 67       ASR    [$6170,PCR]
6109: FC 67 FC       LDD    $67FC
610C: 67 FC 67       ASR    [$6176,PCR]
610F: FC 67 FC       LDD    $67FC
6112: 67 FC 67       ASR    [$617C,PCR]
6115: FC 67 FC       LDD    $67FC
6118: 67 FC 67       ASR    [$6182,PCR]
611B: FC 67 FC       LDD    $67FC
611E: 67 FC 67       ASR    [$6188,PCR]
6121: FC 67 FC       LDD    $67FC
6124: 67 FC 67       ASR    [$618E,PCR]
6127: FC 67 FC       LDD    $67FC
612A: 67 FC 67       ASR    [$6194,PCR]
612D: FC 67 FC       LDD    $67FC
6130: 67 FC 67       ASR    [$619A,PCR]
6133: FC 68 0A       LDD    $680A
6136: 68 0A          ASL    $A,X
6138: 68 0A          ASL    $A,X
613A: 68 00          ASL    $0,X
613C: 68 00          ASL    $0,X
613E: 68 00          ASL    $0,X
6140: 68 00          ASL    $0,X
6142: 68 00          ASL    $0,X
6144: 68 00          ASL    $0,X
6146: 68 00          ASL    $0,X
6148: 68 00          ASL    $0,X
614A: 68 00          ASL    $0,X
614C: 68 00          ASL    $0,X
614E: 68 00          ASL    $0,X
6150: 68 00          ASL    $0,X
6152: 68 00          ASL    $0,X
6154: 68 00          ASL    $0,X
6156: 68 00          ASL    $0,X
6158: 68 00          ASL    $0,X
615A: 68 00          ASL    $0,X
615C: 68 00          ASL    $0,X
615E: 68 00          ASL    $0,X
6160: 68 00          ASL    $0,X
6162: 68 00          ASL    $0,X
6164: 68 00          ASL    $0,X
6166: 68 00          ASL    $0,X
6168: 68 00          ASL    $0,X
616A: 68 00          ASL    $0,X
616C: 68 00          ASL    $0,X
616E: 68 00          ASL    $0,X
6170: 68 00          ASL    $0,X
6172: 68 00          ASL    $0,X
6174: 68 24          ASL    $4,Y
6176: 68 24          ASL    $4,Y
6178: 68 24          ASL    $4,Y
617A: 68 24          ASL    $4,Y
617C: 68 24          ASL    $4,Y
617E: 68 24          ASL    $4,Y
6180: 68 24          ASL    $4,Y
6182: 68 24          ASL    $4,Y
6184: 68 24          ASL    $4,Y
6186: 68 24          ASL    $4,Y
6188: 68 24          ASL    $4,Y
618A: 68 24          ASL    $4,Y
618C: 68 24          ASL    $4,Y
618E: 68 1C          ASL    -$4,X
6190: 68 1C          ASL    -$4,X
6192: 68 16          ASL    -$A,X
6194: 68 16          ASL    -$A,X
6196: 68 16          ASL    -$A,X
6198: 68 16          ASL    -$A,X
619A: 68 16          ASL    -$A,X
619C: 68 16          ASL    -$A,X
619E: 68 16          ASL    -$A,X
61A0: 68 16          ASL    -$A,X
61A2: 68 16          ASL    -$A,X
61A4: 68 16          ASL    -$A,X
61A6: 68 16          ASL    -$A,X
61A8: 68 16          ASL    -$A,X
61AA: 68 16          ASL    -$A,X
61AC: 68 16          ASL    -$A,X
61AE: 68 16          ASL    -$A,X
61B0: 68 16          ASL    -$A,X
61B2: 68 16          ASL    -$A,X
61B4: 68 34          ASL    -$C,Y
61B6: 68 34          ASL    -$C,Y
61B8: 68 34          ASL    -$C,Y
61BA: 68 34          ASL    -$C,Y
61BC: 68 34          ASL    -$C,Y
61BE: 68 34          ASL    -$C,Y
61C0: 68 34          ASL    -$C,Y
61C2: 68 34          ASL    -$C,Y
61C4: 68 34          ASL    -$C,Y
61C6: 68 34          ASL    -$C,Y
61C8: 68 34          ASL    -$C,Y
61CA: 68 34          ASL    -$C,Y
61CC: 68 34          ASL    -$C,Y
61CE: 68 2E          ASL    $E,Y
61D0: 68 2E          ASL    $E,Y
61D2: 68 2A          ASL    $A,Y
61D4: 68 2A          ASL    $A,Y
61D6: 68 2A          ASL    $A,Y
61D8: 68 2A          ASL    $A,Y
61DA: 68 2A          ASL    $A,Y
61DC: 68 2A          ASL    $A,Y
61DE: 68 2A          ASL    $A,Y
61E0: 68 2A          ASL    $A,Y
61E2: 68 2A          ASL    $A,Y
61E4: 68 2A          ASL    $A,Y
61E6: 68 2A          ASL    $A,Y
61E8: 68 2A          ASL    $A,Y
61EA: 68 2A          ASL    $A,Y
61EC: 68 2A          ASL    $A,Y
61EE: 68 2A          ASL    $A,Y
61F0: 68 2A          ASL    $A,Y
61F2: 68 2A          ASL    $A,Y
61F4: 68 46          ASL    $6,U
61F6: 68 3E          ASL    -$2,Y
61F8: 68 3E          ASL    -$2,Y
61FA: 68 38          ASL    -$8,Y
61FC: 68 38          ASL    -$8,Y
61FE: 68 38          ASL    -$8,Y
6200: 68 38          ASL    -$8,Y
6202: 68 38          ASL    -$8,Y
6204: 68 38          ASL    -$8,Y
6206: 68 38          ASL    -$8,Y
6208: 68 38          ASL    -$8,Y
620A: 68 38          ASL    -$8,Y
620C: 68 38          ASL    -$8,Y
620E: 68 38          ASL    -$8,Y
6210: 68 38          ASL    -$8,Y
6212: 68 38          ASL    -$8,Y
6214: 68 38          ASL    -$8,Y
6216: 68 38          ASL    -$8,Y
6218: 68 38          ASL    -$8,Y
621A: 68 38          ASL    -$8,Y
621C: 68 38          ASL    -$8,Y
621E: 68 38          ASL    -$8,Y
6220: 68 38          ASL    -$8,Y
6222: 68 38          ASL    -$8,Y
6224: 68 38          ASL    -$8,Y
6226: 68 38          ASL    -$8,Y
6228: 68 38          ASL    -$8,Y
622A: 68 38          ASL    -$8,Y
622C: 68 38          ASL    -$8,Y
622E: 68 38          ASL    -$8,Y
6230: 68 38          ASL    -$8,Y
6232: 68 38          ASL    -$8,Y
6234: 68 4C          ASL    $C,U
6236: 68 4C          ASL    $C,U
6238: 68 4C          ASL    $C,U
623A: 68 4C          ASL    $C,U
623C: 68 4C          ASL    $C,U
623E: 68 4C          ASL    $C,U
6240: 68 4C          ASL    $C,U
6242: 68 4C          ASL    $C,U
6244: 68 4C          ASL    $C,U
6246: 68 4C          ASL    $C,U
6248: 68 4C          ASL    $C,U
624A: 68 4C          ASL    $C,U
624C: 68 4C          ASL    $C,U
624E: 68 4C          ASL    $C,U
6250: 68 4C          ASL    $C,U
6252: 68 4C          ASL    $C,U
6254: 68 4C          ASL    $C,U
6256: 68 4C          ASL    $C,U
6258: 68 4C          ASL    $C,U
625A: 68 4C          ASL    $C,U
625C: 68 4C          ASL    $C,U
625E: 68 4C          ASL    $C,U
6260: 68 4C          ASL    $C,U
6262: 68 4C          ASL    $C,U
6264: 68 4C          ASL    $C,U
6266: 68 4C          ASL    $C,U
6268: 68 4C          ASL    $C,U
626A: 68 4C          ASL    $C,U
626C: 68 4C          ASL    $C,U
626E: 68 4C          ASL    $C,U
6270: 68 4C          ASL    $C,U
6272: 68 4C          ASL    $C,U
6274: 68 5A          ASL    -$6,U
6276: 68 5A          ASL    -$6,U
6278: 68 5A          ASL    -$6,U
627A: 68 5A          ASL    -$6,U
627C: 68 5A          ASL    -$6,U
627E: 68 5A          ASL    -$6,U
6280: 68 5A          ASL    -$6,U
6282: 68 5A          ASL    -$6,U
6284: 68 5A          ASL    -$6,U
6286: 68 5A          ASL    -$6,U
6288: 68 5A          ASL    -$6,U
628A: 68 5A          ASL    -$6,U
628C: 68 5A          ASL    -$6,U
628E: 68 54          ASL    -$C,U
6290: 68 54          ASL    -$C,U
6292: 68 50          ASL    -$10,U
6294: 68 50          ASL    -$10,U
6296: 68 50          ASL    -$10,U
6298: 68 50          ASL    -$10,U
629A: 68 50          ASL    -$10,U
629C: 68 50          ASL    -$10,U
629E: 68 50          ASL    -$10,U
62A0: 68 50          ASL    -$10,U
62A2: 68 50          ASL    -$10,U
62A4: 68 50          ASL    -$10,U
62A6: 68 50          ASL    -$10,U
62A8: 68 50          ASL    -$10,U
62AA: 68 50          ASL    -$10,U
62AC: 68 50          ASL    -$10,U
62AE: 68 50          ASL    -$10,U
62B0: 68 50          ASL    -$10,U
62B2: 68 50          ASL    -$10,U
62B4: 68 86          ASL    A,X
62B6: 68 86          ASL    A,X
62B8: 68 86          ASL    A,X
62BA: 68 86          ASL    A,X
62BC: 68 86          ASL    A,X
62BE: 68 86          ASL    A,X
62C0: 68 86          ASL    A,X
62C2: 68 86          ASL    A,X
62C4: 68 86          ASL    A,X
62C6: 68 86          ASL    A,X
62C8: 68 86          ASL    A,X
62CA: 68 86          ASL    A,X
62CC: 68 86          ASL    A,X
62CE: 68 7A          ASL    -$6,S
62D0: 68 7A          ASL    -$6,S
62D2: 68 70          ASL    -$10,S
62D4: 68 70          ASL    -$10,S
62D6: 68 70          ASL    -$10,S
62D8: 68 70          ASL    -$10,S
62DA: 68 70          ASL    -$10,S
62DC: 68 70          ASL    -$10,S
62DE: 68 68          ASL    $8,S
62E0: 68 68          ASL    $8,S
62E2: 68 68          ASL    $8,S
62E4: 68 68          ASL    $8,S
62E6: 68 68          ASL    $8,S
62E8: 68 68          ASL    $8,S
62EA: 68 68          ASL    $8,S
62EC: 68 68          ASL    $8,S
62EE: 68 68          ASL    $8,S
62F0: 68 68          ASL    $8,S
62F2: 68 5E          ASL    -$2,U
62F4: 68 8A          ASL    F,X
62F6: 68 8A          ASL    F,X
62F8: 68 8A          ASL    F,X
62FA: 68 8A          ASL    F,X
62FC: 68 8A          ASL    F,X
62FE: 68 8A          ASL    F,X
6300: 68 8A          ASL    F,X
6302: 68 8A          ASL    F,X
6304: 68 8A          ASL    F,X
6306: 68 8A          ASL    F,X
6308: 68 8A          ASL    F,X
630A: 68 8A          ASL    F,X
630C: 68 8A          ASL    F,X
630E: 68 8A          ASL    F,X
6310: 68 8A          ASL    F,X
6312: 68 8A          ASL    F,X
6314: 68 8A          ASL    F,X
6316: 68 8A          ASL    F,X
6318: 68 8A          ASL    F,X
631A: 68 8A          ASL    F,X
631C: 68 8A          ASL    F,X
631E: 68 8A          ASL    F,X
6320: 68 8A          ASL    F,X
6322: 68 8A          ASL    F,X
6324: 68 8A          ASL    F,X
6326: 68 8A          ASL    F,X
6328: 68 8A          ASL    F,X
632A: 68 8A          ASL    F,X
632C: 68 8A          ASL    F,X
632E: 68 8A          ASL    F,X
6330: 68 8A          ASL    F,X
6332: 68 8A          ASL    F,X
6334: 68 A4          ASL    ,Y
6336: 68 A4          ASL    ,Y
6338: 68 A4          ASL    ,Y
633A: 68 9C 68       ASL    [$63A5,PCR]
633D: 9C 68          CMPX   $68
633F: 92 68          SBCA   $68
6341: 92 68          SBCA   $68
6343: 8E 68 8E       LDX    #$688E
6346: 68 8E          ASL    W,X
6348: 68 8E          ASL    W,X
634A: 68 8E          ASL    W,X
634C: 68 8E          ASL    W,X
634E: 68 8E          ASL    W,X
6350: 68 8E          ASL    W,X
6352: 68 8E          ASL    W,X
6354: 68 8E          ASL    W,X
6356: 68 8E          ASL    W,X
6358: 68 8E          ASL    W,X
635A: 68 8E          ASL    W,X
635C: 68 8E          ASL    W,X
635E: 68 8E          ASL    W,X
6360: 68 8E          ASL    W,X
6362: 68 8E          ASL    W,X
6364: 68 8E          ASL    W,X
6366: 68 8E          ASL    W,X
6368: 68 8E          ASL    W,X
636A: 68 8E          ASL    W,X
636C: 68 8E          ASL    W,X
636E: 68 8E          ASL    W,X
6370: 68 8E          ASL    W,X
6372: 68 8E          ASL    W,X
6374: 68 AE          ASL    W,Y
6376: 68 AE          ASL    W,Y
6378: 68 AE          ASL    W,Y
637A: 68 AE          ASL    W,Y
637C: 68 AE          ASL    W,Y
637E: 68 AE          ASL    W,Y
6380: 68 AE          ASL    W,Y
6382: 68 AE          ASL    W,Y
6384: 68 AE          ASL    W,Y
6386: 68 AE          ASL    W,Y
6388: 68 AE          ASL    W,Y
638A: 68 AE          ASL    W,Y
638C: 68 AE          ASL    W,Y
638E: 68 AE          ASL    W,Y
6390: 68 AE          ASL    W,Y
6392: 68 AE          ASL    W,Y
6394: 68 AE          ASL    W,Y
6396: 68 AE          ASL    W,Y
6398: 68 AE          ASL    W,Y
639A: 68 AE          ASL    W,Y
639C: 68 AE          ASL    W,Y
639E: 68 AE          ASL    W,Y
63A0: 68 AE          ASL    W,Y
63A2: 68 AE          ASL    W,Y
63A4: 68 AE          ASL    W,Y
63A6: 68 AE          ASL    W,Y
63A8: 68 AE          ASL    W,Y
63AA: 68 AE          ASL    W,Y
63AC: 68 AE          ASL    W,Y
63AE: 68 AE          ASL    W,Y
63B0: 68 AE          ASL    W,Y
63B2: 68 AE          ASL    W,Y
63B4: 68 AE          ASL    W,Y
63B6: 68 AE          ASL    W,Y
63B8: 68 AE          ASL    W,Y
63BA: 68 AE          ASL    W,Y
63BC: 68 AE          ASL    W,Y
63BE: 68 AE          ASL    W,Y
63C0: 68 AE          ASL    W,Y
63C2: 68 AE          ASL    W,Y
63C4: 68 AE          ASL    W,Y
63C6: 68 AE          ASL    W,Y
63C8: 68 AE          ASL    W,Y
63CA: 68 AE          ASL    W,Y
63CC: 68 AE          ASL    W,Y
63CE: 68 AE          ASL    W,Y
63D0: 68 AE          ASL    W,Y
63D2: 68 AE          ASL    W,Y
63D4: 68 AE          ASL    W,Y
63D6: 68 AE          ASL    W,Y
63D8: 68 AE          ASL    W,Y
63DA: 68 AE          ASL    W,Y
63DC: 68 AE          ASL    W,Y
63DE: 68 AE          ASL    W,Y
63E0: 68 AE          ASL    W,Y
63E2: 68 AE          ASL    W,Y
63E4: 68 AE          ASL    W,Y
63E6: 68 AE          ASL    W,Y
63E8: 68 AE          ASL    W,Y
63EA: 68 AE          ASL    W,Y
63EC: 68 AE          ASL    W,Y
63EE: 68 AE          ASL    W,Y
63F0: 68 AE          ASL    W,Y
63F2: 68 AE          ASL    W,Y
63F4: 68 D4          ASL    [,U]
63F6: 68 D4          ASL    [,U]
63F8: 68 D4          ASL    [,U]
63FA: 68 D4          ASL    [,U]
63FC: 68 D4          ASL    [,U]
63FE: 68 CE          ASL    W,U
6400: 68 CE          ASL    W,U
6402: 68 C6          ASL    A,U
6404: 68 C6          ASL    A,U
6406: 68 C0          ASL    ,U+
6408: 68 C0          ASL    ,U+
640A: 68 C0          ASL    ,U+
640C: 68 C0          ASL    ,U+
640E: 68 C0          ASL    ,U+
6410: 68 B8 68       ASL    [$68,Y]
6413: B8 68 B2       EORA   $68B2
6416: 68 B2          ASL    Illegal Postbyte
6418: 68 B2          ASL    Illegal Postbyte
641A: 68 B2          ASL    Illegal Postbyte
641C: 68 B2          ASL    Illegal Postbyte
641E: 68 B2          ASL    Illegal Postbyte
6420: 68 B2          ASL    Illegal Postbyte
6422: 68 B2          ASL    Illegal Postbyte
6424: 68 B2          ASL    Illegal Postbyte
6426: 68 B2          ASL    Illegal Postbyte
6428: 68 B2          ASL    Illegal Postbyte
642A: 68 B2          ASL    Illegal Postbyte
642C: 68 B2          ASL    Illegal Postbyte
642E: 68 B2          ASL    Illegal Postbyte
6430: 68 B2          ASL    Illegal Postbyte
6432: 68 B2          ASL    Illegal Postbyte
6434: 68 FE          ASL    [W,S]
6436: 68 FE          ASL    [W,S]
6438: 68 FE          ASL    [W,S]
643A: 68 FE          ASL    [W,S]
643C: 68 FE          ASL    [W,S]
643E: 68 FE          ASL    [W,S]
6440: 68 FE          ASL    [W,S]
6442: 68 F8 68       ASL    [$68,S]
6445: F8 68 F8       EORB   $68F8
6448: 68 F0          ASL    [,--W]
644A: 68 E6          ASL    A,S
644C: 68 E6          ASL    A,S
644E: 68 DE          ASL    [W,U]
6450: 68 DE          ASL    [W,U]
6452: 68 DE          ASL    [W,U]
6454: 68 D8 68       ASL    [$68,U]
6457: D8 68          EORB   $68
6459: D8 68          EORB   $68
645B: D8 68          EORB   $68
645D: D8 68          EORB   $68
645F: D8 68          EORB   $68
6461: D8 68          EORB   $68
6463: D8 68          EORB   $68
6465: D8 68          EORB   $68
6467: D8 68          EORB   $68
6469: D8 68          EORB   $68
646B: D8 68          EORB   $68
646D: D8 68          EORB   $68
646F: D8 68          EORB   $68
6471: D8 68          EORB   $68
6473: D8 69          EORB   $69
6475: 02 69 02       AIM    #$69;$02
6478: 69 02          ROL    $2,X
647A: 69 02          ROL    $2,X
647C: 69 02          ROL    $2,X
647E: 69 02          ROL    $2,X
6480: 69 02          ROL    $2,X
6482: 69 02          ROL    $2,X
6484: 69 02          ROL    $2,X
6486: 69 02          ROL    $2,X
6488: 69 02          ROL    $2,X
648A: 69 02          ROL    $2,X
648C: 69 02          ROL    $2,X
648E: 69 02          ROL    $2,X
6490: 69 02          ROL    $2,X
6492: 69 02          ROL    $2,X
6494: 69 02          ROL    $2,X
6496: 69 02          ROL    $2,X
6498: 69 02          ROL    $2,X
649A: 69 02          ROL    $2,X
649C: 69 02          ROL    $2,X
649E: 69 02          ROL    $2,X
64A0: 69 02          ROL    $2,X
64A2: 69 02          ROL    $2,X
64A4: 69 02          ROL    $2,X
64A6: 69 02          ROL    $2,X
64A8: 69 02          ROL    $2,X
64AA: 69 02          ROL    $2,X
64AC: 69 02          ROL    $2,X
64AE: 69 02          ROL    $2,X
64B0: 69 02          ROL    $2,X
64B2: 69 02          ROL    $2,X
64B4: 69 02          ROL    $2,X
64B6: 69 02          ROL    $2,X
64B8: 69 02          ROL    $2,X
64BA: 69 02          ROL    $2,X
64BC: 69 02          ROL    $2,X
64BE: 69 02          ROL    $2,X
64C0: 69 02          ROL    $2,X
64C2: 69 02          ROL    $2,X
64C4: 69 02          ROL    $2,X
64C6: 69 02          ROL    $2,X
64C8: 69 02          ROL    $2,X
64CA: 69 02          ROL    $2,X
64CC: 69 02          ROL    $2,X
64CE: 69 02          ROL    $2,X
64D0: 69 02          ROL    $2,X
64D2: 69 02          ROL    $2,X
64D4: 69 02          ROL    $2,X
64D6: 69 02          ROL    $2,X
64D8: 69 02          ROL    $2,X
64DA: 69 02          ROL    $2,X
64DC: 69 02          ROL    $2,X
64DE: 69 02          ROL    $2,X
64E0: 69 02          ROL    $2,X
64E2: 69 02          ROL    $2,X
64E4: 69 02          ROL    $2,X
64E6: 69 02          ROL    $2,X
64E8: 69 02          ROL    $2,X
64EA: 69 02          ROL    $2,X
64EC: 69 02          ROL    $2,X
64EE: 69 02          ROL    $2,X
64F0: 69 02          ROL    $2,X
64F2: 69 02          ROL    $2,X
64F4: 69 12          ROL    -$E,X
64F6: 69 12          ROL    -$E,X
64F8: 69 12          ROL    -$E,X
64FA: 69 12          ROL    -$E,X
64FC: 69 12          ROL    -$E,X
64FE: 69 12          ROL    -$E,X
6500: 69 12          ROL    -$E,X
6502: 69 12          ROL    -$E,X
6504: 69 12          ROL    -$E,X
6506: 69 12          ROL    -$E,X
6508: 69 12          ROL    -$E,X
650A: 69 0C          ROL    $C,X
650C: 69 0C          ROL    $C,X
650E: 69 08          ROL    $8,X
6510: 69 08          ROL    $8,X
6512: 69 08          ROL    $8,X
6514: 69 08          ROL    $8,X
6516: 69 08          ROL    $8,X
6518: 69 08          ROL    $8,X
651A: 69 08          ROL    $8,X
651C: 69 08          ROL    $8,X
651E: 69 08          ROL    $8,X
6520: 69 08          ROL    $8,X
6522: 69 08          ROL    $8,X
6524: 69 08          ROL    $8,X
6526: 69 08          ROL    $8,X
6528: 69 08          ROL    $8,X
652A: 69 08          ROL    $8,X
652C: 69 08          ROL    $8,X
652E: 69 08          ROL    $8,X
6530: 69 08          ROL    $8,X
6532: 69 08          ROL    $8,X
6534: 69 16          ROL    -$A,X
6536: 69 16          ROL    -$A,X
6538: 69 16          ROL    -$A,X
653A: 69 16          ROL    -$A,X
653C: 69 16          ROL    -$A,X
653E: 69 16          ROL    -$A,X
6540: 69 16          ROL    -$A,X
6542: 69 16          ROL    -$A,X
6544: 69 16          ROL    -$A,X
6546: 69 16          ROL    -$A,X
6548: 69 16          ROL    -$A,X
654A: 69 16          ROL    -$A,X
654C: 69 16          ROL    -$A,X
654E: 69 16          ROL    -$A,X
6550: 69 16          ROL    -$A,X
6552: 69 16          ROL    -$A,X
6554: 69 16          ROL    -$A,X
6556: 69 16          ROL    -$A,X
6558: 69 16          ROL    -$A,X
655A: 69 16          ROL    -$A,X
655C: 69 16          ROL    -$A,X
655E: 69 16          ROL    -$A,X
6560: 69 16          ROL    -$A,X
6562: 69 16          ROL    -$A,X
6564: 69 16          ROL    -$A,X
6566: 69 16          ROL    -$A,X
6568: 69 16          ROL    -$A,X
656A: 69 16          ROL    -$A,X
656C: 69 16          ROL    -$A,X
656E: 69 16          ROL    -$A,X
6570: 69 16          ROL    -$A,X
6572: 69 16          ROL    -$A,X
6574: 69 3B          ROL    -$5,Y
6576: 69 25          ROL    $5,Y
6578: FF FF 69       STU    $FF69
657B: 25 FF          BCS    $657C
657D: FF 69 25       STU    $6925
6580: 69 1A          ROL    -$6,X
6582: FF FF 69       STU    $FF69
6585: 3B             RTI
6586: 69 30          ROL    -$10,Y
6588: 69 25          ROL    $5,Y
658A: FF FF 69       STU    $FF69
658D: 30 69          LEAX   $9,S
658F: 25 FF          BCS    $6590
6591: FF 69 25       STU    $6925
6594: FF FF 69       STU    $FF69
6597: 25 69          BCS    $6602
6599: 1A FF          ORCC   #$FF
659B: FF 69 5C       STU    $695C
659E: FF FF 69       STU    $FF69
65A1: 5C             INCB
65A2: 69 51          ROL    -$F,U
65A4: FF FF 69       STU    $FF69
65A7: 51             FCB    $51
65A8: FF FF 69       STU    $FF69
65AB: 51             FCB    $51
65AC: 69 46          ROL    $6,U
65AE: FF FF 69       STU    $FF69
65B1: 5C             INCB
65B2: FF FF 69       STU    $FF69
65B5: 5C             INCB
65B6: 69 51          ROL    -$F,U
65B8: FF FF 69       STU    $FF69
65BB: 51             FCB    $51
65BC: FF FF 69       STU    $FF69
65BF: 51             FCB    $51
65C0: 69 46          ROL    $6,U
65C2: FF FF 69       STU    $FF69
65C5: 5C             INCB
65C6: FF FF 69       STU    $FF69
65C9: 7D FF FF       TST    $FFFF
65CC: 69 7D          ROL    -$3,S
65CE: 69 72          ROL    -$E,S
65D0: FF FF 69       STU    $FF69
65D3: 72 FF FF 69    AIM    #$FF,$FF69
65D7: 72 69 67 FF    AIM    #$69,$67FF
65DB: FF 69 7D       STU    $697D
65DE: FF FF 69       STU    $FF69
65E1: 7D 69 72       TST    $6972
65E4: FF FF 69       STU    $FF69
65E7: 72 FF FF 69    AIM    #$FF,$FF69
65EB: 72 69 67 FF    AIM    #$69,$67FF
65EF: FF 69 7D       STU    $697D
65F2: FF FF 69       STU    $FF69
65F5: 7D FF FF       TST    $FFFF
65F8: 69 A9 69 BF    ROL    $69BF,Y
65FC: 69 D5          ROL    [B,U]
65FE: FF FF 69       STU    $FF69
6601: A9 69          ADCA   $9,S
6603: BF 69 D5       STX    $69D5
6606: 69 B4          ROL    [,Y]
6608: 69 CA          ROL    F,U
660A: FF FF 69       STU    $FF69
660D: A9 69          ADCA   $9,S
660F: BF 69 D5       STX    $69D5
6612: 69 B4          ROL    [,Y]
6614: 69 CA          ROL    F,U
6616: 69 93          ROL    [,--X]
6618: FF FF 69       STU    $FF69
661B: B4 69 CA       ANDA   $69CA
661E: 69 93          ROL    [,--X]
6620: FF FF 69       STU    $FF69
6623: 93 FF          SUBD   $FF
6625: FF 69 93       STU    $6993
6628: 69 88 FF       ROL    -$01,X
662B: FF 69 A9       STU    $69A9
662E: 69 D5          ROL    [B,U]
6630: FF FF 69       STU    $FF69
6633: A9 69          ADCA   $9,S
6635: D5 69          BITB   $69
6637: CA FF          ORB    #$FF
6639: FF 69 A9       STU    $69A9
663C: 69 D5          ROL    [B,U]
663E: 69 CA          ROL    F,U
6640: 69 93          ROL    [,--X]
6642: FF FF 69       STU    $FF69
6645: CA 69          ORB    #$69
6647: 93 FF          SUBD   $FF
6649: FF 69 93       STU    $6993
664C: 69 9E          ROL    [W,X]
664E: FF FF 69       STU    $FF69
6651: 93 69          SUBD   $69
6653: 9E FF          LDX    $FF
6655: FF 69 93       STU    $6993
6658: 69 9E          ROL    [W,X]
665A: 69 88 FF       ROL    -$01,X
665D: FF 69 A9       STU    $69A9
6660: FF FF 69       STU    $FF69
6663: A9 69          ADCA   $9,S
6665: BF 69 D5       STX    $69D5
6668: FF FF 69       STU    $FF69
666B: A9 69          ADCA   $9,S
666D: A9 69          ADCA   $9,S
666F: D5 FF          BITB   $FF
6671: FF 6A 22       STU    $6A22
6674: 6A 01          DEC    $1,X
6676: FF FF 6A       STU    $FF6A
6679: 01 6A 22       OIM    #$6A;$22
667C: 6A 2D          DEC    $D,Y
667E: FF FF 6A       STU    $FF6A
6681: 01 69 F6       OIM    #$69;$F6
6684: 6A 2D          DEC    $D,Y
6686: FF FF 6A       STU    $FF6A
6689: 0C 6A          INC    $6A
668B: 01 69 F6       OIM    #$69;$F6
668E: 6A 2D          DEC    $D,Y
6690: FF FF 6A       STU    $FF6A
6693: 0C 69          INC    $69
6695: F6 6A 2D       LDB    $6A2D
6698: FF FF 6A       STU    $FF6A
669B: 0C 69          INC    $69
669D: F6 6A 2D       LDB    $6A2D
66A0: 69 EB          ROL    D,S
66A2: FF FF 6A       STU    $FF6A
66A5: 0C 69          INC    $69
66A7: EB FF FF 69    ADDB   [$FF69]
66AB: EB 6A          ADDB   $A,S
66AD: 17 FF FF       LBSR   $66AF
66B0: 69 EB          ROL    D,S
66B2: 69 E0          ROL    ,S+
66B4: 6A 17          DEC    -$9,X
66B6: FF FF 6A       STU    $FF6A
66B9: 01 FF FF       OIM    #$FF;$FF
66BC: 6A 01          DEC    $1,X
66BE: 69 F6          ROL    [A,S]
66C0: FF FF 69       STU    $FF69
66C3: F6 6A 17       LDB    $6A17
66C6: FF FF 6A       STU    $FF6A
66C9: 17 FF FF       LBSR   $66CB
66CC: 6A 22          DEC    $2,Y
66CE: 6A 01          DEC    $1,X
66D0: FF FF 6A       STU    $FF6A
66D3: 01 FF FF       OIM    #$FF;$FF
66D6: 6A 59          DEC    -$7,U
66D8: FF FF 6A       STU    $FF6A
66DB: 59             ROLB
66DC: FF FF 6A       STU    $FF6A
66DF: 59             ROLB
66E0: 6A 43          DEC    $3,U
66E2: FF FF 6A       STU    $FF6A
66E5: 64 6A          LSR    $A,S
66E7: 59             ROLB
66E8: 6A 43          DEC    $3,U
66EA: FF FF 6A       STU    $FF6A
66ED: 64 6A          LSR    $A,S
66EF: 59             ROLB
66F0: 6A 6F          DEC    $F,S
66F2: 6A 43          DEC    $3,U
66F4: 6A 4E          DEC    $E,U
66F6: FF FF 6A       STU    $FF6A
66F9: 64 6A          LSR    $A,S
66FB: 6F 6A          CLR    $A,S
66FD: 4E             FCB    $4E
66FE: FF FF 6A       STU    $FF6A
6701: 6F 6A          CLR    $A,S
6703: 4E             FCB    $4E
6704: FF FF 6A       STU    $FF6A
6707: 6F 6A          CLR    $A,S
6709: 4E             FCB    $4E
670A: 6A 38          DEC    -$8,Y
670C: FF FF 6A       STU    $FF6A
670F: 59             ROLB
6710: FF FF 6A       STU    $FF6A
6713: 59             ROLB
6714: 6A 43          DEC    $3,U
6716: FF FF 6A       STU    $FF6A
6719: 43             COMA
671A: FF FF 6A       STU    $FF6A
671D: 43             COMA
671E: 6A 4E          DEC    $E,U
6720: FF FF 6A       STU    $FF6A
6723: 4E             FCB    $4E
6724: FF FF 6A       STU    $FF6A
6727: 4E             FCB    $4E
6728: 6A 38          DEC    -$8,Y
672A: FF FF 6A       STU    $FF6A
672D: 9B 6A          ADDA   $6A
672F: A6 FF FF 6A    LDA    [$FF6A]
6733: 9B 6A          ADDA   $6A
6735: A6 6A          LDA    $A,S
6737: 85 FF          BITA   #$FF
6739: FF 6A 9B       STU    $6A9B
673C: 6A A6          DEC    A,Y
673E: 6A 85          DEC    B,X
6740: FF FF 6A       STU    $FF6A
6743: 85 FF          BITA   #$FF
6745: FF 6A 85       STU    $6A85
6748: 6A 90          DEC    [,W]
674A: FF FF 6A       STU    $FF6A
674D: 85 6A          BITA   #$6A
674F: 90 6A          SUBA   $6A
6751: 7A FF FF       DEC    $FFFF
6754: 6A A6          DEC    A,Y
6756: FF FF 6A       STU    $FF6A
6759: A6 6A          LDA    $A,S
675B: BC FF FF       CMPX   $FFFF
675E: 6A A6          DEC    A,Y
6760: 6A BC 6A       DEC    [$67CD,PCR]
6763: B1 FF FF       CMPA   $FFFF
6766: 6A A6          DEC    A,Y
6768: 6A BC 6A       DEC    [$67D5,PCR]
676B: B1 6A 85       CMPA   $6A85
676E: FF FF 6A       STU    $FF6A
6771: B1 6A 85       CMPA   $6A85
6774: FF FF 6A       STU    $FF6A
6777: 85 FF          BITA   #$FF
6779: FF 6A 85       STU    $6A85
677C: 6A 7A          DEC    -$6,S
677E: FF FF 6A       STU    $FF6A
6781: 9B 6A          ADDA   $6A
6783: A6 FF FF 6A    LDA    [$FF6A]
6787: A6 FF FF 6A    LDA    [$FF6A]
678B: DD 6A          STD    $6A
678D: E8 FF FF 6A    EORB   [$FF6A]
6791: DD 6A          STD    $6A
6793: E8 6A          EORB   $A,S
6795: D2 FF          SBCB   $FF
6797: FF 6A DD       STU    $6ADD
679A: 6A D2          DEC    Illegal Postbyte
679C: FF FF 6A       STU    $FF6A
679F: D2 FF          SBCB   $FF
67A1: FF 6A D2       STU    $6AD2
67A4: 6A C7          DEC    E,U
67A6: FF FF 6A       STU    $FF6A
67A9: E8 FF FF 6A    EORB   [$FF6A]
67AD: E8 6A          EORB   $A,S
67AF: D2 FF          SBCB   $FF
67B1: FF 6A D2       STU    $6AD2
67B4: FF FF 6A       STU    $FF6A
67B7: D2 6A          SBCB   $6A
67B9: C7             FCB    $C7
67BA: FF FF 6A       STU    $FF6A
67BD: DD 6A          STD    $6A
67BF: E8 FF FF 6A    EORB   [$FF6A]
67C3: E8 FF FF 6A    EORB   [$FF6A]
67C7: FE FF FF       LDU    $FFFF
67CA: 6A FE          DEC    [W,S]
67CC: 6A F3          DEC    [,--S]
67CE: FF FF 6A       STU    $FF6A
67D1: F3 FF FF       ADDD   $FFFF
67D4: 6A F3          DEC    [,--S]
67D6: 6A FE          DEC    [W,S]
67D8: 6B 09 6B       TIM    #$09;$B,S
67DB: 14             SEXW
67DC: 6B 1F FF FF 6A TIM    #$1F;[$FF6A]
67E1: F3 6A FE       ADDD   $6AFE
67E4: 6B 09 6B       TIM    #$09;$B,S
67E7: 14             SEXW
67E8: FF FF 6A       STU    $FF6A
67EB: F3 6A FE       ADDD   $6AFE
67EE: 6B 09 FF FF 6A TIM    #$09;[$FF6A]
67F3: F3 6A FE       ADDD   $6AFE
67F6: FF FF 6A       STU    $FF6A
67F9: F3 FF FF       ADDD   $FFFF
67FC: 6A FE          DEC    [W,S]
67FE: FF FF 6A       STU    $FF6A
6801: FE 6B 09       LDU    $6B09
6804: 6B 14 6B       TIM    #$14;$B,S
6807: 1F FF          TFR    F,F
6809: FF 6A F3       STU    $6AF3
680C: 6A FE          DEC    [W,S]
680E: 6B 09 6B       TIM    #$09;$B,S
6811: 14             SEXW
6812: 6B 1F FF FF 6B TIM    #$1F;[$FF6B]
6817: 2A 6B          BPL    $6884
6819: 40             NEGA
681A: FF FF 6B       STU    $FF6B
681D: 2A 6B          BPL    $688A
681F: 40             NEGA
6820: 6B 35 FF FF 6B TIM    #$35;[$FF6B]
6825: 2A 6B          BPL    $6892
6827: 35 FF          PULS   CC,D,DP,X,Y,U,PC
6829: FF 6B 40       STU    $6B40
682C: FF FF 6B       STU    $FF6B
682F: 40             NEGA
6830: 6B 35 FF FF 6B TIM    #$35;[$FF6B]
6835: 35 FF          PULS   CC,D,DP,X,Y,U,PC
6837: FF 6B 4B       STU    $6B4B
683A: 6B 40 FF FF 6B TIM    #$40;[$FF6B]
683F: 4B             FCB    $4B
6840: 6B 2A 6B       TIM    #$2A;$B,S
6843: 40             NEGA
6844: FF FF 6B       STU    $FF6B
6847: 2A 6B          BPL    $68B4
6849: 40             NEGA
684A: FF FF 6B       STU    $FF6B
684D: 40             NEGA
684E: FF FF 6B       STU    $FF6B
6851: 61 FF FF 6B 61 OIM    #$FF;[$6B61]
6856: 6B 8D FF FF 6B TIM    #$8D;[$FF6B]
685B: 8D FF          BSR    $685C
685D: FF 6B 6C       STU    $6B6C
6860: 6B 77 6B       TIM    #$77;$B,S
6863: 82 6B          SBCA   #$6B
6865: 98 FF          EORA   $FF
6867: FF 6B 6C       STU    $6B6C
686A: 6B 77 6B       TIM    #$77;$B,S
686D: 82 FF          SBCA   #$FF
686F: FF 6B 61       STU    $6B61
6872: 6B 6C 6B       TIM    #$6C;$B,S
6875: 77 6B 82       ASR    $6B82
6878: FF FF 6B       STU    $FF6B
687B: 56             RORB
687C: 6B 61 6B       TIM    #$61;$B,S
687F: 6C 6B          INC    $B,S
6881: 77 6B 82       ASR    $6B82
6884: FF FF 6B       STU    $FF6B
6887: 56             RORB
6888: FF FF 6B       STU    $FF6B
688B: A3 FF FF 6B    SUBD   [$FF6B]
688F: A3 FF FF 6B    SUBD   [$FF6B]
6893: A3 6B          SUBD   $B,S
6895: 6C 6B          INC    $B,S
6897: 82 6B          SBCA   #$6B
6899: 77 FF FF       ASR    $FFFF
689C: 6B 6C 6B       TIM    #$6C;$B,S
689F: 82 6B          SBCA   #$6B
68A1: 77 FF FF       ASR    $FFFF
68A4: 6B 6C 6B       TIM    #$6C;$B,S
68A7: 82 6B          SBCA   #$6B
68A9: 77 6B 98       ASR    $6B98
68AC: FF FF 6B       STU    $FF6B
68AF: AE FF FF 6B    LDX    [$FF6B]
68B3: B9 6B C4       ADCA   $6BC4
68B6: FF FF 6B       STU    $FF6B
68B9: B9 6B C4       ADCA   $6BC4
68BC: 6B DA FF FF 6B TIM    #$DA;[$FF6B]
68C1: B9 6B DA       ADCA   $6BDA
68C4: FF FF 6B       STU    $FF6B
68C7: AE 6B          LDX    $B,S
68C9: B9 6B DA       ADCA   $6BDA
68CC: FF FF 6B       STU    $FF6B
68CF: B9 6B AE       ADCA   $6BAE
68D2: FF FF 6B       STU    $FF6B
68D5: AE FF FF 6B    LDX    [$FF6B]
68D9: C4 6B          ANDB   #$6B
68DB: CF             FCB    $CF
68DC: FF FF 6B       STU    $FF6B
68DF: C4 6B          ANDB   #$6B
68E1: CF             FCB    $CF
68E2: 6B DA FF FF 6B TIM    #$DA;[$FF6B]
68E7: C4 6B          ANDB   #$6B
68E9: CF             FCB    $CF
68EA: 6B DA 6B       TIM    #$DA;$B,S
68ED: AE FF FF 6B    LDX    [$FF6B]
68F1: C4 6B          ANDB   #$6B
68F3: DA 6B          ORB    $6B
68F5: AE FF FF 6B    LDX    [$FF6B]
68F9: DA 6B          ORB    $6B
68FB: AE FF FF 6B    LDX    [$FF6B]
68FF: AE FF FF 6B    LDX    [$FF6B]
6903: E5 6B          BITB   $B,S
6905: F0 FF FF       SUBB   $FFFF
6908: 6B F0 FF FF 6B TIM    #$F0;[$FF6B]
690D: F0 6B E5       SUBB   $6BE5
6910: FF FF 6B       STU    $FF6B
6913: E5 FF FF 6B    BITB   [$FF6B]
6917: F0 FF FF       SUBB   $FFFF
691A: 08 00          ASL    $00
691C: 00 80          NEG    $80
691E: 01 70 00       OIM    #$70;$00
6921: 10 FF 80 10    STS    $8010
6925: 08 00          ASL    $00
6927: 00 80          NEG    $80
6929: 01 70 00       OIM    #$70;$00
692C: FF 10 80       STU    $1080
692F: 01 08 D0       OIM    #$08;$D0
6932: 00 E0          NEG    $E0
6934: 01 D0 40       OIM    #$D0;$40
6937: 40             NEGA
6938: FF 40 06       STU    $4006
693B: 08 00          ASL    $00
693D: 01 00 00       OIM    #$00;$00
6940: F0 FF FF       SUBB   $FFFF
6943: FF 80 04       STU    $8004
6946: 09 00          ROL    $00
6948: 00 80          NEG    $80
694A: 01 70 00       OIM    #$70;$00
694D: 10 FF 80 10    STS    $8010
6951: 09 00          ROL    $00
6953: 00 80          NEG    $80
6955: 01 70 00       OIM    #$70;$00
6958: FF 10 80       STU    $1080
695B: 01 09 00       OIM    #$09;$00
695E: 00 E0          NEG    $E0
6960: 01 D0 00       OIM    #$D0;$00
6963: FF FF 80       STU    $FF80
6966: 04 0A          LSR    $0A
6968: 00 00          NEG    $00
696A: 80 01          SUBA   #$01
696C: 70 00 10       NEG    >$0010
696F: FF 80 10       STU    $8010
6972: 0A 00          DEC    $00
6974: 00 80          NEG    $80
6976: 01 70 00       OIM    #$70;$00
6979: FF 10 80       STU    $1080
697C: 01 0A 00       OIM    #$0A;$00
697F: 00 E0          NEG    $E0
6981: 01 D0 00       OIM    #$D0;$00
6984: FF FF 80       STU    $FF80
6987: 04 0B          LSR    $0B
6989: 00 00          NEG    $00
698B: 80 01          SUBA   #$01
698D: 70 00 10       NEG    >$0010
6990: FF 80 10       STU    $8010
6993: 0B 00 00       TIM    #$00;$00
6996: 80 01          SUBA   #$01
6998: 70 00 FF       NEG    >$00FF
699B: 10 80 01 0B    SUBW   #$010B
699F: CC 00 90       LDD    #$0090
69A2: 01 50 18       OIM    #$50;$18
69A5: 10 41          FCB    $10,$41
69A7: 84 00 0B       ANDD   #$000B
69AA: 00 00          NEG    $00
69AC: E0 01          SUBB   $1,X
69AE: D0 00          SUBB   $00
69B0: FF FF 80       STU    $FF80
69B3: 04 0B          LSR    $0B
69B5: 08 00          ASL    $00
69B7: D0 01          SUBB   $01
69B9: C0 30          SUBB   #$30
69BB: 28 20          BVC    $69DD
69BD: 80 0E          SUBA   #$0E
69BF: 0B 10 00       TIM    #$10;$00
69C2: D0 01          SUBB   $01
69C4: C0 20          SUBB   #$20
69C6: 28 30          BVC    $69F8
69C8: 80 0F          SUBA   #$0F
69CA: 0B 68 00       TIM    #$68;$00
69CD: D0 01          SUBB   $01
69CF: C0 30          SUBB   #$30
69D1: 28 20          BVC    $69F3
69D3: 80 0E          SUBA   #$0E
69D5: 0B 70 00       TIM    #$70;$00
69D8: D0 01          SUBB   $01
69DA: C0 20          SUBB   #$20
69DC: 28 30          BVC    $6A0E
69DE: 80 0F          SUBA   #$0F
69E0: 0C 00          INC    $00
69E2: 00 98          NEG    $98
69E4: 01 70 40       OIM    #$70;$40
69E7: 10 FF 80 10    STS    $8010
69EB: 0B C8 00       TIM    #$C8;$00
69EE: 80 01          SUBA   #$01
69F0: 58             ASLB
69F1: 38             FCB    $38
69F2: 38             FCB    $38
69F3: 28 00          BVC    $69F5
69F5: 01 0C 48       OIM    #$0C;$48
69F8: 00 B8          NEG    $B8
69FA: 01 90 A0       OIM    #$90;$A0
69FD: 28 28          BVC    $6A27
69FF: 00 01          NEG    $01
6A01: 0C 60          INC    $60
6A03: 00 D0          NEG    $D0
6A05: 01 A8 B0       OIM    #$A8;$B0
6A08: FF FF 80       STU    $FF80
6A0B: 04 0C          LSR    $0C
6A0D: 30 00          LEAX   $0,X
6A0F: B0 01 88       SUBA   $0188
6A12: 3C 08          CWAI   #$08
6A14: 38             FCB    $38
6A15: 00 12          NEG    $12
6A17: 0C 00          INC    $00
6A19: 00 58          NEG    $58
6A1B: 01 00 00       OIM    #$00;$00
6A1E: FF 40 85       STU    $4085
6A21: 00 0C          NEG    $0C
6A23: 00 00          NEG    $00
6A25: E0 01          SUBB   $1,X
6A27: D0 70          SUBB   $70
6A29: FF FF 80       STU    $FF80
6A2C: 04 0C          LSR    $0C
6A2E: 00 00          NEG    $00
6A30: B8 01 90       EORA   $0190
6A33: 70 38 28       NEG    $3828
6A36: 80 01          SUBA   #$01
6A38: 0D 60          TST    $60
6A3A: 00 80          NEG    $80
6A3C: 01 70 A0       OIM    #$70;$A0
6A3F: 10 FF 80 10    STS    $8010
6A43: 0D 14          TST    $14
6A45: 00 B8          NEG    $B8
6A47: 01 90 FF       OIM    #$90;$FF
6A4A: FF 28 80       STU    $2880
6A4D: 01 0D 70       OIM    #$0D;$70
6A50: 00 58          NEG    $58
6A52: 01 00 FF       OIM    #$00;$FF
6A55: 60 58          NEG    -$8,U
6A57: 80 01          SUBA   #$01
6A59: 0D 00          TST    $00
6A5B: 00 D0          NEG    $D0
6A5D: 01 A8 00       OIM    #$A8;$00
6A60: FF FF 80       STU    $FF80
6A63: 04 0D          LSR    $0D
6A65: 50             NEGB
6A66: 00 B0          NEG    $B0
6A68: 01 88 28       OIM    #$88;$28
6A6B: 08 38          ASL    $38
6A6D: 80 1C          SUBA   #$1C
6A6F: 0D 00          TST    $00
6A71: 00 58          NEG    $58
6A73: 01 00 80       OIM    #$00;$80
6A76: 88 40          EORA   #$40
6A78: 85 00          BITA   #$00
6A7A: 0E 00          JMP    $00
6A7C: 00 80          NEG    $80
6A7E: 01 70 00       OIM    #$70;$00
6A81: 10 FF 80 10    STS    $8010
6A85: 0E 00          JMP    $00
6A87: 00 80          NEG    $80
6A89: 01 70 00       OIM    #$70;$00
6A8C: FF 10 80       STU    $1080
6A8F: 01 0E 1C       OIM    #$0E;$1C
6A92: 00 90          NEG    $90
6A94: 01 50 20       OIM    #$50;$20
6A97: 10 41          FCB    $10,$41
6A99: 84 00 0E       ANDD   #$000E
6A9C: 00 00          NEG    $00
6A9E: D0 01          SUBB   $01
6AA0: C0 58          SUBB   #$58
6AA2: FF FF 80       STU    $FF80
6AA5: 04 0E          LSR    $0E
6AA7: 48             ASLA
6AA8: 00 C0          NEG    $C0
6AAA: 01 B0 FF       OIM    #$B0;$FF
6AAD: FF FF 80       STU    $FF80
6AB0: 06 0E          ROR    $0E
6AB2: 88 00          EORA   #$00
6AB4: B0 01 A0       SUBA   $01A0
6AB7: 30 28          LEAX   $8,Y
6AB9: 20 80          BRA    $6A3B
6ABB: 0E 0E          JMP    $0E
6ABD: 90 00          SUBA   $00
6ABF: B0 01 A0       SUBA   $01A0
6AC2: 20 28          BRA    $6AEC
6AC4: 30 80          LEAX   ,X+
6AC6: 0F 0F          CLR    $0F
6AC8: 00 00          NEG    $00
6ACA: 80 01          SUBA   #$01
6ACC: 70 00 10       NEG    >$0010
6ACF: FF 80 10       STU    $8010
6AD2: 0F 00          CLR    $00
6AD4: 00 80          NEG    $80
6AD6: 01 70 00       OIM    #$70;$00
6AD9: FF 10 80       STU    $1080
6ADC: 01 0E F0       OIM    #$0E;$F0
6ADF: 00 C0          NEG    $C0
6AE1: 01 B0 30       OIM    #$B0;$30
6AE4: FF FF 00       STU    $FF00
6AE7: 0C 0F          INC    $0F
6AE9: 20 00          BRA    $6AEB
6AEB: D0 01          SUBB   $01
6AED: C0 FF          SUBB   #$FF
6AEF: FF FF 80       STU    $FF80
6AF2: 04 10          LSR    $10
6AF4: 00 00          NEG    $00
6AF6: 70 01 00       NEG    $0100
6AF9: 00 FF          NEG    $FF
6AFB: 70 80 01       NEG    $8001
6AFE: 0F F0          CLR    $F0
6B00: 00 D0          NEG    $D0
6B02: 01 C0 A0       OIM    #$C0;$A0
6B05: 20 FF          BRA    $6B06
6B07: 00 0C          NEG    $0C
6B09: 10 90 00       SUBW   $00
6B0C: E0 01          SUBB   $1,X
6B0E: D0 20          SUBB   $20
6B10: 20 FF          BRA    $6B11
6B12: 00 0C          NEG    $0C
6B14: 10 B0 00 F0    SUBW   >$00F0
6B18: 01 E0 20       OIM    #$E0;$20
6B1B: FF FF 00       STU    $FF00
6B1E: 0C 10          INC    $10
6B20: D0 01          SUBB   $01
6B22: 00 01          NEG    $01
6B24: F0 30 FF       SUBB   $30FF
6B27: FF 80 0C       STU    $800C
6B2A: 10 10          FCB    $10,$10
6B2C: 00 70          NEG    $70
6B2E: 00 C0          NEG    $C0
6B30: E8 FF B0 00    EORB   [$B000]
6B34: 09 11          ROL    $11
6B36: 28 00          BVC    $6B38
6B38: B0 01 00       SUBA   $0100
6B3B: FF 40 40       STU    $4040
6B3E: 00 01          NEG    $01
6B40: 11 50          FCB    $11,$50
6B42: 00             FCB    $00
6B43: E0 01          SUBF   $1,X
6B45: 60 FF FF FF    NEG    [$FFFF]
6B49: 80 06          SUBA   #$06
6B4B: 11 00          FCB    $11,$00
6B4D: 01             FCB    $01
6B4E: 10             FCB    $10
6B4F: 02 00 80       AIM    #$00;$80
6B52: FF FF 00       STU    $FF00
6B55: 0C 12          INC    $12
6B57: 40             NEGA
6B58: 00 B0          NEG    $B0
6B5A: 01 00 90       OIM    #$00;$90
6B5D: 40             NEGA
6B5E: 40             NEGA
6B5F: 00 01          NEG    $01
6B61: 12             NOP
6B62: 00 00          NEG    $00
6B64: E0 01          SUBB   $1,X
6B66: 60 88 10       NEG    $10,X
6B69: 30 80          LEAX   ,X+
6B6B: 04 12          LSR    $12
6B6D: 88 00          EORA   #$00
6B6F: E0 01          SUBB   $1,X
6B71: 60 28          NEG    $8,Y
6B73: 30 B0 80 05    LEAX   [-$7FFB,W]
6B77: 12             NOP
6B78: E0 00          SUBB   $0,X
6B7A: E0 01          SUBB   $1,X
6B7C: 60 30          NEG    -$10,Y
6B7E: 30 B0 80 05    LEAX   [-$7FFB,W]
6B82: 12             NOP
6B83: B0 00 E0       SUBA   >$00E0
6B86: 01 60 30       OIM    #$60;$30
6B89: 30 B0 83 05    LEAX   [-$7CFB,W]
6B8D: 12             NOP
6B8E: 00 00          NEG    $00
6B90: B0 01 00       SUBA   $0100
6B93: 80 40          SUBA   #$40
6B95: 40             NEGA
6B96: 80 01          SUBA   #$01
6B98: 12             NOP
6B99: B0 00 D0       SUBA   >$00D0
6B9C: 01 FF 30       OIM    #$FF;$30
6B9F: 10 01          FCB    $10,$01
6BA1: 8F             FCB    $8F
6BA2: 10             FCB    $10
6BA3: 12             NOP
6BA4: 88 01          EORA   #$01
6BA6: 00 02          NEG    $02
6BA8: 00 FF          NEG    $FF
6BAA: FF FF 80       STU    $FF80
6BAD: 04 13          LSR    $13
6BAF: 00 00          NEG    $00
6BB1: E0 01          SUBB   $1,X
6BB3: 20 00          BRA    $6BB5
6BB5: FF F0 80       STU    $F080
6BB8: 01 12 F0       OIM    #$12;$F0
6BBB: 01 00 02       OIM    #$00;$02
6BBE: 20 40          BRA    $6C00
6BC0: FF FF 00       STU    $FF00
6BC3: 0C 13          INC    $13
6BC5: 48             ASLA
6BC6: 01 28 02       OIM    #$28;$02
6BC9: 48             ASLA
6BCA: 58             ASLB
6BCB: FF FF 00       STU    $FF00
6BCE: 0C 13          INC    $13
6BD0: 98 01          EORA   $01
6BD2: 30 02          LEAX   $2,X
6BD4: 50             NEGB
6BD5: FF FF FF       STU    $FFFF
6BD8: 80 04          SUBA   #$04
6BDA: 13             SYNC
6BDB: 30 01          LEAX   $1,X
6BDD: 10 02          FCB    $10,$02
6BDF: 30 50          ADDR   PC,D
6BE1: 28 30          BVC    $6C13
6BE3: 00 0D          NEG    $0D
6BE5: 13             SYNC
6BE6: 80 00          SUBA   #$00
6BE8: E0 01          SUBB   $1,X
6BEA: 80 90          SUBA   #$90
6BEC: 60 90          NEG    [,W]
6BEE: 00 01          NEG    $01
6BF0: 14             SEXW
6BF1: 00 01          NEG    $01
6BF3: 30 02          LEAX   $2,X
6BF5: 00 FF          NEG    $FF
6BF7: FF FF 80       STU    $FF80
6BFA: 04 70          LSR    $70
6BFC: 93 70          SUBD   $70
6BFE: 93 70          SUBD   $70
6C00: 93 70          SUBD   $70
6C02: 8F             FCB    $8F
6C03: 70 8F 70       NEG    $8F70
6C06: 8F             FCB    $8F
6C07: 70 8F 70       NEG    $8F70
6C0A: 8F             FCB    $8F
6C0B: 70 8F 70       NEG    $8F70
6C0E: 89 70          ADCA   #$70
6C10: 89 70          ADCA   #$70
6C12: 81 70          CMPA   #$70
6C14: 81 70          CMPA   #$70
6C16: 7B 70 7B 70    TIM    #$70,$7B70
6C1A: 7B 70 7B 70    TIM    #$70,$7B70
6C1E: 7B 70 7B 70    TIM    #$70,$7B70
6C22: 7B 70 7B 70    TIM    #$70,$7B70
6C26: 7B 70 7B 70    TIM    #$70,$7B70
6C2A: 7B 70 7B 70    TIM    #$70,$7B70
6C2E: 7B 70 7B 70    TIM    #$70,$7B70
6C32: 7B 70 7B 70    TIM    #$70,$7B70
6C36: 7B 70 7B 70    TIM    #$70,$7B70
6C3A: 7B 70 B7 70    TIM    #$70,$B770
6C3E: B7 70 B7       STA    $70B7
6C41: 70 B3 70       NEG    $B370
6C44: B3 70 B3       SUBD   $70B3
6C47: 70 B3 70       NEG    $B370
6C4A: AB 70          ADDA   -$10,S
6C4C: AB 70          ADDA   -$10,S
6C4E: AB 70          ADDA   -$10,S
6C50: AB 70          ADDA   -$10,S
6C52: A1 70          CMPA   -$10,S
6C54: A1 70          CMPA   -$10,S
6C56: 99 70          ADCA   $70
6C58: 99 70          ADCA   $70
6C5A: 99 70          ADCA   $70
6C5C: 99 70          ADCA   $70
6C5E: 99 70          ADCA   $70
6C60: 99 70          ADCA   $70
6C62: 99 70          ADCA   $70
6C64: 99 70          ADCA   $70
6C66: 99 70          ADCA   $70
6C68: 99 70          ADCA   $70
6C6A: 99 70          ADCA   $70
6C6C: 99 70          ADCA   $70
6C6E: 99 70          ADCA   $70
6C70: 99 70          ADCA   $70
6C72: 99 70          ADCA   $70
6C74: 99 70          ADCA   $70
6C76: 99 70          ADCA   $70
6C78: 99 70          ADCA   $70
6C7A: 99 70          ADCA   $70
6C7C: CF             FCB    $CF
6C7D: 70 CF 70       NEG    $CF70
6C80: CF             FCB    $CF
6C81: 70 CB 70       NEG    $CB70
6C84: CB 70          ADDB   #$70
6C86: CB 70          ADDB   #$70
6C88: CB 70          ADDB   #$70
6C8A: C3 70 C3       ADDD   #$70C3
6C8D: 70 BD 70       NEG    $BD70
6C90: BD 70 BD       JSR    $70BD
6C93: 70 BD 70       NEG    $BD70
6C96: BD 70 BD       JSR    $70BD
6C99: 70 BD 70       NEG    $BD70
6C9C: BD 70 BD       JSR    $70BD
6C9F: 70 BD 70       NEG    $BD70
6CA2: BD 70 BD       JSR    $70BD
6CA5: 70 BD 70       NEG    $BD70
6CA8: BD 70 BD       JSR    $70BD
6CAB: 70 BD 70       NEG    $BD70
6CAE: BD 70 BD       JSR    $70BD
6CB1: 70 BD 70       NEG    $BD70
6CB4: BD 70 BD       JSR    $70BD
6CB7: 70 BD 70       NEG    $BD70
6CBA: BD 70 E7       JSR    $70E7
6CBD: 70 E7 70       NEG    $E770
6CC0: E7 70          STB    -$10,S
6CC2: E3 70          ADDD   -$10,S
6CC4: E3 70          ADDD   -$10,S
6CC6: E3 70          ADDD   -$10,S
6CC8: E3 70          ADDD   -$10,S
6CCA: DB 70          ADDB   $70
6CCC: DB 70          ADDB   $70
6CCE: D5 70          BITB   $70
6CD0: D5 70          BITB   $70
6CD2: D5 70          BITB   $70
6CD4: D5 70          BITB   $70
6CD6: D5 70          BITB   $70
6CD8: D5 70          BITB   $70
6CDA: D5 70          BITB   $70
6CDC: D5 70          BITB   $70
6CDE: D5 70          BITB   $70
6CE0: D5 70          BITB   $70
6CE2: D5 70          BITB   $70
6CE4: D5 70          BITB   $70
6CE6: D5 70          BITB   $70
6CE8: D5 70          BITB   $70
6CEA: D5 70          BITB   $70
6CEC: D5 70          BITB   $70
6CEE: D5 70          BITB   $70
6CF0: D5 70          BITB   $70
6CF2: D5 70          BITB   $70
6CF4: D5 70          BITB   $70
6CF6: D5 70          BITB   $70
6CF8: D5 70          BITB   $70
6CFA: D5 71          BITB   $71
6CFC: 05 71 05       EIM    #$71;$05
6CFF: 71 05 70 FF    OIM    #$05,$70FF
6D03: 70 F7 70       NEG    $F770
6D06: F7 70 F7       STB    $70F7
6D09: 70 F1 70       NEG    $F170
6D0C: F1 70 ED       CMPB   $70ED
6D0F: 70 ED 70       NEG    $ED70
6D12: ED 70          STD    -$10,S
6D14: ED 70          STD    -$10,S
6D16: ED 70          STD    -$10,S
6D18: ED 70          STD    -$10,S
6D1A: ED 70          STD    -$10,S
6D1C: ED 70          STD    -$10,S
6D1E: ED 70          STD    -$10,S
6D20: ED 70          STD    -$10,S
6D22: ED 70          STD    -$10,S
6D24: ED 70          STD    -$10,S
6D26: ED 70          STD    -$10,S
6D28: ED 70          STD    -$10,S
6D2A: ED 70          STD    -$10,S
6D2C: ED 70          STD    -$10,S
6D2E: ED 70          STD    -$10,S
6D30: ED 70          STD    -$10,S
6D32: ED 70          STD    -$10,S
6D34: ED 70          STD    -$10,S
6D36: ED 70          STD    -$10,S
6D38: ED 70          STD    -$10,S
6D3A: ED 71          STD    -$F,S
6D3C: 21 71          BRN    $6DAF
6D3E: 21 71          BRN    $6DB1
6D40: 21 71          BRN    $6DB3
6D42: 1D             SEX
6D43: 71 17 71 17    OIM    #$17,$7117
6D47: 71 17 71 11    OIM    #$17,$7111
6D4B: 71 11 71 0D    OIM    #$11,$710D
6D4F: 71 0D 71 0D    OIM    #$0D,$710D
6D53: 71 0D 71 0D    OIM    #$0D,$710D
6D57: 71 0D 71 0D    OIM    #$0D,$710D
6D5B: 71 0D 71 0D    OIM    #$0D,$710D
6D5F: 71 0D 71 0D    OIM    #$0D,$710D
6D63: 71 0D 71 0D    OIM    #$0D,$710D
6D67: 71 0D 71 0D    OIM    #$0D,$710D
6D6B: 71 0D 71 0D    OIM    #$0D,$710D
6D6F: 71 0D 71 0D    OIM    #$0D,$710D
6D73: 71 0D 71 0D    OIM    #$0D,$710D
6D77: 71 0D 71 0D    OIM    #$0D,$710D
6D7B: 71 35 71 35    OIM    #$35,$7135
6D7F: 71 35 71 35    OIM    #$35,$7135
6D83: 71 31 71 31    OIM    #$31,$7131
6D87: 71 31 71 2B    OIM    #$31,$712B
6D8B: 71 2B 71 27    OIM    #$2B,$7127
6D8F: 71 27 71 27    OIM    #$27,$7127
6D93: 71 27 71 27    OIM    #$27,$7127
6D97: 71 27 71 27    OIM    #$27,$7127
6D9B: 71 27 71 27    OIM    #$27,$7127
6D9F: 71 27 71 27    OIM    #$27,$7127
6DA3: 71 27 71 27    OIM    #$27,$7127
6DA7: 71 27 71 27    OIM    #$27,$7127
6DAB: 71 27 71 27    OIM    #$27,$7127
6DAF: 71 27 71 27    OIM    #$27,$7127
6DB3: 71 27 71 27    OIM    #$27,$7127
6DB7: 71 27 71 27    OIM    #$27,$7127
6DBB: 71 57 71 57    OIM    #$57,$7157
6DBF: 71 57 71 57    OIM    #$57,$7157
6DC3: 71 51 71 51    OIM    #$51,$7151
6DC7: 71 4D 71 47    OIM    #$4D,$7147
6DCB: 71 47 71 47    OIM    #$47,$7147
6DCF: 71 47 71 3F    OIM    #$47,$713F
6DD3: 71 3F 71 39    OIM    #$3F,$7139
6DD7: 71 39 71 39    OIM    #$39,$7139
6DDB: 71 39 71 39    OIM    #$39,$7139
6DDF: 71 39 71 39    OIM    #$39,$7139
6DE3: 71 39 71 39    OIM    #$39,$7139
6DE7: 71 39 71 39    OIM    #$39,$7139
6DEB: 71 39 71 39    OIM    #$39,$7139
6DEF: 71 39 71 39    OIM    #$39,$7139
6DF3: 71 39 71 39    OIM    #$39,$7139
6DF7: 71 39 71 39    OIM    #$39,$7139
6DFB: 71 69 71 69    OIM    #$69,$7169
6DFF: 71 69 71 69    OIM    #$69,$7169
6E03: 71 69 71 69    OIM    #$69,$7169
6E07: 71 65 71 65    OIM    #$65,$7165
6E0B: 71 65 71 65    OIM    #$65,$7165
6E0F: 71 65 71 5F    OIM    #$65,$715F
6E13: 71 5F 71 5B    OIM    #$5F,$715B
6E17: 71 5B 71 5B    OIM    #$5B,$715B
6E1B: 71 5B 71 5B    OIM    #$5B,$715B
6E1F: 71 5B 71 5B    OIM    #$5B,$715B
6E23: 71 5B 71 5B    OIM    #$5B,$715B
6E27: 71 5B 71 5B    OIM    #$5B,$715B
6E2B: 71 5B 71 5B    OIM    #$5B,$715B
6E2F: 71 5B 71 5B    OIM    #$5B,$715B
6E33: 71 5B 71 5B    OIM    #$5B,$715B
6E37: 71 5B 71 5B    OIM    #$5B,$715B
6E3B: 71 7B 71 7B    OIM    #$7B,$717B
6E3F: 71 7B 71 7B    OIM    #$7B,$717B
6E43: 71 7B 71 7B    OIM    #$7B,$717B
6E47: 71 77 71 77    OIM    #$77,$7177
6E4B: 71 77 71 77    OIM    #$77,$7177
6E4F: 71 77 71 71    OIM    #$77,$7171
6E53: 71 71 71 6D    OIM    #$71,$716D
6E57: 71 6D 71 6D    OIM    #$6D,$716D
6E5B: 71 6D 71 6D    OIM    #$6D,$716D
6E5F: 71 6D 71 6D    OIM    #$6D,$716D
6E63: 71 6D 71 6D    OIM    #$6D,$716D
6E67: 71 6D 71 6D    OIM    #$6D,$716D
6E6B: 71 6D 71 6D    OIM    #$6D,$716D
6E6F: 71 6D 71 6D    OIM    #$6D,$716D
6E73: 71 6D 71 6D    OIM    #$6D,$716D
6E77: 71 6D 71 6D    OIM    #$6D,$716D
6E7B: 71 A1 71 A1    OIM    #$A1,$71A1
6E7F: 71 A1 71 A1    OIM    #$A1,$71A1
6E83: 71 A1 71 A1    OIM    #$A1,$71A1
6E87: 71 9D 71 9D    OIM    #$9D,$719D
6E8B: 71 9D 71 9D    OIM    #$9D,$719D
6E8F: 71 9D 71 97    OIM    #$9D,$7197
6E93: 71 97 71 97    OIM    #$97,$7197
6E97: 71 97 71 8F    OIM    #$97,$718F
6E9B: 71 8F 71 8F    OIM    #$8F,$718F
6E9F: 71 8F 71 8F    OIM    #$8F,$718F
6EA3: 71 8F 71 85    OIM    #$8F,$7185
6EA7: 71 85 71 7F    OIM    #$85,$717F
6EAB: 71 7F 71 7F    OIM    #$7F,$717F
6EAF: 71 7F 71 7F    OIM    #$7F,$717F
6EB3: 71 7F 71 7F    OIM    #$7F,$717F
6EB7: 71 7F 71 7F    OIM    #$7F,$717F
6EBB: 71 C9 71 C9    OIM    #$C9,$71C9
6EBF: 71 C9 71 C9    OIM    #$C9,$71C9
6EC3: 71 C9 71 C9    OIM    #$C9,$71C9
6EC7: 71 C5 71 C5    OIM    #$C5,$71C5
6ECB: 71 C5 71 C5    OIM    #$C5,$71C5
6ECF: 71 C5 71 C5    OIM    #$C5,$71C5
6ED3: 71 C5 71 C5    OIM    #$C5,$71C5
6ED7: 71 C5 71 C5    OIM    #$C5,$71C5
6EDB: 71 C5 71 C5    OIM    #$C5,$71C5
6EDF: 71 C5 71 C5    OIM    #$C5,$71C5
6EE3: 71 C5 71 B9    OIM    #$C5,$71B9
6EE7: 71 B9 71 AD    OIM    #$B9,$71AD
6EEB: 71 AD 71 A5    OIM    #$AD,$71A5
6EEF: 71 A5 71 A5    OIM    #$A5,$71A5
6EF3: 71 A5 71 A5    OIM    #$A5,$71A5
6EF7: 71 A5 71 A5    OIM    #$A5,$71A5
6EFB: 71 CF 71 CF    OIM    #$CF,$71CF
6EFF: 71 CF 71 CF    OIM    #$CF,$71CF
6F03: 71 CF 71 CF    OIM    #$CF,$71CF
6F07: 71 CF 71 CF    OIM    #$CF,$71CF
6F0B: 71 CF 71 CF    OIM    #$CF,$71CF
6F0F: 71 CF 71 CF    OIM    #$CF,$71CF
6F13: 71 CF 71 CF    OIM    #$CF,$71CF
6F17: 71 CF 71 CF    OIM    #$CF,$71CF
6F1B: 71 CF 71 CF    OIM    #$CF,$71CF
6F1F: 71 CF 71 CF    OIM    #$CF,$71CF
6F23: 71 CF 71 CF    OIM    #$CF,$71CF
6F27: 71 CF 71 CF    OIM    #$CF,$71CF
6F2B: 71 CF 71 CF    OIM    #$CF,$71CF
6F2F: 71 CF 71 CF    OIM    #$CF,$71CF
6F33: 71 CF 71 CF    OIM    #$CF,$71CF
6F37: 71 CF 71 CF    OIM    #$CF,$71CF
6F3B: 71 CF 71 CF    OIM    #$CF,$71CF
6F3F: 71 CF 71 CF    OIM    #$CF,$71CF
6F43: 71 CF 71 CF    OIM    #$CF,$71CF
6F47: 71 CF 71 CF    OIM    #$CF,$71CF
6F4B: 71 CF 71 CF    OIM    #$CF,$71CF
6F4F: 71 CF 71 CF    OIM    #$CF,$71CF
6F53: 71 CF 71 CF    OIM    #$CF,$71CF
6F57: 71 CF 71 CF    OIM    #$CF,$71CF
6F5B: 71 CF 71 CF    OIM    #$CF,$71CF
6F5F: 71 CF 71 CF    OIM    #$CF,$71CF
6F63: 71 CF 71 CF    OIM    #$CF,$71CF
6F67: 71 CF 71 CF    OIM    #$CF,$71CF
6F6B: 71 CF 71 CF    OIM    #$CF,$71CF
6F6F: 71 CF 71 CF    OIM    #$CF,$71CF
6F73: 71 CF 71 CF    OIM    #$CF,$71CF
6F77: 71 CF 71 CF    OIM    #$CF,$71CF
6F7B: 72 05 72 05    AIM    #$05,$7205
6F7F: 72 05 72 05    AIM    #$05,$7205
6F83: 72 05 72 05    AIM    #$05,$7205
6F87: 72 01 72 01    AIM    #$01,$7201
6F8B: 72 01 72 01    AIM    #$01,$7201
6F8F: 72 01 72 01    AIM    #$01,$7201
6F93: 72 01 72 01    AIM    #$01,$7201
6F97: 72 01 72 01    AIM    #$01,$7201
6F9B: 72 01 71 FB    AIM    #$01,$71FB
6F9F: 71 FB 71 FB    OIM    #$FB,$71FB
6FA3: 71 FB 71 F1    OIM    #$FB,$71F1
6FA7: 71 F1 71 E7    OIM    #$F1,$71E7
6FAB: 71 E7 71 DD    OIM    #$E7,$71DD
6FAF: 71 DD 71 DD    OIM    #$DD,$71DD
6FB3: 71 D3 71 D3    OIM    #$D3,$71D3
6FB7: 71 D3 71 D3    OIM    #$D3,$71D3
6FBB: 72 27 72 27    AIM    #$27,$7227
6FBF: 72 27 72 27    AIM    #$27,$7227
6FC3: 72 27 72 27    AIM    #$27,$7227
6FC7: 72 21 72 21    AIM    #$21,$7221
6FCB: 72 21 72 21    AIM    #$21,$7221
6FCF: 72 21 72 19    AIM    #$21,$7219
6FD3: 72 19 72 19    AIM    #$19,$7219
6FD7: 72 19 72 19    AIM    #$19,$7219
6FDB: 72 19 72 19    AIM    #$19,$7219
6FDF: 72 19 72 13    AIM    #$19,$7213
6FE3: 72 13 72 13    AIM    #$13,$7213
6FE7: 72 13 72 13    AIM    #$13,$7213
6FEB: 72 13 72 0B    AIM    #$13,$720B
6FEF: 72 0B 72 0B    AIM    #$0B,$720B
6FF3: 72 0B 72 0B    AIM    #$0B,$720B
6FF7: 72 0B 72 0B    AIM    #$0B,$720B
6FFB: 72 33 72 2D    AIM    #$33,$722D
6FFF: 72 2D 72 2D    AIM    #$2D,$722D
7003: 72 2D 72 2D    AIM    #$2D,$722D
7007: 72 2D 72 2D    AIM    #$2D,$722D
700B: 72 2D 72 2D    AIM    #$2D,$722D
700F: 72 2D 72 2D    AIM    #$2D,$722D
7013: 72 2D 72 2D    AIM    #$2D,$722D
7017: 72 2D 72 2D    AIM    #$2D,$722D
701B: 72 2D 72 2D    AIM    #$2D,$722D
701F: 72 2D 72 2D    AIM    #$2D,$722D
7023: 72 2D 72 2D    AIM    #$2D,$722D
7027: 72 2D 72 2D    AIM    #$2D,$722D
702B: 72 2D 72 2D    AIM    #$2D,$722D
702F: 72 2D 72 2D    AIM    #$2D,$722D
7033: 72 2D 72 2D    AIM    #$2D,$722D
7037: 72 2D 72 2D    AIM    #$2D,$722D
703B: 72 3F 72 3B    AIM    #$3F,$723B
703F: 72 3B 72 3B    AIM    #$3B,$723B
7043: 72 3B 72 3B    AIM    #$3B,$723B
7047: 72 3B 72 3B    AIM    #$3B,$723B
704B: 72 3B 72 3B    AIM    #$3B,$723B
704F: 72 3B 72 3B    AIM    #$3B,$723B
7053: 72 3B 72 3B    AIM    #$3B,$723B
7057: 72 3B 72 3B    AIM    #$3B,$723B
705B: 72 3B 72 3B    AIM    #$3B,$723B
705F: 72 3B 72 3B    AIM    #$3B,$723B
7063: 72 3B 72 3B    AIM    #$3B,$723B
7067: 72 3B 72 3B    AIM    #$3B,$723B
706B: 72 3B 72 3B    AIM    #$3B,$723B
706F: 72 3B 72 3B    AIM    #$3B,$723B
7073: 72 3B 72 3B    AIM    #$3B,$723B
7077: 72 3B 72 3B    AIM    #$3B,$723B
707B: 72 5B 72 66    AIM    #$5B,$7266
707F: FF FF 72       STU    $FF72
7082: 50             NEGB
7083: 72 5B 72 66    AIM    #$5B,$7266
7087: FF FF 72       STU    $FF72
708A: 5B             FCB    $5B
708B: 72 50 FF FF    AIM    #$50,$FFFF
708F: 72 50 FF FF    AIM    #$50,$FFFF
7093: 72 50 72 45    AIM    #$50,$7245
7097: FF FF 72       STU    $FF72
709A: 66 72          ROR    -$E,S
709C: 71 72 45 FF    OIM    #$72,$45FF
70A0: FF 72 66       STU    $7266
70A3: 72 71 72 50    AIM    #$71,$7250
70A7: 72 45 FF FF    AIM    #$45,$FFFF
70AB: 72 71 72 50    AIM    #$71,$7250
70AF: 72 45 FF FF    AIM    #$45,$FFFF
70B3: 72 50 FF FF    AIM    #$50,$FFFF
70B7: 72 50 72 45    AIM    #$50,$7245
70BB: FF FF 72       STU    $FF72
70BE: 7C 72 92       INC    $7292
70C1: FF FF 72       STU    $FF72
70C4: 7C 72 87       INC    $7287
70C7: 72 92 FF FF    AIM    #$92,$FFFF
70CB: 72 87 FF FF    AIM    #$87,$FFFF
70CF: 72 7C 72 87    AIM    #$7C,$7287
70D3: FF FF 72       STU    $FF72
70D6: 7C 72 92       INC    $7292
70D9: FF FF 72       STU    $FF72
70DC: 7C 72 87       INC    $7287
70DF: 72 92 FF FF    AIM    #$92,$FFFF
70E3: 72 87 FF FF    AIM    #$87,$FFFF
70E7: 72 7C 72 87    AIM    #$7C,$7287
70EB: FF FF 72       STU    $FF72
70EE: B3 FF FF       SUBD   $FFFF
70F1: 72 B3 72 A8    AIM    #$B3,$72A8
70F5: FF FF 72       STU    $FF72
70F8: A8 72          EORA   -$E,S
70FA: BE 72 9D       LDX    $729D
70FD: FF FF 72       STU    $FF72
7100: BE 72 C9       LDX    $72C9
7103: FF FF 72       STU    $FF72
7106: BE 72 C9       LDX    $72C9
7109: 72 9D FF FF    AIM    #$9D,$FFFF
710D: 72 B3 FF FF    AIM    #$B3,$FFFF
7111: 72 B3 72 A8    AIM    #$B3,$72A8
7115: FF FF 72       STU    $FF72
7118: A8 72          EORA   -$E,S
711A: 9D FF          JSR    $FF
711C: FF 72 C9       STU    $72C9
711F: FF FF 72       STU    $FF72
7122: C9 72          ADCB   #$72
7124: 9D FF          JSR    $FF
7126: FF 72 DF       STU    $72DF
7129: FF FF 72       STU    $FF72
712C: EA 72          ORB    -$E,S
712E: DF FF          STU    $FF
7130: FF 72 EA       STU    $72EA
7133: FF FF 73       STU    $FF73
7136: 00 FF          NEG    $FF
7138: FF 72 D4       STU    $72D4
713B: 72 DF FF FF    AIM    #$DF,$FFFF
713F: 72 D4 72 DF    AIM    #$D4,$72DF
7143: 72 F5 FF FF    AIM    #$F5,$FFFF
7147: 72 DF 72 F5    AIM    #$DF,$72F5
714B: FF FF 72       STU    $FF72
714E: F5 FF FF       BITB   $FFFF
7151: 72 F5 73 00    AIM    #$F5,$7300
7155: FF FF 73       STU    $FF73
7158: 00 FF          NEG    $FF
715A: FF 73 16       STU    $7316
715D: FF FF 73       STU    $FF73
7160: 16 73 0B       LBRA   $E46E
7163: FF FF 73       STU    $FF73
7166: 0B FF FF       TIM    #$FF;$FF
7169: 73 21 FF       COM    $21FF
716C: FF 73 4D       STU    $734D
716F: FF FF 73       STU    $FF73
7172: 4D             TSTA
7173: 73 0B FF       COM    $0BFF
7176: FF 73 0B       STU    $730B
7179: FF FF 73       STU    $FF73
717C: 21 FF          BRN    $717D
717E: FF 73 42       STU    $7342
7181: 73 4D FF       COM    $4DFF
7184: FF 73 37       STU    $7337
7187: 73 42 73       COM    $4273
718A: 4D             TSTA
718B: 73 58 FF       COM    $58FF
718E: FF 73 37       STU    $7337
7191: 73 4D 73       COM    $4D73
7194: 58             ASLB
7195: FF FF 73       STU    $FF73
7198: 4D             TSTA
7199: 73 37 FF       COM    $37FF
719C: FF 73 37       STU    $7337
719F: FF FF 73       STU    $FF73
71A2: 2C FF          BGE    $71A3
71A4: FF 73 42       STU    $7342
71A7: 73 63 73       COM    $6373
71AA: 84 FF          ANDA   #$FF
71AC: FF 73 42       STU    $7342
71AF: 73 63 73       COM    $6373
71B2: 84 73          ANDA   #$73
71B4: 79 73 6E       ROL    $736E
71B7: FF FF 73       STU    $FF73
71BA: 42             FCB    $42
71BB: 73 63 73       COM    $6373
71BE: 79 73 6E       ROL    $736E
71C1: 73 37 FF       COM    $37FF
71C4: FF 73 37       STU    $7337
71C7: FF FF 73       STU    $FF73
71CA: 37 73          PULU   CC,A,X,Y,S
71CC: 2C FF          BGE    $71CD
71CE: FF 73 8F       STU    $738F
71D1: FF FF 73       STU    $FF73
71D4: B0 73 C6       SUBA   $73C6
71D7: 73 63 73       COM    $6373
71DA: 84 FF          ANDA   #$FF
71DC: FF 73 B0       STU    $73B0
71DF: 73 C6 73       COM    $C673
71E2: 63 73          COM    -$D,S
71E4: 84 FF          ANDA   #$FF
71E6: FF 73 B0       STU    $73B0
71E9: 73 63 73       COM    $6373
71EC: 84 73          ANDA   #$73
71EE: 79 FF FF       ROL    $FFFF
71F1: 73 B0 73       COM    $B073
71F4: 63 73          COM    -$D,S
71F6: 79 73 A5       ROL    $73A5
71F9: FF FF 73       STU    $FF73
71FC: B0 73 A5       SUBA   $73A5
71FF: FF FF 73       STU    $FF73
7202: A5 FF FF 73    BITA   [$FF73]
7206: A5 73          BITA   -$D,S
7208: 9A FF          ORA    $FF
720A: FF 73 B0       STU    $73B0
720D: 73 BB 73       COM    $BB73
7210: C6 FF          LDB    #$FF
7212: FF 73 B0       STU    $73B0
7215: 73 BB FF       COM    $BBFF
7218: FF 73 B0       STU    $73B0
721B: 73 BB 73       COM    $BB73
721E: A5 FF FF 73    BITA   [$FF73]
7222: A5 73          BITA   -$D,S
7224: BB FF FF       ADDA   $FFFF
7227: 73 BB 73       COM    $BB73
722A: 9A FF          ORA    $FF
722C: FF 73 DC       STU    $73DC
722F: 73 D1 FF       COM    $D1FF
7232: FF 73 DC       STU    $73DC
7235: 73 D1 73       COM    $D173
7238: C6 FF          LDB    #$FF
723A: FF 73 D1       STU    $73D1
723D: FF FF 73       STU    $FF73
7240: D1 73          CMPB   $73
7242: C6 FF          LDB    #$FF
7244: FF 15 00       STU    $1500
7247: 00 00          NEG    $00
7249: 00 F0          NEG    $F0
724B: 00 10          NEG    $10
724D: FF 80 10       STU    $8010
7250: 15             FCB    $15
7251: 00 00          NEG    $00
7253: 00 00          NEG    $00
7255: F0 00 70       SUBB   >$0070
7258: 10 80 01 14    SUBW   #$0114
725C: F0 00 50       SUBB   >$0050
725F: 01 40 10       OIM    #$40;$10
7262: 20 FF          BRA    $7263
7264: 00 08          NEG    $08
7266: 15             FCB    $15
7267: 00 00          NEG    $00
7269: 60 01          NEG    $1,X
726B: 50             NEGB
726C: C0 10          SUBB   #$10
726E: FF 80 04       STU    $8004
7271: 15             FCB    $15
7272: D0 00          SUBB   $00
7274: 40             NEGA
7275: 01 30 FF       OIM    #$30;$FF
7278: 30 FF 40 06    LEAX   [$4006]
727C: 16 00 00       LBRA   $727F
727F: 00 00          NEG    $00
7281: F0 00 10       SUBB   >$0010
7284: FF 80 10       STU    $8010
7287: 16 00 00       LBRA   $728A
728A: 00 00          NEG    $00
728C: F0 00 50       SUBB   >$0050
728F: 10 80 01 16    SUBW   #$0116
7293: 00 00          NEG    $00
7295: 40             NEGA
7296: 01 30 00       OIM    #$30;$00
7299: 10 FF 80 04    STS    $8004
729D: 17 00 00       LBSR   $72A0
72A0: 00 00          NEG    $00
72A2: F0 00 10       SUBB   >$0010
72A5: FF 80 10       STU    $8010
72A8: 17 00 00       LBSR   $72AB
72AB: 30 01          LEAX   $1,X
72AD: 00 00          NEG    $00
72AF: 40             NEGA
72B0: 30 80          LEAX   ,X+
72B2: 01 17 00       OIM    #$17;$00
72B5: 00 40          NEG    $40
72B7: 01 30 00       OIM    #$30;$00
72BA: 30 FF 8D 0C    LEAX   [$8D0C]
72BE: 16 D0 00       LBRA   $42C1
72C1: 00 00          NEG    $00
72C3: D0 30          SUBB   $30
72C5: 30 30          LEAX   -$10,Y
72C7: 00 01          NEG    $01
72C9: 17 00 FF       LBSR   $73CB
72CC: F0 00 D0       SUBB   >$00D0
72CF: 00 30          NEG    $30
72D1: 10 86 00 18    LDW    #$0018
72D5: 00 00          NEG    $00
72D7: 60 01          NEG    $1,X
72D9: 50             NEGB
72DA: 00 10          NEG    $10
72DC: FF 80 04       STU    $8004
72DF: 18             FCB    $18
72E0: 00 00          NEG    $00
72E2: 40             NEGA
72E3: 01 30 E0       OIM    #$30;$E0
72E6: 30 FF 8D 0C    LEAX   [$8D0C]
72EA: 18             FCB    $18
72EB: 00 00          NEG    $00
72ED: 30 01          LEAX   $1,X
72EF: 00 80          NEG    $80
72F1: 40             NEGA
72F2: 30 80          LEAX   ,X+
72F4: 01 18 40       OIM    #$18;$40
72F7: 00 30          NEG    $30
72F9: 01 00 B0       OIM    #$00;$B0
72FC: 40             NEGA
72FD: 30 00          LEAX   $0,X
72FF: 01 18 00       OIM    #$18;$00
7302: 00 10          NEG    $10
7304: 00 F0          NEG    $F0
7306: 00 30          NEG    $30
7308: 10 86 00 19    LDW    #$0019
730C: 00 00          NEG    $00
730E: 40             NEGA
730F: 01 00 00       OIM    #$00;$00
7312: 30 40          LEAX   $0,U
7314: 80 01          SUBA   #$01
7316: 19             DAA
7317: 00 00          NEG    $00
7319: 60 01          NEG    $1,X
731B: 50             NEGB
731C: 00 10          NEG    $10
731E: FF 80 04       STU    $8004
7321: 19             DAA
7322: 00 00          NEG    $00
7324: 10 00          FCB    $10,$00
7326: F0             FCB    $F0
7327: 00             FCB    $00
7328: 30 10          ADDR   X,D
732A: 86 00          LDA    #$00
732C: 1A 00          ORCC   #$00
732E: 00 10          NEG    $10
7330: 00 F0          NEG    $F0
7332: 00 30          NEG    $30
7334: 10 86 00 1A    LDW    #$001A
7338: 00 00          NEG    $00
733A: 40             NEGA
733B: 01 00 00       OIM    #$00;$00
733E: 80 40          SUBA   #$40
7340: 80 01          SUBA   #$01
7342: 1A 40          ORCC   #$40
7344: 00 B0          NEG    $B0
7346: 01 90 80       OIM    #$90;$80
7349: 30 FF 80 04    LEAX   [$8004]
734D: 19             DAA
734E: 10 00          FCB    $10,$00
7350: 60             FCB    $60
7351: 01             FCB    $01
7352: 50             FCB    $50
7353: F0             FCB    $F0
7354: 60             FCB    $60
7355: FF 00 0C       STS    >$000C
7358: 1A 20          ORCC   #$20
735A: 00 80          NEG    $80
735C: 01 40 20       OIM    #$40;$20
735F: 30 41          LEAX   $1,U
7361: 07 00          ASR    $00
7363: 1A F0          ORCC   #$F0
7365: 00 B0          NEG    $B0
7367: 01 90 80       OIM    #$90;$80
736A: 10 FF 80 14    STS    $8014
736E: 1A C0          ORCC   #$C0
7370: 00 B0          NEG    $B0
7372: 01 80 30       OIM    #$80;$30
7375: 10 30 80       ADDR   A,D
7378: 04 1A          LSR    $1A
737A: C0 00          SUBB   #$00
737C: B0 01 80       SUBA   $0180
737F: A0 30          SUBA   -$10,Y
7381: 20 80          BRA    $7303
7383: 01 1A C0       OIM    #$1A;$C0
7386: 00 D0          NEG    $D0
7388: 01 80 B0       OIM    #$80;$B0
738B: 10 FF 80 04    STS    $8004
738F: 1A 00          ORCC   #$00
7391: 00 D0          NEG    $D0
7393: 01 F0 00       OIM    #$F0;$00
7396: 10 FF 80 04    STS    $8004
739A: 1B             FCB    $1B
739B: 00 00          NEG    $00
739D: 10 00          FCB    $10,$00
739F: F0             FCB    $F0
73A0: C0             FCB    $C0
73A1: 30 10          ADDR   X,D
73A3: 86 00          LDA    #$00
73A5: 1B             FCB    $1B
73A6: 00 00          NEG    $00
73A8: 40             NEGA
73A9: 01 00 C0       OIM    #$00;$C0
73AC: 80 40          SUBA   #$40
73AE: 80 05          SUBA   #$05
73B0: 1B             FCB    $1B
73B1: C0 00          SUBB   #$00
73B3: 50             NEGB
73B4: 01 40 10       OIM    #$40;$10
73B7: 70 FF 40       NEG    $FF40
73BA: 02 1B B0       AIM    #$1B;$B0
73BD: 00 10          NEG    $10
73BF: 00 F0          NEG    $F0
73C1: 50             NEGB
73C2: 60 FF 80 02    NEG    [$8002]
73C6: 1B             FCB    $1B
73C7: 80 00          SUBA   #$00
73C9: 88 01          EORA   #$01
73CB: D8 FF          EORB   $FF
73CD: 18             FCB    $18
73CE: 10 40          NEGD
73D0: 01 1B 40       OIM    #$1B;$40
73D3: 00 A0          NEG    $A0
73D5: 01 F0 FF       OIM    #$F0;$FF
73D8: 20 FF          BRA    $73D9
73DA: 40             NEGA
73DB: 06 1B          ROR    $1B
73DD: 00 00          NEG    $00
73DF: B0 02 00       SUBA   $0200
73E2: 40             NEGA
73E3: 10 FF 80 04    STS    $8004
73E7: E7 F3          STB    [,--S]
73E9: 6F E9 73 F3    CLR    $73F3,S
73ED: 6F E9 73 FB    CLR    $73FB,S
73F1: 6F E9 01 01    CLR    $0101,S
73F5: 77 D5 78       ASR    $D578
73F8: 81 74          CMPA   #$74
73FA: 03 00          COM    $00
73FC: 00 77          NEG    $77
73FE: D5 78          BITB   $78
7400: 49             ROLA
7401: 6F F1          CLR    [,S++]
7403: FF 03 00       STU    $0300
7406: 01 01 FD       OIM    #$01;$FD
7409: 74 15 6F       LSR    $156F
740C: E9 74          ADCB   -$C,S
740E: 15             FCB    $15
740F: 6F E9 74 15    CLR    $7415,S
7413: 6F E9 00 00    CLR    $0000,S
7417: 77 A1 78       ASR    $A178
741A: 49             ROLA
741B: 6F F1          CLR    [,S++]
741D: 74 29 6F       LSR    $296F
7420: E9 74          ADCB   -$C,S
7422: 29 6F          BVS    $7493
7424: E9 74          ADCB   -$C,S
7426: 29 6F          BVS    $7497
7428: E9 00          ADCB   $0,X
742A: 00 77          NEG    $77
742C: D1 78          CMPB   $78
742E: 49             ROLA
742F: 6F F1          CLR    [,S++]
7431: 74 3D 6F       LSR    $3D6F
7434: E9 74          ADCB   -$C,S
7436: 3D             MUL
7437: 6F E9 74 3D    CLR    $743D,S
743B: 6F E9 00 00    CLR    $0000,S
743F: 77 A5 78       ASR    $A578
7442: 49             ROLA
7443: 6F F1          CLR    [,S++]
7445: 74 51 6F       LSR    $516F
7448: E9 74          ADCB   -$C,S
744A: 51             FCB    $51
744B: 6F E9 74 51    CLR    $7451,S
744F: 6F E9 00 00    CLR    $0000,S
7453: 77 D9 78       ASR    $D978
7456: 49             ROLA
7457: 6F F1          CLR    [,S++]
7459: 6F E9 6F E9    CLR    $6FE9,S
745D: 74 65 6F       LSR    $656F
7460: E9 6F          ADCB   $F,S
7462: E9 6F          ADCB   $F,S
7464: E9 00          ADCB   $0,X
7466: 00 77          NEG    $77
7468: FD 78 49       STD    $7849
746B: 6F F1          CLR    [,S++]
746D: 6F E9 6F E9    CLR    $6FE9,S
7471: 6F E9 74 79    CLR    $7479,S
7475: 6F E9 6F E9    CLR    $6FE9,S
7479: 00 00          NEG    $00
747B: 78 11 78       ASL    $1178
747E: 49             ROLA
747F: 6F F1          CLR    [,S++]
7481: 74 8D 6F       LSR    $8D6F
7484: E9 74          ADCB   -$C,S
7486: 8D 74          BSR    $74FC
7488: 95 6F          BITA   $6F
748A: E9 6F          ADCB   $F,S
748C: E9 00          ADCB   $0,X
748E: 00 77          NEG    $77
7490: B5 78 49       BITA   $7849
7493: 6F F1          CLR    [,S++]
7495: 00 00          NEG    $00
7497: 78 11 78       ASL    $1178
749A: 49             ROLA
749B: 6F F1          CLR    [,S++]
749D: 74 A9 6F       LSR    $A96F
74A0: E9 74          ADCB   -$C,S
74A2: A9 74          ADCA   -$C,S
74A4: B1 6F E9       CMPA   $6FE9
74A7: 6F E9 01 03    CLR    $0103,S
74AB: 77 B5 78       ASR    $B578
74AE: 71 74 B9 00    OIM    #$74,$B900
74B2: 00 78          NEG    $78
74B4: 11 78          FCB    $11,$78
74B6: 49             FCB    $49
74B7: 6F             FCB    $6F
74B8: F1 FF 01       CMPF   $FF01
74BB: 00 01          NEG    $01
74BD: 01 FD 74       OIM    #$FD;$74
74C0: CB 6F          ADDB   #$6F
74C2: E9 74          ADCB   -$C,S
74C4: CB 6F          ADDB   #$6F
74C6: E9 6F          ADCB   $F,S
74C8: E9 6F          ADCB   $F,S
74CA: E9 00          ADCB   $0,X
74CC: 00 77          NEG    $77
74CE: D1 78          CMPB   $78
74D0: 49             ROLA
74D1: 6F F1          CLR    [,S++]
74D3: 74 DF 6F       LSR    $DF6F
74D6: E9 74          ADCB   -$C,S
74D8: DF 6F          STU    $6F
74DA: E9 6F          ADCB   $F,S
74DC: E9 6F          ADCB   $F,S
74DE: E9 00          ADCB   $0,X
74E0: 00 77          NEG    $77
74E2: F1 78 49       CMPB   $7849
74E5: 6F F1          CLR    [,S++]
74E7: 74 F3 6F       LSR    $F36F
74EA: E9 74          ADCB   -$C,S
74EC: FB 6F E9       ADDB   $6FE9
74EF: 6F E9 6F E9    CLR    $6FE9,S
74F3: 01 04 77       OIM    #$04;$77
74F6: F5 78 75       BITB   $7875
74F9: 75 09 01 04    EIM    #$09,$0104
74FD: 77 F5 78       ASR    $F578
7500: 75 75 03 FF    EIM    #$75,$03FF
7504: 01 00 01       OIM    #$00;$01
7507: 01 FD FF       OIM    #$FD;$FF
750A: 01 00 01       OIM    #$00;$01
750D: 01 FD 75       OIM    #$FD;$75
7510: 1B             FCB    $1B
7511: 6F E9 75 1B    CLR    $751B,S
7515: 6F E9 6F E9    CLR    $6FE9,S
7519: 6F E9 00 00    CLR    $0000,S
751D: 77 D5 78       ASR    $D578
7520: 49             ROLA
7521: 6F F1          CLR    [,S++]
7523: 75 2F 6F E9    EIM    #$2F,$6FE9
7527: 75 2F 6F E9    EIM    #$2F,$6FE9
752B: 75 2F 6F E9    EIM    #$2F,$6FE9
752F: 00 00          NEG    $00
7531: 77 E9 78       ASR    $E978
7534: 49             ROLA
7535: 6F F1          CLR    [,S++]
7537: 75 43 6F E9    EIM    #$43,$6FE9
753B: 75 43 75 4B    EIM    #$43,$754B
753F: 75 43 6F E9    EIM    #$43,$6FE9
7543: 00 00          NEG    $00
7545: 77 A1 78       ASR    $A178
7548: 49             ROLA
7549: 6F F1          CLR    [,S++]
754B: 00 00          NEG    $00
754D: 78 09 78       ASL    $0978
7550: 49             ROLA
7551: 6F F1          CLR    [,S++]
7553: 75 5F 6F E9    EIM    #$5F,$6FE9
7557: 75 5F 75 67    EIM    #$5F,$7567
755B: 75 5F 6F E9    EIM    #$5F,$6FE9
755F: 00 00          NEG    $00
7561: 77 A1 78       ASR    $A178
7564: 49             ROLA
7565: 6F F1          CLR    [,S++]
7567: 00 00          NEG    $00
7569: 77 F9 78       ASR    $F978
756C: 49             ROLA
756D: 6F F1          CLR    [,S++]
756F: 75 7B 6F E9    EIM    #$7B,$6FE9
7573: 75 7B 6F E9    EIM    #$7B,$6FE9
7577: 75 7B 6F E9    EIM    #$7B,$6FE9
757B: 01 05 77       OIM    #$05;$77
757E: C5 78          BITB   #$78
7580: 79 75 83       ROL    $7583
7583: 03 59          COM    $59
7585: 01 01 FC       OIM    #$01;$FC
7588: 00 08          NEG    $08
758A: 59             ROLB
758B: 01 01 FC       OIM    #$01;$FC
758E: 00 09          NEG    $09
7590: 59             ROLB
7591: 01 01 FC       OIM    #$01;$FC
7594: 00 22          NEG    $22
7596: 59             ROLB
7597: 01 01 FC       OIM    #$01;$FC
759A: 00 23          NEG    $23
759C: 59             ROLB
759D: 01 01 FC       OIM    #$01;$FC
75A0: 00 03          NEG    $03
75A2: 5B             FCB    $5B
75A3: 01 01 FC       OIM    #$01;$FC
75A6: 00 08          NEG    $08
75A8: 5B             FCB    $5B
75A9: 01 01 FC       OIM    #$01;$FC
75AC: 00 09          NEG    $09
75AE: 5B             FCB    $5B
75AF: 01 01 FC       OIM    #$01;$FC
75B2: 00 22          NEG    $22
75B4: 5B             FCB    $5B
75B5: 01 01 FC       OIM    #$01;$FC
75B8: 00 23          NEG    $23
75BA: 5B             FCB    $5B
75BB: 01 01 FC       OIM    #$01;$FC
75BE: 00 FF          NEG    $FF
75C0: 01 00 01       OIM    #$00;$01
75C3: 01 FD 75       OIM    #$FD;$75
75C6: D1 6F          CMPB   $6F
75C8: E9 75          ADCB   -$B,S
75CA: D1 75          CMPB   $75
75CC: D9 75          ADCB   $75
75CE: D1 6F          CMPB   $6F
75D0: E9 00          ADCB   $0,X
75D2: 00 77          NEG    $77
75D4: A1 78          CMPA   -$8,S
75D6: 49             ROLA
75D7: 6F F1          CLR    [,S++]
75D9: 01 01 78       OIM    #$01;$78
75DC: 01 78 8D       OIM    #$78;$8D
75DF: 75 E1 FF 01    EIM    #$E1,$FF01
75E3: 00 01          NEG    $01
75E5: 01 FD 75       OIM    #$FD;$75
75E8: F3 6F E9       ADDD   $6FE9
75EB: 75 F3 75 FB    EIM    #$F3,$75FB
75EF: 75 F3 6F E9    EIM    #$F3,$6FE9
75F3: 00 00          NEG    $00
75F5: 77 E1 78       ASR    $E178
75F8: 49             ROLA
75F9: 6F F1          CLR    [,S++]
75FB: 00 00          NEG    $00
75FD: 78 15 78       ASL    $1578
7600: 49             ROLA
7601: 6F F1          CLR    [,S++]
7603: 76 0F 6F       ROR    $0F6F
7606: E9 76          ADCB   -$A,S
7608: 0F 76          CLR    $76
760A: 17 76 0F       LBSR   $EC1C
760D: 6F E9 00 00    CLR    $0000,S
7611: 77 E5 78       ASR    $E578
7614: 49             ROLA
7615: 6F F1          CLR    [,S++]
7617: 00 00          NEG    $00
7619: 78 19 78       ASL    $1978
761C: 49             ROLA
761D: 6F F1          CLR    [,S++]
761F: 76 2B 6F       ROR    $2B6F
7622: E9 76          ADCB   -$A,S
7624: 2B 76          BMI    $769C
7626: 33 76          LEAU   -$A,S
7628: 2B 6F          BMI    $7699
762A: E9 00          ADCB   $0,X
762C: 00 77          NEG    $77
762E: C5 78          BITB   #$78
7630: 49             ROLA
7631: 6F F1          CLR    [,S++]
7633: 00 00          NEG    $00
7635: 78 25 78       ASL    $2578
7638: 49             ROLA
7639: 6F F1          CLR    [,S++]
763B: 76 47 6F       ROR    $476F
763E: E9 76          ADCB   -$A,S
7640: 47             ASRA
7641: 76 4F 76       ROR    $4F76
7644: 47             ASRA
7645: 6F E9 00 00    CLR    $0000,S
7649: 77 D5 78       ASR    $D578
764C: 49             ROLA
764D: 6F F1          CLR    [,S++]
764F: 00 00          NEG    $00
7651: 78 1D 78       ASL    $1D78
7654: 49             ROLA
7655: 6F F1          CLR    [,S++]
7657: 76 63 6F       ROR    $636F
765A: E9 76          ADCB   -$A,S
765C: 63 76          COM    -$A,S
765E: 4F             CLRA
765F: 76 63 6F       ROR    $636F
7662: E9 00          ADCB   $0,X
7664: 00 77          NEG    $77
7666: D5 78          BITB   $78
7668: 49             ROLA
7669: 6F F1          CLR    [,S++]
766B: 76 77 6F       ROR    $776F
766E: E9 76          ADCB   -$A,S
7670: 77 76 4F       ASR    $764F
7673: 76 77 6F       ROR    $776F
7676: E9 00          ADCB   $0,X
7678: 00 77          NEG    $77
767A: D5 78          BITB   $78
767C: 49             ROLA
767D: 6F F1          CLR    [,S++]
767F: 76 8B 6F       ROR    $8B6F
7682: E9 76          ADCB   -$A,S
7684: 8B 76          ADDA   #$76
7686: 4F             CLRA
7687: 76 8B 6F       ROR    $8B6F
768A: E9 00          ADCB   $0,X
768C: 00 77          NEG    $77
768E: D5 78          BITB   $78
7690: 49             ROLA
7691: 6F F1          CLR    [,S++]
7693: 76 9F 6F       ROR    $9F6F
7696: E9 76          ADCB   -$A,S
7698: 9F 76          STX    $76
769A: 4F             CLRA
769B: 76 9F 6F       ROR    $9F6F
769E: E9 00          ADCB   $0,X
76A0: 00 77          NEG    $77
76A2: D5 78          BITB   $78
76A4: 49             ROLA
76A5: 6F F1          CLR    [,S++]
76A7: 76 B3 6F       ROR    $B36F
76AA: E9 76          ADCB   -$A,S
76AC: B3 76 4F       SUBD   $764F
76AF: 76 B3 6F       ROR    $B36F
76B2: E9 00          ADCB   $0,X
76B4: 00 77          NEG    $77
76B6: D5 78          BITB   $78
76B8: 49             ROLA
76B9: 6F F1          CLR    [,S++]
76BB: 76 C7 6F       ROR    $C76F
76BE: E9 76          ADCB   -$A,S
76C0: C7             FCB    $C7
76C1: 76 4F 76       ROR    $4F76
76C4: C7             FCB    $C7
76C5: 6F E9 00 00    CLR    $0000,S
76C9: 77 D5 78       ASR    $D578
76CC: 49             ROLA
76CD: 6F F1          CLR    [,S++]
76CF: 76 DB 6F       ROR    $DB6F
76D2: E9 76          ADCB   -$A,S
76D4: DB 76          ADDB   $76
76D6: 4F             CLRA
76D7: 76 DB 6F       ROR    $DB6F
76DA: E9 00          ADCB   $0,X
76DC: 00 77          NEG    $77
76DE: D5 78          BITB   $78
76E0: 49             ROLA
76E1: 6F F1          CLR    [,S++]
76E3: 76 EF 6F       ROR    $EF6F
76E6: E9 76          ADCB   -$A,S
76E8: EF 76          STU    -$A,S
76EA: 4F             CLRA
76EB: 76 EF 6F       ROR    $EF6F
76EE: E9 00          ADCB   $0,X
76F0: 00 77          NEG    $77
76F2: B9 78 49       ADCA   $7849
76F5: 6F F1          CLR    [,S++]
76F7: 77 3B 6F       ASR    $3B6F
76FA: E9 77          ADCB   -$9,S
76FC: 3B             RTI
76FD: 6F E9 77 3B    CLR    $773B,S
7701: 6F E9 00 00    CLR    $0000,S
7705: 77 95 78       ASR    $9578
7708: 49             ROLA
7709: 6F F1          CLR    [,S++]
770B: 6F E9 6F E9    CLR    $6FE9,S
770F: 6F E9 6F E9    CLR    $6FE9,S
7713: 6F E9 6F E9    CLR    $6FE9,S
7717: 6F E9 6F E9    CLR    $6FE9,S
771B: 6F E9 6F E9    CLR    $6FE9,S
771F: 6F E9 6F E9    CLR    $6FE9,S
7723: 6F E9 6F E9    CLR    $6FE9,S
7727: 6F E9 6F E9    CLR    $6FE9,S
772B: 6F E9 6F E9    CLR    $6FE9,S
772F: 77 3B 6F       ASR    $3B6F
7732: E9 77          ADCB   -$9,S
7734: 3B             RTI
7735: 6F E9 77 3B    CLR    $773B,S
7739: 6F E9 00 00    CLR    $0000,S
773D: 77 BD 78       ASR    $BD78
7740: 49             ROLA
7741: 6F F1          CLR    [,S++]
7743: 77 3B 6F       ASR    $3B6F
7746: E9 77          ADCB   -$9,S
7748: 3B             RTI
7749: 6F E9 77 3B    CLR    $773B,S
774D: 6F E9 77 3B    CLR    $773B,S
7751: 6F E9 77 3B    CLR    $773B,S
7755: 6F E9 77 3B    CLR    $773B,S
7759: 6F E9 77 3B    CLR    $773B,S
775D: 6F E9 77 3B    CLR    $773B,S
7761: 6F E9 77 3B    CLR    $773B,S
7765: 6F E9 6F E9    CLR    $6FE9,S
7769: 6F E9 77 73    CLR    $7773,S
776D: 6F E9 77 73    CLR    $7773,S
7771: 6F E9 01 04    CLR    $0104,S
7775: 77 BD 78       ASR    $BD78
7778: 49             ROLA
7779: 6F F1          CLR    [,S++]
777B: 6F E9 6F E9    CLR    $6FE9,S
777F: 77 87 6F       ASR    $876F
7782: E9 77          ADCB   -$9,S
7784: 87             FCB    $87
7785: 6F E9 01 04    CLR    $0104,S
7789: 77 BD 78       ASR    $BD78
778C: 7D 77 8F       TST    $778F
778F: FF 03 00       STU    $0300
7792: 03 01          COM    $01
7794: FD 00 00       STD    >$0000
7797: 00 00          NEG    $00
7799: 08 00          ASL    $00
779B: 20 0C          BRA    $77A9
779D: 00 10          NEG    $10
779F: 0C 38          INC    $38
77A1: 00 00          NEG    $00
77A3: 0C 38          INC    $38
77A5: 00 00          NEG    $00
77A7: 08 38          ASL    $38
77A9: 00 10          NEG    $10
77AB: 0C 28          INC    $28
77AD: 00 10          NEG    $10
77AF: 10 28 00 00    LBVC   $77B3
77B3: 08 38          ASL    $38
77B5: 00 20          NEG    $20
77B7: 10 10          FCB    $10,$10
77B9: 00 10          NEG    $10
77BB: 10 20          FCB    $10,$20
77BD: 00             FCB    $00
77BE: 00             FCB    $00
77BF: 08             FCB    $08
77C0: 38             PSHSW
77C1: FC 00 0C       LDD    >$000C
77C4: 38             FCB    $38
77C5: FC 00 08       LDD    >$0008
77C8: 38             FCB    $38
77C9: F8 00 28       EORB   >$0028
77CC: 38             FCB    $38
77CD: F8 10 10       EORB   $1010
77D0: 18             FCB    $18
77D1: F8 00 08       EORB   >$0008
77D4: 38             FCB    $38
77D5: F8 00 10       EORB   >$0010
77D8: 38             FCB    $38
77D9: FA 08 0A       ORB    $080A
77DC: 2A F8          BPL    $77D6
77DE: 18             FCB    $18
77DF: 0C 20          INC    $20
77E1: F8 00 10       EORB   >$0010
77E4: 20 F8          BRA    $77DE
77E6: 00 10          NEG    $10
77E8: 30 F8 08       LEAX   [$08,S]
77EB: 10 18          FCB    $10,$18
77ED: F0             FCB    $F0
77EE: 10             FCB    $10
77EF: 10 18          FCB    $10,$18
77F1: F0             FCB    $F0
77F2: 00             FCB    $00
77F3: 10             FCB    $10
77F4: 38             FCB    $38
77F5: F0 18 10       SUBB   $1810
77F8: 20 04          BRA    $77FE
77FA: 10 10          FCB    $10,$10
77FC: 30 00          LEAX   $0,X
77FE: 00 10          NEG    $10
7800: 7E 78 0C       JMP    $780C
7803: 7E 7B BE       JMP    $7BBE
7806: 7E 7B BE       JMP    $7BBE
7809: 7E 7D 9D       JMP    $7D9D
780C: B6 0B 03       LDA    $0B03
780F: 85 80          BITA   #$80
7811: 2A 1C          BPL    $782F
7813: B6 0B 11       LDA    $0B11
7816: 85 01          BITA   #$01
7818: 26 15          BNE    $782F
781A: 85 80          BITA   #$80
781C: 26 0E          BNE    $782C
781E: 7F 0B 12       CLR    $0B12
7821: 7F 0B 13       CLR    $0B13
7824: B6 0B 11       LDA    $0B11
7827: 8A 80          ORA    #$80
7829: B7 0B 11       STA    $0B11
782C: BD 78 30       JSR    $7830
782F: 39             RTS
7830: 7C 0B 12       INC    $0B12
7833: B6 0B 12       LDA    $0B12
7836: 81 20          CMPA   #$20
7838: 26 4C          BNE    $7886
783A: 7F 0B 12       CLR    $0B12
783D: 7C 0B 13       INC    $0B13
7840: B6 0B 13       LDA    $0B13
7843: 81 06          CMPA   #$06
7845: 25 12          BCS    $7859
7847: B6 0B 11       LDA    $0B11
784A: 8A 01          ORA    #$01
784C: B7 0B 11       STA    $0B11
784F: B6 0B 03       LDA    $0B03
7852: 8A 40          ORA    #$40
7854: B7 0B 03       STA    $0B03
7857: 20 2D          BRA    $7886
7859: 8E 78 92       LDX    #$7892
785C: F6 0B 13       LDB    $0B13
785F: 58             ASLB
7860: AE 85          LDX    B,X
7862: 10 8E 78 87    LDY    #$7887
7866: A6 A0          LDA    ,Y+
7868: 97 00          STA    $00
786A: EC A1          LDD    ,Y++
786C: 34 20          PSHS   Y
786E: 1F 02          TFR    D,Y
7870: 86 10          LDA    #$10
7872: 97 01          STA    $01
7874: EC 81          LDD    ,X++
7876: E7 A9 02 00    STB    $0200,Y
787A: A7 A0          STA    ,Y+
787C: 0A 01          DEC    $01
787E: 26 F4          BNE    $7874
7880: 35 20          PULS   Y
7882: 0A 00          DEC    $00
7884: 26 E4          BNE    $786A
7886: 39             RTS
7887: 05 11 00       EIM    #$11;$00
788A: 11 20          FCB    $11,$20
788C: 11             FCB    $11
788D: 50             NEGB
788E: 11 60          FCB    $11,$60
7890: 11             FCB    $11
7891: 70 78 9E       NEG    $789E
7894: 78 9E 79       ASL    $9E79
7897: 3E             FCB    $3E
7898: 79 DE 7A       ROL    $DE7A
789B: 7E 7B 1E       JMP    $7B1E
789E: 00 00          NEG    $00
78A0: 00 00          NEG    $00
78A2: AC 06          CMPX   $6,X
78A4: 8B 04          ADDA   #$04
78A6: 6A 03          DEC    $3,X
78A8: 58             ASLB
78A9: 02 47 02       AIM    #$47;$02
78AC: 36 02          PSHU   A
78AE: 25 01          BCS    $78B1
78B0: 14             SEXW
78B1: 00 13          NEG    $13
78B3: 00 02          NEG    $02
78B5: 00 01          NEG    $01
78B7: 00 BB          NEG    $BB
78B9: 0C 55          INC    $55
78BB: 06 88          ROR    $88
78BD: 09 00          ROL    $00
78BF: 00 00          NEG    $00
78C1: 00 11          NEG    $11
78C3: 00 22          NEG    $22
78C5: 01 33 02       OIM    #$33;$02
78C8: 44             LSRA
78C9: 03 55          COM    $55
78CB: 04 66          LSR    $66
78CD: 05 77 06       EIM    #$77;$06
78D0: 88 07          EORA   #$07
78D2: BB 0A 99       ADDA   $0A99
78D5: 08 BB          ASL    $BB
78D7: 0D DB          TST    $DB
78D9: 0D 09          TST    $09
78DB: 02 4D 06       AIM    #$4D;$06
78DE: 00 00          NEG    $00
78E0: 06 00          ROR    $00
78E2: 07 00          ASR    $00
78E4: 08 00          ASL    $00
78E6: 09 00          ROL    $00
78E8: 0A 00          DEC    $00
78EA: 0B 00 8B       TIM    #$00;$8B
78ED: 04 6A          LSR    $6A
78EF: 03 58          COM    $58
78F1: 02 47 02       AIM    #$47;$02
78F4: 36 02          PSHU   A
78F6: 25 01          BCS    $78F9
78F8: 14             SEXW
78F9: 00 13          NEG    $13
78FB: 00 01          NEG    $01
78FD: 00 00          NEG    $00
78FF: 00 00          NEG    $00
7901: 00 DD          NEG    $DD
7903: 0B DD 01       TIM    #$DD;$01
7906: 9C 00          CMPX   $00
7908: 6B 02 79       TIM    #$02;-$7,S
790B: 03 69          COM    $69
790D: 03 57          COM    $57
790F: 03 46          COM    $46
7911: 02 35 01       AIM    #$35;$01
7914: 24 01          BCC    $7917
7916: 13             SYNC
7917: 00 01          NEG    $01
7919: 00 DD          NEG    $DD
791B: 07 0D          ASR    $0D
791D: 00 00          NEG    $00
791F: 00 00          NEG    $00
7921: 00 DD          NEG    $DD
7923: 0B DD 01       TIM    #$DD;$01
7926: 9C 00          CMPX   $00
7928: 6B 02 79       TIM    #$02;-$7,S
792B: 03 D6          COM    $D6
792D: 0C 57          INC    $57
792F: 03 46          COM    $46
7931: 02 35 01       AIM    #$35;$01
7934: 24 01          BCC    $7937
7936: 13             SYNC
7937: 00 01          NEG    $01
7939: 00 DD          NEG    $DD
793B: 07 0D          ASR    $0D
793D: 00 00          NEG    $00
793F: 00 00          NEG    $00
7941: 00 8A          NEG    $8A
7943: 03 69          COM    $69
7945: 02 48 01       AIM    #$48;$01
7948: 36 00          PSHU   
794A: 25 00          BCS    $794C
794C: 14             SEXW
794D: 00 03          NEG    $03
794F: 00 02          NEG    $02
7951: 00 01          NEG    $01
7953: 00 00          NEG    $00
7955: 00 00          NEG    $00
7957: 00 99          NEG    $99
7959: 0A 33          DEC    $33
795B: 04 66          LSR    $66
795D: 07 00          ASR    $00
795F: 00 00          NEG    $00
7961: 00 00          NEG    $00
7963: 00 00          NEG    $00
7965: 00 11          NEG    $11
7967: 00 22          NEG    $22
7969: 01 33 02       OIM    #$33;$02
796C: 44             LSRA
796D: 03 55          COM    $55
796F: 04 66          LSR    $66
7971: 05 99 08       EIM    #$99;$08
7974: 77 06 99       ASR    $0699
7977: 0B B9 0B       TIM    #$B9;$0B
797A: 07 00          ASR    $00
797C: 2B 04          BMI    $7982
797E: 00 00          NEG    $00
7980: 04 00          LSR    $00
7982: 05 00 06       EIM    #$00;$06
7985: 00 07          NEG    $07
7987: 00 08          NEG    $08
7989: 00 09          NEG    $09
798B: 00 69          NEG    $69
798D: 02 48 01       AIM    #$48;$01
7990: 36 00          PSHU   
7992: 25 00          BCS    $7994
7994: 14             SEXW
7995: 00 03          NEG    $03
7997: 00 02          NEG    $02
7999: 00 01          NEG    $01
799B: 00 00          NEG    $00
799D: 00 00          NEG    $00
799F: 00 00          NEG    $00
79A1: 00 BB          NEG    $BB
79A3: 09 BB          ROL    $BB
79A5: 00 7A          NEG    $7A
79A7: 00 49          NEG    $49
79A9: 00 57          NEG    $57
79AB: 01 47 01       OIM    #$47;$01
79AE: 35 01          PULS   CC
79B0: 24 00          BCC    $79B2
79B2: 13             SYNC
79B3: 00 02          NEG    $02
79B5: 00 01          NEG    $01
79B7: 00 00          NEG    $00
79B9: 00 BB          NEG    $BB
79BB: 05 0B 00       EIM    #$0B;$00
79BE: 00 00          NEG    $00
79C0: 00 00          NEG    $00
79C2: BB 09 BB       ADDA   $09BB
79C5: 00 7A          NEG    $7A
79C7: 00 49          NEG    $49
79C9: 00 57          NEG    $57
79CB: 01 B4 0A       OIM    #$B4;$0A
79CE: 35 01          PULS   CC
79D0: 24 00          BCC    $79D2
79D2: 13             SYNC
79D3: 00 02          NEG    $02
79D5: 00 01          NEG    $01
79D7: 00 00          NEG    $00
79D9: 00 BB          NEG    $BB
79DB: 05 0B 00       EIM    #$0B;$00
79DE: 00 00          NEG    $00
79E0: 00 00          NEG    $00
79E2: 68 01          ASL    $1,X
79E4: 47             ASRA
79E5: 00 26          NEG    $26
79E7: 00 14          NEG    $14
79E9: 00 03          NEG    $03
79EB: 00 02          NEG    $02
79ED: 00 01          NEG    $01
79EF: 00 00          NEG    $00
79F1: 00 00          NEG    $00
79F3: 00 00          NEG    $00
79F5: 00 00          NEG    $00
79F7: 00 77          NEG    $77
79F9: 08 11          ASL    $11
79FB: 02 44 05       AIM    #$44;$05
79FE: 00 00          NEG    $00
7A00: 00 00          NEG    $00
7A02: 00 00          NEG    $00
7A04: 00 00          NEG    $00
7A06: 00 00          NEG    $00
7A08: 00 00          NEG    $00
7A0A: 11 00          FCB    $11,$00
7A0C: 22             FCB    $22
7A0D: 01             FCB    $01
7A0E: 33 02 44       BIOR   CC,0,2,$44
7A11: 03 77          COM    $77
7A13: 06 55          ROR    $55
7A15: 04 77          LSR    $77
7A17: 09 97          ROL    $97
7A19: 09 05          ROL    $05
7A1B: 00 09          NEG    $09
7A1D: 02 00 00       AIM    #$00;$00
7A20: 02 00 03       AIM    #$00;$03
7A23: 00 04          NEG    $04
7A25: 00 05          NEG    $05
7A27: 00 06          NEG    $06
7A29: 00 07          NEG    $07
7A2B: 00 47          NEG    $47
7A2D: 00 26          NEG    $26
7A2F: 00 14          NEG    $14
7A31: 00 03          NEG    $03
7A33: 00 02          NEG    $02
7A35: 00 01          NEG    $01
7A37: 00 00          NEG    $00
7A39: 00 00          NEG    $00
7A3B: 00 00          NEG    $00
7A3D: 00 00          NEG    $00
7A3F: 00 00          NEG    $00
7A41: 00 99          NEG    $99
7A43: 07 99          ASR    $99
7A45: 00 58          NEG    $58
7A47: 00 27          NEG    $27
7A49: 00 35          NEG    $35
7A4B: 00 25          NEG    $25
7A4D: 00 13          NEG    $13
7A4F: 00 02          NEG    $02
7A51: 00 01          NEG    $01
7A53: 00 00          NEG    $00
7A55: 00 00          NEG    $00
7A57: 00 00          NEG    $00
7A59: 00 99          NEG    $99
7A5B: 03 09          COM    $09
7A5D: 00 00          NEG    $00
7A5F: 00 00          NEG    $00
7A61: 00 99          NEG    $99
7A63: 07 99          ASR    $99
7A65: 00 58          NEG    $58
7A67: 00 27          NEG    $27
7A69: 00 35          NEG    $35
7A6B: 00 92          NEG    $92
7A6D: 08 13          ASL    $13
7A6F: 00 02          NEG    $02
7A71: 00 01          NEG    $01
7A73: 00 00          NEG    $00
7A75: 00 00          NEG    $00
7A77: 00 00          NEG    $00
7A79: 00 99          NEG    $99
7A7B: 03 09          COM    $09
7A7D: 00 00          NEG    $00
7A7F: 00 00          NEG    $00
7A81: 00 46          NEG    $46
7A83: 00 25          NEG    $25
7A85: 00 04          NEG    $04
7A87: 00 02          NEG    $02
7A89: 00 01          NEG    $01
7A8B: 00 00          NEG    $00
7A8D: 00 00          NEG    $00
7A8F: 00 00          NEG    $00
7A91: 00 00          NEG    $00
7A93: 00 00          NEG    $00
7A95: 00 00          NEG    $00
7A97: 00 55          NEG    $55
7A99: 06 00          ROR    $00
7A9B: 00 22          NEG    $22
7A9D: 03 00          COM    $00
7A9F: 00 00          NEG    $00
7AA1: 00 00          NEG    $00
7AA3: 00 00          NEG    $00
7AA5: 00 00          NEG    $00
7AA7: 00 00          NEG    $00
7AA9: 00 00          NEG    $00
7AAB: 00 00          NEG    $00
7AAD: 00 11          NEG    $11
7AAF: 00 22          NEG    $22
7AB1: 01 55 04       OIM    #$55;$04
7AB4: 33 02          LEAU   $2,X
7AB6: 55             FCB    $55
7AB7: 07 75          ASR    $75
7AB9: 07 03          ASR    $03
7ABB: 00 07          NEG    $07
7ABD: 00 00          NEG    $00
7ABF: 00 00          NEG    $00
7AC1: 00 01          NEG    $01
7AC3: 00 02          NEG    $02
7AC5: 00 03          NEG    $03
7AC7: 00 04          NEG    $04
7AC9: 00 05          NEG    $05
7ACB: 00 25          NEG    $25
7ACD: 00 04          NEG    $04
7ACF: 00 02          NEG    $02
7AD1: 00 01          NEG    $01
7AD3: 00 00          NEG    $00
7AD5: 00 00          NEG    $00
7AD7: 00 00          NEG    $00
7AD9: 00 00          NEG    $00
7ADB: 00 00          NEG    $00
7ADD: 00 00          NEG    $00
7ADF: 00 00          NEG    $00
7AE1: 00 77          NEG    $77
7AE3: 05 77 00       EIM    #$77;$00
7AE6: 36 00          PSHU   
7AE8: 05 00 13       EIM    #$00;$13
7AEB: 00 03          NEG    $03
7AED: 00 01          NEG    $01
7AEF: 00 00          NEG    $00
7AF1: 00 00          NEG    $00
7AF3: 00 00          NEG    $00
7AF5: 00 00          NEG    $00
7AF7: 00 00          NEG    $00
7AF9: 00 77          NEG    $77
7AFB: 01 07 00       OIM    #$07;$00
7AFE: 00 00          NEG    $00
7B00: 00 00          NEG    $00
7B02: 77 05 77       ASR    $0577
7B05: 00 36          NEG    $36
7B07: 00 05          NEG    $05
7B09: 00 13          NEG    $13
7B0B: 00 70          NEG    $70
7B0D: 06 01          ROR    $01
7B0F: 00 00          NEG    $00
7B11: 00 00          NEG    $00
7B13: 00 00          NEG    $00
7B15: 00 00          NEG    $00
7B17: 00 00          NEG    $00
7B19: 00 77          NEG    $77
7B1B: 01 07 00       OIM    #$07;$00
7B1E: 00 00          NEG    $00
7B20: 00 00          NEG    $00
7B22: 24 00          BCC    $7B24
7B24: 03 00          COM    $00
7B26: 02 00 00       AIM    #$00;$00
7B29: 00 00          NEG    $00
7B2B: 00 00          NEG    $00
7B2D: 00 00          NEG    $00
7B2F: 00 00          NEG    $00
7B31: 00 00          NEG    $00
7B33: 00 00          NEG    $00
7B35: 00 00          NEG    $00
7B37: 00 33          NEG    $33
7B39: 04 00          LSR    $00
7B3B: 00 00          NEG    $00
7B3D: 01 00 00       OIM    #$00;$00
7B40: 00 00          NEG    $00
7B42: 00 00          NEG    $00
7B44: 00 00          NEG    $00
7B46: 00 00          NEG    $00
7B48: 00 00          NEG    $00
7B4A: 00 00          NEG    $00
7B4C: 00 00          NEG    $00
7B4E: 00 00          NEG    $00
7B50: 00 00          NEG    $00
7B52: 33 02          LEAU   $2,X
7B54: 11 00          FCB    $11,$00
7B56: 33 05 53       BIOR   CC,0,5,$53
7B59: 05 01 00       EIM    #$01;$00
7B5C: 05 00 00       EIM    #$00;$00
7B5F: 00 00          NEG    $00
7B61: 00 00          NEG    $00
7B63: 00 00          NEG    $00
7B65: 00 01          NEG    $01
7B67: 00 02          NEG    $02
7B69: 00 03          NEG    $03
7B6B: 00 03          NEG    $03
7B6D: 00 02          NEG    $02
7B6F: 00 00          NEG    $00
7B71: 00 00          NEG    $00
7B73: 00 00          NEG    $00
7B75: 00 00          NEG    $00
7B77: 00 00          NEG    $00
7B79: 00 00          NEG    $00
7B7B: 00 00          NEG    $00
7B7D: 00 00          NEG    $00
7B7F: 00 00          NEG    $00
7B81: 00 55          NEG    $55
7B83: 03 55          COM    $55
7B85: 00 14          NEG    $14
7B87: 00 03          NEG    $03
7B89: 00 01          NEG    $01
7B8B: 00 50          NEG    $50
7B8D: 04 00          LSR    $00
7B8F: 00 00          NEG    $00
7B91: 00 00          NEG    $00
7B93: 00 00          NEG    $00
7B95: 00 00          NEG    $00
7B97: 00 00          NEG    $00
7B99: 00 55          NEG    $55
7B9B: 00 05          NEG    $05
7B9D: 00 00          NEG    $00
7B9F: 00 00          NEG    $00
7BA1: 00 55          NEG    $55
7BA3: 03 55          COM    $55
7BA5: 00 14          NEG    $14
7BA7: 00 03          NEG    $03
7BA9: 00 01          NEG    $01
7BAB: 00 50          NEG    $50
7BAD: 04 00          LSR    $00
7BAF: 00 00          NEG    $00
7BB1: 00 00          NEG    $00
7BB3: 00 00          NEG    $00
7BB5: 00 00          NEG    $00
7BB7: 00 00          NEG    $00
7BB9: 00 55          NEG    $55
7BBB: 00 05          NEG    $05
7BBD: 00 8E          NEG    $8E
7BBF: 7C 05 F6       INC    $05F6
7BC2: 0A F8          DEC    $F8
7BC4: 58             ASLB
7BC5: AE 85          LDX    B,X
7BC7: 10 8E 10 10    LDY    #$1010
7BCB: EC 81          LDD    ,X++
7BCD: E7 A9 02 00    STB    $0200,Y
7BD1: 58             ASLB
7BD2: 49             ROLA
7BD3: 58             ASLB
7BD4: 49             ROLA
7BD5: 58             ASLB
7BD6: 49             ROLA
7BD7: 58             ASLB
7BD8: 49             ROLA
7BD9: A7 A0          STA    ,Y+
7BDB: 10 8C 10 20    CMPY   #$1020
7BDF: 26 EA          BNE    $7BCB
7BE1: 8E 7C 11       LDX    #$7C11
7BE4: F6 0A F8       LDB    $0AF8
7BE7: 58             ASLB
7BE8: AE 85          LDX    B,X
7BEA: 10 8E 10 70    LDY    #$1070
7BEE: EC 81          LDD    ,X++
7BF0: E7 A9 02 00    STB    $0200,Y
7BF4: 58             ASLB
7BF5: 49             ROLA
7BF6: 58             ASLB
7BF7: 49             ROLA
7BF8: 58             ASLB
7BF9: 49             ROLA
7BFA: 58             ASLB
7BFB: 49             ROLA
7BFC: A7 A0          STA    ,Y+
7BFE: 10 8C 10 80    CMPY   #$1080
7C02: 26 EA          BNE    $7BEE
7C04: 39             RTS
7C05: 7C 1D 7C       INC    $1D7C
7C08: 3D             MUL
7C09: 7C 5D 7C       INC    $5D7C
7C0C: 7D 7C 9D       TST    $7C9D
7C0F: 7C BD 7C       INC    $BD7C
7C12: 1D             SEX
7C13: 7C 3D 7C       INC    $3D7C
7C16: 5D             TSTB
7C17: 7C 7D 7C       INC    $7D7C
7C1A: 9D 7C          JSR    $7C
7C1C: BD 03 41       JSR    $0341
7C1F: 04 42          LSR    $42
7C21: 04 43          LSR    $43
7C23: 00 00          NEG    $00
7C25: 00 00          NEG    $00
7C27: 00 00          NEG    $00
7C29: 00 00          NEG    $00
7C2B: 00 00          NEG    $00
7C2D: 00 00          NEG    $00
7C2F: 00 00          NEG    $00
7C31: 00 10          NEG    $10
7C33: 00 10          NEG    $10
7C35: 01 10 01       OIM    #$10;$01
7C38: 30 02          LEAX   $2,X
7C3A: 40             NEGA
7C3B: 00 00          NEG    $00
7C3D: 00 00          NEG    $00
7C3F: 05 53 05       EIM    #$53;$05
7C42: 53             COMB
7C43: 05 53 00       EIM    #$53;$00
7C46: 00 00          NEG    $00
7C48: 00 00          NEG    $00
7C4A: 00 00          NEG    $00
7C4C: 00 01          NEG    $01
7C4E: 00 00          NEG    $00
7C50: 10 00          FCB    $10,$00
7C52: 20             FCB    $20
7C53: 00             FCB    $00
7C54: 20             FCB    $20
7C55: 01             FCB    $01
7C56: 20             FCB    $20
7C57: 02             FCB    $02
7C58: 40             NEGD
7C59: 03 51          COM    $51
7C5B: 00 00          NEG    $00
7C5D: 00 00          NEG    $00
7C5F: 07 75          ASR    $75
7C61: 07 75          ASR    $75
7C63: 07 75          ASR    $75
7C65: 00 00          NEG    $00
7C67: 00 00          NEG    $00
7C69: 00 00          NEG    $00
7C6B: 00 10          NEG    $10
7C6D: 00 10          NEG    $10
7C6F: 00 20          NEG    $20
7C71: 01 30 01       OIM    #$30;$01
7C74: 30 02          LEAX   $2,X
7C76: 30 03          LEAX   $3,X
7C78: 51             FCB    $51
7C79: 04 62          LSR    $62
7C7B: 00 00          NEG    $00
7C7D: 00 00          NEG    $00
7C7F: 09 98          ROL    $98
7C81: 09 98          ROL    $98
7C83: 09 98          ROL    $98
7C85: 00 00          NEG    $00
7C87: 00 10          NEG    $10
7C89: 00 10          NEG    $10
7C8B: 01 20 01       OIM    #$20;$01
7C8E: 20 01          BRA    $7C91
7C90: 30 02          LEAX   $2,X
7C92: 41             FCB    $41
7C93: 02 41 03       AIM    #$41;$03
7C96: 51             FCB    $51
7C97: 04 62          LSR    $62
7C99: 05 72 00       EIM    #$72;$00
7C9C: 00 00          NEG    $00
7C9E: 00 0B          NEG    $0B
7CA0: B7 0B B9       STA    $0BB9
7CA3: 0C CA          INC    $CA
7CA5: 00 10          NEG    $10
7CA7: 01 20 01       OIM    #$20;$01
7CAA: 20 01          BRA    $7CAD
7CAC: 30 02          LEAX   $2,X
7CAE: 41             FCB    $41
7CAF: 02 51 03       AIM    #$51;$03
7CB2: 62 03 62       AIM    #$03;$2,S
7CB5: 05 83 07       EIM    #$83;$07
7CB8: 94 09          ANDA   $09
7CBA: B4 00 00       ANDA   >$0000
7CBD: 00 00          NEG    $00
7CBF: 0E FA          JMP    $FA
7CC1: 0F FD          CLR    $FD
7CC3: 0F FF          CLR    $FF
7CC5: 01 30 02       OIM    #$30;$02
7CC8: 41             FCB    $41
7CC9: 03 52          COM    $52
7CCB: 03 62          COM    $62
7CCD: 04 73          LSR    $73
7CCF: 05 84 06       EIM    #$84;$06
7CD2: 94 07          ANDA   $07
7CD4: A4 08          ANDA   $8,X
7CD6: C5 0A          BITB   #$0A
7CD8: D6 0C          LDB    $0C
7CDA: E8 00          EORB   $0,X
7CDC: 00 00          NEG    $00
7CDE: 00 02          NEG    $02
7CE0: 12             NOP
7CE1: 02 22 02       AIM    #$22;$02
7CE4: 22 00          BHI    $7CE6
7CE6: 00 00          NEG    $00
7CE8: 00 00          NEG    $00
7CEA: 00 00          NEG    $00
7CEC: 00 00          NEG    $00
7CEE: 00 01          NEG    $01
7CF0: 02 01 02       AIM    #$01;$02
7CF3: 02 13 02       AIM    #$13;$02
7CF6: 13             SYNC
7CF7: 00 00          NEG    $00
7CF9: 01 12 00       OIM    #$12;$00
7CFC: 00 00          NEG    $00
7CFE: 00 04          NEG    $04
7D00: 35 04          PULS   B
7D02: 45             FCB    $45
7D03: 04 45          LSR    $45
7D05: 00 00          NEG    $00
7D07: 00 00          NEG    $00
7D09: 00 00          NEG    $00
7D0B: 00 00          NEG    $00
7D0D: 01 02 02       OIM    #$02;$02
7D10: 13             SYNC
7D11: 02 13 03       AIM    #$13;$03
7D14: 24 03          BCC    $7D19
7D16: 24 01          BCC    $7D19
7D18: 12             NOP
7D19: 03 24          COM    $24
7D1B: 00 00          NEG    $00
7D1D: 00 00          NEG    $00
7D1F: 05 46 06       EIM    #$46;$06
7D22: 67 06          ASR    $6,X
7D24: 67 01          ASR    $1,X
7D26: 02 01 02       AIM    #$01;$02
7D29: 01 02 01       OIM    #$02;$01
7D2C: 02 02 13       AIM    #$02;$13
7D2F: 03 24          COM    $24
7D31: 03 24          COM    $24
7D33: 04 35          LSR    $35
7D35: 04 35          LSR    $35
7D37: 04 35          LSR    $35
7D39: 04 35          LSR    $35
7D3B: 00 00          NEG    $00
7D3D: 00 00          NEG    $00
7D3F: 07 68          ASR    $68
7D41: 09 9A          ROL    $9A
7D43: 09 9A          ROL    $9A
7D45: 02 13 02       AIM    #$13;$02
7D48: 13             SYNC
7D49: 02 13 02       AIM    #$13;$02
7D4C: 13             SYNC
7D4D: 03 24          COM    $24
7D4F: 04 35          LSR    $35
7D51: 04 35          LSR    $35
7D53: 05 46 05       EIM    #$46;$05
7D56: 46             RORA
7D57: 05 46 06       EIM    #$46;$06
7D5A: 57             ASRB
7D5B: 00 00          NEG    $00
7D5D: 00 00          NEG    $00
7D5F: 09 8A          ROL    $8A
7D61: 0C CD          INC    $CD
7D63: 0C CD          INC    $CD
7D65: 03 24          COM    $24
7D67: 03 24          COM    $24
7D69: 03 24          COM    $24
7D6B: 03 24          COM    $24
7D6D: 04 35          LSR    $35
7D6F: 05 46 05       EIM    #$46;$05
7D72: 46             RORA
7D73: 06 57          ROR    $57
7D75: 07 68          ASR    $68
7D77: 07 68          ASR    $68
7D79: 08 79          ASL    $79
7D7B: 00 00          NEG    $00
7D7D: 00 00          NEG    $00
7D7F: 0C BD          INC    $BD
7D81: 0F EF          CLR    $EF
7D83: 0F FF          CLR    $FF
7D85: 03 24          COM    $24
7D87: 09 14          ROL    $14
7D89: 03 24          COM    $24
7D8B: 04 35          LSR    $35
7D8D: 05 46 06       EIM    #$46;$06
7D90: 57             ASRB
7D91: 07 68          ASR    $68
7D93: 08 79          ASL    $79
7D95: 09 8A          ROL    $8A
7D97: 0A 9B          DEC    $9B
7D99: 0B AC 0C       TIM    #$AC;$0C
7D9C: BD BD 7D       JSR    $BD7D
7D9F: AF B6          STX    [A,Y]
7DA1: 0A BC          DEC    $BC
7DA3: 2A 09          BPL    $7DAE
7DA5: BD 7D E3       JSR    $7DE3
7DA8: BD 7E 14       JSR    $7E14
7DAB: BD 7E 3B       JSR    $7E3B
7DAE: 39             RTS
7DAF: DC 3C          LDD    $3C
7DB1: 10 83 15 00    CMPD   #$1500
7DB5: 25 2B          BCS    $7DE2
7DB7: B6 0A BC       LDA    $0ABC
7DBA: 2B 26          BMI    $7DE2
7DBC: 8E 0A BD       LDX    #$0ABD
7DBF: 10 8E 7E A5    LDY    #$7EA5
7DC3: 86 80          LDA    #$80
7DC5: A7 84          STA    ,X
7DC7: EC A1          LDD    ,Y++
7DC9: ED 01          STD    $1,X
7DCB: EC A1          LDD    ,Y++
7DCD: ED 03          STD    $3,X
7DCF: 86 20          LDA    #$20
7DD1: A7 07          STA    $7,X
7DD3: 30 08          LEAX   $8,X
7DD5: 8C 0A CD       CMPX   #$0ACD
7DD8: 26 E9          BNE    $7DC3
7DDA: B6 0A BC       LDA    $0ABC
7DDD: 8A 80          ORA    #$80
7DDF: B7 0A BC       STA    $0ABC
7DE2: 39             RTS
7DE3: 8E 0A BD       LDX    #$0ABD
7DE6: A6 84          LDA    ,X
7DE8: 84 9F          ANDA   #$9F
7DEA: A7 84          STA    ,X
7DEC: EC 01          LDD    $1,X
7DEE: 93 3C          SUBD   $3C
7DF0: 10 83 01 00    CMPD   #$0100
7DF4: 22 06          BHI    $7DFC
7DF6: A6 84          LDA    ,X
7DF8: 8A 40          ORA    #$40
7DFA: A7 84          STA    ,X
7DFC: 4F             CLRA
7DFD: E6 07          LDB    $7,X
7DFF: E3 01          ADDD   $1,X
7E01: 10 93 3C       CMPD   $3C
7E04: 25 06          BCS    $7E0C
7E06: A6 84          LDA    ,X
7E08: 8A 20          ORA    #$20
7E0A: A7 84          STA    ,X
7E0C: 30 08          LEAX   $8,X
7E0E: 8C 0A CD       CMPX   #$0ACD
7E11: 26 D3          BNE    $7DE6
7E13: 39             RTS
7E14: 8E 0A BD       LDX    #$0ABD
7E17: A6 84          LDA    ,X
7E19: 88 60          EORA   #$60
7E1B: 84 60          ANDA   #$60
7E1D: 26 14          BNE    $7E33
7E1F: 6C 05          INC    $5,X
7E21: A6 05          LDA    $5,X
7E23: 81 05          CMPA   #$05
7E25: 26 0C          BNE    $7E33
7E27: 6F 05          CLR    $5,X
7E29: 6C 06          INC    $6,X
7E2B: A6 06          LDA    $6,X
7E2D: 81 04          CMPA   #$04
7E2F: 26 02          BNE    $7E33
7E31: 6F 06          CLR    $6,X
7E33: 30 08          LEAX   $8,X
7E35: 8C 0A CD       CMPX   #$0ACD
7E38: 26 DD          BNE    $7E17
7E3A: 39             RTS
7E3B: 32 78          LEAS   -$8,S
7E3D: 96 51          LDA    $51
7E3F: 84 01          ANDA   #$01
7E41: 26 5F          BNE    $7EA2
7E43: 8E 0A BD       LDX    #$0ABD
7E46: A6 84          LDA    ,X
7E48: 85 40          BITA   #$40
7E4A: 27 4F          BEQ    $7E9B
7E4C: 0F 00          CLR    $00
7E4E: 10 8E 7E AD    LDY    #$7EAD
7E52: A6 06          LDA    $6,X
7E54: 48             ASLA
7E55: 10 AE A6       LDY    A,Y
7E58: 10 AF 66       STY    $6,S
7E5B: 10 8E 7E D9    LDY    #$7ED9
7E5F: D6 00          LDB    $00
7E61: 58             ASLB
7E62: EC A5          LDD    B,Y
7E64: A7 61          STA    $1,S
7E66: E7 63          STB    $3,S
7E68: 6F E4          CLR    ,S
7E6A: 6F 62          CLR    $2,S
7E6C: EC 01          LDD    $1,X
7E6E: E3 E4          ADDD   ,S
7E70: ED E4          STD    ,S
7E72: EC 03          LDD    $3,X
7E74: E3 62          ADDD   $2,S
7E76: ED 62          STD    $2,S
7E78: 9F 01          STX    $01
7E7A: AE E4          LDX    ,S
7E7C: 10 AE 62       LDY    $2,S
7E7F: BD FE 30       JSR    $FE30
7E82: ED 64          STD    $4,S
7E84: 9E 01          LDX    $01
7E86: 10 AE 66       LDY    $6,S
7E89: EC A1          LDD    ,Y++
7E8B: 10 AF 66       STY    $6,S
7E8E: 10 AE 64       LDY    $4,S
7E91: ED A4          STD    ,Y
7E93: 0C 00          INC    $00
7E95: D6 00          LDB    $00
7E97: C1 06          CMPB   #$06
7E99: 26 C0          BNE    $7E5B
7E9B: 30 08          LEAX   $8,X
7E9D: 8C 0A CD       CMPX   #$0ACD
7EA0: 26 A4          BNE    $7E46
7EA2: 32 68          LEAS   $8,S
7EA4: 39             RTS
7EA5: 16 00 01       LBRA   $7EA9
7EA8: B0 16 F0       SUBA   $16F0
7EAB: 01 B0 7E       OIM    #$B0;$7E
7EAE: B5 7E C1       BITA   $7EC1
7EB1: 7E CD 7E       JMP    $CD7E
7EB4: C1 14          CMPB   #$14
7EB6: 47             ASRA
7EB7: 14             SEXW
7EB8: 48             ASLA
7EB9: 14             SEXW
7EBA: 4D             TSTA
7EBB: 14             SEXW
7EBC: 4E             FCB    $4E
7EBD: 14             SEXW
7EBE: 53             COMB
7EBF: 14             SEXW
7EC0: 54             LSRB
7EC1: 14             SEXW
7EC2: 49             ROLA
7EC3: 14             SEXW
7EC4: 4A             DECA
7EC5: 14             SEXW
7EC6: 4F             CLRA
7EC7: 14             SEXW
7EC8: 50             NEGB
7EC9: 14             SEXW
7ECA: 55             FCB    $55
7ECB: 14             SEXW
7ECC: 56             RORB
7ECD: 14             SEXW
7ECE: 4B             FCB    $4B
7ECF: 14             SEXW
7ED0: 4C             INCA
7ED1: 14             SEXW
7ED2: 51             FCB    $51
7ED3: 14             SEXW
7ED4: 52             FCB    $52
7ED5: 14             SEXW
7ED6: 57             ASRB
7ED7: 14             SEXW
7ED8: 58             ASLB
7ED9: 00 20          NEG    $20
7EDB: 10 20          FCB    $10,$20
7EDD: 00             FCB    $00
7EDE: 10             FCB    $10
7EDF: 10 10          FCB    $10,$10
7EE1: 00 00          NEG    $00
7EE3: 10 00          FCB    $10,$00
7EE5: E5             FCB    $E5
7EE6: ED FA          STQ    [F,S]
7EE8: FC 00 0C       LDD    >$000C
7EEB: 08 06          ASL    $06
7EED: F1 F1 F1       CMPB   $F1F1
7EF0: 1E 1E          EXG    X,E
7EF2: 1E 7E          EXG    V,E
7EF4: 6F 7E          CLR    -$2,S
7EF6: 6F 7E          CLR    -$2,S
7EF8: 6F 7E          CLR    -$2,S
7EFA: 6F 7E          CLR    -$2,S
7EFC: 6F 7E          CLR    -$2,S
7EFE: 6F 7E          CLR    -$2,S
7F00: 6F 7E          CLR    -$2,S
7F02: 6F 7E          CLR    -$2,S
7F04: 6F 7E          CLR    -$2,S
7F06: 6F 7E          CLR    -$2,S
7F08: 6F 7E          CLR    -$2,S
7F0A: 6F 7E          CLR    -$2,S
7F0C: 6F 7E          CLR    -$2,S
7F0E: 6F 7E          CLR    -$2,S
7F10: 6F 7E          CLR    -$2,S
7F12: 6F 7E          CLR    -$2,S
7F14: 6F 7F          CLR    -$1,S
7F16: 25 7F          BCS    $7F97
7F18: 25 7F          BCS    $7F99
7F1A: 25 7F          BCS    $7F9B
7F1C: 25 7F          BCS    $7F9D
7F1E: 25 7E          BCS    $7F9E
7F20: 6F 7E          CLR    -$2,S
7F22: 6F 7E          CLR    -$2,S
7F24: 6F FA          CLR    [F,S]
7F26: FA FE 0C       ORB    $FE0C
7F29: 0C 08          INC    $08
7F2B: 7E 6F 7E       JMP    $6F7E
7F2E: 6F 7E          CLR    -$2,S
7F30: 6F 7E          CLR    -$2,S
7F32: 6F 7E          CLR    -$2,S
7F34: 6F 7E          CLR    -$2,S
7F36: 6F 7E          CLR    -$2,S
7F38: 6F 7E          CLR    -$2,S
7F3A: 6F 7E          CLR    -$2,S
7F3C: 6F 7E          CLR    -$2,S
7F3E: 6F 7F          CLR    -$1,S
7F40: 4B             FCB    $4B
7F41: 7E 6F 7E       JMP    $6F7E
7F44: 6F 7E          CLR    -$2,S
7F46: 6F 7E          CLR    -$2,S
7F48: 6F 7E          CLR    -$2,S
7F4A: 6F F4          CLR    [,S]
7F4C: FC 00 18       LDD    >$0018
7F4F: 08 08          ASL    $08
7F51: 7E 6F 7F       JMP    $6F7F
7F54: 57             ASRB
7F55: 7E 6F 90       JMP    $6F90
7F58: F0 B0 18       SUBB   $B018
7F5B: 18             FCB    $18
7F5C: 10 7E          FCB    $10,$7E
7F5E: 6F             FCB    $6F
7F5F: 7E             FCB    $7E
7F60: 6F             FCB    $6F
7F61: 7F             FCB    $7F
7F62: 6B             FCB    $6B
7F63: 7F             FCB    $7F
7F64: 71             FCB    $71
7F65: 7F             FCB    $7F
7F66: 77             FCB    $77
7F67: 7F             FCB    $7F
7F68: 7D             FCB    $7D
7F69: 7F             FCB    $7F
7F6A: 83 10 F8       CMPD   #$10F8
7F6D: DB 14          ADDB   $14
7F6F: 0C 25          INC    $25
7F71: 14             SEXW
7F72: F0 DB 14       SUBB   $DB14
7F75: 14             SEXW
7F76: 25 18          BCS    $7F90
7F78: E8 DB          EORB   [D,U]
7F7A: 14             SEXW
7F7B: 1C 25          ANDCC  #$25
7F7D: 1C E0          ANDCC  #$E0
7F7F: DB 14          ADDB   $14
7F81: 24 25          BCC    $7FA8
7F83: 20 D8          BRA    $7F5D
7F85: DB 14          ADDB   $14
7F87: 2C 25          BGE    $7FAE
7F89: 7E 6F 7E       JMP    $6F7E
7F8C: 6F 7E          CLR    -$2,S
7F8E: 6F 7E          CLR    -$2,S
7F90: 6F 7E          CLR    -$2,S
7F92: 6F 7E          CLR    -$2,S
7F94: 6F 7E          CLR    -$2,S
7F96: 6F 7E          CLR    -$2,S
7F98: 6F 7E          CLR    -$2,S
7F9A: 6F 7E          CLR    -$2,S
7F9C: 6F 7E          CLR    -$2,S
7F9E: 6F 7E          CLR    -$2,S
7FA0: 6F 7E          CLR    -$2,S
7FA2: 6F 7E          CLR    -$2,S
7FA4: 6F 7E          CLR    -$2,S
7FA6: 6F 7E          CLR    -$2,S
7FA8: 6F 7E          CLR    -$2,S
7FAA: 6F 7E          CLR    -$2,S
7FAC: 6F 7E          CLR    -$2,S
7FAE: 6F 7F          CLR    -$1,S
7FB0: BD 7E 6F       JSR    $7E6F
7FB3: 7E 6F 7F       JMP    $6F7F
7FB6: B7 F4 FC       STA    $F4FC
7FB9: 00 18          NEG    $18
7FBB: 08 08          ASL    $08
7FBD: F6 FD 00       LDB    $FD00
7FC0: 0F 05          CLR    $05
7FC2: 16 7F D5       LBRA   $FF9A
7FC5: 7E 6F 7E       JMP    $6F7E
7FC8: 6F 7E          CLR    -$2,S
7FCA: 6F 7E          CLR    -$2,S
7FCC: 6F 7E          CLR    -$2,S
7FCE: 6F 7E          CLR    -$2,S
7FD0: 6F 7E          CLR    -$2,S
7FD2: 6F 7E          CLR    -$2,S
7FD4: 6F FC FC       CLR    [$7FD3,PCR]
7FD7: FC 08 08       LDD    $0808
7FDA: 08 DB          ASL    $DB
7FDC: 00 00          NEG    $00
7FDE: 00 00          NEG    $00
7FE0: 00 00          NEG    $00
7FE2: 00 00          NEG    $00
7FE4: 00 00          NEG    $00
7FE6: 00 00          NEG    $00
7FE8: 00 00          NEG    $00
7FEA: 00 00          NEG    $00
7FEC: 00 00          NEG    $00
7FEE: 00 00          NEG    $00
7FF0: 00 00          NEG    $00
7FF2: 00 00          NEG    $00
7FF4: 00 00          NEG    $00
7FF6: 00 00          NEG    $00
7FF8: 00 00          NEG    $00
7FFA: 00 00          NEG    $00
7FFC: 00 00          NEG    $00
7FFE: 00 00          NEG    $00
