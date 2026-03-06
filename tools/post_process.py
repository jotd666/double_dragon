from shared import *

# post-conversion automatic patches, allowing not to change the asm file by hand



input_dict = {"system_1680":"read_system_inputs",
"in0_1681":"read_inputs_1",
"in1_1682":"read_inputs_2",
"audio_register_w_1500":"sound_start",
"sh_irqtrigger_w_1481":"",
}

def explicit_stack_usage(line):
    return "check explicit S usage" in line or "review stack set from register" in line
def get_line_address(line):
    try:
        toks = line.split("|")
        address = toks[1].strip(" [$").split(":")[0]
        return int(address,16)
    except (ValueError,IndexError):
        return None

process_main = False
process_bank_0 = False
process_bank_1 = True
process_bank_2 = False

#
# various dirty but at least automatic patches applying on the specific DD code
if process_main:
    with open(source_dir / "conv.s") as f:
        lines = [line for line in f if not explicit_stack_usage(line)]

        for i,line in enumerate(lines):
            if " = " in line:
                equates.append(line)
                line = ""

            # remove code for rom checks, watchdog, ...
            for p in ("[rom_check_code]","coin_counter"):
                line = remove_code(p,lines,i)

            # pre-add video_address tag if we find a store instruction to an explicit 3000-3FFF address
            if store_to_video.search(line):
                line = line.rstrip() + " [video_address]\n"

            if "[video_address" in line:
                # give me the original instruction
                line = line.replace("_ADDRESS","_UNCHECKED_ADDRESS")
                # if it's a write, insert a "VIDEO_DIRTY" macro after the write
                for j in range(i+1,len(lines)):
                    next_line = lines[j]
                    if "[...]" not in next_line:
                        break
                    if ",(a0)" in next_line or "clr" in next_line or "MOVE_W_FROM_REG" in next_line:
                        if any(x in next_line for x in ["address_word","MOVE_W_FROM_REG"]):
                            lines[j] = next_line+"\tVIDEO_WORD_DIRTY | [...]\n"
                        else:
                            lines[j] = next_line+"\tVIDEO_BYTE_DIRTY | [...]\n"
                        break


            line = re.sub(tablere,subt,line)

            address = get_line_address(line)
            line = process_jump_table(line)

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
    ##        elif "unsupported instruction andcc" in line:
    ##            line = change_instruction("CLR_XC_FLAGS",lines,i)

            if "ERROR" in line:
                print(line,end="")
            lines[i] = line




    with open(source_dir / "data.inc","w") as fw:
        fw.writelines(equates)

    with open(source_dir / "maincpu_8000.68k","w") as fw:
        fw.write("""\t.include "data.inc"
    \t.global\tirq_8056
    \t.global\tfirq_8092
    \t.global\treset_8000
    """)
        fw.writelines(lines)

if process_bank_0:
    with open(source_dir / "conv_bank_0.s") as f:
        # remove the errors. Game seems to use a clean automatic variables allocation
        lines = [line for line in f if not explicit_stack_usage(line)]

        for i,line in enumerate(lines):
            if " = " in line:
                equates.append(line)
                line = ""

            line = re.sub(tablere,subt,line)

            address = get_line_address(line)
            line = process_jump_table(line)


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

    with open(source_dir / "maincpu_bank_0_4000.68k","w") as fw:
        fw.write("""\t.include "data.inc"
    \t.global\tlb0_4000
    """)
        fw.writelines(lines)

if process_bank_2:
    with open(source_dir / "conv_bank_2.s") as f:
        lines = [line for line in f if not explicit_stack_usage(line)]

        for i,line in enumerate(lines):
            if " = " in line:
                equates.append(line)
                line = ""

            line = re.sub(tablere,subt,line)

            address = get_line_address(line)
            line = process_jump_table(line)


            # specific file patches
            if address == 0x4361:
                # fix abusive alternate direct jump
                line = change_instruction("jra\tlb2_4470",lines,i)
            elif address == 0X435e:
                # fix abusive alternate direct jump
                line = change_instruction("jra\tlb2_442f",lines,i)

            elif address in [0x446e,0x442d]:
                # remove useless jra to next instruction
                line = remove_instruction(lines,i)
            elif address == 0x452b:
                # temp illegal
                line = '\tBREAKPOINT "figure it out!!"\n'
            # replace current line
            lines[i] = line

    with open(source_dir / "maincpu_bank_2_4000.68k","w") as fw:
        fw.write("""\t.include "data.inc"
    \t.global\tlb2_4000
    """)
        fw.writelines(lines)
