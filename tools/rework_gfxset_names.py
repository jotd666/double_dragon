import glob,os,re,pathlib,bitplanelib
from PIL import Image

adjust_magenta = True
gfx_dir = "../assets/sheets"

for sn,ttype in ((0,"fg_tiles"),(1,"sprites"),):
    outdir = pathlib.Path(gfx_dir) / ttype
    outdir.mkdir(exist_ok=True)

    orig_name = f"gfx dev 0 set {sn} tiles * colors 8 pal *.png"
    for file in glob.glob(os.path.join(gfx_dir,orig_name)):
        new_name = re.sub(".* pal ","pal_",os.path.basename(file))
        if adjust_magenta:
            img = Image.open(file)
            for x in range(img.size[0]):
                for y in range(img.size[1]):
                    p = img.getpixel((x,y))
                    if p == (255,0,255):
                        p = (254,0,254)
                        img.putpixel((x,y),p)
            img.save(outdir / new_name)
        else:
            os.rename(file,outdir / new_name)