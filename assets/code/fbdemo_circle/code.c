#include "code.h"

u64 sTransCircleNormalTex[TEX_LEN(u64, sTransCircleNormalTex_WIDTH, sTransCircleNormalTex_HEIGHT, 8)] = {
#include "assets/code/fbdemo_circle/sTransCircleNormalTex.i8.inc.c"
};

u64 sTransCircleWaveTex[TEX_LEN(u64, sTransCircleWaveTex_WIDTH, sTransCircleWaveTex_HEIGHT, 8)] = {
#include "assets/code/fbdemo_circle/sTransCircleWaveTex.i8.inc.c"
};

u64 sTransCircleRippleTex[TEX_LEN(u64, sTransCircleRippleTex_WIDTH, sTransCircleRippleTex_HEIGHT, 8)] = {
#include "assets/code/fbdemo_circle/sTransCircleRippleTex.i8.inc.c"
};

u64 sTransCircleStarburstTex[TEX_LEN(u64, sTransCircleStarburstTex_WIDTH, sTransCircleStarburstTex_HEIGHT, 8)] = {
#include "assets/code/fbdemo_circle/sTransCircleStarburstTex.i8.inc.c"
};

Vtx sTransCircleVtx[34] = {
#include "assets/code/fbdemo_circle/sTransCircleVtx.inc.c"
};

Gfx sTransCircleDL[26] = {
#include "assets/code/fbdemo_circle/sTransCircleDL.inc.c"
};

