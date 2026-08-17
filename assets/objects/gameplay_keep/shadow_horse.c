#include "shadow_horse.h"
#include "gfx.h"

Vtx gHorseShadowVtx[] = {
#include "assets/objects/gameplay_keep/gHorseShadowVtx.inc.c"
};

Gfx gHorseShadowDL[10] = {
#include "assets/objects/gameplay_keep/gHorseShadowDL.inc.c"
};

u64 gHorseShadowTex[TEX_LEN(u64, gHorseShadowTex_WIDTH, gHorseShadowTex_HEIGHT, 8)] = {
#include "assets/objects/gameplay_keep/gHorseShadowTex.i8.inc.c"
};
