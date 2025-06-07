#ifndef GAMEPLAY_KEEP_MOON_H
#define GAMEPLAY_KEEP_MOON_H

#include "tex_len.h"
#include "ultra64.h"

#define gMoonTex_WIDTH 64
#define gMoonTex_HEIGHT 64
extern u64 gMoonTex[TEX_LEN(u64, gMoonTex_WIDTH, gMoonTex_HEIGHT, 8)];
extern Gfx gMoonDL[14];
extern Vtx gMoonVtx[];

#endif
