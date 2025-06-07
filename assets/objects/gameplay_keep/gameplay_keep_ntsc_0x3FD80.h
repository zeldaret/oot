#ifndef GAMEPLAY_KEEP_NTSC_0x3FD80_H
#define GAMEPLAY_KEEP_NTSC_0x3FD80_H

#include "tex_len.h"
#include "ultra64.h"
#include "region.h"

#if OOT_REGION != REGION_EU
#define gGameplayKeepTex_3FD80_WIDTH 32
#define gGameplayKeepTex_3FD80_HEIGHT 32
extern u64 gGameplayKeepTex_3FD80[TEX_LEN(u64, gGameplayKeepTex_3FD80_WIDTH, gGameplayKeepTex_3FD80_HEIGHT, 16)];
#define gGameplayKeepTex_40580_WIDTH 32
#define gGameplayKeepTex_40580_HEIGHT 32
extern u64 gGameplayKeepTex_40580[TEX_LEN(u64, gGameplayKeepTex_40580_WIDTH, gGameplayKeepTex_40580_HEIGHT, 16)];
#endif

#endif
