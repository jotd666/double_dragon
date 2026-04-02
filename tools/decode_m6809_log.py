from shared import *

pcs = load_amiga_log(r"..\data\cpu_log","amiga.tr")  # ,avoid_regs = "yu")

# subcpu:  trace mame.tr,,noloop,{tracelog "A=%02X, B=%02X, D=%02X%02X, X=%04X, Y=FFFF, U=FFFF ",a,b,a,b,x}
# maincpu: trace mame.tr,,noloop,{tracelog "A=%02X, B=%02X, D=%04X, X=%04X, Y=%04X, U=%04X ",a,b,d,x,y,u}
load_mame_log(r"K:\Emulation\MAME\mame.tr","mame.tr",pcs)

