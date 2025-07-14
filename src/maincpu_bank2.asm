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

4355: 8E 44 70       LDX    #$4470
4358: 96 6B          LDA    $6B
435A: 91 6C          CMPA   $6C
435C: 23 03          BLS    $4361
435E: 8E 44 2F       LDX    #$442F
4361: 6E 84          JMP    ,X		; [indirect_jump]
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
