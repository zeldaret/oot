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

u64 gEffFire1Tex[TEX_LEN(u64, gEffFire1Tex_WIDTH, gEffFire1Tex_HEIGHT, 4)] = {
#include "assets/objects/gameplay_keep/gEffFire1Tex.i4.inc.c"
};

u64 gEffFire2Tex[TEX_LEN(u64, gEffFire2Tex_WIDTH, gEffFire2Tex_HEIGHT, 8)] = {
#include "assets/objects/gameplay_keep/gEffFire2Tex.i8.inc.c"
};
