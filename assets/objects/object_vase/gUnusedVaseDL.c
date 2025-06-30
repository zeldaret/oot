#include "object_vase.h"
#include "gfx.h"

Gfx gUnusedVaseDL[52] = {
#include "assets/objects/object_vase/gUnusedVaseDL.inc.c"
};

Vtx gUnusedVaseVtx[] = {
#include "assets/objects/object_vase/gUnusedVaseVtx.inc.c"
};

u64 gUnusedVaseBodyTex[TEX_LEN(u64, gUnusedVaseBodyTex_WIDTH, gUnusedVaseBodyTex_HEIGHT, 16)] = {
#include "assets/objects/object_vase/gUnusedVaseBodyTex.rgba16.inc.c"
};

u64 gUnusedVaseTopTex[TEX_LEN(u64, gUnusedVaseTopTex_WIDTH, gUnusedVaseTopTex_HEIGHT, 16)] = {
#include "assets/objects/object_vase/gUnusedVaseTopTex.rgba16.inc.c"
};
