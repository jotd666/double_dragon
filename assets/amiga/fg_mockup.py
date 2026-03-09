from PIL import Image,ImageOps
import os


this_dir = os.path.dirname(os.path.abspath(__file__))

tilesdir = os.path.join(this_dir,os.pardir,"sheets","fg_tiles")

with open(r"C:\Users\Public\Documents\Amiga Files\WinUAE\fg_tiles","rb") as f:
#with open(r"K:\Emulation\MAME\fg_tiles","rb") as f:
    contents = f.read()


side = 8

blank_image = Image.new("RGB",(side,side))



def load_tileset(image_name,side,dump_prefix=""):
    full_image_path = os.path.join(tilesdir,image_name)
    tiles_1 = Image.open(full_image_path)
    nb_rows = tiles_1.size[1] // side
    nb_cols = tiles_1.size[0] // side

    dumpdir = "dumps"

    tileset_1 = []
    k=0
    for j in range(nb_rows):
        for i in range(nb_cols):
            img = Image.new("RGBA",(side,side))
            img.paste(tiles_1,(-i*side,-j*side))
            tileset_1.append(img)
            k += 1

    return tileset_1

ts_title_list = [load_tileset(f"pal_{p:02x}.png",8) for p in range(8)]
layer = Image.new("RGB",(256,256))

m_bgvideoram = contents

used_cluts = set()
used_tiles = set()

for address in range(0,0x800,2):
    x = ((address//2) & 0x3F)*8
    y = (address // 0x40)*8

    attr = m_bgvideoram[address]
    tile_code = (m_bgvideoram[address+1] + ((attr & 0x7) << 8))&0x3FF
    tile_color = attr >> 5
    used_cluts.add(tile_color)
    used_tiles.add(tile_code)

    sheet = ts_title_list[tile_color]
    img = sheet[tile_code]

    layer.paste(img,box=(x,y))

layer.save("bg.png")








