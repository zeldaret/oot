#ifndef OBJECT_SPOT15_OBJ_H
#define OBJECT_SPOT15_OBJ_H

#include "ultra64.h"
#include "bgcheck.h"
#include "tex_len.h"

extern Gfx gLonLonMilkCrateDL[23];

extern CollisionHeader gLonLonMilkCrateCol;

extern Gfx gLonLonCorralFenceDL[18];

extern CollisionHeader gLonLonCorralFenceCol;

#define gLonLonCorralFenceTex_WIDTH 32
#define gLonLonCorralFenceTex_HEIGHT 128
extern u64 gLonLonCorralFenceTex[TEX_LEN(u64, gLonLonCorralFenceTex_WIDTH, gLonLonCorralFenceTex_HEIGHT, 4)];

#define gLonLonMilkCrateTex_WIDTH 32
#define gLonLonMilkCrateTex_HEIGHT 64
extern u64 gLonLonMilkCrateTex[TEX_LEN(u64, gLonLonMilkCrateTex_WIDTH, gLonLonMilkCrateTex_HEIGHT, 16)];

#endif
