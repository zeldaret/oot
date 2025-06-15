#include "object_yukabyun.h"
#include "gfx.h"

Vtx gFloorTileEnemyFragmentVtx[] = {
#include "assets/objects/object_yukabyun/gFloorTileEnemyFragmentVtx.inc.c"
};

Gfx gFloorTileEnemyFragmentDL[18] = {
#include "assets/objects/object_yukabyun/gFloorTileEnemyFragmentDL.inc.c"
};

u64 gFloorTileEnemyTopTex[TEX_LEN(u64, gFloorTileEnemyTopTex_WIDTH, gFloorTileEnemyTopTex_HEIGHT, 16)] = {
#include "assets/objects/object_yukabyun/gFloorTileEnemyTopTex.rgba16.inc.c"
};

u64 gFloorTileEnemyFragmentTex[TEX_LEN(u64, gFloorTileEnemyFragmentTex_WIDTH, gFloorTileEnemyFragmentTex_HEIGHT,
                                       16)] = {
#include "assets/objects/object_yukabyun/gFloorTileEnemyFragmentTex.rgba16.inc.c"
};
