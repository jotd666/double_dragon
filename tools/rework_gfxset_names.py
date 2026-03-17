import glob,os,re,pathlib


gfx_dir = "../assets/sheets"

for sn,ttype in ((0,"fg_tiles"),(1,"sprites"),):
    outdir = pathlib.Path(gfx_dir) / ttype
    outdir.mkdir(exist_ok=True)

    orig_name = f"gfx dev 0 set {sn} tiles * colors 8 pal *.png"
    for file in glob.glob(os.path.join(gfx_dir,orig_name)):
        new_name = re.sub(".* pal ","pal_",os.path.basename(file))
        os.rename(file,outdir / new_name)