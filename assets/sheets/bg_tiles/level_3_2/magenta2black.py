from PIL import Image,ImageOps
import pathlib

# MAME gfx save edition is cool but cannot differentiate background color from black.
# this is pretty f**ing annoying, fortunately, there's always a CLUT in the set which makes the difference
# here it's monochrome palette index 0xD that saves us.

# here there's actually no problem, as there are no real black color used for sprites
# dark colors are (0,17,0) and (17,0,17)

this_dir = pathlib.Path(__file__).absolute().parent

dst_sprite_dir = this_dir
src_sprite_dir = dst_sprite_dir

red_pixels = set()

for i in range(8):
    imgname = f"pal_{i:02X}.png"
    src = src_sprite_dir / imgname
    dst = dst_sprite_dir / imgname

    src_image = Image.open(src)
    dst_image = Image.new("RGB",src_image.size)
    for x in range(src_image.size[0]):
        for y in range(src_image.size[1]):
            p = src_image.getpixel((x,y))
            if p == (254,0,254):
                # black: what do do?
                if (x,y) in red_pixels:
                    pass
                else:
                    p = (0,0,0)  # black => magenta but not full magenta to avoid conflicts
            dst_image.putpixel((x,y),p)

    dst_image.save(dst)
