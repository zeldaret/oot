#ifndef OBJECT_SPOT17_OBJ_H
#define OBJECT_SPOT17_OBJ_H

#include "ultra64.h"
#include "bgcheck.h"
#include "tex_len.h"

extern Gfx gCraterBombableWallDL[24];
extern Gfx gCraterBombableWallCracksDL[18];

extern CollisionHeader gCraterBombableWallCol;

extern Gfx gCraterSmokeConeDL[30];

#define gCraterBombableWallCracksTex_WIDTH 64
#define gCraterBombableWallCracksTex_HEIGHT 64
extern u64 gCraterBombableWallCracksTex[TEX_LEN(u64, gCraterBombableWallCracksTex_WIDTH, gCraterBombableWallCracksTex_HEIGHT, 4)];

#endif
