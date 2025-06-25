#include "object_spot16_obj.h"
#include "gfx.h"
#include "tex_len.h"

#define gDeathMountainRingTex_WIDTH 32
#define gDeathMountainRingTex_HEIGHT 32
u64 gDeathMountainRingTex[TEX_LEN(u64, gDeathMountainRingTex_WIDTH, gDeathMountainRingTex_HEIGHT, 16)] = {
#include "assets/objects/object_spot16_obj/gDeathMountainRingTex.ia16.inc.c"
};

Vtx gDeathMountainRingVtx[] = {
#include "assets/objects/object_spot16_obj/gDeathMountainRingVtx.inc.c"
};

Gfx gDeathMountainRingDL[18] = {
#include "assets/objects/object_spot16_obj/gDeathMountainRingDL.inc.c"
};
