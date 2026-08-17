#ifndef OBJECT_SYOKUDAI_H
#define OBJECT_SYOKUDAI_H

#include "ultra64.h"
#include "tex_len.h"

extern Gfx gGoldenTorchDL[58];
extern Gfx gWoodenTorchDL[43];
extern Gfx gTimedTorchDL[32];

#define gGoldenTorch1Tex_WIDTH 32
#define gGoldenTorch1Tex_HEIGHT 32
extern u64 gGoldenTorch1Tex[TEX_LEN(u64, gGoldenTorch1Tex_WIDTH, gGoldenTorch1Tex_HEIGHT, 16)];

#define gGoldenTorch2Tex_WIDTH 32
#define gGoldenTorch2Tex_HEIGHT 64
extern u64 gGoldenTorch2Tex[TEX_LEN(u64, gGoldenTorch2Tex_WIDTH, gGoldenTorch2Tex_HEIGHT, 16)];

#define gTorchFlameGuardTex_WIDTH 32
#define gTorchFlameGuardTex_HEIGHT 32
extern u64 gTorchFlameGuardTex[TEX_LEN(u64, gTorchFlameGuardTex_WIDTH, gTorchFlameGuardTex_HEIGHT, 16)];

#define gTimedTorchTex_WIDTH 32
#define gTimedTorchTex_HEIGHT 32
extern u64 gTimedTorchTex[TEX_LEN(u64, gTimedTorchTex_WIDTH, gTimedTorchTex_HEIGHT, 16)];

#define gWoodenTorchTex_WIDTH 16
#define gWoodenTorchTex_HEIGHT 64
extern u64 gWoodenTorchTex[TEX_LEN(u64, gWoodenTorchTex_WIDTH, gWoodenTorchTex_HEIGHT, 16)];

#endif
