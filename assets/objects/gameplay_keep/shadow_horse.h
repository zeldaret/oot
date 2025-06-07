#ifndef GAMEPLAY_KEEP_SHADOW_HORSE_H
#define GAMEPLAY_KEEP_SHADOW_HORSE_H

#include "tex_len.h"
#include "ultra64.h"

extern Vtx gHorseShadowVtx[];
extern Gfx gHorseShadowDL[10];
#define gHorseShadowTex_WIDTH 16
#define gHorseShadowTex_HEIGHT 64
extern u64 gHorseShadowTex[TEX_LEN(u64, gHorseShadowTex_WIDTH, gHorseShadowTex_HEIGHT, 8)];

#endif
