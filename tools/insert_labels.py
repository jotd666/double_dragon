# this script was used once to scan the detected jump table and add filler FFFF
# when needed to make sure that we don't overshoot, because some tables have "holes"
# in them (impossible values) followed by legit jumps. If we miss that, the code can select
# another jump in another table, making the bug difficult to find (happened more than once!)

import pathlib,re

labels = """84ec
d50d
f900
f90a
f914
f91e
f928
f932
f93c
f946
fa00
fa70
fa80
fab8
fb00
fb44
fb4e
fb58
fb62
fb6c
fb76
fb8a
fb94
fb9e
fba8
fc00
fc0a
fc1e
fc50
fc78
fdc8
fde2
fe20
fe23
fe30
fe33
fe36
fe64
ff10
ffab
ffb5
ffc9
ffd3
""".split()
labels = {int(x,16) for x in labels}

lab_re = re.compile("l_(\w+)")
offset_re = re.compile("^([0-9A-F]{4}):")

def process(asm_file):
    with open(asm_file) as f:
        asm_lines = f.readlines()


    for i,line in enumerate(asm_lines):
        m = offset_re.match(line)
        if m:
            computed_offset = int(m.group(1),16)
            if computed_offset in labels:
                if asm_lines[i-1].startswith("l_"):
                    pass
                else:
                    asm_lines[i-1] += f"l_{computed_offset:04x}:\n"

    with open(asm_file.stem + "_new.asm","w") as f:
        f.writelines(asm_lines)

process(pathlib.Path("../src/maincpu_8000.asm"))
