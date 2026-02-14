#ifndef GAMEPLAY_KEEP_EFF_FIRE_H
#define GAMEPLAY_KEEP_EFF_FIRE_H

#include "tex_len.h"
#include "ultra64.h"

extern Vtx gEffFireVtx[];
extern Gfx gEffFire1DL[24];
extern Gfx gEffFire2DL[24];
#define gDecorativeFlameMaskTex_WIDTH 32
#define gDecorativeFlameMaskTex_HEIGHT 128
extern u64 gDecorativeFlameMaskTex[TEX_LEN(u64, gDecorativeFlameMaskTex_WIDTH, gDecorativeFlameMaskTex_HEIGHT, 4)];
#define gDecorativeFlameTex_WIDTH 32
#define gDecorativeFlameTex_HEIGHT 64
extern u64 gDecorativeFlameTex[TEX_LEN(u64, gDecorativeFlameTex_WIDTH, gDecorativeFlameTex_HEIGHT, 8)];

#endif
