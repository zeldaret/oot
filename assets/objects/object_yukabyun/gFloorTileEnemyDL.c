#include "object_yukabyun.h"
#include "gfx.h"

u64 gFloorTileEnemyBottomTex[TEX_LEN(u64, gFloorTileEnemyBottomTex_WIDTH, gFloorTileEnemyBottomTex_HEIGHT, 16)] = {
#include "assets/objects/object_yukabyun/gFloorTileEnemyBottomTex.rgba16.inc.c"
};

Vtx gFloorTileEnemyVtx[] = {
#include "assets/objects/object_yukabyun/gFloorTileEnemyVtx.inc.c"
};

Gfx gFloorTileEnemyDL[23] = {
#include "assets/objects/object_yukabyun/gFloorTileEnemyDL.inc.c"
};
