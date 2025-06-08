#ifndef GAMEPLAY_KEEP_ITEM_DROPS_NTSC_H
#define GAMEPLAY_KEEP_ITEM_DROPS_NTSC_H

#include "tex_len.h"
#include "ultra64.h"
#include "region.h"

#if OOT_REGION != REGION_EU
#define gUnusedHeartIconTex_WIDTH 32
#define gUnusedHeartIconTex_HEIGHT 32
extern u64 gUnusedHeartIconTex[TEX_LEN(u64, gUnusedHeartIconTex_WIDTH, gUnusedHeartIconTex_HEIGHT, 16)];
#define gUnusedBombIconTex_WIDTH 32
#define gUnusedBombIconTex_HEIGHT 32
extern u64 gUnusedBombIconTex[TEX_LEN(u64, gUnusedBombIconTex_WIDTH, gUnusedBombIconTex_HEIGHT, 16)];
#define gUnusedArrowIconTex_WIDTH 32
#define gUnusedArrowIconTex_HEIGHT 32
extern u64 gUnusedArrowIconTex[TEX_LEN(u64, gUnusedArrowIconTex_WIDTH, gUnusedArrowIconTex_HEIGHT, 16)];
#endif

#endif
