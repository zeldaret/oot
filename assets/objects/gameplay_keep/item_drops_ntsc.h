#ifndef GAMEPLAY_KEEP_ITEM_DROPS_NTSC_H
#define GAMEPLAY_KEEP_ITEM_DROPS_NTSC_H

#include "tex_len.h"
#include "ultra64.h"
#include "region.h"

#if OOT_REGION != REGION_EU
#define gGameplayKeepTex_45220_WIDTH 32
#define gGameplayKeepTex_45220_HEIGHT 32
extern u64 gGameplayKeepTex_45220[TEX_LEN(u64, gGameplayKeepTex_45220_WIDTH, gGameplayKeepTex_45220_HEIGHT, 16)];
#define gGameplayKeepTex_45A20_WIDTH 32
#define gGameplayKeepTex_45A20_HEIGHT 32
extern u64 gGameplayKeepTex_45A20[TEX_LEN(u64, gGameplayKeepTex_45A20_WIDTH, gGameplayKeepTex_45A20_HEIGHT, 16)];
#define gGameplayKeepTex_46220_WIDTH 32
#define gGameplayKeepTex_46220_HEIGHT 32
extern u64 gGameplayKeepTex_46220[TEX_LEN(u64, gGameplayKeepTex_46220_WIDTH, gGameplayKeepTex_46220_HEIGHT, 16)];
#endif

#endif
