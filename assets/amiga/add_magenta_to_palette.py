import pathlib

mame_dir = pathlib.Path(r"K:\Emulation\MAME")

# save sprites palette: save palette_1080,$1080,$300
with open(mame_dir / "palette_1080","rb") as f:
    contents = f.read()

out = bytearray(contents)
for i in range(0,0x80):
    if i%0x10==0:
        # change background of all sprites to magenta
        rg = contents[i]
        b = contents[i+0x200]
        if rg == b == 0:
            b = rg = 0xF

            out[i]=rg
            out[i+0x200]=b

with open(mame_dir / "palette_1080_magenta","wb") as f:
    f.write(out)
#load palette_1080_magenta,$1080