for i in range(8):
    for offset in [i*16+0x1080,i*16+0x1280]:
        s = f"b@{offset:04x} = $F"
        print(s)