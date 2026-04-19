from PIL import Image,ImageOps
import os,sys,bitplanelib,subprocess,json,pathlib
from collections import Counter

# turn off for faster operation
dump_it = True


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

# sprite tiles that have 2 different sizes

 # force size 2 and 1 even if only size 1 logged
force_multi_size_list_harder = {0x92C,0x2c2}
# force size 1 if only size 2 logged
force_multi_size_list = [0x5EE,0x5F0,0x8A4,0x8A6,0x8A8,0x86E,0x9EC,0x9F0,0x70C,
    0xEEA,0xEE6,0xEF0,0xEF6,0xEE2,0xFEE,0xFF2,0xFF0,0xFEC,0xe28,0xE02,0xE0A,
    0x2ec,0xf4e,0x5eb,0x5FB,0x5F9,0x5FA,0x5FD]+list(force_multi_size_list_harder)

def apply_color_replacement(sprite_set_list,quantized):
    """ change colors for list of tilesets (tiles, sprites)
    quantized: RGB => RGB color replacement dictionary
    """

    for sset in sprite_set_list:
        for tile in sset:
            if tile:
                bitplanelib.replace_color_from_dict(tile,quantized)

def quantize_palette(rgb_tuples,img_type,nb_quantize,transparent=None,dump_it=False):
    rgb_configs = set(rgb_tuples)

    nb_target_colors = nb_quantize
    if transparent:
        rgb_configs.remove(transparent)
        # remove black, white, we don't want it quantized
        immutable_colors = (transparent,(0,0,0))
    else:
        immutable_colors = ((0,0,0),)

    for c in immutable_colors:
        rgb_configs.discard(c)
        nb_quantize -= 1

    dump_graphics = False
    # now compose an image with the colors
    clut_img = Image.new("RGB",(len(rgb_configs),1))
    for i,rgb in enumerate(rgb_configs):
        #rgb_value = (rgb[0]<<16)+(rgb[1]<<8)+rgb[2]
        clut_img.putpixel((i,0),rgb)

    reduced_colors_clut_img = clut_img.quantize(colors=nb_quantize,dither=0).convert('RGB')

    # get the reduced palette
    reduced_palette = [reduced_colors_clut_img.getpixel((i,0)) for i,_ in enumerate(rgb_configs)]
    # apply rounding now, else possible color duplicates, which would be a pity
    reduced_palette = bitplanelib.palette_round(reduced_palette,0xF0)

    # now create a dictionary by associating the original & reduced colors
    rval = dict(zip(rgb_configs,reduced_palette))

    # add black & white & transparent back
    for c in immutable_colors:
        rval[c] = c


    if dump_it:  # debug it, create 2 rows, 1 non-quantized, and 1 quantized, separated by bloack
        s = clut_img.size
        ns = (s[0]*30,s[1]*30)
        clut_img = clut_img.resize(ns,resample=0)
        whole_image = Image.new("RGB",(clut_img.size[0],clut_img.size[1]*3))
        whole_image.paste(clut_img,(0,0))
        reduced_colors_clut_img = reduced_colors_clut_img.resize(ns,resample=0)
        whole_image.paste(reduced_colors_clut_img,(0,clut_img.size[1]*2))
        whole_image.save(dump_dir / "{}_colors.png".format(img_type))

    result_nb = len(set(reduced_palette))
    if nb_quantize < result_nb:
        raise Exception(f"quantize: {img_type}: {nb_quantize} expected, found {result_nb}")
    # return it
    return rval


def quantize_pixels(rgb_tuples,img_type,nb_quantize,transparent=None,dump_it=False):
    rgb_configs = Counter(rgb_tuples)

    nb_target_colors = nb_quantize
    if transparent:
        rgb_configs.pop(transparent)
        # remove black, white, we don't want it quantized
        immutable_colors = (transparent,(0,0,0))
    else:
        immutable_colors = ((0,0,0),)

    for c in immutable_colors:
        rgb_configs.pop(c,None)
        nb_quantize -= 1


    weighted_pixels = []
    for color, count in rgb_configs.items():
        # scale down to avoid huge images
        weight = max(1, count // 4)
        weighted_pixels.extend([color] * weight)

    dump_graphics = False
    # now compose an image with the colors
    clut_img = Image.new("RGB",(len(weighted_pixels),1))
    for i,rgb in enumerate(weighted_pixels):
        #rgb_value = (rgb[0]<<16)+(rgb[1]<<8)+rgb[2]
        clut_img.putpixel((i,0),rgb)

    reduced_colors_clut_img = clut_img.quantize(colors=nb_quantize,method=Image.FASTOCTREE,dither=Image.NONE).convert('RGB')

    # get the reduced palette
    reduced_palette = [reduced_colors_clut_img.getpixel((i,0)) for i,_ in enumerate(weighted_pixels)]
    # apply rounding now, else possible color duplicates, which would be a pity
    reduced_palette = bitplanelib.palette_round(reduced_palette,0xF0)

    # now create a dictionary by associating the original & reduced colors
    rval = dict(zip(weighted_pixels,reduced_palette))

    # add black & white & transparent back
    for c in immutable_colors:
        rval[c] = c


    if dump_it:  # debug it, create 2 rows, 1 non-quantized, and 1 quantized, separated by bloack
        s = clut_img.size
        ns = (s[0]*30,s[1]*30)
        clut_img = clut_img.resize(ns,resample=0)
        whole_image = Image.new("RGB",(clut_img.size[0],clut_img.size[1]*3))
        whole_image.paste(clut_img,(0,0))
        reduced_colors_clut_img = reduced_colors_clut_img.resize(ns,resample=0)
        whole_image.paste(reduced_colors_clut_img,(0,clut_img.size[1]*2))
        whole_image.save(dump_dir / "{}_colors.png".format(img_type))

    result_nb = len(set(reduced_palette))
    if nb_quantize < result_nb:
        raise Exception(f"quantize: {img_type}: {nb_quantize} expected, found {result_nb}")
    # return it
    return rval


def quantize_image_sets(sprite_set_list,max_used_nb_colors,image_type="image",remove_color=None):

    pixels = []
    # temp extract palette
    sprite_palette = set()
    for imglist in sprite_set_list:
        for img in imglist:
            if img:
                sprite_palette.update(img.getdata())
                pixels += list(img.getdata())  # collect all pixels, not just the palette

    if remove_color:
        sprite_palette.remove(remove_color)
        pixels = [p for p in pixels if p != remove_color]

    if len(sprite_palette)>max_used_nb_colors:
        print(f"Too many colors in {image_type} tiles ({len(sprite_palette)}), quantizing")
        # if we specify 32 right away, the algorithm can provide less colors than 32, wasting entries
        # by attempting to quantize with higher values, we guarantee not to waste colors
        for overshoot in reversed(range(5)):
            attempt_nb_colors = max_used_nb_colors+overshoot
            sprite_replacement_dict = quantize_palette(set(pixels),image_type,attempt_nb_colors,dump_it=dump_it)
            new_sprite_palette = sorted(set(sprite_replacement_dict.values()))
            if len(new_sprite_palette)<=max_used_nb_colors:
                print(f"Quantization achieved {len(new_sprite_palette)} colors with start colors = {attempt_nb_colors}")
                sprite_palette = new_sprite_palette
                break
        else:
            raise Exception("quantize error")  # not really possible since we try 32 as last chance!

        apply_color_replacement(sprite_set_list,sprite_replacement_dict)

    return sorted(sprite_palette)


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
            double_y = False
            for i,c in enumerate(d):
                # this is a fucking nightmare to have tiles with several heights, but avoid to
                # put useless 16pixel high tiles when only double height is used. But we must not
                # forget the tiles that can be displayed as double AND as simple
                if c==3:
                    # fix wrong logging. 3 (single Y & double Y can happen only if forced
                    # from passed size_table parameter)
                    c=2
                if c:
                    cluts.append(i)
                    if size_table is not None:
                        if c&2 or index in force_multi_size_list_harder:
                            # if we force double & simple, only take it into account if this
                            # context has size 2 logged
                            size_table[index] = c | size_table.get(index,0)
                            # Y size we have to declare the next tile as used too
                            double_y = True
                        else:
                            size_table[index] = 1
            if cluts:
                add_tile(tile_cluts,index,cluts=cluts)
                if double_y:
                    # those tiles are in the table but have a size = 0
                    # they should not be dumped individually, they're here only so
                    # when creating the double tile we have the data available
                    add_tile(tile_cluts,index+1,cluts=cluts)



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
    rval |= {k:"thug" for k in range(0x5D2,0x5DD)}
    rval |= {k:"player_marker" for k in range(0x800,0x804)}
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