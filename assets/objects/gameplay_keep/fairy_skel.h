#ifndef GAMEPLAY_KEEP_FAIRY_SKEL_H
#define GAMEPLAY_KEEP_FAIRY_SKEL_H

#include "tex_len.h"
#include "ultra64.h"
#include "animation.h"

#define gFairyWingTex_WIDTH 32
#define gFairyWingTex_HEIGHT 64
extern u64 gFairyWingTex[TEX_LEN(u64, gFairyWingTex_WIDTH, gFairyWingTex_HEIGHT, 8)];
extern Vtx gFairyWing1Vtx[];
extern Gfx gFairyWing1DL[17];
extern Vtx gFairyWing2Vtx[];
extern Gfx gFairyWing2DL[17];
extern Vtx gFairyWing3Vtx[];
extern Gfx gFairyWing3DL[17];
extern Vtx gFairyWing4Vtx[];
extern Gfx gFairyWing4DL[17];
extern Vtx gGlowCircleVtx[];
extern Gfx gGlowCircleTextureLoadDL[8];
extern Gfx gGlowCircleDL[4];
extern Gfx gGlowCircleSmallDL[45];
extern Vtx gGlowCircleSmallVtx[];
#define gUnusedFairyWingTex_WIDTH 32
#define gUnusedFairyWingTex_HEIGHT 64
extern u64 gUnusedFairyWingTex[TEX_LEN(u64, gUnusedFairyWingTex_WIDTH, gUnusedFairyWingTex_HEIGHT, 16)];
extern StandardLimb gFairySkelLimb_0;
extern StandardLimb gFairySkelLimb_1;
extern StandardLimb gFairySkelLimb_2;
extern StandardLimb gFairySkelLimb_3;
extern StandardLimb gFairySkelLimb_4;
extern StandardLimb gFairySkelLimb_5;
extern StandardLimb gFairySkelLimb_6;
extern StandardLimb gFairySkelLimb_7;
extern StandardLimb gFairySkelLimb_8;
extern StandardLimb gFairySkelLimb_9;
extern StandardLimb gFairySkelLimb_10;
extern StandardLimb gFairySkelLimb_11;
extern StandardLimb gFairySkelLimb_12;
extern StandardLimb gFairySkelLimb_13;
extern void* gFairyLimbs[];
typedef enum gFairySkelLimb {
    /*  0 */ FAIRY_LIMB_NONE,
    /*  1 */ FAIRY_LIMB_0,
    /*  2 */ FAIRY_LIMB_1,
    /*  3 */ FAIRY_LIMB_2,
    /*  4 */ FAIRY_LIMB_3,
    /*  5 */ FAIRY_LIMB_4,
    /*  6 */ FAIRY_LIMB_5,
    /*  7 */ FAIRY_LIMB_6,
    /*  8 */ FAIRY_LIMB_7,
    /*  9 */ FAIRY_LIMB_8,
    /* 10 */ FAIRY_LIMB_9,
    /* 11 */ FAIRY_LIMB_10,
    /* 12 */ FAIRY_LIMB_11,
    /* 13 */ FAIRY_LIMB_12,
    /* 14 */ FAIRY_LIMB_13,
    /* 15 */ FAIRY_LIMB_MAX
} gFairySkelLimb;
extern SkeletonHeader gFairySkel;

#endif
