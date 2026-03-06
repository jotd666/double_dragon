from shared import *

# post-conversion automatic patches, allowing not to change the asm file by hand



input_dict = {"system_1680":"read_system_inputs",
"in0_1681":"read_inputs_1",
"in1_1682":"read_inputs_2",
"audio_register_w_1500":"sound_start",
"sh_irqtrigger_w_1481":"",
}

def get_line_address(line):
    try:
        toks = line.split("|")
        address = toks[1].strip(" [$").split(":")[0]
        return int(address,16)
    except (ValueError,IndexError):
        return None


#
# various dirty but at least automatic patches applying on the specific track and field code
with open(source_dir / "conv.s") as f:
    lines = list(f)

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

        if "check explicit S usage" in line or "review stack set from register" in line:
            # remove the errors. Game seems to use a clean automatic variables allocation
            line = ""
        elif "review pshu instruction" in line or "review pulu instruction" in line:
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