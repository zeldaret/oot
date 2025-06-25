#include "object_spot17_obj.h"
#include "gfx.h"

u64 gCraterRockTLUT[] = {
#include "assets/objects/object_spot17_obj/gCraterRockTex.tlut.rgba16.inc.c"
};

#define gCraterRockTex_WIDTH 64
#define gCraterRockTex_HEIGHT 64
u64 gCraterRockTex[TEX_LEN(u64, gCraterRockTex_WIDTH, gCraterRockTex_HEIGHT, 4)] = {
#include "assets/objects/object_spot17_obj/gCraterRockTex.ci4.inc.c"
};

Vtx gCraterBombableWallVtx[] = {
#include "assets/objects/object_spot17_obj/gCraterBombableWallVtx.inc.c"
};

Vtx gCraterBombableWallCracksVtx[] = {
#include "assets/objects/object_spot17_obj/gCraterBombableWallCracksVtx.inc.c"
};

Gfx gCraterBombableWallDL[24] = {
#include "assets/objects/object_spot17_obj/gCraterBombableWallDL.inc.c"
};

Gfx gCraterBombableWallCracksDL[18] = {
#include "assets/objects/object_spot17_obj/gCraterBombableWallCracksDL.inc.c"
};
