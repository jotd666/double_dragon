import re,pathlib

# post-conversion automatic patches, allowing not to change the asm file by hand
tablere = re.compile("move.w\t#(\w*table_....),d(.)")
jmpre = re.compile("(j..)\s+\[a,(.)\]")
dreg_dict = {'a':'d0','b':'d1'}
areg_dict = {'x':'a2','y':'a3','u':'a4'}
bank_re = re.compile("\|.*\[banks=([^\]]*)]")
jtre = re.compile("#jump_table_(\w+)")



input_dict = {"bankswitch_3808":"set_bank",
"irq_ack_380d":"",
"nmi_ack_380b":"",
"firq_ack_380c":"",
}


def remove_instruction(lines,i):
    return change_instruction("",lines,i)

def remove_continuing_lines(lines,i):
    for j in range(i+1,i+4):
        if "[...]" in lines[j]:
            lines[j] = ""
        else:
            break

def remove_error(line):
    if "ERROR" in line:
        return ""
    else:
        raise Exception(f"No ERROR to remove in {line}")

def change_instruction(code,lines,i):
    line = lines[i]
    toks = line.split("|")
    if len(toks)==2:
        toks[0] = f"\t{code}"
        remove_continuing_lines(lines,i)
        return " | ".join(toks)
    return line

def remove_code(pattern,lines,i):
    if pattern in lines[i]:
        lines[i] = remove_instruction(lines,i)
        remove_continuing_lines(lines,i)
    return lines[i]

def process_jump_table(line):
    m = jtre.search(line)
    if m:
        # move.w  #jump_table...,dX => lea jump_table...,aX works as X ranges from 2 to 4
        # in debug mode, leave register address
        line2 = line.replace("jump_table_","0x")
        line = f"""\t.ifndef\tRELEASE
{line2}\t.endif
""" + line.replace("move.w\t#","lea\t").replace(",d",",a")

    if "indirect j" in line:
        # grab original code in comments, dirty but works as long as converter
        # presents it like this
        comment = line.split('|')[1]
        nb_entries = ""
        m = re.search("\[nb_entries=(\d+)",comment)
        if m:
            nb_entries = m.group(1)

        orig_inst = line.split(":")[1].split("]")[0].replace('[','')
        # parse code: Jxx [R1,R2], R1 = A or B, R2 = X,Y,U
        toks = orig_inst.split()

        dreg,areg = toks[1].split(",")

        areg = areg_dict[areg]
        line = remove_error(line)
        macro = f"{toks[0].upper()}_{dreg.upper()}_INDEXED"
        line = f"""\t{macro}\t{areg},{nb_entries}  |{comment}
"""
    return line

def subt(m):
    tn = m.group(1)
    rn = m.group(2)
    offset = tn.split("_")[-1]
    rval = f"""
\t.ifndef\tRELEASE
\tmove.w\t#0x{offset},d{rn}
\t.endif
\tlea\t{tn},a{rn}"""
    return rval

def handle_bank(line):
    # pre-add video_address tag if we find a store instruction to an explicit 3000-3FFF address
    if store_to_video.search(line):
        line = line.rstrip() + " [video_address]\n"
    # pre-add bank_address tag if we find a read instruction to an explicit 4000-5FFF address
    if access_bank.search(line):
        line = line.rstrip() + " [bank_address]\n"

    if "[bank_address" in line:
        # give me the original instruction
        line = line.replace("_ADDRESS","_BANK_ADDRESS")

    return line

def explicit_stack_usage(line):
    return "check explicit S usage" in line or "review stack set from register" in line
def get_line_address(line):
    try:
        toks = line.split("|")
        address = toks[1].strip(" [$").split(":")[0]
        return int(address,16)
    except (ValueError,IndexError):
        return None

def process_file(input_radix,output_radix,f_handle_line,global_symbols,out_header="",is_bank=False):
    main_globals = set()

    with open(source_dir / f"{input_radix}.s") as f:
        lines = [line for line in f if not explicit_stack_usage(line)]

        for i,line in enumerate(lines):
            # first the generic part
            if re.match("\w+\s*=\s*\w",line):
                equates.add(line)
                line = ""
            if "[global]" in line:
                label = line.split(":")[0]
                global_symbols.append(label)

            line = handle_bank(line)

            if "[6309_instruction]" in line:
                line = change_instruction("illegal",lines,i)  # TEMP TEMP we'll see when we reach that
            if "[bogus]" in line:
                line = change_instruction("illegal",lines,i)  # trace just in case we hit it
            if is_bank:
                # replace prefixes by normal prefixes, add to returned globals if range not in bank address
                # (easy to cheat with regex bank address 4xxx-7xxx)
                m = re.search("(lb\d_)([012389abcdef]...)",line,flags=re.I)
                if m:
                    prefix,offset = m.groups()
                    go = f"l_{offset}"
                    lo = f"{prefix}{offset}"
                    main_globals.add(go)
                    line = line.replace(lo,go)
            else:
                m = bank_re.search(line)
                if m:
                    banks=m.group(1).split(",")
                    banks = [int(x) for x in banks if x]
                    # change the JSR/JMP by a Jxx_BANK: that solves the unsatified symbols
                    # and directs to the proper bank according to current bank
                    toks = line.split("|")
                    insts = toks[0].split()
                    inst = "SR" if insts[0]=="jbsr" else "MP"
                    operand = insts[1]

                    bank_array = ["0"]*6
                    for b in banks:
                        bank_array[b] = "1"
                    bank_slots = ",".join(bank_array)

                    if operand.startswith("l_"):
                        # anonymous operand
                        address = int(operand.split("_")[1],16)
                        if len(banks)==1:
                            # only 1 bank: no need for switch, just change label by proper lbx_
                            new_operand = f"lb{banks[0]}_{address:04x}"
                            line = line.replace(operand,new_operand)
                        else:
                            toks[0] = f"\tJ{inst}_BANK\t{address:04x},{bank_slots}\t"
                            line = "|".join(toks)
                    else:
                        # is it useful to name those addresses? a comment would do
                        raise Exception(f"unsupported named bank address {operand}")

            # pre-add video_address tag if we find a store instruction to an explicit 3000-3FFF address
            if store_to_video.search(line):
                line = line.rstrip() + " [video_address]\n"

            if "[unchecked_address" in line:
                # give me the original instruction
                line = line.replace("_ADDRESS","_UNCHECKED_ADDRESS")
            elif "[video_address" in line:
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

            if "GET_ADDRESS" in line:
                val = line.split()[1]
                osd_call = input_dict.get(val)
                if osd_call is not None:
                    if osd_call:
                        if " stb " in line:
                            exg = "\texg\td0,d1\n"
                        else:
                            exg = ""
                        line = exg+change_instruction(f"jbsr\tosd_{osd_call}",lines,i)+exg
                    else:
                        line = remove_instruction(lines,i)
                    lines[i+1] = remove_instruction(lines,i+1)
            line = re.sub(tablere,subt,line)

            address = get_line_address(line)
            line = process_jump_table(line)

            lines[i] = line

            # now the specific part
            f_handle_line(address,lines,i)

        # make the line number correct
        lines = "".join(lines).splitlines(True)
        for i,line in enumerate(lines,out_header.count("\n")+2+len(global_symbols)):
            if line.lstrip().startswith("ERROR"):
                print(i,line,end="")

    with open(source_dir / f"{output_radix}.68k","w") as fw:
        fw.write('\t.include\t"data.inc"\n')
        fw.write(out_header)
        for g in global_symbols:
            fw.write(f"\t.global\t{g}\n")
        fw.writelines(lines)
    return main_globals

#    map(0x1800, 0x1fff).ram().w(FUNC(ddragon_state::fgvideoram_w)).share(m_fgvideoram);
#    map(0x3000, 0x37ff).ram().w(FUNC(ddragon_state::bgvideoram_w)).share(m_bgvideoram);

store_to_video = re.compile("GET_ADDRESS\s+0x((3[0-7])|(1[8-F]))",flags=re.I)
access_bank = re.compile("GET_ADDRESS\s+0x[4-7]\w\w\w",flags=re.I)

equates = set()

this_dir = pathlib.Path(__file__).absolute().parent

source_dir = this_dir / "../src"
