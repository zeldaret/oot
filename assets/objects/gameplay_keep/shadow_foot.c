#include "shadow_foot.h"
#include "gfx.h"

Gfx gFootShadowDL[12] = {
#include "assets/objects/gameplay_keep/gFootShadowDL.inc.c"
};

Vtx gFootShadowVtx[] = {
#include "assets/objects/gameplay_keep/gFootShadowVtx.inc.c"
};

u64 gFootShadowTex[TEX_LEN(u64, gFootShadowTex_WIDTH, gFootShadowTex_HEIGHT, 16)] = {
#include "assets/objects/gameplay_keep/gFootShadowTex.ia16.inc.c"
};
