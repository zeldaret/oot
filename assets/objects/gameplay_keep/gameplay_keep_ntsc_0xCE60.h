#ifndef GAMEPLAY_KEEP_NTSC_0xCE60
#define GAMEPLAY_KEEP_NTSC_0xCE60

#include "tex_len.h"
#include "ultra64.h"
#include "region.h"

#if OOT_REGION != REGION_EU
#define gGameplayKeepTex_CE60_WIDTH 32
#define gGameplayKeepTex_CE60_HEIGHT 32
extern u64 gGameplayKeepTex_CE60[TEX_LEN(u64, gGameplayKeepTex_CE60_WIDTH, gGameplayKeepTex_CE60_HEIGHT, 8)];
#endif

#endif
