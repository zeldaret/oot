#ifndef GAMEPLAY_KEEP_EFF_SPARKLES_H
#define GAMEPLAY_KEEP_EFF_SPARKLES_H

#include "tex_len.h"
#include "ultra64.h"

extern Vtx gEffSparklesVtx[];
extern Gfx gEffSparklesDL[12];
#define gEffSparklesTex_WIDTH 16
#define gEffSparklesTex_HEIGHT 16
extern u64 gEffSparklesTex[TEX_LEN(u64, gEffSparklesTex_WIDTH, gEffSparklesTex_HEIGHT, 4)];

#endif
