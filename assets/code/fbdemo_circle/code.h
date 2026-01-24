#ifndef FBDEMO_CIRCLE_CODE_H
#define FBDEMO_CIRCLE_CODE_H

#include "tex_len.h"
#include "gfx.h"

#define sTransCircleNormalTex_WIDTH 16
#define sTransCircleNormalTex_HEIGHT 64
extern u64 sTransCircleNormalTex[TEX_LEN(u64, sTransCircleNormalTex_WIDTH, sTransCircleNormalTex_HEIGHT, 8)];
#define sTransCircleWaveTex_WIDTH 16
#define sTransCircleWaveTex_HEIGHT 64
extern u64 sTransCircleWaveTex[TEX_LEN(u64, sTransCircleWaveTex_WIDTH, sTransCircleWaveTex_HEIGHT, 8)];
#define sTransCircleRippleTex_WIDTH 16
#define sTransCircleRippleTex_HEIGHT 64
extern u64 sTransCircleRippleTex[TEX_LEN(u64, sTransCircleRippleTex_WIDTH, sTransCircleRippleTex_HEIGHT, 8)];
#define sTransCircleStarburstTex_WIDTH 16
#define sTransCircleStarburstTex_HEIGHT 64
extern u64 sTransCircleStarburstTex[TEX_LEN(u64, sTransCircleStarburstTex_WIDTH, sTransCircleStarburstTex_HEIGHT, 8)];
extern Vtx sTransCircleVtx[34];
extern Gfx sTransCircleDL[26];

#endif
