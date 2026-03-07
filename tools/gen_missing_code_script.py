# take the list of undefined symbols and write a MAME debug script to execute in MAME
# that will disassemble the various banks at missing entrypoints
undefs = [[] for i in range(6)]
bank_entries = set()

with open("../src/undefs_todo.txt") as f:
    for line in f:
        if line.startswith("lb"):
            bank = int(line[2])
            undefs[bank].append(line[4:].strip())
        elif line.startswith("l_"):
            address = int(line[2:].strip(),16)
            if 0x4000 <= address < 0x8000:
                bank_entries.add(address)
with open(r"K:\Emulation\MAME\bd","w") as f:
    f.write("bpclear\nwpclear\n")
##    for bankno,undef in enumerate(undefs):
##        f.write(f"fill 3808:maincpu,1,{bankno}<<5\n")
##        for u in undef:
##            f.write(f"dasm dump/{bankno}_{u}.asm,${u},30\n")
    #f.write('wpset 3808,1,W,,{printf "bankswitch %d",wpdata>>5; temp0=wpdata;g}\n')
    f.write('wpset 3808,1,W,,{temp0=wpdata>>5;g}\n')   # memorize bandwitch write
    for b in bank_entries:
        # generate the label that we need to locate in the bank
        f.write(f'bpset {b:04x},,{{logerror "lb%d_%04x\\n",temp0,PC;g}}\n')