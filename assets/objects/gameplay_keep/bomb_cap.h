#ifndef GAMEPLAY_KEEP_BOMB_CAP_H
#define GAMEPLAY_KEEP_BOMB_CAP_H

#include "tex_len.h"
#include "ultra64.h"

#define gBombCapTex_WIDTH 8
#define gBombCapTex_HEIGHT 8
extern u64 gBombCapTex[TEX_LEN(u64, gBombCapTex_WIDTH, gBombCapTex_HEIGHT, 16)];
extern Vtx gBombCapVtx[];
extern Gfx gBombCapDL[24];

#endif
