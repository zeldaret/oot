#ifndef CODE_H
#define CODE_H

#include "tex_len.h"
#include "gfx.h"

extern Vtx sTransWipeVtx[25];
#define sTransWipeTex_WIDTH 64
#define sTransWipeTex_HEIGHT 64
extern u64 sTransWipeTex[TEX_LEN(u64, sTransWipeTex_WIDTH, sTransWipeTex_HEIGHT, 4)];
extern Gfx sTransWipeDL[31];

#endif
