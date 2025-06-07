#ifndef GAMEPLAY_KEEP_0x34020_H
#define GAMEPLAY_KEEP_0x34020_H

#include "tex_len.h"
#include "ultra64.h"
#include "animation.h"

extern s16 gBugCrawlFrameData[];
extern JointIndex gBugCrawlJointIndices[];
extern AnimationHeader gBugCrawlAnim;
extern Gfx gBugLimb1DL[20];
extern Gfx gBugLimb1WrapperDL[2];
extern Gfx gBugLimb1WrapperWrapperDL[2];
extern Vtx gBugLimb1Vtx[];
extern Gfx gBugLimb2DL[20];
extern Gfx gBugLimb2WrapperDL[2];
extern Gfx gBugLimb2WrapperWrapperDL[2];
extern Vtx gBugLimb2Vtx[];
extern Gfx gBugLimb3DL[20];
extern Gfx gBugLimb3WrapperDL[2];
extern Gfx gBugLimb3WrapperWrapperDL[2];
extern Vtx gBugLimb3Vtx[];
extern Gfx gBugLimb4DL[20];
extern Gfx gBugLimb4WrapperDL[2];
extern Gfx gBugLimb4WrapperWrapperDL[2];
extern Vtx gBugLimb4Vtx[];
extern Gfx gBugLimb5DL[20];
extern Gfx gBugLimb5WrapperDL[2];
extern Gfx gBugLimb5WrapperWrapperDL[2];
extern Vtx gBugLimb5Vtx[];
extern Gfx gBugLimb6DL[20];
extern Gfx gBugLimb6WrapperDL[2];
extern Gfx gBugLimb6WrapperWrapperDL[2];
extern Vtx gBugLimb6Vtx[];
extern Gfx gBugLimb7DL[20];
extern Gfx gBugLimb7WrapperDL[2];
extern Gfx gBugLimb7WrapperWrapperDL[2];
extern Vtx gBugLimb7Vtx[];
extern Gfx gBugLimb8DL[20];
extern Gfx gBugLimb8WrapperDL[2];
extern Gfx gBugLimb8WrapperWrapperDL[2];
extern Vtx gBugLimb8Vtx[];
extern Gfx gBugLimb9DL[22];
extern Gfx gBugLimb9WrapperDL[2];
extern Gfx gBugLimb9WrapperWrapperDL[2];
extern Vtx gBugLimb9Vtx[];
#define gBugBodyTex_WIDTH 16
#define gBugBodyTex_HEIGHT 64
extern u64 gBugBodyTex[TEX_LEN(u64, gBugBodyTex_WIDTH, gBugBodyTex_HEIGHT, 16)];
#define gBugLegTex_WIDTH 8
#define gBugLegTex_HEIGHT 16
extern u64 gBugLegTex[TEX_LEN(u64, gBugLegTex_WIDTH, gBugLegTex_HEIGHT, 16)];
extern StandardLimb gBugSkelLimb0;
extern StandardLimb gBugSkelLimb1;
extern StandardLimb gBugSkelLimb2;
extern StandardLimb gBugSkelLimb3;
extern StandardLimb gBugSkelLimb4;
extern StandardLimb gBugSkelLimb5;
extern StandardLimb gBugSkelLimb6;
extern StandardLimb gBugSkelLimb7;
extern StandardLimb gBugSkelLimb8;
extern StandardLimb gBugSkelLimb9;
extern StandardLimb gBugSkelLimb10;
extern StandardLimb gBugSkelLimb11;
extern StandardLimb gBugSkelLimb12;
extern StandardLimb gBugSkelLimb13;
extern StandardLimb gBugSkelLimb14;
extern StandardLimb gBugSkelLimb15;
extern StandardLimb gBugSkelLimb16;
extern StandardLimb gBugSkelLimb17;
extern StandardLimb gBugSkelLimb18;
extern StandardLimb gBugSkelLimb19;
extern StandardLimb gBugSkelLimb20;
extern StandardLimb gBugSkelLimb21;
extern StandardLimb gBugSkelLimb22;
extern void* gBugLimbs[];
typedef enum gBugSkelLimb {
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
} gBugSkelLimb;
extern SkeletonHeader gBugSkel;

#endif
