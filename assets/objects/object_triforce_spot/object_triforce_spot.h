#ifndef OBJECT_TRIFORCE_SPOT_H
#define OBJECT_TRIFORCE_SPOT_H

#include "ultra64.h"
#include "tex_len.h"

extern Vtx gTriforceVtx[];
extern Gfx gTriforceDL[72];

extern Gfx gTriforceLightColumnDL[26];

#define gTriforceTex_WIDTH 64
#define gTriforceTex_HEIGHT 64
extern u64 gTriforceTex[TEX_LEN(u64, gTriforceTex_WIDTH, gTriforceTex_HEIGHT, 8)];

#define gTriforceColumnSide1Tex_WIDTH 64
#define gTriforceColumnSide1Tex_HEIGHT 32
extern u64 gTriforceColumnSide1Tex[TEX_LEN(u64, gTriforceColumnSide1Tex_WIDTH, gTriforceColumnSide1Tex_HEIGHT, 8)];

#define gTriforceColumnSide2Tex_WIDTH 64
#define gTriforceColumnSide2Tex_HEIGHT 32
extern u64 gTriforceColumnSide2Tex[TEX_LEN(u64, gTriforceColumnSide2Tex_WIDTH, gTriforceColumnSide2Tex_HEIGHT, 8)];

#endif
