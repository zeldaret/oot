#ifndef GAMEPLAY_KEEP_BUG_SKEL_H
#define GAMEPLAY_KEEP_BUG_SKEL_H

#include "tex_len.h"
#include "ultra64.h"
#include "animation.h"

extern Gfx gBugLimb_1DL[20];
extern Gfx gBugLimb_1WrapperDL[2];
extern Gfx gBugLimb_1WrapperWrapperDL[2];
extern Vtx gBugLimb_1Vtx[];
extern Gfx gBugLimb_2DL[20];
extern Gfx gBugLimb_2WrapperDL[2];
extern Gfx gBugLimb_2WrapperWrapperDL[2];
extern Vtx gBugLimb_2Vtx[];
extern Gfx gBugLimb_3DL[20];
extern Gfx gBugLimb_3WrapperDL[2];
extern Gfx gBugLimb_3WrapperWrapperDL[2];
extern Vtx gBugLimb_3Vtx[];
extern Gfx gBugLimb_4DL[20];
extern Gfx gBugLimb_4WrapperDL[2];
extern Gfx gBugLimb_4WrapperWrapperDL[2];
extern Vtx gBugLimb_4Vtx[];
extern Gfx gBugLimb_5DL[20];
extern Gfx gBugLimb_5WrapperDL[2];
extern Gfx gBugLimb_5WrapperWrapperDL[2];
extern Vtx gBugLimb_5Vtx[];
extern Gfx gBugLimb_6DL[20];
extern Gfx gBugLimb_6WrapperDL[2];
extern Gfx gBugLimb_6WrapperWrapperDL[2];
extern Vtx gBugLimb_6Vtx[];
extern Gfx gBugLimb_7DL[20];
extern Gfx gBugLimb_7WrapperDL[2];
extern Gfx gBugLimb_7WrapperWrapperDL[2];
extern Vtx gBugLimb_7Vtx[];
extern Gfx gBugLimb_8DL[20];
extern Gfx gBugLimb_8WrapperDL[2];
extern Gfx gBugLimb_8WrapperWrapperDL[2];
extern Vtx gBugLimb_8Vtx[];
extern Gfx gBugLimb_9DL[22];
extern Gfx gBugLimb_9WrapperDL[2];
extern Gfx gBugLimb_9WrapperWrapperDL[2];
extern Vtx gBugLimb_9Vtx[];
#define gBugBodyTex_WIDTH 16
#define gBugBodyTex_HEIGHT 64
extern u64 gBugBodyTex[TEX_LEN(u64, gBugBodyTex_WIDTH, gBugBodyTex_HEIGHT, 16)];
#define gBugLegTex_WIDTH 8
#define gBugLegTex_HEIGHT 16
extern u64 gBugLegTex[TEX_LEN(u64, gBugLegTex_WIDTH, gBugLegTex_HEIGHT, 16)];
extern StandardLimb gBugSkelLimb_0;
extern StandardLimb gBugSkelLimb_1;
extern StandardLimb gBugSkelLimb_2;
extern StandardLimb gBugSkelLimb_3;
extern StandardLimb gBugSkelLimb_4;
extern StandardLimb gBugSkelLimb_5;
extern StandardLimb gBugSkelLimb_6;
extern StandardLimb gBugSkelLimb_7;
extern StandardLimb gBugSkelLimb_8;
extern StandardLimb gBugSkelLimb_9;
extern StandardLimb gBugSkelLimb_10;
extern StandardLimb gBugSkelLimb_11;
extern StandardLimb gBugSkelLimb_12;
extern StandardLimb gBugSkelLimb_13;
extern StandardLimb gBugSkelLimb_14;
extern StandardLimb gBugSkelLimb_15;
extern StandardLimb gBugSkelLimb_16;
extern StandardLimb gBugSkelLimb_17;
extern StandardLimb gBugSkelLimb_18;
extern StandardLimb gBugSkelLimb_19;
extern StandardLimb gBugSkelLimb_20;
extern StandardLimb gBugSkelLimb_21;
extern StandardLimb gBugSkelLimb_22;
extern void* gBugLimbs[];
typedef enum BugSkelLimb {
    /*  0 */ BUG_LIMB_NONE,
    /*  1 */ BUG_LIMB_0,
    /*  2 */ BUG_LIMB_1,
    /*  3 */ BUG_LIMB_2,
    /*  4 */ BUG_LIMB_3,
    /*  5 */ BUG_LIMB_4,
    /*  6 */ BUG_LIMB_5,
    /*  7 */ BUG_LIMB_6,
    /*  8 */ BUG_LIMB_7,
    /*  9 */ BUG_LIMB_8,
    /* 10 */ BUG_LIMB_9,
    /* 11 */ BUG_LIMB_10,
    /* 12 */ BUG_LIMB_11,
    /* 13 */ BUG_LIMB_12,
    /* 14 */ BUG_LIMB_13,
    /* 15 */ BUG_LIMB_14,
    /* 16 */ BUG_LIMB_15,
    /* 17 */ BUG_LIMB_16,
    /* 18 */ BUG_LIMB_17,
    /* 19 */ BUG_LIMB_18,
    /* 20 */ BUG_LIMB_19,
    /* 21 */ BUG_LIMB_20,
    /* 22 */ BUG_LIMB_21,
    /* 23 */ BUG_LIMB_22,
    /* 24 */ BUG_LIMB_MAX
} BugSkelLimb;
extern SkeletonHeader gBugSkel;

#endif
