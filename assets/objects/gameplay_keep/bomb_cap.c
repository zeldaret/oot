#include "bomb_cap.h"
#include "gfx.h"

u64 gBombCapTex[TEX_LEN(u64, gBombCapTex_WIDTH, gBombCapTex_HEIGHT, 16)] = {
#include "assets/objects/gameplay_keep/gBombCapTex.rgba16.inc.c"
};

Vtx gBombCapVtx[] = {
#include "assets/objects/gameplay_keep/gBombCapVtx.inc.c"
};

Gfx gBombCapDL[24] = {
#include "assets/objects/gameplay_keep/gBombCapDL.inc.c"
};
