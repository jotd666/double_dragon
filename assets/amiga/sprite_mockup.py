from PIL import Image,ImageOps
import os

import shared

sprite_names = shared.get_sprite_names()

this_dir = os.path.dirname(os.path.abspath(__file__))

tilesdir = os.path.join(this_dir,os.pardir,"sheets","sprites")

mono_clut = True

def get_transformed(img,flipx,flipy):
    if flipx:
        img = ImageOps.mirror(img)
    elif flipy:
        img = ImageOps.flip(img)
    return img

def doit(binname):
    with open(os.path.join(this_dir,binname),"rb") as f:
        contents = f.read()


    side = 16
    transparent = (254,254,254)  # not possible to get it in the game

    blank_image = Image.new("RGB",(side,side))
    for i in range(side):
        for j in range(side):
            blank_image.putpixel((i,j),transparent)


    def load_tileset(image_name,side,dump_prefix=""):
        full_image_path = os.path.join(tilesdir,image_name)
        print(f"loading {image_name}")
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

    ts_title_list = [load_tileset(f"pal_{p:02x}.png",16) for p in range(1 if mono_clut else 8)]
    layer = Image.new("RGB",(256,256))

    src = contents

    used_sprites = set()

    for i in range(0,len(src),5):
        attr = src[i + 1]
        if (attr & 0x80): # visible

            sx = 240 - src[i + 4] + ((attr & 2) << 7)
            sy = 232 - src[i + 0] + ((attr & 1) << 8)
            size = (attr & 0x30) >> 4
            flipx = attr & 8
            flipy = attr & 4
            dx = -16
            dy = -16
            color = src[i + 2] >> 4
            which = src[i + 3] | ((src[i + 2] & 0x0f) << 8)

            #which &= 0x100-size-1;

            if mono_clut:
                color = 0
            sheet = ts_title_list[color]

            img = sheet[which]
            img = get_transformed(img,flipx,flipy)

            name = sprite_names.get(which,"unknown")
            if name=="garage_door":
                continue
            print(f"offset={i:04x}, code={which:03x}, color={color}, name={name}, x={sx}, y={sy}, size={size}")
            if size==0:
                layer.paste(img,box=(sx,sy))
            elif size==1:
                # double Y
                layer.paste(img,box=(sx,sy+dy))
                img = get_transformed(sheet[which+1],flipx,flipy)
                layer.paste(img,box=(sx,sy))
            elif size==2:
                # double X
                layer.paste(img,box=(sx+dx,sy))
                img = get_transformed(sheet[which+2],flipx,flipy)
                layer.paste(img,box=(sx,sy))
            elif size==3:
                # double X & Y
                layer.paste(img,box=(sx+dx,sy+dy))
                img = get_transformed(sheet[which+1],flipx,flipy)
                layer.paste(img,box=(sx+dx,sy))
                img = get_transformed(sheet[which+2],flipx,flipy)
                layer.paste(img,box=(sx,sy+dy))
                img = get_transformed(sheet[which+3],flipx,flipy)
                layer.paste(img,box=(sx,sy))



    layer.save(f"{binname}.png")

doit("sprites_amiga_2")






