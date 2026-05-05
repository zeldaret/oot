#include "gameplay_keep_0x4A090.h"
#include "gfx.h"

u64 gDoorMetalBarsTex[TEX_LEN(u64, gDoorMetalBarsTex_WIDTH, gDoorMetalBarsTex_HEIGHT, 8)] = {
#include "assets/objects/gameplay_keep/gDoorMetalBarsTex.ia8.inc.c"
};

Vtx gDoorMetalBarsVtx[] = {
#include "assets/objects/gameplay_keep/gDoorMetalBarsVtx.inc.c"
};

Gfx gDoorMetalBarsDL[18] = {
#include "assets/objects/gameplay_keep/gDoorMetalBarsDL.inc.c"
};

u64 gGenericDungeonDoorTex[TEX_LEN(u64, gGenericDungeonDoorTex_WIDTH, gGenericDungeonDoorTex_HEIGHT, 16)] = {
#include "assets/objects/gameplay_keep/gGenericDungeonDoorTex.rgba16.inc.c"
};
