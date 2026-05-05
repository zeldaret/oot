#ifndef GAMEPLAY_KEEP_SHADOW_CIRCLE_H
#define GAMEPLAY_KEEP_SHADOW_CIRCLE_H

#include "tex_len.h"
#include "ultra64.h"

extern Gfx gCircleShadowDL[10];
extern Vtx gCircleShadowVtx[];
#define gCircleShadowTex_WIDTH 32
#define gCircleShadowTex_HEIGHT 32
extern u64 gCircleShadowTex[TEX_LEN(u64, gCircleShadowTex_WIDTH, gCircleShadowTex_HEIGHT, 16)];

#endif
