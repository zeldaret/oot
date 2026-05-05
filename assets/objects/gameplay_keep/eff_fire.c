#include "eff_fire.h"
#include "gfx.h"

Vtx gEffFireVtx[] = {
#include "assets/objects/gameplay_keep/gEffFireVtx.inc.c"
};

Gfx gEffFire1DL[24] = {
#include "assets/objects/gameplay_keep/gEffFire1DL.inc.c"
};

Gfx gEffFire2DL[24] = {
#include "assets/objects/gameplay_keep/gEffFire2DL.inc.c"
};

u64 gDecorativeFlameMaskTex[TEX_LEN(u64, gDecorativeFlameMaskTex_WIDTH, gDecorativeFlameMaskTex_HEIGHT, 4)] = {
#include "assets/objects/gameplay_keep/gDecorativeFlameMaskTex.i4.inc.c"
};

u64 gDecorativeFlameTex[TEX_LEN(u64, gDecorativeFlameTex_WIDTH, gDecorativeFlameTex_HEIGHT, 8)] = {
#include "assets/objects/gameplay_keep/gDecorativeFlameTex.i8.inc.c"
};
