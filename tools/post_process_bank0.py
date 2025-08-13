from shared import *


# various dirty but at least automatic patches applying on the specific track and field code
with open(source_dir / "conv_bank_0.s") as f:
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

        if "multiply_ab" in line and "MAKE_D" in lines[i+1]:
            lines[i+1] = ""


        elif "unsupported instruction rti" in line:
            line = change_instruction("rts",lines,i)
        elif "unsupported instruction lds" in line:
            line = remove_instruction(lines,i)
##        elif "unsupported instruction andcc" in line:
##            line = change_instruction("CLR_XC_FLAGS",lines,i)
        elif "jump_table" in line:
            m = jmpre.search(line)
            if m:
                inst = m.group(1).upper()
                reg = {"x":"A2","y":"A3","u":"A4"}[m.group(2)]
                rest = re.sub(".*\"","",line)
                line = f"\t{inst}_A_INDEXED\t{reg}{rest}"
        if "ERROR" in line:
            print(line,end="")
        lines[i] = line




with open(source_dir / "data_bank_0.inc","w") as fw:
    fw.writelines(equates)

with open(source_dir / "maincpu_bank_0.68k","w") as fw:
    fw.write("""\t.include "double_dragon.inc"
.include "databank_0.inc"
\t.global\tirq_44f5
\t.global\treset_4000
""")
    fw.writelines(lines)