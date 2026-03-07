# take the list of undefined symbols and write a MAME debug script to execute in MAME
# that will disassemble the various banks at missing entrypoints
undefs = [[] for i in range(6)]
with open("../src/undefs_todo.txt") as f:
    for line in f:
        if line.startswith("lb"):
            bank = int(line[2])
            undefs[bank].append(line[4:].strip())

with open(r"K:\Emulation\MAME\bd","w") as f:
    for bankno,undef in enumerate(undefs):
        f.write(f"fill 3808:maincpu,1,{bankno}<<5\n")
        for u in undef:
            f.write(f"dasm dump/{bankno}_{u}.asm,${u},30\n")
