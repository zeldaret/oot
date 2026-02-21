#ifndef GAMEPLAY_KEEP_SUN_TEXTURES_H
#define GAMEPLAY_KEEP_SUN_TEXTURES_H

#include "tex_len.h"
#include "ultra64.h"

#define gSun1Tex_WIDTH 64
#define gSun1Tex_HEIGHT 31
extern u64 gSun1Tex[TEX_LEN(u64, gSun1Tex_WIDTH, gSun1Tex_HEIGHT, 4)];
#define gSun2Tex_WIDTH 64
#define gSun2Tex_HEIGHT 16
extern u64 gSun2Tex[TEX_LEN(u64, gSun2Tex_WIDTH, gSun2Tex_HEIGHT, 4)];
#define gSun3Tex_WIDTH 64
#define gSun3Tex_HEIGHT 16
extern u64 gSun3Tex[TEX_LEN(u64, gSun3Tex_WIDTH, gSun3Tex_HEIGHT, 4)];

#endif
