import os,re,pathlib,json
import collections

instruction_re = re.compile("bank=(\d) (\w{4}): (.*)")

mame_dir = pathlib.Path(r"K:\Emulation\MAME")

def get_trace(tn):
    pcs = collections.Counter()
    with open(mame_dir / tn,"r") as f:
        nb_inst = 0
        for line in f:
            m = instruction_re.match(line)
            if m:
                nb_inst += 1
                pc = int(m.group(2),16)
                bank_number = int(m.group(1))
                instruction = m.group(3)
                pcs[pc,bank_number,instruction] += 1

    return pcs


# generated using 2 log commands, one to record current bank switch, one to record current PC + bank:
# wpset 3808:maincpu,1,W,,{temp0=(wpdata & 0xe0) >> 5;g}
# trace mame.tr,,noloop,{tracelog "bank=%d ",temp0}

#
# note: sub cpu log has a bug: trace won't consider tracelog instruction if "sub" is specified. So instead, break into subcpu
# then use trace on current cpu

print("reading MAME trace file...")

pcs = get_trace("mame.tr")

avoid_pc = {0x83eb,0X83ef,0x83ed}
outdir = pathlib.Path("trace_out")
outdir.mkdir(exist_ok=True)

g = collections.defaultdict(list)
for (pc,bank_number,instruction),count in pcs.items():
    # dispatch in files
    if pc in avoid_pc:
        continue
    if 0x4000 <= pc <= 0x8000:
        pass
    else:
        bank_number = "main"

    key = f"trace_{bank_number}.tr"
    g[key].append((pc,instruction,count))

for filename,data in g.items():
    with open(outdir / filename,"w") as f:
        for (pc,instruction,count) in data:
            line = f"{pc:04X}: {instruction}\n"
            for c in range(count):
                f.write(line)

##minval = 2896   # RTI instruction is the min
##maxval = 10000
##
##filtered = {str(k):v for k,v in pcs.items() if maxval > v > minval}
##filtered_inv = sorted({v:k for k,v in filtered.items()}.items(),reverse=True)[:20]
##
##
##print(json.dumps(filtered,indent=2))
##print("*** top 20 ***")
##for d in filtered_inv:
##    print(d)
##

