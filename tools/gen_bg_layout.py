import bitplanelib
# convert Double Dragon screen addresses to
# Ghosts'N'Goblins screen addresses, so the layout matches the existing
# scrolling routines
qt = [(0,0),(1,0),(0,1),(1,1)]
dd_to_gng_table = []
gng_to_dd_table = [0]*0x400
for address in range(0,0x800,2):
    quadrant = address >> 9
    screen_address = address & 0x1FF
    x = ((screen_address//2) & 0x0F)
    y = (screen_address // 0x20)
    qsx,qsy = qt[quadrant]
    x += qsx*16
    y += qsy*16
    # now create the gng address
    gng_address = y + 0x20*x
    dd_to_gng_table.append(gng_address)
    gng_to_dd_table[gng_address] = address

with open("../src/amiga/bg_conv_layout.68k","w") as f:
    f.write("dd2gng_table:\n")
    bitplanelib.dump_asm_bytes(dd_to_gng_table,f,True,0x20,2)
    f.write("gng2dd_table:\n")
    bitplanelib.dump_asm_bytes(gng_to_dd_table,f,True,0x20,2)
