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



group_sprite_triplets = set()
group_sprite_pairs = set()
group_sprite_quadruplets = set()

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



def read_used_tiles(used_tiles_name,tile_cluts,nb_tiles,nb_cluts,size_table=None):
    with open(used_graphics_dir / used_tiles_name,"rb") as f:
        for index in range(nb_tiles):
            d = f.read(nb_cluts)
            cluts = []
            for i,c in enumerate(d):
                if c:
                    cluts.append(i)
                    if size_table is not None:
                        if c&1 and c!=1:
                            # correct wrong size logging
                            c&=0xFE
                        if index not in size_table:
                            size_table[index] = c
                        else:
                            c = size_table[index]
                        if c==2:
                            # Y size we have to declare the next tile as used too
                            add_tile(tile_cluts,index+1,cluts=cluts)
            if cluts:
                add_tile(tile_cluts,index,cluts=cluts)


def get_sprite_names():

    rval = {k:"player" for k in range(0,0xE4)}
    rval |= {k:"whip" for k in range(0xE7,0x100)}
    rval |= {k:"player" for k in range(0x101,0x23A)}
    rval |= {k:"player" for k in range(0x25C,0x2C5)}
    rval |= {k:"player" for k in range(0x300,0x348)}
    rval |= {k:"player" for k in range(0x850,0x861)}
    rval |= {k:"player" for k in range(0x84A,0x84F)}
    rval |= {k:"player" for k in range(0xB00,0xB37)}
    rval |= {k:"player" for k in range(0xE34,0xE45)}
    rval |= {k:"girl" for k in range(0x348,0x360)}
    rval |= {k:"girl" for k in range(0xFCA,0xFE1)}
    rval |= {k:"hooker" for k in range(0xCD8,0xD62)}
    rval |= {k:"hooker" for k in range(0xD96,0xDA2)}
    rval |= {k:"door" for k in range(0x2E4,0x2FF)}
    rval |= {k:"punk" for k in range(0x500,0x58E)}
    rval |= {k:"barrel" for k in range(0xEC0,0xEDA)}
    rval |= {k:"barrel" for k in range(0xF00,0xF4A)}
    rval |= {k:"brick" for k in range(0xF4A,0xF68)}
    rval |= {k:"giant" for k in range(0xF86,0xFC5)}
    rval |= {k:"giant" for k in range(0x9F4,0xA39)}
    rval |= {k:"crate" for k in range(0xD62,0xD82)}
    rval |= {k:"rock" for k in range(0xD80,0xD96)}
    rval |= {k:"boss" for k in range(0xA39,0xAA0)}
    rval |= {k:"knife" for k in range(0x9A8,0x9BE)}
    rval |= {k:"bat" for k in range(0x9C1,0x9E9)}
    rval |= {k:"thug" for k in range(0x700,0x7EE)}
    rval |= {k:"thug" for k in range(0x700,0x7EE)}
    rval |= {k:"player_marker" for k in range(0x5BA,0x5C1)}
    rval |= {k:"garage_door" for k in list(range(0xE50,0xE5E))+[0xE45]}

    rval[0x100] = "player"
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