#ifndef GAMEPLAY_KEEP_RUPEE_H
#define GAMEPLAY_KEEP_RUPEE_H

#include "tex_len.h"
#include "ultra64.h"
#include "region.h"

#define gRupeeGreenTex_WIDTH 4
#define gRupeeGreenTex_HEIGHT 4
extern u64 gRupeeGreenTex[TEX_LEN(u64, gRupeeGreenTex_WIDTH, gRupeeGreenTex_HEIGHT, 16)];
#define gRupeeBlueTex_WIDTH 4
#define gRupeeBlueTex_HEIGHT 4
extern u64 gRupeeBlueTex[TEX_LEN(u64, gRupeeBlueTex_WIDTH, gRupeeBlueTex_HEIGHT, 16)];
#define gRupeeRedTex_WIDTH 4
#define gRupeeRedTex_HEIGHT 4
extern u64 gRupeeRedTex[TEX_LEN(u64, gRupeeRedTex_WIDTH, gRupeeRedTex_HEIGHT, 16)];
#define gRupeeOrangeTex_WIDTH 4
#define gRupeeOrangeTex_HEIGHT 4
extern u64 gRupeeOrangeTex[TEX_LEN(u64, gRupeeOrangeTex_WIDTH, gRupeeOrangeTex_HEIGHT, 16)];
#define gRupeePinkTex_WIDTH 4
#define gRupeePinkTex_HEIGHT 4
extern u64 gRupeePinkTex[TEX_LEN(u64, gRupeePinkTex_WIDTH, gRupeePinkTex_HEIGHT, 16)];
#define gRupeeSilverTex_WIDTH 4
#define gRupeeSilverTex_HEIGHT 4
extern u64 gRupeeSilverTex[TEX_LEN(u64, gRupeeSilverTex_WIDTH, gRupeeSilverTex_HEIGHT, 16)];
extern Vtx gRupeeVtx[];
extern Gfx gRupeeDL[26];

#endif
