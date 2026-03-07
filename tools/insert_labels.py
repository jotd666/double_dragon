# this script was used once to scan the detected jump table and add filler FFFF
# when needed to make sure that we don't overshoot, because some tables have "holes"
# in them (impossible values) followed by legit jumps. If we miss that, the code can select
# another jump in another table, making the bug difficult to find (happened more than once!)

import pathlib,re

labels = """lb0_41c9
lb0_41bf
lb0_41e3
lb0_41bf
lb0_41d6
lb0_41bf
lb0_4213
lb0_41f0
lb0_42b4
lb0_42b4
lb3_6c00
lb0_41c9
lb0_41bf
lb0_44cd
lb0_42b4
lb0_41d6
lb0_41bf
lb0_4213
lb0_41f0
lb0_41e3
lb0_41bf
lb0_49a0
lb4_7803
lb4_7803
lb4_7803
lb4_7803
lb4_7803
lb4_7803
lb5_4045
lb5_4045
lb5_4045
lb5_4045
""".split()
labels = set(labels)
print(sorted(labels))
dddd
offset_re = re.compile("^([0-9A-F]{4}):")

def process(asm_file,bank_number):

    with open(asm_file) as f:
        asm_lines = f.readlines()

    if bank_number==-1:
        prefix = "l_"
    else:
        prefix = f"lb{bank_number}_"

    lab_re = re.compile(f"{prefix}(\w+)")
    for i,line in enumerate(asm_lines):
        m = offset_re.match(line)
        if m:
            computed_offset = f"{prefix}{m.group(1)}"
            if computed_offset in labels:
                if asm_lines[i-1].startswith(prefix):
                    pass
                else:
                    asm_lines[i-1] += f"{computed_offset}:\n"

    with open(asm_file.stem + "_new.asm","w") as f:
        f.writelines(asm_lines)

process(pathlib.Path("../src/maincpu_8000.asm"))
