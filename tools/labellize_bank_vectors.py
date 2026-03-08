import pathlib, re

# insert vector tables for banks that have vector tables (jump tower at $4000)
lablist=[[] for i in range(6)]
labre = re.compile("([0-9A-F]{4}):")
for i in range(0,6):
    file = pathlib.Path(f"../src/maincpu_bank{i}.asm")
    if file.exists():
        fout = file.name
        vecs=True
        prev_line = ""
        with open(file) as fr, open(fout,"w") as fw:
            for line in fr:
                m = labre.match(line)
                if m:
                    if "JMP" in line and vecs:
                        offset = m.group(1).lower()
                        lab = f"lb{i}_{offset}"
                        lablist[i].append(lab)
                        if ":" not in prev_line:
                            line = f"{lab}:\n"+line
                    else:
                        vecs = False
                fw.write(line)
                prev_line = line
