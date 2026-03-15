from PIL import Image,ImageOps
import os


this_dir = os.path.dirname(os.path.abspath(__file__))

tilesdir = os.path.join(this_dir,os.pardir,"sheets","bg_tiles","level_1")

with open(r"bgtiles","rb") as f:
#with open(r"K:\Emulation\MAME\fg_tiles","rb") as f:
    contents = f.read()


side = 8

blank_image = Image.new("RGB",(side,side))



def load_tileset(image_name,side,dump_prefix=""):
    full_image_path = os.path.join(tilesdir,image_name)
    print(f"loading tileset {full_image_path}")
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

max_clut = 8
ts_title_list = [load_tileset(f"pal_{p:02x}.png",16) for p in range(max_clut)]
layer = Image.new("RGB",(512,512))

m_bgvideoram = contents

used_cluts = set()
used_tiles = set()

##TILE_GET_INFO_MEMBER(ddragon_state::get_bg_tile_info)
##{
##    tile_index <<= 1;
##    uint8_t const attr = m_bgvideoram[tile_index];
##    tileinfo.set(2,
##            m_bgvideoram[tile_index | 1] | ((attr & 0x07) << 8),
##            (attr >> 3) & 0x07,
##            TILE_FLIPYX((attr & 0xc0) >> 6));
##}


qt = [(0,0),(1,0),(0,1),(1,1)]
for address in range(0,0x800,2):
    quadrant = address >> 9
    screen_address = address & 0x1FF
    x = ((screen_address//2) & 0x0F)*16
    y = (screen_address // 0x20)*16
    qsx,qsy = qt[quadrant]
    x += qsx*256
    y += qsy*256

    attr = m_bgvideoram[address]
    tile_code = (m_bgvideoram[address+1] + ((attr & 0x7) << 8))
    tile_color = (attr >> 3) & 0x7
    used_cluts.add(tile_color)
    used_tiles.add(tile_code)

    if tile_color >= max_clut:
        tile_color = max_clut-1

    sheet = ts_title_list[tile_color]
    img = sheet[tile_code]

    if tile_code:
        print(f"code={tile_code:04x},{x},{y}")
    layer.paste(img,box=(x,y))

layer.save("bg.png")








