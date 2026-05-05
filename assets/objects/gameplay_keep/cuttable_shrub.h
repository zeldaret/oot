#ifndef GAMEPLAY_KEEP_CUTTABLE_SHRUB_H
#define GAMEPLAY_KEEP_CUTTABLE_SHRUB_H

#include "tex_len.h"
#include "ultra64.h"

extern Vtx gCuttableShrubStalkVtx[];
extern Gfx gCuttableShrubStalkDL[18];
extern Vtx gCuttableShrubTipVtx[];
extern Gfx gCuttableShrubTipDL[18];
#define gCuttableShrubLeafTFragmentTex_WIDTH 32
#define gCuttableShrubLeafTFragmentTex_HEIGHT 32
extern u64 gCuttableShrubLeafTFragmentTex[TEX_LEN(u64, gCuttableShrubLeafTFragmentTex_WIDTH, gCuttableShrubLeafTFragmentTex_HEIGHT, 16)];
#define gCuttableShrubTex_WIDTH 32
#define gCuttableShrubTex_HEIGHT 32
extern u64 gCuttableShrubTex[TEX_LEN(u64, gCuttableShrubTex_WIDTH, gCuttableShrubTex_HEIGHT, 16)];

#endif
