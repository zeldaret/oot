#include "object_spot17_obj.h"
#include "gfx.h"

#define gCraterSmokeConeTex_WIDTH 32
#define gCraterSmokeConeTex_HEIGHT 32
extern u64 gCraterSmokeConeTex[TEX_LEN(u64, gCraterSmokeConeTex_WIDTH, gCraterSmokeConeTex_HEIGHT, 8)];

Vtx gCraterSmokeConeVtx[] = {
#include "assets/objects/object_spot17_obj/gCraterSmokeConeVtx.inc.c"
};

Gfx gCraterSmokeConeDL[30] = {
#include "assets/objects/object_spot17_obj/gCraterSmokeConeDL.inc.c"
};

u64 gCraterSmokeConeTex[TEX_LEN(u64, gCraterSmokeConeTex_WIDTH, gCraterSmokeConeTex_HEIGHT, 8)] = {
#include "assets/objects/object_spot17_obj/gCraterSmokeConeTex.ia8.inc.c"
};
