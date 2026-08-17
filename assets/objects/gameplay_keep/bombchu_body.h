#ifndef GAMEPLAY_KEEP_BOMBCHU_BODY_H
#define GAMEPLAY_KEEP_BOMBCHU_BODY_H

#include "tex_len.h"
#include "ultra64.h"

#define gBombchuBodyTex_WIDTH 8
#define gBombchuBodyTex_HEIGHT 8
extern u64 gBombchuBodyTex[TEX_LEN(u64, gBombchuBodyTex_WIDTH, gBombchuBodyTex_HEIGHT, 16)];
extern Vtx gBombchuVtx[];
extern Gfx gBombchuDL[45];

#endif
