#include "shadow_circle.h"
#include "gfx.h"

Gfx gCircleShadowDL[10] = {
#include "assets/objects/gameplay_keep/gCircleShadowDL.inc.c"
};

Vtx gCircleShadowVtx[] = {
#include "assets/objects/gameplay_keep/gCircleShadowVtx.inc.c"
};

u64 gCircleShadowTex[TEX_LEN(u64, gCircleShadowTex_WIDTH, gCircleShadowTex_HEIGHT, 16)] = {
#include "assets/objects/gameplay_keep/gCircleShadowTex.ia16.inc.c"
};
