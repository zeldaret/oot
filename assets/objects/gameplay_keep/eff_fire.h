#ifndef GAMEPLAY_KEEP_EFF_FIRE_H
#define GAMEPLAY_KEEP_EFF_FIRE_H

#include "tex_len.h"
#include "ultra64.h"

extern Vtx gEffFireVtx[];
extern Gfx gEffFire1DL[24];
extern Gfx gEffFire2DL[24];
#define gEffFire1Tex_WIDTH 32
#define gEffFire1Tex_HEIGHT 128
extern u64 gEffFire1Tex[TEX_LEN(u64, gEffFire1Tex_WIDTH, gEffFire1Tex_HEIGHT, 4)];
#define gEffFire2Tex_WIDTH 32
#define gEffFire2Tex_HEIGHT 64
extern u64 gEffFire2Tex[TEX_LEN(u64, gEffFire2Tex_WIDTH, gEffFire2Tex_HEIGHT, 8)];

#endif
