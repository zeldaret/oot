#ifndef GAMEPLAY_KEEP_EFF_FLASH_H
#define GAMEPLAY_KEEP_EFF_FLASH_H

#include "tex_len.h"
#include "ultra64.h"

extern Vtx gEffFlashVtx[];
extern Gfx gEffFlash1DL[15];
extern Gfx gEffFlash2DL[16];
#define gFlashTex_WIDTH 64
#define gFlashTex_HEIGHT 64
extern u64 gFlashTex[TEX_LEN(u64, gFlashTex_WIDTH, gFlashTex_HEIGHT, 8)];

#endif
