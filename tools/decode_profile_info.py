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
                pcs[m.groups()] += 1
    return pcs


# generated using 2 log commands, one to record current bank switch, one to record current PC + bank:
# wpset 3808:maincpu,1,W,,{temp0=(wpdata & 0xe0) >> 5;g}
# trace mame.tr,,noloop,{tracelog "bank=%d ",temp0}

#
# note: sub cpu log has a bug: trace won't consider tracelog instruction if "sub" is specified. So instead, break into subcpu
# then use trace on current cpu

print("reading MAME trace file...")

pcs = get_trace("mame.tr")

minval = 2896   # RTI instruction is the min
maxval = 10000

filtered = {str(k):v for k,v in pcs.items() if maxval > v > minval}
filtered_inv = sorted({v:k for k,v in filtered.items()}.items())[-10:]


print(json.dumps(filtered,indent=2))
print("*** top 10 ***")
print(json.dumps(filtered_inv,indent=2))

print