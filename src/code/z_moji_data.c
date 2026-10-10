#include "ultra64.h"
#include "gfx.h"

u64 gMojiFontTLUTs[4][4] = {
    {
#include "assets/code/z_moji_data/gMojiFontTLUT0.rgba16.inc.c"
    },
    {
#include "assets/code/z_moji_data/gMojiFontTLUT1.rgba16.inc.c"
    },
    {
#include "assets/code/z_moji_data/gMojiFontTLUT2.rgba16.inc.c"
    },
    {
#include "assets/code/z_moji_data/gMojiFontTLUT3.rgba16.inc.c"
    },
};

u64 gMojiFontTex[] = {
#include "assets/code/z_moji_data/gMojiFontTex.i4.inc.c"
};
