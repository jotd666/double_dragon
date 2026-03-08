from shared import *

# post-conversion automatic patches, allowing not to change the asm file by hand



input_dict = {"system_1680":"read_system_inputs",
"in0_1681":"read_inputs_1",
"in1_1682":"read_inputs_2",
"audio_register_w_1500":"sound_start",
"sh_irqtrigger_w_1481":"",
}


process_main = True
process_bank_0 = 1
process_bank_1 = 1

process_bank_3 = 1
process_bank_4 = 1
process_bank_5 = 1

def f_handle_bank0_line(address,lines,i):
    line = lines[i]
    ### specific file patches
    if address in {0x420A,0x5bc9,0x5bd5,0x6a61,0x6a6e,0x6e71,0x6e78} and "GET_REG_ADDRESS" in line:
        # okay to pshu/pulu in all cases (except fake instructions so thanks review flags!!!)
        lines[i-1] = remove_error(lines[i-1])
    elif address == 0x420C and "GET_REG_ADDRESS" in line:
        # okay to pshu
        lines[i-1] = ""  # useless MAKE_D
        lines[i-2] = remove_error(lines[i-2])
    elif address == 0x4375:
        lines[i-1],line = line,lines[i-1]  # swap lines so carry is correct
        lines[i+2] = remove_error(lines[i+2])
    elif address == 0x497f:
        lines[i+1] += "\tscs\td6  | save carry as d6\n"
    elif address == 0x4983:
        line = "\ttst.b\td6\n"+change_instruction("jeq\tlb0_4987",lines,i)
        lines[i+1] = remove_error(lines[i+1])

    # fix imbricated Z and C test (could have missed that one!!)
    elif address == 0x62ae:
        line = "\tscs\td6\n"+line
    elif address == 0x62b4:
        line = "\ttst.b\td6\n"+change_instruction("jne\tlb0_633a",lines,i)
    elif address == 0x62ba:
        line = "\ttst.b\td6\n"+change_instruction("jeq\tlb0_633a",lines,i)
        lines[i+1] = remove_error(lines[i+1])
    elif address == 0x6d91:
        # routine takes carry as input (returned in previous funcall)
        lines[i+1] = remove_error(lines[i+1])
    elif address == 0x42ff:
        line = "\ttst.b\td6\n"+change_instruction("jeq\tlb0_430e",lines,i)
        lines[i+1] = remove_error(lines[i+1])
    elif address == 0x42f8:
        lines[i+2] += "\tscs\td6  | save carry as d6\n"
    ### replace current line
    lines[i] = line

def f_handle_bank1_line(address,lines,i):
    line = lines[i]
    # specific file patches
    if address in {0x5301} and "GET_REG_ADDRESS" in line:
        # okay to pshu/pulu in all cases (except fake instructions so thanks review flags!!!)
        lines[i-1] = remove_error(lines[i-1])
    elif address == 0x5bb3:
        lines[i+1] = remove_error(lines[i+1])
    elif address == 0x60fc and "GET_REG_ADDRESS" in line:
        # okay to pshu
        lines[i-1] = ""  # useless MAKE_D
        lines[i-2] = remove_error(lines[i-2])
    elif address == 0x6ccf:
        # jcs => jra as jcc was handled above and C is not supposed to change
        line = change_instruction("jra\tlb1_6d15",lines,i)
        lines[i+1] = remove_error(lines[i+1])
    elif address == 0x6113:
        lines[i+2] = remove_error(lines[i+2])
        # swap lines to preserve comparison result
        lines[i+1],lines[i+3] = lines[i+3],lines[i+1]
    elif address == 0x5ba0:
        lines[i+2] = remove_error(lines[i+2])

    lines[i] = line


def f_handle_bank3_line(address,lines,i):
    line = lines[i]
    if address == 0x6c9a:
        line = remove_instruction(lines,i)  # useless cmp
        lines[i+2] = remove_error(lines[i+2])
        # we removed the cmp, and optimizer removed the load for  $47,x
        # make up for this and gain a few cycles
        lines[i+3] = change_instruction("move.b\td0,(2,a0)",lines,i+3)
    lines[i] = line

def f_handle_bank4_line(address,lines,i):
    line = lines[i]
    # specific file patches
    if address == 0x4361:
        # fix abusive alternate direct jump
        line = change_instruction("jra\tlb4_4470",lines,i)
    elif address == 0X435e:
        # fix abusive alternate direct jump
        line = change_instruction("jra\tlb4_442f",lines,i)

    elif address in [0x446e,0x442d]:
        # remove useless jra to next instruction
        line = remove_instruction(lines,i)
    elif address == 0x452b:
        # temp illegal
        line = '\tBREAKPOINT "figure it out!!"\n'
    lines[i] = line

def f_handle_bank5_line(address,lines,i):
    line = lines[i]
    if "review pshu instruction" in line or "review pulu instruction" in line:
        # remove the errors. this is to save variables in alt stack while S is used
        # but on 68000 we use native stack for this, and target stack for S variables
        line = ""
    if address == 0x6cd1:
        # jcc has been handled above
        line = change_instruction("jra\tlb5_6d17",lines,i)
        lines[i+1] = remove_error(lines[i+1])
    lines[i] = line

def f_handle_main_line(address,lines,i):
    line = lines[i]
    if "review pshu instruction" in line or "review pulu instruction" in line:
        # remove the errors. this is to save variables in alt stack while S is used
        # but on 68000 we use native stack for this, and target stack for S variables
        line = ""

    if address in {0xa583}:
        lines[i+1] = remove_error(lines[i+1])

    if "review stray bcc/bcs test" in line:
        # check if it's not jbsr+jcc
        if "jbsr" in lines[i-2]:
            line = remove_error(line)       # jbsr+jcc test


    if address == 0xe65e:
        line = "\tPUSH_SR\n"+line
    elif address == 0xe660:
        line = "\tPOP_SR\n"+line
        lines[i+1] = remove_error(lines[i+1])
    elif address == 0xA91D:
        # fix double jump table
        line = change_instruction("lea\ttable_of_jump_tables_a92d,a3",lines,i)
    elif address in {0xA921,0xafd5}:
        line = "\tand.w\t#0xFF,d0\n\tadd.w\td0,d0\n"+change_instruction("move.l\t(a3,d0.w),a3",lines,i)
    elif address == 0xafd1:
        # fix double jump table
        line = change_instruction("lea\ttable_of_jump_tables_afe1,a3",lines,i)
    elif address == 0x91fa:
        line = remove_instruction(lines,i)
        lines[i+1] = remove_error(lines[i+1])
    elif address in {0x8051,0x8A65}:
        # remove CC stuff (interrupt)
        line = remove_error(lines[i])
    elif address in {0xe1ab,0xe3a6}:
        # push to U => push to stack
        line = change_instruction("move.w\td2,-(sp)",lines,i)
    elif address in {0xe1b7,0xe3bc}:
        # pull from U => pull from stack
        line = change_instruction("move.w\t(sp)+,d2",lines,i)

    if "dsw1_1683" in line and "lda" in line:
        line = change_instruction("jbsr\tosd_read_dsw_1",lines,i)
    elif "dsw2_1600" in line and "lda" in line:
        line = change_instruction("jbsr\tosd_read_dsw_2",lines,i)

    if "multiply_ab" in line and "MAKE_D" in lines[i+1]:
        lines[i+1] = ""
##        if "tfr" in line and "POP_SR" in lines[i+1] and "PUSH_SR" in lines[i-1]:
##            # we don't need to save SR in this game when a TFR is done
##            lines[i-1] = ""
##            lines[i+1] = ""
##        if "rox" in line and "POP_SR" in lines[i-1] and "PUSH_SR" in lines[i-3]:
##            # we don't need to save SR as roxx uses X flag
##            lines[i-3] = ""
##            lines[i-1] = ""




    elif "flip_screen_set_1080" in line:
        line = remove_instruction(lines,i)
        remove_continuing_lines(lines,i)

    elif "irq_mask_w_1487" in line:
        # check next line
        next_line = lines[i+1]
        if "clr" in next_line:
            line = change_instruction("jbsr\tosd_disable_interrupts",lines,i)
        else:
            line = change_instruction("jbsr\tosd_enable_interrupts",lines,i)
            lines[i-1] = remove_instruction(lines,i-1)

    if "GET_ADDRESS" in line:
        val = line.split()[1]
        osd_call = input_dict.get(val)
        if osd_call is not None:
            if osd_call:
                line = change_instruction(f"jbsr\tosd_{osd_call}",lines,i)
            else:
                line = remove_instruction(lines,i)
            lines[i+1] = remove_instruction(lines,i+1)


    elif "unsupported instruction rti" in line:
        line = change_instruction("rts",lines,i)
    elif "unsupported instruction lds" in line:
        line = remove_instruction(lines,i)

    lines[i] = line

bankfuncs = [f_handle_bank0_line,f_handle_bank1_line,None,f_handle_bank3_line,f_handle_bank4_line,f_handle_bank5_line]

main_globals = set()

def process_bank_file(bankno,global_symbols=[],out_header=""):
    main_globals.update(process_file(f"conv_bank_{bankno}",f"maincpu_bank_{bankno}_4000",
                        bankfuncs[bankno],global_symbols,out_header,is_bank=True))

# various dirty but at least automatic patches applying on the specific DD code

if process_bank_0:
    process_bank_file(0,global_symbols=['lb0_41bf', 'lb0_41c9', 'lb0_41d6',
    'lb0_41e3', 'lb0_41f0', 'lb0_4213', 'lb0_42b4', 'lb0_44cd', 'lb0_49a0',
    'lb0_4000',  'lb0_4003',  'lb0_4006',  'lb0_4009',  'lb0_400c',  'lb0_400f',  'lb0_4012',
  'lb0_4015',  'lb0_4018',  'lb0_401b'])

if process_bank_1:
    process_bank_file(1,global_symbols=['lb1_4000',
  'lb1_4003',  'lb1_4006',  'lb1_4009',  'lb1_400c',  'lb1_400f',  'lb1_4012',  'lb1_4015',  'lb1_4018',
  'lb1_401b',  'lb1_401e',  'lb1_4021',  'lb1_4024',  'lb1_4027',  'lb1_402a',  'lb1_402d',  'lb1_4030',
  'lb1_4033',  'lb1_4036',  'lb1_4039',  'lb1_403c',  'lb1_403f',  'lb1_4042',  'lb1_4045',  'lb1_4048',
  'lb1_404b',  'lb1_404e',  'lb1_4051',  'lb1_4054',  'lb1_4057',  'lb1_405a',  'lb1_405d',  'lb1_4060',
  'lb1_4063',  'lb1_4066',  'lb1_4069',  'lb1_406c',  'lb1_406f',  'lb1_4072',  'lb1_4075',  'lb1_4078',
  'lb1_407b',  'lb1_407e',  'lb1_4081',  'lb1_4084',  'lb1_4087',  'lb1_408a',  'lb1_408d',  'lb1_4090',
  'lb1_4093',  'lb1_4096',  'lb1_4099',  'lb1_409c',  'lb1_409f',  'lb1_40a2',  'lb1_40a5',  'lb1_40a8',
  'lb1_40ab',  'lb1_40ae',  'lb1_40b1',  'lb1_40b4',  'lb1_40b7',  'lb1_40ba',  'lb1_40bd',  'lb1_40c0',
  'lb1_40c3',  'lb1_40c6',  'lb1_40c9',  'lb1_40cc',  'lb1_40cf',  'lb1_40d2',  'lb1_40d5',  'lb1_40d8',
  'lb1_40db',  'lb1_40de',  'lb1_40e1',  'lb1_40e4'])

if process_bank_3:
    process_bank_file(3,global_symbols=['lb3_6c00',  'lb3_6c03',  'lb3_6c06',  'lb3_6c09',  'lb3_6c0c',
  'lb3_6c0f',  'lb3_6c12',  'lb3_6c15',  'lb3_6c18',  'lb3_6c1b',  'lb3_6c1e'])

if process_bank_4:
    process_bank_file(4,global_symbols=["lb4_7803"])

if process_bank_5:
    process_bank_file(5,global_symbols=['lb5_4000',  'lb5_4003',  'lb5_4006',  'lb5_4009',  'lb5_400c',  'lb5_400f',  'lb5_4012',
  'lb5_4015',  'lb5_4018',  'lb5_401b',  'lb5_401e',  'lb5_4021',  'lb5_4024', 'lb5_4027',  'lb5_402a',  'lb5_402d',  'lb5_4030',
  'lb5_4033',  'lb5_4036',  'lb5_4039',  'lb5_403c',  'lb5_403f',  'lb5_4042',  'lb5_4045',  'lb5_4048',  'lb5_404b',  'lb5_404e',
  'lb5_4051',  'lb5_4054',  'lb5_4057',  'lb5_405a',  'lb5_405d',  'lb5_4060',  'lb5_4063',  'lb5_4066',  'lb5_4069',  'lb5_406c',
  'lb5_406f',  'lb5_4072',  'lb5_4075',  'lb5_4078',  'lb5_407b',  'lb5_407e',  'lb5_4081',  'lb5_4084',  'lb5_4087',  'lb5_408a',
  'lb5_408d',  'lb5_4090',  'lb5_4093',  'lb5_4096',  'lb5_4099',  'lb5_409c',  'lb5_409f',  'lb5_40a2',  'lb5_40a5',  'lb5_40a8',
  'lb5_40ab',  'lb5_40ae',  'lb5_40b1',  'lb5_40b4',  'lb5_40b7',  'lb5_40ba',  'lb5_40bd',  'lb5_40c0',  'lb5_40c3',  'lb5_40c6',
  'lb5_40c9',  'lb5_40cc',  'lb5_40cf',  'lb5_40d2',  'lb5_40d5',  'lb5_40d8',  'lb5_40db',  'lb5_40de',  'lb5_40e1',  'lb5_40e4',
  'lb5_40e7'])

if process_main:
    out_header = "l_ffff:\n\tillegal\nl_0000:\nillegal\n"
    process_file("conv","maincpu_8000",f_handle_main_line,["irq_8056","firq_8092","reset_8000"]+sorted(main_globals))


with open(source_dir / "data.inc","w") as fw:
    fw.writelines(sorted(equates))
