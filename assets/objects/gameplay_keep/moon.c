#include "moon.h"
#include "gfx.h"

u64 gMoonTex[TEX_LEN(u64, gMoonTex_WIDTH, gMoonTex_HEIGHT, 8)] = {
#include "assets/objects/gameplay_keep/gMoonTex.ia8.inc.c"
};

Gfx gMoonDL[14] = {
#include "assets/objects/gameplay_keep/gMoonDL.inc.c"
};

Vtx gMoonVtx[] = {
#include "assets/objects/gameplay_keep/gMoonVtx.inc.c"
};
