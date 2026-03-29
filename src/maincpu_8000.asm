;	map(0x0000, 0x0fff).ram().share("rambase");
;	map(0x1000, 0x11ff).ram().w(m_palette, FUNC(palette_device::write8)).share("palette");  red and green
;	map(0x1200, 0x13ff).ram().w(m_palette, FUNC(palette_device::write8_ext)).share("palette_ext");  blue
;   0x1000-0x1080: foreground tiles layer
;   0x1080-0x1100: sprites layer
;   0x1100-0x1180: background tiles layer
;
;	map(0x1800, 0x1fff).ram().w(FUNC(ddragon_state::fgvideoram_w)).share(m_fgvideoram);
;	map(0x2000, 0x21ff).rw(FUNC(ddragon_state::comram_r), FUNC(ddragon_state::comram_w)).mirror(0x0600);
;	map(0x2800, 0x2fff).ram().share(m_spriteram);
;	map(0x3000, 0x37ff).ram().w(FUNC(ddragon_state::bgvideoram_w)).share(m_bgvideoram);
;	map(0x3800, 0x3800).portr("P1");
;	map(0x3801, 0x3801).portr("P2");
;	map(0x3802, 0x3802).portr("EXTRA");
;	map(0x3803, 0x3803).portr("DSW0");
;	map(0x3804, 0x3804).portr("DSW1");
;	map(0x3808, 0x3808).w(FUNC(ddragon_state::bankswitch_w));
;	map(0x3809, 0x3809).writeonly().share(m_scrollx_lo);
;	map(0x380a, 0x380a).writeonly().share(m_scrolly_lo);
;	map(0x380b, 0x380f).rw(FUNC(ddragon_state::interrupt_r), FUNC(ddragon_state::interrupt_w));
;	map(0x4000, 0x7fff).bankr(m_mainbank);
;	map(0x8000, 0xffff).rom();

;void ddragon_state::bankswitch_w(uint8_t data)
;{
;	/*
;	    76543210
;	    .......x    X-scroll D9 (H9BT)
;	    ......x.    Y-scroll D9 (V9BT)
;	    .....x..    /Screen flip (*1P/2P)
;	    ....x...    /Sub CPU reset (*RESET)
;	    ...x....    /Sub CPU halt (*HALT)
;	    xxx.....    ROM bank (*BANK)
;	*/
;	m_scrollx_hi = data & 0x01;
;	m_scrolly_hi = (data & 0x02) >> 1;
;	flip_screen_set(~data & 0x04);
;
;	m_subcpu->set_input_line(INPUT_LINE_RESET, data & 0x08 ? CLEAR_LINE : ASSERT_LINE);
;	m_subcpu->set_input_line(INPUT_LINE_HALT, data & 0x10 ? ASSERT_LINE : CLEAR_LINE);
;	m_mainbank->set_entry((data & 0xe0) >> 5);
;}
;	PORT_START("P1")
;	PORT_BIT( 0x01, IP_ACTIVE_LOW, IPT_JOYSTICK_RIGHT ) PORT_8WAY
;	PORT_BIT( 0x02, IP_ACTIVE_LOW, IPT_JOYSTICK_LEFT ) PORT_8WAY
;	PORT_BIT( 0x04, IP_ACTIVE_LOW, IPT_JOYSTICK_UP ) PORT_8WAY
;	PORT_BIT( 0x08, IP_ACTIVE_LOW, IPT_JOYSTICK_DOWN ) PORT_8WAY
;	PORT_BIT( 0x10, IP_ACTIVE_LOW, IPT_BUTTON1 )
;	PORT_BIT( 0x20, IP_ACTIVE_LOW, IPT_BUTTON2 )
;	PORT_BIT( 0x40, IP_ACTIVE_LOW, IPT_START1 )
;	PORT_BIT( 0x80, IP_ACTIVE_LOW, IPT_START2 )
;
;	PORT_START("P2")
;	PORT_BIT( 0x01, IP_ACTIVE_LOW, IPT_JOYSTICK_RIGHT ) PORT_8WAY PORT_PLAYER(2)
;	PORT_BIT( 0x02, IP_ACTIVE_LOW, IPT_JOYSTICK_LEFT ) PORT_8WAY PORT_PLAYER(2)
;	PORT_BIT( 0x04, IP_ACTIVE_LOW, IPT_JOYSTICK_UP ) PORT_8WAY PORT_PLAYER(2)
;	PORT_BIT( 0x08, IP_ACTIVE_LOW, IPT_JOYSTICK_DOWN ) PORT_8WAY PORT_PLAYER(2)
;	PORT_BIT( 0x10, IP_ACTIVE_LOW, IPT_BUTTON1 ) PORT_PLAYER(2)
;	PORT_BIT( 0x20, IP_ACTIVE_LOW, IPT_BUTTON2 ) PORT_PLAYER(2)
;	PORT_BIT( 0x40, IP_ACTIVE_LOW, IPT_COIN1 )
;	PORT_BIT( 0x80, IP_ACTIVE_LOW, IPT_COIN2 )
;
;	PORT_START("DSW0")
;	PORT_DIPNAME( 0x07, 0x07, DEF_STR( Coin_A ) ) PORT_DIPLOCATION("SW1:1,2,3")
;	PORT_DIPSETTING(    0x00, DEF_STR( 4C_1C ) )
;	PORT_DIPSETTING(    0x01, DEF_STR( 3C_1C ) )
;	PORT_DIPSETTING(    0x02, DEF_STR( 2C_1C ) )
;	PORT_DIPSETTING(    0x07, DEF_STR( 1C_1C ) )
;	PORT_DIPSETTING(    0x06, DEF_STR( 1C_2C ) )
;	PORT_DIPSETTING(    0x05, DEF_STR( 1C_3C ) )
;	PORT_DIPSETTING(    0x04, DEF_STR( 1C_4C ) )
;	PORT_DIPSETTING(    0x03, DEF_STR( 1C_5C ) )
;	PORT_DIPNAME( 0x38, 0x38, DEF_STR( Coin_B ) ) PORT_DIPLOCATION("SW1:4,5,6")
;	PORT_DIPSETTING(    0x00, DEF_STR( 4C_1C ) )
;	PORT_DIPSETTING(    0x08, DEF_STR( 3C_1C ) )
;	PORT_DIPSETTING(    0x10, DEF_STR( 2C_1C ) )
;	PORT_DIPSETTING(    0x38, DEF_STR( 1C_1C ) )
;	PORT_DIPSETTING(    0x30, DEF_STR( 1C_2C ) )
;	PORT_DIPSETTING(    0x28, DEF_STR( 1C_3C ) )
;	PORT_DIPSETTING(    0x20, DEF_STR( 1C_4C ) )
;	PORT_DIPSETTING(    0x18, DEF_STR( 1C_5C ) )
;	PORT_DIPNAME( 0x40, 0x40, DEF_STR( Cabinet ) ) PORT_DIPLOCATION("SW1:7")
;	PORT_DIPSETTING(    0x40, DEF_STR( Upright ) )
;	PORT_DIPSETTING(    0x00, DEF_STR( Cocktail ) )
;	PORT_DIPNAME( 0x80, 0x80, DEF_STR( Flip_Screen ) ) PORT_DIPLOCATION("SW1:8")
;	PORT_DIPSETTING(    0x80, DEF_STR( Off ) )
;	PORT_DIPSETTING(    0x00, DEF_STR( On ) )
;
;	PORT_START("DSW1")
;	PORT_DIPNAME( 0x03, 0x03, DEF_STR( Difficulty ) ) PORT_DIPLOCATION("SW2:1,2")
;	PORT_DIPSETTING(    0x01, DEF_STR( Easy ) )
;	PORT_DIPSETTING(    0x03, DEF_STR( Medium ) )
;	PORT_DIPSETTING(    0x02, DEF_STR( Hard ) )
;	PORT_DIPSETTING(    0x00, DEF_STR( Hardest ) )
;	PORT_DIPNAME( 0x04, 0x04, DEF_STR( Demo_Sounds ) ) PORT_DIPLOCATION("SW2:3")
;	PORT_DIPSETTING(    0x00, DEF_STR( Off ) )
;	PORT_DIPSETTING(    0x04, DEF_STR( On ) )
;	PORT_DIPUNUSED_DIPLOC( 0x08, IP_ACTIVE_LOW, "SW2:4" )
;	PORT_DIPNAME( 0x30, 0x30, DEF_STR( Bonus_Life ) ) PORT_DIPLOCATION("SW2:5,6")
;	PORT_DIPSETTING(    0x10, "20k" )
;	PORT_DIPSETTING(    0x00, "40k" )
;	PORT_DIPSETTING(    0x30, "30k and every 60k" )
;	PORT_DIPSETTING(    0x20, "40k and every 80k" )
;	PORT_DIPNAME( 0xc0, 0xc0, DEF_STR( Lives ) ) PORT_DIPLOCATION("SW2:7,8")
;	PORT_DIPSETTING(    0xc0, "2" )
;	PORT_DIPSETTING(    0x80, "3" )
;	PORT_DIPSETTING(    0x40, "4" )
;	PORT_DIPSETTING(    0x00, "Infinite (Cheat)")
;
;	PORT_START("EXTRA")
;	PORT_BIT( 0x01, IP_ACTIVE_LOW, IPT_SERVICE1 )
;	PORT_BIT( 0x02, IP_ACTIVE_LOW, IPT_BUTTON3 )
;	PORT_BIT( 0x04, IP_ACTIVE_LOW, IPT_BUTTON3 ) PORT_PLAYER(2)
;	PORT_BIT( 0x08, IP_ACTIVE_HIGH, IPT_CUSTOM ) PORT_VBLANK("screen")
;	PORT_BIT( 0x10, IP_ACTIVE_LOW, IPT_CUSTOM ) PORT_READ_LINE_MEMBER(ddragon_state, subcpu_bus_free_r)
;	PORT_BIT( 0xe0, IP_ACTIVE_HIGH, IPT_UNUSED )
;
; there are 8 possible banks (to access them from MAME debugger, ex: "fill 3808:maincpu,1,2<<5" for bank 2 )
; bank 0 contains code
; bank 1 contains code
; bank 2 does not contain code
; bank 3 contains code
; bank 4 contains code
; bank 5 contains code
; bank 6 is empty
; bank 7 is empty
;
; the [banks=0,1,4] tag indicates which known banks are accessed in this jump
;
; interrupt vectors:
; FFF0H to FFF1H 	Reserved by Motorola                     $FFFF
; FFF2H to FFF3H 	SWI3 instruction interrupt vector        $80B9 (not used, RTI)
; FFF4H to FFF5H 	SWI2 instruction interrupt vector        $80B9 (not used, RTI)
; FFF6H to FFF7H 	Fast hardware int. vector (FIRQ)         $8092 freq 0.7ms only to check for inserted coins
; FFF8H to FFF9H 	Hardware interrupt vector (IRQ)          $80B0 controlled by subcpu
; FFFAH to FFFBH 	SWI instruction interrupt vector         $80B9 (not used, RTI)
; FFFCH to FFFDH 	Non-maskable interrupt vector (NMI)      $8056 freq 1/60s (15ms)
; FFFEH to FFFFH 	Reset vector                             $8000

; characters seem to have a 16 color palette each
; ex in intro $1xCx is boss palette, $1xDx is green punk palette
bank_switch_copy_3a = $3a

bank_address_4000 = $4000
port_1_3800 = $3800
port_2_3801 = $3801
extra_3802 = $3802
dsw_0_3803 = $3803
dsw_1_3804 = $3804
bankswitch_3808 =  $3808
nmi_ack_380b = $380b
sub_irq_380f = $380f
irq_ack_380d = $380d
sound_irq_380e = $380e
firq_ack_380c = $380c
scroll_x_lo_3809 = $3809
scroll_y_lo_380a = $380a
previous_bank_register_0e3d = $E3D
previous_bank_register_0e43 = $e43
previous_bank_register_0e44 = $e44
previous_bank_register_0e45 = $e45
previous_bank_register_0e46 = $e46
irq_sync_flag_0e3e = $e3e
bg_tiles_palette_1100 = $1100
sprites_palette_1080 = $1080
fg_tiles_palette_1000 = $1000
subcpu_shared_2000 = $2000
sprite_memory_2800 = $2800
nmi_active_flag_0e71 = $0e71

bg_tiles_address_3000 = $3000
fg_tiles_address_1800 = $1800
nb_credits_0021 = $21
interrupt_status_22 = $22
intro_anim_flag_0e30 = $e30
sprite_memory_2081 = $2081
nb_objects_to_convert_03a1 = $3a1
; contains the array on pointers on logical object structures, located just after the array, at $3A2
; a logical object is a combination of sprites
; in intro:
; - 381-38B: garage doors objects
; - 38B-38D: players (03A2,0400)
; - 38F: girl (45E)
; - 391: thug that hits the girl (4B3)
; - 393: green punk (508)
; - 395: thug in white outfit (55D)
; - 397: machine gun boss (5B2)
;
; object structure (?? bytes)
; 0:
; 1: object type: examples (from intro)
;    0: player 1
;    1: player 2
;    2: machine gun boss
;    3: punk
;    8: tshirt thug with curly hair
;    9: barechested thug
;    14: curtain
;    1F: girl
; 2:
; 3:
; 4: X coordinate
; 6: Y coordinate
logical_objects_array_0381 = $381
number_of_players_flag_0029 = $29
game_in_play_0026 = $26

reset_8000:     ; [global]
8000: 4F             CLRA
8001: B7 0E 71       STA    nmi_active_flag_0e71	; nmi is inactive
8004: B7 38 08       STA    bankswitch_3808		; set bank 0
8007: 1A 50          ORCC   #$50				; disable interrupts
8009: B7 38 0D       STA    irq_ack_380d
800C: B7 38 0B       STA    nmi_ack_380b
800F: B7 38 0C       STA    firq_ack_380c
8012: 4F             CLRA
8013: 1F 8B          TFR    A,DP
8015: CE 0E FF       LDU    #$0EFF		; set U stack
8018: 10 CE 0F FF    LDS    #$0FFF		; set S stack
801C: BD FE 95       JSR    $FE95
801F: BD FE 98       JSR    clear_fg_screen_fe98
8022: BD FE 9B       JSR    clear_bg_screen_fe9b
8025: BD FE 9E       JSR    clear_sprite_memory_fe9e
8028: BD FE A1       JSR    set_screen_orientation_fea1
802B: BD FD F0       JSR    set_palettes_fdf0
802E: 1C EF          ANDCC  #$EF
8030: 96 3A          LDA    bank_switch_copy_3a
8032: 84 E7          ANDA   #$E7
8034: 97 3A          STA    bank_switch_copy_3a
8036: B7 38 08       STA    bankswitch_3808
8039: 8A 08          ORA    #$08
803B: 97 3A          STA    bank_switch_copy_3a
803D: B7 38 08       STA    bankswitch_3808
8040: 7E B7 ED       JMP    memory_check_b7ed
8043: 86 20          LDA    #$20
8045: BD B7 56       JSR    vbl_delay_b756
8048: BD FF 4A       JSR    switch_to_bank_3_ff4a
804B: BD 6C 00       JSR    $6C00  ; [banks=3]
804E: BD FC 8F       JSR    switch_to_bank_0_fc8f
8051: 1C AF          ANDCC  #$AF
8053: 7E 80 BA       JMP    $80BA

nmi_8056:   ; [global]
8056: 4F             CLRA
8057: 1F 8B          TFR    A,DP			; direct page 0
8059: F6 0E 71       LDB    nmi_active_flag_0e71
805C: 2A 30          BPL    $808E
; flag is negative ($80): nmi will do something
805E: 96 22          LDA    interrupt_status_22
8060: 2B 2C          BMI    $808E
8062: 8A 80          ORA    #$80
8064: 97 22          STA    interrupt_status_22		; bit 7 to tell that we're within the nmi
8066: 0C 2F          INC    $2F
8068: 96 22          LDA    interrupt_status_22
806A: 84 01          ANDA   #$01
806C: 27 1A          BEQ    $8088					; skip if bit 0 is not set
; main graphic update
806E: BD FD FC       JSR    update_scrolling_fdfc
8071: BD FF 24       JSR    save_and_switch_to_bank_0_ff24
8074: BD FE A4       JSR    update_sprite_memory_fea4	; copy from subcpu memory to sprite memory
8077: BD FE A7       JSR    $FEA7			; ??? tried disabling it, the game runs normally...
807A: BD FD F3       JSR    set_palettes_fdf3
807D: BD FF 34       JSR    restore_previous_bank_ff34
; "ack" nmi graphic update by setting bit 2 
8080: 96 22          LDA    interrupt_status_22
8082: 8A 02          ORA    #$02
8084: 97 22          STA    interrupt_status_22
8086: 0F 2F          CLR    $2F
8088: 96 22          LDA    interrupt_status_22
808A: 84 7F          ANDA   #$7F
808C: 97 22          STA    interrupt_status_22		; clear bit 7 to tell that we're outside the nmi
808E: B7 38 0B       STA    nmi_ack_380b		; ack our interrupt
8091: 3B             RTI

; only useful to check for coins. Disable it (bpset 8094,,{PC=$80AA;g} and
; everything works except the insert coin buttons
; called every 0.7ms this is probably to be sure not to miss any coins

firq_8092:   ; [global]
8092: 34 7F          PSHS   U,Y,X,DP,D,CC
8094: 4F             CLRA
8095: 1F 8B          TFR    A,DP
8097: 96 22          LDA    interrupt_status_22
8099: 85 20          BITA   #$20
809B: 26 0D          BNE    $80AA
809D: 8A 20          ORA    #$20
809F: 97 22          STA    interrupt_status_22
80A1: BD 89 90       JSR    check_for_coin_inserted_8990
80A4: 96 22          LDA    interrupt_status_22
80A6: 84 DF          ANDA   #$DF
80A8: 97 22          STA    interrupt_status_22
80AA: B7 38 0C       STA    firq_ack_380c		; ack our interrupt
80AD: 35 7F          PULS   CC,D,DP,X,Y,U
80AF: 3B             RTI

; irq is just there to set sync flag
irq_80b0:   ; [global]
80B0: 86 01          LDA    #$01
80B2: B7 0E 3E       STA    irq_sync_flag_0e3e		; set sync flag
80B5: B7 38 0D       STA    irq_ack_380d		; ack our interrupt
80B8: 3B             RTI

; this is not used
swi_interrupt:
80B9: 3B             RTI

80BA: 86 FF          LDA    #$FF
80BC: B7 38 0E       STA    sound_irq_380e
80BF: C6 FF          LDB    #$FF
80C1: 5A             DECB
80C2: 26 FD          BNE    $80C1
80C4: 86 FE          LDA    #$FE
80C6: B7 38 0E       STA    sound_irq_380e
80C9: 9E 23          LDX    $23
80CB: 96 25          LDA    $25
80CD: D6 3A          LDB    bank_switch_copy_3a
80CF: 34 16          PSHS   X,D
80D1: 9E 2D          LDX    $2D
80D3: DC 20          LDD    $20
80D5: 34 16          PSHS   X,D
80D7: 96 CC          LDA    $CC
80D9: 34 02          PSHS   A
80DB: BD FE 95       JSR    $FE95
80DE: 35 02          PULS   A
80E0: 97 CC          STA    $CC
80E2: 35 16          PULS   D,X
80E4: 9F 2D          STX    $2D
80E6: DD 20          STD    $20
80E8: 35 16          PULS   D,X
80EA: 9F 23          STX    $23
80EC: 97 25          STA    $25
80EE: D7 3A          STB    bank_switch_copy_3a
80F0: 86 01          LDA    #$01
80F2: BD FE B6       JSR    $FEB6
80F5: 0F 26          CLR    game_in_play_0026
80F7: 0F 29          CLR    number_of_players_flag_0029
80F9: 7F 03 EE       CLR    $03EE
80FC: 7F 04 4C       CLR    $044C
80FF: BD FE A1       JSR    set_screen_orientation_fea1
8102: BD FE 9B       JSR    clear_bg_screen_fe9b
8105: BD FE 9E       JSR    clear_sprite_memory_fe9e
8108: BD FE 98       JSR    clear_fg_screen_fe98
810B: 0F 36          CLR    $36
810D: 0F 38          CLR    $38
810F: 0F 37          CLR    $37
8111: BD FD F0       JSR    set_palettes_fdf0
8114: BD FD F3       JSR    set_palettes_fdf3
8117: BD FE F8       JSR    $FEF8
811A: 86 06          LDA    #$06
811C: BD FE B0       JSR    display_credit_feb0
811F: 86 0A          LDA    #$0A
8121: B7 0E 2D       STA    $0E2D
; "insert coin" loop wait during title
insert_coin_loop_8124:
8124: 86 07          LDA    #$07
8126: BD FE B0       JSR    display_credit_feb0
8129: 86 18          LDA    #$18
812B: BD B7 56       JSR    vbl_delay_b756
812E: 86 87          LDA    #$87
8130: BD FE B0       JSR    display_credit_feb0
8133: 86 08          LDA    #$08
8135: BD B7 56       JSR    vbl_delay_b756
8138: 7A 0E 2D       DEC    $0E2D
813B: 26 E7          BNE    insert_coin_loop_8124
; stop flashing "INSERT COIN", wait a while
813D: 86 FF          LDA    #$FF
813F: BD B7 56       JSR    vbl_delay_b756
8142: 86 20          LDA    #$20
8144: BD B7 56       JSR    vbl_delay_b756
; then start the attract mode/demo
8147: BD FE 9B       JSR    clear_bg_screen_fe9b
814A: BD FE 98       JSR    clear_fg_screen_fe98
814D: BD FE 9E       JSR    clear_sprite_memory_fe9e
8150: 86 01          LDA    #$01
8152: BD B7 56       JSR    vbl_delay_b756
8155: 16 00 BD       LBRA   demo_8215

coin_inserted_8158:
8158: 86 FF          LDA    #$FF
815A: B7 38 0E       STA    sound_irq_380e
815D: C6 FF          LDB    #$FF
815F: 5A             DECB
8160: 26 FD          BNE    $815F
8162: 86 FE          LDA    #$FE
8164: B7 38 0E       STA    sound_irq_380e
8167: 7F 03 EE       CLR    $03EE
816A: 7F 04 4C       CLR    $044C
816D: 0F 29          CLR    number_of_players_flag_0029
816F: BD FE A1       JSR    set_screen_orientation_fea1
8172: BD FE 9B       JSR    clear_bg_screen_fe9b
8175: BD FE 9E       JSR    clear_sprite_memory_fe9e
8178: 0F 36          CLR    $36
817A: BD FD F0       JSR    set_palettes_fdf0
817D: BD FD F3       JSR    set_palettes_fdf3
8180: BD FE 98       JSR    clear_fg_screen_fe98
8183: BD FE E3       JSR    $FEE3
8186: 86 FF          LDA    #$FF
8188: B7 38 0E       STA    sound_irq_380e
818B: 7C 0E 34       INC    $0E34
818E: B6 0E 34       LDA    $0E34
8191: 10 8E 88 41    LDY    #$8841
8195: F6 0E 35       LDB    $0E35
8198: C4 01          ANDB   #$01
819A: A1 A5          CMPA   B,Y
819C: 25 3D          BCS    $81DB
819E: 7F 0E 34       CLR    $0E34
81A1: B6 0E 35       LDA    $0E35
81A4: 88 01          EORA   #$01
81A6: B7 0E 35       STA    $0E35
81A9: 2B 14          BMI    $81BF
81AB: 86 02          LDA    #$02
81AD: 5D             TSTB
81AE: 26 0A          BNE    $81BA
81B0: F6 0E 35       LDB    $0E35
81B3: C8 80          EORB   #$80
81B5: F7 0E 35       STB    $0E35
81B8: 86 84          LDA    #$84
81BA: BD FE B0       JSR    display_credit_feb0
81BD: 20 1C          BRA    $81DB
81BF: 86 03          LDA    #$03
81C1: 34 04          PSHS   B
81C3: D6 21          LDB    nb_credits_0021
81C5: 5A             DECB
81C6: 27 01          BEQ    $81C9
81C8: 4C             INCA
81C9: 35 04          PULS   B
81CB: 5D             TSTB
81CC: 26 0A          BNE    $81D8
81CE: B6 0E 35       LDA    $0E35
81D1: 88 80          EORA   #$80
81D3: B7 0E 35       STA    $0E35
81D6: 86 84          LDA    #$84
81D8: BD FE B0       JSR    display_credit_feb0
81DB: BD 84 45       JSR    $8445
81DE: 86 01          LDA    #$01
81E0: BD B7 56       JSR    vbl_delay_b756
81E3: F6 38 00       LDB    port_1_3800
81E6: 53             COMB
81E7: C4 C0          ANDB   #$C0
81E9: 27 9B          BEQ    $8186
81EB: C1 40          CMPB   #$40
81ED: 26 08          BNE    $81F7
81EF: 96 29          LDA    number_of_players_flag_0029
81F1: 8A 01          ORA    #$01		; 1 player
81F3: 97 29          STA    number_of_players_flag_0029
81F5: 20 17          BRA    $820E
81F7: C1 80          CMPB   #$80
81F9: 26 8B          BNE    $8186
81FB: D6 21          LDB    nb_credits_0021
81FD: C1 02          CMPB   #$02
81FF: 25 85          BCS    $8186
8201: 96 29          LDA    number_of_players_flag_0029
8203: 8A 83          ORA    #$83		; 2 players: 3 + negative for quick test
8205: 97 29          STA    number_of_players_flag_0029
8207: 96 21          LDA    nb_credits_0021
8209: 8B 99          ADDA   #$99
820B: 19             DAA
820C: 97 21          STA    nb_credits_0021
820E: 96 21          LDA    nb_credits_0021
8210: 8B 99          ADDA   #$99
8212: 19             DAA
8213: 97 21          STA    nb_credits_0021
demo_8215:
8215: 96 26          LDA    game_in_play_0026
8217: 26 04          BNE    $821D
8219: 86 83          LDA    #$83
821B: 97 29          STA    number_of_players_flag_0029	; set 2 players
821D: 86 02          LDA    #$02
821F: 97 00          STA    $00
8221: 8D 4C          BSR    $826F
8223: DC 00          LDD    $00
8225: B7 03 EA       STA    $03EA
8228: F7 04 48       STB    $0448
822B: 0D 29          TST    number_of_players_flag_0029
822D: 2B 03          BMI    $8232
822F: 7F 04 48       CLR    $0448
8232: B6 38 04       LDA    dsw_1_3804
8235: 43             COMA
8236: 84 03          ANDA   #$03
8238: 8E 82 6B       LDX    #$826B
823B: A6 86          LDA    A,X
823D: 97 55          STA    $55
823F: 86 40          LDA    #$40
8241: B7 03 C1       STA    $03C1
8244: B7 04 1F       STA    $041F
8247: 7F 03 EF       CLR    $03EF
824A: 7F 04 4D       CLR    $044D
824D: 0D 26          TST    game_in_play_0026
824F: 27 18          BEQ    $8269
8251: CC 00 00       LDD    #$0000
8254: FD 03 EB       STD    $03EB
8257: B7 03 ED       STA    $03ED
825A: FD 04 49       STD    $0449
825D: B7 04 4B       STA    $044B
8260: 97 38          STA    $38
8262: 97 36          STA    $36
8264: 97 37          STA    $37
8266: B7 09 F2       STA    $09F2
8269: 20 28          BRA    $8293

826F: F6 38 04       LDB    dsw_1_3804                                      
8272: 53             COMB                                               
8273: 58             ASLB
8274: 59             ROLB
8275: 59             ROLB
8276: C4 03          ANDB   #$03
8278: 34 10          PSHS   X
827A: 8E 82 8F       LDX    #$828F
827D: A6 85          LDA    B,X
827F: D6 00          LDB    $00
8281: C5 01          BITB   #$01
8283: 26 06          BNE    $828B
8285: 97 00          STA    $00
8287: C5 02          BITB   #$02
8289: 27 02          BEQ    $828D
828B: 97 01          STA    $01
828D: 35 90          PULS   X,PC

8293: B6 03 EA       LDA    $03EA
8296: F6 04 48       LDB    $0448
8299: 34 06          PSHS   D
829B: 7F 0E 71       CLR    nmi_active_flag_0e71
829E: 8E 03 A2       LDX    #$03A2
82A1: 10 8E 0A CF    LDY    #$0ACF
82A5: BD FE AA       JSR    $FEAA
82A8: 8E 00 60       LDX    #$0060
82AB: 10 8E 00 20    LDY    #$0020
82AF: BD FE AA       JSR    $FEAA
82B2: BD FE 9E       JSR    clear_sprite_memory_fe9e
82B5: BD FE 98       JSR    clear_fg_screen_fe98
82B8: BD FE 9B       JSR    clear_bg_screen_fe9b
82BB: BD FE A1       JSR    set_screen_orientation_fea1
82BE: 35 06          PULS   D
82C0: B7 03 EA       STA    $03EA
82C3: F7 04 48       STB    $0448
82C6: 7F 0B C0       CLR    $0BC0
82C9: BD FD F0       JSR    set_palettes_fdf0
82CC: B6 03 EE       LDA    $03EE
82CF: 84 83          ANDA   #$83
82D1: B7 03 EE       STA    $03EE
82D4: B6 04 4C       LDA    $044C
82D7: 84 83          ANDA   #$83
82D9: B7 04 4C       STA    $044C
82DC: B6 03 EA       LDA    $03EA
82DF: F6 04 48       LDB    $0448
82E2: 34 06          PSHS   D
82E4: BD FE 9B       JSR    clear_bg_screen_fe9b
82E7: 8E 03 A2       LDX    #$03A2
82EA: 10 8E 0A CF    LDY    #$0ACF
82EE: BD FE AA       JSR    $FEAA
82F1: 35 06          PULS   D
82F3: B7 03 EA       STA    $03EA
82F6: F7 04 48       STB    $0448
82F9: 8E 83 76       LDX    #$8376
82FC: D6 36          LDB    $36
82FE: A6 85          LDA    B,X
8300: 97 4B          STA    $4B
8302: 5D             TSTB
8303: 26 06          BNE    $830B
8305: CB 04          ADDB   #$04
8307: A6 85          LDA    B,X
8309: 97 4F          STA    $4F
830B: 0F 4D          CLR    $4D
830D: BD FD F3       JSR    set_palettes_fdf3
8310: BD FD F6       JSR    $FDF6
8313: BD FC 5A       JSR    $FC5A
8316: BD FC BE       JSR    $FCBE
8319: BD FC 82       JSR    switch_to_bank_5_fc82
831C: BD 40 5A       JSR    $405A		 ; [banks=5]
831F: BD FC 8F       JSR    switch_to_bank_0_fc8f
8322: B6 03 EE       LDA    $03EE
8325: 84 5F          ANDA   #$5F
8327: B7 03 EE       STA    $03EE
832A: B6 04 4C       LDA    $044C
832D: 84 5F          ANDA   #$5F
832F: B7 04 4C       STA    $044C
8332: 96 36          LDA    $36
8334: 27 04          BEQ    $833A
8336: 81 03          CMPA   #$03
8338: 26 03          BNE    $833D
833A: BD 84 F8       JSR    play_intro_animation_84f8
833D: 86 80          LDA    #$80
833F: C6 35          LDB    #$35
8341: 7D 03 A2       TST    $03A2
8344: 2A 06          BPL    $834C
8346: B7 09 AD       STA    $09AD
8349: F7 03 C1       STB    $03C1
834C: 7D 04 00       TST    $0400
834F: 2A 06          BPL    $8357
8351: B7 09 CE       STA    $09CE
8354: F7 04 1F       STB    $041F
8357: 96 26          LDA    game_in_play_0026
8359: 26 0A          BNE    $8365
835B: CC 04 58       LDD    #$0458
835E: FD 0E 50       STD    $0E50
8361: 86 01          LDA    #$01
8363: 20 08          BRA    $836D
8365: 10 8E 83 72    LDY    #$8372
8369: 96 36          LDA    $36
836B: A6 A6          LDA    A,Y
836D: BD FE B6       JSR    $FEB6
8370: 20 0C          BRA    activate_nmi_flag_837e		; [useless]
activate_nmi_flag_837e:
837E: B6 0E 71       LDA    nmi_active_flag_0e71
8381: 8A 80          ORA    #$80
8383: B7 0E 71       STA    nmi_active_flag_0e71
8386: 7F 0E 52       CLR    $0E52
gameloop_8389:
8389: 7F 0E 3E       CLR    irq_sync_flag_0e3e
838C: 0F 22          CLR    interrupt_status_22
838E: F6 21 FD       LDB    $21FD
8391: 34 04          PSHS   B
8393: BD FF 1A       JSR    subcpu_processing_ff1a
8396: BD FE C5       JSR    $FEC5
8399: BD 84 7E       JSR    $847E
839C: BD FD 0C       JSR    $FD0C
839F: BD FE D7       JSR    $FED7
83A2: BD FA 56       JSR    $FA56
83A5: BD FD 15       JSR    $FD15
83A8: BD FE F5       JSR    $FEF5
83AB: BD FC C8       JSR    $FCC8
83AE: BD B7 CA       JSR    $B7CA
83B1: BD FC 82       JSR    switch_to_bank_5_fc82
83B4: BD 40 5D       JSR    lb5_405d
83B7: BD FC 8F       JSR    switch_to_bank_0_fc8f
83BA: BD FF 01       JSR    $FF01
83BD: BD FF 5E       JSR    $FF5E
83C0: BD 84 4A       JSR    $844A
83C3: BD FD F9       JSR    $FDF9
83C6: BD 8A A8       JSR    $8AA8
83C9: 96 36          LDA    $36
83CB: 81 03          CMPA   #$03
83CD: 26 06          BNE    $83D5
83CF: BD B7 8A       JSR    call_bank3_b78a
83D2: BD B7 AD       JSR    call_bank3_b7ad
83D5: B6 0E 3E       LDA    irq_sync_flag_0e3e
83D8: 27 FB          BEQ    $83D5
83DA: BD 8A B5       JSR    wait_subcpu_reply_8ab5
83DD: 35 04          PULS   B
83DF: BD FE AD       JSR    clear_sprite_slots_fead
83E2: 96 22          LDA    interrupt_status_22
83E4: 8A 01          ORA    #$01
83E6: 97 22          STA    interrupt_status_22
83E8: 7F 38 0B       CLR    nmi_ack_380b
83EB: 96 22          LDA    interrupt_status_22
83ED: 84 02          ANDA   #$02
83EF: 27 FA          BEQ    $83EB
83F1: 0C 51          INC    $51
83F3: B6 09 F2       LDA    $09F2
83F6: 84 C0          ANDA   #$C0
83F8: 27 15          BEQ    $840F
83FA: B6 09 EF       LDA    $09EF
83FD: 26 10          BNE    $840F
83FF: B6 03 EE       LDA    $03EE
8402: 8A 40          ORA    #$40
8404: B7 03 EE       STA    $03EE
8407: B6 04 4C       LDA    $044C
840A: 8A 40          ORA    #$40
840C: B7 04 4C       STA    $044C
840F: B6 04 4C       LDA    $044C
8412: 84 C0          ANDA   #$C0
8414: 44             LSRA
8415: 44             LSRA
8416: 97 00          STA    $00
8418: B6 03 EE       LDA    $03EE
841B: 84 C0          ANDA   #$C0
841D: 9A 00          ORA    $00
841F: 84 F0          ANDA   #$F0
8421: 1F 89          TFR    A,B
8423: 84 A0          ANDA   #$A0
8425: 81 A0          CMPA   #$A0
8427: 10 27 04 20    LBEQ   $884B
842B: C4 50          ANDB   #$50
842D: 10 26 01 33    LBNE   $8564
8431: 96 26          LDA    game_in_play_0026
8433: 10 26 FF 52    LBNE   gameloop_8389
8437: FC 0E 50       LDD    $0E50
843A: 83 00 01       SUBD   #$0001
843D: FD 0E 50       STD    $0E50
8440: 27 0E          BEQ    $8450
8442: 7E 83 89       JMP    gameloop_8389

8445: 86 01          LDA    #$01
8447: BD FE B0       JSR    display_credit_feb0
844A: 86 04          LDA    #$04
844C: BD FE B3       JSR    $FEB3
844F: 39             RTS

8450: 7F 0E 71       CLR    nmi_active_flag_0e71
8453: 86 FF          LDA    #$FF
8455: B7 38 0E       STA    sound_irq_380e
8458: BD FE 98       JSR    clear_fg_screen_fe98
845B: BD FE 9B       JSR    clear_bg_screen_fe9b
845E: BD FE 9E       JSR    clear_sprite_memory_fe9e
8461: 86 FE          LDA    #$FE
8463: B7 38 0E       STA    sound_irq_380e
8466: 96 3A          LDA    bank_switch_copy_3a
8468: 8A 60          ORA    #$60		; bank=3
846A: B7 38 08       STA    bankswitch_3808
846D: 97 3A          STA    bank_switch_copy_3a
846F: BD 6C 1E       JSR    $6C1E ; [banks=3]
8472: 96 3A          LDA    bank_switch_copy_3a
8474: 84 1F          ANDA   #$1F
8476: B7 38 08       STA    bankswitch_3808
8479: 97 3A          STA    bank_switch_copy_3a
847B: 7E 80 BA       JMP    $80BA
847E: 96 29          LDA    number_of_players_flag_0029
8480: 2B 1D          BMI    two_players_849f
8482: 0F 2A          CLR    $2A
8484: 8E 03 A2       LDX    #$03A2
8487: BD 84 B0       JSR    $84B0
848A: 86 80          LDA    #$80
848C: B7 04 4C       STA    $044C
848F: 7F 04 48       CLR    $0448
8492: 30 88 5E       LEAX   $5E,X
8495: 0C 2A          INC    $2A
8497: BD 87 5F       JSR    $875F
849A: BD 87 D5       JSR    $87D5
849D: 20 10          BRA    $84AF
two_players_849f:
849F: 0F 2A          CLR    $2A
84A1: 8E 03 A2       LDX    #$03A2
84A4: BD 84 B0       JSR    $84B0
84A7: 0C 2A          INC    $2A
84A9: 30 88 5E       LEAX   $5E,X
84AC: BD 84 B0       JSR    $84B0
84AF: 39             RTS
84B0: A6 84          LDA    ,X
84B2: 2B 08          BMI    $84BC
84B4: A6 88 4C       LDA    $4C,X
84B7: 8A 80          ORA    #$80
84B9: A7 88 4C       STA    $4C,X
84BC: A6 88 4C       LDA    $4C,X
84BF: 84 C0          ANDA   #$C0
84C1: 27 07          BEQ    $84CA
84C3: 2B 0A          BMI    $84CF
84C5: BD 85 64       JSR    $8564
84C8: 20 2D          BRA    $84F7
84CA: BD 8A C6       JSR    $8AC6
84CD: 20 28          BRA    $84F7
84CF: A6 88 48       LDA    $48,X
84D2: 10 27 02 43    LBEQ   $8719
84D6: B6 38 04       LDA    dsw_1_3804
84D9: 43             COMA
84DA: 84 C0          ANDA   #$C0
84DC: 81 C0          CMPA   #$C0
84DE: 27 09          BEQ    $84E9
84E0: A6 88 48       LDA    $48,X
84E3: 8B 99          ADDA   #$99
84E5: 19             DAA
84E6: A7 88 48       STA    $48,X
84E9: BD FC AA       JSR    $FCAA
l_84ec:
84EC: 6F 88 4C       CLR    $4C,X
84EF: FC 0E 5D       LDD    $0E5D
84F2: 26 03          BNE    $84F7
84F4: BD FC BE       JSR    $FCBE
84F7: 39             RTS

play_intro_animation_84f8:
84F8: 96 36          LDA    $36
84FA: 26 07          BNE    $8503
84FC: 86 05          LDA    #$05
84FE: 97 4B          STA    $4B
8500: BD B3 EC       JSR    $B3EC
8503: BD B3 31       JSR    push_player_sprites_b331
8506: B6 0E 71       LDA    nmi_active_flag_0e71
8509: 8A 80          ORA    #$80
850B: B7 0E 71       STA    nmi_active_flag_0e71
850E: 7F 0E 3E       CLR    irq_sync_flag_0e3e
; block things in nmi
8511: 0F 22          CLR    interrupt_status_22
8513: F6 21 FD       LDB    $21FD
8516: 34 04          PSHS   B
8518: BD FF 1A       JSR    subcpu_processing_ff1a
851B: BD B3 F6       JSR    push_sprites_in_pre_shadow_memory_b3f6
851E: BD B3 50       JSR    push_some_sprites_b350
8521: BD B4 00       JSR    $B400
8524: BD FE AD       JSR    clear_sprite_slots_fead
8527: BD FD F9       JSR    $FDF9
852A: BD 84 45       JSR    $8445
; wait for sync
852D: B6 0E 3E       LDA    irq_sync_flag_0e3e
8530: 27 FB          BEQ    $852D
8532: BD 8A B5       JSR    wait_subcpu_reply_8ab5
8535: 35 04          PULS   B
8537: BD FE AD       JSR    clear_sprite_slots_fead
; activate bit in 22 so nmi runs fully
853A: 96 22          LDA    interrupt_status_22
853C: 8A 01          ORA    #$01
853E: 97 22          STA    interrupt_status_22
8540: 7F 38 0B       CLR    nmi_ack_380b		; skipping this doesn't change a thing
; wait for NMI to happen
8543: 96 22          LDA    interrupt_status_22
8545: 84 02          ANDA   #$02
8547: 27 FA          BEQ    $8543
8549: 0C 51          INC    $51
; wait for intro to end
854B: B6 0E 30       LDA    intro_anim_flag_0e30
854E: 84 03          ANDA   #$03
8550: 81 03          CMPA   #$03
8552: 26 BA          BNE    $850E
; intro loop ended, return
8554: 96 36          LDA    $36
8556: 84 01          ANDA   #$01
8558: 10 8E 85 62    LDY    #$8562
855C: A6 A6          LDA    A,Y
855E: BD FE B0       JSR    display_credit_feb0
8561: 39             RTS

8564: 86 80          LDA    #$80
8566: B7 0E 52       STA    $0E52
8569: 86 FE          LDA    #$FE
856B: B7 38 0E       STA    sound_irq_380e
856E: C6 FF          LDB    #$FF
8570: 5A             DECB
8571: 26 FD          BNE    $8570
8573: 4F             CLRA
8574: BD FA DA       JSR    $FADA
8577: 7F 0E 3F       CLR    $0E3F
857A: 7F 0E 15       CLR    $0E15
857D: 86 0C          LDA    #$0C
857F: BD FE B6       JSR    $FEB6
8582: 96 36          LDA    $36
8584: 81 03          CMPA   #$03
8586: 27 5D          BEQ    $85E5
8588: 81 02          CMPA   #$02
858A: 26 04          BNE    $8590
858C: 0D 37          TST    $37
858E: 27 55          BEQ    $85E5
8590: 0F 38          CLR    $38
8592: B6 0E 71       LDA    nmi_active_flag_0e71
8595: 84 7F          ANDA   #$7F
8597: B7 0E 71       STA    nmi_active_flag_0e71
859A: 10 8E 86 E0    LDY    #$86E0
859E: 96 36          LDA    $36
85A0: A6 A6          LDA    A,Y
85A2: 81 FF          CMPA   #$FF
85A4: 27 3F          BEQ    $85E5
85A6: 1F 89          TFR    A,B
85A8: BD FE B0       JSR    display_credit_feb0
85AB: 86 14          LDA    #$14
85AD: BD FE B0       JSR    display_credit_feb0
85B0: 86 40          LDA    #$40
85B2: BD B7 56       JSR    vbl_delay_b756
85B5: 1F 98          TFR    B,A
85B7: 8A 80          ORA    #$80
85B9: BD FE B0       JSR    display_credit_feb0
85BC: 86 94          LDA    #$94
85BE: BD FE B0       JSR    display_credit_feb0
85C1: 96 36          LDA    $36
85C3: 10 8E 86 E8    LDY    #$86E8
85C7: A6 A6          LDA    A,Y
85C9: 34 02          PSHS   A
85CB: 8E 03 A2       LDX    #$03A2
85CE: F6 03 A2       LDB    $03A2
85D1: 2A 03          BPL    $85D6
85D3: BD FA F8       JSR    $FAF8
85D6: 30 88 5E       LEAX   $5E,X
85D9: F6 04 00       LDB    $0400
85DC: 2A 05          BPL    $85E3
85DE: A6 E4          LDA    ,S
85E0: BD FA F8       JSR    $FAF8
85E3: 35 02          PULS   A
85E5: 96 36          LDA    $36
85E7: 81 02          CMPA   #$02
85E9: 26 04          BNE    $85EF
85EB: 0D 37          TST    $37
85ED: 27 0D          BEQ    $85FC
85EF: 10 8E 86 E4    LDY    #$86E4
85F3: A6 A6          LDA    A,Y
85F5: 81 FF          CMPA   #$FF
85F7: 27 03          BEQ    $85FC
85F9: BD FE B6       JSR    $FEB6
85FC: B6 0E 71       LDA    nmi_active_flag_0e71
85FF: 8A 80          ORA    #$80
8601: B7 0E 71       STA    nmi_active_flag_0e71
8604: 7F 0E 3E       CLR    irq_sync_flag_0e3e
8607: 0F 22          CLR    interrupt_status_22
8609: F6 21 FD       LDB    $21FD
860C: 34 04          PSHS   B
860E: BD FF 1A       JSR    subcpu_processing_ff1a
8611: BD FE F5       JSR    $FEF5
8614: BD B7 9A       JSR    $B79A
8617: 96 36          LDA    $36
8619: 81 04          CMPA   #$04
861B: 27 18          BEQ    $8635
861D: 5D             TSTB
861E: 27 18          BEQ    $8638
8620: BD AE BE       JSR    $AEBE
8623: BD FD 0C       JSR    $FD0C
8626: BD FD 15       JSR    $FD15
8629: BD FE D7       JSR    $FED7
862C: BD 84 45       JSR    $8445
862F: BD FD F9       JSR    $FDF9
8632: BD B7 AD       JSR    call_bank3_b7ad
8635: BD 86 EC       JSR    $86EC
8638: B6 0E 3E       LDA    irq_sync_flag_0e3e
863B: 27 FB          BEQ    $8638
863D: BD 8A B5       JSR    wait_subcpu_reply_8ab5
8640: 35 04          PULS   B
8642: BD FE AD       JSR    clear_sprite_slots_fead
8645: 96 22          LDA    interrupt_status_22
8647: 8A 01          ORA    #$01
8649: 97 22          STA    interrupt_status_22
864B: 7F 38 0B       CLR    nmi_ack_380b
864E: 96 22          LDA    interrupt_status_22
8650: 84 02          ANDA   #$02
8652: 27 FA          BEQ    $864E
8654: B6 0E 2D       LDA    $0E2D
8657: 84 3F          ANDA   #$3F
8659: 26 12          BNE    $866D
865B: B6 03 A2       LDA    $03A2
865E: BA 04 00       ORA    $0400
8661: 2B 0A          BMI    $866D
8663: B6 03 EA       LDA    $03EA
8666: BA 04 48       ORA    $0448
8669: 10 27 02 45    LBEQ   $88B2
866D: 0C 51          INC    $51
866F: B6 0E 2D       LDA    $0E2D
8672: 81 FF          CMPA   #$FF
8674: 26 8E          BNE    $8604
8676: 96 36          LDA    $36
8678: 81 03          CMPA   #$03
867A: 26 28          BNE    $86A4
867C: 96 38          LDA    $38
867E: 27 24          BEQ    $86A4
8680: 96 29          LDA    number_of_players_flag_0029
8682: 84 03          ANDA   #$03
8684: 81 03          CMPA   #$03
8686: 26 1C          BNE    $86A4
8688: B6 09 F2       LDA    $09F2
868B: 84 3F          ANDA   #$3F
868D: B7 09 F2       STA    $09F2
8690: B6 0E 71       LDA    nmi_active_flag_0e71
8693: 84 7F          ANDA   #$7F
8695: B7 0E 71       STA    nmi_active_flag_0e71
8698: 86 80          LDA    #$80
869A: BD B7 56       JSR    vbl_delay_b756
869D: 86 8F          LDA    #$8F
869F: BD FE B0       JSR    display_credit_feb0
86A2: 20 03          BRA    $86A7
86A4: 7F 09 F2       CLR    $09F2
86A7: 7F 0E 2D       CLR    $0E2D
86AA: 7F 0E 2E       CLR    $0E2E
86AD: 96 36          LDA    $36
86AF: 81 04          CMPA   #$04
86B1: 26 0F          BNE    $86C2
86B3: 7F 09 F2       CLR    $09F2
86B6: 7F 0E 71       CLR    nmi_active_flag_0e71
86B9: 0D 21          TST    nb_credits_0021
86BB: 10 26 FA 99    LBNE   coin_inserted_8158
86BF: 7E 80 BA       JMP    $80BA
86C2: 81 03          CMPA   #$03
86C4: 10 26 FC 31    LBNE   $82F9
86C8: 0D 38          TST    $38
86CA: 10 27 FC 2B    LBEQ   $82F9
86CE: 96 29          LDA    number_of_players_flag_0029
86D0: 84 03          ANDA   #$03
86D2: 81 03          CMPA   #$03
86D4: 10 26 FC 21    LBNE   $82F9
86D8: 86 09          LDA    #$09
86DA: BD FE B6       JSR    $FEB6
86DD: 7E 83 7E       JMP    activate_nmi_flag_837e

86EC: 96 36          LDA    $36
86EE: 81 03          CMPA   #$03
86F0: 26 26          BNE    $8718
86F2: 96 29          LDA    number_of_players_flag_0029
86F4: 84 03          ANDA   #$03
86F6: 81 03          CMPA   #$03
86F8: 27 1E          BEQ    $8718
86FA: 8E 03 A2       LDX    #$03A2
86FD: 0F 2A          CLR    $2A
86FF: A6 88 4C       LDA    $4C,X
8702: 85 20          BITA   #$20
8704: 27 03          BEQ    $8709
8706: BD FF 54       JSR    $FF54
8709: 30 88 5E       LEAX   $5E,X
870C: 0C 2A          INC    $2A
870E: A6 88 4C       LDA    $4C,X
8711: 85 20          BITA   #$20
8713: 27 03          BEQ    $8718
8715: BD FF 54       JSR    $FF54
8718: 39             RTS

8719: 34 76          PSHS   U,Y,X,D
871B: 8E 03 A2       LDX    #$03A2
871E: CE 04 00       LDU    #$0400
8721: 0D 2A          TST    $2A
8723: 27 06          BEQ    $872B
8725: 30 88 5E       LEAX   $5E,X
8728: CE 03 A2       LDU    #$03A2
872B: A6 88 4C       LDA    $4C,X
872E: 84 20          ANDA   #$20
8730: 27 0A          BEQ    $873C
8732: 6D 88 48       TST    $48,X
8735: 26 05          BNE    $873C
8737: BD FF 54       JSR    $FF54
873A: 20 21          BRA    $875D
873C: 96 29          LDA    number_of_players_flag_0029
873E: D6 2A          LDB    $2A
8740: 10 8E 87 D1    LDY    #$87D1
8744: A4 A5          ANDA   B,Y
8746: 97 29          STA    number_of_players_flag_0029
8748: BD FD A0       JSR    save_and_switch_to_bank_1_fda0
874B: BD 40 99       JSR    lb1_4099
874E: 34 01          PSHS   CC
8750: BD FD B2       JSR    restore_previous_bank_fdb2
8753: 35 01          PULS   CC
8755: 25 06          BCS    $875D
8757: BD 87 D5       JSR    $87D5
875A: BD 87 5F       JSR    $875F
875D: 35 F6          PULS   D,X,Y,U,PC
875F: 34 36          PSHS   Y,X,D
8761: 0D 21          TST    nb_credits_0021
8763: 27 68          BEQ    $87CD
8765: F6 38 00       LDB    port_1_3800
8768: 53             COMB
8769: C4 C0          ANDB   #$C0
876B: 27 60          BEQ    $87CD
876D: 0D 2A          TST    $2A
876F: 26 06          BNE    $8777
8771: C1 40          CMPB   #$40
8773: 26 58          BNE    $87CD
8775: 27 04          BEQ    $877B
8777: C1 40          CMPB   #$40
8779: 27 52          BEQ    $87CD
877B: 96 21          LDA    nb_credits_0021
877D: 8B 99          ADDA   #$99
877F: 19             DAA
8780: 97 21          STA    nb_credits_0021
8782: 96 2A          LDA    $2A
8784: 97 00          STA    $00
8786: BD 82 6F       JSR    $826F
8789: 10 8E 00 00    LDY    #$0000
878D: 96 2A          LDA    $2A
878F: E6 A6          LDB    A,Y
8791: E7 88 48       STB    $48,X
8794: CC 00 00       LDD    #$0000
8797: A7 88 4D       STA    $4D,X
879A: A7 88 4C       STA    $4C,X
879D: ED 88 49       STD    $49,X
87A0: A7 88 4B       STA    $4B,X
87A3: 86 00          LDA    #$00
87A5: 0D 2A          TST    $2A
87A7: 27 02          BEQ    $87AB
87A9: 86 05          LDA    #$05
87AB: BD FE B3       JSR    $FEB3
87AE: 96 29          LDA    number_of_players_flag_0029
87B0: D6 2A          LDB    $2A
87B2: 10 8E 87 D1    LDY    #$87D1
87B6: CB 02          ADDB   #$02
87B8: AA A5          ORA    B,Y
87BA: 97 29          STA    number_of_players_flag_0029
87BC: 10 8E 87 CF    LDY    #$87CF
87C0: D6 2A          LDB    $2A
87C2: A6 A5          LDA    B,Y
87C4: BD FE B0       JSR    display_credit_feb0
87C7: BD FC AA       JSR    $FCAA
87CA: BD FC BE       JSR    $FCBE
87CD: 35 B6          PULS   D,X,Y,PC

87D5: 32 7D          LEAS   -$3,S
87D7: 7C 0E 34       INC    $0E34
87DA: B6 0E 34       LDA    $0E34
87DD: 10 8E 88 41    LDY    #$8841
87E1: F6 0E 35       LDB    $0E35
87E4: 59             ROLB
87E5: 59             ROLB
87E6: C4 01          ANDB   #$01
87E8: A1 A5          CMPA   B,Y
87EA: 25 52          BCS    $883E
87EC: 7F 0E 34       CLR    $0E34
87EF: E7 E4          STB    ,S
87F1: 10 8E 88 43    LDY    #$8843
87F5: 0D 29          TST    number_of_players_flag_0029
87F7: 2B 0A          BMI    $8803
87F9: 31 26          LEAY   $6,Y
87FB: 5F             CLRB
87FC: 0D 21          TST    nb_credits_0021
87FE: 26 01          BNE    $8801
8800: 5C             INCB
8801: 20 18          BRA    $881B
8803: F6 0E 35       LDB    $0E35
8806: C4 01          ANDB   #$01
8808: 96 2A          LDA    $2A
880A: 48             ASLA
880B: 9B 2A          ADDA   $2A
880D: A7 61          STA    $1,S
880F: 1F 98          TFR    B,A
8811: EB 61          ADDB   $1,S
8813: 4D             TSTA
8814: 27 05          BEQ    $881B
8816: 0D 21          TST    nb_credits_0021
8818: 27 01          BEQ    $881B
881A: 5C             INCB
881B: A6 A5          LDA    B,Y
881D: 6D E4          TST    ,S
881F: 26 12          BNE    $8833
8821: 86 8B          LDA    #$8B
8823: 0D 2A          TST    $2A
8825: 27 02          BEQ    $8829
8827: 86 8C          LDA    #$8C
8829: F6 0E 35       LDB    $0E35
882C: C8 81          EORB   #$81
882E: F7 0E 35       STB    $0E35
8831: 20 08          BRA    $883B
8833: F6 0E 35       LDB    $0E35
8836: C8 80          EORB   #$80
8838: F7 0E 35       STB    $0E35
883B: BD FE B0       JSR    display_credit_feb0
883E: 32 63          LEAS   $3,S
8840: 39             RTS

884B: 7F 0E 71       CLR    nmi_active_flag_0e71
884E: B6 03 EE       LDA    $03EE
8851: 48             ASLA
8852: BA 04 4C       ORA    $044C
8855: 84 60          ANDA   #$60
8857: 26 08          BNE    $8861
8859: B6 03 EA       LDA    $03EA
885C: BA 04 48       ORA    $0448
885F: 27 51          BEQ    $88B2
8861: 8E 03 A2       LDX    #$03A2
8864: 0F 2A          CLR    $2A
8866: B6 03 EA       LDA    $03EA
8869: 27 05          BEQ    $8870
886B: BD 84 D6       JSR    $84D6
886E: 20 0A          BRA    $887A
8870: A6 88 4C       LDA    $4C,X
8873: 84 20          ANDA   #$20
8875: 27 03          BEQ    $887A
8877: BD FF 54       JSR    $FF54
887A: 30 88 5E       LEAX   $5E,X
887D: 0C 2A          INC    $2A
887F: B6 04 48       LDA    $0448
8882: 27 05          BEQ    $8889
8884: BD 84 D6       JSR    $84D6
8887: 20 0A          BRA    $8893
8889: A6 88 4C       LDA    $4C,X
888C: 84 20          ANDA   #$20
888E: 27 03          BEQ    $8893
8890: BD FF 54       JSR    $FF54
8893: 0F 2A          CLR    $2A
8895: 85 40          BITA   #$40
8897: 27 08          BEQ    $88A1
8899: 7D 03 EA       TST    $03EA
889C: 26 03          BNE    $88A1
889E: BD 87 19       JSR    $8719
88A1: 0C 2A          INC    $2A
88A3: 85 20          BITA   #$20
88A5: 27 08          BEQ    $88AF
88A7: 7D 04 48       TST    $0448
88AA: 26 03          BNE    $88AF
88AC: BD 87 19       JSR    $8719
88AF: 7E 83 7E       JMP    activate_nmi_flag_837e
88B2: 7F 0E 71       CLR    nmi_active_flag_0e71
88B5: 86 8B          LDA    #$8B
88B7: BD FE B0       JSR    display_credit_feb0
88BA: 86 8C          LDA    #$8C
88BC: BD FE B0       JSR    display_credit_feb0
88BF: 86 09          LDA    #$09
88C1: BD FE B0       JSR    display_credit_feb0
88C4: 96 29          LDA    number_of_players_flag_0029
88C6: 2A 05          BPL    $88CD
88C8: 86 0A          LDA    #$0A
88CA: BD FE B0       JSR    display_credit_feb0
88CD: 86 80          LDA    #$80
88CF: BD B7 56       JSR    vbl_delay_b756
88D2: 86 8B          LDA    #$8B
88D4: BD FE B0       JSR    display_credit_feb0
88D7: 86 8C          LDA    #$8C
88D9: BD FE B0       JSR    display_credit_feb0
88DC: CC 02 80       LDD    #$0280
88DF: FD 0E 4D       STD    $0E4D
88E2: 96 36          LDA    $36
88E4: 81 03          CMPA   #$03
88E6: 26 04          BNE    $88EC
88E8: 0D 37          TST    $37
88EA: 26 31          BNE    $891D
88EC: BD 89 47       JSR    $8947
88EF: 0F 2A          CLR    $2A
88F1: 8E 03 A2       LDX    #$03A2
88F4: BD 87 5F       JSR    $875F
88F7: B6 03 A2       LDA    $03A2
88FA: 2B 35          BMI    $8931
88FC: 96 29          LDA    number_of_players_flag_0029
88FE: 2A 0D          BPL    $890D
8900: 0C 2A          INC    $2A
8902: 30 88 5E       LEAX   $5E,X
8905: BD 87 5F       JSR    $875F
8908: B6 04 00       LDA    $0400
890B: 2B 24          BMI    $8931
890D: 86 01          LDA    #$01
890F: BD B7 56       JSR    vbl_delay_b756
8912: FC 0E 4D       LDD    $0E4D
8915: 83 00 01       SUBD   #$0001
8918: FD 0E 4D       STD    $0E4D
891B: 26 CF          BNE    $88EC
891D: BD FE 9B       JSR    clear_bg_screen_fe9b
8920: BD FE 98       JSR    clear_fg_screen_fe98
8923: BD FE 9E       JSR    clear_sprite_memory_fe9e
8926: 0D 21          TST    nb_credits_0021
8928: 10 26 F8 2C    LBNE   coin_inserted_8158
892C: 0F 26          CLR    game_in_play_0026
892E: 7E 80 BA       JMP    $80BA
8931: 86 8B          LDA    #$8B
8933: BD FE B0       JSR    display_credit_feb0
8936: 86 8C          LDA    #$8C
8938: BD FE B0       JSR    display_credit_feb0
893B: 86 40          LDA    #$40
893D: B6 0E 52       LDA    $0E52
8940: 10 26 FC B8    LBNE   $85FC
8944: 7E 83 7E       JMP    activate_nmi_flag_837e
8947: 32 7E          LEAS   -$2,S
8949: 7C 0E 34       INC    $0E34
894C: B6 0E 34       LDA    $0E34
894F: 10 8E 88 41    LDY    #$8841
8953: F6 0E 35       LDB    $0E35
8956: C4 01          ANDB   #$01
8958: A1 A5          CMPA   B,Y
895A: 25 2C          BCS    $8988
895C: 86 21          LDA    #$21
895E: A7 E4          STA    ,S
8960: 86 22          LDA    #$22
8962: A7 61          STA    $1,S
8964: 5D             TSTB
8965: 26 08          BNE    $896F
8967: 86 A1          LDA    #$A1
8969: A7 E4          STA    ,S
896B: 86 A2          LDA    #$A2
896D: A7 61          STA    $1,S
896F: 7F 0E 34       CLR    $0E34
8972: B6 0E 35       LDA    $0E35
8975: 88 01          EORA   #$01
8977: B7 0E 35       STA    $0E35
897A: A6 E4          LDA    ,S
897C: BD FE B0       JSR    display_credit_feb0
897F: 0D 29          TST    number_of_players_flag_0029
8981: 2A 05          BPL    $8988
8983: A6 61          LDA    $1,S
8985: BD FE B0       JSR    display_credit_feb0
8988: 86 04          LDA    #$04
898A: BD FE B3       JSR    $FEB3
898D: 32 62          LEAS   $2,S
898F: 39             RTS

check_for_coin_inserted_8990:    ; [global]
8990: 32 7E          LEAS   -$2,S
8992: B6 0E 71       LDA    nmi_active_flag_0e71
8995: B7 0E 72       STA    $0E72
8998: B6 38 01       LDA    port_2_3801		; bits 6 & 7 hold "coin inserted" bits
899B: 43             COMA					; negative logic
899C: F6 38 02       LDB    extra_3802
899F: 53             COMB
89A0: 54             LSRB
89A1: 46             RORA
89A2: 84 E0          ANDA   #$E0
89A4: 26 0D          BNE    $89B3
; game makes sure that the pulse stays a while? or not too long? never mind
89A6: D6 CC          LDB    $CC
89A8: C1 FF          CMPB   #$FF
89AA: 10 25 00 CA    LBCS   no_coin_inserted_8a78
89AE: 0C CC          INC    $CC
89B0: 7E 8A 78       JMP    no_coin_inserted_8a78
89B3: D6 CC          LDB    $CC
89B5: C1 23          CMPB   #$23
89B7: 25 F5          BCS    $89AE
89B9: 97 20          STA    $20
89BB: 0F CC          CLR    $CC
89BD: 7F 0E 71       CLR    nmi_active_flag_0e71
89C0: 17 00 BE       LBSR   coin_debounce_8a81
89C3: 10 27 00 B1    LBEQ   no_coin_inserted_8a78
89C7: 17 00 B7       LBSR   coin_debounce_8a81
89CA: 10 27 00 AA    LBEQ   no_coin_inserted_8a78
89CE: 17 00 B0       LBSR   coin_debounce_8a81
89D1: 10 27 00 A3    LBEQ   no_coin_inserted_8a78
89D5: 17 00 A9       LBSR   coin_debounce_8a81
89D8: 10 27 00 9C    LBEQ   no_coin_inserted_8a78
; at this point the game has checked that the coin has been inserted
; this didn't happen because of some parasiting or whatever
; this is the part which is super-protected, else the game could be hacked
89DC: B6 38 01       LDA    port_2_3801
89DF: 43             COMA
89E0: F6 38 02       LDB    extra_3802
89E3: 53             COMB
89E4: 54             LSRB
89E5: 46             RORA
89E6: 84 E0          ANDA   #$E0
89E8: 26 F2          BNE    $89DC
l_89ea:
89EA: 86 02          LDA    #$02
89EC: B7 38 0E       STA    sound_irq_380e
89EF: 6F E4          CLR    ,S
89F1: 5F             CLRB
89F2: 96 20          LDA    $20
89F4: 2B 0F          BMI    $8A05
89F6: F6 38 03       LDB    dsw_0_3803
89F9: 53             COMB
89FA: C4 3F          ANDB   #$3F
89FC: 48             ASLA
89FD: 48             ASLA
89FE: 24 05          BCC    $8A05
8A00: 6C E4          INC    ,S
8A02: 54             LSRB
8A03: 54             LSRB
8A04: 54             LSRB
8A05: C4 07          ANDB   #$07
8A07: E7 61          STB    $1,S
8A09: 0F CC          CLR    $CC
8A0B: 10 8E 00 2D    LDY    #$002D
8A0F: 8E 8A 98       LDX    #$8A98
8A12: A6 E4          LDA    ,S
8A14: E6 A6          LDB    A,Y
8A16: CB 01          ADDB   #$01
8A18: E7 A6          STB    A,Y
8A1A: 1F 98          TFR    B,A
8A1C: E6 61          LDB    $1,S
8A1E: A1 85          CMPA   B,X
8A20: 25 56          BCS    no_coin_inserted_8a78
8A22: A6 E4          LDA    ,S
8A24: 6F A6          CLR    A,Y
8A26: 8E 8A A0       LDX    #$8AA0
8A29: 96 21          LDA    nb_credits_0021
8A2B: AB 85          ADDA   B,X
8A2D: 19             DAA
8A2E: 24 02          BCC    $8A32
8A30: 86 99          LDA    #$99
8A32: 97 21          STA    nb_credits_0021
8A34: B6 0B 03       LDA    $0B03
8A37: 2B 15          BMI    $8A4E
8A39: 96 3A          LDA    bank_switch_copy_3a
8A3B: 34 02          PSHS   A
8A3D: 84 1F          ANDA   #$1F
8A3F: 97 3A          STA    bank_switch_copy_3a
8A41: B7 38 08       STA    bankswitch_3808
8A44: BD 84 4A       JSR    $844A
8A47: 35 02          PULS   A
8A49: 97 3A          STA    bank_switch_copy_3a
8A4B: B7 38 08       STA    bankswitch_3808
8A4E: 96 26          LDA    game_in_play_0026
8A50: 26 26          BNE    no_coin_inserted_8a78
8A52: 10 CE 0F FF    LDS    #$0FFF
8A56: CE 0E FF       LDU    #$0EFF
8A59: 7F 0E 71       CLR    nmi_active_flag_0e71
8A5C: 7F 38 0D       CLR    irq_ack_380d		
8A5F: 86 44          LDA    #$44
8A61: 97 22          STA    interrupt_status_22
8A63: 0C 26          INC    game_in_play_0026
8A65: 1C AF          ANDCC  #$AF
8A67: 86 01          LDA    #$01
8A69: BD B7 56       JSR    vbl_delay_b756
8A6C: 96 3A          LDA    bank_switch_copy_3a
8A6E: 84 1F          ANDA   #$1F
8A70: 97 3A          STA    bank_switch_copy_3a
8A72: B7 38 08       STA    bankswitch_3808
8A75: 7E 81 58       JMP    coin_inserted_8158
no_coin_inserted_8a78:
8A78: 32 62          LEAS   $2,S
8A7A: F6 0E 72       LDB    $0E72
8A7D: F7 0E 71       STB    nmi_active_flag_0e71
8A80: 39             RTS

coin_debounce_8a81:
8A81: 8E 01 F9       LDX    #$01F9
8A84: 30 1F          LEAX   -$1,X
8A86: 8C 00 00       CMPX   #$0000
8A89: 26 F9          BNE    $8A84
8A8B: B6 38 01       LDA    port_2_3801
8A8E: 43             COMA
8A8F: F6 38 02       LDB    extra_3802
8A92: 53             COMB
8A93: 54             LSRB
8A94: 46             RORA
8A95: 94 20          ANDA   $20
8A97: 39             RTS

8AA8: 96 26          LDA    game_in_play_0026
8AAA: 26 08          BNE    $8AB4
8AAC: 86 99          LDA    #$99
8AAE: B7 03 C1       STA    $03C1
8AB1: B7 04 1F       STA    $041F
8AB4: 39             RTS

wait_subcpu_reply_8ab5:
8AB5: 96 3A          LDA    bank_switch_copy_3a
8AB7: 8A 10          ORA    #$10
8AB9: 97 3A          STA    bank_switch_copy_3a
8ABB: B7 38 08       STA    bankswitch_3808		; trigger subcpu IRQ
; wait for subcpu reply
8ABE: B6 38 02       LDA    extra_3802
8AC1: 84 10          ANDA   #$10
8AC3: 26 F9          BNE    $8ABE
8AC5: 39             RTS

8AC6: 34 7E          PSHS   U,Y,X,DP,D
8AC8: 5F             CLRB
8AC9: 1F 9B          TFR    B,DP
8ACB: 17 00 BD       LBSR   $8B8B
8ACE: D6 51          LDB    $51
8AD0: C4 01          ANDB   #$01
8AD2: D1 2A          CMPB   $2A
8AD4: 27 13          BEQ    $8AE9
8AD6: A6 01          LDA    $1,X
8AD8: 81 16          CMPA   #$16
8ADA: 27 04          BEQ    $8AE0
8ADC: 96 2A          LDA    $2A
8ADE: A7 01          STA    $1,X
8AE0: BD A8 F6       JSR    $A8F6
8AE3: BD A8 E1       JSR    $A8E1
8AE6: BD FD 18       JSR    $FD18
8AE9: BD FE D4       JSR    $FED4
8AEC: A6 88 21       LDA    nb_credits_0021,X
8AEF: 27 08          BEQ    $8AF9
8AF1: 10 AE 88 41    LDY    $41,X
8AF5: A6 03          LDA    $3,X
8AF7: A7 23          STA    $3,Y
8AF9: A6 88 1B       LDA    $1B,X
8AFC: 84 3F          ANDA   #$3F
8AFE: 81 00          CMPA   #$00
8B00: 27 13          BEQ    $8B15
8B02: 81 19          CMPA   #$19
8B04: 25 07          BCS    $8B0D
8B06: 86 00          LDA    #$00
8B08: A7 88 1B       STA    $1B,X
8B0B: 20 08          BRA    $8B15
8B0D: D6 51          LDB    $51
8B0F: C4 01          ANDB   #$01
8B11: D1 2A          CMPB   $2A
8B13: 27 1E          BEQ    $8B33
8B15: 48             ASLA
8B16: 10 8E 8B 59    LDY   #jump_table_8b59
8B1A: AD B6          JSR    [A,Y]        ; [indirect_jump] [nb_entries=25]
8B1C: BD FD 12       JSR    $FD12
8B1F: BD FD 00       JSR    $FD00
8B22: BD FD 03       JSR    $FD03
8B25: BD FC B4       JSR    $FCB4
8B28: BD 8D 12       JSR    $8D12
8B2B: BD FD 06       JSR    $FD06
8B2E: 25 03          BCS    $8B33
8B30: BD FD 09       JSR    $FD09
8B33: A6 84          LDA    ,X
8B35: 84 C0          ANDA   #$C0
8B37: 81 C0          CMPA   #$C0
8B39: 27 11          BEQ    $8B4C
8B3B: 6A 88 2C       DEC    $2C,X
8B3E: 26 06          BNE    $8B46
8B40: A6 84          LDA    ,X
8B42: 8A 40          ORA    #$40
8B44: A7 84          STA    ,X
8B46: 96 51          LDA    $51
8B48: 84 04          ANDA   #$04
8B4A: 27 03          BEQ    $8B4F
8B4C: BD FF 10       JSR    push_one_sprite_entry_ff10
8B4F: A6 88 34       LDA    $34,X
8B52: 84 0C          ANDA   #$0C
8B54: A7 88 34       STA    $34,X
8B57: 35 FE          PULS   D,DP,X,Y,U,PC

8B8B: 34 7E          PSHS   U,Y,X,DP,D
8B8D: 17 73 29       LBSR   $FEB9
8B90: 1F 89          TFR    A,B
8B92: 84 70          ANDA   #$70
8B94: A7 88 43       STA    $43,X
8B97: A7 E4          STA    ,S
8B99: A8 88 44       EORA   $44,X
8B9C: A4 E4          ANDA   ,S
8B9E: 44             LSRA
8B9F: 44             LSRA
8BA0: 44             LSRA
8BA1: 44             LSRA
8BA2: A7 88 40       STA    $40,X
8BA5: A6 E4          LDA    ,S
8BA7: A7 88 44       STA    $44,X
8BAA: C4 0F          ANDB   #$0F
8BAC: 10 8E 8B BD    LDY    #$8BBD
8BB0: A6 A5          LDA    B,Y
8BB2: A7 88 45       STA    $45,X
8BB5: A7 88 50       STA    $50,X
8BB8: BD FE 86       JSR    $FE86
8BBB: 35 FE          PULS   D,DP,X,Y,U,PC

8BCD: 34 7E          PSHS   U,Y,X,DP,D                                   
8BCF: A6 88 1B       LDA    $1B,X                                        
8BD2: 2B 39          BMI    $8C0D
8BD4: BD A5 29       JSR    $A529
8BD7: A6 84          LDA    ,X
8BD9: 84 F0          ANDA   #$F0
8BDB: 8A 01          ORA    #$01
8BDD: A7 84          STA    ,X
8BDF: A6 88 15       LDA    $15,X
8BE2: 84 BF          ANDA   #$BF
8BE4: A7 88 15       STA    $15,X
8BE7: A6 88 16       LDA    $16,X
8BEA: 84 F9          ANDA   #$F9
8BEC: A7 88 16       STA    $16,X
8BEF: 86 07          LDA    #$07
8BF1: AA 03          ORA    $3,X
8BF3: A7 02          STA    $2,X
8BF5: 6F 88 37       CLR    $37,X
8BF8: A6 88 21       LDA    nb_credits_0021,X
8BFB: 81 08          CMPA   #$08
8BFD: 24 0E          BCC    $8C0D
8BFF: 10 8E 8C 19    LDY    #$8C19
8C03: A6 A6          LDA    A,Y
8C05: 26 06          BNE    $8C0D
8C07: A6 02          LDA    $2,X
8C09: 8B 4A          ADDA   #$4A
8C0B: A7 02          STA    $2,X
8C0D: A6 88 37       LDA    $37,X
8C10: 48             ASLA
8C11: 10 8E 8C 21    LDY   #jump_table_8c21
8C15: AD B6          JSR    [A,Y]		; [indirect_jump] [nb_entries=10]
8C17: 35 FE          PULS   D,DP,X,Y,U,PC

	
8C35: A6 88 45       LDA    $45,X                                        
8C38: 84 0F          ANDA   #$0F
8C3A: 81 00          CMPA   #$00
8C3C: 27 4D          BEQ    $8C8B
8C3E: 10 8E 8C C1    LDY    #$8CC1
8C42: E6 A6          LDB    A,Y
8C44: C1 FF          CMPB   #$FF
8C46: 27 02          BEQ    $8C4A
8C48: E7 03          STB    $3,X
8C4A: 10 8E 8E 5B    LDY    #$8E5B
8C4E: E6 A6          LDB    A,Y
8C50: E7 88 37       STB    $37,X
8C53: 10 8E 8E 73    LDY    #$8E73
8C57: E6 A6          LDB    A,Y
8C59: EB 88 18       ADDB   $18,X
8C5C: 10 8E 8C 19    LDY    #$8C19
8C60: A6 88 21       LDA    nb_credits_0021,X
8C63: 81 08          CMPA   #$08
8C65: 24 06          BCC    $8C6D
8C67: A6 A6          LDA    A,Y
8C69: 26 02          BNE    $8C6D
8C6B: CB 4A          ADDB   #$4A
8C6D: EA 03          ORB    $3,X
8C6F: E7 02          STB    $2,X
8C71: 6C 88 19       INC    $19,X
8C74: A6 88 19       LDA    $19,X
8C77: 81 08          CMPA   #$08
8C79: 25 10          BCS    $8C8B
8C7B: 6F 88 19       CLR    $19,X
8C7E: 6C 88 18       INC    $18,X
8C81: A6 88 18       LDA    $18,X
8C84: 81 04          CMPA   #$04
8C86: 25 03          BCS    $8C8B
8C88: 6F 88 18       CLR    $18,X
8C8B: 10 8E 8C AF    LDY    #$8CAF
8C8F: A6 88 50       LDA    $50,X
8C92: 48             ASLA
8C93: 31 A6          LEAY   A,Y
8C95: A6 A0          LDA    ,Y+
8C97: A7 0D          STA    $D,X
8C99: A6 A4          LDA    ,Y
8C9B: A7 0E          STA    $E,X
8C9D: BD 8E 7C       JSR    $8E7C
8CA0: 25 0C          BCS    $8CAE
8CA2: BD 8E 89       JSR    $8E89
8CA5: BD 8C CA       JSR    $8CCA
8CA8: BD 8D A2       JSR    $8DA2
8CAB: BD FD 7A       JSR    $FD7A
8CAE: 39             RTS

8CCA: 10 8E 0B 31    LDY    #$0B31                                       
8CCE: EC 04          LDD    $4,X
8CD0: ED A4          STD    ,Y
8CD2: EC 06          LDD    $6,X
8CD4: ED 22          STD    $2,Y
8CD6: EC 08          LDD    $8,X
8CD8: ED 24          STD    $4,Y
8CDA: A6 03          LDA    $3,X
8CDC: A7 2C          STA    $C,Y
8CDE: BD FE 80       JSR    $FE80
8CE1: BD FD A0       JSR    save_and_switch_to_bank_1_fda0
8CE4: BD 40 8A       JSR    lb1_408A
8CE7: BD 40 A8       JSR    lb1_40A8
8CEA: BD 40 AB       JSR    lb1_40AB
8CED: BD FD B2       JSR    restore_previous_bank_fdb2
8CF0: EC 04          LDD    $4,X
8CF2: ED 26          STD    $6,Y
8CF4: EC 06          LDD    $6,X
8CF6: ED 28          STD    $8,Y
8CF8: EC 08          LDD    $8,X
8CFA: ED 2A          STD    $A,Y
8CFC: BD 90 4B       JSR    $904B
8CFF: BD FD 84       JSR    call_bank_4_4000_fd84
8D02: FC 0B 4E       LDD    $0B4E
8D05: ED 04          STD    $4,X
8D07: FC 0B 50       LDD    $0B50
8D0A: ED 06          STD    $6,X
8D0C: FC 0B 52       LDD    $0B52
8D0F: ED 08          STD    $8,X
8D11: 39             RTS
8D12: 34 7E          PSHS   U,Y,X,DP,D
8D14: 32 7A          LEAS   -$6,S
8D16: A6 05          LDA    $5,X
8D18: E6 0A          LDB    $A,X
8D1A: 93 3D          SUBD   $3D
8D1C: ED 88 38       STD    $38,X
8D1F: 6F E4          CLR    ,S
8D21: A6 07          LDA    $7,X
8D23: E6 0B          LDB    $B,X
8D25: ED 61          STD    $1,S
8D27: A6 09          LDA    $9,X
8D29: E6 0C          LDB    $C,X
8D2B: E3 61          ADDD   $1,S
8D2D: ED 61          STD    $1,S
8D2F: A6 06          LDA    $6,X
8D31: 89 00          ADCA   #$00
8D33: AB 08          ADDA   $8,X
8D35: A7 E4          STA    ,S
8D37: EC 61          LDD    $1,S
8D39: 93 40          SUBD   $40
8D3B: ED 61          STD    $1,S
8D3D: A6 E4          LDA    ,S
8D3F: 82 00          SBCA   #$00
8D41: 90 3F          SUBA   $3F
8D43: A7 E4          STA    ,S
8D45: EC 61          LDD    $1,S
8D47: ED 88 3A       STD    bank_switch_copy_3a,X
8D4A: EC 88 38       LDD    $38,X
8D4D: 10 83 C1 00    CMPD   #$C100
8D51: 25 06          BCS    $8D59
8D53: CC C1 00       LDD    #$C100
8D56: ED 88 38       STD    $38,X
8D59: EC 88 38       LDD    $38,X
8D5C: 10 83 10 00    CMPD   #$1000
8D60: 24 06          BCC    $8D68
8D62: CC 10 00       LDD    #$1000
8D65: ED 88 38       STD    $38,X
8D68: EC 88 3A       LDD    bank_switch_copy_3a,X
8D6B: 10 83 C1 00    CMPD   #$C100
8D6F: 25 06          BCS    $8D77
8D71: CC C1 00       LDD    #$C100
8D74: ED 88 3A       STD    bank_switch_copy_3a,X
8D77: EC 88 3A       LDD    bank_switch_copy_3a,X
8D7A: 10 83 10 00    CMPD   #$1000
8D7E: 24 06          BCC    $8D86
8D80: CC 10 00       LDD    #$1000
8D83: ED 88 3A       STD    bank_switch_copy_3a,X
8D86: DC 3C          LDD    $3C
8D88: C3 00 C1       ADDD   #$00C1
8D8B: 10 A3 04       CMPD   $4,X
8D8E: 24 02          BCC    $8D92
8D90: ED 04          STD    $4,X
8D92: DC 3C          LDD    $3C
8D94: C3 00 30       ADDD   #$0030
8D97: 10 A3 04       CMPD   $4,X
8D9A: 25 02          BCS    $8D9E
8D9C: ED 04          STD    $4,X
8D9E: 32 66          LEAS   $6,S
8DA0: 35 FE          PULS   D,DP,X,Y,U,PC
8DA2: B6 0B 4D       LDA    $0B4D
8DA5: 85 0F          BITA   #$0F
8DA7: 26 12          BNE    $8DBB
8DA9: 84 F0          ANDA   #$F0
8DAB: 26 70          BNE    $8E1D
8DAD: B6 0B 4C       LDA    $0B4C
8DB0: 84 F0          ANDA   #$F0
8DB2: 26 69          BNE    $8E1D
8DB4: 86 11          LDA    #$11
8DB6: A7 88 1B       STA    $1B,X
8DB9: 20 62          BRA    $8E1D
8DBB: DC 3C          LDD    $3C
8DBD: C3 00 C0       ADDD   #$00C0
8DC0: 10 B3 0B 4E    CMPD   $0B4E
8DC4: 25 57          BCS    $8E1D
8DC6: A6 88 21       LDA    nb_credits_0021,X
8DC9: 81 03          CMPA   #$03
8DCB: 25 08          BCS    $8DD5
8DCD: 81 04          CMPA   #$04
8DCF: 27 04          BEQ    $8DD5
8DD1: 81 07          CMPA   #$07
8DD3: 26 48          BNE    $8E1D
8DD5: A6 88 32       LDA    $32,X
8DD8: 84 BF          ANDA   #$BF
8DDA: A7 88 32       STA    $32,X
8DDD: A6 88 31       LDA    $31,X
8DE0: 84 FB          ANDA   #$FB
8DE2: 8A 10          ORA    #$10
8DE4: F6 0B 4A       LDB    $0B4A
8DE7: C1 01          CMPB   #$01
8DE9: 27 0C          BEQ    $8DF7
8DEB: C1 0F          CMPB   #$0F
8DED: 26 0A          BNE    $8DF9
8DEF: E6 88 32       LDB    $32,X
8DF2: CA 40          ORB    #$40
8DF4: E7 88 32       STB    $32,X
8DF7: 8A 08          ORA    #$08
8DF9: A7 88 31       STA    $31,X
8DFC: 86 02          LDA    #$02
8DFE: A7 88 37       STA    $37,X
8E01: A6 88 50       LDA    $50,X
8E04: 81 04          CMPA   #$04
8E06: 25 15          BCS    $8E1D
8E08: 81 07          CMPA   #$07
8E0A: 24 11          BCC    $8E1D
8E0C: EC 08          LDD    $8,X
8E0E: C3 FF E8       ADDD   #$FFE8
8E11: ED 08          STD    $8,X
8E13: 86 04          LDA    #$04
8E15: A7 88 18       STA    $18,X
8E18: 86 03          LDA    #$03
8E1A: A7 88 37       STA    $37,X
8E1D: 39             RTS
8E1E: 6F 0E          CLR    $E,X
8E20: 6F 03          CLR    $3,X
8E22: 96 36          LDA    $36
8E24: 81 01          CMPA   #$01
8E26: 26 04          BNE    $8E2C
8E28: 86 80          LDA    #$80
8E2A: A7 03          STA    $3,X
8E2C: A6 88 50       LDA    $50,X
8E2F: 27 26          BEQ    $8E57
8E31: 10 8E 8E 64    LDY    #$8E64
8E35: E6 A6          LDB    A,Y
8E37: E7 88 37       STB    $37,X
8E3A: E6 88 31       LDB    $31,X
8E3D: C5 08          BITB   #$08
8E3F: 27 08          BEQ    $8E49
8E41: 81 01          CMPA   #$01
8E43: 27 04          BEQ    $8E49
8E45: 81 05          CMPA   #$05
8E47: 26 0E          BNE    $8E57
8E49: A6 88 50       LDA    $50,X
8E4C: 1F 89          TFR    A,B
8E4E: C4 01          ANDB   #$01
8E50: 27 05          BEQ    $8E57
8E52: 97 0F          STA    $0F
8E54: BD FA 38       JSR    $FA38
8E57: BD FD 12       JSR    $FD12
8E5A: 39             RTS

8E6D: 7E FA 42       JMP    $FA42
8E70: 7E FA 4C       JMP    $FA4C

8E7C: BD FD A0       JSR    save_and_switch_to_bank_1_fda0
8E7F: BD 40 90       JSR    lb1_4090
8E82: 34 01          PSHS   CC
8E84: BD FD B2       JSR    restore_previous_bank_fdb2
8E87: 35 81          PULS   CC,PC

8E89: 34 7E          PSHS   U,Y,X,DP,D
8E8B: 32 7F          LEAS   -$1,S
8E8D: A6 88 40       LDA    $40,X
8E90: AA 88 51       ORA    $51,X
8E93: A7 88 51       STA    $51,X
8E96: 6C 88 53       INC    $53,X
8E99: A6 88 53       LDA    $53,X
8E9C: 81 03          CMPA   #$03
8E9E: 10 25 00 60    LBCS   $8F02
8EA2: 6F 88 53       CLR    $53,X
8EA5: A6 88 51       LDA    $51,X
8EA8: 10 27 00 50    LBEQ   $8EFC
8EAC: 81 07          CMPA   #$07
8EAE: 10 27 00 4A    LBEQ   $8EFC
8EB2: 1F 89          TFR    A,B
8EB4: 48             ASLA
8EB5: 48             ASLA
8EB6: 48             ASLA
8EB7: 48             ASLA
8EB8: A1 88 43       CMPA   $43,X
8EBB: 10 26 00 3D    LBNE   $8EFC
8EBF: 5A             DECB
8EC0: 10 8E 8F 24    LDY    #$8F24
8EC4: A6 88 21       LDA    nb_credits_0021,X
8EC7: 48             ASLA
8EC8: 10 AE A6       LDY    A,Y
8ECB: 58             ASLB
8ECC: 58             ASLB
8ECD: 31 A5          LEAY   B,Y
8ECF: BD 8F 06       JSR    $8F06
8ED2: 31 A5          LEAY   B,Y
8ED4: A6 88 50       LDA    $50,X
8ED7: 27 0A          BEQ    $8EE3
8ED9: 81 01          CMPA   #$01
8EDB: 27 06          BEQ    $8EE3
8EDD: 81 05          CMPA   #$05
8EDF: 27 02          BEQ    $8EE3
8EE1: 31 21          LEAY   $1,Y
8EE3: A6 A4          LDA    ,Y
8EE5: A7 88 1E       STA    $1E,X
8EE8: E6 22          LDB    $2,Y
8EEA: E7 88 1D       STB    $1D,X
8EED: 81 FF          CMPA   #$FF
8EEF: 27 0B          BEQ    $8EFC
8EF1: 86 07          LDA    #$07
8EF3: A7 88 1B       STA    $1B,X
8EF6: 6F 88 19       CLR    $19,X
8EF9: 6F 88 18       CLR    $18,X
8EFC: 6F 88 51       CLR    $51,X
8EFF: 6F 88 53       CLR    $53,X
8F02: 32 61          LEAS   $1,S
8F04: 35 FE          PULS   D,DP,X,Y,U,PC
8F06: 34 20          PSHS   Y
8F08: 5F             CLRB
8F09: EE 88 3C       LDU    $3C,X
8F0C: 27 10          BEQ    $8F1E
8F0E: A6 C8 1B       LDA    $1B,U
8F11: 84 3F          ANDA   #$3F
8F13: 81 04          CMPA   #$04
8F15: 25 01          BCS    $8F18
8F17: 4F             CLRA
8F18: 10 8E 8F 20    LDY    #$8F20
8F1C: E6 A6          LDB    A,Y
8F1E: 35 A0          PULS   Y,PC

8FF4: A6 88 15       LDA    $15,X
8FF7: 85 40          BITA   #$40
8FF9: 27 34          BEQ    $902F
8FFB: B6 0B 4D       LDA    $0B4D
8FFE: 85 F0          BITA   #$F0
9000: 26 07          BNE    $9009
9002: B6 0B 4C       LDA    $0B4C
9005: 84 F0          ANDA   #$F0
9007: 27 26          BEQ    $902F
9009: A6 88 15       LDA    $15,X
900C: 84 BF          ANDA   #$BF
900E: A7 88 15       STA    $15,X
9011: A6 88 1B       LDA    $1B,X
9014: 84 7F          ANDA   #$7F
9016: 81 01          CMPA   #$01
9018: 27 07          BEQ    $9021
901A: 86 00          LDA    #$00
901C: A7 88 1B       STA    $1B,X
901F: 20 0E          BRA    $902F
9021: 86 05          LDA    #$05
9023: A7 88 1B       STA    $1B,X
9026: A6 03          LDA    $3,X
9028: 49             ROLA
9029: 49             ROLA
902A: 84 01          ANDA   #$01
902C: A7 88 22       STA    interrupt_status_22,X
902F: 39             RTS

904B: 34 7E          PSHS   U,Y,X,DP,D
904D: E6 02          LDB    $2,X
904F: C4 7F          ANDB   #$7F
9051: 58             ASLB
9052: 4F             CLRA
9053: 10 8E 90 67    LDY    #$9067
9057: 31 BB          LEAY   [D,Y]
9059: CE 0B 3E       LDU    #$0B3E
905C: C6 0C          LDB    #$0C
905E: A6 A0          LDA    ,Y+
9060: A7 C0          STA    ,U+
9062: 5A             DECB
9063: 26 F9          BNE    $905E
9065: 35 FE          PULS   D,DP,X,Y,U,PC

91AF: A6 88 1B       LDA    $1B,X
91B2: 10 2B 00 72    LBMI   $9228
91B6: BD A5 29       JSR    $A529
91B9: A6 88 22       LDA    interrupt_status_22,X
91BC: 10 8E 92 83    LDY    #$9283
91C0: A6 A6          LDA    A,Y
91C2: A8 03          EORA   $3,X
91C4: A7 03          STA    $3,X
91C6: A6 88 15       LDA    $15,X
91C9: 84 BF          ANDA   #$BF
91CB: A7 88 15       STA    $15,X
91CE: A6 84          LDA    ,X
91D0: 84 F0          ANDA   #$F0
91D2: 8A 01          ORA    #$01
91D4: A7 84          STA    ,X
91D6: 6F 0E          CLR    $E,X
91D8: 86 0E          LDA    #$0E
91DA: AA 03          ORA    $3,X
91DC: A7 02          STA    $2,X
91DE: A6 88 15       LDA    $15,X
91E1: 84 57          ANDA   #$57
91E3: A7 88 15       STA    $15,X
91E6: 86 00          LDA    #$00
91E8: E6 01          LDB    $1,X
91EA: C1 02          CMPB   #$02
91EC: 24 10          BCC    $91FE
91EE: 86 08          LDA    #$08
91F0: E6 88 17       LDB    $17,X
91F3: 2A 09          BPL    $91FE
91F5: 86 00          LDA    #$00
91F7: E6 88 1F       LDB    $1F,X
91FA: 24 02          BCC    $91FE	; probably never branches
91FC: 86 10          LDA    #$10
91FE: E6 88 1F       LDB    $1F,X
9201: 54             LSRB
9202: 54             LSRB
9203: 54             LSRB
9204: 54             LSRB
9205: C4 07          ANDB   #$07
9207: 10 8E 92 8B    LDY    #$928B
920B: AB A5          ADDA   B,Y
920D: A7 88 19       STA    $19,X
9210: 86 82          LDA    #$82
9212: BD FE B6       JSR    $FEB6
9215: A6 88 1F       LDA    $1F,X
9218: 26 0E          BNE    $9228
921A: A6 01          LDA    $1,X
921C: 81 02          CMPA   #$02
921E: 25 08          BCS    $9228
9220: A6 88 15       LDA    $15,X
9223: 8A 02          ORA    #$02
9225: A7 88 15       STA    $15,X
9228: A6 88 15       LDA    $15,X
922B: 84 02          ANDA   #$02
922D: 26 0B          BNE    $923A
922F: 6A 88 19       DEC    $19,X
9232: 26 05          BNE    $9239
9234: 86 04          LDA    #$04
9236: A7 88 1B       STA    $1B,X
9239: 39             RTS
923A: 6C 88 19       INC    $19,X
923D: A6 88 19       LDA    $19,X
9240: 81 04          CMPA   #$04
9242: 25 3E          BCS    $9282
9244: 6F 88 19       CLR    $19,X
9247: C6 7F          LDB    #$7F
9249: 6C 88 18       INC    $18,X
924C: A6 88 18       LDA    $18,X
924F: 85 01          BITA   #$01
9251: 26 04          BNE    $9257
9253: C6 0E          LDB    #$0E
9255: EA 03          ORB    $3,X
9257: E7 02          STB    $2,X
9259: 81 10          CMPA   #$10
925B: 25 25          BCS    $9282
925D: 6F 84          CLR    ,X
925F: 6F 88 13       CLR    $13,X
9262: A6 88 17       LDA    $17,X
9265: 2A 08          BPL    $926F
9267: B6 09 F2       LDA    $09F2
926A: 8A 80          ORA    #$80
926C: B7 09 F2       STA    $09F2
926F: 6F 84          CLR    ,X
9271: 6F 88 13       CLR    $13,X
9274: 6F 88 15       CLR    $15,X
9277: 7A 09 EF       DEC    $09EF
927A: A6 88 45       LDA    $45,X
927D: 27 03          BEQ    $9282
927F: 7A 0A B5       DEC    $0AB5
9282: 39             RTS

9293: A6 88 1B       LDA    $1B,X                                        
9296: 2B 25          BMI    $92BD                                        
9298: A6 88 15       LDA    $15,X
929B: 84 EF          ANDA   #$EF
929D: A7 88 15       STA    $15,X
92A0: BD A5 29       JSR    $A529
92A3: BD FA 1A       JSR    $FA1A
92A6: 10 AE 88 2D    LDY    $2D,X
92AA: A6 A8 21       LDA    nb_credits_0021,Y
92AD: 27 0E          BEQ    $92BD
92AF: 34 10          PSHS   X
92B1: 1F 21          TFR    Y,X
92B3: BD 99 67       JSR    $9967
92B6: 86 01          LDA    #$01
92B8: A7 A8 1B       STA    $1B,Y
92BB: 35 10          PULS   X
92BD: 7E E0 6D       JMP    $E06D
92C0: E6 21          LDB    $1,Y
92C2: C4 1F          ANDB   #$1F
92C4: C1 02          CMPB   #$02
92C6: 25 08          BCS    $92D0
92C8: A6 88 16       LDA    $16,X
92CB: 8A 04          ORA    #$04
92CD: A7 88 16       STA    $16,X
92D0: A6 88 15       LDA    $15,X
92D3: 84 10          ANDA   #$10
92D5: 10 26 00 8A    LBNE   $9363
92D9: BD 9F 83       JSR    $9F83
92DC: 10 8E 93 FC    LDY    #$93FC
92E0: D7 00          STB    $00
92E2: 58             ASLB
92E3: DB 00          ADDB   $00
92E5: 31 A5          LEAY   B,Y
92E7: A6 88 19       LDA    $19,X
92EA: 81 08          CMPA   #$08
92EC: 25 0D          BCS    $92FB
92EE: A6 88 18       LDA    $18,X
92F1: 81 02          CMPA   #$02
92F3: 24 06          BCC    $92FB
92F5: 6C 88 18       INC    $18,X
92F8: 6F 88 19       CLR    $19,X
92FB: 6C 88 19       INC    $19,X
92FE: A6 88 18       LDA    $18,X
9301: E6 A6          LDB    A,Y
9303: EA 03          ORB    $3,X
9305: E7 02          STB    $2,X
9307: 6D 88 18       TST    $18,X
930A: BD 93 C2       JSR    $93C2
930D: 20 01          BRA    $9310
930F: 39             RTS
9310: A6 88 45       LDA    $45,X
9313: 10 8E 94 0E    LDY    #$940E
9317: E6 A6          LDB    A,Y
9319: C1 FF          CMPB   #$FF
931B: 27 22          BEQ    $933F
931D: E1 03          CMPB   $3,X
931F: 27 1E          BEQ    $933F
9321: BD A2 E8       JSR    $A2E8
9324: 86 00          LDA    #$00
9326: A7 88 1B       STA    $1B,X
9329: 10 AE 88 2D    LDY    $2D,X
932D: A7 A8 1B       STA    $1B,Y
9330: 86 7F          LDA    #$7F
9332: A7 02          STA    $2,X
9334: A7 22          STA    $2,Y
9336: A6 88 16       LDA    $16,X
9339: 84 F9          ANDA   #$F9
933B: A7 88 16       STA    $16,X
933E: 39             RTS
933F: E6 88 43       LDB    $43,X
9342: C5 60          BITB   #$60
9344: 27 09          BEQ    $934F
9346: 86 00          LDA    #$00
9348: A7 88 1D       STA    $1D,X
934B: 86 14          LDA    #$14
934D: 20 0B          BRA    $935A
934F: C5 10          BITB   #$10
9351: 27 0F          BEQ    $9362
9353: 86 00          LDA    #$00
9355: A7 88 1D       STA    $1D,X
9358: 86 15          LDA    #$15
935A: A7 88 1E       STA    $1E,X
935D: 86 08          LDA    #$08
935F: A7 88 1B       STA    $1B,X
9362: 39             RTS
9363: 34 40          PSHS   U
9365: 10 8E 93 F4    LDY    #$93F4
9369: EE 88 2D       LDU    $2D,X
936C: A6 41          LDA    $1,U
936E: 80 02          SUBA   #$02
9370: 48             ASLA
9371: 48             ASLA
9372: 31 A6          LEAY   A,Y
9374: 6C 88 19       INC    $19,X
9377: A6 88 18       LDA    $18,X
937A: E6 88 19       LDB    $19,X
937D: C1 03          CMPB   #$03
937F: 25 36          BCS    $93B7
9381: 6C 88 18       INC    $18,X
9384: A6 88 18       LDA    $18,X
9387: 81 02          CMPA   #$02
9389: 25 29          BCS    $93B4
938B: BD A2 E8       JSR    $A2E8
938E: 86 00          LDA    #$00
9390: A7 C8 1B       STA    $1B,U
9393: A7 88 1B       STA    $1B,X
9396: 86 07          LDA    #$07
9398: AA 03          ORA    $3,X
939A: A7 02          STA    $2,X
939C: 86 7F          LDA    #$7F
939E: A7 42          STA    $2,U
93A0: A7 02          STA    $2,X
93A2: A6 88 16       LDA    $16,X
93A5: 84 F9          ANDA   #$F9
93A7: A7 88 16       STA    $16,X
93AA: A6 C8 16       LDA    $16,U
93AD: 84 F9          ANDA   #$F9
93AF: A7 C8 16       STA    $16,U
93B2: 20 0C          BRA    $93C0
93B4: 6F 88 19       CLR    $19,X
93B7: A6 88 18       LDA    $18,X
93BA: A6 A6          LDA    A,Y
93BC: AA 03          ORA    $3,X
93BE: A7 02          STA    $2,X
93C0: 35 C0          PULS   U,PC
93C2: 10 AE 88 2D    LDY    $2D,X
93C6: A6 21          LDA    $1,Y
93C8: 81 02          CMPA   #$02
93CA: 27 08          BEQ    $93D4
93CC: 81 03          CMPA   #$03
93CE: 27 04          BEQ    $93D4
93D0: 81 06          CMPA   #$06
93D2: 26 1D          BNE    $93F1
93D4: A6 A8 1F       LDA    $1F,Y
93D7: 81 08          CMPA   #$08
93D9: 25 16          BCS    $93F1
93DB: A6 88 15       LDA    $15,X
93DE: 8A 10          ORA    #$10
93E0: A7 88 15       STA    $15,X
93E3: 6F 88 19       CLR    $19,X
93E6: 6F 88 18       CLR    $18,X
93E9: 86 03          LDA    #$03
93EB: A7 88 1A       STA    $1A,X
93EE: 1A 01          ORCC   #$01
93F0: 39             RTS
93F1: 1C FE          ANDCC  #$FE
93F3: 39             RTS

9417: A6 88 1E       LDA    $1E,X
941A: 84 7F          ANDA   #$7F
941C: 48             ASLA
941D: 10 8E 94 23    LDY    #jump_table_9423
9421: 6E B6          JMP    [A,Y]		; [indirect_jump] [nb_entries=22]

	
944F: BD 94 E9       JSR    $94E9
9452: BD FD 70       JSR    $FD70
9455: 10 8E 94 DD    LDY    #$94DD
9459: A6 88 15       LDA    $15,X
945C: 84 04          ANDA   #$04
945E: 27 02          BEQ    $9462
9460: 31 26          LEAY   $6,Y
9462: A6 88 1B       LDA    $1B,X
9465: 2B 0E          BMI    $9475
9467: BD A5 29       JSR    $A529
946A: A6 A0          LDA    ,Y+
946C: AA 03          ORA    $3,X
946E: A7 02          STA    $2,X
9470: A6 A4          LDA    ,Y
9472: A7 88 19       STA    $19,X
9475: 27 1C          BEQ    $9493
9477: 6A 88 19       DEC    $19,X
947A: 26 17          BNE    $9493
947C: 6C 88 18       INC    $18,X
947F: A6 88 18       LDA    $18,X
9482: 81 03          CMPA   #$03
9484: 24 0D          BCC    $9493
9486: 48             ASLA
9487: E6 A6          LDB    A,Y
9489: EA 03          ORB    $3,X
948B: E7 02          STB    $2,X
948D: 4C             INCA
948E: E6 A6          LDB    A,Y
9490: E7 88 19       STB    $19,X
9493: A6 88 18       LDA    $18,X
9496: 81 02          CMPA   #$02
9498: 25 42          BCS    $94DC
949A: 81 03          CMPA   #$03
949C: 24 0E          BCC    $94AC
949E: A6 88 40       LDA    $40,X
94A1: 85 04          BITA   #$04
94A3: 27 37          BEQ    $94DC
94A5: 86 01          LDA    #$01
94A7: A7 88 51       STA    $51,X
94AA: 20 30          BRA    $94DC
94AC: A6 88 51       LDA    $51,X
94AF: 27 1B          BEQ    $94CC
94B1: 10 AE 88 3C    LDY    $3C,X
94B5: A6 A8 1B       LDA    $1B,Y
94B8: 84 3F          ANDA   #$3F
94BA: 81 03          CMPA   #$03
94BC: 26 0A          BNE    $94C8
94BE: 86 07          LDA    #$07
94C0: A7 88 1E       STA    $1E,X
94C3: 86 00          LDA    #$00
94C5: A7 88 1D       STA    $1D,X
94C8: 86 07          LDA    #$07
94CA: 20 02          BRA    $94CE
94CC: 86 00          LDA    #$00
94CE: A7 88 1B       STA    $1B,X
94D1: 6F 88 51       CLR    $51,X
94D4: A6 88 15       LDA    $15,X
94D7: 88 04          EORA   #$04
94D9: A7 88 15       STA    $15,X
94DC: 39             RTS

94E9: BD FC 82       JSR    switch_to_bank_5_fc82
94EC: BD 40 78       JSR    $4078 ; [banks=5]
94EF: BD FC 8F       JSR    switch_to_bank_0_fc8f
94F2: 39             RTS

94F3: 10 8E 95 2E    LDY    #$952E
94F7: A6 88 1B       LDA    $1B,X
94FA: 2B 0E          BMI    $950A
94FC: BD A5 29       JSR    $A529
94FF: A6 A0          LDA    ,Y+
9501: AA 03          ORA    $3,X
9503: A7 02          STA    $2,X
9505: A6 A4          LDA    ,Y
9507: A7 88 19       STA    $19,X
950A: 6A 88 19       DEC    $19,X
950D: 26 1E          BNE    $952D
950F: 6C 88 18       INC    $18,X
9512: A6 88 18       LDA    $18,X
9515: 81 02          CMPA   #$02
9517: 24 0F          BCC    $9528
9519: 48             ASLA
951A: E6 A6          LDB    A,Y
951C: EA 03          ORB    $3,X
951E: E7 02          STB    $2,X
9520: 4C             INCA
9521: E6 A6          LDB    A,Y
9523: E7 88 19       STB    $19,X
9526: 20 05          BRA    $952D
9528: 86 00          LDA    #$00
952A: A7 88 1B       STA    $1B,X
952D: 39             RTS

9532: A6 88 1B       LDA    $1B,X
9535: 2B 0D          BMI    $9544
9537: BD A5 29       JSR    $A529
953A: 86 04          LDA    #$04
953C: A7 88 19       STA    $19,X
953F: 86 80          LDA    #$80
9541: A7 88 18       STA    $18,X
9544: A6 88 18       LDA    $18,X
9547: 2A 33          BPL    $957C
9549: 6A 88 19       DEC    $19,X
954C: 10 26 00 8B    LBNE   $95DB
9550: A6 88 18       LDA    $18,X
9553: 84 7F          ANDA   #$7F
9555: A7 88 18       STA    $18,X
9558: 86 0B          LDA    #$0B
955A: BD FE D1       JSR    $FED1
955D: A6 03          LDA    $3,X
955F: 2A 03          BPL    $9564
9561: BD FE C2       JSR    $FEC2
9564: A6 88 45       LDA    $45,X
9567: 81 01          CMPA   #$01
9569: 25 04          BCS    $956F
956B: 81 05          CMPA   #$05
956D: 26 05          BNE    $9574
956F: CC 00 00       LDD    #$0000
9572: ED 0F          STD    $F,X
9574: A6 88 15       LDA    $15,X
9577: 8A 40          ORA    #$40
9579: A7 88 15       STA    $15,X
957C: BD 8C CA       JSR    $8CCA
957F: A6 88 43       LDA    $43,X
9582: 84 50          ANDA   #$50
9584: 27 2A          BEQ    $95B0
9586: EC 0F          LDD    $F,X
9588: 27 12          BEQ    $959C
958A: 2A 09          BPL    $9595
958C: A6 88 43       LDA    $43,X
958F: 84 10          ANDA   #$10
9591: 27 1D          BEQ    $95B0
9593: 20 07          BRA    $959C
9595: A6 88 43       LDA    $43,X
9598: 84 40          ANDA   #$40
959A: 27 14          BEQ    $95B0
959C: A6 88 43       LDA    $43,X
959F: 5F             CLRB
95A0: 84 10          ANDA   #$10
95A2: 27 02          BEQ    $95A6
95A4: C6 80          LDB    #$80
95A6: E7 03          STB    $3,X
95A8: A6 88 18       LDA    $18,X
95AB: 8A 40          ORA    #$40
95AD: A7 88 18       STA    $18,X
95B0: A6 88 18       LDA    $18,X
95B3: 84 FC          ANDA   #$FC
95B5: 8A 03          ORA    #$03
95B7: A7 88 18       STA    $18,X
95BA: A6 88 18       LDA    $18,X
95BD: 84 40          ANDA   #$40
95BF: 27 0A          BEQ    $95CB
95C1: A6 88 11       LDA    $11,X
95C4: 2A 01          BPL    $95C7
95C6: 40             NEGA
95C7: 81 08          CMPA   #$08
95C9: 25 10          BCS    $95DB
95CB: 6A 88 18       DEC    $18,X
95CE: A6 88 11       LDA    $11,X
95D1: 2B 08          BMI    $95DB
95D3: 40             NEGA
95D4: 81 08          CMPA   #$08
95D6: 25 03          BCS    $95DB
95D8: 6A 88 18       DEC    $18,X
95DB: A6 88 18       LDA    $18,X
95DE: 84 0F          ANDA   #$0F
95E0: 10 8E 95 EE    LDY    #$95EE
95E4: A6 A6          LDA    A,Y
95E6: AA 03          ORA    $3,X
95E8: A7 02          STA    $2,X
95EA: BD 8F F4       JSR    $8FF4
95ED: 39             RTS

95F3: 10 8E 96 2E    LDY    #$962E
95F7: A6 88 1B       LDA    $1B,X
95FA: 2B 0E          BMI    $960A
95FC: BD A5 29       JSR    $A529
95FF: A6 A0          LDA    ,Y+
9601: AA 03          ORA    $3,X
9603: A7 02          STA    $2,X
9605: A6 A4          LDA    ,Y
9607: A7 88 19       STA    $19,X
960A: 6A 88 19       DEC    $19,X
960D: 26 1E          BNE    $962D
960F: 6C 88 18       INC    $18,X
9612: A6 88 18       LDA    $18,X
9615: 81 02          CMPA   #$02
9617: 24 0F          BCC    $9628
9619: 48             ASLA
961A: E6 A6          LDB    A,Y
961C: EA 03          ORB    $3,X
961E: E7 02          STB    $2,X
9620: 4C             INCA
9621: E6 A6          LDB    A,Y
9623: E7 88 19       STB    $19,X
9626: 20 05          BRA    $962D
9628: 86 00          LDA    #$00
962A: A7 88 1B       STA    $1B,X
962D: 39             RTS

9632: 39             RTS

9633: 10 8E 96 79    LDY    #$9679
9637: A6 88 1B       LDA    $1B,X
963A: 2B 19          BMI    $9655
963C: BD A5 29       JSR    $A529
963F: A6 A0          LDA    ,Y+
9641: AA 03          ORA    $3,X
9643: A7 02          STA    $2,X
9645: A6 A4          LDA    ,Y
9647: A7 88 19       STA    $19,X
964A: A6 01          LDA    $1,X
964C: 81 02          CMPA   #$02
964E: 24 05          BCC    $9655
9650: 86 86          LDA    #$86
9652: BD FE B6       JSR    $FEB6
9655: 6A 88 19       DEC    $19,X
9658: 26 1E          BNE    $9678
965A: 6C 88 18       INC    $18,X
965D: A6 88 18       LDA    $18,X
9660: 81 02          CMPA   #$02
9662: 24 0F          BCC    $9673
9664: 48             ASLA
9665: E6 A6          LDB    A,Y
9667: EA 03          ORB    $3,X
9669: E7 02          STB    $2,X
966B: 4C             INCA
966C: E6 A6          LDB    A,Y
966E: E7 88 19       STB    $19,X
9671: 20 05          BRA    $9678
9673: 86 00          LDA    #$00
9675: A7 88 1B       STA    $1B,X
9678: 39             RTS

967D: 10 8E 96 E4    LDY    #$96E4
9681: A6 88 1B       LDA    $1B,X
9684: 2B 2E          BMI    $96B4
9686: BD A5 29       JSR    $A529
9689: A6 A0          LDA    ,Y+
968B: AA 03          ORA    $3,X
968D: A7 02          STA    $2,X
968F: A6 A4          LDA    ,Y
9691: A7 88 19       STA    $19,X
9694: A6 84          LDA    ,X
9696: 84 F0          ANDA   #$F0
9698: 8A 02          ORA    #$02
969A: A7 84          STA    ,X
969C: A6 88 15       LDA    $15,X
969F: 8A 40          ORA    #$40
96A1: A7 88 15       STA    $15,X
96A4: 86 0C          LDA    #$0C
96A6: BD FE D1       JSR    $FED1
96A9: A6 01          LDA    $1,X
96AB: 81 02          CMPA   #$02
96AD: 24 05          BCC    $96B4
96AF: 86 86          LDA    #$86
96B1: BD FE B6       JSR    $FEB6
96B4: 6A 88 19       DEC    $19,X
96B7: 26 24          BNE    $96DD
96B9: A6 88 18       LDA    $18,X
96BC: 81 05          CMPA   #$05
96BE: 24 10          BCC    $96D0
96C0: 6C 88 18       INC    $18,X
96C3: A6 88 18       LDA    $18,X
96C6: 81 04          CMPA   #$04
96C8: 26 06          BNE    $96D0
96CA: E6 03          LDB    $3,X
96CC: C8 80          EORB   #$80
96CE: E7 03          STB    $3,X
96D0: 48             ASLA
96D1: E6 A6          LDB    A,Y
96D3: EA 03          ORB    $3,X
96D5: E7 02          STB    $2,X
96D7: 4C             INCA
96D8: E6 A6          LDB    A,Y
96DA: E7 88 19       STB    $19,X
96DD: BD 8C CA       JSR    $8CCA
96E0: BD 8F F4       JSR    $8FF4
96E3: 39             RTS

96EE: 10 8E 97 29    LDY    #$9729
96F2: A6 88 1B       LDA    $1B,X
96F5: 2B 0E          BMI    $9705
96F7: BD A5 29       JSR    $A529
96FA: A6 A0          LDA    ,Y+
96FC: AA 03          ORA    $3,X
96FE: A7 02          STA    $2,X
9700: A6 A4          LDA    ,Y
9702: A7 88 19       STA    $19,X
9705: 6A 88 19       DEC    $19,X
9708: 26 1E          BNE    $9728
970A: 6C 88 18       INC    $18,X
970D: A6 88 18       LDA    $18,X
9710: 81 03          CMPA   #$03
9712: 24 0F          BCC    $9723
9714: 48             ASLA
9715: E6 A6          LDB    A,Y
9717: EA 03          ORB    $3,X
9719: E7 02          STB    $2,X
971B: 4C             INCA
971C: E6 A6          LDB    A,Y
971E: E7 88 19       STB    $19,X
9721: 20 05          BRA    $9728
9723: 86 00          LDA    #$00
9725: A7 88 1B       STA    $1B,X
9728: 39             RTS

972F: 10 8E 97 70    LDY    #$9770
9733: A6 88 1B       LDA    $1B,X
9736: 2B 0E          BMI    $9746
9738: BD A5 29       JSR    $A529
973B: A6 A0          LDA    ,Y+
973D: A8 03          EORA   $3,X
973F: A7 02          STA    $2,X
9741: A6 A4          LDA    ,Y
9743: A7 88 19       STA    $19,X
9746: 6A 88 19       DEC    $19,X
9749: 26 24          BNE    $976F
974B: 6C 88 18       INC    $18,X
974E: A6 88 18       LDA    $18,X
9751: 81 06          CMPA   #$06
9753: 24 0F          BCC    $9764
9755: 48             ASLA
9756: E6 A6          LDB    A,Y
9758: E8 03          EORB   $3,X
975A: E7 02          STB    $2,X
975C: 4C             INCA
975D: E6 A6          LDB    A,Y
975F: E7 88 19       STB    $19,X
9762: 20 0B          BRA    $976F
9764: 86 00          LDA    #$00
9766: A7 88 1B       STA    $1B,X
9769: A6 03          LDA    $3,X
976B: 88 80          EORA   #$80
976D: A7 03          STA    $3,X
976F: 39             RTS

977C: 10 8E 97 E4    LDY    #$97E4
9780: A6 88 1B       LDA    $1B,X
9783: 2B 0E          BMI    $9793
9785: BD A5 29       JSR    $A529
9788: A6 A0          LDA    ,Y+
978A: AA 03          ORA    $3,X
978C: A7 02          STA    $2,X
978E: 86 02          LDA    #$02
9790: A7 88 19       STA    $19,X
9793: 6A 88 19       DEC    $19,X
9796: 26 4B          BNE    $97E3
9798: 6C 88 18       INC    $18,X
979B: A6 88 18       LDA    $18,X
979E: 81 02          CMPA   #$02
97A0: 24 3C          BCC    $97DE
97A2: 81 01          CMPA   #$01
97A4: 26 2B          BNE    $97D1
97A6: 34 76          PSHS   U,Y,X,D
97A8: A6 88 34       LDA    $34,X
97AB: 2A 22          BPL    $97CF
97AD: EE 88 35       LDU    $35,X
97B0: A6 C8 1B       LDA    $1B,U
97B3: 84 3F          ANDA   #$3F
97B5: 81 05          CMPA   #$05
97B7: 26 16          BNE    $97CF
97B9: A6 C8 17       LDA    $17,U
97BC: 10 8E 97 E6    LDY    #$97E6
97C0: A6 A6          LDA    A,Y
97C2: 26 0B          BNE    $97CF
97C4: 86 40          LDA    #$40
97C6: AA 03          ORA    $3,X
97C8: A7 4D          STA    $D,U
97CA: 86 13          LDA    #$13
97CC: A7 C8 1B       STA    $1B,U
97CF: 35 76          PULS   D,X,Y,U
97D1: E6 A6          LDB    A,Y
97D3: EA 03          ORB    $3,X
97D5: E7 02          STB    $2,X
97D7: C6 02          LDB    #$02
97D9: E7 88 19       STB    $19,X
97DC: 20 05          BRA    $97E3
97DE: 86 00          LDA    #$00
97E0: A7 88 1B       STA    $1B,X
97E3: 39             RTS

97F5: 10 8E 98 30    LDY    #$9830
97F9: A6 88 1B       LDA    $1B,X
97FC: 2B 0E          BMI    $980C
97FE: BD A5 29       JSR    $A529
9801: A6 A0          LDA    ,Y+
9803: AA 03          ORA    $3,X
9805: A7 02          STA    $2,X
9807: A6 A4          LDA    ,Y
9809: A7 88 19       STA    $19,X
980C: 6A 88 19       DEC    $19,X
980F: 26 1E          BNE    $982F
9811: 6C 88 18       INC    $18,X
9814: A6 88 18       LDA    $18,X
9817: 81 02          CMPA   #$02
9819: 24 0F          BCC    $982A
981B: 48             ASLA
981C: E6 A6          LDB    A,Y
981E: EA 03          ORB    $3,X
9820: E7 02          STB    $2,X
9822: 4C             INCA
9823: E6 A6          LDB    A,Y
9825: E7 88 19       STB    $19,X
9828: 20 05          BRA    $982F
982A: 86 00          LDA    #$00
982C: A7 88 1B       STA    $1B,X
982F: 39             RTS

9834: 10 8E 99 2C    LDY    #$992C                                      
9838: A6 88 1B       LDA    $1B,X
983B: 10 2B 00 3E    LBMI   $987D
983F: BD A5 29       JSR    $A529
9842: A6 88 21       LDA    nb_credits_0021,X
9845: 10 27 00 9C    LBEQ   $98E5
9849: A6 88 34       LDA    $34,X
984C: 8A 10          ORA    #$10
984E: A7 88 34       STA    $34,X
9851: A6 01          LDA    $1,X
9853: 81 02          CMPA   #$02
9855: 25 09          BCS    $9860
9857: B6 0E 4A       LDA    $0E4A
985A: 46             RORA
985B: 46             RORA
985C: 84 80          ANDA   #$80
985E: A7 03          STA    $3,X
9860: A6 A4          LDA    ,Y
9862: AA 03          ORA    $3,X
9864: A7 02          STA    $2,X
9866: 86 02          LDA    #$02
9868: A7 88 19       STA    $19,X
986B: A6 01          LDA    $1,X
986D: 81 02          CMPA   #$02
986F: 25 0C          BCS    $987D
9871: A6 88 21       LDA    nb_credits_0021,X
9874: 81 01          CMPA   #$01
9876: 26 05          BNE    $987D
9878: 86 06          LDA    #$06
987A: A7 88 19       STA    $19,X
987D: 6A 88 19       DEC    $19,X
9880: 26 7F          BNE    $9901
9882: 6C 88 18       INC    $18,X
9885: A6 88 18       LDA    $18,X
9888: 81 05          CMPA   #$05
988A: 24 59          BCC    $98E5
988C: 81 03          CMPA   #$03
988E: 26 10          BNE    $98A0
9890: E6 88 21       LDB    nb_credits_0021,X
9893: C1 01          CMPB   #$01
9895: 26 09          BNE    $98A0
9897: 34 02          PSHS   A
9899: 86 8F          LDA    #$8F
989B: BD FE B6       JSR    $FEB6
989E: 35 02          PULS   A
98A0: 81 03          CMPA   #$03
98A2: 26 34          BNE    $98D8
98A4: 34 26          PSHS   Y,D
98A6: BD 99 67       JSR    $9967
98A9: A6 A8 34       LDA    $34,Y
98AC: 84 93          ANDA   #$93
98AE: A7 A8 34       STA    $34,Y
98B1: C6 08          LDB    #$08
98B3: A6 01          LDA    $1,X
98B5: 81 02          CMPA   #$02
98B7: 24 07          BCC    $98C0
98B9: C6 44          LDB    #$44
98BB: 4D             TSTA
98BC: 27 02          BEQ    $98C0
98BE: C6 24          LDB    #$24
98C0: EA A8 34       ORB    $34,Y
98C3: E7 A8 34       STB    $34,Y
98C6: 86 40          LDA    #$40
98C8: AA 03          ORA    $3,X
98CA: A7 2D          STA    $D,Y
98CC: A6 88 17       LDA    $17,X
98CF: 85 20          BITA   #$20
98D1: 27 03          BEQ    $98D6
98D3: BD 99 32       JSR    $9932
98D6: 35 26          PULS   D,Y
98D8: E6 A6          LDB    A,Y
98DA: EA 03          ORB    $3,X
98DC: E7 02          STB    $2,X
98DE: C6 02          LDB    #$02
98E0: E7 88 19       STB    $19,X
98E3: 20 1C          BRA    $9901
98E5: A6 88 4B       LDA    $4B,X
98E8: 81 04          CMPA   #$04
98EA: 27 04          BEQ    $98F0
98EC: 81 06          CMPA   #$06
98EE: 26 04          BNE    $98F4
98F0: 86 10          LDA    #$10
98F2: 20 02          BRA    $98F6
98F4: 86 00          LDA    #$00
98F6: A7 88 1B       STA    $1B,X
98F9: A6 88 34       LDA    $34,X
98FC: 84 EF          ANDA   #$EF
98FE: A7 88 34       STA    $34,X
9901: A6 01          LDA    $1,X
9903: 81 02          CMPA   #$02
9905: 24 06          BCC    $990D
9907: BD 94 E9       JSR    $94E9
990A: BD FD 70       JSR    $FD70
990D: 39             RTS
990E: 10 8E 99 2C    LDY    #$992C
9912: A6 88 1B       LDA    $1B,X
9915: 10 2B FF 64    LBMI   $987D
9919: A6 88 21       LDA    nb_credits_0021,X
991C: 10 27 FF C5    LBEQ   $98E5
9920: BD A5 29       JSR    $A529
9923: A6 03          LDA    $3,X
9925: 88 80          EORA   #$80
9927: A7 03          STA    $3,X
9929: 7E 98 60       JMP    $9860


9932: 34 40          PSHS   U
9934: A6 88 1F       LDA    $1F,X
9937: 27 2C          BEQ    $9965
9939: A6 01          LDA    $1,X
993B: 81 08          CMPA   #$08
993D: 25 26          BCS    $9965
993F: 5F             CLRB
9940: CE 07 5B       LDU    #$075B
9943: A6 C4          LDA    ,U
9945: 2A 0A          BPL    $9951
9947: 33 C8 21       LEAU   nb_credits_0021,U
994A: 5C             INCB
994B: C1 10          CMPB   #$10
994D: 25 F4          BCS    $9943
994F: 20 14          BRA    $9965
9951: 86 80          LDA    #$80
9953: A7 C4          STA    ,U
9955: EF 88 41       STU    $41,X
9958: A6 21          LDA    $1,Y
995A: A7 41          STA    $1,U
995C: A6 A8 17       LDA    $17,Y
995F: A7 C8 17       STA    $17,U
9962: BD 9E 7B       JSR    $9E7B
9965: 35 C0          PULS   U,PC
9967: BD FD A0       JSR    save_and_switch_to_bank_1_fda0
996A: BD 40 78       JSR    lb1_4078
996D: BD FD B2       JSR    restore_previous_bank_fdb2
9970: 39             RTS
9971: 34 40          PSHS   U
9973: A6 88 21       LDA    nb_credits_0021,X
9976: 10 27 00 51    LBEQ   $99CB
997A: 81 07          CMPA   #$07
997C: 26 05          BNE    $9983
997E: BD AE 42       JSR    $AE42
9981: 35 C0          PULS   U,PC
9983: 10 8E 99 DE    LDY    #$99DE
9987: A6 88 1B       LDA    $1B,X
998A: 2B 1A          BMI    $99A6
998C: BD A5 29       JSR    $A529
998F: A6 A0          LDA    ,Y+
9991: AA 03          ORA    $3,X
9993: A7 02          STA    $2,X
9995: A6 A4          LDA    ,Y
9997: E6 01          LDB    $1,X
9999: C1 02          CMPB   #$02
999B: 24 01          BCC    $999E
999D: 4C             INCA
999E: A7 88 19       STA    $19,X
99A1: 86 8E          LDA    #$8E
99A3: BD FE B6       JSR    $FEB6
99A6: 6A 88 19       DEC    $19,X
99A9: 26 25          BNE    $99D0
99AB: 6C 88 18       INC    $18,X
99AE: A6 88 18       LDA    $18,X
99B1: 81 04          CMPA   #$04
99B3: 24 16          BCC    $99CB
99B5: 48             ASLA
99B6: E6 A6          LDB    A,Y
99B8: EA 03          ORB    $3,X
99BA: E7 02          STB    $2,X
99BC: 4C             INCA
99BD: E6 A6          LDB    A,Y
99BF: A6 01          LDA    $1,X
99C1: 81 02          CMPA   #$02
99C3: 24 01          BCC    $99C6
99C5: 5C             INCB
99C6: E7 88 19       STB    $19,X
99C9: 20 05          BRA    $99D0
99CB: 86 00          LDA    #$00
99CD: A7 88 1B       STA    $1B,X
99D0: A6 01          LDA    $1,X
99D2: 81 02          CMPA   #$02
99D4: 24 06          BCC    $99DC
99D6: BD 94 E9       JSR    $94E9
99D9: BD FD 70       JSR    $FD70
99DC: 35 C0          PULS   U,PC

99E6: 34 40          PSHS   U
99E8: A6 88 21       LDA    nb_credits_0021,X
99EB: 10 27 FF DC    LBEQ   $99CB
99EF: 81 07          CMPA   #$07
99F1: 26 1E          BNE    $9A11
99F3: 10 8E AE 98    LDY    #$AE98
99F7: CE AE 9C       LDU    #$AE9C
99FA: 96 36          LDA    $36
99FC: 33 C6          LEAU   A,U
99FE: A6 88 1B       LDA    $1B,X
9A01: 10 2B 14 69    LBMI   $AE6E
9A05: BD A5 29       JSR    $A529
9A08: A6 03          LDA    $3,X
9A0A: 88 80          EORA   #$80
9A0C: A7 03          STA    $3,X
9A0E: 7E AE 57       JMP    $AE57
9A11: 10 8E 99 DE    LDY    #$99DE
9A15: A6 88 1B       LDA    $1B,X
9A18: 2B 8C          BMI    $99A6
9A1A: BD A5 29       JSR    $A529
9A1D: A6 03          LDA    $3,X
9A1F: 88 80          EORA   #$80
9A21: A7 03          STA    $3,X
9A23: 7E 99 8F       JMP    $998F
9A26: A6 88 1B       LDA    $1B,X
9A29: 2B 46          BMI    $9A71
9A2B: BD A5 29       JSR    $A529
9A2E: A6 88 21       LDA    nb_credits_0021,X
9A31: 27 43          BEQ    $9A76
9A33: 86 52          LDA    #$52
9A35: AA 03          ORA    $3,X
9A37: A7 02          STA    $2,X
9A39: 86 08          LDA    #$08
9A3B: A7 88 19       STA    $19,X
9A3E: BD 99 67       JSR    $9967
9A41: A6 A8 34       LDA    $34,Y
9A44: 84 93          ANDA   #$93
9A46: A7 A8 34       STA    $34,Y
9A49: C6 08          LDB    #$08
9A4B: A6 01          LDA    $1,X
9A4D: 81 02          CMPA   #$02
9A4F: 24 07          BCC    $9A58
9A51: C6 44          LDB    #$44
9A53: 4D             TSTA
9A54: 27 02          BEQ    $9A58
9A56: C6 24          LDB    #$24
9A58: EA A8 34       ORB    $34,Y
9A5B: E7 A8 34       STB    $34,Y
9A5E: 10 8E 9A 7C    LDY    #$9A7C
9A62: A6 01          LDA    $1,X
9A64: 81 08          CMPA   #$08
9A66: 24 09          BCC    $9A71
9A68: A6 A6          LDA    A,Y
9A6A: 81 FF          CMPA   #$FF
9A6C: 27 03          BEQ    $9A71
9A6E: BD FE B6       JSR    $FEB6
9A71: 6A 88 19       DEC    $19,X
9A74: 26 05          BNE    $9A7B
9A76: 86 00          LDA    #$00
9A78: A7 88 1B       STA    $1B,X
9A7B: 39             RTS

9A84: A6 88 1B       LDA    $1B,X
9A87: 2B E8          BMI    $9A71
9A89: A6 03          LDA    $3,X
9A8B: 88 80          EORA   #$80
9A8D: A7 03          STA    $3,X
9A8F: 20 9A          BRA    $9A2B
9A91: 39             RTS
9A92: BD 9F 83       JSR    $9F83
9A95: 10 8E 9B 2E    LDY    #$9B2E
9A99: 34 04          PSHS   B
9A9B: 58             ASLB
9A9C: EB E4          ADDB   ,S
9A9E: 31 A5          LEAY   B,Y
9AA0: 35 04          PULS   B
9AA2: A6 88 1B       LDA    $1B,X
9AA5: 2B 0E          BMI    $9AB5
9AA7: BD A5 29       JSR    $A529
9AAA: A6 A0          LDA    ,Y+
9AAC: AA 03          ORA    $3,X
9AAE: A7 02          STA    $2,X
9AB0: 86 04          LDA    #$04
9AB2: A7 88 19       STA    $19,X
9AB5: 6A 88 19       DEC    $19,X
9AB8: 26 1C          BNE    $9AD6
9ABA: 6C 88 18       INC    $18,X
9ABD: A6 88 18       LDA    $18,X
9AC0: 81 03          CMPA   #$03
9AC2: 25 07          BCS    $9ACB
9AC4: 86 00          LDA    #$00
9AC6: A7 88 1B       STA    $1B,X
9AC9: 20 53          BRA    $9B1E
9ACB: E6 A6          LDB    A,Y
9ACD: EA 03          ORB    $3,X
9ACF: E7 02          STB    $2,X
9AD1: C6 04          LDB    #$04
9AD3: E7 88 19       STB    $19,X
9AD6: A6 88 18       LDA    $18,X
9AD9: 81 02          CMPA   #$02
9ADB: 26 41          BNE    $9B1E
9ADD: CC 00 10       LDD    #$0010
9AE0: 6D 03          TST    $3,X
9AE2: 2B 03          BMI    $9AE7
9AE4: CC FF F0       LDD    #$FFF0
9AE7: 6C 88 18       INC    $18,X
9AEA: 10 AE 88 2D    LDY    $2D,X
9AEE: E3 04          ADDD   $4,X
9AF0: ED 24          STD    $4,Y
9AF2: 86 01          LDA    #$01
9AF4: A7 A8 1B       STA    $1B,Y
9AF7: 86 7F          LDA    #$7F
9AF9: A7 22          STA    $2,Y
9AFB: 86 06          LDA    #$06
9AFD: A7 A8 22       STA    interrupt_status_22,Y
9B00: 86 04          LDA    #$04
9B02: BD A5 49       JSR    $A549
9B05: A6 03          LDA    $3,X
9B07: A7 23          STA    $3,Y
9B09: 88 80          EORA   #$80
9B0B: A7 03          STA    $3,X
9B0D: A6 02          LDA    $2,X
9B0F: 88 80          EORA   #$80
9B11: A7 02          STA    $2,X
9B13: A6 01          LDA    $1,X
9B15: 81 02          CMPA   #$02
9B17: 24 05          BCC    $9B1E
9B19: 86 05          LDA    #$05
9B1B: BD FA F8       JSR    $FAF8
9B1E: A6 88 18       LDA    $18,X
9B21: 81 02          CMPA   #$02
9B23: 25 08          BCS    $9B2D
9B25: A6 88 16       LDA    $16,X
9B28: 84 F9          ANDA   #$F9
9B2A: A7 88 16       STA    $16,X
9B2D: 39             RTS

9B40: 34 40          PSHS   U
9B42: BD 9F 83       JSR    $9F83
9B45: EE 88 2D       LDU    $2D,X
9B48: 10 8E 9C 05    LDY    #$9C05
9B4C: 58             ASLB
9B4D: 31 A5          LEAY   B,Y
9B4F: A6 88 1B       LDA    $1B,X
9B52: 2B 11          BMI    $9B65
9B54: BD A5 29       JSR    $A529
9B57: A6 A0          LDA    ,Y+
9B59: AA 03          ORA    $3,X
9B5B: A7 02          STA    $2,X
9B5D: 86 04          LDA    #$04
9B5F: A7 88 19       STA    $19,X
9B62: 6C C8 25       INC    $25,U
9B65: 6A 88 19       DEC    $19,X
9B68: 26 15          BNE    $9B7F
9B6A: 6C 88 18       INC    $18,X
9B6D: A6 88 18       LDA    $18,X
9B70: 81 02          CMPA   #$02
9B72: 24 0D          BCC    $9B81
9B74: E6 A6          LDB    A,Y
9B76: EA 03          ORB    $3,X
9B78: E7 02          STB    $2,X
9B7A: C6 04          LDB    #$04
9B7C: E7 88 19       STB    $19,X
9B7F: 35 C0          PULS   U,PC

9B81: 81 02          CMPA   #$02
9B83: 26 44          BNE    $9BC9
9B85: 6C 88 18       INC    $18,X
9B88: 86 02          LDA    #$02
9B8A: A7 88 19       STA    $19,X
9B8D: 86 81          LDA    #$81
9B8F: BD FE B6       JSR    $FEB6
9B92: A6 01          LDA    $1,X
9B94: 81 02          CMPA   #$02
9B96: 24 05          BCC    $9B9D
9B98: 86 05          LDA    #$05
9B9A: BD FA F8       JSR    $FAF8
9B9D: 86 02          LDA    #$02
9B9F: BD A5 49       JSR    $A549
9BA2: A6 01          LDA    $1,X
9BA4: 81 02          CMPA   #$02
9BA6: 24 07          BCC    $9BAF
9BA8: A6 C8 25       LDA    $25,U
9BAB: 81 03          CMPA   #$03
9BAD: 25 1A          BCS    $9BC9
9BAF: 86 01          LDA    #$01
9BB1: A7 C8 1B       STA    $1B,U
9BB4: 86 00          LDA    #$00
9BB6: A7 C8 22       STA    interrupt_status_22,U
9BB9: A6 88 16       LDA    $16,X
9BBC: 84 F9          ANDA   #$F9
9BBE: A7 88 16       STA    $16,X
9BC1: 86 7F          LDA    #$7F
9BC3: A7 42          STA    $2,U
9BC5: 86 00          LDA    #$00
9BC7: 20 37          BRA    $9C00
9BC9: 6A 88 19       DEC    $19,X
9BCC: 27 08          BEQ    $9BD6
9BCE: A6 01          LDA    $1,X
9BD0: 81 02          CMPA   #$02
9BD2: 10 24 FF C7    LBCC   $9B9D
9BD6: 86 06          LDA    #$06
9BD8: A7 88 1B       STA    $1B,X
9BDB: BD A5 29       JSR    $A529
9BDE: BD 9F 83       JSR    $9F83
9BE1: 10 8E 93 FC    LDY    #$93FC
9BE5: 34 04          PSHS   B
9BE7: 58             ASLB
9BE8: EB E4          ADDB   ,S
9BEA: 31 A5          LEAY   B,Y
9BEC: 35 04          PULS   B
9BEE: 86 02          LDA    #$02
9BF0: A7 88 18       STA    $18,X
9BF3: E6 A6          LDB    A,Y
9BF5: EA 03          ORB    $3,X
9BF7: E7 02          STB    $2,X
9BF9: C6 04          LDB    #$04
9BFB: E7 88 19       STB    $19,X
9BFE: 20 03          BRA    $9C03
9C00: A7 88 1B       STA    $1B,X
9C03: 35 C0          PULS   U,PC

9C11: 86 00          LDA    #$00
9C13: A7 88 1B       STA    $1B,X
9C16: 39             RTS
9C17: A6 88 1B       LDA    $1B,X
9C1A: 2B 2C          BMI    $9C48
9C1C: BD A5 56       JSR    $A556
9C1F: 25 08          BCS    $9C29
9C21: 86 01          LDA    #$01
9C23: A7 88 1B       STA    $1B,X
9C26: 16 0A CB       LBRA   $A6F4
9C29: BD A5 29       JSR    $A529
9C2C: 86 06          LDA    #$06
9C2E: A7 88 19       STA    $19,X
9C31: 10 8E 8C 19    LDY    #$8C19
9C35: A6 88 21       LDA    nb_credits_0021,X
9C38: 81 07          CMPA   #$07
9C3A: 24 0C          BCC    $9C48
9C3C: A6 A6          LDA    A,Y
9C3E: 26 08          BNE    $9C48
9C40: BD 99 67       JSR    $9967
9C43: 86 01          LDA    #$01
9C45: A7 A8 1B       STA    $1B,Y
9C48: 6A 88 19       DEC    $19,X
9C4B: 26 1D          BNE    $9C6A
9C4D: 86 00          LDA    #$00
9C4F: A7 88 1B       STA    $1B,X
9C52: E6 01          LDB    $1,X
9C54: A6 88 25       LDA    $25,X
9C57: C1 22          CMPB   #$22
9C59: 25 02          BCS    $9C5D
9C5B: C0 17          SUBB   #$17
9C5D: 10 8E 9C 81    LDY    #$9C81
9C61: A1 A5          CMPA   B,Y
9C63: 25 05          BCS    $9C6A
9C65: 86 03          LDA    #$03
9C67: A7 88 1B       STA    $1B,X
9C6A: A6 88 15       LDA    $15,X
9C6D: 44             LSRA
9C6E: 44             LSRA
9C6F: 44             LSRA
9C70: 84 01          ANDA   #$01
9C72: 10 8E 9C 7F    LDY    #$9C7F
9C76: E6 03          LDB    $3,X
9C78: C4 80          ANDB   #$80
9C7A: EA A6          ORB    A,Y
9C7C: E7 02          STB    $2,X
9C7E: 39             RTS

9C8E: 34 40          PSHS   U
9C90: A6 88 1B       LDA    $1B,X
9C93: 2B 32          BMI    $9CC7
9C95: A6 88 21       LDA    nb_credits_0021,X
9C98: 27 08          BEQ    $9CA2
9C9A: BD 99 67       JSR    $9967
9C9D: 86 01          LDA    #$01
9C9F: A7 A8 1B       STA    $1B,Y
9CA2: A6 01          LDA    $1,X
9CA4: 81 0A          CMPA   #$0A
9CA6: 27 05          BEQ    $9CAD
9CA8: BD A5 56       JSR    $A556
9CAB: 25 0A          BCS    $9CB7
9CAD: 86 01          LDA    #$01
9CAF: A7 88 1B       STA    $1B,X
9CB2: BD A6 F4       JSR    $A6F4
9CB5: 35 C0          PULS   U,PC
9CB7: BD A5 29       JSR    $A529
9CBA: 86 0A          LDA    #$0A
9CBC: E6 88 17       LDB    $17,X
9CBF: 2A 01          BPL    $9CC2
9CC1: 44             LSRA
9CC2: 8B 03          ADDA   #$03
9CC4: A7 88 19       STA    $19,X
9CC7: A6 88 16       LDA    $16,X
9CCA: 85 10          BITA   #$10
9CCC: 26 0A          BNE    $9CD8
9CCE: 6A 88 19       DEC    $19,X
9CD1: 26 05          BNE    $9CD8
9CD3: 86 00          LDA    #$00
9CD5: A7 88 1B       STA    $1B,X
9CD8: 86 0F          LDA    #$0F
9CDA: AA 03          ORA    $3,X
9CDC: A7 02          STA    $2,X
9CDE: 35 C0          PULS   U,PC
9CE0: A6 88 1B       LDA    $1B,X
9CE3: 2B 21          BMI    $9D06
9CE5: BD A5 29       JSR    $A529
9CE8: A6 01          LDA    $1,X
9CEA: 81 02          CMPA   #$02
9CEC: 25 03          BCS    $9CF1
9CEE: 6F 88 4B       CLR    $4B,X
9CF1: A6 84          LDA    ,X
9CF3: 84 F0          ANDA   #$F0
9CF5: 8A 01          ORA    #$01
9CF7: A7 84          STA    ,X
9CF9: A6 88 15       LDA    $15,X
9CFC: 84 BF          ANDA   #$BF
9CFE: A7 88 15       STA    $15,X
9D01: 86 08          LDA    #$08
9D03: A7 88 19       STA    $19,X
9D06: A6 88 19       LDA    $19,X
9D09: 27 07          BEQ    $9D12
9D0B: 6A 88 19       DEC    $19,X
9D0E: 10 26 00 CE    LBNE   $9DE0
9D12: A6 01          LDA    $1,X
9D14: 81 02          CMPA   #$02
9D16: 25 22          BCS    $9D3A
9D18: 10 8E 03 A2    LDY    #$03A2
9D1C: A6 88 14       LDA    $14,X
9D1F: 84 40          ANDA   #$40
9D21: 27 03          BEQ    $9D26
9D23: 31 A8 5E       LEAY   $5E,Y
9D26: A6 A8 1B       LDA    $1B,Y
9D29: 84 7F          ANDA   #$7F
9D2B: 81 07          CMPA   #$07
9D2D: 26 1F          BNE    $9D4E
9D2F: A6 A8 15       LDA    $15,Y
9D32: 85 40          BITA   #$40
9D34: 10 26 00 A8    LBNE   $9DE0
9D38: 27 14          BEQ    $9D4E
9D3A: A6 88 1F       LDA    $1F,X
9D3D: 26 0F          BNE    $9D4E
9D3F: B6 09 F2       LDA    $09F2
9D42: 2B 0A          BMI    $9D4E
9D44: 86 08          LDA    #$08
9D46: A7 88 22       STA    interrupt_status_22,X
9D49: 86 01          LDA    #$01
9D4B: 7E 9D DA       JMP    $9DDA
9D4E: A6 88 3A       LDA    bank_switch_copy_3a,X
9D51: 97 00          STA    $00
9D53: A6 88 3B       LDA    $3B,X
9D56: 97 01          STA    $01
9D58: E6 88 14       LDB    $14,X
9D5B: C5 40          BITB   #$40
9D5D: 27 0A          BEQ    $9D69
9D5F: A6 88 3C       LDA    $3C,X
9D62: 97 00          STA    $00
9D64: A6 88 3D       LDA    $3D,X
9D67: 97 01          STA    $01
9D69: 96 01          LDA    $01
9D6B: 81 04          CMPA   #$04
9D6D: 24 5A          BCC    $9DC9
9D6F: 96 00          LDA    $00
9D71: 81 20          CMPA   #$20
9D73: 24 54          BCC    $9DC9
9D75: 81 04          CMPA   #$04
9D77: 25 50          BCS    $9DC9
9D79: 10 BE 0E 4B    LDY    $0E4B
9D7D: A6 A8 1B       LDA    $1B,Y
9D80: 84 3F          ANDA   #$3F
9D82: 81 04          CMPA   #$04
9D84: 24 43          BCC    $9DC9
9D86: 81 01          CMPA   #$01
9D88: 27 3F          BEQ    $9DC9
9D8A: A6 88 1F       LDA    $1F,X
9D8D: 81 04          CMPA   #$04
9D8F: 25 38          BCS    $9DC9
9D91: A6 01          LDA    $1,X
9D93: 81 03          CMPA   #$03
9D95: 27 14          BEQ    $9DAB
9D97: 10 8E 9D F4    LDY    #$9DF4
9D9B: 96 36          LDA    $36
9D9D: 48             ASLA
9D9E: 48             ASLA
9D9F: 48             ASLA
9DA0: 31 A6          LEAY   A,Y
9DA2: BD FE 86       JSR    $FE86
9DA5: 84 07          ANDA   #$07
9DA7: A6 A6          LDA    A,Y
9DA9: 26 1E          BNE    $9DC9
9DAB: 10 8E 9D E7    LDY    #$9DE7
9DAF: A6 01          LDA    $1,X
9DB1: 81 22          CMPA   #$22
9DB3: 25 02          BCS    $9DB7
9DB5: 80 17          SUBA   #$17
9DB7: A6 A6          LDA    A,Y
9DB9: 81 FF          CMPA   #$FF
9DBB: 27 0C          BEQ    $9DC9
9DBD: A7 88 1E       STA    $1E,X
9DC0: 86 00          LDA    #$00
9DC2: A7 88 1D       STA    $1D,X
9DC5: 86 07          LDA    #$07
9DC7: 20 11          BRA    $9DDA
9DC9: BD FD A0       JSR    save_and_switch_to_bank_1_fda0
9DCC: BD 40 5A       JSR    lb1_405A
9DCF: 34 01          PSHS   CC
9DD1: BD FD B2       JSR    restore_previous_bank_fdb2
9DD4: 35 01          PULS   CC
9DD6: 25 05          BCS    $9DDD
9DD8: 86 00          LDA    #$00
9DDA: A7 88 1B       STA    $1B,X
9DDD: BD FC 14       JSR    $FC14
9DE0: 86 10          LDA    #$10
9DE2: AA 03          ORA    $3,X
9DE4: A7 02          STA    $2,X
9DE6: 39             RTS

9E14: A6 88 1B       LDA    $1B,X
9E17: 2B 16          BMI    $9E2F
9E19: BD A5 29       JSR    $A529
9E1C: 86 08          LDA    #$08
9E1E: A7 88 19       STA    $19,X
9E21: 86 10          LDA    #$10
9E23: AA 03          ORA    $3,X
9E25: A7 02          STA    $2,X
9E27: A6 88 16       LDA    $16,X
9E2A: 84 F9          ANDA   #$F9
9E2C: A7 88 16       STA    $16,X
9E2F: 10 AE 88 41    LDY    $41,X
9E33: A6 A8 16       LDA    $16,Y
9E36: 2B 38          BMI    $9E70
9E38: EC 28          LDD    $8,Y
9E3A: 10 A3 08       CMPD   $8,X
9E3D: 26 31          BNE    $9E70
9E3F: 6A 88 19       DEC    $19,X
9E42: 26 2B          BNE    $9E6F
9E44: BD 9E 7B       JSR    $9E7B
9E47: 10 AE 88 41    LDY    $41,X
9E4B: A6 A4          LDA    ,Y
9E4D: 2A 1B          BPL    $9E6A
9E4F: A6 01          LDA    $1,X
9E51: 81 02          CMPA   #$02
9E53: 25 15          BCS    $9E6A
9E55: A6 A8 17       LDA    $17,Y
9E58: 84 1F          ANDA   #$1F
9E5A: 81 05          CMPA   #$05
9E5C: 27 09          BEQ    $9E67
9E5E: 81 06          CMPA   #$06
9E60: 26 08          BNE    $9E6A
9E62: 7A 0E 37       DEC    $0E37
9E65: 20 03          BRA    $9E6A
9E67: 7A 0E 38       DEC    $0E38
9E6A: 86 00          LDA    #$00
9E6C: A7 88 1B       STA    $1B,X
9E6F: 39             RTS
9E70: CC 00 00       LDD    #$0000
9E73: ED 88 41       STD    $41,X
9E76: A7 88 21       STA    nb_credits_0021,X
9E79: 20 EF          BRA    $9E6A
9E7B: 10 AE 88 41    LDY    $41,X
9E7F: A6 A4          LDA    ,Y
9E81: 2A 1C          BPL    $9E9F
9E83: AF A8 1F       STX    $1F,Y
9E86: A6 A8 16       LDA    $16,Y
9E89: 8A 80          ORA    #$80
9E8B: A7 A8 16       STA    $16,Y
9E8E: 86 00          LDA    #$00
9E90: A7 A8 1B       STA    $1B,Y
9E93: A6 A8 17       LDA    $17,Y
9E96: 10 8E 9E A0    LDY    #$9EA0
9E9A: A6 A6          LDA    A,Y
9E9C: A7 88 21       STA    nb_credits_0021,X
9E9F: 39             RTS

9EAF: 10 AE 88 2D    LDY    $2D,X
9EB3: A6 A8 1B       LDA    $1B,Y
9EB6: 84 7F          ANDA   #$7F
9EB8: 81 09          CMPA   #$09
9EBA: 27 06          BEQ    $9EC2
9EBC: 86 00          LDA    #$00
9EBE: A7 88 1B       STA    $1B,X
9EC1: 39             RTS
9EC2: A6 88 1B       LDA    $1B,X
9EC5: 2B 56          BMI    $9F1D
9EC7: BD A5 29       JSR    $A529
9ECA: A6 88 21       LDA    nb_credits_0021,X
9ECD: 27 08          BEQ    $9ED7
9ECF: BD 99 67       JSR    $9967
9ED2: 86 01          LDA    #$01
9ED4: A7 A8 1B       STA    $1B,Y
9ED7: 10 AE 88 2D    LDY    $2D,X
9EDB: 34 30          PSHS   Y,X
9EDD: A6 A8 21       LDA    nb_credits_0021,Y
9EE0: 27 0A          BEQ    $9EEC
9EE2: 1F 21          TFR    Y,X
9EE4: BD 99 67       JSR    $9967
9EE7: 86 01          LDA    #$01
9EE9: A7 A8 1B       STA    $1B,Y
9EEC: 35 30          PULS   X,Y
9EEE: 6F 88 2F       CLR    $2F,X
9EF1: A6 01          LDA    $1,X
9EF3: 81 02          CMPA   #$02
9EF5: 24 08          BCC    $9EFF
9EF7: A6 88 16       LDA    $16,X
9EFA: 8A 04          ORA    #$04
9EFC: A7 88 16       STA    $16,X
9EFF: A6 88 2F       LDA    $2F,X
9F02: 84 7F          ANDA   #$7F
9F04: 26 17          BNE    $9F1D
9F06: 86 FF          LDA    #$FF
9F08: A7 88 22       STA    interrupt_status_22,X
9F0B: 6F 88 25       CLR    $25,X
9F0E: 6F 88 30       CLR    $30,X
9F11: A6 01          LDA    $1,X
9F13: 81 02          CMPA   #$02
9F15: 24 06          BCC    $9F1D
9F17: A6 88 45       LDA    $45,X
9F1A: A7 88 47       STA    $47,X
9F1D: 6C 88 30       INC    $30,X
9F20: A6 01          LDA    $1,X
9F22: 81 02          CMPA   #$02
9F24: 24 12          BCC    $9F38
9F26: A6 88 30       LDA    $30,X
9F29: 81 08          CMPA   #$08
9F2B: 25 0B          BCS    $9F38
9F2D: 6F 88 30       CLR    $30,X
9F30: A6 88 1F       LDA    $1F,X
9F33: 27 03          BEQ    $9F38
9F35: 6A 88 1F       DEC    $1F,X
9F38: A6 01          LDA    $1,X
9F3A: 81 02          CMPA   #$02
9F3C: 24 27          BCC    $9F65
9F3E: 6D 88 1F       TST    $1F,X
9F41: 26 22          BNE    $9F65
9F43: 86 04          LDA    #$04
9F45: A7 88 1B       STA    $1B,X
9F48: 86 00          LDA    #$00
9F4A: A7 A8 1B       STA    $1B,Y
9F4D: A6 88 16       LDA    $16,X
9F50: 84 F9          ANDA   #$F9
9F52: A7 88 16       STA    $16,X
9F55: A6 A8 16       LDA    $16,Y
9F58: 84 F9          ANDA   #$F9
9F5A: A7 A8 16       STA    $16,Y
9F5D: 86 7F          LDA    #$7F
9F5F: A7 02          STA    $2,X
9F61: A7 22          STA    $2,Y
9F63: 20 13          BRA    $9F78
9F65: A6 88 22       LDA    interrupt_status_22,X
9F68: 10 2A 02 A8    LBPL   $A214
9F6C: A6 88 2F       LDA    $2F,X
9F6F: 84 7F          ANDA   #$7F
9F71: 10 8E 9F 79    LDY   #jump_table_9f79
9F75: 48             ASLA
9F76: 6E B6          JMP    [A,Y]		; [indirect_jump] [nb_entries=5]
9F78: 39             RTS

9F83: 5F             CLRB
9F84: 10 AE 88 2D    LDY    $2D,X
9F88: A6 01          LDA    $1,X
9F8A: 81 02          CMPA   #$02
9F8C: 24 14          BCC    $9FA2
9F8E: A6 21          LDA    $1,Y
9F90: 81 02          CMPA   #$02
9F92: 25 15          BCS    $9FA9
9F94: 5C             INCB
9F95: 81 03          CMPA   #$03
9F97: 27 10          BEQ    $9FA9
9F99: 5C             INCB
9F9A: 81 02          CMPA   #$02
9F9C: 26 0B          BNE    $9FA9
9F9E: C6 05          LDB    #$05
9FA0: 20 07          BRA    $9FA9
9FA2: C6 03          LDB    #$03
9FA4: 81 03          CMPA   #$03
9FA6: 27 01          BEQ    $9FA9
9FA8: 5C             INCB
9FA9: 39             RTS
9FAA: BD 9F 83       JSR    $9F83
9FAD: 10 8E A2 A2    LDY    #$A2A2
9FB1: 58             ASLB
9FB2: 31 A5          LEAY   B,Y
9FB4: A6 88 2F       LDA    $2F,X
9FB7: 2B 10          BMI    $9FC9
9FB9: 8A 80          ORA    #$80
9FBB: A7 88 2F       STA    $2F,X
9FBE: A6 A0          LDA    ,Y+
9FC0: AA 03          ORA    $3,X
9FC2: A7 02          STA    $2,X
9FC4: 86 08          LDA    #$08
9FC6: A7 88 19       STA    $19,X
9FC9: 6A 88 19       DEC    $19,X
9FCC: 26 34          BNE    $A002
9FCE: 6C 88 18       INC    $18,X
9FD1: A6 88 18       LDA    $18,X
9FD4: 81 02          CMPA   #$02
9FD6: 24 0D          BCC    $9FE5
9FD8: E6 A6          LDB    A,Y
9FDA: EA 03          ORB    $3,X
9FDC: E7 02          STB    $2,X
9FDE: C6 08          LDB    #$08
9FE0: E7 88 19       STB    $19,X
9FE3: 20 1D          BRA    $A002
9FE5: 86 01          LDA    #$01
9FE7: A7 88 2F       STA    $2F,X
9FEA: 6F 88 19       CLR    $19,X
9FED: 6F 88 18       CLR    $18,X
9FF0: 10 AE 88 2D    LDY    $2D,X
9FF4: A6 21          LDA    $1,Y
9FF6: 81 02          CMPA   #$02
9FF8: 24 08          BCC    $A002
9FFA: 86 FF          LDA    #$FF
9FFC: A7 A8 2F       STA    $2F,Y
9FFF: AF A8 2D       STX    $2D,Y
A002: 39             RTS
A003: 34 40          PSHS   U
A005: A6 01          LDA    $1,X
A007: 81 02          CMPA   #$02
A009: 10 24 00 62    LBCC   $A06F
A00D: A6 88 43       LDA    $43,X
A010: 84 20          ANDA   #$20
A012: 27 2A          BEQ    $A03E
A014: 86 02          LDA    #$02
A016: A7 88 2F       STA    $2F,X
A019: 6F 88 18       CLR    $18,X
A01C: 86 05          LDA    #$05
A01E: A7 88 1A       STA    $1A,X
A021: BD 9F 83       JSR    $9F83
A024: 10 8E A2 AC    LDY    #$A2AC
A028: 34 04          PSHS   B
A02A: 58             ASLB
A02B: EB E4          ADDB   ,S
A02D: 31 A5          LEAY   B,Y
A02F: 35 04          PULS   B
A031: A6 A0          LDA    ,Y+
A033: AA 03          ORA    $3,X
A035: A7 02          STA    $2,X
A037: 86 08          LDA    #$08
A039: A7 88 19       STA    $19,X
A03C: 35 C0          PULS   U,PC
A03E: A6 88 43       LDA    $43,X
A041: 84 10          ANDA   #$10
A043: 27 28          BEQ    $A06D
A045: 86 03          LDA    #$03
A047: A7 88 2F       STA    $2F,X
A04A: 86 02          LDA    #$02
A04C: A7 88 1A       STA    $1A,X
A04F: 6F 88 18       CLR    $18,X
A052: BD 9F 83       JSR    $9F83
A055: 10 8E A2 BB    LDY    #$A2BB
A059: 34 04          PSHS   B
A05B: 58             ASLB
A05C: EB E4          ADDB   ,S
A05E: 31 A5          LEAY   B,Y
A060: 35 04          PULS   B
A062: A6 A0          LDA    ,Y+
A064: AA 03          ORA    $3,X
A066: A7 02          STA    $2,X
A068: 86 08          LDA    #$08
A06A: A7 88 19       STA    $19,X
A06D: 35 C0          PULS   U,PC
A06F: 7E FF 68       JMP    $FF68
A072: BD A3 0F       JSR    $A30F
A075: 24 25          BCC    $A09C
A077: 86 02          LDA    #$02
A079: A7 88 2F       STA    $2F,X
A07C: 6F 88 18       CLR    $18,X
A07F: BD 9F 83       JSR    $9F83
A082: 10 8E A2 AC    LDY    #$A2AC
A086: 34 04          PSHS   B
A088: 58             ASLB
A089: EB E4          ADDB   ,S
A08B: 31 A5          LEAY   B,Y
A08D: 35 04          PULS   B
A08F: A6 A0          LDA    ,Y+
A091: AA 03          ORA    $3,X
A093: A7 02          STA    $2,X
A095: 86 04          LDA    #$04
A097: A7 88 19       STA    $19,X
A09A: 35 C0          PULS   U,PC
A09C: 96 29          LDA    number_of_players_flag_0029
A09E: 84 03          ANDA   #$03
A0A0: 81 03          CMPA   #$03
A0A2: 26 7E          BNE    $A122
A0A4: 10 AE 88 2D    LDY    $2D,X
A0A8: 10 8C 03 A2    CMPY   #$03A2
A0AC: 27 06          BEQ    $A0B4
A0AE: 10 8E 03 A2    LDY    #$03A2
A0B2: 20 04          BRA    $A0B8
A0B4: 10 8E 04 00    LDY    #$0400
A0B8: EC 08          LDD    $8,X
A0BA: 10 A3 28       CMPD   $8,Y
A0BD: 26 63          BNE    $A122
A0BF: EC 06          LDD    $6,X
A0C1: A3 26          SUBD   $6,Y
A0C3: DD 00          STD    $00
A0C5: 2A 07          BPL    $A0CE
A0C7: CC 00 00       LDD    #$0000
A0CA: 93 00          SUBD   $00
A0CC: DD 00          STD    $00
A0CE: DC 00          LDD    $00
A0D0: 4D             TSTA
A0D1: 26 4F          BNE    $A122
A0D3: C1 07          CMPB   #$07
A0D5: 24 4B          BCC    $A122
A0D7: 0F 02          CLR    $02
A0D9: EC 04          LDD    $4,X
A0DB: A3 26          SUBD   $6,Y
A0DD: DD 00          STD    $00
A0DF: 2A 09          BPL    $A0EA
A0E1: CC 00 00       LDD    #$0000
A0E4: 93 00          SUBD   $00
A0E6: DD 00          STD    $00
A0E8: 0C 02          INC    $02
A0EA: DC 00          LDD    $00
A0EC: 4D             TSTA
A0ED: 26 33          BNE    $A122
A0EF: C1 1C          CMPB   #$1C
A0F1: 24 2F          BCC    $A122
A0F3: 10 8E A1 24    LDY    #$A124
A0F7: 96 02          LDA    $02
A0F9: E6 03          LDB    $3,X
A0FB: E1 A6          CMPB   A,Y
A0FD: 26 23          BNE    $A122
A0FF: 86 03          LDA    #$03
A101: A7 88 2F       STA    $2F,X
A104: 6F 88 18       CLR    $18,X
A107: BD 9F 83       JSR    $9F83
A10A: 10 8E A2 BB    LDY    #$A2BB
A10E: 34 04          PSHS   B
A110: 58             ASLB
A111: EB E4          ADDB   ,S
A113: 31 A5          LEAY   B,Y
A115: 35 04          PULS   B
A117: A6 A0          LDA    ,Y+
A119: AA 03          ORA    $3,X
A11B: A7 02          STA    $2,X
A11D: 86 04          LDA    #$04
A11F: A7 88 19       STA    $19,X
A122: 35 C0          PULS   U,PC
A124: 80 00          SUBA   #$00
A126: 34 40          PSHS   U
A128: EE 88 2D       LDU    $2D,X
A12B: 6A 88 19       DEC    $19,X
A12E: 26 4A          BNE    $A17A
A130: BD 9F 83       JSR    $9F83
A133: 10 8E A2 AC    LDY    #$A2AC
A137: 34 04          PSHS   B
A139: 58             ASLB
A13A: EB E4          ADDB   ,S
A13C: 31 A5          LEAY   B,Y
A13E: 35 04          PULS   B
A140: 6C 88 18       INC    $18,X
A143: A6 88 18       LDA    $18,X
A146: 81 03          CMPA   #$03
A148: 24 0D          BCC    $A157
A14A: E6 A6          LDB    A,Y
A14C: EA 03          ORB    $3,X
A14E: E7 02          STB    $2,X
A150: C6 04          LDB    #$04
A152: E7 88 19       STB    $19,X
A155: 20 23          BRA    $A17A
A157: 86 01          LDA    #$01
A159: A7 C8 1B       STA    $1B,U
A15C: 86 05          LDA    #$05
A15E: A7 C8 22       STA    interrupt_status_22,U
A161: 86 00          LDA    #$00
A163: A7 88 1B       STA    $1B,X
A166: 86 7F          LDA    #$7F
A168: A7 42          STA    $2,U
A16A: A7 02          STA    $2,X
A16C: A6 88 16       LDA    $16,X
A16F: 84 F9          ANDA   #$F9
A171: A7 88 16       STA    $16,X
A174: 6F 88 51       CLR    $51,X
A177: 6F 88 2F       CLR    $2F,X
A17A: 35 C0          PULS   U,PC
A17C: 34 40          PSHS   U
A17E: 6A 88 19       DEC    $19,X
A181: 26 2D          BNE    $A1B0
A183: BD 9F 83       JSR    $9F83
A186: 10 8E A2 BB    LDY    #$A2BB
A18A: 34 04          PSHS   B
A18C: 58             ASLB
A18D: EB E4          ADDB   ,S
A18F: 31 A5          LEAY   B,Y
A191: 35 04          PULS   B
A193: A6 88 18       LDA    $18,X
A196: E6 A6          LDB    A,Y
A198: EA 03          ORB    $3,X
A19A: E7 02          STB    $2,X
A19C: C6 04          LDB    #$04
A19E: E7 88 19       STB    $19,X
A1A1: 6C 88 18       INC    $18,X
A1A4: A6 88 18       LDA    $18,X
A1A7: 81 03          CMPA   #$03
A1A9: 25 05          BCS    $A1B0
A1AB: 86 01          LDA    #$01
A1AD: A7 88 2F       STA    $2F,X
A1B0: 35 C0          PULS   U,PC
A1B2: BD 9F 83       JSR    $9F83
A1B5: 10 8E A2 DE    LDY    #$A2DE
A1B9: 58             ASLB
A1BA: 31 A5          LEAY   B,Y
A1BC: A6 88 2F       LDA    $2F,X
A1BF: 2B 13          BMI    $A1D4
A1C1: 8A 80          ORA    #$80
A1C3: A7 88 2F       STA    $2F,X
A1C6: BD A5 29       JSR    $A529
A1C9: A6 A0          LDA    ,Y+
A1CB: AA 03          ORA    $3,X
A1CD: A7 02          STA    $2,X
A1CF: 86 04          LDA    #$04
A1D1: A7 88 19       STA    $19,X
A1D4: 6A 88 19       DEC    $19,X
A1D7: 26 3A          BNE    $A213
A1D9: A6 88 18       LDA    $18,X
A1DC: E6 A6          LDB    A,Y
A1DE: EA 03          ORB    $3,X
A1E0: E7 02          STB    $2,X
A1E2: C6 04          LDB    #$04
A1E4: E7 88 19       STB    $19,X
A1E7: 6C 88 18       INC    $18,X
A1EA: A6 88 18       LDA    $18,X
A1ED: 81 02          CMPA   #$02
A1EF: 25 22          BCS    $A213
A1F1: 6F 88 2F       CLR    $2F,X
A1F4: 6F A8 2F       CLR    $2F,Y
A1F7: 86 04          LDA    #$04
A1F9: A7 88 1B       STA    $1B,X
A1FC: 10 AE 88 2D    LDY    $2D,X
A200: 86 00          LDA    #$00
A202: A7 A8 1B       STA    $1B,Y
A205: 86 7F          LDA    #$7F
A207: A7 02          STA    $2,X
A209: A7 22          STA    $2,Y
A20B: A6 88 16       LDA    $16,X
A20E: 84 F9          ANDA   #$F9
A210: A7 88 16       STA    $16,X
A213: 39             RTS
A214: 34 40          PSHS   U
A216: A6 88 15       LDA    $15,X
A219: 84 FE          ANDA   #$FE
A21B: A7 88 15       STA    $15,X
A21E: A6 88 18       LDA    $18,X
A221: 2B 0A          BMI    $A22D
A223: 8A 80          ORA    #$80
A225: A7 88 18       STA    $18,X
A228: 86 06          LDA    #$06
A22A: A7 88 19       STA    $19,X
A22D: 6A 88 19       DEC    $19,X
A230: 26 44          BNE    $A276
A232: A6 88 25       LDA    $25,X
A235: 81 04          CMPA   #$04
A237: 25 21          BCS    $A25A
A239: 86 01          LDA    #$01
A23B: A7 88 1B       STA    $1B,X
A23E: 86 04          LDA    #$04
A240: A7 88 22       STA    interrupt_status_22,X
A243: 86 7F          LDA    #$7F
A245: A7 02          STA    $2,X
A247: 10 AE 88 2D    LDY    $2D,X
A24B: 86 00          LDA    #$00
A24D: A7 A8 1B       STA    $1B,Y
A250: A6 88 16       LDA    $16,X
A253: 84 F9          ANDA   #$F9
A255: A7 88 16       STA    $16,X
A258: 35 C0          PULS   U,PC
A25A: 86 FF          LDA    #$FF
A25C: A7 88 22       STA    interrupt_status_22,X
A25F: 86 01          LDA    #$01
A261: A7 88 2F       STA    $2F,X
A264: BD 9F 83       JSR    $9F83
A267: 10 8E A2 9D    LDY    #$A29D
A26B: A6 A5          LDA    B,Y
A26D: AA 03          ORA    $3,X
A26F: A7 02          STA    $2,X
A271: 6F 88 18       CLR    $18,X
A274: 35 C0          PULS   U,PC
A276: A6 88 22       LDA    interrupt_status_22,X
A279: 48             ASLA
A27A: 97 00          STA    $00
A27C: A6 88 15       LDA    $15,X
A27F: 84 08          ANDA   #$08
A281: 44             LSRA
A282: 44             LSRA
A283: 44             LSRA
A284: 9A 00          ORA    $00
A286: 97 00          STA    $00
A288: BD 9F 83       JSR    $9F83
A28B: 10 8E A2 CA    LDY    #$A2CA
A28F: 58             ASLB
A290: 58             ASLB
A291: 31 A5          LEAY   B,Y
A293: 96 00          LDA    $00
A295: A6 A6          LDA    A,Y
A297: AA 03          ORA    $3,X
A299: A7 02          STA    $2,X
A29B: 35 C0          PULS   U,PC

A2E8: 34 76          PSHS   U,Y,X,D
A2EA: BD A2 F5       JSR    $A2F5
A2ED: AE 88 2D       LDX    $2D,X
A2F0: BD A2 F5       JSR    $A2F5
A2F3: 35 F6          PULS   D,X,Y,U,PC
A2F5: A6 88 1B       LDA    $1B,X
A2F8: 84 7F          ANDA   #$7F
A2FA: 81 0C          CMPA   #$0C
A2FC: 27 10          BEQ    $A30E
A2FE: C6 10          LDB    #$10
A300: A6 03          LDA    $3,X
A302: 2B 05          BMI    $A309
A304: 50             NEGB
A305: 86 FF          LDA    #$FF
A307: 20 01          BRA    $A30A
A309: 4F             CLRA
A30A: E3 04          ADDD   $4,X
A30C: ED 04          STD    $4,X
A30E: 39             RTS
A30F: BD FD A0       JSR    save_and_switch_to_bank_1_fda0
A312: BD 40 5D       JSR    lb1_405D
A315: 34 01          PSHS   CC
A317: BD FD B2       JSR    restore_previous_bank_fdb2
A31A: 35 81          PULS   CC,PC
A31C: 10 8E A3 B2    LDY    #$A3B2
A320: A6 88 1B       LDA    $1B,X
A323: 2B 2E          BMI    $A353
A325: BD A5 29       JSR    $A529
A328: A6 A4          LDA    ,Y
A32A: AA 03          ORA    $3,X
A32C: A7 02          STA    $2,X
A32E: 86 08          LDA    #$08
A330: A7 88 19       STA    $19,X
A333: 10 8E A3 B5    LDY    #$A3B5
A337: 96 36          LDA    $36
A339: A6 A6          LDA    A,Y
A33B: BD FE D1       JSR    $FED1
A33E: A6 88 15       LDA    $15,X
A341: 8A 40          ORA    #$40
A343: A7 88 15       STA    $15,X
A346: A6 88 21       LDA    nb_credits_0021,X
A349: 27 08          BEQ    $A353
A34B: BD 99 67       JSR    $9967
A34E: 86 01          LDA    #$01
A350: A7 A8 1B       STA    $1B,Y
A353: 6A 88 19       DEC    $19,X
A356: 26 56          BNE    $A3AE
A358: 6C 88 18       INC    $18,X
A35B: A6 88 18       LDA    $18,X
A35E: 81 03          CMPA   #$03
A360: 24 0B          BCC    $A36D
A362: A6 A6          LDA    A,Y
A364: A7 02          STA    $2,X
A366: 86 08          LDA    #$08
A368: A7 88 19       STA    $19,X
A36B: 20 41          BRA    $A3AE
A36D: 6F 84          CLR    ,X
A36F: 6F 88 13       CLR    $13,X
A372: 6F 88 15       CLR    $15,X
A375: A6 01          LDA    $1,X
A377: 81 02          CMPA   #$02
A379: 24 0A          BCC    $A385
A37B: A6 88 4C       LDA    $4C,X
A37E: 8A A0          ORA    #$A0
A380: A7 88 4C       STA    $4C,X
A383: 20 18          BRA    $A39D
A385: 6D 88 17       TST    $17,X
A388: 2A 08          BPL    $A392
A38A: B6 09 F2       LDA    $09F2
A38D: 8A C0          ORA    #$C0
A38F: B7 09 F2       STA    $09F2
A392: 7A 09 EF       DEC    $09EF
A395: A6 88 45       LDA    $45,X
A398: 27 03          BEQ    $A39D
A39A: 7A 0A B5       DEC    $0AB5
A39D: A6 01          LDA    $1,X
A39F: 81 22          CMPA   #$22
A3A1: 25 02          BCS    $A3A5
A3A3: 80 17          SUBA   #$17
A3A5: 10 8E A3 B9    LDY    #$A3B9
A3A9: A6 A6          LDA    A,Y
A3AB: BD FE B6       JSR    $FEB6
A3AE: BD FE 80       JSR    $FE80
A3B1: 39             RTS

A3C6: 86 7F          LDA    #$7F
A3C8: A7 02          STA    $2,X
A3CA: 10 AE 88 2D    LDY    $2D,X
A3CE: A6 A8 1B       LDA    $1B,Y
A3D1: 84 7F          ANDA   #$7F
A3D3: 81 08          CMPA   #$08
A3D5: 27 22          BEQ    $A3F9
A3D7: 81 06          CMPA   #$06
A3D9: 27 1E          BEQ    $A3F9
A3DB: 81 0A          CMPA   #$0A
A3DD: 27 1A          BEQ    $A3F9
A3DF: 81 07          CMPA   #$07
A3E1: 26 11          BNE    $A3F4
A3E3: A6 21          LDA    $1,Y
A3E5: 81 04          CMPA   #$04
A3E7: 25 0B          BCS    $A3F4
A3E9: 81 08          CMPA   #$08
A3EB: 24 07          BCC    $A3F4
A3ED: A6 A8 1E       LDA    $1E,Y
A3F0: 81 01          CMPA   #$01
A3F2: 27 05          BEQ    $A3F9
A3F4: 86 00          LDA    #$00
A3F6: A7 88 1B       STA    $1B,X
A3F9: 39             RTS
A3FA: A6 88 43       LDA    $43,X
A3FD: 84 40          ANDA   #$40
A3FF: 27 25          BEQ    $A426
A401: 10 AE 88 2D    LDY    $2D,X
A405: 86 00          LDA    #$00
A407: A7 88 1B       STA    $1B,X
A40A: 86 04          LDA    #$04
A40C: A7 A8 1B       STA    $1B,Y
A40F: A6 88 16       LDA    $16,X
A412: 84 F9          ANDA   #$F9
A414: A7 88 16       STA    $16,X
A417: A6 A8 16       LDA    $16,Y
A41A: 84 F9          ANDA   #$F9
A41C: A7 88 16       STA    $16,X
A41F: 86 7F          LDA    #$7F
A421: A7 02          STA    $2,X
A423: A7 22          STA    $2,Y
A425: 39             RTS
A426: 86 7F          LDA    #$7F
A428: A7 02          STA    $2,X
A42A: 10 AE 88 2D    LDY    $2D,X
A42E: A6 A8 1B       LDA    $1B,Y
A431: 84 7F          ANDA   #$7F
A433: 81 0A          CMPA   #$0A
A435: 27 05          BEQ    $A43C
A437: 86 00          LDA    #$00
A439: A7 88 1B       STA    $1B,X
A43C: 39             RTS
A43D: 32 7C          LEAS   -$4,S
A43F: 10 8E A4 9D    LDY    #$A49D
A443: A6 88 1B       LDA    $1B,X
A446: 2B 2F          BMI    $A477
A448: 10 AF E4       STY    ,S
A44B: 10 AE 88 41    LDY    $41,X
A44F: A6 A8 16       LDA    $16,Y
A452: 2B 42          BMI    $A496
A454: EC 28          LDD    $8,Y
A456: 10 A3 08       CMPD   $8,X
A459: 26 3B          BNE    $A496
A45B: 10 AE E4       LDY    ,S
A45E: BD A5 29       JSR    $A529
A461: A6 A0          LDA    ,Y+
A463: AA 03          ORA    $3,X
A465: A7 02          STA    $2,X
A467: A6 A4          LDA    ,Y
A469: A7 88 19       STA    $19,X
A46C: A6 88 16       LDA    $16,X
A46F: 84 F9          ANDA   #$F9
A471: A7 88 16       STA    $16,X
A474: BD 9E 7B       JSR    $9E7B
A477: 6A 88 19       DEC    $19,X
A47A: 26 17          BNE    $A493
A47C: 6C 88 18       INC    $18,X
A47F: A6 88 18       LDA    $18,X
A482: 81 03          CMPA   #$03
A484: 24 10          BCC    $A496
A486: 48             ASLA
A487: E6 A6          LDB    A,Y
A489: EA 03          ORB    $3,X
A48B: E7 02          STB    $2,X
A48D: 4C             INCA
A48E: E6 A6          LDB    A,Y
A490: E7 88 19       STB    $19,X
A493: 32 64          LEAS   $4,S
A495: 39             RTS
A496: 86 00          LDA    #$00
A498: A7 88 1B       STA    $1B,X
A49B: 20 F6          BRA    $A493

A4A3: 10 8E A5 22    LDY    #$A522
A4A7: A6 88 1B       LDA    $1B,X
A4AA: 2B 27          BMI    $A4D3
A4AC: BD A5 29       JSR    $A529
A4AF: A6 A4          LDA    ,Y
A4B1: A7 02          STA    $2,X
A4B3: 86 02          LDA    #$02
A4B5: A7 88 19       STA    $19,X
A4B8: 86 8C          LDA    #$8C
A4BA: BD FE B6       JSR    $FEB6
A4BD: A6 01          LDA    $1,X
A4BF: A7 88 1D       STA    $1D,X
A4C2: 86 16          LDA    #$16
A4C4: A7 01          STA    $1,X
A4C6: A6 88 21       LDA    nb_credits_0021,X
A4C9: 27 08          BEQ    $A4D3
A4CB: BD 99 67       JSR    $9967
A4CE: 86 01          LDA    #$01
A4D0: A7 A8 1B       STA    $1B,Y
A4D3: 6A 88 19       DEC    $19,X
A4D6: 26 13          BNE    $A4EB
A4D8: 6C 88 18       INC    $18,X
A4DB: A6 88 18       LDA    $18,X
A4DE: 81 07          CMPA   #$07
A4E0: 24 0A          BCC    $A4EC
A4E2: E6 A6          LDB    A,Y
A4E4: E7 02          STB    $2,X
A4E6: C6 02          LDB    #$02
A4E8: E7 88 19       STB    $19,X
A4EB: 39             RTS
A4EC: 6F 84          CLR    ,X
A4EE: 6F 88 13       CLR    $13,X
A4F1: 6F 88 15       CLR    $15,X
A4F4: A6 88 1D       LDA    $1D,X
A4F7: A7 01          STA    $1,X
A4F9: 81 02          CMPA   #$02
A4FB: 25 1C          BCS    $A519
A4FD: 6D 88 17       TST    $17,X
A500: 2A 08          BPL    $A50A
A502: B6 09 F2       LDA    $09F2
A505: 8A C0          ORA    #$C0
A507: B7 09 F2       STA    $09F2
A50A: 7A 09 EF       DEC    $09EF
A50D: A6 88 45       LDA    $45,X
A510: 10 27 FE 89    LBEQ   $A39D
A514: 7A 0A B5       DEC    $0AB5
A517: 20 08          BRA    $A521
A519: A6 88 4C       LDA    $4C,X
A51C: 8A A0          ORA    #$A0
A51E: A7 88 4C       STA    $4C,X
A521: 39             RTS

A529: 6F 88 19       CLR    $19,X
A52C: 6F 88 18       CLR    $18,X
A52F: A6 88 1B       LDA    $1B,X
A532: 8A 80          ORA    #$80
A534: A7 88 1B       STA    $1B,X
A537: A6 01          LDA    $1,X
A539: 81 02          CMPA   #$02
A53B: 25 0B          BCS    $A548
A53D: A6 88 14       LDA    $14,X
A540: 84 7F          ANDA   #$7F
A542: A7 88 14       STA    $14,X
A545: 6C 88 1D       INC    $1D,X
A548: 39             RTS
A549: 34 02          PSHS   A
A54B: BD FC 82       JSR    switch_to_bank_5_fc82
A54E: BD 40 CF       JSR    $40CF	 ; [banks=5]
A551: BD FC 8F       JSR    switch_to_bank_0_fc8f
A554: 35 82          PULS   A,PC
A556: A6 88 15       LDA    $15,X
A559: 85 40          BITA   #$40
A55B: 26 27          BNE    $A584
A55D: EC 0F          LDD    $F,X
A55F: 2A 0B          BPL    $A56C
A561: 32 7E          LEAS   -$2,S
A563: ED E4          STD    ,S
A565: CC 00 00       LDD    #$0000
A568: A3 E4          SUBD   ,S
A56A: 32 62          LEAS   $2,S
A56C: 10 83 04 00    CMPD   #$0400
A570: 24 12          BCC    $A584
A572: 10 8E A5 87    LDY    #$A587
A576: A6 01          LDA    $1,X
A578: 81 22          CMPA   #$22
A57A: 25 02          BCS    $A57E
A57C: 80 17          SUBA   #$17
A57E: E6 88 25       LDB    $25,X
A581: E1 A6          CMPB   A,Y
A583: 39             RTS
A584: 1C FE          ANDCC  #$FE
A586: 39             RTS

A594: 32 7F          LEAS   -$1,S
A596: A6 88 1B       LDA    $1B,X
A599: 2B 7B          BMI    $A616
A59B: BD A5 29       JSR    $A529
A59E: 10 8E 8C 19    LDY    #$8C19
A5A2: A6 88 21       LDA    nb_credits_0021,X
A5A5: 81 07          CMPA   #$07
A5A7: 24 11          BCC    $A5BA
A5A9: A6 A6          LDA    A,Y
A5AB: 26 0D          BNE    $A5BA
A5AD: A6 88 21       LDA    nb_credits_0021,X
A5B0: 27 08          BEQ    $A5BA
A5B2: BD 99 67       JSR    $9967
A5B5: 86 01          LDA    #$01
A5B7: A7 A8 1B       STA    $1B,Y
A5BA: A6 84          LDA    ,X
A5BC: 84 F0          ANDA   #$F0
A5BE: 8A 02          ORA    #$02
A5C0: A7 84          STA    ,X
A5C2: A6 88 15       LDA    $15,X
A5C5: 8A 40          ORA    #$40
A5C7: A7 88 15       STA    $15,X
A5CA: E6 0D          LDB    $D,X
A5CC: 54             LSRB
A5CD: 54             LSRB
A5CE: 54             LSRB
A5CF: 54             LSRB
A5D0: 54             LSRB
A5D1: 10 8E A6 2B    LDY    #$A62B
A5D5: A6 88 32       LDA    $32,X
A5D8: 84 FC          ANDA   #$FC
A5DA: AA A5          ORA    B,Y
A5DC: A7 88 32       STA    $32,X
A5DF: 10 8E A6 33    LDY    #$A633
A5E3: 58             ASLB
A5E4: EC A5          LDD    B,Y
A5E6: E3 06          ADDD   $6,X
A5E8: ED 06          STD    $6,X
A5EA: 10 8E A6 19    LDY    #$A619
A5EE: A6 88 32       LDA    $32,X
A5F1: 84 03          ANDA   #$03
A5F3: A7 E4          STA    ,S
A5F5: 48             ASLA
A5F6: AB E4          ADDA   ,S
A5F8: 48             ASLA
A5F9: 31 A6          LEAY   A,Y
A5FB: EC A1          LDD    ,Y++
A5FD: ED 0F          STD    $F,X
A5FF: EC A1          LDD    ,Y++
A601: ED 88 11       STD    $11,X
A604: EC A4          LDD    ,Y
A606: ED 0D          STD    $D,X
A608: A6 88 1B       LDA    $1B,X
A60B: 84 7F          ANDA   #$7F
A60D: 81 11          CMPA   #$11
A60F: 27 05          BEQ    $A616
A611: 86 02          LDA    #$02
A613: A7 88 18       STA    $18,X
A616: 32 61          LEAS   $1,S
A618: 39             RTS

A643: 34 40          PSHS   U
A645: BD A5 94       JSR    $A594
A648: 10 8E A6 E5    LDY    #$A6E5
A64C: 6C 88 19       INC    $19,X
A64F: A6 88 18       LDA    $18,X
A652: 81 02          CMPA   #$02
A654: 26 1B          BNE    $A671
A656: E6 88 1B       LDB    $1B,X
A659: C4 80          ANDB   #$80
A65B: CA 0F          ORB    #$0F
A65D: E7 88 1B       STB    $1B,X
A660: 34 22          PSHS   Y,A
A662: A6 88 21       LDA    nb_credits_0021,X
A665: 27 08          BEQ    $A66F
A667: BD 99 67       JSR    $9967
A66A: 86 01          LDA    #$01
A66C: A7 A8 1B       STA    $1B,Y
A66F: 35 22          PULS   A,Y
A671: 48             ASLA
A672: E6 A6          LDB    A,Y
A674: EA 03          ORB    $3,X
A676: E7 02          STB    $2,X
A678: 4C             INCA
A679: A6 A6          LDA    A,Y
A67B: A1 88 19       CMPA   $19,X
A67E: 24 0D          BCC    $A68D
A680: 6F 88 19       CLR    $19,X
A683: A6 88 18       LDA    $18,X
A686: 81 04          CMPA   #$04
A688: 24 03          BCC    $A68D
A68A: 6C 88 18       INC    $18,X
A68D: BD 8C CA       JSR    $8CCA
A690: B6 0B 4D       LDA    $0B4D
A693: 84 F0          ANDA   #$F0
A695: 26 07          BNE    $A69E
A697: B6 0B 4C       LDA    $0B4C
A69A: 84 0F          ANDA   #$0F
A69C: 27 17          BEQ    $A6B5
A69E: A6 88 1B       LDA    $1B,X
A6A1: 84 7F          ANDA   #$7F
A6A3: 81 0F          CMPA   #$0F
A6A5: 27 04          BEQ    $A6AB
A6A7: 86 04          LDA    #$04
A6A9: 20 07          BRA    $A6B2
A6AB: 86 01          LDA    #$01
A6AD: A7 88 22       STA    interrupt_status_22,X
A6B0: 86 05          LDA    #$05
A6B2: A7 88 1B       STA    $1B,X
A6B5: A6 88 34       LDA    $34,X
A6B8: 2A 29          BPL    $A6E3
A6BA: EE 88 35       LDU    $35,X
A6BD: A6 C8 17       LDA    $17,U
A6C0: 81 05          CMPA   #$05
A6C2: 24 1F          BCC    $A6E3
A6C4: 10 8E A6 EF    LDY    #$A6EF
A6C8: A6 A6          LDA    A,Y
A6CA: 26 17          BNE    $A6E3
A6CC: 86 01          LDA    #$01
A6CE: A7 88 1B       STA    $1B,X
A6D1: 86 00          LDA    #$00
A6D3: A7 88 22       STA    interrupt_status_22,X
A6D6: 86 06          LDA    #$06
A6D8: A7 C8 1B       STA    $1B,U
A6DB: 86 40          LDA    #$40
A6DD: AA 03          ORA    $3,X
A6DF: 88 80          EORA   #$80
A6E1: A7 4D          STA    $D,U
A6E3: 35 C0          PULS   U,PC

A6F4: 34 76          PSHS   U,Y,X,D                                     
A6F6: 6F 88 25       CLR    $25,X                                       
A6F9: A6 01          LDA    $1,X                                        
A6FB: 81 02          CMPA   #$02                                        
A6FD: 25 15          BCS    $A714
A6FF: 81 08          CMPA   #$08
A701: 24 11          BCC    $A714
A703: A6 88 1F       LDA    $1F,X
A706: 81 18          CMPA   #$18
A708: 25 0A          BCS    $A714
A70A: 6D 88 22       TST    interrupt_status_22,X
A70D: 26 05          BNE    $A714
A70F: 86 01          LDA    #$01
A711: A7 88 22       STA    interrupt_status_22,X
A714: A6 88 22       LDA    interrupt_status_22,X
A717: 48             ASLA
A718: 10 8E A7 1E    LDY   #jump_table_a71e
A71C: 6E B6          JMP    [A,Y]			; [indirect_jump] [nb_entries=10]

A732: A6 88 22       LDA    interrupt_status_22,X
A735: 10 8E A8 71    LDY    #$A871
A739: C6 0B          LDB    #$0B
A73B: 3D             MUL
A73C: 31 AB          LEAY   D,Y
A73E: A6 88 1B       LDA    $1B,X
A741: 10 2B 00 CB    LBMI   $A810
A745: BD A5 29       JSR    $A529
A748: A6 88 16       LDA    $16,X
A74B: 84 F9          ANDA   #$F9
A74D: A7 88 16       STA    $16,X
A750: A6 88 15       LDA    $15,X
A753: 84 F7          ANDA   #$F7
A755: A7 88 15       STA    $15,X
A758: A6 88 21       LDA    nb_credits_0021,X
A75B: 27 2E          BEQ    $A78B
A75D: 34 20          PSHS   Y
A75F: 10 AE 88 41    LDY    $41,X
A763: A6 A8 1B       LDA    $1B,Y
A766: 34 02          PSHS   A
A768: BD 99 67       JSR    $9967
A76B: 35 02          PULS   A
A76D: 1F 89          TFR    A,B
A76F: 84 7F          ANDA   #$7F
A771: 81 04          CMPA   #$04
A773: 26 05          BNE    $A77A
A775: E7 A8 1B       STB    $1B,Y
A778: 20 05          BRA    $A77F
A77A: 86 01          LDA    #$01
A77C: A7 A8 1B       STA    $1B,Y
A77F: A6 88 17       LDA    $17,X
A782: 85 20          BITA   #$20
A784: 27 03          BEQ    $A789
A786: BD 99 32       JSR    $9932
A789: 35 20          PULS   Y
A78B: A6 01          LDA    $1,X
A78D: 81 02          CMPA   #$02
A78F: 25 12          BCS    $A7A3
A791: A6 88 1F       LDA    $1F,X
A794: 26 0D          BNE    $A7A3
A796: 86 88          LDA    #$88
A798: E6 01          LDB    $1,X
A79A: C1 0A          CMPB   #$0A
A79C: 26 02          BNE    $A7A0
A79E: 86 91          LDA    #$91
A7A0: BD FE B6       JSR    $FEB6
A7A3: A6 88 31       LDA    $31,X
A7A6: 84 18          ANDA   #$18
A7A8: 27 2B          BEQ    $A7D5
A7AA: A6 88 38       LDA    $38,X
A7AD: 84 0F          ANDA   #$0F
A7AF: 26 0E          BNE    $A7BF
A7B1: CC 00 00       LDD    #$0000
A7B4: FD 0E 0D       STD    $0E0D
A7B7: B7 0E 0B       STA    $0E0B
A7BA: ED 88 2D       STD    $2D,X
A7BD: 20 16          BRA    $A7D5
A7BF: 7A 0E 0C       DEC    $0E0C
A7C2: CE 0E 0F       LDU    #$0E0F
A7C5: AC C4          CMPX   ,U
A7C7: 26 04          BNE    $A7CD
A7C9: EC 42          LDD    $2,U
A7CB: ED C4          STD    ,U
A7CD: CC 00 00       LDD    #$0000
A7D0: ED 42          STD    $2,U
A7D2: ED 88 2D       STD    $2D,X
A7D5: A6 88 31       LDA    $31,X
A7D8: 84 C7          ANDA   #$C7
A7DA: A7 88 31       STA    $31,X
A7DD: A6 29          LDA    $9,Y
A7DF: A7 88 19       STA    $19,X
A7E2: A6 2A          LDA    $A,Y
A7E4: BD FE D1       JSR    $FED1
A7E7: A6 03          LDA    $3,X
A7E9: 2B 03          BMI    $A7EE
A7EB: BD FE C2       JSR    $FEC2
A7EE: A6 88 15       LDA    $15,X
A7F1: 85 40          BITA   #$40
A7F3: 26 1B          BNE    $A810
A7F5: A6 88 14       LDA    $14,X
A7F8: 85 10          BITA   #$10
A7FA: 26 14          BNE    $A810
A7FC: EC 08          LDD    $8,X
A7FE: ED 88 26       STD    game_in_play_0026,X
A801: 4F             CLRA
A802: E6 27          LDB    $7,Y
A804: E3 08          ADDD   $8,X
A806: ED 08          STD    $8,X
A808: A6 88 14       LDA    $14,X
A80B: 8A 10          ORA    #$10
A80D: A7 88 14       STA    $14,X
A810: A6 88 15       LDA    $15,X
A813: 85 40          BITA   #$40
A815: 26 34          BNE    $A84B
A817: A6 03          LDA    $3,X
A819: A8 A4          EORA   ,Y
A81B: A7 02          STA    $2,X
A81D: 6A 88 19       DEC    $19,X
A820: 10 26 00 4B    LBNE   $A86F
A824: A6 88 15       LDA    $15,X
A827: 8A 40          ORA    #$40
A829: A7 88 15       STA    $15,X
A82C: A6 88 14       LDA    $14,X
A82F: 84 EF          ANDA   #$EF
A831: A7 88 14       STA    $14,X
A834: 4F             CLRA
A835: E6 27          LDB    $7,Y
A837: E3 08          ADDD   $8,X
A839: ED 08          STD    $8,X
A83B: A6 03          LDA    $3,X
A83D: 1F 89          TFR    A,B
A83F: 84 80          ANDA   #$80
A841: A8 28          EORA   $8,Y
A843: A7 03          STA    $3,X
A845: C4 0F          ANDB   #$0F
A847: EA 03          ORB    $3,X
A849: E7 03          STB    $3,X
A84B: BD FA 24       JSR    $FA24
A84E: BD A8 C9       JSR    $A8C9
A851: EC 08          LDD    $8,X
A853: A3 88 26       SUBD   game_in_play_0026,X
A856: 2A 01          BPL    $A859
A858: 5F             CLRB
A859: 4F             CLRA
A85A: 1F 23          TFR    Y,U
A85C: 33 21          LEAU   $1,Y
A85E: E1 C6          CMPB   A,U
A860: 24 05          BCC    $A867
A862: 4C             INCA
A863: 81 02          CMPA   #$02
A865: 25 F7          BCS    $A85E
A867: 33 24          LEAU   $4,Y
A869: E6 03          LDB    $3,X
A86B: E8 C6          EORB   A,U
A86D: E7 02          STB    $2,X
A86F: 35 F6          PULS   D,X,Y,U,PC


A8C9: BD FD A0       JSR    save_and_switch_to_bank_1_fda0
A8CC: BD 40 30       JSR    lb1_4030
A8CF: 34 01          PSHS   CC
A8D1: BD FD B2       JSR    restore_previous_bank_fdb2
A8D4: 35 81          PULS   CC,PC

A8D6: BD FD A0       JSR    save_and_switch_to_bank_1_fda0
A8D9: BD 40 6C       JSR    lb1_406C
A8DC: BD FD B2       JSR    restore_previous_bank_fdb2
A8DF: 35 F6          PULS   D,X,Y,U,PC

A8E1: BD FC 82       JSR    switch_to_bank_5_fc82
A8E4: BD 40 60       JSR    lb5_4060
A8E7: BD FC 8F       JSR    switch_to_bank_0_fc8f
A8EA: 39             RTS
A8EB: BD FD A0       JSR    save_and_switch_to_bank_1_fda0
A8EE: BD 40 A2       JSR    lb1_40A2
A8F1: BD FD B2       JSR    restore_previous_bank_fdb2
A8F4: 35 F6          PULS   D,X,Y,U,PC

A8F6: BD FC 82       JSR    switch_to_bank_5_fc82
A8F9: BD 40 BA       JSR    lb5_40BA
A8FC: BD FC 8F       JSR    switch_to_bank_0_fc8f
A8FF: 39             RTS

A900: A6 88 1B       LDA    $1B,X
A903: 2B 0D          BMI    $A912
A905: A6 88 3E       LDA    $3E,X
A908: 2B 03          BMI    $A90D
A90A: BD FA EE       JSR    $FAEE
A90D: BD B7 E0       JSR    $B7E0
A910: 24 1A          BCC    $A92C
A912: A6 01          LDA    $1,X
A914: 81 22          CMPA   #$22
A916: 25 02          BCS    $A91A
A918: 80 17          SUBA   #$17
A91A: 80 02          SUBA   #$02
A91C: 48             ASLA
; double table structure (table of tables)
A91D: 10 8E A9 2D    LDY   #table_of_jump_tables_a92d
A921: 10 AE A6       LDY    A,Y
A924: A6 88 1E       LDA    $1E,X
A927: 84 7F          ANDA   #$7F
A929: 48             ASLA
A92A: 6E B6          JMP    [A,Y]		; [indirect_jump] [nb_entries=20]
A92C: 39             RTS



A9B9: 96 33          LDA    $33
A9BB: 34 40          PSHS   U
A9BD: CE AA 9A       LDU    #$AA9A
A9C0: 96 36          LDA    $36
A9C2: 48             ASLA
A9C3: EE C6          LDU    A,U
A9C5: A6 88 1B       LDA    $1B,X
A9C8: 2B 26          BMI    $A9F0
A9CA: BD A5 29       JSR    $A529
A9CD: E6 88 15       LDB    $15,X
A9D0: C8 04          EORB   #$04
A9D2: E7 88 15       STB    $15,X
A9D5: 86 12          LDA    #$12
A9D7: C5 04          BITB   #$04
A9D9: 27 02          BEQ    $A9DD
A9DB: 86 14          LDA    #$14
A9DD: AA 03          ORA    $3,X
A9DF: A7 02          STA    $2,X
A9E1: A6 01          LDA    $1,X
A9E3: 81 22          CMPA   #$22
A9E5: 25 02          BCS    $A9E9
A9E7: 80 17          SUBA   #$17
A9E9: 80 02          SUBA   #$02
A9EB: A6 C6          LDA    A,U
A9ED: A7 88 19       STA    $19,X
A9F0: A6 88 18       LDA    $18,X
A9F3: 81 02          CMPA   #$02
A9F5: 24 37          BCC    $AA2E
A9F7: 6A 88 19       DEC    $19,X
A9FA: 26 30          BNE    $AA2C
A9FC: 6C 88 18       INC    $18,X
A9FF: A6 88 18       LDA    $18,X
AA02: 10 8E AA 94    LDY    #$AA94
AA06: E6 88 15       LDB    $15,X
AA09: C5 04          BITB   #$04
AA0B: 27 02          BEQ    $AA0F
AA0D: 8B 03          ADDA   #$03
AA0F: E6 A6          LDB    A,Y
AA11: EA 03          ORB    $3,X
AA13: E7 02          STB    $2,X
AA15: A6 01          LDA    $1,X
AA17: 81 22          CMPA   #$22
AA19: 25 02          BCS    $AA1D
AA1B: 80 17          SUBA   #$17
AA1D: 80 02          SUBA   #$02
AA1F: A6 C6          LDA    A,U
AA21: A7 88 19       STA    $19,X
AA24: A6 88 17       LDA    $17,X
AA27: 2B 03          BMI    $AA2C
AA29: 6C 88 19       INC    $19,X
AA2C: 35 C0          PULS   U,PC
AA2E: 81 02          CMPA   #$02
AA30: 26 08          BNE    $AA3A
AA32: 6C 88 18       INC    $18,X
AA35: 86 03          LDA    #$03
AA37: A7 88 19       STA    $19,X
AA3A: 6A 88 19       DEC    $19,X
AA3D: 27 4B          BEQ    $AA8A
AA3F: A6 88 25       LDA    $25,X
AA42: 81 04          CMPA   #$04
AA44: 24 4C          BCC    $AA92
AA46: 10 8E 03 A2    LDY    #$03A2
AA4A: E6 88 14       LDB    $14,X
AA4D: C5 40          BITB   #$40
AA4F: 27 03          BEQ    $AA54
AA51: 31 A8 5E       LEAY   $5E,Y
AA54: A6 A8 1B       LDA    $1B,Y
AA57: 84 3F          ANDA   #$3F
AA59: 81 02          CMPA   #$02
AA5B: 27 08          BEQ    $AA65
AA5D: 81 03          CMPA   #$03
AA5F: 27 04          BEQ    $AA65
AA61: 81 0A          CMPA   #$0A
AA63: 26 2D          BNE    $AA92
AA65: AC A8 2A       CMPX   $2A,Y
AA68: 26 28          BNE    $AA92
AA6A: A6 01          LDA    $1,X
AA6C: 81 08          CMPA   #$08
AA6E: 27 04          BEQ    $AA74
AA70: 81 22          CMPA   #$22
AA72: 26 12          BNE    $AA86
AA74: 6C 88 2F       INC    $2F,X
AA77: A6 88 2F       LDA    $2F,X
AA7A: 81 03          CMPA   #$03
AA7C: 25 08          BCS    $AA86
AA7E: 86 04          LDA    #$04
AA80: A7 88 1E       STA    $1E,X
AA83: 6F 88 2F       CLR    $2F,X
AA86: 86 07          LDA    #$07
AA88: 20 05          BRA    $AA8F
AA8A: 6F 88 2F       CLR    $2F,X
AA8D: 86 00          LDA    #$00
AA8F: A7 88 1B       STA    $1B,X
AA92: 35 C0          PULS   U,PC

AACE: 86 00          LDA    #$00
AAD0: A7 88 1B       STA    $1B,X
AAD3: 39             RTS
AAD4: BD FC 82       JSR    switch_to_bank_5_fc82
AAD7: BD 40 DB       JSR    $40DB		 ; [banks=5]
AADA: BD FC 8F       JSR    switch_to_bank_0_fc8f
AADD: 39             RTS
AADE: BD FC 82       JSR    switch_to_bank_5_fc82
AAE1: BD 40 DE       JSR    $40DE		 ; [banks=5]
AAE4: BD FC 8F       JSR    switch_to_bank_0_fc8f
AAE7: 39             RTS
AAE8: BD FC 82       JSR    switch_to_bank_5_fc82
AAEB: BD 40 D8       JSR    $40D8	 ; [banks=5]
AAEE: BD FC 8F       JSR    switch_to_bank_0_fc8f
AAF1: 39             RTS
AAF2: 34 40          PSHS   U
AAF4: CE 03 A2       LDU    #$03A2
AAF7: A6 88 14       LDA    $14,X
AAFA: 85 40          BITA   #$40
AAFC: 27 03          BEQ    $AB01
AAFE: 33 C8 5E       LEAU   $5E,U
AB01: A6 88 1B       LDA    $1B,X
AB04: 2B 03          BMI    $AB09
AB06: BD A5 29       JSR    $A529
AB09: A6 88 3B       LDA    $3B,X
AB0C: E6 88 14       LDB    $14,X
AB0F: C5 40          BITB   #$40
AB11: 27 03          BEQ    $AB16
AB13: A6 88 3D       LDA    $3D,X
AB16: 81 04          CMPA   #$04
AB18: 24 7A          BCC    $AB94
AB1A: A6 C8 15       LDA    $15,U
AB1D: 85 40          BITA   #$40
AB1F: 26 73          BNE    $AB94
AB21: 10 8E AB 9B    LDY    #$AB9B
AB25: A6 C8 1B       LDA    $1B,U
AB28: 84 7F          ANDA   #$7F
AB2A: 81 0B          CMPA   #$0B
AB2C: 24 66          BCC    $AB94
AB2E: A6 A6          LDA    A,Y
AB30: 26 62          BNE    $AB94
AB32: EC 08          LDD    $8,X
AB34: 10 A3 48       CMPD   $8,U
AB37: 26 5B          BNE    $AB94
AB39: BD FA 60       JSR    $FA60
AB3C: BD FC 00       JSR    $FC00
AB3F: 27 53          BEQ    $AB94
AB41: BD FA D0       JSR    $FAD0
AB44: A6 88 3A       LDA    bank_switch_copy_3a,X
AB47: E6 88 14       LDB    $14,X
AB4A: C5 40          BITB   #$40
AB4C: 27 03          BEQ    $AB51
AB4E: A6 88 3C       LDA    $3C,X
AB51: 81 14          CMPA   #$14
AB53: 24 3D          BCC    $AB92
AB55: A6 C8 1B       LDA    $1B,U
AB58: 84 7F          ANDA   #$7F
AB5A: 81 06          CMPA   #$06
AB5C: 27 08          BEQ    $AB66
AB5E: 81 08          CMPA   #$08
AB60: 27 04          BEQ    $AB66
AB62: 81 09          CMPA   #$09
AB64: 26 16          BNE    $AB7C
AB66: 10 AE C8 2D    LDY    $2D,U
AB6A: A6 A8 1B       LDA    $1B,Y
AB6D: 84 7F          ANDA   #$7F
AB6F: 81 0C          CMPA   #$0C
AB71: 27 04          BEQ    $AB77
AB73: 81 0A          CMPA   #$0A
AB75: 26 05          BNE    $AB7C
AB77: 86 00          LDA    #$00
AB79: A7 A8 1B       STA    $1B,Y
AB7C: 86 0A          LDA    #$0A
AB7E: A7 C8 1B       STA    $1B,U
AB81: 86 09          LDA    #$09
AB83: A7 88 1B       STA    $1B,X
AB86: AF C8 2D       STX    $2D,U
AB89: EF 88 2D       STU    $2D,X
AB8C: 6F 88 2F       CLR    $2F,X
AB8F: 6F 88 25       CLR    $25,X
AB92: 35 C0          PULS   U,PC
AB94: 86 00          LDA    #$00
AB96: A7 88 1B       STA    $1B,X
AB99: 35 C0          PULS   U,PC

ABA6: BD FC 82       JSR    switch_to_bank_5_fc82
ABA9: BD 40 D5       JSR    $40D5 ; [banks=5]
ABAC: BD FC 8F       JSR    switch_to_bank_0_fc8f
ABAF: 39             RTS

ABB0: 34 40          PSHS   U
ABB2: CE 03 A2       LDU    #$03A2
ABB5: A6 88 14       LDA    $14,X
ABB8: 85 40          BITA   #$40
ABBA: 27 03          BEQ    $ABBF
ABBC: 33 C8 5E       LEAU   $5E,U
ABBF: A6 88 1B       LDA    $1B,X
ABC2: 2B 03          BMI    $ABC7
ABC4: BD A5 29       JSR    $A529
ABC7: A6 88 3B       LDA    $3B,X
ABCA: E6 88 14       LDB    $14,X
ABCD: C5 40          BITB   #$40
ABCF: 27 03          BEQ    $ABD4
ABD1: A6 88 3D       LDA    $3D,X
ABD4: 81 04          CMPA   #$04
ABD6: 24 54          BCC    $AC2C
ABD8: A6 C8 15       LDA    $15,U
ABDB: 85 40          BITA   #$40
ABDD: 26 4D          BNE    $AC2C
ABDF: 10 8E AC 33    LDY    #$AC33
ABE3: A6 C8 1B       LDA    $1B,U
ABE6: 84 7F          ANDA   #$7F
ABE8: 81 04          CMPA   #$04
ABEA: 24 40          BCC    $AC2C
ABEC: A6 A6          LDA    A,Y
ABEE: 26 3C          BNE    $AC2C
ABF0: BD FA 60       JSR    $FA60
ABF3: BD FC 00       JSR    $FC00
ABF6: 26 34          BNE    $AC2C
ABF8: EC 04          LDD    $4,X
ABFA: A3 44          SUBD   $4,U
ABFC: 2A 0B          BPL    $AC09
ABFE: 34 06          PSHS   D
AC00: CC 00 00       LDD    #$0000
AC03: A3 E4          SUBD   ,S
AC05: ED E4          STD    ,S
AC07: 35 06          PULS   D
AC09: 10 83 00 20    CMPD   #$0020
AC0D: 24 18          BCC    $AC27
AC0F: 10 83 00 10    CMPD   #$0010
AC13: 25 17          BCS    $AC2C
AC15: 86 06          LDA    #$06
AC17: A7 88 1B       STA    $1B,X
AC1A: EF 88 2D       STU    $2D,X
AC1D: 86 0C          LDA    #$0C
AC1F: A7 C8 1B       STA    $1B,U
AC22: AF C8 2D       STX    $2D,U
AC25: 20 03          BRA    $AC2A
AC27: BD FA D0       JSR    $FAD0
AC2A: 35 C0          PULS   U,PC
AC2C: 86 00          LDA    #$00
AC2E: A7 88 1B       STA    $1B,X
AC31: 35 C0          PULS   U,PC

AC37: 34 7E          PSHS   U,Y,X,DP,D
AC39: 10 8E AC DC    LDY    #$ACDC
AC3D: A6 88 1B       LDA    $1B,X
AC40: 2B 3F          BMI    $AC81
AC42: BD B7 BD       JSR    $B7BD
AC45: 25 08          BCS    $AC4F
AC47: 86 00          LDA    #$00
AC49: A7 88 1B       STA    $1B,X
AC4C: 7E AC DA       JMP    $ACDA
AC4F: BD A5 29       JSR    $A529
AC52: 86 08          LDA    #$08
AC54: BD FE D1       JSR    $FED1
AC57: A6 84          LDA    ,X
AC59: 84 F0          ANDA   #$F0
AC5B: 8A 02          ORA    #$02
AC5D: A7 84          STA    ,X
AC5F: A6 A0          LDA    ,Y+
AC61: AA 03          ORA    $3,X
AC63: A7 02          STA    $2,X
AC65: A6 A4          LDA    ,Y
AC67: A7 88 19       STA    $19,X
AC6A: A6 88 15       LDA    $15,X
AC6D: 8A 40          ORA    #$40
AC6F: A7 88 15       STA    $15,X
AC72: A6 88 13       LDA    $13,X
AC75: 84 BF          ANDA   #$BF
AC77: A7 88 13       STA    $13,X
AC7A: 6D 03          TST    $3,X
AC7C: 2A 03          BPL    $AC81
AC7E: BD FE C2       JSR    $FEC2
AC81: 6A 88 19       DEC    $19,X
AC84: 26 18          BNE    $AC9E
AC86: A6 88 18       LDA    $18,X
AC89: 81 02          CMPA   #$02
AC8B: 24 04          BCC    $AC91
AC8D: 4C             INCA
AC8E: A7 88 18       STA    $18,X
AC91: 48             ASLA
AC92: E6 A6          LDB    A,Y
AC94: EA 03          ORB    $3,X
AC96: E7 02          STB    $2,X
AC98: 4C             INCA
AC99: E6 A6          LDB    A,Y
AC9B: E7 88 19       STB    $19,X
AC9E: BD FA 24       JSR    $FA24
ACA1: BD FA 2E       JSR    $FA2E
ACA4: B6 0B 4D       LDA    $0B4D
ACA7: 84 F0          ANDA   #$F0
ACA9: 26 1A          BNE    $ACC5
ACAB: B6 0B 4C       LDA    $0B4C
ACAE: 84 F0          ANDA   #$F0
ACB0: 27 28          BEQ    $ACDA
ACB2: B6 0B 4A       LDA    $0B4A
ACB5: 81 0A          CMPA   #$0A
ACB7: 25 0C          BCS    $ACC5
ACB9: 81 0D          CMPA   #$0D
ACBB: 24 08          BCC    $ACC5
ACBD: A6 88 13       LDA    $13,X
ACC0: 8A 40          ORA    #$40
ACC2: A7 88 13       STA    $13,X
ACC5: 86 04          LDA    #$04
ACC7: A7 88 1B       STA    $1B,X
ACCA: A6 84          LDA    ,X
ACCC: 84 F0          ANDA   #$F0
ACCE: 8A 01          ORA    #$01
ACD0: A7 84          STA    ,X
ACD2: A6 88 15       LDA    $15,X
ACD5: 84 BF          ANDA   #$BF
ACD7: A7 88 15       STA    $15,X
ACDA: 35 FE          PULS   D,DP,X,Y,U,PC

ACE4: 34 7E          PSHS   U,Y,X,DP,D
ACE6: 10 8E AD 7F    LDY    #$AD7F
ACEA: A6 88 1B       LDA    $1B,X
ACED: 2B 35          BMI    $AD24
ACEF: BD A5 29       JSR    $A529
ACF2: 86 09          LDA    #$09
ACF4: BD FE D1       JSR    $FED1
ACF7: A6 84          LDA    ,X
ACF9: 84 F0          ANDA   #$F0
ACFB: 8A 02          ORA    #$02
ACFD: A7 84          STA    ,X
ACFF: A6 A0          LDA    ,Y+
AD01: AA 03          ORA    $3,X
AD03: A7 02          STA    $2,X
AD05: A6 A4          LDA    ,Y
AD07: A7 88 19       STA    $19,X
AD0A: A6 88 15       LDA    $15,X
AD0D: 8A 40          ORA    #$40
AD0F: A7 88 15       STA    $15,X
AD12: A6 88 13       LDA    $13,X
AD15: 84 BF          ANDA   #$BF
AD17: A7 88 13       STA    $13,X
AD1A: BD AD 87       JSR    $AD87
AD1D: 6D 03          TST    $3,X
AD1F: 2A 03          BPL    $AD24
AD21: BD FE C2       JSR    $FEC2
AD24: 6A 88 19       DEC    $19,X
AD27: 26 18          BNE    $AD41
AD29: A6 88 18       LDA    $18,X
AD2C: 81 02          CMPA   #$02
AD2E: 24 04          BCC    $AD34
AD30: 4C             INCA
AD31: A7 88 18       STA    $18,X
AD34: 48             ASLA
AD35: E6 A6          LDB    A,Y
AD37: EA 03          ORB    $3,X
AD39: E7 02          STB    $2,X
AD3B: 4C             INCA
AD3C: E6 A6          LDB    A,Y
AD3E: E7 88 19       STB    $19,X
AD41: BD FA 24       JSR    $FA24
AD44: BD FA 2E       JSR    $FA2E
AD47: B6 0B 4D       LDA    $0B4D
AD4A: 84 F0          ANDA   #$F0
AD4C: 26 1A          BNE    $AD68
AD4E: B6 0B 4C       LDA    $0B4C
AD51: 84 F0          ANDA   #$F0
AD53: 27 28          BEQ    $AD7D
AD55: B6 0B 4A       LDA    $0B4A
AD58: 81 0A          CMPA   #$0A
AD5A: 25 0C          BCS    $AD68
AD5C: 81 0D          CMPA   #$0D
AD5E: 24 08          BCC    $AD68
AD60: A6 88 13       LDA    $13,X
AD63: 8A 40          ORA    #$40
AD65: A7 88 13       STA    $13,X
AD68: 86 04          LDA    #$04
AD6A: A7 88 1B       STA    $1B,X
AD6D: A6 84          LDA    ,X
AD6F: 84 F0          ANDA   #$F0
AD71: 8A 01          ORA    #$01
AD73: A7 84          STA    ,X
AD75: A6 88 15       LDA    $15,X
AD78: 84 BF          ANDA   #$BF
AD7A: A7 88 15       STA    $15,X
AD7D: 35 FE          PULS   D,DP,X,Y,U,PC

AD87: A6 88 3A       LDA    $3A,X                                     
AD8A: E6 88 14       LDB    $14,X
AD8D: C5 40          BITB   #$40
AD8F: 27 03          BEQ    $AD94
AD91: A6 88 3C       LDA    $3C,X
AD94: 81 10          CMPA   #$10
AD96: 24 11          BCC    $ADA9
AD98: 81 08          CMPA   #$08
AD9A: 25 08          BCS    $ADA4
AD9C: EC 0F          LDD    $F,X
AD9E: 44             LSRA
AD9F: 56             RORB
ADA0: ED 0F          STD    $F,X
ADA2: 20 05          BRA    $ADA9
ADA4: CC 00 00       LDD    #$0000
ADA7: ED 0F          STD    $F,X
ADA9: 39             RTS
ADAA: 10 8E AE 30    LDY    #$AE30
ADAE: A6 88 1B       LDA    $1B,X
ADB1: 2B 2A          BMI    $ADDD
ADB3: BD A5 29       JSR    $A529
ADB6: A6 A0          LDA    ,Y+
ADB8: AA 03          ORA    $3,X
ADBA: A7 02          STA    $2,X
ADBC: A6 A4          LDA    ,Y
ADBE: A7 88 19       STA    $19,X
ADC1: 86 98          LDA    #$98
ADC3: BD FE B6       JSR    $FEB6
ADC6: 10 AE 88 2D    LDY    $2D,X
ADCA: A6 A8 21       LDA    nb_credits_0021,Y
ADCD: 27 0E          BEQ    $ADDD
ADCF: 34 10          PSHS   X
ADD1: 1F 21          TFR    Y,X
ADD3: BD 99 67       JSR    $9967
ADD6: 86 01          LDA    #$01
ADD8: A7 A8 1B       STA    $1B,Y
ADDB: 35 10          PULS   X
ADDD: 6A 88 19       DEC    $19,X
ADE0: 26 4D          BNE    $AE2F
ADE2: 6C 88 18       INC    $18,X
ADE5: A6 88 18       LDA    $18,X
ADE8: 81 04          CMPA   #$04
ADEA: 25 07          BCS    $ADF3
ADEC: 86 00          LDA    #$00
ADEE: A7 88 1B       STA    $1B,X
ADF1: 20 3C          BRA    $AE2F
ADF3: 48             ASLA
ADF4: E6 A6          LDB    A,Y
ADF6: EA 03          ORB    $3,X
ADF8: E7 02          STB    $2,X
ADFA: 4C             INCA
ADFB: E6 A6          LDB    A,Y
ADFD: E7 88 19       STB    $19,X
AE00: A6 88 18       LDA    $18,X
AE03: 81 03          CMPA   #$03
AE05: 26 28          BNE    $AE2F
AE07: CC 00 10       LDD    #$0010
AE0A: 6D 03          TST    $3,X
AE0C: 2B 03          BMI    $AE11
AE0E: CC FF F0       LDD    #$FFF0
AE11: 6C 88 18       INC    $18,X
AE14: 10 AE 88 2D    LDY    $2D,X
AE18: E3 04          ADDD   $4,X
AE1A: ED 24          STD    $4,Y
AE1C: 86 01          LDA    #$01
AE1E: A7 A8 1B       STA    $1B,Y
AE21: 86 07          LDA    #$07
AE23: A7 A8 22       STA    interrupt_status_22,Y
AE26: 86 04          LDA    #$04
AE28: BD A5 49       JSR    $A549
AE2B: A6 03          LDA    $3,X
AE2D: A7 23          STA    $3,Y
AE2F: 39             RTS

AE38: BD FC 82       JSR    switch_to_bank_5_fc82
AE3B: BD 40 E1       JSR    $40E1	 ; [banks=5]
AE3E: BD FC 8F       JSR    switch_to_bank_0_fc8f
AE41: 39             RTS
AE42: 34 40          PSHS   U
AE44: CE AE 9C       LDU    #$AE9C
AE47: 96 36          LDA    $36
AE49: 33 C6          LEAU   A,U
AE4B: 10 8E AE 98    LDY    #$AE98
AE4F: A6 88 1B       LDA    $1B,X
AE52: 2B 1A          BMI    $AE6E
AE54: BD A5 29       JSR    $A529
AE57: A6 A0          LDA    ,Y+
AE59: AA 03          ORA    $3,X
AE5B: A7 02          STA    $2,X
AE5D: A6 C4          LDA    ,U
AE5F: E6 01          LDB    $1,X
AE61: C1 02          CMPB   #$02
AE63: 24 01          BCC    $AE66
AE65: 4C             INCA
AE66: A7 88 19       STA    $19,X
AE69: 86 8D          LDA    #$8D
AE6B: BD FE B6       JSR    $FEB6
AE6E: 6A 88 19       DEC    $19,X
AE71: 26 23          BNE    $AE96
AE73: 6C 88 18       INC    $18,X
AE76: A6 88 18       LDA    $18,X
AE79: 81 04          CMPA   #$04
AE7B: 24 14          BCC    $AE91
AE7D: E6 A6          LDB    A,Y
AE7F: EA 03          ORB    $3,X
AE81: E7 02          STB    $2,X
AE83: E6 C4          LDB    ,U
AE85: A6 01          LDA    $1,X
AE87: 81 02          CMPA   #$02
AE89: 24 01          BCC    $AE8C
AE8B: 5C             INCB
AE8C: E7 88 19       STB    $19,X
AE8F: 20 05          BRA    $AE96
AE91: 86 00          LDA    #$00
AE93: A7 88 1B       STA    $1B,X
AE96: 35 C0          PULS   U,PC

AEA0: BD FC 82       JSR    switch_to_bank_5_fc82
AEA3: BD 40 E4       JSR    $40E4 ; [banks=5]
AEA6: BD FC 8F       JSR    switch_to_bank_0_fc8f
AEA9: 39             RTS

AEAA: BD FC 82       JSR    switch_to_bank_5_fc82
AEAD: BD 40 E7       JSR    $40E7 ; [banks=5]
AEB0: BD FC 8F       JSR    switch_to_bank_0_fc8f
AEB3: 39             RTS
AEB4: BD FC 82       JSR    switch_to_bank_5_fc82
AEB7: BD 40 D2       JSR    $40D2 ; [banks=5]
AEBA: BD FC 8F       JSR    switch_to_bank_0_fc8f
AEBD: 39             RTS
AEBE: BD FC 82       JSR    switch_to_bank_5_fc82
AEC1: BD 40 B4       JSR    $40B4 ; [banks=5]
AEC4: BD FC 8F       JSR    switch_to_bank_0_fc8f
AEC7: 96 36          LDA    $36
AEC9: 10 8E AE D1    LDY   #jump_table_aed1
AECD: 48             ASLA
AECE: 6E B6          JMP    [A,Y]		; [indirect_jump] [nb_entries=7]
AED0: 39             RTS

AED9: 86 01          LDA    #$01                                         
AEDB: 97 4B          STA    $4B                                          
AEDD: B6 0E 2D       LDA    $0E2D
AEE0: 84 0F          ANDA   #$0F
AEE2: 48             ASLA
AEE3: 10 8E AE EA    LDY   #jump_table_aeea
AEE7: 6E B6          JMP    [A,Y]		; [indirect_jump] [nb_entries=3]
AEE9: 39             RTS

AEF0: BD B0 D0       JSR    $B0D0            
AEF3: BD B0 FE       JSR    $B0FE            
AEF6: 24 03          BCC    $AEFB            
AEF8: BD B0 F1       JSR    $B0F1            
AEFB: 39             RTS

AEFC: 10 8E AF 22    LDY    #$AF22
AF00: 96 36          LDA    $36
AF02: 81 02          CMPA   #$02
AF04: 26 06          BNE    $AF0C
AF06: 96 38          LDA    $38
AF08: 27 02          BEQ    $AF0C
AF0A: 86 03          LDA    #$03
AF0C: A6 A6          LDA    A,Y
AF0E: BD FE B0       JSR    display_credit_feb0
AF11: BD B0 D0       JSR    $B0D0
AF14: BD B0 FE       JSR    $B0FE
AF17: 24 08          BCC    $AF21
AF19: BD B0 F1       JSR    $B0F1
AF1C: 86 01          LDA    #$01
AF1E: B7 0A 54       STA    $0A54
AF21: 39             RTS

AF26: BD B0 D0       JSR    $B0D0 
AF29: BD B0 FE       JSR    $B0FE
AF2C: 24 3D          BCC    $AF6B
AF2E: 96 36          LDA    $36
AF30: 81 02          CMPA   #$02
AF32: 27 07          BEQ    $AF3B
AF34: B6 0A 56       LDA    $0A56
AF37: 26 32          BNE    $AF6B
AF39: 20 0B          BRA    $AF46
AF3B: 0D 37          TST    $37
AF3D: 26 07          BNE    $AF46
AF3F: B6 0A 56       LDA    $0A56
AF42: 81 04          CMPA   #$04
AF44: 27 25          BEQ    $AF6B
AF46: 7F 03 EE       CLR    $03EE
AF49: 7F 04 4C       CLR    $044C
AF4C: 86 FF          LDA    #$FF
AF4E: B7 0E 2D       STA    $0E2D
AF51: 7F 0E 2E       CLR    $0E2E
AF54: 96 36          LDA    $36
AF56: 81 02          CMPA   #$02
AF58: 26 0A          BNE    $AF64
AF5A: 0D 37          TST    $37
AF5C: 26 06          BNE    $AF64
AF5E: 0C 37          INC    $37
AF60: 86 9A          LDA    #$9A
AF62: 20 04          BRA    $AF68
AF64: 0C 36          INC    $36
AF66: 86 91          LDA    #$91
AF68: BD FE B0       JSR    display_credit_feb0
AF6B: 39             RTS
AF6C: B6 0E 2D       LDA    $0E2D
AF6F: 84 0F          ANDA   #$0F
AF71: 48             ASLA
AF72: 10 8E AF 79    LDY   #jump_table_af79
AF76: 6E B6          JMP    [A,Y]		; [indirect_jump] [nb_entries=6]
AF78: 39             RTS

AF85: 86 12          LDA    #$12
AF87: BD FE B0       JSR    display_credit_feb0
AF8A: BD AF 11       JSR    $AF11
AF8D: 39             RTS
AF8E: BD B0 D0       JSR    $B0D0
AF91: BD B0 FE       JSR    $B0FE
AF94: 24 13          BCC    $AFA9
AF96: B6 0B 02       LDA    $0B02
AF99: 2A 0E          BPL    $AFA9
AF9B: B6 0E 2E       LDA    $0E2E
AF9E: 84 03          ANDA   #$03
AFA0: BA 0E 1A       ORA    $0E1A
AFA3: B7 0E 1A       STA    $0E1A
AFA6: BD B0 F1       JSR    $B0F1
AFA9: 39             RTS
AFAA: 8E 03 A2       LDX    #$03A2
AFAD: A6 84          LDA    ,X
AFAF: 2A 03          BPL    $AFB4
AFB1: BD FF 10       JSR    push_one_sprite_entry_ff10
AFB4: 30 88 5E       LEAX   $5E,X
AFB7: A6 84          LDA    ,X
AFB9: 2A 03          BPL    $AFBE
AFBB: BD FF 10       JSR    push_one_sprite_entry_ff10
AFBE: B6 0E 1A       LDA    $0E1A
AFC1: 84 04          ANDA   #$04
AFC3: 27 08          BEQ    $AFCD
AFC5: B6 0A 56       LDA    $0A56
AFC8: 26 03          BNE    $AFCD
AFCA: 7C 0E 2D       INC    $0E2D
AFCD: 39             RTS
AFCE: 96 37          LDA    $37
AFD0: 48             ASLA
AFD1: 10 8E AF E1    LDY   #table_of_jump_tables_afe1
AFD5: 10 AE A6       LDY    A,Y
AFD8: B6 0E 2D       LDA    $0E2D
AFDB: 84 0F          ANDA   #$0F
AFDD: 48             ASLA
AFDE: 6E B6          JMP    [A,Y]		; [indirect_jump] [nb_entries=4]
AFE0: 39             RTS

AFF1: 86 03          LDA    #$03                                       
AFF3: 97 4B          STA    $4B                                        
AFF5: BD B0 D0       JSR    $B0D0
AFF8: BD B0 FE       JSR    $B0FE
AFFB: 24 15          BCC    $B012
AFFD: B6 0A EC       LDA    $0AEC
B000: 85 01          BITA   #$01
B002: 26 0B          BNE    $B00F
B004: 85 40          BITA   #$40
B006: 26 0A          BNE    $B012
B008: 8A 80          ORA    #$80
B00A: B7 0A EC       STA    $0AEC
B00D: 20 03          BRA    $B012
B00F: BD B0 F1       JSR    $B0F1
B012: 39             RTS
B013: BD B0 D0       JSR    $B0D0
B016: BD B0 FE       JSR    $B0FE
B019: 24 32          BCC    $B04D
B01B: 86 7F          LDA    #$7F
B01D: B7 03 A4       STA    $03A4
B020: B7 04 02       STA    $0402
B023: 7F 03 B0       CLR    $03B0
B026: 7F 04 0E       CLR    $040E
B029: B6 0A EC       LDA    $0AEC
B02C: 85 01          BITA   #$01
B02E: 27 0B          BEQ    $B03B
B030: 85 40          BITA   #$40
B032: 26 19          BNE    $B04D
B034: 8A 80          ORA    #$80
B036: B7 0A EC       STA    $0AEC
B039: 20 12          BRA    $B04D
B03B: 7F 03 EE       CLR    $03EE
B03E: 7F 04 4C       CLR    $044C
B041: 86 FF          LDA    #$FF
B043: B7 0E 2D       STA    $0E2D
B046: 7F 0E 2E       CLR    $0E2E
B049: 0C 36          INC    $36
B04B: 0F 37          CLR    $37
B04D: 39             RTS
B04E: 96 29          LDA    number_of_players_flag_0029
B050: 84 03          ANDA   #$03
B052: 81 03          CMPA   #$03
B054: 26 4B          BNE    $B0A1
B056: 10 8E B0 63    LDY   #jump_table_b063
B05A: B6 0E 2D       LDA    $0E2D
B05D: 84 0F          ANDA   #$0F
B05F: 48             ASLA
B060: 6E B6          JMP    [A,Y]		; [indirect_jump] [nb_entries=2]
B062: 39             RTS

B067: 86 0F          LDA    #$0F
B069: BD FE B0       JSR    display_credit_feb0
B06C: BD B0 D0       JSR    $B0D0
B06F: BD B0 FE       JSR    $B0FE                                        
B072: 24 2C          BCC    $B0A0                                        
B074: 7F 03 EE       CLR    $03EE                                        
B077: 7F 04 4C       CLR    $044C
B07A: 86 FF          LDA    #$FF
B07C: B7 0E 2D       STA    $0E2D
B07F: 7F 0E 2E       CLR    $0E2E
B082: 0C 37          INC    $37
B084: 7F 03 EA       CLR    $03EA
B087: 7F 04 48       CLR    $0448
B08A: 86 40          LDA    #$40
B08C: B7 03 C1       STA    $03C1
B08F: B7 04 1F       STA    $041F
B092: BD FC BE       JSR    $FCBE
B095: BD FA E4       JSR    $FAE4
B098: 7F 03 A5       CLR    $03A5
B09B: 86 80          LDA    #$80
B09D: B7 04 03       STA    $0403
B0A0: 39             RTS

B0A1: 10 8E B0 B5    LDY    #jump_table_b0b5
B0A5: B6 0E 2D       LDA    $0E2D
B0A8: 26 05          BNE    $B0AF
B0AA: C6 01          LDB    #$01
B0AC: F7 0A 54       STB    $0A54
B0AF: 84 0F          ANDA   #$0F
B0B1: 48             ASLA
B0B2: 6E B6          JMP    [A,Y]		; [indirect_jump] [nb_entries=3]
B0B4: 39             RTS

B0BB: BD B0 D0       JSR    $B0D0
B0BE: BD B0 FE       JSR    $B0FE
B0C1: 24 0C          BCC    $B0CF
B0C3: BD B0 F1       JSR    $B0F1
B0C6: 10 8E 09 6B    LDY    #$096B
B0CA: 86 01          LDA    #$01
B0CC: A7 A8 1B       STA    $1B,Y
B0CF: 39             RTS
B0D0: B6 0E 2D       LDA    $0E2D
B0D3: 2B 1B          BMI    $B0F0
B0D5: 8A 80          ORA    #$80
B0D7: B7 0E 2D       STA    $0E2D
B0DA: C6 10          LDB    #$10
B0DC: B6 03 B7       LDA    $03B7
B0DF: 85 40          BITA   #$40
B0E1: 26 03          BNE    $B0E6
B0E3: F7 03 B0       STB    $03B0
B0E6: B6 04 15       LDA    $0415
B0E9: 85 40          BITA   #$40
B0EB: 26 03          BNE    $B0F0
B0ED: F7 04 0E       STB    $040E
B0F0: 39             RTS
B0F1: B6 0E 2D       LDA    $0E2D
B0F4: 84 0F          ANDA   #$0F
B0F6: 4C             INCA
B0F7: B7 0E 2D       STA    $0E2D
B0FA: 7F 0E 2E       CLR    $0E2E
B0FD: 39             RTS
B0FE: 8E 03 A2       LDX    #$03A2
B101: A6 88 21       LDA    nb_credits_0021,X
B104: 27 08          BEQ    $B10E
B106: BD 99 67       JSR    $9967
B109: 86 01          LDA    #$01
B10B: A7 A8 1B       STA    $1B,Y
B10E: 0F 2A          CLR    $2A
B110: BD B1 37       JSR    $B137
B113: 30 88 5E       LEAX   $5E,X
B116: A6 88 21       LDA    nb_credits_0021,X
B119: 27 08          BEQ    $B123
B11B: BD 99 67       JSR    $9967
B11E: 86 01          LDA    #$01
B120: A7 A8 1B       STA    $1B,Y
B123: 0C 2A          INC    $2A
B125: BD B1 37       JSR    $B137
B128: B6 0E 2E       LDA    $0E2E
B12B: 84 03          ANDA   #$03
B12D: 81 03          CMPA   #$03
B12F: 27 03          BEQ    $B134
B131: 1C FE          ANDCC  #$FE
B133: 39             RTS
B134: 1A 01          ORCC   #$01
B136: 39             RTS
B137: A6 84          LDA    ,X
B139: 2B 0A          BMI    $B145
B13B: A6 88 48       LDA    $48,X
B13E: 10 27 00 EC    LBEQ   $B22E
B142: BD 84 D6       JSR    $84D6
B145: 96 51          LDA    $51
B147: 84 01          ANDA   #$01
B149: 10 27 00 DC    LBEQ   $B229
B14D: BD 8B 8B       JSR    $8B8B
B150: A6 88 1B       LDA    $1B,X
B153: 1F 89          TFR    A,B
B155: 84 3F          ANDA   #$3F
B157: 81 00          CMPA   #$00
B159: 27 19          BEQ    $B174
B15B: 81 05          CMPA   #$05
B15D: 27 0D          BEQ    $B16C
B15F: 48             ASLA
B160: 10 8E 8B 59    LDY   #jump_table_8b59
B164: AD B6          JSR    [A,Y]        ; [indirect_jump] [nb_entries=25]
B166: BD FC B4       JSR    $FCB4
B169: 7E B2 29       JMP    $B229
B16C: 86 04          LDA    #$04
B16E: A7 88 1B       STA    $1B,X
B171: 7E B2 29       JMP    $B229
B174: 5D             TSTB
B175: 2B 14          BMI    $B18B
B177: BD A5 29       JSR    $A529
B17A: A6 84          LDA    ,X
B17C: 84 F0          ANDA   #$F0
B17E: 8A 01          ORA    #$01
B180: A7 84          STA    ,X
B182: 86 01          LDA    #$01
B184: A7 88 19       STA    $19,X
B187: 86 10          LDA    #$10
B189: A7 0E          STA    $E,X
B18B: 10 8E B2 81    LDY    #$B281
B18F: 96 36          LDA    $36
B191: 1F 89          TFR    A,B
B193: 48             ASLA
B194: 48             ASLA
B195: 0D 2A          TST    $2A
B197: 27 02          BEQ    $B19B
B199: 8B 02          ADDA   #$02
B19B: C1 02          CMPB   #$02
B19D: 25 16          BCS    $B1B5
B19F: C1 03          CMPB   #$03
B1A1: 27 08          BEQ    $B1AB
B1A3: 0D 37          TST    $37
B1A5: 26 0E          BNE    $B1B5
B1A7: 8B 0C          ADDA   #$0C
B1A9: 20 0A          BRA    $B1B5
B1AB: D6 29          LDB    number_of_players_flag_0029
B1AD: C4 03          ANDB   #$03
B1AF: C1 03          CMPB   #$03
B1B1: 27 02          BEQ    $B1B5
B1B3: 8B 04          ADDA   #$04
B1B5: 10 AE A6       LDY    A,Y
B1B8: B6 0E 2D       LDA    $0E2D
B1BB: 84 0F          ANDA   #$0F
B1BD: 48             ASLA
B1BE: 48             ASLA
B1BF: 31 A6          LEAY   A,Y
B1C1: A6 A0          LDA    ,Y+
B1C3: A7 88 37       STA    $37,X
B1C6: 34 20          PSHS   Y
B1C8: BD B2 38       JSR    $B238
B1CB: BD FC 1E       JSR    $FC1E
B1CE: BD B2 42       JSR    $B242
B1D1: 35 20          PULS   Y
B1D3: B6 0B 4D       LDA    $0B4D
B1D6: 84 F0          ANDA   #$F0
B1D8: 26 0C          BNE    $B1E6
B1DA: B6 0B 4C       LDA    $0B4C
B1DD: 84 F0          ANDA   #$F0
B1DF: 26 05          BNE    $B1E6
B1E1: 86 11          LDA    #$11
B1E3: A7 88 1B       STA    $1B,X
B1E6: EC 04          LDD    $4,X
B1E8: DD 00          STD    $00
B1EA: A6 A0          LDA    ,Y+
B1EC: 27 04          BEQ    $B1F2
B1EE: EC 06          LDD    $6,X
B1F0: DD 00          STD    $00
B1F2: 96 36          LDA    $36
B1F4: 81 02          CMPA   #$02
B1F6: 26 13          BNE    $B20B
B1F8: 0D 37          TST    $37
B1FA: 26 0F          BNE    $B20B
B1FC: B6 0E 2D       LDA    $0E2D
B1FF: 84 0F          ANDA   #$0F
B201: 26 08          BNE    $B20B
B203: EC A1          LDD    ,Y++
B205: 93 00          SUBD   $00
B207: 2A 20          BPL    $B229
B209: 20 13          BRA    $B21E
B20B: EC A1          LDD    ,Y++
B20D: 93 00          SUBD   $00
B20F: 2A 07          BPL    $B218
B211: DD 00          STD    $00
B213: CC 00 00       LDD    #$0000
B216: 93 00          SUBD   $00
B218: 10 83 00 04    CMPD   #$0004
B21C: 24 0B          BCC    $B229
B21E: 96 2A          LDA    $2A
B220: 4C             INCA
B221: BA 0E 2E       ORA    $0E2E
B224: B7 0E 2E       STA    $0E2E
B227: 6F 0E          CLR    $E,X
B229: BD FF 10       JSR    push_one_sprite_entry_ff10
B22C: 20 09          BRA    $B237
B22E: 96 2A          LDA    $2A
B230: 4C             INCA
B231: BA 0E 2E       ORA    $0E2E
B234: B7 0E 2E       STA    $0E2E
B237: 39             RTS
B238: BD FD A0       JSR    save_and_switch_to_bank_1_fda0
B23B: BD 40 57       JSR    $4057 ; [banks=1]
B23E: BD FD B2       JSR    restore_previous_bank_fdb2
B241: 39             RTS
B242: 10 8E B2 63    LDY    #$B263
B246: 96 36          LDA    $36
B248: C6 06          LDB    #$06
B24A: 3D             MUL
B24B: 31 AB          LEAY   D,Y
B24D: B6 0E 2D       LDA    $0E2D
B250: 84 0F          ANDA   #$0F
B252: A6 A6          LDA    A,Y
B254: 27 09          BEQ    $B25F
B256: BD FE 80       JSR    $FE80
B259: 86 80          LDA    #$80
B25B: B7 0B 4D       STA    $0B4D
B25E: 39             RTS
B25F: BD 8C CA       JSR    $8CCA
B262: 39             RTS

push_player_sprites_b331:
B331: 8E 03 A2       LDX    #$03A2
B334: 0F 2A          CLR    $2A
B336: BD B3 46       JSR    push_player_sprite_b346
B339: 96 29          LDA    number_of_players_flag_0029
B33B: 2A 08          BPL    $B345
B33D: 30 88 5E       LEAX   $5E,X		; 0x400
B340: 0C 2A          INC    $2A
B342: BD B3 46       JSR    push_player_sprite_b346
B345: 39             RTS

push_player_sprite_b346:
B346: BD FD A0       JSR    save_and_switch_to_bank_1_fda0
B349: BD 40 7B       JSR    lb1_push_player_sprite_407b
B34C: BD FD B2       JSR    restore_previous_bank_fdb2
B34F: 39             RTS

push_some_sprites_b350:
B350: 8E 03 A2       LDX    #$03A2
B353: 0F 2A          CLR    $2A
B355: BD B3 61       JSR    push_one_sprite_b361
B358: 30 88 5E       LEAX   $5E,X		; X=$400
B35B: 0C 2A          INC    $2A
B35D: BD B3 61       JSR    push_one_sprite_b361
B360: 39             RTS

push_one_sprite_b361:
B361: A6 84          LDA    ,X
B363: 2A 6F          BPL    $B3D4
B365: 96 36          LDA    $36
B367: 26 0B          BNE    $B374
B369: B6 0E 2F       LDA    $0E2F
B36C: 81 05          CMPA   #$05
B36E: 25 60          BCS    $B3D0
B370: 86 80          LDA    #$80
B372: 20 0A          BRA    $B37E
B374: 86 90          LDA    #$90
B376: D6 2A          LDB    $2A
B378: C1 01          CMPB   #$01
B37A: 27 02          BEQ    $B37E
B37C: 86 78          LDA    #$78
B37E: A7 0D          STA    $D,X
B380: 86 08          LDA    #$08
B382: A7 0E          STA    $E,X
B384: 96 36          LDA    $36
B386: 84 01          ANDA   #$01
B388: 10 8E B3 DE    LDY    #$B3DE
B38C: A6 A6          LDA    A,Y
B38E: BD FE B0       JSR    display_credit_feb0
B391: 10 8E B3 E0    LDY    #$B3E0
B395: 96 36          LDA    $36
B397: 84 02          ANDA   #$02
B399: 34 02          PSHS   A
B39B: 48             ASLA
B39C: AB E4          ADDA   ,S
B39E: 31 A6          LEAY   A,Y
B3A0: 35 02          PULS   A
B3A2: EC 06          LDD    $6,X
B3A4: 10 A3 A1       CMPD   ,Y++
B3A7: 24 1B          BCC    $B3C4
B3A9: 86 40          LDA    #$40
B3AB: A7 0D          STA    $D,X
B3AD: 96 2A          LDA    $2A
B3AF: 48             ASLA
B3B0: 31 A6          LEAY   A,Y
B3B2: EC A4          LDD    ,Y
B3B4: 10 A3 04       CMPD   $4,X
B3B7: 24 0B          BCC    $B3C4
B3B9: 6F 0E          CLR    $E,X
B3BB: 96 2A          LDA    $2A
B3BD: 4C             INCA
B3BE: BA 0E 30       ORA    intro_anim_flag_0e30
B3C1: B7 0E 30       STA    intro_anim_flag_0e30
B3C4: BD FE 80       JSR    $FE80
B3C7: 96 51          LDA    $51
B3C9: 84 01          ANDA   #$01
B3CB: 27 03          BEQ    $B3D0
B3CD: BD FC 1E       JSR    $FC1E
B3D0: BD FF 10       JSR    push_one_sprite_entry_ff10
B3D3: 39             RTS

B3D4: 96 2A          LDA    $2A
B3D6: 4C             INCA
B3D7: BA 0E 30       ORA    intro_anim_flag_0e30
B3DA: B7 0E 30       STA    intro_anim_flag_0e30
B3DD: 39             RTS

B3EC: BD FD A0       JSR    save_and_switch_to_bank_1_fda0
B3EF: BD 40 87       JSR    lb1_4087
B3F2: BD FD B2       JSR    restore_previous_bank_fdb2
B3F5: 39             RTS

push_sprites_in_pre_shadow_memory_b3f6:
B3F6: BD FD A0       JSR    save_and_switch_to_bank_1_fda0
B3F9: BD 40 8D       JSR    lb1_push_sprites_in_pre_shadow_memory_408d
B3FC: BD FD B2       JSR    restore_previous_bank_fdb2
B3FF: 39             RTS

B400: 34 7E          PSHS   U,Y,X,DP,D
B402: 96 36          LDA    $36
B404: 26 10          BNE    $B416
B406: 96 4B          LDA    $4B
B408: 27 0C          BEQ    $B416
B40A: 17 00 0B       LBSR   $B418
B40D: 17 01 1D       LBSR   $B52D
B410: 17 02 33       LBSR   init_rest_of_thugs_b646
B413: 17 03 26       LBSR   $B73C
B416: 35 FE          PULS   D,DP,X,Y,U,PC
B418: 8E 04 5E       LDX    #$045E
B41B: 17 00 0D       LBSR   $B42B
B41E: 17 00 2D       LBSR   $B44E
B421: 17 00 4E       LBSR   $B472
B424: 17 00 70       LBSR   $B497
B427: 17 00 71       LBSR   $B49B
B42A: 39             RTS
B42B: A6 88 31       LDA    $31,X
B42E: 2B 1D          BMI    $B44D
B430: 8A 80          ORA    #$80
B432: A7 88 31       STA    $31,X
B435: CC 00 78       LDD    #$0078
B438: ED 04          STD    $4,X
B43A: CC 01 20       LDD    #$0120
B43D: ED 06          STD    $6,X
B43F: CC 01 00       LDD    #$0100
B442: ED 08          STD    $8,X
B444: 86 00          LDA    #$00
B446: A7 88 1B       STA    $1B,X
B449: 86 1F          LDA    #$1F
B44B: A7 01          STA    $1,X
B44D: 39             RTS
B44E: A6 88 1B       LDA    $1B,X
B451: 84 7F          ANDA   #$7F
B453: 81 00          CMPA   #$00
B455: 26 1A          BNE    $B471
B457: B6 04 CE       LDA    $04CE
B45A: 84 7F          ANDA   #$7F
B45C: 81 03          CMPA   #$03
B45E: 26 11          BNE    $B471
B460: B6 04 CB       LDA    $04CB
B463: 81 02          CMPA   #$02
B465: 26 0A          BNE    $B471
B467: 86 01          LDA    #$01
B469: A7 88 1B       STA    $1B,X
B46C: 86 99          LDA    #$99
B46E: 17 4A 45       LBSR   $FEB6
B471: 39             RTS
B472: A6 88 1B       LDA    $1B,X
B475: 2B 1F          BMI    $B496
B477: 8A 80          ORA    #$80
B479: A7 88 1B       STA    $1B,X
B47C: 6F 88 19       CLR    $19,X
B47F: 6F 88 18       CLR    $18,X
B482: 6F 0E          CLR    $E,X
B484: E6 84          LDB    ,X
B486: C4 F0          ANDB   #$F0
B488: CA 81          ORB    #$81
B48A: E7 84          STB    ,X
B48C: 84 7F          ANDA   #$7F
B48E: 81 05          CMPA   #$05
B490: 26 04          BNE    $B496
B492: 86 08          LDA    #$08
B494: A7 0E          STA    $E,X
B496: 39             RTS
B497: 17 49 E6       LBSR   $FE80
B49A: 39             RTS
B49B: A6 88 1B       LDA    $1B,X
B49E: 84 7F          ANDA   #$7F
B4A0: 48             ASLA
B4A1: 10 8E B4 AB    LDY   #jump_table_b4ab
B4A5: AD B6          JSR    [A,Y]        ; [indirect_jump] [nb_entries=6]
B4A7: BD FF 10       JSR    push_one_sprite_entry_ff10
B4AA: 39             RTS

B4B7: 86 08          LDA    #$08
B4B9: A7 02          STA    $2,X
B4BB: 39             RTS

B4BC: 86 01          LDA    #$01
B4BE: AB 88 18       ADDA   $18,X
B4C1: A7 02          STA    $2,X
B4C3: 6C 88 19       INC    $19,X
B4C6: 86 08          LDA    #$08
B4C8: E6 88 18       LDB    $18,X
B4CB: 27 02          BEQ    $B4CF
B4CD: 86 14          LDA    #$14
B4CF: A1 88 19       CMPA   $19,X
B4D2: 24 12          BCC    $B4E6
B4D4: 6F 88 19       CLR    $19,X
B4D7: 6C 88 18       INC    $18,X
B4DA: A6 88 18       LDA    $18,X
B4DD: 81 02          CMPA   #$02
B4DF: 25 05          BCS    $B4E6
B4E1: 86 04          LDA    #$04
B4E3: A7 88 1B       STA    $1B,X
B4E6: 39             RTS
B4E7: 86 03          LDA    #$03
B4E9: A7 02          STA    $2,X
B4EB: 6C 88 19       INC    $19,X
B4EE: A6 88 19       LDA    $19,X
B4F1: 81 10          CMPA   #$10
B4F3: 25 09          BCS    $B4FE
B4F5: 86 05          LDA    #$05
B4F7: A7 88 1B       STA    $1B,X
B4FA: 86 40          LDA    #$40
B4FC: A7 0D          STA    $D,X
B4FE: 39             RTS
B4FF: 86 04          LDA    #$04
B501: AB 88 18       ADDA   $18,X
B504: A7 02          STA    $2,X
B506: 6C 88 19       INC    $19,X
B509: A6 88 19       LDA    $19,X
B50C: 81 08          CMPA   #$08
B50E: 25 1C          BCS    $B52C
B510: 6F 88 19       CLR    $19,X
B513: 6C 88 18       INC    $18,X
B516: A6 88 18       LDA    $18,X
B519: 84 01          ANDA   #$01
B51B: 27 05          BEQ    $B522
B51D: 86 92          LDA    #$92
B51F: 17 49 94       LBSR   $FEB6
B522: A6 88 18       LDA    $18,X
B525: 81 04          CMPA   #$04
B527: 25 03          BCS    $B52C
B529: 6F 88 18       CLR    $18,X
B52C: 39             RTS
B52D: B6 04 79       LDA    $0479
B530: 84 7F          ANDA   #$7F
B532: 81 04          CMPA   #$04
B534: 27 13          BEQ    $B549
B536: 81 05          CMPA   #$05
B538: 27 0F          BEQ    $B549
B53A: 8E 04 B3       LDX    #$04B3
B53D: 17 00 0A       LBSR   $B54A
B540: 17 00 2E       LBSR   $B571
B543: 17 00 50       LBSR   $B596
B546: 17 00 51       LBSR   $B59A
B549: 39             RTS
B54A: A6 88 31       LDA    $31,X
B54D: 2B 21          BMI    $B570
B54F: 8A 80          ORA    #$80
B551: A7 88 31       STA    $31,X
B554: CC 00 A0       LDD    #$00A0
B557: ED 04          STD    $4,X
B559: CC 01 20       LDD    #$0120
B55C: ED 06          STD    $6,X
B55E: CC 01 00       LDD    #$0100
B561: ED 08          STD    $8,X
B563: 86 02          LDA    #$02
B565: A7 88 1B       STA    $1B,X
B568: 86 08          LDA    #$08
B56A: A7 01          STA    $1,X
B56C: 86 C0          LDA    #$C0
B56E: A7 0D          STA    $D,X
B570: 39             RTS
B571: A6 88 1B       LDA    $1B,X
B574: 2B 1F          BMI    $B595
B576: 8A 80          ORA    #$80
B578: A7 88 1B       STA    $1B,X
B57B: 6F 0E          CLR    $E,X
B57D: 6F 88 19       CLR    $19,X
B580: 6F 88 18       CLR    $18,X
B583: E6 84          LDB    ,X
B585: C4 F0          ANDB   #$F0
B587: CA 81          ORB    #$81
B589: E7 84          STB    ,X
B58B: 84 7F          ANDA   #$7F
B58D: 81 02          CMPA   #$02
B58F: 26 04          BNE    $B595
B591: 86 08          LDA    #$08
B593: A7 0E          STA    $E,X
B595: 39             RTS
B596: 17 48 E7       LBSR   $FE80
B599: 39             RTS
B59A: A6 88 1B       LDA    $1B,X
B59D: 84 7F          ANDA   #$7F
B59F: 48             ASLA
B5A0: 10 8E B5 AA    LDY   #jump_table_b5aa
B5A4: AD B6          JSR    [A,Y]        ; [indirect_jump] [nb_entries=4]
B5A6: BD FF 10       JSR    push_one_sprite_entry_ff10
B5A9: 39             RTS

B5B6: 86 84          LDA    #$84                                       
B5B8: A7 02          STA    $2,X                                       
B5BA: 6C 88 19       INC    $19,X                                      
B5BD: A6 88 19       LDA    $19,X
B5C0: 81 10          CMPA   #$10
B5C2: 25 05          BCS    $B5C9
B5C4: 86 03          LDA    #$03
B5C6: A7 88 1B       STA    $1B,X
B5C9: 39             RTS
B5CA: 86 84          LDA    #$84
B5CC: AB 88 18       ADDA   $18,X
B5CF: A7 02          STA    $2,X
B5D1: 6C 88 19       INC    $19,X
B5D4: A6 88 19       LDA    $19,X
B5D7: 81 08          CMPA   #$08
B5D9: 25 1C          BCS    $B5F7
B5DB: A6 88 18       LDA    $18,X
B5DE: 84 01          ANDA   #$01
B5E0: 26 05          BNE    $B5E7
B5E2: 86 92          LDA    #$92
B5E4: 17 48 CF       LBSR   $FEB6
B5E7: 6F 88 19       CLR    $19,X
B5EA: 6C 88 18       INC    $18,X
B5ED: A6 88 18       LDA    $18,X
B5F0: 81 04          CMPA   #$04
B5F2: 25 03          BCS    $B5F7
B5F4: 6F 88 18       CLR    $18,X
B5F7: DC 3C          LDD    $3C
B5F9: C3 00 90       ADDD   #$0090
B5FC: 10 A3 04       CMPD   $4,X
B5FF: 25 05          BCS    $B606
B601: 86 00          LDA    #$00
B603: A7 88 1B       STA    $1B,X
B606: 39             RTS
B607: 10 8E B6 36    LDY    #$B636
B60B: A6 88 18       LDA    $18,X
B60E: E6 A6          LDB    A,Y
B610: E7 02          STB    $2,X
B612: 6C 88 19       INC    $19,X
B615: E6 88 18       LDB    $18,X
B618: 10 8E B6 3E    LDY    #$B63E
B61C: A6 88 19       LDA    $19,X
B61F: A1 A5          CMPA   B,Y
B621: 25 12          BCS    $B635
B623: 6F 88 19       CLR    $19,X
B626: 6C 88 18       INC    $18,X
B629: A6 88 18       LDA    $18,X
B62C: 81 02          CMPA   #$02
B62E: 26 05          BNE    $B635
B630: 86 80          LDA    #$80
B632: 17 48 81       LBSR   $FEB6
B635: 39             RTS

; initialize the 3 enemies that don't move during the intro scene
init_rest_of_thugs_b646:
B646: 34 7E          PSHS   U,Y,X,DP,D                                   
B648: 5F             CLRB
B649: 8E 05 08       LDX    #$0508			; rest of the thugs: punk, barechested, boss
B64C: 17 00 16       LBSR   set_object_properties_b665
B64F: 17 00 52       LBSR   $B6A4
B652: 17 00 83       LBSR   $B6D8
B655: 17 00 A8       LBSR   $B700
B658: 17 00 AC       LBSR   $B707
B65B: 30 88 55       LEAX   $55,X
B65E: 5C             INCB
B65F: C1 03          CMPB   #$03
B661: 25 E9          BCS    $B64C
B663: 35 FE          PULS   D,DP,X,Y,U,PC

; < D: object number
set_object_properties_b665:
B665: 34 7E          PSHS   U,Y,X,DP,D
B667: A6 88 31       LDA    $31,X
B66A: 2B 27          BMI    $B693
B66C: 8A 80          ORA    #$80
B66E: A7 88 31       STA    $31,X
; get pushed stack value, times 5
B671: A6 61          LDA    $1,S	; retrieve pushed object number from stack (D lsb)
B673: 48             ASLA
B674: 48             ASLA
B675: AB 61          ADDA   $1,S
B677: 10 8E B6 95    LDY    #$B695		; get ROM values for object (start enemies)
B67B: 31 A6          LEAY   A,Y
B67D: EC A4          LDD    ,Y
B67F: ED 04          STD    $4,X		; enemy X
B681: EC 22          LDD    $2,Y
B683: ED 06          STD    $6,X		; enemy Y
B685: A6 24          LDA    $4,Y
B687: A7 01          STA    $1,X		; enemy type
B689: CC 01 00       LDD    #$0100
B68C: ED 08          STD    $8,X
B68E: 86 00          LDA    #$00
B690: A7 88 1B       STA    $1B,X
B693: 35 FE          PULS   D,DP,X,Y,U,PC

B6A4: 34 7E          PSHS   U,Y,X,DP,D
B6A6: A6 88 1B       LDA    $1B,X
B6A9: 84 7F          ANDA   #$7F
B6AB: 81 02          CMPA   #$02
B6AD: 27 14          BEQ    $B6C3
B6AF: DC 3C          LDD    $3C
B6B1: C3 00 A0       ADDD   #$00A0
B6B4: 10 B3 04 62    CMPD   $0462
B6B8: 24 1C          BCC    $B6D6
B6BA: 86 40          LDA    #$40
B6BC: A7 0D          STA    $D,X
B6BE: 86 02          LDA    #$02
B6C0: A7 88 1B       STA    $1B,X
B6C3: B6 0E 31       LDA    $0E31
B6C6: 27 0E          BEQ    $B6D6
B6C8: DC 3C          LDD    $3C
B6CA: C3 00 E0       ADDD   #$00E0
B6CD: 10 B3 04 62    CMPD   $0462
B6D1: 24 03          BCC    $B6D6
B6D3: 7F 0E 31       CLR    $0E31
B6D6: 35 FE          PULS   D,DP,X,Y,U,PC
B6D8: 34 7E          PSHS   U,Y,X,DP,D
B6DA: A6 88 1B       LDA    $1B,X
B6DD: 2B 1F          BMI    $B6FE
B6DF: 8A 80          ORA    #$80
B6E1: A7 88 1B       STA    $1B,X
B6E4: 6F 0E          CLR    $E,X
B6E6: 6F 88 19       CLR    $19,X
B6E9: 6F 88 18       CLR    $18,X
B6EC: E6 84          LDB    ,X
B6EE: C4 F0          ANDB   #$F0
B6F0: CA 81          ORB    #$81
B6F2: E7 84          STB    ,X
B6F4: 84 7F          ANDA   #$7F
B6F6: 81 02          CMPA   #$02
B6F8: 26 04          BNE    $B6FE
B6FA: 86 08          LDA    #$08
B6FC: A7 0E          STA    $E,X
B6FE: 35 FE          PULS   D,DP,X,Y,U,PC
B700: 34 7E          PSHS   U,Y,X,DP,D
B702: 17 47 7B       LBSR   $FE80
B705: 35 FE          PULS   D,DP,X,Y,U,PC
B707: 34 7E          PSHS   U,Y,X,DP,D
B709: 86 84          LDA    #$84
B70B: A7 02          STA    $2,X
B70D: A6 88 1B       LDA    $1B,X
B710: 84 7F          ANDA   #$7F
B712: 81 02          CMPA   #$02
B714: 26 21          BNE    $B737
B716: 86 04          LDA    #$04
B718: AB 88 18       ADDA   $18,X
B71B: A7 02          STA    $2,X
B71D: 6C 88 19       INC    $19,X
B720: A6 88 19       LDA    $19,X
B723: 81 08          CMPA   #$08
B725: 25 10          BCS    $B737
B727: 6F 88 19       CLR    $19,X
B72A: 6C 88 18       INC    $18,X
B72D: A6 88 18       LDA    $18,X
B730: 81 04          CMPA   #$04
B732: 25 03          BCS    $B737
B734: 6F 88 18       CLR    $18,X
B737: BD FF 10       JSR    push_one_sprite_entry_ff10
B73A: 35 FE          PULS   D,DP,X,Y,U,PC
B73C: FC 04 62       LDD    $0462
B73F: 10 83 01 10    CMPD   #$0110
B743: 25 10          BCS    $B755
B745: 10 8E 04 5E    LDY    #$045E
B749: 6F A0          CLR    ,Y+
B74B: 10 8C 06 5C    CMPY   #$065C
B74F: 25 F8          BCS    $B749
B751: 86 00          LDA    #$00
B753: 97 4B          STA    $4B
B755: 39             RTS

vbl_delay_b756:
B756: 34 04          PSHS   B
B758: 8D 1B          BSR    wait_vbl_off_b775
B75A: 8D 11          BSR    wait_vbl_on_b76d
B75C: 4A             DECA
B75D: 26 F9          BNE    $B758
B75F: 35 84          PULS   B,PC

vbl_delay_b761:
B761: 34 76          PSHS   U,Y,X,D
B763: 8D 10          BSR    wait_vbl_off_b775
B765: 8D 06          BSR    wait_vbl_on_b76d
B767: 6A E4          DEC    ,S
B769: 26 F8          BNE    $B763
B76B: 35 F6          PULS   D,X,Y,U,PC

wait_vbl_on_b76d:
B76D: F6 38 02       LDB    extra_3802
B770: C4 08          ANDB   #$08
B772: 26 F9          BNE    wait_vbl_on_b76d
B774: 39             RTS

wait_vbl_off_b775:
B775: F6 38 02       LDB    extra_3802
B778: C4 08          ANDB   #$08
B77A: 27 F9          BEQ    wait_vbl_off_b775
B77C: 39             RTS

B77D: 0D 53          TST    $53
B77F: 26 FC          BNE    $B77D
B781: 39             RTS

vbl_sync_b782:
B782: 34 04          PSHS   B
B784: 8D EF          BSR    wait_vbl_off_b775
B786: 8D E5          BSR    wait_vbl_on_b76d
B788: 35 84          PULS   B,PC

call_bank3_b78a:
B78A: 96 3A          LDA    bank_switch_copy_3a
B78C: 8A 60          ORA    #$60		; bank=3
B78E: 97 3A          STA    bank_switch_copy_3a
B790: B7 38 08       STA    bankswitch_3808
B793: BD 6C 0F       JSR    $6C0F ; [banks=3]
B796: BD FC 8F       JSR    switch_to_bank_0_fc8f
B799: 39             RTS

B79A: 96 3A          LDA    bank_switch_copy_3a
B79C: 8A 60          ORA    #$60		; bank=3
B79E: 97 3A          STA    bank_switch_copy_3a
B7A0: B7 38 08       STA    bankswitch_3808
B7A3: BD 6C 15       JSR    $6C15 ; [banks=3]
B7A6: 34 01          PSHS   CC
B7A8: BD FC 8F       JSR    switch_to_bank_0_fc8f
B7AB: 35 81          PULS   CC,PC

call_bank3_b7ad:
B7AD: 96 3A          LDA    bank_switch_copy_3a
B7AF: 8A 60          ORA    #$60    ; bank=3
B7B1: 97 3A          STA    bank_switch_copy_3a
B7B3: B7 38 08       STA    bankswitch_3808
B7B6: BD 6C 18       JSR    $6C18 ; [banks=3]
B7B9: BD FC 8F       JSR    switch_to_bank_0_fc8f
B7BC: 39             RTS
B7BD: BD FC 82       JSR    switch_to_bank_5_fc82
B7C0: BD 40 AB       JSR    $40AB ; [banks=5]
B7C3: 34 01          PSHS   CC
B7C5: BD FC 8F       JSR    switch_to_bank_0_fc8f
B7C8: 35 81          PULS   CC,PC

B7CA: 96 3A          LDA    bank_switch_copy_3a
B7CC: 8A 60          ORA    #$60	; bank=3
B7CE: 97 3A          STA    bank_switch_copy_3a
B7D0: B7 38 08       STA    bankswitch_3808
B7D3: BD 6C 1B       JSR    $6C1B ; [banks=3]
B7D6: 96 3A          LDA    bank_switch_copy_3a
B7D8: 84 1F          ANDA   #$1F
B7DA: 97 3A          STA    bank_switch_copy_3a
B7DC: B7 38 08       STA    bankswitch_3808
B7DF: 39             RTS

B7E0: BD FC 82       JSR    switch_to_bank_5_fc82
B7E3: BD 40 C6       JSR    $40C6 ; [banks=5]
B7E6: 34 01          PSHS   CC
B7E8: BD FC 8F       JSR    switch_to_bank_0_fc8f
B7EB: 35 81          PULS   CC,PC

memory_check_b7ed:
; start with WORK RAM 0000-1000
B7ED: DE 3A          LDU    bank_switch_copy_3a
B7EF: 8E 00 00       LDX    #$0000
B7F2: 10 8E B8 E5    LDY    #$B8E5	; random part of ROM as source (not zeroes!)
B7F6: C6 03          LDB    #$03
B7F8: A6 A5          LDA    B,Y
B7FA: A7 84          STA    ,X
B7FC: A6 84          LDA    ,X
B7FE: A1 A5          CMPA   B,Y		; compare to see if same value
B800: 26 0E          BNE    $B810
B802: 5A             DECB
B803: 2A F3          BPL    $B7F8
B805: 30 01          LEAX   $1,X
B807: 8C 10 00       CMPX   #fg_tiles_palette_1000
B80A: 26 EA          BNE    $B7F6
B80C: C6 00          LDB    #$00		; no RAM error
B80E: 20 02          BRA    $B812
B810: C6 01          LDB    #$01		; RAM error
B812: 86 00          LDA    #$00
B814: DF 3A          STU    bank_switch_copy_3a
B816: BD FE A1       JSR    set_screen_orientation_fea1
B819: BD B8 EA       JSR    write_diagnostic_message_b8ea	; "WORK RAM OK"
B81C: 0F 02          CLR    $02
B81E: 96 3A          LDA    bank_switch_copy_3a
B820: 84 1F          ANDA   #$1F
B822: 97 3A          STA    bank_switch_copy_3a
B824: 0F 00          CLR    $00		; checksum for 2 banks (1 rom = 2 banks)
B826: 0F 01          CLR    $01
; checksum of banks, loop 3 times (ROM 1-3 in diag screen, 2 banks per ROM)
B828: 8E 40 00       LDX    #bank_address_4000
B82B: 96 3A          LDA    bank_switch_copy_3a
B82D: B7 38 08       STA    bankswitch_3808
B830: A6 80          LDA    ,X+		; [bank_address]
B832: 9B 00          ADDA   $00
B834: 97 00          STA    $00
B836: 8C 80 00       CMPX   #$8000
B839: 26 F5          BNE    $B830
B83B: 0C 01          INC    $01
B83D: 96 3A          LDA    bank_switch_copy_3a
B83F: 8B 20          ADDA   #$20		; next bank
B841: 97 3A          STA    bank_switch_copy_3a
B843: 96 01          LDA    $01
B845: 81 02          CMPA   #$02	
B847: 26 DF          BNE    $B828
B849: 10 8E FF E0    LDY    #$FFE0		; contains 3 checksum bytes 5E, 26, 00
B84D: D6 02          LDB    $02
B84F: 96 00          LDA    $00
B851: A1 A5          CMPA   B,Y
B853: 27 04          BEQ    $B859
B855: C6 01          LDB    #$01		; checksum error
B857: 20 02          BRA    $B85B
B859: C6 00          LDB    #$00		; no error
B85B: 0C 02          INC    $02
B85D: 96 02          LDA    $02
B85F: BD B8 EA       JSR    write_diagnostic_message_b8ea
B862: 96 02          LDA    $02
B864: 81 03          CMPA   #$03
B866: 26 BC          BNE    $B824
; checksumming main ROM (ROM 4 in diag screen)
B868: 8E 80 00       LDX    #$8000
B86B: 0F 00          CLR    $00
B86D: A6 80          LDA    ,X+
B86F: 9B 00          ADDA   $00
B871: 97 00          STA    $00
B873: 8C E0 00       CMPX   #$E000
B876: 26 F5          BNE    $B86D
B878: C6 00          LDB    #$00
B87A: 10 8E FF E0    LDY    #$FFE0
B87E: 96 00          LDA    $00
B880: A1 23          CMPA   $3,Y
B882: 27 02          BEQ    $B886
B884: C6 01          LDB    #$01		; error in main ROM (ROM 4)
B886: 86 04          LDA    #$04
B888: BD B8 EA       JSR    write_diagnostic_message_b8ea
B88B: 7F 0E 3E       CLR    irq_sync_flag_0e3e
B88E: 96 3A          LDA    bank_switch_copy_3a
B890: 8A 10          ORA    #$10
B892: 97 3A          STA    bank_switch_copy_3a
B894: B7 38 08       STA    bankswitch_3808
; now the subcpu ROM
B897: B6 38 02       LDA    extra_3802
B89A: 84 10          ANDA   #$10
B89C: 26 F9          BNE    $B897
B89E: 96 3A          LDA    bank_switch_copy_3a
B8A0: 84 EF          ANDA   #$EF
B8A2: 97 3A          STA    bank_switch_copy_3a
B8A4: B7 38 08       STA    bankswitch_3808
; wait for sub cpu ready
B8A7: B6 38 02       LDA    extra_3802
B8AA: 84 10          ANDA   #$10
B8AC: 27 F9          BEQ    $B8A7
; trigger sub irq
B8AE: B7 38 0F       STA    sub_irq_380f
; wait some time, let subcpu reply
B8B1: 7D 0E 3E       TST    irq_sync_flag_0e3e
B8B4: 27 FB          BEQ    $B8B1
; now wait for subcpu to reply
B8B6: BD 8A B5       JSR    wait_subcpu_reply_8ab5
B8B9: B6 20 00       LDA    subcpu_shared_2000		; check value that subcpu has put there
B8BC: 81 84          CMPA   #$84
B8BE: 27 0A          BEQ    $B8CA			; it is the expected value: okay!
B8C0: 86 05          LDA    #$05
B8C2: C6 01          LDB    #$01
B8C4: BD B8 EA       JSR    write_diagnostic_message_b8ea
B8C7: 7E B8 C7       JMP    $B8C7
B8CA: 86 05          LDA    #$05
B8CC: C6 00          LDB    #$00
B8CE: BD B8 EA       JSR    write_diagnostic_message_b8ea
B8D1: 86 80          LDA    #$80
B8D3: BD B7 56       JSR    vbl_delay_b756
B8D6: CE 0E FF       LDU    #$0EFF
B8D9: 96 3A          LDA    bank_switch_copy_3a
B8DB: 84 1F          ANDA   #$1F
B8DD: 97 3A          STA    bank_switch_copy_3a
B8DF: B7 38 08       STA    bankswitch_3808
B8E2: 7E 80 43       JMP    $8043

; < A: message index
; < B: 0 if OK, 1 if ERROR
write_diagnostic_message_b8ea:
B8EA: D7 0E          STB    $0E
B8EC: 97 0F          STA    $0F
B8EE: 10 8E B9 2A    LDY    #$B92A		; message/address table
B8F2: 48             ASLA
B8F3: 10 AE A6       LDY    A,Y
B8F6: AE A1          LDX    ,Y++
B8F8: E6 A0          LDB    ,Y+
B8FA: 27 08          BEQ    $B904
B8FC: 86 04          LDA    #$04
B8FE: C0 20          SUBB   #$20
B900: ED 81          STD    ,X++	; [video_address_word]
B902: 20 F4          BRA    $B8F8
B904: 8E 1A 30       LDX    #$1A30
B907: 96 0F          LDA    $0F
B909: 27 08          BEQ    $B913
B90B: 0A 0F          DEC    $0F
B90D: 30 89 00 80    LEAX   $0080,X
B911: 20 F4          BRA    $B907
B913: 10 8E B9 69    LDY    #$B969
B917: 96 0E          LDA    $0E
B919: 48             ASLA
B91A: 10 AE A6       LDY    A,Y
B91D: E6 A0          LDB    ,Y+
B91F: 27 08          BEQ    $B929
B921: 86 04          LDA    #$04
B923: C0 20          SUBB   #$20
B925: ED 81          STD    ,X++		; [video_address_word]
B927: 20 F4          BRA    $B91D
B929: 39             RTS

B9B0: 96 51          LDA    $51                                         
B9B2: 84 01          ANDA   #$01
B9B4: 26 12          BNE    $B9C8
B9B6: BD F9 9C       JSR    $F99C
B9B9: 96 51          LDA    $51
B9BB: 84 1E          ANDA   #$1E
B9BD: 26 09          BNE    $B9C8
B9BF: BD F9 A6       JSR    $F9A6
B9C2: BD F9 B0       JSR    $F9B0
B9C5: BD F9 BA       JSR    $F9BA
B9C8: 7F 09 F0       CLR    $09F0
B9CB: 8E 04 5E       LDX    #$045E
B9CE: A6 84          LDA    ,X
B9D0: 10 2A 00 AE    LBPL   $BA82
B9D4: BD BA 9D       JSR    $BA9D
B9D7: A6 88 1B       LDA    $1B,X
B9DA: 84 3F          ANDA   #$3F
B9DC: 81 0B          CMPA   #$0B
B9DE: 27 27          BEQ    $BA07
B9E0: 96 36          LDA    $36
B9E2: 81 03          CMPA   #$03
B9E4: 26 04          BNE    $B9EA
B9E6: 0D 38          TST    $38
B9E8: 26 16          BNE    $BA00
B9EA: DC 3C          LDD    $3C
B9EC: C3 01 30       ADDD   #$0130
B9EF: 10 A3 04       CMPD   $4,X
B9F2: 10 24 00 0A    LBCC   $BA00
B9F6: B6 09 F2       LDA    $09F2
B9F9: 2A 78          BPL    $BA73
B9FB: B6 0E 52       LDA    $0E52
B9FE: 26 73          BNE    $BA73
BA00: BD BB 15       JSR    $BB15
BA03: 10 24 00 6C    LBCC   $BA73
BA07: A6 88 21       LDA    nb_credits_0021,X
BA0A: 27 08          BEQ    $BA14
BA0C: 10 AE 88 41    LDY    $41,X
BA10: A6 03          LDA    $3,X
BA12: A7 23          STA    $3,Y
BA14: 10 8E BA 1D    LDY   #jump_table_ba1d
BA18: 96 36          LDA    $36
BA1A: 48             ASLA
BA1B: 6E B6          JMP    [A,Y]		; [indirect_jump] [nb_entries=4]

BA25: BD F9 92       JSR    $F992
BA28: BD BA A7       JSR    $BAA7
BA2B: BD F9 6A       JSR    $F96A
BA2E: 7E BA 73       JMP    $BA73
BA31: BD FD 3A       JSR    $FD3A
BA34: BD BA A7       JSR    $BAA7
BA37: BD FB C0       JSR    $FBC0
BA3A: BD F9 92       JSR    $F992
BA3D: BD FB CA       JSR    $FBCA
BA40: BD F9 6A       JSR    $F96A
BA43: 7E BA 73       JMP    $BA73
BA46: BD FD 44       JSR    $FD44
BA49: BD F9 92       JSR    $F992
BA4C: BD BA A7       JSR    $BAA7
BA4F: BD FB CA       JSR    $FBCA
BA52: BD F9 6A       JSR    $F96A
BA55: BD FB DE       JSR    $FBDE
BA58: 7E BA 73       JMP    $BA73
BA5B: BD F9 92       JSR    $F992
BA5E: BD BB 64       JSR    $BB64
BA61: BD BA A7       JSR    $BAA7
BA64: BD F9 6A       JSR    $F96A
BA67: BD F9 74       JSR    $F974
BA6A: BD FB E8       JSR    $FBE8
BA6D: BD FB F2       JSR    $FBF2
BA70: BD FB D4       JSR    $FBD4
BA73: A6 84          LDA    ,X
BA75: 2A 0B          BPL    $BA82
BA77: BD F9 60       JSR    $F960
BA7A: BD FE FB       JSR    $FEFB
BA7D: 25 03          BCS    $BA82
BA7F: BD FF 10       JSR    push_one_sprite_entry_ff10
BA82: A6 88 34       LDA    $34,X
BA85: 84 0C          ANDA   #$0C
BA87: A7 88 34       STA    $34,X
BA8A: C6 55          LDB    #$55
BA8C: 3A             ABX
BA8D: 7C 09 F0       INC    $09F0
BA90: B6 09 F0       LDA    $09F0
BA93: 81 09          CMPA   #$09
BA95: 10 25 FF 35    LBCS   $B9CE
BA99: BD F9 7E       JSR    $F97E
BA9C: 39             RTS
BA9D: BD BB 40       JSR    switch_to_bank_1_bb40
BAA0: BD 40 75       JSR    $4075 ; [banks=1]
BAA3: BD BB 4D       JSR    switch_to_bank_0_bb4d
BAA6: 39             RTS
BAA7: A6 84          LDA    ,X
BAA9: 2A 31          BPL    $BADC
BAAB: 85 40          BITA   #$40
BAAD: 27 1E          BEQ    $BACD
BAAF: BD FE D4       JSR    $FED4
BAB2: A6 88 39       LDA    $39,X
BAB5: 2B 16          BMI    $BACD
BAB7: A6 88 1B       LDA    $1B,X
BABA: 84 3F          ANDA   #$3F
BABC: 81 00          CMPA   #$00
BABE: 26 05          BNE    $BAC5
BAC0: 86 00          LDA    #$00
BAC2: A7 88 1B       STA    $1B,X
BAC5: A6 88 39       LDA    $39,X
BAC8: 8A 80          ORA    #$80
BACA: A7 88 39       STA    $39,X
BACD: A6 88 1B       LDA    $1B,X
BAD0: 84 3F          ANDA   #$3F
BAD2: 48             ASLA
BAD3: 10 8E BA DD    LDY   #jump_table_badd
BAD7: AD B6          JSR    [A,Y]        ; [indirect_jump] [nb_entries=28]
BAD9: BD F9 88       JSR    $F988
BADC: 39             RTS

BB15: BD BB 40       JSR    switch_to_bank_1_bb40
BB18: BD 40 36       JSR    $4036 ; [banks=1]
BB1B: 34 01          PSHS   CC
BB1D: BD BB 4D       JSR    switch_to_bank_0_bb4d
BB20: 35 81          PULS   CC,PC
BB22: BD BB 40       JSR    switch_to_bank_1_bb40
BB25: BD 40 2A       JSR    $402A ; [banks=1]
BB28: BD BB 4D       JSR    switch_to_bank_0_bb4d
BB2B: 39             RTS
BB2C: BD BB 40       JSR    switch_to_bank_1_bb40
BB2F: BD 40 2D       JSR    $402D ; [banks=1]
BB32: BD BB 4D       JSR    switch_to_bank_0_bb4d
BB35: 39             RTS
BB36: BD BB 40       JSR    switch_to_bank_1_bb40
BB39: BD 40 33       JSR    $4033 ; [banks=1]
BB3C: BD BB 4D       JSR    switch_to_bank_0_bb4d
BB3F: 39             RTS

switch_to_bank_1_bb40:
BB40: 34 02          PSHS   A
BB42: 96 3A          LDA    bank_switch_copy_3a
BB44: 8A 20          ORA    #$20
BB46: 97 3A          STA    bank_switch_copy_3a
BB48: B7 38 08       STA    bankswitch_3808
BB4B: 35 82          PULS   A,PC

switch_to_bank_0_bb4d:
BB4D: 34 03          PSHS   A,CC
BB4F: 96 3A          LDA    bank_switch_copy_3a
BB51: 84 1F          ANDA   #$1F
BB53: 97 3A          STA    bank_switch_copy_3a
BB55: B7 38 08       STA    bankswitch_3808
BB58: 35 83          PULS   CC,A,PC

BB5A: BD BB 40       JSR    switch_to_bank_1_bb40
BB5D: BD 40 72       JSR    $4072 ; [banks=1]
BB60: BD BB 4D       JSR    switch_to_bank_0_bb4d
BB63: 39             RTS
BB64: BD BB 40       JSR    switch_to_bank_1_bb40
BB67: BD 40 7E       JSR    $407E ; [banks=1]
BB6A: BD BB 4D       JSR    switch_to_bank_0_bb4d
BB6D: 39             RTS
BB6E: BD BB 40       JSR    switch_to_bank_1_bb40
BB71: BD 40 81       JSR    $4081 ; [banks=1]
BB74: BD BB 4D       JSR    switch_to_bank_0_bb4d
BB77: 39             RTS
BB78: BD BB 40       JSR    switch_to_bank_1_bb40
BB7B: BD 40 84       JSR    $4084 ; [banks=1]
BB7E: BD BB 4D       JSR    switch_to_bank_0_bb4d
BB81: 39             RTS

BB82: 32 7F          LEAS   -$1,S
BB84: 6F E4          CLR    ,S
BB86: 8E 07 5B       LDX    #$075B
BB89: A6 84          LDA    ,X
BB8B: 10 2A 00 46    LBPL   $BBD5
BB8F: A6 E4          LDA    ,S
BB91: 98 51          EORA   $51
BB93: 84 01          ANDA   #$01
BB95: 27 33          BEQ    $BBCA
BB97: A6 88 17       LDA    $17,X
BB9A: 81 0E          CMPA   #$0E
BB9C: 27 08          BEQ    $BBA6
BB9E: 81 03          CMPA   #$03
BBA0: 25 1F          BCS    $BBC1
BBA2: 81 08          CMPA   #$08
BBA4: 24 1B          BCC    $BBC1
BBA6: E6 88 16       LDB    $16,X
BBA9: 2A 16          BPL    $BBC1
BBAB: 10 AE 88 1F    LDY    $1F,X
BBAF: E6 A8 21       LDB    nb_credits_0021,Y
BBB2: 26 0D          BNE    $BBC1
BBB4: CC 00 00       LDD    #$0000
BBB7: A7 84          STA    ,X
BBB9: A7 88 16       STA    $16,X
BBBC: ED 88 1F       STD    $1F,X
BBBF: 20 14          BRA    $BBD5
BBC1: 84 1F          ANDA   #$1F
BBC3: 10 8E BB EC    LDY   #jump_table_bbec
BBC7: 48             ASLA
BBC8: AD B6          JSR    [A,Y]        ; [indirect_jump] [nb_entries=20]
BBCA: BD FE FB       JSR    $FEFB
BBCD: 25 03          BCS    $BBD2
BBCF: BD FF 10       JSR    push_one_sprite_entry_ff10
BBD2: BD BC 4F       JSR    $BC4F
BBD5: C6 21          LDB    #$21
BBD7: 3A             ABX
BBD8: 6C E4          INC    ,S
BBDA: A6 E4          LDA    ,S
BBDC: 81 10          CMPA   #$10
BBDE: 25 A9          BCS    $BB89
BBE0: 96 51          LDA    $51
BBE2: 84 01          ANDA   #$01
BBE4: 97 2A          STA    $2A
BBE6: BD BC 59       JSR    $BC59
BBE9: 32 61          LEAS   $1,S
BBEB: 39             RTS


BC14: BD FC 82       JSR    switch_to_bank_5_fc82
BC17: A6 88 17       LDA    $17,X
BC1A: 84 1F          ANDA   #$1F
BC1C: 48             ASLA
BC1D: 10 8E BC 27    LDY   #jump_table_bc27
BC21: AD B6          JSR    [A,Y]        ; [indirect_jump] [nb_entries=20]
BC23: BD FC 8F       JSR    switch_to_bank_0_fc8f
BC26: 39             RTS

BC4F: BD FC 82       JSR    switch_to_bank_5_fc82
BC52: BD 40 81       JSR    $4081 ; [banks=5]
BC55: BD FC 8F       JSR    switch_to_bank_0_fc8f
BC58: 39             RTS

BC59: BD FC 82       JSR    switch_to_bank_5_fc82
BC5C: BD 40 66       JSR    $4066 ; [banks=5]
BC5F: BD FC 8F       JSR    switch_to_bank_0_fc8f
BC62: 39             RTS
BC63: 34 7E          PSHS   U,Y,X,DP,D
BC65: 17 00 0B       LBSR   $BC73
BC68: 17 0E BF       LBSR   $CB2A
BC6B: 17 01 0C       LBSR   $BD7A
BC6E: 17 0F 50       LBSR   $CBC1
BC71: 35 FE          PULS   D,DP,X,Y,U,PC
BC73: A6 88 1B       LDA    $1B,X
BC76: 2B 14          BMI    $BC8C
BC78: 8A 80          ORA    #$80
BC7A: A7 88 1B       STA    $1B,X
BC7D: 84 7F          ANDA   #$7F
BC7F: 48             ASLA
BC80: 10 8E BC 8D    LDY   #jump_table_bc8d
BC84: AD B6          JSR    [A,Y]        ; [indirect_jump] [nb_entries=20]
BC86: 6F 88 19       CLR    $19,X
BC89: 6F 88 18       CLR    $18,X
BC8C: 39             RTS

BCB5: 39             RTS

BCB6: A6 84          LDA    ,X
BCB8: 84 F0          ANDA   #$F0
BCBA: 8A 01          ORA    #$01
BCBC: A7 84          STA    ,X
BCBE: 6F 0E          CLR    $E,X
BCC0: 39             RTS
BCC1: 86 00          LDA    #$00
BCC3: 17 10 B6       LBSR   $CD7C
BCC6: 39             RTS
BCC7: 86 01          LDA    #$01
BCC9: 17 10 B0       LBSR   $CD7C
BCCC: 39             RTS
BCCD: 17 FF E6       LBSR   $BCB6
BCD0: 39             RTS
BCD1: 6F 88 1E       CLR    $1E,X
BCD4: A6 84          LDA    ,X
BCD6: 84 F0          ANDA   #$F0
BCD8: 8A 01          ORA    #$01
BCDA: A7 84          STA    ,X
BCDC: 86 10          LDA    #$10
BCDE: A7 0E          STA    $E,X
BCE0: 39             RTS
BCE1: 32 7F          LEAS   -$1,S
BCE3: 6F E4          CLR    ,S
BCE5: A6 0F          LDA    $F,X
BCE7: 2A 09          BPL    $BCF2
BCE9: CC 00 00       LDD    #$0000
BCEC: A3 0F          SUBD   $F,X
BCEE: ED 0F          STD    $F,X
BCF0: 6C E4          INC    ,S
BCF2: EC 0F          LDD    $F,X
BCF4: 83 02 00       SUBD   #$0200
BCF7: 2A 03          BPL    $BCFC
BCF9: CC 01 00       LDD    #$0100
BCFC: ED 0F          STD    $F,X
BCFE: A6 E4          LDA    ,S
BD00: 26 07          BNE    $BD09
BD02: CC 00 00       LDD    #$0000
BD05: A3 0F          SUBD   $F,X
BD07: ED 0F          STD    $F,X
BD09: 32 61          LEAS   $1,S
BD0B: A6 03          LDA    $3,X
BD0D: 88 80          EORA   #$80
BD0F: A7 03          STA    $3,X
BD11: 39             RTS
BD12: 17 FF BC       LBSR   $BCD1
BD15: 39             RTS
BD16: A6 84          LDA    ,X
BD18: 84 F0          ANDA   #$F0
BD1A: 8A 01          ORA    #$01
BD1C: A7 84          STA    ,X
BD1E: 86 10          LDA    #$10
BD20: A7 0E          STA    $E,X
BD22: 86 40          LDA    #$40
BD24: A7 0D          STA    $D,X
BD26: 39             RTS
BD27: 86 11          LDA    #$11
BD29: 17 10 50       LBSR   $CD7C
BD2C: 39             RTS
BD2D: 86 10          LDA    #$10
BD2F: 17 10 4A       LBSR   $CD7C
BD32: 39             RTS
BD33: 86 84          LDA    #$84
BD35: 17 41 7E       LBSR   $FEB6
BD38: CC 00 00       LDD    #$0000
BD3B: A3 88 11       SUBD   $11,X
BD3E: ED 88 11       STD    $11,X
BD41: 83 06 00       SUBD   #$0600
BD44: ED 88 11       STD    $11,X
BD47: 39             RTS
BD48: CC 00 00       LDD    #$0000
BD4B: A3 88 11       SUBD   $11,X
BD4E: ED 88 11       STD    $11,X
BD51: 83 05 00       SUBD   #$0500
BD54: ED 88 11       STD    $11,X
BD57: 39             RTS
BD58: CC 00 00       LDD    #$0000
BD5B: A3 88 11       SUBD   $11,X
BD5E: ED 88 11       STD    $11,X
BD61: 83 01 00       SUBD   #$0100
BD64: ED 88 11       STD    $11,X
BD67: 39             RTS
BD68: 86 11          LDA    #$11
BD6A: 17 10 0F       LBSR   $CD7C
BD6D: 39             RTS
BD6E: A6 84          LDA    ,X
BD70: 84 F0          ANDA   #$F0
BD72: 8A 01          ORA    #$01
BD74: A7 84          STA    ,X
BD76: 86 30          LDA    #$30
BD78: A7 0E          STA    $E,X
BD7A: A6 88 1B       LDA    $1B,X
BD7D: 84 7F          ANDA   #$7F
BD7F: 48             ASLA
BD80: 10 8E BD 91    LDY   #jump_table_bd91
BD84: AD B6          JSR    [A,Y]        ; [indirect_jump] [nb_entries=16]
BD86: A6 03          LDA    $3,X
BD88: 2A 06          BPL    $BD90
BD8A: A6 02          LDA    $2,X
BD8C: 88 80          EORA   #$80
BD8E: A7 02          STA    $2,X
BD90: 39             RTS

BDB9: 39             RTS

BDBA: 17 10 7B       LBSR   $CE38
BDBD: 39             RTS
BDBE: 10 8E BD E1    LDY    #$BDE1
BDC2: E6 88 18       LDB    $18,X
BDC5: A6 A5          LDA    B,Y
BDC7: A7 02          STA    $2,X
BDC9: 6C 88 19       INC    $19,X
BDCC: 10 8E BD E5    LDY    #$BDE5
BDD0: A6 88 18       LDA    $18,X
BDD3: E6 88 19       LDB    $19,X
BDD6: E1 A6          CMPB   A,Y
BDD8: 25 06          BCS    $BDE0
BDDA: 6F 88 19       CLR    $19,X
BDDD: 6C 88 18       INC    $18,X
BDE0: 39             RTS

BDE9: 10 8E BE 0C    LDY    #$BE0C
BDED: E6 88 18       LDB    $18,X
BDF0: A6 A5          LDA    B,Y
BDF2: A7 02          STA    $2,X
BDF4: 6C 88 19       INC    $19,X
BDF7: 10 8E BE 10    LDY    #$BE10
BDFB: A6 88 18       LDA    $18,X
BDFE: E6 88 19       LDB    $19,X
BE01: E1 A6          CMPB   A,Y
BE03: 25 06          BCS    $BE0B
BE05: 6F 88 19       CLR    $19,X
BE08: 6C 88 18       INC    $18,X
BE0B: 39             RTS

BE14: 86 05          LDA    #$05
BE16: A7 02          STA    $2,X
BE18: 39             RTS
BE19: A6 0E          LDA    $E,X
BE1B: 26 07          BNE    $BE24
BE1D: 86 05          LDA    #$05
BE1F: A7 88 1B       STA    $1B,X
BE22: 20 31          BRA    $BE55
BE24: 96 51          LDA    $51
BE26: 84 04          ANDA   #$04
BE28: 27 06          BEQ    $BE30
BE2A: A6 0E          LDA    $E,X
BE2C: 80 02          SUBA   #$02
BE2E: A7 0E          STA    $E,X
BE30: 10 8E BE 56    LDY    #$BE56
BE34: E6 88 18       LDB    $18,X
BE37: A6 A5          LDA    B,Y
BE39: A7 02          STA    $2,X
BE3B: 6C 88 19       INC    $19,X
BE3E: A6 88 19       LDA    $19,X
BE41: 81 04          CMPA   #$04
BE43: 25 10          BCS    $BE55
BE45: 6F 88 19       CLR    $19,X
BE48: 6C 88 18       INC    $18,X
BE4B: A6 88 18       LDA    $18,X
BE4E: 81 03          CMPA   #$03
BE50: 25 03          BCS    $BE55
BE52: 6F 88 18       CLR    $18,X
BE55: 39             RTS

BE5A: 10 8E BE 7D    LDY    #$BE7D
BE5E: E6 88 18       LDB    $18,X
BE61: A6 A5          LDA    B,Y
BE63: A7 02          STA    $2,X
BE65: 6C 88 19       INC    $19,X
BE68: 10 8E BE 83    LDY    #$BE83
BE6C: E6 88 18       LDB    $18,X
BE6F: A6 88 19       LDA    $19,X
BE72: A1 A5          CMPA   B,Y
BE74: 25 06          BCS    $BE7C
BE76: 6F 88 19       CLR    $19,X
BE79: 6C 88 18       INC    $18,X
BE7C: 39             RTS

BE89: 10 8E BE B1    LDY    #$BEB1
BE8D: E6 88 18       LDB    $18,X
BE90: A6 A5          LDA    B,Y
BE92: A7 02          STA    $2,X
BE94: 6C 88 19       INC    $19,X
BE97: A6 88 19       LDA    $19,X
BE9A: 81 02          CMPA   #$02
BE9C: 25 12          BCS    $BEB0
BE9E: 6F 88 19       CLR    $19,X
BEA1: 6C 88 18       INC    $18,X
BEA4: A6 88 18       LDA    $18,X
BEA7: 81 05          CMPA   #$05
BEA9: 25 05          BCS    $BEB0
BEAB: 86 06          LDA    #$06
BEAD: A7 88 1B       STA    $1B,X
BEB0: 39             RTS

BEB6: 86 05          LDA    #$05
BEB8: A7 02          STA    $2,X
BEBA: 39             RTS
BEBB: 86 05          LDA    #$05
BEBD: A7 02          STA    $2,X
BEBF: 39             RTS
BEC0: 86 16          LDA    #$16
BEC2: A7 01          STA    $1,X
BEC4: 86 00          LDA    #$00
BEC6: AB 88 18       ADDA   $18,X
BEC9: A7 02          STA    $2,X
BECB: 6C 88 19       INC    $19,X
BECE: A6 88 19       LDA    $19,X
BED1: 81 02          CMPA   #$02
BED3: 25 19          BCS    $BEEE
BED5: 6F 88 19       CLR    $19,X
BED8: 6C 88 18       INC    $18,X
BEDB: A6 88 18       LDA    $18,X
BEDE: 81 03          CMPA   #$03
BEE0: 25 0C          BCS    $BEEE
BEE2: 6F 84          CLR    ,X
BEE4: A6 88 17       LDA    $17,X
BEE7: 81 06          CMPA   #$06
BEE9: 26 03          BNE    $BEEE
BEEB: 7A 0E 37       DEC    $0E37
BEEE: 39             RTS
BEEF: 10 8E BF 12    LDY    #$BF12
BEF3: E6 88 18       LDB    $18,X
BEF6: A6 A5          LDA    B,Y
BEF8: A7 02          STA    $2,X
BEFA: 6C 88 19       INC    $19,X
BEFD: 10 8E BF 15    LDY    #$BF15
BF01: E6 88 18       LDB    $18,X
BF04: A6 88 19       LDA    $19,X
BF07: A1 A5          CMPA   B,Y
BF09: 25 06          BCS    $BF11
BF0B: 6F 88 19       CLR    $19,X
BF0E: 6C 88 18       INC    $18,X
BF11: 39             RTS

BF18: 10 8E BF 3B    LDY    #$BF3B
BF1C: E6 88 18       LDB    $18,X
BF1F: A6 A5          LDA    B,Y
BF21: A7 02          STA    $2,X
BF23: 6C 88 19       INC    $19,X
BF26: 10 8E BF 3E    LDY    #$BF3E
BF2A: E6 88 18       LDB    $18,X
BF2D: A6 88 19       LDA    $19,X
BF30: A1 A5          CMPA   B,Y
BF32: 25 06          BCS    $BF3A
BF34: 6F 88 19       CLR    $19,X
BF37: 6C 88 18       INC    $18,X
BF3A: 39             RTS

BF41: 10 8E BF 64    LDY    #$BF64
BF45: E6 88 18       LDB    $18,X
BF48: A6 A5          LDA    B,Y
BF4A: A7 02          STA    $2,X
BF4C: 6C 88 19       INC    $19,X
BF4F: 10 8E BF 68    LDY    #$BF68
BF53: E6 88 18       LDB    $18,X
BF56: A6 88 19       LDA    $19,X
BF59: A1 A5          CMPA   B,Y
BF5B: 25 06          BCS    $BF63
BF5D: 6F 88 19       CLR    $19,X
BF60: 6C 88 18       INC    $18,X
BF63: 39             RTS

BF70: 6C 88 19       INC    $19,X
BF73: A6 88 19       LDA    $19,X
BF76: 81 04          CMPA   #$04
BF78: 25 02          BCS    $BF7C
BF7A: 6F 84          CLR    ,X
BF7C: 39             RTS
BF7D: 34 7E          PSHS   U,Y,X,DP,D
BF7F: 17 00 0B       LBSR   $BF8D
BF82: 17 0B A5       LBSR   $CB2A
BF85: 17 01 0A       LBSR   $C092
BF88: 17 0C 36       LBSR   $CBC1
BF8B: 35 FE          PULS   D,DP,X,Y,U,PC
BF8D: A6 88 1B       LDA    $1B,X
BF90: 2B 14          BMI    $BFA6
BF92: 8A 80          ORA    #$80
BF94: A7 88 1B       STA    $1B,X
BF97: 84 7F          ANDA   #$7F
BF99: 48             ASLA
BF9A: 10 8E BF A7    LDY   #jump_table_bfa7
BF9E: AD B6          JSR    [A,Y]        ; [indirect_jump] [nb_entries=20]
BFA0: 6F 88 19       CLR    $19,X
BFA3: 6F 88 18       CLR    $18,X
BFA6: 39             RTS

BFCB: C0 7F          SUBB   #$7F
BFCD: C0 85          SUBB   #$85
BFCF: 39             RTS
BFD0: A6 84          LDA    ,X
BFD2: 84 F0          ANDA   #$F0
BFD4: 8A 01          ORA    #$01
BFD6: A7 84          STA    ,X
BFD8: 6F 0E          CLR    $E,X
BFDA: 39             RTS
BFDB: 86 03          LDA    #$03
BFDD: 17 0D 9C       LBSR   $CD7C
BFE0: 39             RTS
BFE1: 86 04          LDA    #$04
BFE3: 17 0D 96       LBSR   $CD7C
BFE6: 39             RTS
BFE7: 17 FF E6       LBSR   $BFD0
BFEA: 39             RTS
BFEB: A6 84          LDA    ,X
BFED: 84 F0          ANDA   #$F0
BFEF: 8A 01          ORA    #$01
BFF1: A7 84          STA    ,X
BFF3: 86 10          LDA    #$10
BFF5: A7 0E          STA    $E,X
BFF7: 39             RTS
BFF8: 32 7F          LEAS   -$1,S
BFFA: 6F E4          CLR    ,S
BFFC: A6 0F          LDA    $F,X
BFFE: 2A 09          BPL    $C009
C000: CC 00 00       LDD    #$0000
C003: A3 0F          SUBD   $F,X
C005: ED 0F          STD    $F,X
C007: 6C E4          INC    ,S
C009: EC 0F          LDD    $F,X
C00B: 83 02 00       SUBD   #$0200
C00E: 2A 03          BPL    $C013
C010: CC 01 00       LDD    #$0100
C013: ED 0F          STD    $F,X
C015: A6 E4          LDA    ,S
C017: 26 07          BNE    $C020
C019: CC 00 00       LDD    #$0000
C01C: A3 0F          SUBD   $F,X
C01E: ED 0F          STD    $F,X
C020: 32 61          LEAS   $1,S
C022: A6 03          LDA    $3,X
C024: 88 80          EORA   #$80
C026: A7 03          STA    $3,X
C028: 39             RTS
C029: 17 FF BF       LBSR   $BFEB
C02C: 39             RTS
C02D: A6 84          LDA    ,X
C02F: 84 F0          ANDA   #$F0
C031: 8A 01          ORA    #$01
C033: A7 84          STA    ,X
C035: 86 04          LDA    #$04
C037: A7 0E          STA    $E,X
C039: 86 40          LDA    #$40
C03B: A7 0D          STA    $D,X
C03D: 39             RTS
C03E: 86 11          LDA    #$11
C040: 17 0D 39       LBSR   $CD7C
C043: 39             RTS
C044: 86 10          LDA    #$10
C046: 17 0D 33       LBSR   $CD7C
C049: 39             RTS
C04A: 86 8A          LDA    #$8A
C04C: 17 3E 67       LBSR   $FEB6
C04F: CC 00 00       LDD    #$0000
C052: A3 88 11       SUBD   $11,X
C055: ED 88 11       STD    $11,X
C058: 83 06 00       SUBD   #$0600
C05B: ED 88 11       STD    $11,X
C05E: 39             RTS
C05F: CC 00 00       LDD    #$0000
C062: A3 88 11       SUBD   $11,X
C065: ED 88 11       STD    $11,X
C068: 83 02 00       SUBD   #$0200
C06B: ED 88 11       STD    $11,X
C06E: 39             RTS
C06F: CC 00 00       LDD    #$0000
C072: A3 88 11       SUBD   $11,X
C075: ED 88 11       STD    $11,X
C078: 83 02 00       SUBD   #$0200
C07B: ED 88 11       STD    $11,X
C07E: 39             RTS
C07F: 86 11          LDA    #$11
C081: 17 0C F8       LBSR   $CD7C
C084: 39             RTS
C085: A6 84          LDA    ,X
C087: 84 F0          ANDA   #$F0
C089: 8A 01          ORA    #$01
C08B: A7 84          STA    ,X
C08D: 86 30          LDA    #$30
C08F: A7 0E          STA    $E,X
C091: 39             RTS
C092: A6 88 1B       LDA    $1B,X
C095: 84 7F          ANDA   #$7F
C097: 48             ASLA
C098: 10 8E C0 A9    LDY   #jump_table_c0a9
C09C: AD B6          JSR    [A,Y]        ; [indirect_jump] [nb_entries=20]
C09E: A6 03          LDA    $3,X
C0A0: 2A 06          BPL    $C0A8
C0A2: A6 02          LDA    $2,X
C0A4: 88 80          EORA   #$80
C0A6: A7 02          STA    $2,X
C0A8: 39             RTS

C0D1: 39             RTS
C0D2: 17 0D 63       LBSR   $CE38
C0D5: 39             RTS
C0D6: 10 8E C0 F9    LDY    #$C0F9
C0DA: E6 88 18       LDB    $18,X
C0DD: A6 A5          LDA    B,Y
C0DF: A7 02          STA    $2,X
C0E1: 6C 88 19       INC    $19,X
C0E4: 10 8E C0 FB    LDY    #$C0FB
C0E8: A6 88 18       LDA    $18,X
C0EB: E6 88 19       LDB    $19,X
C0EE: E1 A6          CMPB   A,Y
C0F0: 25 06          BCS    $C0F8
C0F2: 6F 88 19       CLR    $19,X
C0F5: 6C 88 18       INC    $18,X
C0F8: 39             RTS

C0FD: 10 8E C1 20    LDY    #$C120                                       
C101: E6 88 18       LDB    $18,X
C104: A6 A5          LDA    B,Y
C106: A7 02          STA    $2,X
C108: 6C 88 19       INC    $19,X
C10B: 10 8E C1 22    LDY    #$C122
C10F: A6 88 18       LDA    $18,X
C112: E6 88 19       LDB    $19,X
C115: E1 A6          CMPB   A,Y
C117: 25 06          BCS    $C11F
C119: 6C 88 18       INC    $18,X
C11C: 6F 88 19       CLR    $19,X
C11F: 39             RTS

C124: 86 00          LDA    #$00
C126: A7 02          STA    $2,X
C128: 39             RTS
C129: A6 0E          LDA    $E,X
C12B: 27 0C          BEQ    $C139
C12D: 96 51          LDA    $51
C12F: 84 04          ANDA   #$04
C131: 27 06          BEQ    $C139
C133: A6 0E          LDA    $E,X
C135: 80 02          SUBA   #$02
C137: A7 0E          STA    $E,X
C139: 86 00          LDA    #$00
C13B: A7 02          STA    $2,X
C13D: 6C 88 19       INC    $19,X
C140: A6 88 19       LDA    $19,X
C143: 81 10          CMPA   #$10
C145: 25 05          BCS    $C14C
C147: 86 05          LDA    #$05
C149: A7 88 1B       STA    $1B,X
C14C: 39             RTS
C14D: 10 8E C1 70    LDY    #$C170
C151: E6 88 18       LDB    $18,X
C154: A6 A5          LDA    B,Y
C156: A7 02          STA    $2,X
C158: 6C 88 19       INC    $19,X
C15B: 10 8E C1 74    LDY    #$C174
C15F: E6 88 18       LDB    $18,X
C162: A6 88 19       LDA    $19,X
C165: A1 A5          CMPA   B,Y
C167: 25 06          BCS    $C16F
C169: 6F 88 19       CLR    $19,X
C16C: 6C 88 18       INC    $18,X
C16F: 39             RTS

C178: 10 8E C1 A0    LDY    #$C1A0
C17C: E6 88 18       LDB    $18,X
C17F: A6 A5          LDA    B,Y
C181: A7 02          STA    $2,X
C183: 6C 88 19       INC    $19,X
C186: A6 88 19       LDA    $19,X
C189: 81 04          CMPA   #$04
C18B: 25 12          BCS    $C19F
C18D: 6F 88 19       CLR    $19,X
C190: 6C 88 18       INC    $18,X
C193: A6 88 18       LDA    $18,X
C196: 81 03          CMPA   #$03
C198: 25 05          BCS    $C19F
C19A: 86 05          LDA    #$05
C19C: A7 88 1B       STA    $1B,X
C19F: 39             RTS

C1A3: 86 00          LDA    #$00
C1A5: A7 02          STA    $2,X
C1A7: 39             RTS

C1A8: 86 00          LDA    #$00
C1AA: A7 02          STA    $2,X
C1AC: 39             RTS

C1AD: 10 8E C1 D0    LDY    #$C1D0
C1B1: E6 88 18       LDB    $18,X
C1B4: A6 A5          LDA    B,Y
C1B6: A7 02          STA    $2,X
C1B8: 6C 88 19       INC    $19,X
C1BB: 10 8E C1 D2    LDY    #$C1D2
C1BF: E6 88 18       LDB    $18,X
C1C2: A6 88 19       LDA    $19,X
C1C5: A1 A5          CMPA   B,Y
C1C7: 25 06          BCS    $C1CF
C1C9: 6F 88 19       CLR    $19,X
C1CC: 6C 88 18       INC    $18,X
C1CF: 39             RTS                                                 

C1D4: 10 8E C1 F7    LDY    #$C1F7
C1D8: E6 88 18       LDB    $18,X
C1DB: A6 A5          LDA    B,Y
C1DD: A7 02          STA    $2,X
C1DF: 6C 88 19       INC    $19,X
C1E2: 10 8E C1 F9    LDY    #$C1F9
C1E6: E6 88 18       LDB    $18,X
C1E9: A6 88 19       LDA    $19,X
C1EC: A1 A5          CMPA   B,Y
C1EE: 25 06          BCS    $C1F6
C1F0: 6F 88 19       CLR    $19,X
C1F3: 6C 88 18       INC    $18,X
C1F6: 39             RTS
C1FB: 10 8E C2 1E    LDY    #$C21E
C1FF: E6 88 18       LDB    $18,X
C202: A6 A5          LDA    B,Y
C204: A7 02          STA    $2,X
C206: 6C 88 19       INC    $19,X
C209: 10 8E C2 20    LDY    #$C220
C20D: E6 88 18       LDB    $18,X
C210: A6 88 19       LDA    $19,X
C213: A1 A5          CMPA   B,Y
C215: 25 06          BCS    $C21D
C217: 6F 88 19       CLR    $19,X
C21A: 6C 88 18       INC    $18,X
C21D: 39             RTS

C222: 86 00          LDA    #$00                                       
C224: A7 02          STA    $2,X                                       
C226: 6C 88 19       INC    $19,X                                      
C229: A6 88 19       LDA    $19,X
C22C: 81 04          CMPA   #$04
C22E: 25 02          BCS    $C232
C230: 6F 84          CLR    ,X
C232: 39             RTS
C233: 34 7E          PSHS   U,Y,X,DP,D
C235: 17 00 0B       LBSR   $C243
C238: 17 08 EF       LBSR   $CB2A
C23B: 17 00 FC       LBSR   $C33A
C23E: 17 09 80       LBSR   $CBC1
C241: 35 FE          PULS   D,DP,X,Y,U,PC
C243: A6 88 1B       LDA    $1B,X
C246: 2B 14          BMI    $C25C
C248: 8A 80          ORA    #$80
C24A: A7 88 1B       STA    $1B,X
C24D: 84 7F          ANDA   #$7F
C24F: 48             ASLA
C250: 10 8E C2 5D    LDY   #jump_table_c25d
C254: AD B6          JSR    [A,Y]        ; [indirect_jump] [nb_entries=16]
C256: 6F 88 19       CLR    $19,X
C259: 6F 88 18       CLR    $18,X
C25C: 39             RTS

C285: 39             RTS
C286: A6 84          LDA    ,X
C288: 84 F0          ANDA   #$F0
C28A: 8A 01          ORA    #$01
C28C: A7 84          STA    ,X
C28E: 6F 0E          CLR    $E,X
C290: 39             RTS
C291: 86 06          LDA    #$06
C293: 17 0A E6       LBSR   $CD7C
C296: 39             RTS
C297: 86 07          LDA    #$07
C299: 17 0A E0       LBSR   $CD7C
C29C: 39             RTS
C29D: A6 84          LDA    ,X
C29F: 84 F0          ANDA   #$F0
C2A1: 8A 01          ORA    #$01
C2A3: A7 84          STA    ,X
C2A5: 86 18          LDA    #$18
C2A7: A7 0E          STA    $E,X
C2A9: 39             RTS
C2AA: 32 7F          LEAS   -$1,S
C2AC: 6F E4          CLR    ,S
C2AE: A6 0F          LDA    $F,X
C2B0: 2A 09          BPL    $C2BB
C2B2: CC 00 00       LDD    #$0000
C2B5: A3 0F          SUBD   $F,X
C2B7: ED 0F          STD    $F,X
C2B9: 6C E4          INC    ,S
C2BB: EC 0F          LDD    $F,X
C2BD: 83 02 00       SUBD   #$0200
C2C0: 2A 03          BPL    $C2C5
C2C2: CC 01 00       LDD    #$0100
C2C5: ED 0F          STD    $F,X
C2C7: A6 E4          LDA    ,S
C2C9: 26 07          BNE    $C2D2
C2CB: CC 00 00       LDD    #$0000
C2CE: A3 0F          SUBD   $F,X
C2D0: ED 0F          STD    $F,X
C2D2: 32 61          LEAS   $1,S
C2D4: A6 03          LDA    $3,X
C2D6: 88 80          EORA   #$80
C2D8: A7 03          STA    $3,X
C2DA: 39             RTS
C2DB: A6 84          LDA    ,X
C2DD: 84 F0          ANDA   #$F0
C2DF: 8A 01          ORA    #$01
C2E1: A7 84          STA    ,X
C2E3: 86 04          LDA    #$04
C2E5: A7 0E          STA    $E,X
C2E7: 86 40          LDA    #$40
C2E9: A7 0D          STA    $D,X
C2EB: 39             RTS
C2EC: 86 11          LDA    #$11
C2EE: 17 0A 8B       LBSR   $CD7C
C2F1: 39             RTS
C2F2: 86 10          LDA    #$10
C2F4: 17 0A 85       LBSR   $CD7C
C2F7: 39             RTS
C2F8: 86 85          LDA    #$85
C2FA: 17 3B B9       LBSR   $FEB6
C2FD: CC 00 00       LDD    #$0000
C300: A3 88 11       SUBD   $11,X
C303: ED 88 11       STD    $11,X
C306: 83 08 00       SUBD   #$0800
C309: ED 88 11       STD    $11,X
C30C: 39             RTS
C30D: CC 00 00       LDD    #$0000
C310: A3 88 11       SUBD   $11,X
C313: ED 88 11       STD    $11,X
C316: 83 02 00       SUBD   #$0200
C319: ED 88 11       STD    $11,X
C31C: 39             RTS
C31D: CC 00 00       LDD    #$0000
C320: A3 88 11       SUBD   $11,X
C323: ED 88 11       STD    $11,X
C326: 83 02 00       SUBD   #$0200
C329: ED 88 11       STD    $11,X
C32C: 39             RTS
C32D: A6 84          LDA    ,X
C32F: 84 F0          ANDA   #$F0
C331: 8A 01          ORA    #$01
C333: A7 84          STA    ,X
C335: 86 30          LDA    #$30
C337: A7 0E          STA    $E,X
C339: 39             RTS
C33A: A6 88 1B       LDA    $1B,X
C33D: 84 7F          ANDA   #$7F
C33F: 48             ASLA
C340: 10 8E C3 51    LDY   #jump_table_c351
C344: AD B6          JSR    [A,Y]        ; [indirect_jump] [nb_entries=16]
C346: A6 03          LDA    $3,X
C348: 2A 06          BPL    $C350
C34A: A6 02          LDA    $2,X
C34C: 88 80          EORA   #$80
C34E: A7 02          STA    $2,X
C350: 39             RTS
C351: C3 7A C3       ADDD   #$7AC3
C354: 7E C3 A5       JMP    $C3A5

C379: 39             RTS                                               
C37A: 17 0A BB       LBSR   $CE38
C37D: 39             RTS
C37E: 10 8E C3 A1    LDY    #$C3A1
C382: E6 88 18       LDB    $18,X
C385: A6 A5          LDA    B,Y
C387: A7 02          STA    $2,X
C389: 6C 88 19       INC    $19,X
C38C: 10 8E C3 A3    LDY    #$C3A3
C390: A6 88 18       LDA    $18,X
C393: E6 88 19       LDB    $19,X
C396: E1 A6          CMPB   A,Y
C398: 25 06          BCS    $C3A0
C39A: 6F 88 19       CLR    $19,X
C39D: 6C 88 18       INC    $18,X
C3A0: 39             RTS

C3A5: 10 8E C3 C8    LDY    #$C3C8
C3A9: E6 88 18       LDB    $18,X
C3AC: A6 A5          LDA    B,Y
C3AE: A7 02          STA    $2,X
C3B0: 6C 88 19       INC    $19,X
C3B3: 10 8E C3 CA    LDY    #$C3CA
C3B7: A6 88 18       LDA    $18,X
C3BA: E6 88 19       LDB    $19,X
C3BD: E1 A6          CMPB   A,Y
C3BF: 25 06          BCS    $C3C7
C3C1: 6F 88 19       CLR    $19,X
C3C4: 6C 88 18       INC    $18,X
C3C7: 39             RTS

C3CC: 86 04          LDA    #$04
C3CE: A7 02          STA    $2,X
C3D0: 39             RTS

C3D1: A6 0E          LDA    $E,X
C3D3: 27 0C          BEQ    $C3E1
C3D5: 96 51          LDA    $51
C3D7: 84 04          ANDA   #$04
C3D9: 27 06          BEQ    $C3E1
C3DB: A6 0E          LDA    $E,X
C3DD: 80 02          SUBA   #$02
C3DF: A7 0E          STA    $E,X
C3E1: 10 8E C4 09    LDY    #$C409
C3E5: E6 88 18       LDB    $18,X
C3E8: A6 A5          LDA    B,Y
C3EA: A7 02          STA    $2,X
C3EC: 6C 88 19       INC    $19,X
C3EF: A6 88 19       LDA    $19,X
C3F2: 81 04          CMPA   #$04
C3F4: 25 12          BCS    $C408
C3F6: 6F 88 19       CLR    $19,X
C3F9: 6C 88 18       INC    $18,X
C3FC: A6 88 18       LDA    $18,X
C3FF: 81 03          CMPA   #$03
C401: 25 05          BCS    $C408
C403: 86 05          LDA    #$05
C405: A7 88 1B       STA    $1B,X
C408: 39             RTS

C40C: 10 8E C4 2F    LDY    #$C42F
C410: E6 88 18       LDB    $18,X
C413: A6 A5          LDA    B,Y
C415: A7 02          STA    $2,X
C417: 6C 88 19       INC    $19,X
C41A: 10 8E C4 31    LDY    #$C431
C41E: E6 88 18       LDB    $18,X
C421: A6 88 19       LDA    $19,X
C424: A1 A5          CMPA   B,Y
C426: 25 06          BCS    $C42E
C428: 6F 88 19       CLR    $19,X
C42B: 6C 88 18       INC    $18,X
C42E: 39             RTS

C433: 86 06          LDA    #$06
C435: A7 88 1B       STA    $1B,X
C438: 39             RTS
C439: 86 04          LDA    #$04
C43B: A7 02          STA    $2,X
C43D: 39             RTS
C43E: 86 04          LDA    #$04
C440: A7 02          STA    $2,X
C442: 6C 88 19       INC    $19,X
C445: A6 88 19       LDA    $19,X
C448: 81 04          CMPA   #$04
C44A: 25 02          BCS    $C44E
C44C: 6F 84          CLR    ,X
C44E: 39             RTS
C44F: 10 8E C4 72    LDY    #$C472
C453: E6 88 18       LDB    $18,X
C456: A6 A5          LDA    B,Y
C458: A7 02          STA    $2,X
C45A: 6C 88 19       INC    $19,X
C45D: 10 8E C4 75    LDY    #$C475
C461: E6 88 18       LDB    $18,X
C464: A6 88 19       LDA    $19,X
C467: A1 A5          CMPA   B,Y
C469: 25 06          BCS    $C471
C46B: 6F 88 19       CLR    $19,X
C46E: 6C 88 18       INC    $18,X
C471: 39             RTS


C478: 10 8E C4 9B    LDY    #$C49B           
C47C: E6 88 18       LDB    $18,X
C47F: A6 A5          LDA    B,Y
C481: A7 02          STA    $2,X
C483: 6C 88 19       INC    $19,X
C486: 10 8E C4 9D    LDY    #$C49D
C48A: E6 88 18       LDB    $18,X
C48D: A6 88 19       LDA    $19,X
C490: A1 A5          CMPA   B,Y
C492: 25 06          BCS    $C49A
C494: 6F 88 19       CLR    $19,X
C497: 6C 88 18       INC    $18,X
C49A: 39             RTS

C49F: 10 8E C4 C2    LDY    #$C4C2                                   
C4A3: E6 88 18       LDB    $18,X
C4A6: A6 A5          LDA    B,Y
C4A8: A7 02          STA    $2,X
C4AA: 6C 88 19       INC    $19,X
C4AD: 10 8E C4 C4    LDY    #$C4C4
C4B1: E6 88 18       LDB    $18,X
C4B4: A6 88 19       LDA    $19,X
C4B7: A1 A5          CMPA   B,Y
C4B9: 25 06          BCS    $C4C1
C4BB: 6F 88 19       CLR    $19,X
C4BE: 6C 88 18       INC    $18,X
C4C1: 39             RTS

C4C6: 34 7E          PSHS   U,Y,X,DP,D  
C4C8: 17 00 0B       LBSR   $C4D6
C4CB: 17 06 5C       LBSR   $CB2A
C4CE: 17 00 9A       LBSR   $C56B
C4D1: 17 06 ED       LBSR   $CBC1
C4D4: 35 FE          PULS   D,DP,X,Y,U,PC
C4D6: A6 88 1B       LDA    $1B,X
C4D9: 2B 14          BMI    $C4EF
C4DB: 8A 80          ORA    #$80
C4DD: A7 88 1B       STA    $1B,X
C4E0: 84 7F          ANDA   #$7F
C4E2: 48             ASLA
C4E3: 10 8E C4 F0    LDY   #jump_table_c4f0
C4E7: AD B6          JSR    [A,Y]        ; [indirect_jump] [nb_entries=19]
C4E9: 6F 88 19       CLR    $19,X
C4EC: 6F 88 18       CLR    $18,X
C4EF: 39             RTS
C4F0: C5 17          BITB   #$17
C4F2: C5 22          BITB   #$22
C4F4: C5 28          BITB   #$28
C4F6: C5 17          BITB   #$17
C4F8: C5 16          BITB   #$16
C4FA: C5 17          BITB   #$17
C4FC: C5 16          BITB   #$16
C4FE: C5 3C          BITB   #$3C
C500: C5 17          BITB   #$17
C502: C5 48          BITB   #$48
C504: C5 59          BITB   #$59
C506: C5 5F          BITB   #$5F
C508: C5 17          BITB   #$17
C50A: C5 16          BITB   #$16
C50C: C5 16          BITB   #$16
C50E: C5 16          BITB   #$16
C510: C5 16          BITB   #$16
C512: C5 17          BITB   #$17
C514: C5 65          BITB   #$65
C516: 39             RTS
C517: A6 84          LDA    ,X
C519: 84 F0          ANDA   #$F0
C51B: 8A 01          ORA    #$01
C51D: A7 84          STA    ,X
C51F: 6F 0E          CLR    $E,X
C521: 39             RTS
C522: 86 09          LDA    #$09
C524: 17 08 55       LBSR   $CD7C
C527: 39             RTS
C528: A6 84          LDA    ,X
C52A: 84 F0          ANDA   #$F0
C52C: 8A 01          ORA    #$01
C52E: A7 84          STA    ,X
C530: 86 40          LDA    #$40
C532: A7 0E          STA    $E,X
C534: EC 08          LDD    $8,X
C536: 83 00 10       SUBD   #$0010
C539: ED 08          STD    $8,X
C53B: 39             RTS
C53C: A6 03          LDA    $3,X
C53E: 88 80          EORA   #$80
C540: A7 03          STA    $3,X
C542: 86 0A          LDA    #$0A
C544: 17 08 35       LBSR   $CD7C
C547: 39             RTS
C548: A6 84          LDA    ,X
C54A: 84 F0          ANDA   #$F0
C54C: 8A 01          ORA    #$01
C54E: A7 84          STA    ,X
C550: 86 04          LDA    #$04
C552: A7 0E          STA    $E,X
C554: 86 40          LDA    #$40
C556: A7 0D          STA    $D,X
C558: 39             RTS
C559: 86 11          LDA    #$11
C55B: 17 08 1E       LBSR   $CD7C
C55E: 39             RTS
C55F: 86 10          LDA    #$10
C561: 17 08 18       LBSR   $CD7C
C564: 39             RTS
C565: 86 11          LDA    #$11
C567: 17 08 12       LBSR   $CD7C
C56A: 39             RTS
C56B: A6 88 1B       LDA    $1B,X
C56E: 84 7F          ANDA   #$7F
C570: 48             ASLA
C571: 10 8E C5 82    LDY   #jump_table_c582
C575: AD B6          JSR    [A,Y]        ; [indirect_jump] [nb_entries=19]
C577: A6 03          LDA    $3,X
C579: 2A 06          BPL    $C581
C57B: A6 02          LDA    $2,X
C57D: 88 80          EORA   #$80
C57F: A7 02          STA    $2,X
C581: 39             RTS
C582: C5 A9          BITB   #$A9
C584: C5 AD          BITB   #$AD
C586: C5 DC          BITB   #$DC
C588: C6 0A          LDB    #$0A
C58A: C5 A8          BITB   #$A8
C58C: C6 34          LDB    #$34
C58E: C5 A8          BITB   #$A8
C590: C6 39          LDB    #$39
C592: C6 68          LDB    #$68
C594: C6 6E          LDB    #$6E
C596: C6 6E          LDB    #$6E
C598: C6 6E          LDB    #$6E
C59A: BE C0 C5       LDX    $C0C5
C59D: A8 C5          EORA   B,U
C59F: A8 C5          EORA   B,U
C5A1: A8 C5          EORA   B,U
C5A3: A8 C6          EORA   A,U
C5A5: 73 C6 8B       COM    $C68B
C5A8: 39             RTS
C5A9: 17 08 8C       LBSR   $CE38
C5AC: 39             RTS
C5AD: 10 8E C5 D0    LDY    #$C5D0
C5B1: E6 88 18       LDB    $18,X
C5B4: A6 A5          LDA    B,Y
C5B6: A7 02          STA    $2,X
C5B8: 6C 88 19       INC    $19,X
C5BB: 10 8E C5 D6    LDY    #$C5D6
C5BF: A6 88 18       LDA    $18,X
C5C2: E6 88 19       LDB    $19,X
C5C5: E1 A6          CMPB   A,Y
C5C7: 25 06          BCS    $C5CF
C5C9: 6F 88 19       CLR    $19,X
C5CC: 6C 88 18       INC    $18,X
C5CF: 39             RTS

C5DC: 10 8E C6 02    LDY    #$C602
C5E0: E6 88 18       LDB    $18,X
C5E3: A6 A5          LDA    B,Y
C5E5: A7 02          STA    $2,X
C5E7: 6C 88 19       INC    $19,X
C5EA: A6 88 19       LDA    $19,X
C5ED: 81 01          CMPA   #$01
C5EF: 25 10          BCS    $C601
C5F1: 6F 88 19       CLR    $19,X
C5F4: 6C 88 18       INC    $18,X
C5F7: A6 88 18       LDA    $18,X
C5FA: 81 08          CMPA   #$08
C5FC: 25 03          BCS    $C601
C5FE: 6F 88 18       CLR    $18,X
C601: 39             RTS


C60A: 86 11          LDA    #$11                                         
C60C: E6 88 18       LDB    $18,X                                        
C60F: C4 01          ANDB   #$01
C611: 27 02          BEQ    $C615
C613: 86 7F          LDA    #$7F
C615: A7 02          STA    $2,X
C617: 6C 88 19       INC    $19,X
C61A: A6 88 19       LDA    $19,X
C61D: 81 02          CMPA   #$02
C61F: 25 12          BCS    $C633
C621: 6F 88 19       CLR    $19,X
C624: 6C 88 18       INC    $18,X
C627: A6 88 18       LDA    $18,X
C62A: 81 10          CMPA   #$10
C62C: 26 05          BNE    $C633
C62E: 6F 84          CLR    ,X
C630: 7A 0E 37       DEC    $0E37
C633: 39             RTS
C634: 86 91          LDA    #$91
C636: A7 02          STA    $2,X
C638: 39             RTS
C639: 10 8E C6 5C    LDY    #$C65C
C63D: E6 88 18       LDB    $18,X
C640: A6 A5          LDA    B,Y
C642: A7 02          STA    $2,X
C644: 6C 88 19       INC    $19,X
C647: 10 8E C6 62    LDY    #$C662
C64B: E6 88 18       LDB    $18,X
C64E: A6 88 19       LDA    $19,X
C651: A1 A5          CMPA   B,Y
C653: 25 06          BCS    $C65B
C655: 6F 88 19       CLR    $19,X
C658: 6C 88 18       INC    $18,X
C65B: 39             RTS

C668: 86 05          LDA    #$05
C66A: A7 88 1B       STA    $1B,X
C66D: 39             RTS
C66E: 86 91          LDA    #$91
C670: A7 02          STA    $2,X
C672: 39             RTS
C673: 86 20          LDA    #$20
C675: A7 01          STA    $1,X
C677: 86 02          LDA    #$02
C679: A7 02          STA    $2,X
C67B: 6C 88 19       INC    $19,X
C67E: A6 88 19       LDA    $19,X
C681: 81 04          CMPA   #$04
C683: 25 05          BCS    $C68A
C685: 6F 84          CLR    ,X
C687: 7A 0E 37       DEC    $0E37
C68A: 39             RTS
C68B: 86 91          LDA    #$91
C68D: A7 02          STA    $2,X
C68F: 6C 88 19       INC    $19,X
C692: A6 88 19       LDA    $19,X
C695: 81 04          CMPA   #$04
C697: 25 02          BCS    $C69B
C699: 6F 84          CLR    ,X
C69B: 39             RTS
C69C: 34 7E          PSHS   U,Y,X,DP,D
C69E: 17 00 0B       LBSR   $C6AC
C6A1: 17 04 86       LBSR   $CB2A
C6A4: 17 00 86       LBSR   $C72D
C6A7: 17 05 17       LBSR   $CBC1
C6AA: 35 FE          PULS   D,DP,X,Y,U,PC
C6AC: A6 88 1B       LDA    $1B,X
C6AF: 2B 14          BMI    $C6C5
C6B1: 8A 80          ORA    #$80
C6B3: A7 88 1B       STA    $1B,X
C6B6: 84 7F          ANDA   #$7F
C6B8: 48             ASLA
C6B9: 10 8E C6 C6    LDY   #jump_table_c6c6
C6BD: AD B6          JSR    [A,Y]        ; [indirect_jump] [nb_entries=19]
C6BF: 6F 88 19       CLR    $19,X
C6C2: 6F 88 18       CLR    $18,X
C6C5: 39             RTS

C6EC: 39             RTS
C6ED: A6 84          LDA    ,X
C6EF: 84 F0          ANDA   #$F0
C6F1: 8A 01          ORA    #$01
C6F3: A7 84          STA    ,X
C6F5: 6F 0E          CLR    $E,X
C6F7: 39             RTS
C6F8: 86 0B          LDA    #$0B
C6FA: 17 06 7F       LBSR   $CD7C
C6FD: 39             RTS
C6FE: A6 03          LDA    $3,X
C700: 88 80          EORA   #$80
C702: A7 03          STA    $3,X
C704: 86 0B          LDA    #$0B
C706: 17 06 73       LBSR   $CD7C
C709: 39             RTS
C70A: A6 84          LDA    ,X
C70C: 84 F0          ANDA   #$F0
C70E: 8A 01          ORA    #$01
C710: A7 84          STA    ,X
C712: 86 04          LDA    #$04
C714: A7 0E          STA    $E,X
C716: 86 40          LDA    #$40
C718: A7 0D          STA    $D,X
C71A: 39             RTS
C71B: 86 11          LDA    #$11
C71D: 17 06 5C       LBSR   $CD7C
C720: 39             RTS
C721: 86 10          LDA    #$10
C723: 17 06 56       LBSR   $CD7C
C726: 39             RTS
C727: 86 11          LDA    #$11
C729: 17 06 50       LBSR   $CD7C
C72C: 39             RTS
C72D: A6 88 1B       LDA    $1B,X
C730: 84 7F          ANDA   #$7F
C732: 48             ASLA
C733: 10 8E C7 44    LDY   #jump_table_c744
C737: AD B6          JSR    [A,Y]        ; [indirect_jump] [nb_entries=19]
C739: A6 03          LDA    $3,X
C73B: 2A 06          BPL    $C743
C73D: A6 02          LDA    $2,X
C73F: 88 80          EORA   #$80
C741: A7 02          STA    $2,X
C743: 39             RTS

C76A: 39             RTS
C76B: 17 06 CA       LBSR   $CE38
C76E: 39             RTS
C76F: 10 8E C7 92    LDY    #$C792
C773: E6 88 18       LDB    $18,X
C776: A6 A5          LDA    B,Y
C778: A7 02          STA    $2,X
C77A: 6C 88 19       INC    $19,X
C77D: 10 8E C7 96    LDY    #$C796
C781: A6 88 18       LDA    $18,X
C784: E6 88 19       LDB    $19,X
C787: E1 A6          CMPB   A,Y
C789: 25 06          BCS    $C791
C78B: 6F 88 19       CLR    $19,X
C78E: 6C 88 18       INC    $18,X
C791: 39             RTS

C79A: 86 8A          LDA    #$8A
C79C: A7 02          STA    $2,X
C79E: 39             RTS
C79F: 17 FF CD       LBSR   $C76F
C7A2: 39             RTS
C7A3: 86 05          LDA    #$05
C7A5: A7 88 1B       STA    $1B,X
C7A8: 39             RTS
C7A9: 86 8A          LDA    #$8A
C7AB: A7 02          STA    $2,X
C7AD: 39             RTS
C7AE: 86 8A          LDA    #$8A
C7B0: A7 02          STA    $2,X
C7B2: 6C 88 19       INC    $19,X
C7B5: A6 88 19       LDA    $19,X
C7B8: 81 04          CMPA   #$04
C7BA: 25 02          BCS    $C7BE
C7BC: 6F 84          CLR    ,X
C7BE: 39             RTS
C7BF: 34 7E          PSHS   U,Y,X,DP,D
C7C1: 17 00 0E       LBSR   $C7D2
C7C4: 17 03 63       LBSR   $CB2A
C7C7: 17 00 98       LBSR   $C862
C7CA: 17 03 F4       LBSR   $CBC1
C7CD: 17 06 4C       LBSR   $CE1C
C7D0: 35 FE          PULS   D,DP,X,Y,U,PC
C7D2: A6 88 1B       LDA    $1B,X
C7D5: 2B 14          BMI    $C7EB
C7D7: 8A 80          ORA    #$80
C7D9: A7 88 1B       STA    $1B,X
C7DC: 84 7F          ANDA   #$7F
C7DE: 48             ASLA
C7DF: 10 8E C7 EC    LDY   #jump_table_c7ec
C7E3: AD B6          JSR    [A,Y]        ; [indirect_jump] [nb_entries=13]
C7E5: 6F 88 19       CLR    $19,X
C7E8: 6F 88 18       CLR    $18,X
C7EB: 39             RTS
C7EC: C8 13          EORB   #$13
C7EE: C8 1E          EORB   #$1E
C7F0: C8 24          EORB   #$24
C7F2: C8 13          EORB   #$13
C7F4: C8 2A          EORB   #$2A
C7F6: C8 13          EORB   #$13
C7F8: C8 12          EORB   #$12
C7FA: C8 33          EORB   #$33
C7FC: C8 13          EORB   #$13
C7FE: C8 3F          EORB   #$3F
C800: C8 50          EORB   #$50
C802: C8 56          EORB   #$56
C804: C8 13          EORB   #$13
C806: 00 00          NEG    $00
C808: 00 00          NEG    $00
C80A: 00 00          NEG    $00
C80C: C8 13          EORB   #$13
C80E: C8 12          EORB   #$12
C810: C8 5C          EORB   #$5C
C812: 39             RTS
C813: A6 84          LDA    ,X
C815: 84 F0          ANDA   #$F0
C817: 8A 01          ORA    #$01
C819: A7 84          STA    ,X
C81B: 6F 0E          CLR    $E,X
C81D: 39             RTS
C81E: 86 00          LDA    #$00
C820: 17 05 59       LBSR   $CD7C
C823: 39             RTS
C824: 86 0D          LDA    #$0D
C826: 17 05 53       LBSR   $CD7C
C829: 39             RTS
C82A: 86 93          LDA    #$93
C82C: 17 36 87       LBSR   $FEB6
C82F: 17 FF E1       LBSR   $C813
C832: 39             RTS
C833: A6 03          LDA    $3,X
C835: 88 80          EORA   #$80
C837: A7 03          STA    $3,X
C839: 86 0E          LDA    #$0E
C83B: 17 05 3E       LBSR   $CD7C
C83E: 39             RTS
C83F: A6 84          LDA    ,X
C841: 84 F0          ANDA   #$F0
C843: 8A 01          ORA    #$01
C845: A7 84          STA    ,X
C847: 86 04          LDA    #$04
C849: A7 0E          STA    $E,X
C84B: 86 40          LDA    #$40
C84D: A7 0D          STA    $D,X
C84F: 39             RTS
C850: 86 11          LDA    #$11
C852: 17 05 27       LBSR   $CD7C
C855: 39             RTS
C856: 86 10          LDA    #$10
C858: 17 05 21       LBSR   $CD7C
C85B: 39             RTS
C85C: 86 11          LDA    #$11
C85E: 17 05 1B       LBSR   $CD7C
C861: 39             RTS
C862: A6 88 1B       LDA    $1B,X
C865: 84 7F          ANDA   #$7F
C867: 48             ASLA
C868: 10 8E C8 79    LDY   #jump_table_c879
C86C: AD B6          JSR    [A,Y]        ; [indirect_jump] [nb_entries=13]
C86E: A6 03          LDA    $3,X
C870: 2A 06          BPL    $C878
C872: A6 02          LDA    $2,X
C874: 88 80          EORA   #$80
C876: A7 02          STA    $2,X
C878: 39             RTS
C879: C8 A0          EORB   #$A0
C87B: C8 ED          EORB   #$ED
C87D: C9 22          ADCB   #$22
C87F: C9 57          ADCB   #$57
C881: C9 81          ADCB   #$81
C883: C9 A5          ADCB   #$A5
C885: C8 9F          EORB   #$9F
C887: C9 AA          ADCB   #$AA
C889: C9 DF          ADCB   #$DF
C88B: C9 E5          ADCB   #$E5
C88D: C9 E5          ADCB   #$E5
C88F: C9 E5          ADCB   #$E5
C891: BE C0 00       LDX    $C000
C894: 00 00          NEG    $00
C896: 00 00          NEG    $00
C898: 00 C8          NEG    $C8
C89A: A0 C8 9F       SUBA   -$61,U
C89D: C9 EA          ADCB   #$EA
C89F: 39             RTS
C8A0: 17 05 95       LBSR   $CE38
C8A3: 10 AE 88 1F    LDY    $1F,X
C8A7: A6 21          LDA    $1,Y
C8A9: 81 02          CMPA   #$02
C8AB: 24 3F          BCC    $C8EC
C8AD: A6 88 1B       LDA    $1B,X
C8B0: 84 7F          ANDA   #$7F
C8B2: 81 10          CMPA   #$10
C8B4: 27 0F          BEQ    $C8C5
C8B6: 6C 88 19       INC    $19,X
C8B9: A6 88 19       LDA    $19,X
C8BC: 81 20          CMPA   #$20
C8BE: 25 2C          BCS    $C8EC
C8C0: 86 10          LDA    #$10
C8C2: A7 88 1B       STA    $1B,X
C8C5: A6 88 18       LDA    $18,X
C8C8: 84 01          ANDA   #$01
C8CA: 27 04          BEQ    $C8D0
C8CC: 86 7F          LDA    #$7F
C8CE: A7 02          STA    $2,X
C8D0: 6C 88 19       INC    $19,X
C8D3: A6 88 19       LDA    $19,X
C8D6: 81 01          CMPA   #$01
C8D8: 25 12          BCS    $C8EC
C8DA: 6F 88 19       CLR    $19,X
C8DD: 6C 88 18       INC    $18,X
C8E0: A6 88 18       LDA    $18,X
C8E3: 81 18          CMPA   #$18
C8E5: 25 05          BCS    $C8EC
C8E7: 86 04          LDA    #$04
C8E9: A7 88 1B       STA    $1B,X
C8EC: 39             RTS
C8ED: 10 8E C9 10    LDY    #$C910
C8F1: E6 88 18       LDB    $18,X
C8F4: A6 A5          LDA    B,Y
C8F6: A7 02          STA    $2,X
C8F8: 6C 88 19       INC    $19,X
C8FB: 10 8E C9 19    LDY    #$C919
C8FF: A6 88 18       LDA    $18,X
C902: E6 88 19       LDB    $19,X
C905: E1 A6          CMPB   A,Y
C907: 25 06          BCS    $C90F
C909: 6F 88 19       CLR    $19,X
C90C: 6C 88 18       INC    $18,X
C90F: 39             RTS

C922: 10 8E C9 45    LDY    #$C945
C926: E6 88 18       LDB    $18,X
C929: A6 A5          LDA    B,Y
C92B: A7 02          STA    $2,X
C92D: 6C 88 19       INC    $19,X
C930: 10 8E C9 4E    LDY    #$C94E
C934: A6 88 18       LDA    $18,X
C937: E6 88 19       LDB    $19,X
C93A: E1 A6          CMPB   A,Y
C93C: 25 06          BCS    $C944
C93E: 6F 88 19       CLR    $19,X
C941: 6C 88 18       INC    $18,X
C944: 39             RTS

C957: 86 16          LDA    #$16
C959: E6 88 18       LDB    $18,X
C95C: C4 01          ANDB   #$01
C95E: 27 02          BEQ    $C962
C960: 86 17          LDA    #$17
C962: A7 02          STA    $2,X
C964: 6C 88 19       INC    $19,X
C967: A6 88 19       LDA    $19,X
C96A: 81 02          CMPA   #$02
C96C: 25 12          BCS    $C980
C96E: 6F 88 19       CLR    $19,X
C971: 6C 88 18       INC    $18,X
C974: A6 88 18       LDA    $18,X
C977: 81 0A          CMPA   #$0A
C979: 26 05          BNE    $C980
C97B: 86 04          LDA    #$04
C97D: A7 88 1B       STA    $1B,X
C980: 39             RTS
C981: 86 1A          LDA    #$1A
C983: AB 88 18       ADDA   $18,X
C986: A7 02          STA    $2,X
C988: 6C 88 19       INC    $19,X
C98B: A6 88 19       LDA    $19,X
C98E: 81 02          CMPA   #$02
C990: 25 12          BCS    $C9A4
C992: 6F 88 19       CLR    $19,X
C995: 6C 88 18       INC    $18,X
C998: A6 88 18       LDA    $18,X
C99B: 81 05          CMPA   #$05
C99D: 25 05          BCS    $C9A4
C99F: 6F 84          CLR    ,X
C9A1: 7A 0E 38       DEC    $0E38
C9A4: 39             RTS
C9A5: 86 16          LDA    #$16
C9A7: A7 02          STA    $2,X
C9A9: 39             RTS
C9AA: 10 8E C9 CD    LDY    #$C9CD
C9AE: E6 88 18       LDB    $18,X
C9B1: A6 A5          LDA    B,Y
C9B3: A7 02          STA    $2,X
C9B5: 6C 88 19       INC    $19,X
C9B8: 10 8E C9 D6    LDY    #$C9D6
C9BC: E6 88 18       LDB    $18,X
C9BF: A6 88 19       LDA    $19,X
C9C2: A1 A5          CMPA   B,Y
C9C4: 25 06          BCS    $C9CC
C9C6: 6F 88 19       CLR    $19,X
C9C9: 6C 88 18       INC    $18,X
C9CC: 39             RTS

C9DF: 86 05          LDA    #$05
C9E1: A7 88 1B       STA    $1B,X
C9E4: 39             RTS
C9E5: 86 16          LDA    #$16
C9E7: A7 02          STA    $2,X
C9E9: 39             RTS
C9EA: 86 16          LDA    #$16
C9EC: A7 02          STA    $2,X
C9EE: 6C 88 19       INC    $19,X
C9F1: A6 88 19       LDA    $19,X
C9F4: 81 04          CMPA   #$04
C9F6: 25 02          BCS    $C9FA
C9F8: 6F 84          CLR    ,X
C9FA: 39             RTS
C9FB: 34 7E          PSHS   U,Y,X,DP,D
C9FD: 17 00 0B       LBSR   $CA0B
CA00: 17 01 27       LBSR   $CB2A
CA03: 17 00 8F       LBSR   $CA95
CA06: 17 01 B8       LBSR   $CBC1
CA09: 35 FE          PULS   D,DP,X,Y,U,PC
CA0B: A6 88 1B       LDA    $1B,X
CA0E: 2B 14          BMI    $CA24
CA10: 8A 80          ORA    #$80
CA12: A7 88 1B       STA    $1B,X
CA15: 84 7F          ANDA   #$7F
CA17: 48             ASLA
CA18: 10 8E CA 25    LDY   #jump_table_ca25
CA1C: AD B6          JSR    [A,Y]        ; [indirect_jump] [nb_entries=19]
CA1E: 6F 88 19       CLR    $19,X
CA21: 6F 88 18       CLR    $18,X
CA24: 39             RTS
CA25: CA 4C          ORB    #$4C
CA27: CA 57          ORB    #$57
CA29: CA 4B          ORB    #$4B
CA2B: CA 4B          ORB    #$4B
CA2D: CA 4B          ORB    #$4B
CA2F: CA 4C          ORB    #$4C
CA31: CA 4B          ORB    #$4B
CA33: CA 5D          ORB    #$5D
CA35: CA 69          ORB    #$69
CA37: CA 72          ORB    #$72
CA39: CA 83          ORB    #$83
CA3B: CA 89          ORB    #$89
CA3D: CA 4C          ORB    #$4C
CA3F: CA 4B          ORB    #$4B
CA41: CA 4B          ORB    #$4B
CA43: CA 4B          ORB    #$4B
CA45: CA 4B          ORB    #$4B
CA47: CA 4B          ORB    #$4B
CA49: CA 8F          ORB    #$8F
CA4B: 39             RTS
CA4C: A6 84          LDA    ,X
CA4E: 84 F0          ANDA   #$F0
CA50: 8A 01          ORA    #$01
CA52: A7 84          STA    ,X
CA54: 6F 0E          CLR    $E,X
CA56: 39             RTS
CA57: 86 0F          LDA    #$0F
CA59: 17 03 20       LBSR   $CD7C
CA5C: 39             RTS
CA5D: A6 03          LDA    $3,X
CA5F: 88 80          EORA   #$80
CA61: A7 03          STA    $3,X
CA63: 86 0F          LDA    #$0F
CA65: 17 03 14       LBSR   $CD7C
CA68: 39             RTS
CA69: 17 FF E0       LBSR   $CA4C
CA6C: 86 05          LDA    #$05
CA6E: A7 88 1B       STA    $1B,X
CA71: 39             RTS
CA72: A6 84          LDA    ,X
CA74: 84 F0          ANDA   #$F0
CA76: 8A 01          ORA    #$01
CA78: A7 84          STA    ,X
CA7A: 86 04          LDA    #$04
CA7C: A7 0E          STA    $E,X
CA7E: 86 40          LDA    #$40
CA80: A7 0D          STA    $D,X
CA82: 39             RTS
CA83: 86 11          LDA    #$11
CA85: 17 02 F4       LBSR   $CD7C
CA88: 39             RTS
CA89: 86 10          LDA    #$10
CA8B: 17 02 EE       LBSR   $CD7C
CA8E: 39             RTS
CA8F: 86 11          LDA    #$11
CA91: 17 02 E8       LBSR   $CD7C
CA94: 39             RTS
CA95: A6 88 1B       LDA    $1B,X
CA98: 84 7F          ANDA   #$7F
CA9A: 48             ASLA
CA9B: 10 8E CA AC    LDY   #jump_table_caac
CA9F: AD B6          JSR    [A,Y]        ; [indirect_jump] [nb_entries=19]
CAA1: A6 03          LDA    $3,X
CAA3: 2A 06          BPL    $CAAB
CAA5: A6 02          LDA    $2,X
CAA7: 88 80          EORA   #$80
CAA9: A7 02          STA    $2,X
CAAB: 39             RTS
CAAC: CA D3          ORB    #$D3
CAAE: CA D7          ORB    #$D7
CAB0: CA D2          ORB    #$D2
CAB2: CA D2          ORB    #$D2
CAB4: CA D2          ORB    #$D2
CAB6: CB 00          ADDB   #$00
CAB8: CA D2          ORB    #$D2
CABA: CB 05          ADDB   #$05
CABC: CB 09          ADDB   #$09
CABE: CB 0F          ADDB   #$0F
CAC0: CB 0F          ADDB   #$0F
CAC2: CB 14          ADDB   #$14
CAC4: BE C0 CA       LDX    $C0CA
CAC7: D2 CA          SBCB   $CA
CAC9: D2 CA          SBCB   $CA
CACB: D2 CA          SBCB   $CA
CACD: D2 CA          SBCB   $CA
CACF: D2 CB          SBCB   $CB
CAD1: 19             DAA
CAD2: 39             RTS
CAD3: 17 03 62       LBSR   $CE38
CAD6: 39             RTS
CAD7: 10 8E CA FA    LDY    #$CAFA
CADB: E6 88 18       LDB    $18,X
CADE: A6 A5          LDA    B,Y
CAE0: A7 02          STA    $2,X
CAE2: 6C 88 19       INC    $19,X
CAE5: 10 8E CA FD    LDY    #$CAFD
CAE9: A6 88 18       LDA    $18,X
CAEC: E6 88 19       LDB    $19,X
CAEF: E1 A6          CMPB   A,Y
CAF1: 25 06          BCS    $CAF9
CAF3: 6F 88 19       CLR    $19,X
CAF6: 6C 88 18       INC    $18,X
CAF9: 39             RTS

CB00: 86 16          LDA    #$16
CB02: A7 02          STA    $2,X
CB04: 39             RTS
CB05: 17 FF CF       LBSR   $CAD7
CB08: 39             RTS
CB09: 86 05          LDA    #$05
CB0B: A7 88 1B       STA    $1B,X
CB0E: 39             RTS
CB0F: 86 16          LDA    #$16
CB11: A7 02          STA    $2,X
CB13: 39             RTS
CB14: 86 0B          LDA    #$0B
CB16: A7 02          STA    $2,X
CB18: 39             RTS
CB19: 86 0B          LDA    #$0B
CB1B: A7 02          STA    $2,X
CB1D: 6C 88 19       INC    $19,X
CB20: A6 88 19       LDA    $19,X
CB23: 81 04          CMPA   #$04
CB25: 25 02          BCS    $CB29
CB27: 6F 84          CLR    ,X
CB29: 39             RTS
CB2A: 34 7E          PSHS   U,Y,X,DP,D
CB2C: A6 88 1B       LDA    $1B,X
CB2F: 84 7F          ANDA   #$7F
CB31: 81 05          CMPA   #$05
CB33: 27 6F          BEQ    $CBA4
CB35: 81 00          CMPA   #$00
CB37: 27 6B          BEQ    $CBA4
CB39: EC 04          LDD    $4,X
CB3B: FD 0B 31       STD    $0B31
CB3E: EC 06          LDD    $6,X
CB40: FD 0B 33       STD    $0B33
CB43: EC 08          LDD    $8,X
CB45: FD 0B 35       STD    $0B35
CB48: 17 33 35       LBSR   $FE80
CB4B: EC 04          LDD    $4,X
CB4D: FD 0B 37       STD    $0B37
CB50: EC 06          LDD    $6,X
CB52: FD 0B 39       STD    $0B39
CB55: EC 08          LDD    $8,X
CB57: FD 0B 3B       STD    $0B3B
CB5A: A6 03          LDA    $3,X
CB5C: B7 0B 3D       STA    $0B3D
CB5F: CE 0B 3E       LDU    #$0B3E
CB62: A6 88 1B       LDA    $1B,X
CB65: 84 7F          ANDA   #$7F
CB67: 81 09          CMPA   #$09
CB69: 26 16          BNE    $CB81
CB6B: 10 8E CB B2    LDY    #$CBB2
CB6F: A6 88 17       LDA    $17,X
CB72: 84 1F          ANDA   #$1F
CB74: E6 A6          LDB    A,Y
CB76: E7 C0          STB    ,U+
CB78: 86 0B          LDA    #$0B
CB7A: 6F C0          CLR    ,U+
CB7C: 4A             DECA
CB7D: 26 FB          BNE    $CB7A
CB7F: 20 0D          BRA    $CB8E
CB81: 10 8E CB A6    LDY    #$CBA6
CB85: C6 0C          LDB    #$0C
CB87: A6 A0          LDA    ,Y+
CB89: A7 C0          STA    ,U+
CB8B: 5A             DECB
CB8C: 26 F9          BNE    $CB87
CB8E: 34 10          PSHS   X
CB90: 17 2F 6D       LBSR   $FB00
CB93: 35 10          PULS   X
CB95: FC 0B 4E       LDD    $0B4E
CB98: ED 04          STD    $4,X
CB9A: FC 0B 50       LDD    $0B50
CB9D: ED 06          STD    $6,X
CB9F: FC 0B 52       LDD    $0B52
CBA2: ED 08          STD    $8,X
CBA4: 35 FE          PULS   D,DP,X,Y,U,PC

CBC1: 34 7E          PSHS   U,Y,X,DP,D                                  
CBC3: A6 88 1B       LDA    $1B,X                                       
CBC6: 84 7F          ANDA   #$7F
CBC8: 81 00          CMPA   #$00
CBCA: 27 16          BEQ    $CBE2
CBCC: 81 05          CMPA   #$05
CBCE: 27 12          BEQ    $CBE2
CBD0: 17 00 11       LBSR   $CBE4
CBD3: 17 00 C4       LBSR   $CC9A
CBD6: 17 01 03       LBSR   $CCDC
CBD9: 17 01 1A       LBSR   $CCF6
CBDC: 17 01 42       LBSR   $CD21
CBDF: 17 01 7F       LBSR   $CD61
CBE2: 35 FE          PULS   D,DP,X,Y,U,PC
CBE4: A6 88 17       LDA    $17,X
CBE7: 84 3F          ANDA   #$3F
CBE9: 81 00          CMPA   #$00
CBEB: 27 43          BEQ    $CC30
CBED: 81 04          CMPA   #$04
CBEF: 27 3F          BEQ    $CC30
CBF1: 81 03          CMPA   #$03
CBF3: 27 3B          BEQ    $CC30
CBF5: A6 88 1B       LDA    $1B,X
CBF8: 84 7F          ANDA   #$7F
CBFA: 81 02          CMPA   #$02
CBFC: 27 0C          BEQ    $CC0A
CBFE: 81 07          CMPA   #$07
CC00: 27 08          BEQ    $CC0A
CC02: 81 0B          CMPA   #$0B
CC04: 27 04          BEQ    $CC0A
CC06: 81 01          CMPA   #$01
CC08: 26 25          BNE    $CC2F
CC0A: B6 0B 4D       LDA    $0B4D
CC0D: 84 F0          ANDA   #$F0
CC0F: 27 1E          BEQ    $CC2F
CC11: A6 88 1B       LDA    $1B,X
CC14: 84 7F          ANDA   #$7F
CC16: 81 0B          CMPA   #$0B
CC18: 26 07          BNE    $CC21
CC1A: 86 05          LDA    #$05
CC1C: A7 88 1B       STA    $1B,X
CC1F: 20 0E          BRA    $CC2F
CC21: 86 08          LDA    #$08
CC23: A7 88 1B       STA    $1B,X
CC26: 86 40          LDA    #$40
CC28: E6 0F          LDB    $F,X
CC2A: 2A 01          BPL    $CC2D
CC2C: 40             NEGA
CC2D: A7 0D          STA    $D,X
CC2F: 39             RTS
CC30: A6 88 1B       LDA    $1B,X
CC33: 84 7F          ANDA   #$7F
CC35: 81 02          CMPA   #$02
CC37: 27 1A          BEQ    $CC53
CC39: 81 01          CMPA   #$01
CC3B: 27 16          BEQ    $CC53
CC3D: 81 07          CMPA   #$07
CC3F: 27 12          BEQ    $CC53
CC41: 81 0D          CMPA   #$0D
CC43: 27 0E          BEQ    $CC53
CC45: 81 0E          CMPA   #$0E
CC47: 27 0A          BEQ    $CC53
CC49: 81 0F          CMPA   #$0F
CC4B: 27 06          BEQ    $CC53
CC4D: 81 0B          CMPA   #$0B
CC4F: 27 02          BEQ    $CC53
CC51: 20 DC          BRA    $CC2F
CC53: B6 0B 4D       LDA    $0B4D
CC56: 84 F0          ANDA   #$F0
CC58: 27 D5          BEQ    $CC2F
CC5A: A6 88 1B       LDA    $1B,X
CC5D: 84 7F          ANDA   #$7F
CC5F: 81 0B          CMPA   #$0B
CC61: 26 07          BNE    $CC6A
CC63: 86 05          LDA    #$05
CC65: A7 88 1B       STA    $1B,X
CC68: 20 C5          BRA    $CC2F
CC6A: 81 0D          CMPA   #$0D
CC6C: 26 07          BNE    $CC75
CC6E: 86 0E          LDA    #$0E
CC70: A7 88 1B       STA    $1B,X
CC73: 20 BA          BRA    $CC2F
CC75: 81 0E          CMPA   #$0E
CC77: 26 07          BNE    $CC80
CC79: 86 0F          LDA    #$0F
CC7B: A7 88 1B       STA    $1B,X
CC7E: 20 AF          BRA    $CC2F
CC80: 81 0F          CMPA   #$0F
CC82: 26 10          BNE    $CC94
CC84: 86 06          LDA    #$06
CC86: A7 88 1B       STA    $1B,X
CC89: 86 40          LDA    #$40
CC8B: E6 0F          LDB    $F,X
CC8D: 2A 01          BPL    $CC90
CC8F: 40             NEGA
CC90: A7 0D          STA    $D,X
CC92: 20 9B          BRA    $CC2F
CC94: 86 0D          LDA    #$0D
CC96: A7 88 1B       STA    $1B,X
CC99: 39             RTS
CC9A: A6 88 1B       LDA    $1B,X
CC9D: 84 7F          ANDA   #$7F
CC9F: 81 07          CMPA   #$07
CCA1: 27 38          BEQ    $CCDB
CCA3: 81 0B          CMPA   #$0B
CCA5: 27 34          BEQ    $CCDB
CCA7: F6 0B 4B       LDB    $0B4B
CCAA: C5 05          BITB   #$05
CCAC: 27 2D          BEQ    $CCDB
CCAE: E6 88 17       LDB    $17,X
CCB1: C4 3F          ANDB   #$3F
CCB3: C1 06          CMPB   #$06
CCB5: 26 09          BNE    $CCC0
CCB7: 34 02          PSHS   A
CCB9: 86 90          LDA    #$90
CCBB: 17 31 F8       LBSR   $FEB6
CCBE: 35 02          PULS   A
CCC0: C6 06          LDB    #$06
CCC2: 81 06          CMPA   #$06
CCC4: 27 06          BEQ    $CCCC
CCC6: 81 13          CMPA   #$13
CCC8: 27 02          BEQ    $CCCC
CCCA: C6 07          LDB    #$07
CCCC: E7 88 1B       STB    $1B,X
CCCF: C1 06          CMPB   #$06
CCD1: 26 08          BNE    $CCDB
CCD3: 60 0D          NEG    $D,X
CCD5: A6 03          LDA    $3,X
CCD7: 88 80          EORA   #$80
CCD9: A7 03          STA    $3,X
CCDB: 39             RTS
CCDC: A6 88 1B       LDA    $1B,X
CCDF: 84 7F          ANDA   #$7F
CCE1: 81 09          CMPA   #$09
CCE3: 27 10          BEQ    $CCF5
CCE5: 81 12          CMPA   #$12
CCE7: 27 0C          BEQ    $CCF5
CCE9: B6 0B 4A       LDA    $0B4A
CCEC: 81 09          CMPA   #$09
CCEE: 26 05          BNE    $CCF5
CCF0: 86 09          LDA    #$09
CCF2: A7 88 1B       STA    $1B,X
CCF5: 39             RTS
CCF6: A6 88 1B       LDA    $1B,X
CCF9: 84 7F          ANDA   #$7F
CCFB: 81 0A          CMPA   #$0A
CCFD: 27 21          BEQ    $CD20
CCFF: 81 12          CMPA   #$12
CD01: 27 1D          BEQ    $CD20
CD03: B6 0B 4A       LDA    $0B4A
CD06: 81 04          CMPA   #$04
CD08: 27 04          BEQ    $CD0E
CD0A: 81 07          CMPA   #$07
CD0C: 26 12          BNE    $CD20
CD0E: 86 0A          LDA    #$0A
CD10: A7 88 1B       STA    $1B,X
CD13: 96 36          LDA    $36
CD15: 81 01          CMPA   #$01
CD17: 26 07          BNE    $CD20
CD19: 86 12          LDA    #$12
CD1B: A7 88 1B       STA    $1B,X
CD1E: 6F 84          CLR    ,X
CD20: 39             RTS
CD21: A6 88 1B       LDA    $1B,X
CD24: 84 7F          ANDA   #$7F
CD26: 81 05          CMPA   #$05
CD28: 27 1E          BEQ    $CD48
CD2A: 81 06          CMPA   #$06
CD2C: 27 1A          BEQ    $CD48
CD2E: 81 13          CMPA   #$13
CD30: 27 16          BEQ    $CD48
CD32: 81 08          CMPA   #$08
CD34: 27 12          BEQ    $CD48
CD36: 81 00          CMPA   #$00
CD38: 27 26          BEQ    $CD60
CD3A: 81 0A          CMPA   #$0A
CD3C: 27 22          BEQ    $CD60
CD3E: 81 0B          CMPA   #$0B
CD40: 27 1E          BEQ    $CD60
CD42: 81 12          CMPA   #$12
CD44: 27 1A          BEQ    $CD60
CD46: 20 18          BRA    $CD60
CD48: B6 0B 4D       LDA    $0B4D
CD4B: 84 F0          ANDA   #$F0
CD4D: 26 11          BNE    $CD60
CD4F: 86 0B          LDA    #$0B
CD51: A7 88 1B       STA    $1B,X
CD54: C6 10          LDB    #$10
CD56: A6 0D          LDA    $D,X
CD58: 2A 01          BPL    $CD5B
CD5A: 50             NEGB
CD5B: 1D             SEX
CD5C: E3 04          ADDD   $4,X
CD5E: ED 04          STD    $4,X
CD60: 39             RTS
CD61: A6 88 1B       LDA    $1B,X
CD64: 84 7F          ANDA   #$7F
CD66: 81 0C          CMPA   #$0C
CD68: 27 11          BEQ    $CD7B
CD6A: B6 0B 4A       LDA    $0B4A
CD6D: 81 05          CMPA   #$05
CD6F: 26 0A          BNE    $CD7B
CD71: 86 0C          LDA    #$0C
CD73: A7 88 1B       STA    $1B,X
CD76: 86 8C          LDA    #$8C
CD78: 17 31 3B       LBSR   $FEB6
CD7B: 39             RTS
CD7C: 32 71          LEAS   -$F,S
CD7E: A7 E4          STA    ,S
CD80: 1F 89          TFR    A,B
CD82: 58             ASLB
CD83: EB E4          ADDB   ,S
CD85: 58             ASLB
CD86: 4F             CLRA
CD87: 10 8E CD B0    LDY    #$CDB0
CD8B: 31 AB          LEAY   D,Y
CD8D: EC A1          LDD    ,Y++
CD8F: ED 0F          STD    $F,X
CD91: A6 03          LDA    $3,X
CD93: 2A 07          BPL    $CD9C
CD95: CC 00 00       LDD    #$0000
CD98: A3 0F          SUBD   $F,X
CD9A: ED 0F          STD    $F,X
CD9C: EC A1          LDD    ,Y++
CD9E: ED 88 11       STD    $11,X
CDA1: EC A1          LDD    ,Y++
CDA3: ED 0D          STD    $D,X
CDA5: A6 84          LDA    ,X
CDA7: 84 F0          ANDA   #$F0
CDA9: 8A 02          ORA    #$02
CDAB: A7 84          STA    ,X
CDAD: 32 6F          LEAS   $F,S
CDAF: 39             RTS

CE1C: 34 7E          PSHS   U,Y,X,DP,D                                   
CE1E: A6 88 1B       LDA    $1B,X                                        
CE21: 84 7F          ANDA   #$7F
CE23: 81 05          CMPA   #$05
CE25: 26 0F          BNE    $CE36
CE27: 6C 88 19       INC    $19,X
CE2A: A6 88 19       LDA    $19,X
CE2D: 81 20          CMPA   #$20
CE2F: 25 05          BCS    $CE36
CE31: 86 03          LDA    #$03
CE33: A7 88 1B       STA    $1B,X
CE36: 35 FE          PULS   D,DP,X,Y,U,PC
CE38: 34 7E          PSHS   U,Y,X,DP,D
CE3A: 32 71          LEAS   -$F,S
CE3C: EE 88 1F       LDU    $1F,X
CE3F: 10 8E CE D5    LDY    #$CED5
CE43: A6 41          LDA    $1,U
CE45: 84 3F          ANDA   #$3F
CE47: 48             ASLA
CE48: 31 B6          LEAY   [A,Y]
CE4A: 34 20          PSHS   Y
CE4C: 10 8E CF 1D    LDY    #$CF1D
CE50: E6 41          LDB    $1,U
CE52: C4 3F          ANDB   #$3F
CE54: A6 A5          LDA    B,Y
CE56: 34 02          PSHS   A
CE58: E6 42          LDB    $2,U
CE5A: C4 7F          ANDB   #$7F
CE5C: A6 41          LDA    $1,U
CE5E: 84 3F          ANDA   #$3F
CE60: 81 04          CMPA   #$04
CE62: 25 06          BCS    $CE6A
CE64: 81 08          CMPA   #$08
CE66: 24 02          BCC    $CE6A
CE68: C0 47          SUBB   #$47
CE6A: 35 02          PULS   A
CE6C: 3D             MUL
CE6D: 35 20          PULS   Y
CE6F: 31 AB          LEAY   D,Y
CE71: A6 41          LDA    $1,U
CE73: 84 3F          ANDA   #$3F
CE75: 48             ASLA
CE76: CE CF 41       LDU    #$CF41
CE79: 33 D6          LEAU   [A,U]
CE7B: A6 88 17       LDA    $17,X
CE7E: 84 1F          ANDA   #$1F
CE80: E6 C6          LDB    A,U
CE82: 31 A5          LEAY   B,Y
CE84: EE 88 1F       LDU    $1F,X
CE87: E6 A4          LDB    ,Y
CE89: E7 02          STB    $2,X
CE8B: E6 21          LDB    $1,Y
CE8D: A6 03          LDA    $3,X
CE8F: 2A 01          BPL    $CE92
CE91: 50             NEGB
CE92: 1D             SEX
CE93: E3 44          ADDD   $4,U
CE95: ED 04          STD    $4,X
CE97: E6 22          LDB    $2,Y
CE99: 1D             SEX
CE9A: E3 48          ADDD   $8,U
CE9C: ED 08          STD    $8,X
CE9E: EC 46          LDD    $6,U
CEA0: ED 06          STD    $6,X
CEA2: A6 41          LDA    $1,U
CEA4: 81 03          CMPA   #$03
CEA6: 27 0C          BEQ    $CEB4
CEA8: 81 22          CMPA   #$22
CEAA: 24 08          BCC    $CEB4
CEAC: 81 0B          CMPA   #$0B
CEAE: 24 21          BCC    $CED1
CEB0: 81 08          CMPA   #$08
CEB2: 25 1D          BCS    $CED1
CEB4: A6 88 17       LDA    $17,X
CEB7: 84 1F          ANDA   #$1F
CEB9: 81 06          CMPA   #$06
CEBB: 27 04          BEQ    $CEC1
CEBD: 81 05          CMPA   #$05
CEBF: 26 10          BNE    $CED1
CEC1: A6 42          LDA    $2,U
CEC3: 84 7F          ANDA   #$7F
CEC5: 81 30          CMPA   #$30
CEC7: 27 08          BEQ    $CED1
CEC9: 81 31          CMPA   #$31
CECB: 27 04          BEQ    $CED1
CECD: 86 7F          LDA    #$7F
CECF: A7 02          STA    $2,X
CED1: 32 6F          LEAS   $F,S
CED3: 35 FE          PULS   D,DP,X,Y,U,PC


E06B: 04 6C          LSR    $6C
E06D: 7D 09 F2       TST    $09F2
E070: 10 2B C1 83    LBMI   $A1F7
E074: 10 AE 88 2D    LDY    $2D,X
E078: 7E 92 C0       JMP    $92C0
E080: 8E E0 89       LDX    #jump_table_e089
E083: D6 36          LDB    $36
E085: 58             ASLB
E086: AD 95          JSR    [B,X]    ; [indirect_jump] [nb_entries=4]
E088: 39             RTS

jump_table_e089:
	dc.w	$e091
	dc.w	$e09d
	dc.w	$e09d
	dc.w	$e097

E091: BD FE 9B       JSR    clear_bg_screen_fe9b
E094: BD E0 E8       JSR    $E0E8
E097: BD E0 A1       JSR    $E0A1
E09A: BD E0 BC       JSR    $E0BC
E09D: BD FE E9       JSR    $FEE9
E0A0: 39             RTS
E0A1: 8E EA F2       LDX    #$EAF2
E0A4: D6 36          LDB    $36
E0A6: 58             ASLB
E0A7: EC 85          LDD    B,X
E0A9: B7 0A 5F       STA    $0A5F
E0AC: F7 0A 62       STB    $0A62
E0AF: CC 00 00       LDD    #$0000
E0B2: FD 0A 60       STD    $0A60
E0B5: FD 0A 63       STD    $0A63
E0B8: BD E2 8E       JSR    $E28E
E0BB: 39             RTS
E0BC: FC 0A 62       LDD    $0A62
E0BF: FD 0A 49       STD    $0A49
E0C2: C3 01 10       ADDD   #$0110
E0C5: FD 0A 68       STD    $0A68
E0C8: FC 0A 5F       LDD    $0A5F
E0CB: 34 06          PSHS   D
E0CD: FD 0A 65       STD    $0A65
E0D0: C3 01 40       ADDD   #$0140
E0D3: FD 0A 46       STD    $0A46
E0D6: BD E5 BD       JSR    $E5BD
E0D9: FC 0A 46       LDD    $0A46
E0DC: FD 0A 65       STD    $0A65
E0DF: 35 06          PULS   D
E0E1: FD 0A 5F       STD    $0A5F
E0E4: BD E9 1E       JSR    update_scrolling_registers_e91e
E0E7: 39             RTS
E0E8: 8E 0A 41       LDX    #$0A41
E0EB: 6F 80          CLR    ,X+
E0ED: 8C 0A 6B       CMPX   #$0A6B
E0F0: 26 F9          BNE    $E0EB
E0F2: BD E2 8E       JSR    $E28E
E0F5: 39             RTS
E0F6: CC 00 00       LDD    #$0000
E0F9: FD 0A 5F       STD    $0A5F
E0FC: FD 0A 62       STD    $0A62
E0FF: DD 3C          STD    $3C
E101: DD 3F          STD    $3F
E103: BD E9 46       JSR    $E946
E106: 39             RTS
E107: B6 0B 03       LDA    $0B03
E10A: 84 C0          ANDA   #$C0
E10C: 81 C0          CMPA   #$C0
E10E: 27 36          BEQ    $E146
E110: BD E1 67       JSR    $E167
E113: BD E2 A3       JSR    $E2A3
E116: BD E3 4C       JSR    $E34C
E119: BD FE EC       JSR    $FEEC
E11C: BD FE EF       JSR    $FEEF
E11F: BD E1 F1       JSR    $E1F1
E122: BD E2 3E       JSR    $E23E
E125: BD E2 5D       JSR    $E25D
E128: BD FC D2       JSR    $FCD2
E12B: BD E3 F0       JSR    $E3F0
E12E: BD E4 D6       JSR    $E4D6
E131: BD FE F2       JSR    $FEF2
E134: BD E1 47       JSR    $E147
E137: BD E1 57       JSR    $E157
E13A: BD E2 8E       JSR    $E28E
E13D: BD E9 46       JSR    $E946
E140: BD E9 82       JSR    $E982
E143: BD ED DE       JSR    $EDDE
E146: 39             RTS
E147: BD E5 BD       JSR    $E5BD
E14A: FC 0A 46       LDD    $0A46
E14D: FD 0A 5F       STD    $0A5F
E150: B6 0A 48       LDA    $0A48
E153: B7 0A 61       STA    $0A61
E156: 39             RTS
E157: BD E6 AA       JSR    $E6AA
E15A: FC 0A 49       LDD    $0A49
E15D: FD 0A 62       STD    $0A62
E160: B6 0A 4B       LDA    $0A4B
E163: B7 0A 64       STA    $0A64
E166: 39             RTS
E167: 8E 03 A2       LDX    #$03A2
E16A: BD E1 74       JSR    $E174
E16D: 8E 04 00       LDX    #$0400
E170: BD E1 74       JSR    $E174
E173: 39             RTS
E174: DC 3D          LDD    $3D
E176: 43             COMA
E177: 53             COMB
E178: C3 00 01       ADDD   #$0001
E17B: DD 01          STD    $01
E17D: A6 05          LDA    $5,X
E17F: E6 0A          LDB    $A,X
E181: D3 01          ADDD   $01
E183: ED 88 38       STD    $38,X
E186: DC 40          LDD    $40
E188: 43             COMA
E189: 53             COMB
E18A: C3 00 01       ADDD   #$0001
E18D: DD 01          STD    $01
E18F: A6 07          LDA    $7,X
E191: E6 0B          LDB    $B,X
E193: DD 03          STD    $03
E195: A6 09          LDA    $9,X
E197: E6 0C          LDB    $C,X
E199: D3 03          ADDD   $03
E19B: D3 01          ADDD   $01
E19D: ED 88 3A       STD    bank_switch_copy_3a,X
E1A0: 39             RTS
E1A1: 32 7C          LEAS   -$4,S
E1A3: 96 29          LDA    number_of_players_flag_0029
E1A5: 84 03          ANDA   #$03
E1A7: 81 03          CMPA   #$03
E1A9: 26 3B          BNE    $E1E6
E1AB: 36 10          PSHU   X		; using "user" stack as S is used as local vars
E1AD: 8E E1 E9       LDX    #$E1E9
E1B0: 96 36          LDA    $36
E1B2: 48             ASLA
E1B3: EC 86          LDD    A,X
E1B5: ED 62          STD    $2,S
E1B7: 37 10          PULU   X		; using "user" stack as S is used as local vars
E1B9: FC 03 A6       LDD    $03A6
E1BC: B3 04 04       SUBD   $0404
E1BF: 2A 03          BPL    $E1C4
E1C1: BD E9 4F       JSR    $E94F
E1C4: 10 83 00 80    CMPD   #$0080
E1C8: 26 06          BNE    $E1D0
E1CA: CC 00 00       LDD    #$0000
E1CD: FD 0A 42       STD    $0A42
E1D0: FC 03 A8       LDD    $03A8
E1D3: B3 04 06       SUBD   $0406
E1D6: 2A 03          BPL    $E1DB
E1D8: BD E9 4F       JSR    $E94F
E1DB: 10 A3 62       CMPD   $2,S
E1DE: 26 06          BNE    $E1E6
E1E0: CC 00 00       LDD    #$0000
E1E3: FD 0A 44       STD    $0A44
E1E6: 32 64          LEAS   $4,S
E1E8: 39             RTS

E1F1: 96 36          LDA    $36
E1F3: 81 02          CMPA   #$02
E1F5: 26 46          BNE    $E23D
E1F7: DC 3C          LDD    $3C
E1F9: 10 83 10 00    CMPD   #$1000
E1FD: 25 3E          BCS    $E23D
E1FF: 10 83 10 40    CMPD   #$1040
E203: 25 0E          BCS    $E213
E205: 10 83 12 B0    CMPD   #$12B0
E209: 25 32          BCS    $E23D
E20B: 10 83 14 00    CMPD   #$1400
E20F: 25 18          BCS    $E229
E211: 20 2A          BRA    $E23D
E213: CC 00 00       LDD    #$0000
E216: FD 0A 44       STD    $0A44
E219: DC 3F          LDD    $3F
E21B: 10 83 01 28    CMPD   #$0128
E21F: 25 1C          BCS    $E23D
E221: CC FF 00       LDD    #$FF00
E224: FD 0A 44       STD    $0A44
E227: 20 14          BRA    $E23D
E229: CC 00 00       LDD    #$0000
E22C: FD 0A 44       STD    $0A44
E22F: DC 3F          LDD    $3F
E231: 10 83 01 E8    CMPD   #$01E8
E235: 24 06          BCC    $E23D
E237: CC 01 00       LDD    #$0100
E23A: FD 0A 44       STD    $0A44
E23D: 39             RTS
E23E: 96 36          LDA    $36
E240: D6 38          LDB    $38
E242: 10 83 02 04    CMPD   #$0204
E246: 26 14          BNE    $E25C
E248: FC 0A 5F       LDD    $0A5F
E24B: 10 83 11 61    CMPD   #$1161
E24F: 24 0B          BCC    $E25C
E251: FC 0A 44       LDD    $0A44
E254: 2B 06          BMI    $E25C
E256: CC 00 00       LDD    #$0000
E259: FD 0A 44       STD    $0A44
E25C: 39             RTS
E25D: 96 36          LDA    $36
E25F: 81 03          CMPA   #$03
E261: 26 2A          BNE    $E28D
E263: 96 29          LDA    number_of_players_flag_0029
E265: 84 03          ANDA   #$03
E267: 88 03          EORA   #$03
E269: 26 22          BNE    $E28D
E26B: FC 03 A8       LDD    $03A8
E26E: F3 03 AA       ADDD   $03AA
E271: 93 3F          SUBD   $3F
E273: 10 83 00 20    CMPD   #$0020
E277: 25 0E          BCS    $E287
E279: FC 04 06       LDD    $0406
E27C: F3 04 08       ADDD   $0408
E27F: 93 3F          SUBD   $3F
E281: 10 83 00 20    CMPD   #$0020
E285: 24 06          BCC    $E28D
E287: CC FF 00       LDD    #$FF00
E28A: FD 0A 44       STD    $0A44
E28D: 39             RTS
E28E: FC 0A 5F       LDD    $0A5F
E291: DD 3C          STD    $3C
E293: B6 0A 61       LDA    $0A61
E296: 97 3E          STA    $3E
E298: FC 0A 62       LDD    $0A62
E29B: DD 3F          STD    $3F
E29D: B6 0A 64       LDA    $0A64
E2A0: 97 41          STA    $41
E2A2: 39             RTS
E2A3: CC 00 00       LDD    #$0000
E2A6: FD 0A 4C       STD    $0A4C
E2A9: FD 0A 50       STD    $0A50
E2AC: 8E 03 A2       LDX    #$03A2
E2AF: BD E3 15       JSR    $E315
E2B2: 25 35          BCS    $E2E9
E2B4: 8E 04 00       LDX    #$0400
E2B7: BD E3 15       JSR    $E315
E2BA: 25 2D          BCS    $E2E9
E2BC: 8E 03 A2       LDX    #$03A2
E2BF: 10 8E 0A 4C    LDY    #$0A4C
E2C3: BD E2 ED       JSR    $E2ED
E2C6: 8E 04 00       LDX    #$0400
E2C9: 10 8E 0A 50    LDY    #$0A50
E2CD: BD E2 ED       JSR    $E2ED
E2D0: FC 0A 4C       LDD    $0A4C
E2D3: F3 0A 50       ADDD   $0A50
E2D6: 27 11          BEQ    $E2E9
E2D8: 10 83 01 00    CMPD   #$0100
E2DC: 27 0B          BEQ    $E2E9
E2DE: 4D             TSTA
E2DF: 2B 05          BMI    $E2E6
E2E1: CC 01 00       LDD    #$0100
E2E4: 20 03          BRA    $E2E9
E2E6: CC FF 00       LDD    #$FF00
E2E9: FD 0A 42       STD    $0A42
E2EC: 39             RTS
E2ED: 34 36          PSHS   Y,X,D
E2EF: 6D 84          TST    ,X
E2F1: 2A 20          BPL    $E313
E2F3: EC 88 38       LDD    $38,X
E2F6: ED 22          STD    $2,Y
E2F8: 10 83 C0 00    CMPD   #$C000
E2FC: 24 0B          BCC    $E309
E2FE: 10 83 40 00    CMPD   #bank_address_4000
E302: 23 0A          BLS    $E30E
E304: CC 00 00       LDD    #$0000
E307: 20 08          BRA    $E311
E309: CC 01 00       LDD    #$0100
E30C: 20 03          BRA    $E311
E30E: CC FF 00       LDD    #$FF00
E311: ED A4          STD    ,Y
E313: 35 B6          PULS   D,X,Y,PC
E315: A6 88 1B       LDA    $1B,X
E318: 84 7F          ANDA   #$7F
E31A: 81 0C          CMPA   #$0C
E31C: 27 04          BEQ    $E322
E31E: 81 0A          CMPA   #$0A
E320: 26 19          BNE    $E33B
E322: 10 AE 88 2D    LDY    $2D,X
E326: A6 21          LDA    $1,Y
E328: 84 FE          ANDA   #$FE
E32A: 26 0F          BNE    $E33B
E32C: EC 88 38       LDD    $38,X
E32F: 10 83 88 00    CMPD   #$8800
E333: 24 0A          BCC    $E33F
E335: 10 83 78 00    CMPD   #$7800
E339: 23 0B          BLS    $E346
E33B: 1C FE          ANDCC  #$FE
E33D: 20 0C          BRA    $E34B
E33F: CC 01 00       LDD    #$0100
E342: 1A 01          ORCC   #$01
E344: 20 05          BRA    $E34B
E346: CC FF 00       LDD    #$FF00
E349: 1A 01          ORCC   #$01
E34B: 39             RTS
E34C: CC 00 00       LDD    #$0000
E34F: FD 0A 4C       STD    $0A4C
E352: FD 0A 50       STD    $0A50
E355: 8E 03 A2       LDX    #$03A2
E358: 10 8E 0A 4C    LDY    #$0A4C
E35C: BD E3 86       JSR    $E386
E35F: 8E 04 00       LDX    #$0400
E362: 10 8E 0A 50    LDY    #$0A50
E366: BD E3 86       JSR    $E386
E369: FC 0A 4C       LDD    $0A4C
E36C: F3 0A 50       ADDD   $0A50
E36F: 27 11          BEQ    $E382
E371: 10 83 01 00    CMPD   #$0100
E375: 27 0B          BEQ    $E382
E377: 4D             TSTA
E378: 2B 05          BMI    $E37F
E37A: CC 01 00       LDD    #$0100
E37D: 20 03          BRA    $E382
E37F: CC FF 00       LDD    #$FF00
E382: FD 0A 44       STD    $0A44
E385: 39             RTS
E386: 34 36          PSHS   Y,X,D
E388: 32 7C          LEAS   -$4,S
E38A: 6D 84          TST    ,X
E38C: 2A 4E          BPL    $E3DC
E38E: 96 36          LDA    $36
E390: 81 03          CMPA   #$03
E392: 27 08          BEQ    $E39C
E394: B6 03 A2       LDA    $03A2
E397: B8 04 00       EORA   $0400
E39A: 2B 0A          BMI    $E3A6
E39C: B6 03 B7       LDA    $03B7
E39F: BA 04 15       ORA    $0415
E3A2: 84 40          ANDA   #$40
E3A4: 26 36          BNE    $E3DC
E3A6: 36 10          PSHU   X		; using "user" stack as S is used as local vars
E3A8: 8E E3 E0       LDX    #$E3E0
E3AB: 96 36          LDA    $36
E3AD: 48             ASLA
E3AE: EC 86          LDD    A,X
E3B0: ED E4          STD    ,S
E3B2: 8E E3 E8       LDX    #$E3E8
E3B5: 96 36          LDA    $36
E3B7: 48             ASLA
E3B8: EC 86          LDD    A,X
E3BA: ED 62          STD    $2,S
E3BC: 37 10          PULU   X		; using "user" stack as S is used as local vars
E3BE: EC 88 3A       LDD    bank_switch_copy_3a,X
E3C1: ED 22          STD    $2,Y
E3C3: 10 A3 E4       CMPD   ,S
E3C6: 24 0A          BCC    $E3D2
E3C8: 10 A3 62       CMPD   $2,S
E3CB: 23 0A          BLS    $E3D7
E3CD: CC 00 00       LDD    #$0000
E3D0: 20 08          BRA    $E3DA
E3D2: CC 01 00       LDD    #$0100
E3D5: 20 03          BRA    $E3DA
E3D7: CC FF 00       LDD    #$FF00
E3DA: ED A4          STD    ,Y
E3DC: 32 64          LEAS   $4,S
E3DE: 35 B6          PULS   D,X,Y,PC

E3F0: 32 E8 ED       LEAS   -$13,S
E3F3: FC 0A 42       LDD    $0A42
E3F6: 10 27 00 C2    LBEQ   $E4BC
E3FA: FC 0A 42       LDD    $0A42
E3FD: F3 0A 60       ADDD   $0A60
E400: ED 61          STD    $1,S
E402: F6 0A 42       LDB    $0A42
E405: 1D             SEX
E406: 89 00          ADCA   #$00
E408: BB 0A 5F       ADDA   $0A5F
E40B: A7 E4          STA    ,S
E40D: 2A 0A          BPL    $E419
E40F: CC 00 00       LDD    #$0000
E412: ED E4          STD    ,S
E414: E7 62          STB    $2,S
E416: 16 00 97       LBRA   $E4B0
E419: B6 0A 5F       LDA    $0A5F
E41C: F6 0A 62       LDB    $0A62
E41F: BD E7 9A       JSR    $E79A
E422: B6 0A 62       LDA    $0A62
E425: E6 80          LDB    ,X+
E427: ED 63          STD    $3,S
E429: E6 80          LDB    ,X+
E42B: ED 65          STD    $5,S
E42D: B6 0A 5F       LDA    $0A5F
E430: E6 80          LDB    ,X+
E432: ED 67          STD    $7,S
E434: E6 80          LDB    ,X+
E436: ED 69          STD    $9,S
E438: A6 E4          LDA    ,S
E43A: F6 0A 62       LDB    $0A62
E43D: BD E7 9A       JSR    $E79A
E440: B6 0A 62       LDA    $0A62
E443: E6 80          LDB    ,X+
E445: ED 6B          STD    $B,S
E447: E6 80          LDB    ,X+
E449: ED 6D          STD    $D,S
E44B: A6 E4          LDA    ,S
E44D: E6 80          LDB    ,X+
E44F: ED 6F          STD    $F,S
E451: E6 80          LDB    ,X+
E453: ED E8 11       STD    $11,S
E456: 7D 0A 42       TST    $0A42
E459: 2B 2A          BMI    $E485
E45B: B6 0A 5F       LDA    $0A5F
E45E: A1 E4          CMPA   ,S
E460: 26 09          BNE    $E46B
E462: EC 69          LDD    $9,S
E464: 10 A3 E4       CMPD   ,S
E467: 25 61          BCS    $E4CA
E469: 20 45          BRA    $E4B0
E46B: EC E4          LDD    ,S
E46D: 10 A3 6F       CMPD   $F,S
E470: 22 0F          BHI    $E481
E472: FC 0A 62       LDD    $0A62
E475: 10 A3 6B       CMPD   $B,S
E478: 22 07          BHI    $E481
E47A: 10 A3 6D       CMPD   $D,S
E47D: 25 02          BCS    $E481
E47F: 20 2F          BRA    $E4B0
E481: EC 69          LDD    $9,S
E483: 20 45          BRA    $E4CA
E485: B6 0A 5F       LDA    $0A5F
E488: A1 E4          CMPA   ,S
E48A: 26 09          BNE    $E495
E48C: EC 67          LDD    $7,S
E48E: 10 A3 E4       CMPD   ,S
E491: 22 37          BHI    $E4CA
E493: 20 1B          BRA    $E4B0
E495: EC E4          LDD    ,S
E497: 10 A3 E8 11    CMPD   $11,S
E49B: 22 0F          BHI    $E4AC
E49D: FC 0A 62       LDD    $0A62
E4A0: 10 A3 6B       CMPD   $B,S
E4A3: 22 07          BHI    $E4AC
E4A5: 10 A3 6D       CMPD   $D,S
E4A8: 25 02          BCS    $E4AC
E4AA: 20 04          BRA    $E4B0
E4AC: EC 67          LDD    $7,S
E4AE: 20 1A          BRA    $E4CA
E4B0: EC E4          LDD    ,S
E4B2: FD 0A 46       STD    $0A46
E4B5: A6 62          LDA    $2,S
E4B7: B7 0A 48       STA    $0A48
E4BA: 20 16          BRA    $E4D2
E4BC: FC 0A 5F       LDD    $0A5F
E4BF: FD 0A 46       STD    $0A46
E4C2: B6 0A 61       LDA    $0A61
E4C5: B7 0A 48       STA    $0A48
E4C8: 20 08          BRA    $E4D2
E4CA: FD 0A 46       STD    $0A46
E4CD: 7F 0A 48       CLR    $0A48
E4D0: 20 00          BRA    $E4D2
E4D2: 32 E8 13       LEAS   $13,S
E4D5: 39             RTS
E4D6: 32 E8 ED       LEAS   -$13,S		; allocate auto variable zone
E4D9: FC 0A 44       LDD    $0A44
E4DC: 10 27 00 C3    LBEQ   $E5A3
E4E0: FC 0A 44       LDD    $0A44
E4E3: F3 0A 63       ADDD   $0A63
E4E6: ED 61          STD    $1,S
E4E8: F6 0A 44       LDB    $0A44
E4EB: 1D             SEX
E4EC: 89 00          ADCA   #$00
E4EE: BB 0A 62       ADDA   $0A62
E4F1: A7 E4          STA    ,S
E4F3: 2A 0A          BPL    $E4FF
E4F5: CC 00 00       LDD    #$0000
E4F8: ED E4          STD    ,S
E4FA: E7 62          STB    $2,S
E4FC: 16 00 98       LBRA   $E597
E4FF: B6 0A 5F       LDA    $0A5F
E502: F6 0A 62       LDB    $0A62
E505: BD E7 9A       JSR    $E79A
E508: B6 0A 62       LDA    $0A62
E50B: E6 80          LDB    ,X+
E50D: ED 63          STD    $3,S
E50F: E6 80          LDB    ,X+
E511: ED 65          STD    $5,S
E513: B6 0A 5F       LDA    $0A5F
E516: E6 80          LDB    ,X+
E518: ED 67          STD    $7,S
E51A: E6 80          LDB    ,X+
E51C: ED 69          STD    $9,S
E51E: B6 0A 5F       LDA    $0A5F
E521: E6 E4          LDB    ,S
E523: BD E7 9A       JSR    $E79A
E526: A6 E4          LDA    ,S
E528: E6 80          LDB    ,X+
E52A: ED 6B          STD    $B,S
E52C: E6 80          LDB    ,X+
E52E: ED 6D          STD    $D,S
E530: B6 0A 5F       LDA    $0A5F
E533: E6 80          LDB    ,X+
E535: ED 6F          STD    $F,S
E537: E6 80          LDB    ,X+
E539: ED E8 11       STD    $11,S
E53C: 7D 0A 44       TST    $0A44
E53F: 2B 2B          BMI    $E56C
E541: B6 0A 62       LDA    $0A62
E544: A1 E4          CMPA   ,S
E546: 26 09          BNE    $E551
E548: EC 63          LDD    $3,S
E54A: 10 A3 E4       CMPD   ,S
E54D: 25 62          BCS    $E5B1
E54F: 20 46          BRA    $E597
E551: EC E4          LDD    ,S
E553: 10 A3 6D       CMPD   $D,S
E556: 22 10          BHI    $E568
E558: FC 0A 5F       LDD    $0A5F
E55B: 10 A3 E8 11    CMPD   $11,S
E55F: 22 07          BHI    $E568
E561: 10 A3 6F       CMPD   $F,S
E564: 25 02          BCS    $E568
E566: 20 2F          BRA    $E597
E568: EC 63          LDD    $3,S
E56A: 20 45          BRA    $E5B1
E56C: B6 0A 62       LDA    $0A62
E56F: A1 E4          CMPA   ,S
E571: 26 09          BNE    $E57C
E573: EC 65          LDD    $5,S
E575: 10 A3 E4       CMPD   ,S
E578: 22 37          BHI    $E5B1
E57A: 20 1B          BRA    $E597
E57C: EC E4          LDD    ,S
E57E: 10 A3 6B       CMPD   $B,S
E581: 22 10          BHI    $E593
E583: FC 0A 5F       LDD    $0A5F
E586: 10 A3 E8 11    CMPD   $11,S
E58A: 22 07          BHI    $E593
E58C: 10 A3 6F       CMPD   $F,S
E58F: 25 02          BCS    $E593
E591: 20 04          BRA    $E597
E593: EC 65          LDD    $5,S
E595: 20 1A          BRA    $E5B1
E597: EC E4          LDD    ,S
E599: FD 0A 49       STD    $0A49
E59C: A6 62          LDA    $2,S
E59E: B7 0A 4B       STA    $0A4B
E5A1: 20 16          BRA    $E5B9
E5A3: FC 0A 62       LDD    $0A62
E5A6: FD 0A 49       STD    $0A49
E5A9: B6 0A 64       LDA    $0A64
E5AC: B7 0A 4B       STA    $0A4B
E5AF: 20 08          BRA    $E5B9
E5B1: FD 0A 49       STD    $0A49
E5B4: 7F 0A 4B       CLR    $0A4B
E5B7: 20 00          BRA    $E5B9
E5B9: 32 E8 13       LEAS   $13,S		; free auto variables
E5BC: 39             RTS
E5BD: 96 3A          LDA    bank_switch_copy_3a
E5BF: 34 02          PSHS   A
E5C1: 32 E8 EE       LEAS   -$12,S
E5C4: FC 0A 46       LDD    $0A46
E5C7: C4 F0          ANDB   #$F0
E5C9: 34 06          PSHS   D		; [manual_stack_push]
E5CB: FC 0A 5F       LDD    $0A5F
E5CE: C4 F0          ANDB   #$F0
E5D0: 10 A3 E1       CMPD   ,S++
E5D3: 10 27 00 CA    LBEQ   $E6A1
E5D7: FC 0A 5F       LDD    $0A5F
E5DA: 10 B3 0A 46    CMPD   $0A46
E5DE: 23 10          BLS    $E5F0
E5E0: FC 0A 46       LDD    $0A46
E5E3: C4 F0          ANDB   #$F0
E5E5: ED E4          STD    ,S
E5E7: FC 0A 5F       LDD    $0A5F
E5EA: C4 F0          ANDB   #$F0
E5EC: ED 62          STD    $2,S
E5EE: 20 17          BRA    $E607
E5F0: FC 0A 65       LDD    $0A65
E5F3: C4 F0          ANDB   #$F0
E5F5: ED E4          STD    ,S
E5F7: FC 0A 65       LDD    $0A65
E5FA: F3 0A 46       ADDD   $0A46
E5FD: B3 0A 5F       SUBD   $0A5F
E600: C3 00 0F       ADDD   #$000F
E603: C4 F0          ANDB   #$F0
E605: ED 62          STD    $2,S
E607: FC 0A 62       LDD    $0A62
E60A: C4 F0          ANDB   #$F0
E60C: ED 64          STD    $4,S
E60E: FC 0A 68       LDD    $0A68
E611: C4 F0          ANDB   #$F0
E613: ED 66          STD    $6,S
E615: EC E4          LDD    ,S
E617: ED 68          STD    $8,S
E619: EC 64          LDD    $4,S
E61B: ED 6A          STD    $A,S
E61D: AE 68          LDX    $8,S
E61F: 10 AE 6A       LDY    $A,S
E622: BD E8 28       JSR    $E828
E625: ED 6C          STD    $C,S
E627: BD E7 AB       JSR    $E7AB
E62A: AF 6E          STX    $E,S
E62C: A7 E8 10       STA    $10,S
E62F: A6 E8 10       LDA    $10,S
E632: BD E8 FB       JSR    set_bank_e8fb
E635: AE 6E          LDX    $E,S
E637: EC 84          LDD    ,X		; [bank_address]
E639: AE 6C          LDX    $C,S
E63B: BD E9 72       JSR    $E972
E63E: ED 84          STD    ,X		; [video_address_word]
E640: EC 6A          LDD    $A,S
E642: C3 00 10       ADDD   #$0010
E645: ED 6A          STD    $A,S
E647: EC 6A          LDD    $A,S
E649: 10 A3 66       CMPD   $6,S
E64C: 27 1F          BEQ    $E66D
E64E: E6 6B          LDB    $B,S
E650: 5D             TSTB
E651: 27 CA          BEQ    $E61D
E653: EC 6E          LDD    $E,S
E655: 83 00 20       SUBD   #$0020
E658: ED 6E          STD    $E,S
E65A: E6 6D          LDB    $D,S
E65C: C0 20          SUBB   #$20
E65E: E7 6D          STB    $D,S
E660: 24 CD          BCC    $E62F
E662: A6 6C          LDA    $C,S
E664: 4A             DECA
E665: 84 F7          ANDA   #$F7
E667: 8A 10          ORA    #$10
E669: A7 6C          STA    $C,S
E66B: 20 C2          BRA    $E62F
E66D: EC 68          LDD    $8,S
E66F: C3 00 10       ADDD   #$0010
E672: ED 68          STD    $8,S
E674: 10 A3 62       CMPD   $2,S
E677: 27 02          BEQ    $E67B
E679: 20 9E          BRA    $E619
E67B: FC 0A 5F       LDD    $0A5F
E67E: C4 F0          ANDB   #$F0
E680: 34 06          PSHS   D		; [manual_stack_push]
E682: FC 0A 46       LDD    $0A46
E685: C4 F0          ANDB   #$F0
E687: F3 0A 65       ADDD   $0A65
E68A: A3 E1          SUBD   ,S++
E68C: FD 0A 65       STD    $0A65
E68F: B6 0A 48       LDA    $0A48
E692: B7 0A 67       STA    $0A67
E695: FC 0A 46       LDD    $0A46
E698: FD 0A 5F       STD    $0A5F
E69B: B6 0A 48       LDA    $0A48
E69E: B7 0A 61       STA    $0A61
E6A1: 32 E8 12       LEAS   $12,S
E6A4: 35 02          PULS   A
E6A6: BD E8 FB       JSR    set_bank_e8fb
E6A9: 39             RTS
E6AA: 96 3A          LDA    bank_switch_copy_3a
E6AC: 34 02          PSHS   A
E6AE: 32 E8 EE       LEAS   -$12,S
E6B1: FC 0A 49       LDD    $0A49
E6B4: C4 F0          ANDB   #$F0
E6B6: 34 06          PSHS   D		; [manual_stack_push]
E6B8: FC 0A 62       LDD    $0A62
E6BB: C4 F0          ANDB   #$F0
E6BD: 10 A3 E1       CMPD   ,S++
E6C0: 10 27 00 CD    LBEQ   $E791
E6C4: FC 0A 62       LDD    $0A62
E6C7: 10 B3 0A 49    CMPD   $0A49
E6CB: 23 10          BLS    $E6DD
E6CD: FC 0A 49       LDD    $0A49
E6D0: C4 F0          ANDB   #$F0
E6D2: ED 64          STD    $4,S
E6D4: FC 0A 62       LDD    $0A62
E6D7: C4 F0          ANDB   #$F0
E6D9: ED 66          STD    $6,S
E6DB: 20 17          BRA    $E6F4
E6DD: FC 0A 68       LDD    $0A68
E6E0: C4 F0          ANDB   #$F0
E6E2: ED 64          STD    $4,S
E6E4: FC 0A 68       LDD    $0A68
E6E7: F3 0A 49       ADDD   $0A49
E6EA: B3 0A 62       SUBD   $0A62
E6ED: C3 00 0F       ADDD   #$000F
E6F0: C4 F0          ANDB   #$F0
E6F2: ED 66          STD    $6,S
E6F4: FC 0A 5F       LDD    $0A5F
E6F7: C4 F0          ANDB   #$F0
E6F9: ED E4          STD    ,S
E6FB: FC 0A 65       LDD    $0A65
E6FE: C4 F0          ANDB   #$F0
E700: ED 62          STD    $2,S
E702: EC 64          LDD    $4,S
E704: ED 6A          STD    $A,S
E706: EC E4          LDD    ,S
E708: ED 68          STD    $8,S
E70A: AE 68          LDX    $8,S
E70C: 10 AE 6A       LDY    $A,S
E70F: BD E8 28       JSR    $E828
E712: ED 6C          STD    $C,S
E714: BD E7 AB       JSR    $E7AB
E717: AF 6E          STX    $E,S
E719: A7 E8 10       STA    $10,S
E71C: A6 E8 10       LDA    $10,S
E71F: BD E8 FB       JSR    set_bank_e8fb
E722: AE 6E          LDX    $E,S
E724: EC 84          LDD    ,X
E726: AE 6C          LDX    $C,S
E728: BD E9 72       JSR    $E972
E72B: ED 84          STD    ,X
E72D: EC 68          LDD    $8,S
E72F: C3 00 10       ADDD   #$0010
E732: ED 68          STD    $8,S
E734: EC 68          LDD    $8,S
E736: 10 A3 62       CMPD   $2,S
E739: 27 22          BEQ    $E75D
E73B: E6 69          LDB    $9,S
E73D: 5D             TSTB
E73E: 27 CA          BEQ    $E70A
E740: EC 6E          LDD    $E,S
E742: C3 00 02       ADDD   #$0002
E745: ED 6E          STD    $E,S
E747: E6 6D          LDB    $D,S
E749: 1F 98          TFR    B,A
E74B: CB 02          ADDB   #$02
E74D: E7 6D          STB    $D,S
E74F: 84 1F          ANDA   #$1F
E751: 81 1E          CMPA   #$1E
E753: 26 C7          BNE    $E71C
E755: A6 6C          LDA    $C,S
E757: 88 02          EORA   #$02
E759: A7 6C          STA    $C,S
E75B: 20 BF          BRA    $E71C
E75D: EC 6A          LDD    $A,S
E75F: C3 00 10       ADDD   #$0010
E762: ED 6A          STD    $A,S
E764: 10 A3 66       CMPD   $6,S
E767: 27 02          BEQ    $E76B
E769: 20 9B          BRA    $E706
E76B: FC 0A 62       LDD    $0A62
E76E: C4 F0          ANDB   #$F0
E770: 34 06          PSHS   D		; [manual_stack_push]
E772: FC 0A 49       LDD    $0A49
E775: C4 F0          ANDB   #$F0
E777: F3 0A 68       ADDD   $0A68
E77A: A3 E1          SUBD   ,S++
E77C: FD 0A 68       STD    $0A68
E77F: B6 0A 4B       LDA    $0A4B
E782: B7 0A 6A       STA    $0A6A
E785: FC 0A 49       LDD    $0A49
E788: FD 0A 62       STD    $0A62
E78B: B6 0A 4B       LDA    $0A4B
E78E: B7 0A 64       STA    $0A64
E791: 32 E8 12       LEAS   $12,S
E794: 35 02          PULS   A
E796: BD E8 FB       JSR    set_bank_e8fb
E799: 39             RTS
E79A: BD E8 72       JSR    $E872
E79D: 8E EA FA       LDX    #$EAFA
E7A0: 48             ASLA
E7A1: AE 86          LDX    A,X
E7A3: 86 05          LDA    #$05
E7A5: 3D             MUL
E7A6: 30 8B          LEAX   D,X
E7A8: A6 80          LDA    ,X+
E7AA: 39             RTS
E7AB: 32 7C          LEAS   -$4,S
E7AD: AF E4          STX    ,S
E7AF: 10 AF 62       STY    $2,S
E7B2: A6 E4          LDA    ,S
E7B4: E6 62          LDB    $2,S
E7B6: BD E8 72       JSR    $E872
E7B9: BD E8 98       JSR    $E898
E7BC: AE E4          LDX    ,S
E7BE: 10 AE 62       LDY    $2,S
E7C1: BD E7 C7       JSR    $E7C7
E7C4: 32 64          LEAS   $4,S
E7C6: 39             RTS
E7C7: 32 79          LEAS   -$7,S
E7C9: AF E4          STX    ,S
E7CB: 10 AF 62       STY    $2,S
E7CE: BD E8 A4       JSR    $E8A4
E7D1: 10 AF 64       STY    $4,S
E7D4: A7 66          STA    $6,S
E7D6: A6 61          LDA    $1,S
E7D8: 44             LSRA
E7D9: 44             LSRA
E7DA: 44             LSRA
E7DB: 44             LSRA
E7DC: E6 63          LDB    $3,S
E7DE: 53             COMB
E7DF: C4 F0          ANDB   #$F0
E7E1: 34 02          PSHS   A		; [manual_stack_push]
E7E3: EB E0          ADDB   ,S+
E7E5: 4F             CLRA
E7E6: 58             ASLB
E7E7: 49             ROLA
E7E8: E3 64          ADDD   $4,S
E7EA: 1F 01          TFR    D,X
E7EC: A6 66          LDA    $6,S
E7EE: 32 67          LEAS   $7,S
E7F0: 39             RTS
E7F1: 34 36          PSHS   Y,X,D
E7F3: 1F 01          TFR    D,X
E7F5: 96 3A          LDA    bank_switch_copy_3a
E7F7: 34 02          PSHS   A
E7F9: 1F 10          TFR    X,D
E7FB: 32 7D          LEAS   -$3,S
E7FD: A7 E4          STA    ,S
E7FF: E7 61          STB    $1,S
E801: BD E8 A4       JSR    $E8A4
E804: BD E8 FB       JSR    set_bank_e8fb
E807: A6 E4          LDA    ,S
E809: 48             ASLA
E80A: 5F             CLRB
E80B: C3 30 00       ADDD   #$3000
E80E: 1F 01          TFR    D,X
E810: 6F 62          CLR    $2,S
E812: EC A1          LDD    ,Y++
E814: BD E9 72       JSR    $E972
E817: ED 81          STD    ,X++
E819: 6C 62          INC    $2,S
E81B: 26 F5          BNE    $E812
E81D: 32 63          LEAS   $3,S
E81F: 35 02          PULS   A
E821: 97 3A          STA    bank_switch_copy_3a
E823: BD E8 FB       JSR    set_bank_e8fb
E826: 35 B6          PULS   D,X,Y,PC
E828: 34 30          PSHS   Y,X
E82A: 32 7A          LEAS   -$6,S
E82C: AF E4          STX    ,S
E82E: 10 AF 62       STY    $2,S
E831: A6 E4          LDA    ,S
E833: E6 62          LDB    $2,S
E835: BD E8 55       JSR    $E855
E838: C3 30 00       ADDD   #$3000
E83B: ED 64          STD    $4,S
E83D: 4F             CLRA
E83E: E6 61          LDB    $1,S
E840: 54             LSRB
E841: 54             LSRB
E842: 54             LSRB
E843: E3 64          ADDD   $4,S
E845: ED 64          STD    $4,S
E847: 4F             CLRA
E848: E6 63          LDB    $3,S
E84A: 53             COMB
E84B: C4 F0          ANDB   #$F0
E84D: 58             ASLB
E84E: 49             ROLA
E84F: E3 64          ADDD   $4,S
E851: 32 66          LEAS   $6,S
E853: 35 B0          PULS   X,Y,PC
E855: 34 10          PSHS   X
E857: 84 01          ANDA   #$01
E859: 48             ASLA
E85A: 34 02          PSHS   A		; [manual_stack_push]
E85C: C4 01          ANDB   #$01
E85E: EA E0          ORB    ,S+
E860: 8E E8 68       LDX    #$E868
E863: A6 85          LDA    B,X
E865: 5F             CLRB
E866: 35 90          PULS   X,PC
E868: 04 00          LSR    $00
E86A: 06 02          ROR    $02
E86C: 34 10          PSHS   X
E86E: EC 84          LDD    ,X
E870: 35 90          PULS   X,PC
E872: 34 10          PSHS   X
E874: 32 7E          LEAS   -$2,S
E876: A7 E4          STA    ,S
E878: E7 61          STB    $1,S
E87A: 8E EA 44       LDX    #$EA44
E87D: EC 81          LDD    ,X++
E87F: 5A             DECB
E880: E0 61          SUBB   $1,S
E882: 3D             MUL
E883: EB E4          ADDB   ,S
E885: 89 00          ADCA   #$00
E887: EC 8B          LDD    D,X
E889: 1F 89          TFR    A,B
E88B: 84 E0          ANDA   #$E0
E88D: 44             LSRA
E88E: 44             LSRA
E88F: 44             LSRA
E890: 44             LSRA
E891: 44             LSRA
E892: C4 1F          ANDB   #$1F
E894: 32 62          LEAS   $2,S
E896: 35 90          PULS   X,PC
E898: 34 10          PSHS   X
E89A: 8E EC 24       LDX    #$EC24
E89D: 48             ASLA
E89E: AE 86          LDX    A,X
E8A0: E6 85          LDB    B,X
E8A2: 35 90          PULS   X,PC
E8A4: 34 10          PSHS   X
E8A6: 8E EC 66       LDX    #$EC66
E8A9: 4F             CLRA
E8AA: 58             ASLB
E8AB: 49             ROLA
E8AC: EC 8B          LDD    D,X
E8AE: 34 02          PSHS   A
E8B0: 1F 98          TFR    B,A
E8B2: 48             ASLA
E8B3: 5F             CLRB
E8B4: C3 40 00       ADDD   #bank_address_4000
E8B7: 1F 02          TFR    D,Y
E8B9: 35 02          PULS   A
E8BB: 35 90          PULS   X,PC
E8BD: 34 30          PSHS   Y,X
E8BF: BD E8 C8       JSR    $E8C8
E8C2: 1F 01          TFR    D,X
E8C4: EC 84          LDD    ,X
E8C6: 35 B0          PULS   X,Y,PC

E8C8: 34 30          PSHS   Y,X
E8CA: 96 3A          LDA    bank_switch_copy_3a
E8CC: 34 02          PSHS   A
E8CE: 32 7A          LEAS   -$6,S
E8D0: AF E4          STX    ,S
E8D2: 10 AF 62       STY    $2,S
E8D5: BD E8 A4       JSR    $E8A4
E8D8: 10 AF 64       STY    $4,S
E8DB: BD E8 FB       JSR    set_bank_e8fb
E8DE: A6 61          LDA    $1,S
E8E0: 44             LSRA
E8E1: 44             LSRA
E8E2: 44             LSRA
E8E3: 44             LSRA
E8E4: 34 02          PSHS   A			; [manual_stack_push]
E8E6: E6 63          LDB    $3,S
E8E8: 53             COMB
E8E9: C4 F0          ANDB   #$F0
E8EB: EB E0          ADDB   ,S+
E8ED: 86 10          LDA    #$10
E8EF: 3D             MUL
E8F0: E3 64          ADDD   $4,S
E8F2: 32 66          LEAS   $6,S
E8F4: 35 02          PULS   A
E8F6: BD E8 FB       JSR    set_bank_e8fb
E8F9: 35 B0          PULS   X,Y,PC

set_bank_e8fb:
E8FB: 84 E0          ANDA   #$E0
E8FD: 34 02          PSHS   A			; [manual_stack_push]
E8FF: 96 3A          LDA    bank_switch_copy_3a
E901: 84 1F          ANDA   #$1F
E903: AA E0          ORA    ,S+		; change bank, not the rest
E905: 97 3A          STA    bank_switch_copy_3a
E907: B7 38 08       STA    bankswitch_3808
E90A: 39             RTS

update_scrolling_e90b:
E90B: B6 0E 71       LDA    nmi_active_flag_0e71
E90E: 85 40          BITA   #$40
E910: 27 0B          BEQ    $E91D
E912: BD E9 1E       JSR    update_scrolling_registers_e91e
E915: B6 0E 71       LDA    nmi_active_flag_0e71
E918: 84 BF          ANDA   #$BF
E91A: B7 0E 71       STA    nmi_active_flag_0e71
E91D: 39             RTS

update_scrolling_registers_e91e:
E91E: FC 0A 5F       LDD    $0A5F
E921: F7 38 09       STB    scroll_x_lo_3809
E924: 84 01          ANDA   #$01
E926: 34 02          PSHS   A	; [manual_stack_push]
E928: CC 01 00       LDD    #$0100
E92B: B3 0A 62       SUBD   $0A62
E92E: 84 01          ANDA   #$01
E930: F7 38 0A       STB    scroll_y_lo_380a
E933: 84 01          ANDA   #$01
E935: 48             ASLA
E936: AA E0          ORA    ,S+
E938: 34 02          PSHS   A		; [manual_stack_push]
E93A: 96 3A          LDA    bank_switch_copy_3a
E93C: 84 FC          ANDA   #$FC
E93E: AA E0          ORA    ,S+
E940: 97 3A          STA    bank_switch_copy_3a
E942: B7 38 08       STA    bankswitch_3808
E945: 39             RTS

E946: B6 0E 71       LDA    nmi_active_flag_0e71
E949: 8A 40          ORA    #$40
E94B: B7 0E 71       STA    nmi_active_flag_0e71
E94E: 39             RTS
E94F: 43             COMA
E950: 53             COMB
E951: C3 00 01       ADDD   #$0001
E954: 39             RTS

E955: 34 02          PSHS   A
E957: E3 21          ADDD   $1,Y
E959: ED 21          STD    $1,Y
E95B: 35 04          PULS   B
E95D: 1D             SEX
E95E: 89 00          ADCA   #$00
E960: AB A4          ADDA   ,Y
E962: A7 A4          STA    ,Y
E964: 39             RTS
E965: 34 76          PSHS   U,Y,X,D
E967: 35 F6          PULS   D,X,Y,U,PC
E969: 58             ASLB
E96A: 49             ROLA
E96B: 58             ASLB
E96C: 49             ROLA
E96D: 58             ASLB
E96E: 49             ROLA
E96F: 58             ASLB
E970: 49             ROLA
E971: 39             RTS
E972: 34 04          PSHS   B
E974: 1F 89          TFR    A,B
E976: C4 07          ANDB   #$07
E978: 34 04          PSHS   B		; [manual_stack_push]
E97A: 84 F0          ANDA   #$F0
E97C: 44             LSRA
E97D: AA E0          ORA    ,S+
E97F: 35 04          PULS   B
E981: 39             RTS

E982: 32 7F          LEAS   -$1,S
E984: 6F E4          CLR    ,S
E986: E6 E4          LDB    ,S
E988: 58             ASLB
E989: 58             ASLB
E98A: 8E EA 14       LDX    #$EA14
E98D: 30 85          LEAX   B,X
E98F: FC 0A 5F       LDD    $0A5F
E992: 10 A3 89 00 00 CMPD   $0000,X
E997: 25 04          BCS    $E99D
E999: 6C E4          INC    ,S
E99B: 20 E9          BRA    $E986
E99D: E6 E4          LDB    ,S
E99F: 5A             DECB
E9A0: F7 0A 5B       STB    $0A5B
E9A3: E1 89 00 03    CMPB   $0003,X
E9A7: 27 22          BEQ    $E9CB
E9A9: 58             ASLB
E9AA: 58             ASLB
E9AB: 8E EA 14       LDX    #$EA14
E9AE: 30 85          LEAX   B,X
E9B0: E6 89 00 03    LDB    $0003,X
E9B4: F1 0A 5E       CMPB   $0A5E
E9B7: 27 12          BEQ    $E9CB
E9B9: F7 0A 5D       STB    $0A5D
E9BC: BD E9 CE       JSR    $E9CE
E9BF: B6 0A 5D       LDA    $0A5D
E9C2: B7 0A 5E       STA    $0A5E
E9C5: F6 0A 5B       LDB    $0A5B
E9C8: F7 0A 5C       STB    $0A5C
E9CB: 32 61          LEAS   $1,S
E9CD: 39             RTS
E9CE: 32 7F          LEAS   -$1,S
E9D0: 86 81          LDA    #$81
E9D2: 97 02          STA    $02
E9D4: 8E F2 15       LDX    #$F215
E9D7: 4F             CLRA
E9D8: F6 0A 5D       LDB    $0A5D
E9DB: 58             ASLB
E9DC: 49             ROLA
E9DD: 58             ASLB
E9DE: 49             ROLA
E9DF: 58             ASLB
E9E0: 49             ROLA
E9E1: 58             ASLB
E9E2: 49             ROLA
E9E3: 30 8B          LEAX   D,X
E9E5: 10 8E F2 15    LDY    #$F215
E9E9: 4F             CLRA
E9EA: F6 0A 5E       LDB    $0A5E
E9ED: 58             ASLB
E9EE: 49             ROLA
E9EF: 58             ASLB
E9F0: 49             ROLA
E9F1: 58             ASLB
E9F2: 49             ROLA
E9F3: 58             ASLB
E9F4: 49             ROLA
E9F5: 31 AB          LEAY   D,Y
E9F7: 6F E4          CLR    ,S
E9F9: EC 81          LDD    ,X++
E9FB: 10 A3 A1       CMPD   ,Y++
E9FE: 27 09          BEQ    $EA09
EA00: DD 00          STD    $00
EA02: A6 E4          LDA    ,S
EA04: 97 03          STA    $03
EA06: BD FE 89       JSR    $FE89
EA09: 6C E4          INC    ,S
EA0B: E6 E4          LDB    ,S
EA0D: C1 08          CMPB   #$08
EA0F: 26 E8          BNE    $E9F9
EA11: 32 61          LEAS   $1,S
EA13: 39             RTS


ECE6: 7D 0A CD       TST    $0ACD
ECE9: 2B 03          BMI    $ECEE
ECEB: BD EC F2       JSR    $ECF2
ECEE: BD ED 28       JSR    $ED28
ECF1: 39             RTS

ECF2: 7D 0A CD       TST    $0ACD
ECF5: 2B 30          BMI    $ED27
ECF7: 10 8E ED AC    LDY    #$EDAC
ECFB: 8E 0A CE       LDX    #$0ACE
ECFE: 0F 00          CLR    $00
ED00: EC A4          LDD    ,Y
ED02: 10 83 FF FF    CMPD   #$FFFF
ED06: 27 15          BEQ    $ED1D
ED08: 86 80          LDA    #$80
ED0A: A7 84          STA    ,X
ED0C: 6F 02          CLR    $2,X
ED0E: 6F 01          CLR    $1,X
ED10: 10 AF 03       STY    $3,X
ED13: 0C 00          INC    $00
ED15: 31 A9 00 0A    LEAY   $000A,Y
ED19: 30 05          LEAX   $5,X
ED1B: 20 E3          BRA    $ED00
ED1D: 96 00          LDA    $00
ED1F: B7 0B 1A       STA    $0B1A
ED22: 86 80          LDA    #$80
ED24: B7 0A CD       STA    $0ACD
ED27: 39             RTS
ED28: 7D 0B 1A       TST    $0B1A
ED2B: 27 22          BEQ    $ED4F
ED2D: 0F 0F          CLR    $0F
ED2F: 8E 0A CE       LDX    #$0ACE
ED32: A6 84          LDA    ,X
ED34: 2A 0E          BPL    $ED44
ED36: BD ED 50       JSR    $ED50
ED39: A6 84          LDA    ,X
ED3B: 88 60          EORA   #$60
ED3D: 84 60          ANDA   #$60
ED3F: 26 03          BNE    $ED44
ED41: BD ED 77       JSR    $ED77
ED44: 30 05          LEAX   $5,X
ED46: 0C 0F          INC    $0F
ED48: 96 0F          LDA    $0F
ED4A: B1 0B 1A       CMPA   $0B1A
ED4D: 26 E3          BNE    $ED32
ED4F: 39             RTS
ED50: 34 10          PSHS   X
ED52: A6 84          LDA    ,X
ED54: 84 9F          ANDA   #$9F
ED56: A7 84          STA    ,X
ED58: 10 AE 03       LDY    $3,X
ED5B: DC 3C          LDD    $3C
ED5D: 10 A3 A4       CMPD   ,Y
ED60: 25 08          BCS    $ED6A
ED62: A6 84          LDA    ,X
ED64: 8A 40          ORA    #$40
ED66: A7 84          STA    ,X
ED68: DC 3C          LDD    $3C
ED6A: 10 A3 22       CMPD   $2,Y
ED6D: 24 06          BCC    $ED75
ED6F: A6 84          LDA    ,X
ED71: 8A 20          ORA    #$20
ED73: A7 84          STA    ,X
ED75: 35 90          PULS   X,PC
ED77: 34 10          PSHS   X
ED79: 10 AE 03       LDY    $3,X
ED7C: 6C 02          INC    $2,X
ED7E: A6 02          LDA    $2,X
ED80: A1 24          CMPA   $4,Y
ED82: 25 26          BCS    $EDAA
ED84: 6F 02          CLR    $2,X
ED86: 6C 01          INC    $1,X
ED88: A6 01          LDA    $1,X
ED8A: A1 25          CMPA   $5,Y
ED8C: 25 02          BCS    $ED90
ED8E: 6F 01          CLR    $1,X
ED90: 86 01          LDA    #$01
ED92: 97 02          STA    $02
ED94: A6 26          LDA    $6,Y
ED96: 97 03          STA    $03
ED98: A6 27          LDA    $7,Y
ED9A: 97 04          STA    $04
ED9C: 10 AE 28       LDY    $8,Y
ED9F: A6 01          LDA    $1,X
EDA1: 48             ASLA
EDA2: 31 A6          LEAY   A,Y
EDA4: 10 9F 00       STY    $00
EDA7: BD FE 89       JSR    $FE89
EDAA: 35 90          PULS   X,PC

EDDE: 32 7F          LEAS   -$1,S
EDE0: FC 0B 04       LDD    $0B04
EDE3: 10 83 02 04    CMPD   #$0204
EDE7: 26 24          BNE    $EE0D
EDE9: B6 0B 20       LDA    $0B20
EDEC: 2B 1F          BMI    $EE0D
EDEE: 8E EE 10       LDX    #$EE10
EDF1: 10 8E 10 B0    LDY    #$10B0
EDF5: C6 10          LDB    #$10
EDF7: E7 E4          STB    ,S
EDF9: EC 81          LDD    ,X++
EDFB: E7 A9 02 00    STB    $0200,Y
EDFF: A7 A0          STA    ,Y+
EE01: 6A E4          DEC    ,S
EE03: 26 F4          BNE    $EDF9
EE05: B6 0B 20       LDA    $0B20
EE08: 8A 80          ORA    #$80
EE0A: B7 0B 20       STA    $0B20
EE0D: 32 61          LEAS   $1,S
EE0F: 39             RTS

set_palettes_ee30:
EE30: 00 0F          CLR    $4B
EE32: 0F 4D          CLR    $4D
EE34: 0F 4F          CLR    $4F
EE36: 86 FF          LDA    #$FF
EE38: 97 4C          STA    $4C
EE3A: 97 4E          STA    $4E
EE3C: 97 50          STA    $50
set_palettes_ee3e:
EE3E: 34 40          PSHS   U
EE40: 32 7F          LEAS   -$1,S
EE42: 96 4B          LDA    $4B
EE44: 91 4C          CMPA   $4C
EE46: 27 1C          BEQ    $EE64
EE48: 97 4C          STA    $4C
EE4A: C6 10          LDB    #$10
EE4C: 3D             MUL
EE4D: A7 E4          STA    ,S
EE4F: 10 8E 10 80    LDY    #sprites_palette_1080
EE53: 8E EE D5       LDX    #$EED5
EE56: A6 E4          LDA    ,S
EE58: EE 8B          LDU    D,X
EE5A: 8D 50          BSR    $EEAC
EE5C: 5C             INCB
EE5D: 5C             INCB
EE5E: 1F 98          TFR    B,A
EE60: 84 0F          ANDA   #$0F
EE62: 26 F2          BNE    $EE56
EE64: 96 4D          LDA    $4D
EE66: 91 4E          CMPA   $4E
EE68: 27 1C          BEQ    $EE86
EE6A: 97 4E          STA    $4E
EE6C: C6 10          LDB    #$10
EE6E: 3D             MUL
EE6F: A7 E4          STA    ,S
EE71: 8E F7 E5       LDX    #$F7E5
EE74: 10 8E 10 00    LDY    #fg_tiles_palette_1000
EE78: A6 E4          LDA    ,S
EE7A: EE 8B          LDU    D,X
EE7C: 8D 2E          BSR    $EEAC
EE7E: 5C             INCB
EE7F: 5C             INCB
EE80: 1F 98          TFR    B,A
EE82: 84 0F          ANDA   #$0F
EE84: 26 F2          BNE    $EE78
EE86: 96 4F          LDA    $4F
EE88: 91 50          CMPA   $50
EE8A: 27 1C          BEQ    $EEA8
EE8C: 97 50          STA    $50
EE8E: C6 10          LDB    #$10
EE90: 3D             MUL
EE91: A7 E4          STA    ,S
EE93: 10 8E 11 00    LDY    #bg_tiles_palette_1100
EE97: 8E F2 15       LDX    #$F215
EE9A: A6 E4          LDA    ,S
EE9C: EE 8B          LDU    D,X
EE9E: 8D 0C          BSR    $EEAC
EEA0: 5C             INCB
EEA1: 5C             INCB
EEA2: 1F 98          TFR    B,A
EEA4: 84 0F          ANDA   #$0F
EEA6: 26 F2          BNE    $EE9A
EEA8: 32 61          LEAS   $1,S
EEAA: 35 C0          PULS   U,PC
EEAC: 34 14          PSHS   X,B
EEAE: 32 7D          LEAS   -$3,S
; vblank wait
EEB0: B6 38 02       LDA    extra_3802
EEB3: 84 08          ANDA   #$08
EEB5: 27 F9          BEQ    $EEB0
; 
EEB7: 86 10          LDA    #$10
EEB9: A7 62          STA    $2,S
EEBB: EC C4          LDD    ,U
EEBD: E7 A9 02 00    STB    $0200,Y
EEC1: 58             ASLB
EEC2: 49             ROLA
EEC3: 58             ASLB
EEC4: 49             ROLA
EEC5: 58             ASLB
EEC6: 49             ROLA
EEC7: 58             ASLB
EEC8: 49             ROLA
EEC9: A7 A0          STA    ,Y+
EECB: 33 42          LEAU   $2,U
EECD: 6A 62          DEC    $2,S
EECF: 26 EA          BNE    $EEBB
EED1: 32 63          LEAS   $3,S
EED3: 35 94          PULS   B,X,PC

l_f900:
F900: BD FC 28       JSR    save_and_switch_to_bank_5_fc28                                      
F903: BD 40 96       JSR    $4096 ; [banks=5]
F906: BD FC 3A       JSR    switch_to_saved_bank_fc3a                                      
F909: 39             RTS                                               
l_f90a:
F90A: BD FC 28       JSR    save_and_switch_to_bank_5_fc28
F90D: BD 40 99       JSR    $4099 ; [banks=5]
F910: BD FC 3A       JSR    switch_to_saved_bank_fc3a
F913: 39             RTS
l_f914:
F914: BD FC 28       JSR    save_and_switch_to_bank_5_fc28
F917: BD 40 9C       JSR    $409C ; [banks=5]
F91A: BD FC 3A       JSR    switch_to_saved_bank_fc3a
F91D: 39             RTS
l_f91e:
F91E: BD FC 28       JSR    save_and_switch_to_bank_5_fc28
F921: BD 40 84       JSR    $4084 ; [banks=5]
F924: BD FC 3A       JSR    switch_to_saved_bank_fc3a
F927: 39             RTS
l_f928:
F928: BD FC 28       JSR    save_and_switch_to_bank_5_fc28
F92B: BD 40 87       JSR    $4087 ; [banks=5]
F92E: BD FC 3A       JSR    switch_to_saved_bank_fc3a
F931: 39             RTS
l_f932:
F932: BD FC 28       JSR    save_and_switch_to_bank_5_fc28
F935: BD 40 7B       JSR    $407B ; [banks=5]
F938: BD FC 3A       JSR    switch_to_saved_bank_fc3a
F93B: 39             RTS
l_f93c:
F93C: BD FC 28       JSR    save_and_switch_to_bank_5_fc28
F93F: BD 40 90       JSR    $4090 ; [banks=5]
F942: BD FC 3A       JSR    switch_to_saved_bank_fc3a
F945: 39             RTS
l_f946:
F946: BD FB 24       JSR    save_and_switch_to_bank_0_fb24
F949: BD 40 1B       JSR    $401B ; [banks=0]
F94C: BD FB 34       JSR    switch_to_saved_bank_fb34
F94F: 39             RTS

F950: BD FC 28       JSR    save_and_switch_to_bank_5_fc28
F953: BD 40 7E       JSR    $407E ; [banks=5]
F956: BD FC 3A       JSR    switch_to_saved_bank_fc3a
F959: 39             RTS

F960: BD FC 82       JSR    switch_to_bank_5_fc82
F963: BD 40 69       JSR    $4069 ; [banks=5]
F966: BD FC 8F       JSR    switch_to_bank_0_fc8f
F969: 39             RTS
F96A: BD FC 82       JSR    switch_to_bank_5_fc82
F96D: BD 40 6F       JSR    $406F ; [banks=5]
F970: BD FC 8F       JSR    switch_to_bank_0_fc8f
F973: 39             RTS
F974: BD FC 82       JSR    switch_to_bank_5_fc82
F977: BD 40 8A       JSR    $408A ; [banks=5]
F97A: BD FC 8F       JSR    switch_to_bank_0_fc8f
F97D: 39             RTS
F97E: BD FC 82       JSR    switch_to_bank_5_fc82
F981: BD 40 8D       JSR    $408D ; [banks=5]
F984: BD FC 8F       JSR    switch_to_bank_0_fc8f
F987: 39             RTS
F988: BD BB 40       JSR    switch_to_bank_1_bb40
F98B: BD 40 12       JSR    $4012 ; [banks=1]
F98E: BD BB 4D       JSR    switch_to_bank_0_bb4d
F991: 39             RTS
F992: BD FC 82       JSR    switch_to_bank_5_fc82
F995: BD 40 63       JSR    lb5_4063
F998: BD FC 8F       JSR    switch_to_bank_0_fc8f
F99B: 39             RTS
F99C: BD BB 40       JSR    switch_to_bank_1_bb40
F99F: BD 40 15       JSR    lb1_4015
F9A2: BD BB 4D       JSR    switch_to_bank_0_bb4d
F9A5: 39             RTS
F9A6: BD FC 82       JSR    switch_to_bank_5_fc82
F9A9: BD 40 9F       JSR    lb5_409F
F9AC: BD FC 8F       JSR    switch_to_bank_0_fc8f
F9AF: 39             RTS
F9B0: BD BB 40       JSR    switch_to_bank_1_bb40
F9B3: BD 40 18       JSR    lb1_4018
F9B6: BD BB 4D       JSR    switch_to_bank_0_bb4d
F9B9: 39             RTS
F9BA: BD BB 40       JSR    switch_to_bank_1_bb40
F9BD: BD 40 1B       JSR    lb1_401B
F9C0: BD BB 4D       JSR    switch_to_bank_0_bb4d
F9C3: 39             RTS
F9C4: BD BB 40       JSR    switch_to_bank_1_bb40
F9C7: BD 40 1E       JSR    lb1_401E
F9CA: BD BB 4D       JSR    switch_to_bank_0_bb4d
F9CD: 39             RTS
F9CE: BD BB 40       JSR    switch_to_bank_1_bb40
F9D1: BD 40 21       JSR    lb1_4021
F9D4: BD BB 4D       JSR    switch_to_bank_0_bb4d
F9D7: 39             RTS
F9D8: BD BB 40       JSR    switch_to_bank_1_bb40
F9DB: BD 40 24       JSR    lb1_4024
F9DE: BD BB 4D       JSR    switch_to_bank_0_bb4d
F9E1: 39             RTS
F9E2: BD BB 40       JSR    switch_to_bank_1_bb40
F9E5: BD 40 27       JSR    lb1_4027
F9E8: BD BB 4D       JSR    switch_to_bank_0_bb4d
F9EB: 39             RTS

l_fa00:
FA00: BD FC 28       JSR    save_and_switch_to_bank_5_fc28                                      
FA03: BD 40 57       JSR    lb5_4057
FA06: BD FC 3A       JSR    switch_to_saved_bank_fc3a
FA09: 39             RTS

FA10: BD FD A0       JSR    save_and_switch_to_bank_1_fda0
FA13: BD 40 3C       JSR    lb1_403C
FA16: BD FD B2       JSR    restore_previous_bank_fdb2
FA19: 39             RTS
FA1A: BD FD A0       JSR    save_and_switch_to_bank_1_fda0
FA1D: BD 40 54       JSR    lb1_4054
FA20: BD FD B2       JSR    restore_previous_bank_fdb2
FA23: 39             RTS
FA24: BD FD A0       JSR    save_and_switch_to_bank_1_fda0
FA27: BD 40 51       JSR    lb1_4051
FA2A: BD FD B2       JSR    restore_previous_bank_fdb2
FA2D: 39             RTS
FA2E: BD FD A0       JSR    save_and_switch_to_bank_1_fda0
FA31: BD 40 4E       JSR    lb1_404E
FA34: BD FD B2       JSR    restore_previous_bank_fdb2
FA37: 39             RTS
FA38: BD FD A0       JSR    save_and_switch_to_bank_1_fda0
FA3B: BD 40 4B       JSR    lb1_404B
FA3E: BD FD B2       JSR    restore_previous_bank_fdb2
FA41: 39             RTS
FA42: BD FD A0       JSR    save_and_switch_to_bank_1_fda0
FA45: BD 40 45       JSR    lb1_4045
FA48: BD FD B2       JSR    restore_previous_bank_fdb2
FA4B: 39             RTS
FA4C: BD FD A0       JSR    save_and_switch_to_bank_1_fda0
FA4F: BD 40 48       JSR    lb1_4048
FA52: BD FD B2       JSR    restore_previous_bank_fdb2
FA55: 39             RTS
FA56: BD FC 82       JSR    switch_to_bank_5_fc82
FA59: BD 40 1B       JSR    lb5_401B
FA5C: BD FC 8F       JSR    switch_to_bank_0_fc8f
FA5F: 39             RTS
FA60: BD FD A0       JSR    save_and_switch_to_bank_1_fda0
FA63: BD 40 3F       JSR    lb1_403F
FA66: BD FD B2       JSR    restore_previous_bank_fdb2
FA69: 39             RTS

l_fa70:
FA70: BD FC 82       JSR    switch_to_bank_5_fc82
FA73: BD 40 5A       JSR    lb5_405A
FA76: BD FC 8F       JSR    switch_to_bank_0_fc8f
FA79: 39             RTS

l_fa80:
FA80: BD FA 8A       JSR    switch_to_bank_4_fa8a
FA83: BD 78 00       JSR    lb4_7800
FA86: BD FF 9C       JSR    $FF9C
FA89: 39             RTS

switch_to_bank_4_fa8a:
FA8A: 34 02          PSHS   A
FA8C: 96 3A          LDA    bank_switch_copy_3a
FA8E: 84 1F          ANDA   #$1F
FA90: 8A 80          ORA    #$80	; bank=4
FA92: 97 3A          STA    bank_switch_copy_3a
FA94: B7 38 08       STA    bankswitch_3808
FA97: 35 82          PULS   A,PC

l_faa0:  ; [global]
FAA0: 96 3A          LDA    bank_switch_copy_3a                                         
FAA2: 84 1F          ANDA   #$1F
FAA4: 8A 20          ORA    #$20		; bank=1
FAA6: 97 3A          STA    bank_switch_copy_3a
FAA8: B7 38 08       STA    bankswitch_3808
FAAB: 17 45 EE       LBSR   lb1_409C
FAAE: 96 3A          LDA    bank_switch_copy_3a
FAB0: 84 1F          ANDA   #$1F
FAB2: 97 3A          STA    bank_switch_copy_3a
FAB4: B7 38 08       STA    bankswitch_3808
FAB7: 39             RTS
l_fab8:
FAB8: 96 3A          LDA    bank_switch_copy_3a
FABA: 84 1F          ANDA   #$1F
FABC: 8A 20          ORA    #$20			; bank=1
FABE: 97 3A          STA    bank_switch_copy_3a
FAC0: B7 38 08       STA    bankswitch_3808
FAC3: 17 45 D9       LBSR   lb1_409F
FAC6: 96 3A          LDA    bank_switch_copy_3a
FAC8: 84 1F          ANDA   #$1F
FACA: 97 3A          STA    bank_switch_copy_3a
FACC: B7 38 08       STA    bankswitch_3808
FACF: 39             RTS
FAD0: BD FD A0       JSR    save_and_switch_to_bank_1_fda0
FAD3: BD 40 42       JSR    lb1_4042
FAD6: BD FD B2       JSR    restore_previous_bank_fdb2
FAD9: 39             RTS
FADA: BD FC 82       JSR    switch_to_bank_5_fc82
FADD: BD 40 93       JSR    lb5_4093
FAE0: BD FC 8F       JSR    switch_to_bank_0_fc8f
FAE3: 39             RTS
FAE4: BD FC 82       JSR    switch_to_bank_5_fc82
FAE7: BD 40 5A       JSR    lb5_405A
FAEA: BD FC 8F       JSR    switch_to_bank_0_fc8f
FAED: 39             RTS
FAEE: BD FC 82       JSR    switch_to_bank_5_fc82
FAF1: BD 40 C3       JSR    lb5_40C3
FAF4: BD FC 8F       JSR    switch_to_bank_0_fc8f
FAF7: 39             RTS
FAF8: 7E 40 1B       JMP    $401B ; [banks=0,1,5]

FB00: 96 3A          LDA    bank_switch_copy_3a
FB02: B7 0E 45       STA    previous_bank_register_0e45
FB05: 84 1F          ANDA   #$1F
FB07: 8A 80          ORA    #$80		; bank=4
FB09: 97 3A          STA    bank_switch_copy_3a
FB0B: B7 38 08       STA    bankswitch_3808
FB0E: BD 40 00       JSR    $4000 ; [banks=4]
FB11: 96 3A          LDA    bank_switch_copy_3a
FB13: 84 1F          ANDA   #$1F
FB15: 97 3A          STA    bank_switch_copy_3a
FB17: B6 0E 45       LDA    previous_bank_register_0e45
FB1A: 84 E0          ANDA   #$E0
FB1C: 9A 3A          ORA    bank_switch_copy_3a
FB1E: 97 3A          STA    bank_switch_copy_3a
FB20: B7 38 08       STA    bankswitch_3808
FB23: 39             RTS

save_and_switch_to_bank_0_fb24:
FB24: 34 02          PSHS   A
FB26: 96 3A          LDA    bank_switch_copy_3a
FB28: B7 0E 44       STA    previous_bank_register_0e44
FB2B: 84 1F          ANDA   #$1F
FB2D: 97 3A          STA    bank_switch_copy_3a
FB2F: B7 38 08       STA    bankswitch_3808
FB32: 35 82          PULS   A,PC

switch_to_saved_bank_fb34:
FB34: 34 02          PSHS   A
FB36: B6 0E 44       LDA    previous_bank_register_0e44
FB39: 84 E0          ANDA   #$E0
FB3B: 9A 3A          ORA    bank_switch_copy_3a
FB3D: 97 3A          STA    bank_switch_copy_3a
FB3F: B7 38 08       STA    bankswitch_3808
FB42: 35 82          PULS   A,PC

l_fb44:
FB44: BD FB 24       JSR    save_and_switch_to_bank_0_fb24
FB47: BD 40 03       JSR    lb0_4003
FB4A: BD FB 34       JSR    switch_to_saved_bank_fb34
FB4D: 39             RTS
l_fb4e:
FB4E: BD FB 24       JSR    save_and_switch_to_bank_0_fb24
FB51: BD 40 06       JSR    lb0_4006
FB54: BD FB 34       JSR    switch_to_saved_bank_fb34
FB57: 39             RTS
l_fb58:
FB58: BD FB 24       JSR    save_and_switch_to_bank_0_fb24
FB5B: BD 40 09       JSR    lb0_4009
FB5E: BD FB 34       JSR    switch_to_saved_bank_fb34
FB61: 39             RTS
l_fb62:
FB62: BD FB 24       JSR    save_and_switch_to_bank_0_fb24
FB65: BD 40 0C       JSR    lb0_400C
FB68: BD FB 34       JSR    switch_to_saved_bank_fb34
FB6B: 39             RTS
l_fb6c:
FB6C: BD FB 24       JSR    save_and_switch_to_bank_0_fb24
FB6F: BD 40 0F       JSR    lb0_400F
FB72: BD FB 34       JSR    switch_to_saved_bank_fb34
FB75: 39             RTS
l_fb76:
FB76: BD FB 24       JSR    save_and_switch_to_bank_0_fb24
FB79: BD 40 12       JSR    lb0_4012
FB7C: BD FB 34       JSR    switch_to_saved_bank_fb34
FB7F: 39             RTS
FB80: BD FB 24       JSR    save_and_switch_to_bank_0_fb24
FB83: BD 40 15       JSR    lb0_4015
FB86: BD FB 34       JSR    switch_to_saved_bank_fb34
FB89: 39             RTS
l_fb8a:
FB8A: BD FC 28       JSR    save_and_switch_to_bank_5_fc28
FB8D: BD 40 06       JSR    lb5_4006
FB90: BD FC 3A       JSR    switch_to_saved_bank_fc3a
FB93: 39             RTS
l_fb94:
FB94: BD FC 28       JSR    save_and_switch_to_bank_5_fc28
FB97: BD 40 09       JSR    lb5_4009
FB9A: BD FC 3A       JSR    switch_to_saved_bank_fc3a
FB9D: 39             RTS
l_fb9e:
FB9E: BD FC 28       JSR    save_and_switch_to_bank_5_fc28
FBA1: BD 40 6C       JSR    lb5_406C
FBA4: BD FC 3A       JSR    switch_to_saved_bank_fc3a
FBA7: 39             RTS
l_fba8:
FBA8: BD FC 28       JSR    save_and_switch_to_bank_5_fc28
FBAB: BD 40 A2       JSR    lb5_40A2
FBAE: BD FC 3A       JSR    switch_to_saved_bank_fc3a
FBB1: 39             RTS


FBC0: BD BB 40       JSR    switch_to_bank_1_bb40
FBC3: BD 40 06       JSR    lb1_4006
FBC6: BD BB 4D       JSR    switch_to_bank_0_bb4d
FBC9: 39             RTS

FBCA: BD BB 40       JSR    switch_to_bank_1_bb40
FBCD: BD 40 09       JSR    lb1_4009
FBD0: BD BB 4D       JSR    switch_to_bank_0_bb4d
FBD3: 39             RTS
FBD4: BD BB 40       JSR    switch_to_bank_1_bb40
FBD7: BD 40 0C       JSR    lb1_400C 
FBDA: BD BB 4D       JSR    switch_to_bank_0_bb4d
FBDD: 39             RTS
FBDE: BD BB 40       JSR    switch_to_bank_1_bb40
FBE1: BD 40 0F       JSR    lb1_400F
FBE4: BD BB 4D       JSR    switch_to_bank_0_bb4d
FBE7: 39             RTS
FBE8: BD BB 40       JSR    switch_to_bank_1_bb40
FBEB: BD 40 6F       JSR    lb1_406F
FBEE: BD BB 4D       JSR    switch_to_bank_0_bb4d
FBF1: 39             RTS
FBF2: BD FC 82       JSR    switch_to_bank_5_fc82
FBF5: BD 40 C0       JSR    lb5_40C0
FBF8: BD FC 8F       JSR    switch_to_bank_0_fc8f
FBFB: 39             RTS

l_fc00:
FC00: BD FD A0       JSR    save_and_switch_to_bank_1_fda0                                      
FC03: BD 40 39       JSR    lb1_4039
FC06: BD FD B2       JSR    restore_previous_bank_fdb2
FC09: 39             RTS
l_fc0a:
FC0A: BD FC 28       JSR    save_and_switch_to_bank_5_fc28
FC0D: BD 40 0C       JSR    lb5_400C
FC10: BD FC 3A       JSR    switch_to_saved_bank_fc3a
FC13: 39             RTS
FC14: BD FC 28       JSR    save_and_switch_to_bank_5_fc28
FC17: BD 40 90       JSR    lb5_4090
FC1A: BD FC 3A       JSR    switch_to_saved_bank_fc3a
FC1D: 39             RTS

l_fc1e:
FC1E: BD FC 28       JSR    save_and_switch_to_bank_5_fc28
FC21: BD 40 0F       JSR    lb5_400F
FC24: BD FC 3A       JSR    switch_to_saved_bank_fc3a
FC27: 39             RTS

save_and_switch_to_bank_5_fc28:
FC28: 34 02          PSHS   A
FC2A: 96 3A          LDA    bank_switch_copy_3a
FC2C: B7 0E 43       STA    previous_bank_register_0e43
FC2F: 84 1F          ANDA   #$1F
FC31: 8A A0          ORA    #$A0			; bank=5
FC33: 97 3A          STA    bank_switch_copy_3a
FC35: B7 38 08       STA    bankswitch_3808
FC38: 35 82          PULS   A,PC

switch_to_saved_bank_fc3a:
FC3A: 34 02          PSHS   A
FC3C: 96 3A          LDA    bank_switch_copy_3a
FC3E: 84 1F          ANDA   #$1F
FC40: 97 3A          STA    bank_switch_copy_3a
FC42: B6 0E 43       LDA    previous_bank_register_0e43
FC45: 84 E0          ANDA   #$E0
FC47: 9A 3A          ORA    bank_switch_copy_3a
FC49: 97 3A          STA    bank_switch_copy_3a
FC4B: B7 38 08       STA    bankswitch_3808
FC4E: 35 82          PULS   A,PC

display_credit_fc50:   ; [global]
FC50: BD FC 82       JSR    switch_to_bank_5_fc82
FC53: BD 40 45       JSR    lb5_4045
FC56: BD FC 8F       JSR    switch_to_bank_0_fc8f
FC59: 39             RTS

FC5A: BD FC 82       JSR    switch_to_bank_5_fc82
FC5D: BD 40 48       JSR    lb5_4048
FC60: BD FC 8F       JSR    switch_to_bank_0_fc8f
FC63: 39             RTS

FC64: BD FC 82       JSR    switch_to_bank_5_fc82
FC67: BD 40 4B       JSR    lb5_404B
FC6A: BD FC 8F       JSR    switch_to_bank_0_fc8f
FC6D: 39             RTS

FC6E: BD FC 82       JSR    switch_to_bank_5_fc82
FC71: BD 40 4E       JSR    lb5_404E
FC74: BD FC 8F       JSR    switch_to_bank_0_fc8f
FC77: 39             RTS
l_fc78:

FC78: BD FC 82       JSR    switch_to_bank_5_fc82
FC7B: BD 40 57       JSR    lb5_4057
FC7E: BD FC 8F       JSR    switch_to_bank_0_fc8f
FC81: 39             RTS

switch_to_bank_5_fc82:
FC82: 34 02          PSHS   A
FC84: 96 3A          LDA    bank_switch_copy_3a
FC86: 8A A0          ORA    #$A0
FC88: 97 3A          STA    bank_switch_copy_3a
FC8A: B7 38 08       STA    bankswitch_3808
FC8D: 35 82          PULS   A,PC

switch_to_bank_0_fc8f:
FC8F: 34 02          PSHS   A
FC91: 96 3A          LDA    bank_switch_copy_3a
FC93: 84 1F          ANDA   #$1F
FC95: 97 3A          STA    bank_switch_copy_3a
FC97: B7 38 08       STA    bankswitch_3808
FC9A: 35 82          PULS   A,PC

switch_to_bank_0_fca6:
FCA6: BD FC 8F       JSR    switch_to_bank_0_fc8f
FCA9: 39             RTS

FCAA: BD FC 82       JSR    switch_to_bank_5_fc82
FCAD: BD 40 18       JSR    $4018 ; [banks=5]
FCB0: BD FC 8F       JSR    switch_to_bank_0_fc8f
FCB3: 39             RTS

FCB4: BD FC 82       JSR    switch_to_bank_5_fc82
FCB7: BD 40 15       JSR    lb5_4015
FCBA: BD FC 8F       JSR    switch_to_bank_0_fc8f
FCBD: 39             RTS

FCBE: BD FC 82       JSR    switch_to_bank_5_fc82
FCC1: BD 40 51       JSR    lb5_4051
FCC4: BD FC 8F       JSR    switch_to_bank_0_fc8f
FCC7: 39             RTS

FCC8: BD FC 82       JSR    switch_to_bank_5_fc82
FCCB: BD 40 54       JSR    lb5_4054
FCCE: BD FC 8F       JSR    switch_to_bank_0_fc8f
FCD1: 39             RTS

FCD2: BD E1 A1       JSR    $E1A1
FCD5: 96 36          LDA    $36
FCD7: 81 01          CMPA   #$01
FCD9: 26 1E          BNE    $FCF9
FCDB: B6 09 F2       LDA    $09F2
FCDE: 2A 19          BPL    $FCF9
FCE0: FC 0A 44       LDD    $0A44
FCE3: 2B 14          BMI    $FCF9
FCE5: CC 00 00       LDD    #$0000
FCE8: FD 0A 44       STD    $0A44
FCEB: DC 3F          LDD    $3F
FCED: 10 83 02 B4    CMPD   #$02B4
FCF1: 25 06          BCS    $FCF9
FCF3: CC FF 00       LDD    #$FF00
FCF6: FD 0A 44       STD    $0A44
FCF9: 39             RTS


FD00: 7E FB C0       JMP    $FBC0
FD03: 7E FB CA       JMP    $FBCA
FD06: 7E FB D4       JMP    $FBD4
FD09: 7E FB DE       JMP    $FBDE
FD0C: 7E B9 B0       JMP    $B9B0
FD0F: 7E F9 C4       JMP    $F9C4
FD12: 7E F9 88       JMP    $F988
FD15: 7E BB 82       JMP    $BB82
FD18: 96 36          LDA    $36
FD1A: 81 03          CMPA   #$03
FD1C: 26 09          BNE    $FD27
FD1E: BD FC 82       JSR    switch_to_bank_5_fc82
FD21: BD 40 AB       JSR    lb5_40AB
FD24: BD FC 8F       JSR    switch_to_bank_0_fc8f
FD27: 39             RTS


FD39: 39             RTS
FD3A: BD FC 82       JSR    switch_to_bank_5_fc82
FD3D: BD 40 B7       JSR    lb5_40B7
FD40: BD FC 8F       JSR    switch_to_bank_0_fc8f
FD43: 39             RTS
FD44: BD FC 82       JSR    switch_to_bank_5_fc82
FD47: BD 40 BD       JSR    lb5_40BD
FD4A: BD FC 8F       JSR    switch_to_bank_0_fc8f
FD4D: 39             RTS
FD4E: BD BB 40       JSR    switch_to_bank_1_bb40
FD51: BD 40 63       JSR    lb1_4063
FD54: BD BB 4D       JSR    switch_to_bank_0_bb4d
FD57: 39             RTS
FD58: BD BB 40       JSR    switch_to_bank_1_bb40
FD5B: BD 40 66       JSR    lb1_4066
FD5E: BD BB 4D       JSR    switch_to_bank_0_bb4d
FD61: 39             RTS
FD62: BD BB 40       JSR    switch_to_bank_1_bb40
FD65: BD 40 69       JSR    lb1_4069
FD68: BD BB 4D       JSR    switch_to_bank_0_bb4d
FD6B: 39             RTS

FD70: BD FC 82       JSR    switch_to_bank_5_fc82
FD73: BD 40 39       JSR    lb5_4039
FD76: BD FC 8F       JSR    switch_to_bank_0_fc8f
FD79: 39             RTS
FD7A: BD FC 82       JSR    switch_to_bank_5_fc82
FD7D: BD 40 3C       JSR    lb5_403C
FD80: BD FC 8F       JSR    switch_to_bank_0_fc8f
FD83: 39             RTS

call_bank_4_4000_fd84:
FD84: 96 3A          LDA    bank_switch_copy_3a
FD86: 8A 80          ORA    #$80		; bank=4
FD88: 97 3A          STA    bank_switch_copy_3a
FD8A: B7 38 08       STA    bankswitch_3808
FD8D: BD 40 00       JSR    lb4_4000
FD90: BD FC 8F       JSR    switch_to_bank_0_fc8f
FD93: 39             RTS

save_and_switch_to_bank_1_fda0:
FDA0: 34 02          PSHS   A
FDA2: 96 3A          LDA    bank_switch_copy_3a
FDA4: B7 0E 46       STA    previous_bank_register_0e46
FDA7: 84 1F          ANDA   #$1F
FDA9: 8A 20          ORA    #$20
FDAB: 97 3A          STA    bank_switch_copy_3a
FDAD: B7 38 08       STA    bankswitch_3808
FDB0: 35 82          PULS   A,PC

restore_previous_bank_fdb2:
FDB2: 34 03          PSHS   A,CC
FDB4: 96 3A          LDA    bank_switch_copy_3a
FDB6: 84 1F          ANDA   #$1F
FDB8: 97 3A          STA    bank_switch_copy_3a
FDBA: B6 0E 46       LDA    previous_bank_register_0e46
FDBD: 84 E0          ANDA   #$E0
FDBF: 9A 3A          ORA    bank_switch_copy_3a
FDC1: 97 3A          STA    bank_switch_copy_3a
FDC3: B7 38 08       STA    bankswitch_3808
FDC6: 35 83          PULS   CC,A,PC

l_fdc8:
FDC8: 96 3A          LDA    bank_switch_copy_3a
FDCA: 84 1F          ANDA   #$1F
FDCC: 8A 60          ORA    #$60	; bank=3
FDCE: 97 3A          STA    bank_switch_copy_3a
FDD0: B7 38 08       STA    bankswitch_3808
FDD3: BD 6C 12       JSR    lb3_6C12
FDD6: 96 3A          LDA    bank_switch_copy_3a
FDD8: 84 1F          ANDA   #$1F
FDDA: 8A A0          ORA    #$A0
FDDC: B7 38 08       STA    bankswitch_3808
FDDF: 97 3A          STA    bank_switch_copy_3a
FDE1: 39             RTS
l_fde2:
FDE2: A7 88 24       STA    $24,X
FDE5: C1 0A          CMPB   #$0A
FDE7: 26 03          BNE    $FDEC
FDE9: 6F 88 24       CLR    $24,X
FDEC: 39             RTS

set_palettes_fdf0:
FDF0: 7E EE 30       JMP    set_palettes_ee30
set_palettes_fdf3:
FDF3: 7E EE 3E       JMP    set_palettes_ee3e
FDF6: 7E E0 80       JMP    $E080
FDF9: 7E E1 07       JMP    $E107
update_scrolling_fdfc:
FDFC: 7E E9 0B       JMP    update_scrolling_e90b
FDFF: 7E E9 65       JMP    $E965

l_fe20:
FE20: 7E 90 4B       JMP    $904B
l_fe23:
FE23: 7E B7 56       JMP    vbl_delay_b756

l_fe30:
FE30: 7E E8 28       JMP    $E828                                      
l_fe33:
FE33: 7E EC E6       JMP    $ECE6                                      

l_fe36:
FE36: 7E EE 3E       JMP    set_palettes_ee3e

FE40: 7E A6 F4       JMP    $A6F4
FE43: 7E 9C 17       JMP    $9C17
FE46: 7E 9C 8E       JMP    $9C8E
FE49: 7E 9C E0       JMP    $9CE0
FE4C: 7E 91 AF       JMP    $91AF
FE4F: 7E 9E AF       JMP    $9EAF
FE52: 7E A3 1C       JMP    $A31C
FE55: 7E A3 C6       JMP    $A3C6
FE58: 7E 9E 14       JMP    $9E14
FE5B: 7E A9 00       JMP    $A900
FE5E: 7E A9 00       JMP    $A900
FE61: 7E A4 3D       JMP    $A43D
l_fe64:
FE64: 7E A5 29       JMP    $A529
FE67: 7E A4 A3       JMP    $A4A3
FE80: 7E 40 1E       JMP    $401E ; [banks=0]
FE83: 7E 46 52       JMP    $4652 ; [banks=0]
FE86: 7E 45 B1       JMP    $45B1 ; [banks=0]
FE89: 7E 44 DC       JMP    $44DC ; [banks=0]
FE8C: 7E 48 B1       JMP    $48B1 ; [banks=0]
FE8F: 7E 46 E0       JMP    $46E0 ; [banks=0]
FE92: 7E 48 EB       JMP    $48EB ; [banks=0]
FE95: 7E 41 C9       JMP    $41C9 ; [banks=0]
clear_fg_screen_fe98:
FE98: 7E 41 E3       JMP    $41E3 ; [banks=0]
clear_bg_screen_fe9b:
FE9B: 7E 41 D6       JMP    $41D6 ; [banks=0]
clear_sprite_memory_fe9e:
FE9E: 7E 42 13       JMP    lb0_clear_sprite_memory_4213
set_screen_orientation_fea1:
FEA1: 7E 42 B4       JMP    $42B4 ; [banks=0]
update_sprite_memory_fea4:
FEA4: 7E 42 31       JMP    lb0_update_sprite_memory_4231
FEA7: 7E 45 66       JMP    $4566 ; [banks=0]
FEAA: 7E 41 BF       JMP    $41BF ; [banks=0]
clear_sprite_slots_fead:
FEAD: 7E 41 F0       JMP    lb0_clear_sprite_slots_41f0

display_credit_feb0:
FEB0: 7E FC 50       JMP    display_credit_fc50

FEB3: 7E FC 78       JMP    $FC78
FEB6: 7E 44 CD       JMP    $44CD ; [banks=0]
FEB9: 7E 44 49       JMP    $4449 ; [banks=0]
FEBC: 7E 47 36       JMP    $4736 ; [banks=0]
FEBF: 7E 45 D7       JMP    $45D7 ; [banks=0]
FEC2: 7E 47 DB       JMP    $47DB ; [banks=0]
FEC5: 7E 68 1B       JMP    $681B ; [banks=0]
FEC8: 7E 6D 64       JMP    $6D64 ; [banks=0]
FECB: 7E 47 E3       JMP    $47E3 ; [banks=0]
FECE: 7E 47 E9       JMP    $47E9 ; [banks=0]
FED1: 7E 48 04       JMP    $4804 ; [banks=0]
FED4: 7E 67 5D       JMP    $675D ; [banks=0]
FED7: 7E 5F 85       JMP    $5F85 ; [banks=0]
FEDA: 7E 5B 1F       JMP    $5B1F ; [banks=0]
FEDD: 7E 58 8F       JMP    $588F ; [banks=0]
FEE0: 7E 5C 93       JMP    $5C93 ; [banks=0]
FEE3: 7E 4A 6B       JMP    $4A6B ; [banks=0]
FEE6: 7E 51 E5       JMP    $51E5 ; [banks=0]
FEE9: 7E 4D 9D       JMP    $4D9D ; [banks=0]
FEEC: 7E 4E 4B       JMP    $4E4B ; [banks=0]
FEEF: 7E 4E 76       JMP    $4E76 ; [banks=0]
FEF2: 7E 4F 80       JMP    $4F80 ; [banks=0]
FEF5: 7E 4D DD       JMP    $4DDD ; [banks=0]
FEF8: 7E 49 A0       JMP    $49A0 ; [banks=0]
FEFB: 7E 46 A3       JMP    $46A3 ; [banks=0]
FEFE: 7E FF C9       JMP    $FFC9
FF01: 7E 42 42       JMP    lb0_4242
FF04: 7E 48 8C       JMP    $488C ; [banks=0]

push_one_sprite_entry_ff10:  ; [global]
FF10: BD FD A0       JSR    save_and_switch_to_bank_1_fda0
FF13: BD 40 00       JSR    lb1_push_one_sprite_entry_4000
FF16: BD FD B2       JSR    restore_previous_bank_fdb2
FF19: 39             RTS

subcpu_processing_ff1a:
FF1A: BD FD A0       JSR    save_and_switch_to_bank_1_fda0
FF1D: BD 40 03       JSR    lb1_subcpu_processing_4003
FF20: BD FD B2       JSR    restore_previous_bank_fdb2
FF23: 39             RTS

save_and_switch_to_bank_0_ff24:
FF24: 34 02          PSHS   A
FF26: 96 3A          LDA    bank_switch_copy_3a
FF28: B7 0E 3D       STA    previous_bank_register_0e3d
FF2B: 84 1F          ANDA   #$1F
FF2D: 97 3A          STA    bank_switch_copy_3a
FF2F: B7 38 08       STA    bankswitch_3808
FF32: 35 82          PULS   A,PC

restore_previous_bank_ff34:
FF34: 34 02          PSHS   A
FF36: 96 3A          LDA    bank_switch_copy_3a
FF38: 84 1F          ANDA   #$1F
FF3A: 97 3A          STA    bank_switch_copy_3a
FF3C: B6 0E 3D       LDA    previous_bank_register_0e3d
FF3F: 84 E0          ANDA   #$E0
FF41: 9A 3A          ORA    bank_switch_copy_3a
FF43: 97 3A          STA    bank_switch_copy_3a
FF45: B7 38 08       STA    bankswitch_3808
FF48: 35 82          PULS   A,PC

switch_to_bank_3_ff4a:
FF4A: 96 3A          LDA    bank_switch_copy_3a
FF4C: 8A 60          ORA    #$60		; bank=3
FF4E: 97 3A          STA    bank_switch_copy_3a
FF50: B7 38 08       STA    bankswitch_3808
FF53: 39             RTS

FF54: BD FF 4A       JSR    switch_to_bank_3_ff4a
FF57: BD 6C 03       JSR    lb3_6C03
FF5A: BD FC 8F       JSR    switch_to_bank_0_fc8f
FF5D: 39             RTS

FF5E: BD FC 82       JSR    switch_to_bank_5_fc82
FF61: BD 40 A5       JSR    lb5_40A5
FF64: 20 F4          BRA    $FF5A

FF68: 7D 09 F2       TST    $09F2
FF6B: 2B 09          BMI    $FF76
FF6D: 81 03          CMPA   #$03
FF6F: 10 26 A1 AF    LBNE   $A122
FF73: 7E A0 72       JMP    $A072
FF76: 35 40          PULS   U
FF78: 7E A1 F7       JMP    $A1F7

switch_to_bank_4_ff80:
FF80: 34 02          PSHS   A
FF82: 96 3A          LDA    $3A
FF84: 8A 80          ORA    #$80 ; bank=4
FF86: 97 3A          STA    bank_switch_copy_3a
FF88: B7 38 08       STA    bankswitch_3808
FF8B: 35 82          PULS   A,PC

switch_to_bank_5_ff8d:
FF8D: 34 02          PSHS   A
FF8F: 96 3A          LDA    bank_switch_copy_3a
FF91: 84 1F          ANDA   #$1F
FF93: 8A A0          ORA    #$A0	; bank=5
FF95: 97 3A          STA    bank_switch_copy_3a
FF97: B7 38 08       STA    bankswitch_3808
FF9A: 35 82          PULS   A,PC
FF9C: 34 02          PSHS   A

switch_to_bank_3_ff9e:
FF9E: 96 3A          LDA    bank_switch_copy_3a
FFA0: 84 1F          ANDA   #$1F
FFA2: 8A 60          ORA    #$60	; bank=3
FFA4: 97 3A          STA    bank_switch_copy_3a
FFA6: B7 38 08       STA    bankswitch_3808
FFA9: 35 82          PULS   A,PC
l_ffab:
FFAB: BD FF 80       JSR    switch_to_bank_4_ff80
FFAE: BD 78 09       JSR    lb4_7809
FFB1: BD FC 8F       JSR    switch_to_bank_0_fc8f
FFB4: 39             RTS
l_ffb5:
FFB5: BD FF 80       JSR    switch_to_bank_4_ff80
FFB8: BD 78 03       JSR    lb4_7803
FFBB: BD FC 8F       JSR    switch_to_bank_0_fc8f
FFBE: 39             RTS
FFBF: BD FF 80       JSR    switch_to_bank_4_ff80
FFC2: BD 78 06       JSR    lb4_7806
FFC5: BD FC 8F       JSR    switch_to_bank_0_fc8f
FFC8: 39             RTS
l_ffc9:
FFC9: BD FF 8D       JSR    switch_to_bank_5_ff8d
FFCC: BD 40 45       JSR    lb5_4045
FFCF: BD FF 9C       JSR    $FF9C
FFD2: 39             RTS
l_ffd3:
FFD3: BD FC 8F       JSR    switch_to_bank_0_fc8f
FFD6: BD 40 00       JSR    lb0_4000
FFD9: BD FF 9C       JSR    $FF9C
FFDC: 39             RTS
FFDD: 39             RTS


jump_table_8c21:
	dc.w	$8c35
	dc.w	$8c35 
	dc.w	$8e1e
	dc.w	$8e1e 
	dc.w	$8e1e
	dc.w	$8e1e 
	dc.w	$8e1e
	dc.w	$8e1e
	dc.w	$8e6d
	dc.w	$8e70
jump_table_aed1:
	dc.w	$aed9	; $aed1
	dc.w	$af6c	; $aed3
	dc.w	$afce	; $aed5
	dc.w	$b04e	; $aed7
	dc.w	$8601	; $aed9
	dc.w	$974b	; $aedb
	dc.w	$b60e	; $aedd
jump_table_aeea:
	dc.w	$aef0	; $aeea
	dc.w	$aefc	; $aeec
	dc.w	$af26	; $aeee
jump_table_af79:
	dc.w	$aef0	; $af79
	dc.w	$af85	; $af7b
	dc.w	$af8e	; $af7d
	dc.w	$afaa	; $af7f
	dc.w	$aef0	; $af81
	dc.w	$af26	; $af83
	
table_of_jump_tables_afe1:
	dc.w	jump_table_afe5	; $afe1
	dc.w	jump_table_afed	; $afe3
	
jump_table_afe5:
	dc.w	$aef0	; $afe5
	dc.w	$aef0	; $afe7
	dc.w	$aefc	; $afe9
	dc.w	$af26	; $afeb
jump_table_afed:
	dc.w	$aff1	; $afed
	dc.w	$b013	; $afef


jump_table_b063:
	dc.w	$aef0	; $b063
	dc.w	$b067	; $b065

jump_table_b0b5:
	dc.w	$aef0	; $b0b5
	dc.w	$b0bb	; $b0b7
	dc.w	$b0cf	; $b0b9
jump_table_8b59:
	dc.w	$8bcd	; $8b59
	dc.w	$a6f4	; $8b5b
	dc.w	$9c17	; $8b5d
	dc.w	$9c8e	; $8b5f
	dc.w	$9ce0	; $8b61
	dc.w	$91af	; $8b63
	dc.w	$9293	; $8b65
	dc.w	$9417	; $8b67
	dc.w	$9417	; $8b69
	dc.w	$a3fa	; $8b6b
	dc.w	$9eaf	; $8b6d
	dc.w	$a31c	; $8b6f
	dc.w	$a3c6	; $8b71
	dc.w	$9e14	; $8b73
	dc.w	$8bcd	; $8b75
	dc.w	$a643	; $8b77
	dc.w	$a3c6	; $8b79
	dc.w	$a643	; $8b7b
	dc.w	$a3c6	; $8b7d
	dc.w	$a3c6	; $8b7f
	dc.w	$a3c6	; $8b81
	dc.w	$a3c6	; $8b83
	dc.w	$a43d	; $8b85
	dc.w	$a3c6	; $8b87
	dc.w	$a4a3	; $8b89

jump_table_9423:
	dc.w	$944f
	dc.w	$94f3
	dc.w	$9532
	dc.w	$95f3
	dc.w	$9632
	dc.w	$9633
	dc.w	$967d
	dc.w	$96ee
	dc.w	$972f
	dc.w	$977c
	dc.w	$97f5
	dc.w	$97f5
	dc.w	$9834
	dc.w	$990e
	dc.w	$9971
	dc.w	$99e6
	dc.w	$9a26
	dc.w	$9a84
	dc.w	$9a91
	dc.w	$9a91
	dc.w	$9a92
	dc.w	$9b40
	
jump_table_9f79:
	dc.w 	$9faa
	dc.w 	$a003
	dc.w 	$a126
	dc.w 	$a17c
	dc.w 	$a1b2
	
jump_table_a71e:
	dc.w	$a732
	dc.w	$a732
	dc.w	$a732
	dc.w	$a732
	dc.w	$a732
	dc.w	$a732
	dc.w	$a732
	dc.w	$a732
	dc.w	$a8d6
	dc.w	$a8eb
	
jump_table_b4ab:
	dc.w	$b4b7	; $b4ab
	dc.w	$b4bc	; $b4ad
	dc.w	$0	; $b4af
	dc.w	$0	; $b4b1
	dc.w	$b4e7	; $b4b3
	dc.w	$b4ff	; $b4b5

	
jump_table_b5aa:
	dc.w	$b5b6	; $b5aa
	dc.w	$0	    ; $b5ac
	dc.w	$b5ca	; $b5ae
	dc.w	$b607	; $b5b0

jump_table_ba1d:
	dc.w	$ba25	; $ba1d
	dc.w	$ba31	; $ba1f
	dc.w	$ba46	; $ba21
	dc.w	$ba5b	; $ba23

jump_table_badd:
     dc.w	$f9c4 
	 dc.w	$fe40
	 dc.w	$fe43 
	 dc.w	$fe46 
	 dc.w	$fe49
	 dc.w	$fe4c 
	 dc.w	$f9ce
	 dc.w	$fe5e
     dc.w	$fe5b
	 dc.w	$fe55
	 dc.w	$fe4f 
	 dc.w	$fe52
	 dc.w	$fe55
	 dc.w	$fe58 
	 dc.w	$fe55 
	 dc.w	$fe55
     dc.w	$f9d8
	 dc.w	$f9e2 
	 dc.w	$bb22 
	 dc.w	$fd4e 
	 dc.w	$fd58
	 dc.w	$fd62 
	 dc.w	$fe61
	 dc.w	$bb2c
     dc.w	$fe67 
	 dc.w	$bb36 
	 dc.w	$bb6e 
	 dc.w	$bb78

jump_table_bbec:
	dc.w	$bc63	; $bbec
	dc.w	$bc14	; $bbee
	dc.w	$bc14	; $bbf0
	dc.w	$c233	; $bbf2
	dc.w	$bf7d	; $bbf4
	dc.w	$c7bf	; $bbf6
	dc.w	$c4c6	; $bbf8
	dc.w	$c69c	; $bbfa
	dc.w	$bc14	; $bbfc
	dc.w	$bc14	; $bbfe
	dc.w	$bc14	; $bc00
	dc.w	$bc14	; $bc02
	dc.w	$bc14	; $bc04
	dc.w	$bc14	; $bc06
	dc.w	$c9fb	; $bc08
	dc.w	$bc14	; $bc0a
	dc.w	$bc58	; $bc0c
	dc.w	$bc58	; $bc0e
	dc.w	$bc58	; $bc10
	dc.w	$bc58	; $bc12

; it can be bank 1 or bank 5, only those banks have so many vectors. debugging shows it's bank 5 (reached at section 2 of level 1)
jump_table_bc27:
	dc.w	lb5_401e 
	dc.w	lb5_401e 
	dc.w	lb5_4021 
	dc.w	lb5_4021 
	dc.w	lb5_4021 
	dc.w	lb5_4021 
	dc.w	lb5_4021
	dc.w	lb5_4021
	dc.w	lb5_40cc
	dc.w	lb5_4036
	dc.w	lb5_402a
	dc.w	lb5_402d
	dc.w	lb5_4030
	dc.w	lb5_4033
	dc.w	lb5_4033 
	dc.w	lb5_4027
	dc.w	lb5_403f
	dc.w	lb5_4042 
	dc.w	lb5_4072
	dc.w	lb1_40ae 

jump_table_bc8d:
	dc.w	$bcb6	; $bc8d
	dc.w	$bcc1	; $bc8f
	dc.w	$bcc7	; $bc91
	dc.w	$bcb5	; $bc93
	dc.w	$bcb5	; $bc95
	dc.w	$bccd	; $bc97
	dc.w	$bcd1	; $bc99
	dc.w	$bce1	; $bc9b
	dc.w	$bd12	; $bc9d
	dc.w	$bd16	; $bc9f
	dc.w	$bd27	; $bca1
	dc.w	$bd2d	; $bca3
	dc.w	$bcb6	; $bca5
	dc.w	$bd33	; $bca7
	dc.w	$bd48	; $bca9
	dc.w	$bd58	; $bcab
	dc.w	$bcb5	; $bcad
	dc.w	$bcb5	; $bcaf
	dc.w	$bd68	; $bcb1
	dc.w	$bd6e	; $bcb3
jump_table_bd91:
	dc.w	$bdba	; $bd91
	dc.w	$bdbe	; $bd93
	dc.w	$bde9	; $bd95
	dc.w	$bdb9	; $bd97
	dc.w	$bdb9	; $bd99
	dc.w	$be14	; $bd9b
	dc.w	$be19	; $bd9d
	dc.w	$be5a	; $bd9f
	dc.w	$be89	; $bda1
	dc.w	$beb6	; $bda3
	dc.w	$beb6	; $bda5
	dc.w	$bebb	; $bda7
	dc.w	$bec0	; $bda9
	dc.w	$beef	; $bdab
	dc.w	$bf18	; $bdad
	dc.w	$bf41	; $bdaf

jump_table_bfa7:
	dc.w	$bfd0	; $bfa7
	dc.w	$bfdb	; $bfa9
	dc.w	$bfe1	; $bfab
	dc.w	$bfcf	; $bfad
	dc.w	$bfcf	; $bfaf
	dc.w	$bfe7	; $bfb1
	dc.w	$bfeb	; $bfb3
	dc.w	$bff8	; $bfb5
	dc.w	$c029	; $bfb7
	dc.w	$c02d	; $bfb9
	dc.w	$c03e	; $bfbb
	dc.w	$c044	; $bfbd
	dc.w	$bfd0	; $bfbf
	dc.w	$c04a	; $bfc1
	dc.w	$c05f	; $bfc3
	dc.w	$c06f	; $bfc5
	dc.w	$bfcf	; $bfc7
	dc.w	$bfcf	; $bfc9
	dc.w	$c07f	; $bfcb
	dc.w	$c085	; $bfcd
jump_table_c0a9:
	dc.w	$c0d2	; $c0a9
	dc.w	$c0d6	; $c0ab
	dc.w	$c0fd	; $c0ad
	dc.w	$c0d1	; $c0af
	dc.w	$c0d1	; $c0b1
	dc.w	$c124	; $c0b3
	dc.w	$c129	; $c0b5
	dc.w	$c14d	; $c0b7
	dc.w	$c178	; $c0b9
	dc.w	$c1a3	; $c0bb
	dc.w	$c1a3	; $c0bd
	dc.w	$c1a8	; $c0bf
	dc.w	$bec0	; $c0c1
	dc.w	$c1ad	; $c0c3
	dc.w	$c1d4	; $c0c5
	dc.w	$c1fb	; $c0c7
	dc.w	$c0d1	; $c0c9
	dc.w	$c0d1	; $c0cb
	dc.w	$c222	; $c0cd
	dc.w	$c129	; $c0cf
jump_table_c25d:
	dc.w	$c286	; $c25d
	dc.w	$c291	; $c25f
	dc.w	$c297	; $c261
	dc.w	$c285	; $c263
	dc.w	$c285	; $c265
	dc.w	$c286	; $c267
	dc.w	$c29d	; $c269
	dc.w	$c2aa	; $c26b
	dc.w	$c286	; $c26d
	dc.w	$c2db	; $c26f
	dc.w	$c2ec	; $c271
	dc.w	$c2f2	; $c273
	dc.w	$c286	; $c275
	dc.w	$c2f8	; $c277
	dc.w	$c30d	; $c279
	dc.w	$c31d	; $c27b
jump_table_c351:
	dc.w	$c37a	; $c351
	dc.w	$c37e	; $c353
	dc.w	$c3a5	; $c355
	dc.w	$c379	; $c357
	dc.w	$c379	; $c359
	dc.w	$c3cc	; $c35b
	dc.w	$c3d1	; $c35d
	dc.w	$c40c	; $c35f
	dc.w	$c433	; $c361
	dc.w	$c439	; $c363
	dc.w	$c439	; $c365
	dc.w	$c43e	; $c367
	dc.w	$bec0	; $c369
	dc.w	$c44f	; $c36b
	dc.w	$c478	; $c36d
	dc.w	$c49f	; $c36f
jump_table_c4f0:
	dc.w	$c517	; $c4f0
	dc.w	$c522	; $c4f2
	dc.w	$c528	; $c4f4
	dc.w	$c517	; $c4f6
	dc.w	$c516	; $c4f8
	dc.w	$c517	; $c4fa
	dc.w	$c516	; $c4fc
	dc.w	$c53c	; $c4fe
	dc.w	$c517	; $c500
	dc.w	$c548	; $c502
	dc.w	$c559	; $c504
	dc.w	$c55f	; $c506
	dc.w	$c517	; $c508
	dc.w	$c516	; $c50a
	dc.w	$c516	; $c50c
	dc.w	$c516	; $c50e
	dc.w	$c516	; $c510
	dc.w	$c517	; $c512
	dc.w	$c565	; $c514
jump_table_c582:
	dc.w	$c5a9	; $c582
	dc.w	$c5ad	; $c584
	dc.w	$c5dc	; $c586
	dc.w	$c60a	; $c588
	dc.w	$c5a8	; $c58a
	dc.w	$c634	; $c58c
	dc.w	$c5a8	; $c58e
	dc.w	$c639	; $c590
	dc.w	$c668	; $c592
	dc.w	$c66e	; $c594
	dc.w	$c66e	; $c596
	dc.w	$c66e	; $c598
	dc.w	$bec0	; $c59a
	dc.w	$c5a8	; $c59c
	dc.w	$c5a8	; $c59e
	dc.w	$c5a8	; $c5a0
	dc.w	$c5a8	; $c5a2
	dc.w	$c673	; $c5a4
	dc.w	$c68b	; $c5a6
jump_table_c6c6:
	dc.w	$c6ed	; $c6c6
	dc.w	$c6f8	; $c6c8
	dc.w	$c6ec	; $c6ca
	dc.w	$c6ec	; $c6cc
	dc.w	$c6ec	; $c6ce
	dc.w	$c6ed	; $c6d0
	dc.w	$c6ec	; $c6d2
	dc.w	$c6fe	; $c6d4
	dc.w	$c6ed	; $c6d6
	dc.w	$c70a	; $c6d8
	dc.w	$c71b	; $c6da
	dc.w	$c721	; $c6dc
	dc.w	$c6ed	; $c6de
	dc.w	$c6ec	; $c6e0
	dc.w	$c6ec	; $c6e2
	dc.w	$c6ec	; $c6e4
	dc.w	$c6ec	; $c6e6
	dc.w	$c6ec	; $c6e8
	dc.w	$c727	; $c6ea
jump_table_c744:
	dc.w	$c76b	; $c744
	dc.w	$c76f	; $c746
	dc.w	$c76a	; $c748
	dc.w	$c76a	; $c74a
	dc.w	$c76a	; $c74c
	dc.w	$c79a	; $c74e
	dc.w	$c76a	; $c750
	dc.w	$c79f	; $c752
	dc.w	$c7a3	; $c754
	dc.w	$c7a9	; $c756
	dc.w	$c7a9	; $c758
	dc.w	$c7a9	; $c75a
	dc.w	$bec0	; $c75c
	dc.w	$c76a	; $c75e
	dc.w	$c76a	; $c760
	dc.w	$c76a	; $c762
	dc.w	$c76a	; $c764
	dc.w	$c76a	; $c766
	dc.w	$c7ae	; $c768
jump_table_c7ec:
	dc.w	$c813	; $c7ec
	dc.w	$c81e	; $c7ee
	dc.w	$c824	; $c7f0
	dc.w	$c813	; $c7f2
	dc.w	$c82a	; $c7f4
	dc.w	$c813	; $c7f6
	dc.w	$c812	; $c7f8
	dc.w	$c833	; $c7fa
	dc.w	$c813	; $c7fc
	dc.w	$c83f	; $c7fe
	dc.w	$c850	; $c800
	dc.w	$c856	; $c802
	dc.w	$c813	; $c804
jump_table_c879:
	dc.w	$c8a0	; $c879
	dc.w	$c8ed	; $c87b
	dc.w	$c922	; $c87d
	dc.w	$c957	; $c87f
	dc.w	$c981	; $c881
	dc.w	$c9a5	; $c883
	dc.w	$c89f	; $c885
	dc.w	$c9aa	; $c887
	dc.w	$c9df	; $c889
	dc.w	$c9e5	; $c88b
	dc.w	$c9e5	; $c88d
	dc.w	$c9e5	; $c88f
	dc.w	$bec0	; $c891
jump_table_ca25:
	dc.w	$ca4c	; $ca25
	dc.w	$ca57	; $ca27
	dc.w	$ca4b	; $ca29
	dc.w	$ca4b	; $ca2b
	dc.w	$ca4b	; $ca2d
	dc.w	$ca4c	; $ca2f
	dc.w	$ca4b	; $ca31
	dc.w	$ca5d	; $ca33
	dc.w	$ca69	; $ca35
	dc.w	$ca72	; $ca37
	dc.w	$ca83	; $ca39
	dc.w	$ca89	; $ca3b
	dc.w	$ca4c	; $ca3d
	dc.w	$ca4b	; $ca3f
	dc.w	$ca4b	; $ca41
	dc.w	$ca4b	; $ca43
	dc.w	$ca4b	; $ca45
	dc.w	$ca4b	; $ca47
	dc.w	$ca8f	; $ca49
jump_table_caac:
	dc.w	$cad3	; $caac
	dc.w	$cad7	; $caae
	dc.w	$cad2	; $cab0
	dc.w	$cad2	; $cab2
	dc.w	$cad2	; $cab4
	dc.w	$cb00	; $cab6
	dc.w	$cad2	; $cab8
	dc.w	$cb05	; $caba
	dc.w	$cb09	; $cabc
	dc.w	$cb0f	; $cabe
	dc.w	$cb0f	; $cac0
	dc.w	$cb14	; $cac2
	dc.w	$bec0	; $cac4
	dc.w	$cad2	; $cac6
	dc.w	$cad2	; $cac8
	dc.w	$cad2	; $caca
	dc.w	$cad2	; $cacc
	dc.w	$cad2	; $cace
	dc.w	$cb19	; $cad0

table_of_jump_tables_a92d:
	dc.w	jump_table_a943	; $a92d
	dc.w	jump_table_a94d	; $a92f
	dc.w	jump_table_a975	; $a931
	dc.w	jump_table_a97d	; $a933
	dc.w	jump_table_a985	; $a935
	dc.w	jump_table_a98f	; $a937
	dc.w	jump_table_a999	; $a939
	dc.w	jump_table_a9a5	; $a93b
	dc.w	jump_table_a9b1	; $a93d
	dc.w	jump_table_a999	; $a93f
	dc.w	jump_table_a9a5	; $a941

jump_table_a943:	
	dc.w	$aad4	; $a943
	dc.w	$aade	; $a945
	dc.w	$aae8	; $a947
	dc.w	$aba6	; $a949
	dc.w	$aeb4	; $a94b

jump_table_a94d:
	dc.w	$a9bb	; $a94d
	dc.w	$94f3	; $a94f
	dc.w	$ac37	; $a951
	dc.w	$ace4	; $a953
	dc.w	$9633	; $a955
	dc.w	$95f3	; $a957
	dc.w	$95f3	; $a959
	dc.w	$972f	; $a95b
	dc.w	$97f5	; $a95d
	dc.w	$977c	; $a95f
	dc.w	$abb0	; $a961
	dc.w	$aaf2	; $a963
	
	dc.w	$9a26	; $a965
	dc.w	$9834	; $a967
	dc.w	$9971	; $a969
	dc.w	$96ee	; $a96b
	dc.w	$97f5	; $a96d
	dc.w	$9a92	; $a96f
	dc.w	$9b40	; $a971
	dc.w	$967d	; $a973

jump_table_a975:
	dc.w	$a9bb	; $a975
	dc.w	$adaa	; $a977
	dc.w	$aea0	; $a979
	dc.w	$9a26	; $a97b

jump_table_a97d:
	dc.w	$a9bb	; $a97d
	dc.w	$adaa	; $a97f
	dc.w	$aea0	; $a981
	dc.w	$9a26	; $a983
jump_table_a985:
	dc.w	$a9bb	; $a985
	dc.w	$adaa	; $a987
	dc.w	$aea0	; $a989
	dc.w	$aeaa	; $a98b
	dc.w	$9a26	; $a98d
jump_table_a98f:
	dc.w	$a9bb	; $a98f
	dc.w	$adaa	; $a991
	dc.w	$aea0	; $a993
	dc.w	$aeaa	; $a995
	dc.w	$9a26	; $a997
	
jump_table_a999:
	dc.w	$a9bb	; $a999
	dc.w	$ace4	; $a99b
	dc.w	$9971	; $a99d
	dc.w	$9834	; $a99f
	dc.w	$ae38	; $a9a1
	dc.w	$aaf2	; $a9a3
jump_table_a9a5:
	dc.w	$a9bb	; $a9a5
	dc.w	$9971	; $a9a7
	dc.w	$9834	; $a9a9
	dc.w	$9a26	; $a9ab
	dc.w	$aaf2	; $a9ad
	dc.w	$ace4	; $a9af
jump_table_a9b1:
	dc.w	$a9bb	; $a9b1
	dc.w	$ae42	; $a9b3
	dc.w	$ae42	; $a9b5
	dc.w	$ae42	; $a9b7
	dc.w	$9633	; $a9b9
