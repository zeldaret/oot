#ifndef GAMEPLAY_KEEP_LINK_TEXTURES_H
#define GAMEPLAY_KEEP_LINK_TEXTURES_H

#include "tex_len.h"
#include "ultra64.h"

#define gLinkHairTex_WIDTH 16
#define gLinkHairTex_HEIGHT 16
extern u64 gLinkHairTex[TEX_LEN(u64, gLinkHairTex_WIDTH, gLinkHairTex_HEIGHT, 16)];
#define gLinkTunic1Tex_WIDTH 16
#define gLinkTunic1Tex_HEIGHT 16
extern u64 gLinkTunic1Tex[TEX_LEN(u64, gLinkTunic1Tex_WIDTH, gLinkTunic1Tex_HEIGHT, 8)];
#define gLinkTunic2Tex_WIDTH 16
#define gLinkTunic2Tex_HEIGHT 32
extern u64 gLinkTunic2Tex[TEX_LEN(u64, gLinkTunic2Tex_WIDTH, gLinkTunic2Tex_HEIGHT, 8)];
#define gLinkTunic3Tex_WIDTH 16
#define gLinkTunic3Tex_HEIGHT 16
extern u64 gLinkTunic3Tex[TEX_LEN(u64, gLinkTunic3Tex_WIDTH, gLinkTunic3Tex_HEIGHT, 8)];

#endif
