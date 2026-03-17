from PIL import Image,ImageOps
import os,sys,bitplanelib,subprocess,json,pathlib

this_dir = pathlib.Path(__file__).absolute().parent

data_dir = this_dir / ".." / ".." / "data"


src_dir = this_dir / ".." / ".." / "src" / "amiga"
bank_dir = src_dir / "banks"
bank_dir.mkdir(exist_ok=True)

sheets_path = this_dir / ".." / "sheets"
dump_dir = this_dir / "dumps"

used_sprite_cluts_file = this_dir / "used_sprite_cluts.json"
fg_used_tile_cluts_file = this_dir / "fg_used_tile_cluts.json"
used_graphics_dir = this_dir / "used_graphics"

SPRITE_NB_TILES = 0x1000
FG_NB_TILES = 0x400
FG_NB_CLUTS = 8
BG_NB_TILES = 0x800
BG_NB_CLUTS = 8
SPRITE_NB_CLUTS = 8

def dump_asm_bytes(*args,**kwargs):
    bitplanelib.dump_asm_bytes(*args,**kwargs,mit_format=True)

def palette_pad(palette,pad_nb):
    palette += (pad_nb-len(palette)) * [(0x10,0x20,0x30)]

def dump_plane_cache(f,prefix,plane_cache):
    for k,v in plane_cache.items():
        f.write(f"{prefix}_{v:02d}:")
        dump_asm_bytes(k,f)

def split_bitplane_data(bitplane_data,actual_nb_planes,cache,width,height,y_start,next_cache_id):
    plane_size = len(bitplane_data) // actual_nb_planes
    bitplane_plane_ids = []
    for j in range(actual_nb_planes):
        offset = j*plane_size
        bitplane = bitplane_data[offset:offset+plane_size]

        cache_id = cache.get(bitplane)
        if cache_id is not None:
            bitplane_plane_ids.append(cache_id)
        else:
            if any(bitplane):
                cache[bitplane] = next_cache_id
                bitplane_plane_ids.append(next_cache_id)
                next_cache_id += 1
            else:
                bitplane_plane_ids.append(0)  # blank
    return {"width":width,"height":height,"y_start":y_start,"bitplanes":bitplane_plane_ids},next_cache_id


def ensure_empty(d):
    if os.path.exists(d):
        for f in os.listdir(d):
            x = os.path.join(d,f)
            if os.path.isfile(x):
                os.remove(x)
    else:
        os.makedirs(d)

def ensure_exists(d):
    if os.path.exists(d):
        pass
    else:
        os.makedirs(d)

sr = lambda a,b : set(range(a,b))
sr2 = lambda a,b : set(range(a,b,2))
sr3 = lambda a,b : set(range(a,b,3))
sr4 = lambda a,b : set(range(a,b,4))

group_sprite_pairs = (sr2(0,0x30) | # player
sr2(0x100,0x134) | # player (underwear)
sr2(0x136,0x13C) | # player
sr2(0x13E,0x15F) | # player / dead
sr2(0x42,0x50)  | # frog
sr2(0x50,0x54) | # flame
sr2(0x58,0x5C) | # flame
sr2(0x62,0x68) | # flying bag
sr2(0x6A,0x6C) | # flying bag
sr2(0x78,0x7C) | # flying bag
sr2(0x80,0x8A) | # level 2 goblin
sr2(0xA0,0xA6) | # jumping skeleton
sr2(0xA8,0xC0) | # jumping skeleton / zombie
sr2(0xE0,0xE4) | # bat
sr2(0xE8,0xEC) | # bat
sr2(0x1C0,0x1D0) | # explosions
sr2(0x170,0x1A0) | # misc
sr2(0x1D8,0x1DC) | # misc
sr2(0x1E0,0x1F0) | # bullies
sr2(0x1F2,0x1F8) | # bullies
sr2(0x1FA,0x200) | # bullies
sr2(0x240,0x250) | # dragon
sr2(0x2BC,0x2C0) | # blast
{0x168,0x1A6,0x1AE,0x22E,0x25C,0x275,0x26E,0x27D,0x286,0x28E,0x266,0x226,
0x296,0x2A0,0x2A3,0x2AB,0x26,0x3E,0x54,0x36,0x76,0x206,0x238,0x20E}
)

group_sprite_triplets = ({0x203,0x223,0X2A8,0x250,0x258,0x213,0x160,0xE4,0x1D4,0x200,0x208,0x20B,0x228,0x22B,0x230,0x220,0x210,0x218,0x21B} |
sr3(0x1A0,0x1A6) |
sr3(0x1A8,0x1AE) |
sr3(0x1B0,0x1B6) |
sr3(0x2B0,0x2B6) |
sr3(0x1B8,0x1BE) |
sr3(0x280,0x286) |
sr3(0x288,0x28E) |
sr3(0x290,0x296)
)

group_sprite_quadruplets = sr4(0x2C0,0x300)


# tiles that represent lives and weapon: not alphanumeric



lower_osd_tiles = {}


def add_tile(table,index,cluts=[0],merge_cluts=True):
    if isinstance(index,range):
        pass
    elif not isinstance(index,(list,tuple)):
        index = [index]
    for idx in index:
        cluts = list(cluts)
        if idx in table and merge_cluts:
            cluts += table[idx]
        table[idx] = sorted(set(cluts))



def read_used_tiles(used_tiles_name,tile_cluts,nb_tiles,nb_cluts):
    with open(used_graphics_dir / used_tiles_name,"rb") as f:
        for index in range(nb_tiles):
            d = f.read(nb_cluts)
            cluts = [i for i,c in enumerate(d) if c]
            if cluts:
                add_tile(tile_cluts,index,cluts=cluts)


def get_sprite_names():

    rval = {}
    return rval

def get_mirror_sprites():
    """ return the index of the sprites that need mirroring
as opposed to Gyruss, most of the sprites don't

"""
    rval = {}
    return rval



alphanum_tile_codes = set(range(0,10)) | set(range(65-48,65+27-48))

##import json
##
##with open("sprites_per_level.json","r") as f:
##    spl = json.load(f)
##sn = get_sprite_names()
##snv = {k:{"pre_mirror":None,"levels":spl.get(k)} for k in set(sn.values())}
##for k,v in snv.items():
##    if v and v["levels"]=="*":
##        v["levels"] = None
##        v["on_last_level"] = False
##
##with open("sprites_per_level_all.json","w") as f:
##    json.dump(snv,f,indent=2)

if __name__ == "__main__":
    raise Exception("no main!")