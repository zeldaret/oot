#ifndef GAMEPLAY_KEEP_LENS_FLARE_H
#define GAMEPLAY_KEEP_LENS_FLARE_H

#include "tex_len.h"
#include "ultra64.h"

#define gLensFlareCircleTex_WIDTH 64
#define gLensFlareCircleTex_HEIGHT 64
extern u64 gLensFlareCircleTex[TEX_LEN(u64, gLensFlareCircleTex_WIDTH, gLensFlareCircleTex_HEIGHT, 4)];
#define gLensFlareRingTex_WIDTH 64
#define gLensFlareRingTex_HEIGHT 64
extern u64 gLensFlareRingTex[TEX_LEN(u64, gLensFlareRingTex_WIDTH, gLensFlareRingTex_HEIGHT, 4)];
extern Gfx gLensFlareCircleDL[13];
extern Gfx gLensFlareRingDL[13];
extern Vtx gLensFlareVtx[];

#endif
