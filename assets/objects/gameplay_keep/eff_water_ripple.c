#include "eff_water_ripple.h"
#include "gfx.h"

u64 gEffWaterRippleTex[TEX_LEN(u64, gEffWaterRippleTex_WIDTH, gEffWaterRippleTex_HEIGHT, 8)] = {
#include "assets/objects/gameplay_keep/gEffWaterRippleTex.i8.inc.c"
};

Gfx gEffWaterRippleDL[12] = {
#include "assets/objects/gameplay_keep/gEffWaterRippleDL.inc.c"
};

Vtx gEffWaterRippleVtx[] = {
#include "assets/objects/gameplay_keep/gEffWaterRippleVtx.inc.c"
};
