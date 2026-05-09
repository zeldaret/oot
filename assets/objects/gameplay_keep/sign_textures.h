#ifndef GAMEPLAY_KEEP_SIGN_TEXTURES_H
#define GAMEPLAY_KEEP_SIGN_TEXTURES_H

#include "tex_len.h"
#include "ultra64.h"

#define gSignRectangularSideTex_WIDTH 32
#define gSignRectangularSideTex_HEIGHT 16
extern u64 gSignRectangularSideTex[TEX_LEN(u64, gSignRectangularSideTex_WIDTH, gSignRectangularSideTex_HEIGHT, 16)];
#define gSignRectangularFrontTex_WIDTH 32
#define gSignRectangularFrontTex_HEIGHT 16
extern u64 gSignRectangularFrontTex[TEX_LEN(u64, gSignRectangularFrontTex_WIDTH, gSignRectangularFrontTex_HEIGHT, 16)];
#define gSignPostWoodTex_WIDTH 64
#define gSignPostWoodTex_HEIGHT 8
extern u64 gSignPostWoodTex[TEX_LEN(u64, gSignPostWoodTex_WIDTH, gSignPostWoodTex_HEIGHT, 16)];
#define gSignLetteringTex_WIDTH 64
#define gSignLetteringTex_HEIGHT 32
extern u64 gSignLetteringTex[TEX_LEN(u64, gSignLetteringTex_WIDTH, gSignLetteringTex_HEIGHT, 16)];

#endif
