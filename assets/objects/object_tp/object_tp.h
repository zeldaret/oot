#ifndef OBJECT_TP_H
#define OBJECT_TP_H

#include "ultra64.h"
#include "tex_len.h"

extern Gfx gTailpasaranTailSegmentDL[14];
extern Vtx gTailpasaranTailSegmentVtx[];

extern Gfx gTailpasaranHeadClawDL[54];
extern Gfx gTailpasaranHeadMouthpartsDL[18];
extern Gfx gTailpasaranHeadDL[3];

#define gTailpasaranHeadRearTex_WIDTH 8
#define gTailpasaranHeadRearTex_HEIGHT 16
extern u64 gTailpasaranHeadRearTex[TEX_LEN(u64, gTailpasaranHeadRearTex_WIDTH, gTailpasaranHeadRearTex_HEIGHT, 16)];

#define gTailpasaranHeadClawBaseTex_WIDTH 8
#define gTailpasaranHeadClawBaseTex_HEIGHT 8
extern u64 gTailpasaranHeadClawBaseTex[TEX_LEN(u64, gTailpasaranHeadClawBaseTex_WIDTH, gTailpasaranHeadClawBaseTex_HEIGHT, 16)];

#define gTailpasaranHeadClawTex_WIDTH 16
#define gTailpasaranHeadClawTex_HEIGHT 16
extern u64 gTailpasaranHeadClawTex[TEX_LEN(u64, gTailpasaranHeadClawTex_WIDTH, gTailpasaranHeadClawTex_HEIGHT, 16)];

#define gTailpasaranTailSegmentTex_WIDTH 64
#define gTailpasaranTailSegmentTex_HEIGHT 64
extern u64 gTailpasaranTailSegmentTex[TEX_LEN(u64, gTailpasaranTailSegmentTex_WIDTH, gTailpasaranTailSegmentTex_HEIGHT, 8)];

#define gTailpasaranHeadMouthpartsTex_WIDTH 8
#define gTailpasaranHeadMouthpartsTex_HEIGHT 8
extern u64 gTailpasaranHeadMouthpartsTex[TEX_LEN(u64, gTailpasaranHeadMouthpartsTex_WIDTH, gTailpasaranHeadMouthpartsTex_HEIGHT, 16)];

#endif
