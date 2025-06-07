#ifndef GAMEPLAY_KEEP_NTSC_0x41580_H
#define GAMEPLAY_KEEP_NTSC_0x41580_H

#include "tex_len.h"
#include "ultra64.h"
#include "region.h"

#if OOT_REGION != REGION_EU
#define gGameplayKeepTex_41580_WIDTH 32
#define gGameplayKeepTex_41580_HEIGHT 32
extern u64 gGameplayKeepTex_41580[TEX_LEN(u64, gGameplayKeepTex_41580_WIDTH, gGameplayKeepTex_41580_HEIGHT, 16)];
#endif

#endif
