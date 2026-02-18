#include "bombchu_body.h"
#include "gfx.h"

u64 gBombchuBodyTex[TEX_LEN(u64, gBombchuBodyTex_WIDTH, gBombchuBodyTex_HEIGHT, 16)] = {
#include "assets/objects/gameplay_keep/gBombchuBodyTex.rgba16.inc.c"
};

Vtx gBombchuVtx[] = {
#include "assets/objects/gameplay_keep/gBombchuVtx.inc.c"
};

Gfx gBombchuDL[45] = {
#include "assets/objects/gameplay_keep/gBombchuDL.inc.c"
};
