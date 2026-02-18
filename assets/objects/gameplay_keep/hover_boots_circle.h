#ifndef GAMEPLAY_KEEP_HOVER_BOOTS_CIRCLE_H
#define GAMEPLAY_KEEP_HOVER_BOOTS_CIRCLE_H

#include "tex_len.h"
#include "ultra64.h"

#define gEffUnknown13Tex_WIDTH 16
#define gEffUnknown13Tex_HEIGHT 32
extern u64 gEffUnknown13Tex[TEX_LEN(u64, gEffUnknown13Tex_WIDTH, gEffUnknown13Tex_HEIGHT, 8)];
#define gEffUnknown14Tex_WIDTH 16
#define gEffUnknown14Tex_HEIGHT 32
extern u64 gEffUnknown14Tex[TEX_LEN(u64, gEffUnknown14Tex_WIDTH, gEffUnknown14Tex_HEIGHT, 8)];
extern Vtx gHoverBootsCircleVtx[];
extern Gfx gHoverBootsCircleDL[26];

#endif
