#ifndef OBJECT_VASE_H
#define OBJECT_VASE_H

#include "ultra64.h"
#include "tex_len.h"

extern Gfx gUnusedVaseDL[52];

extern Vtx gUnusedVaseVtx[];

#define gUnusedVaseBodyTex_WIDTH 32
#define gUnusedVaseBodyTex_HEIGHT 32
extern u64 gUnusedVaseBodyTex[TEX_LEN(u64, gUnusedVaseBodyTex_WIDTH, gUnusedVaseBodyTex_HEIGHT, 16)];

#define gUnusedVaseTopTex_WIDTH 32
#define gUnusedVaseTopTex_HEIGHT 32
extern u64 gUnusedVaseTopTex[TEX_LEN(u64, gUnusedVaseTopTex_WIDTH, gUnusedVaseTopTex_HEIGHT, 16)];

#endif
