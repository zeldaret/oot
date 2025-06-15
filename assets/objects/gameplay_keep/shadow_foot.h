#ifndef GAMEPLAY_KEEP_SHADOW_FOOT_H
#define GAMEPLAY_KEEP_SHADOW_FOOT_H

#include "tex_len.h"
#include "ultra64.h"

extern Gfx gFootShadowDL[12];
extern Vtx gFootShadowVtx[];
#define gFootShadowTex_WIDTH 32
#define gFootShadowTex_HEIGHT 64
extern u64 gFootShadowTex[TEX_LEN(u64, gFootShadowTex_WIDTH, gFootShadowTex_HEIGHT, 16)];

#endif
