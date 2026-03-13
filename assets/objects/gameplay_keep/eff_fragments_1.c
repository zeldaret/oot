#include "eff_fragments_1.h"
#include "gfx.h"

Vtx gEffFragments1Vtx[] = {
#include "assets/objects/gameplay_keep/gEffFragments1Vtx.inc.c"
};

Gfx gEffFragments1DL[18] = {
#include "assets/objects/gameplay_keep/gEffFragments1DL.inc.c"
};

u64 gWitheredLeafTex[TEX_LEN(u64, gWitheredLeafTex_WIDTH, gWitheredLeafTex_HEIGHT, 16)] = {
#include "assets/objects/gameplay_keep/gWitheredLeafTex.rgba16.inc.c"
};
