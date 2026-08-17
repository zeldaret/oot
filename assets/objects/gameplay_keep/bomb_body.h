#ifndef GAMEPLAY_KEEP_BOMB_BODY_H
#define GAMEPLAY_KEEP_BOMB_BODY_H

#include "tex_len.h"
#include "ultra64.h"

#define gBombBodyTex_WIDTH 64
#define gBombBodyTex_HEIGHT 64
extern u64 gBombBodyTex[TEX_LEN(u64, gBombBodyTex_WIDTH, gBombBodyTex_HEIGHT, 8)];
extern Vtx gBombBodyVtx[];
extern Gfx gBombBodyDL[17];

#endif
