#include "bomb_body.h"
#include "gfx.h"

u64 gBombBodyTex[TEX_LEN(u64, gBombBodyTex_WIDTH, gBombBodyTex_HEIGHT, 8)] = {
#include "assets/objects/gameplay_keep/gBombBodyTex.ia8.inc.c"
};

Vtx gBombBodyVtx[] = {
#include "assets/objects/gameplay_keep/gBombBodyVtx.inc.c"
};

Gfx gBombBodyDL[17] = {
#include "assets/objects/gameplay_keep/gBombBodyDL.inc.c"
};
