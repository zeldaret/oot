#ifndef OBJECT_TA_H
#define OBJECT_TA_H

#include "ultra64.h"
#include "animation.h"
#include "tex_len.h"

#define gTalonHeadSkinTex_WIDTH 8
#define gTalonHeadSkinTex_HEIGHT 8
extern u64 gTalonHeadSkinTex[TEX_LEN(u64, gTalonHeadSkinTex_WIDTH, gTalonHeadSkinTex_HEIGHT, 8)];

#define gTalonRedTex_WIDTH 8
#define gTalonRedTex_HEIGHT 8
extern u64 gTalonRedTex[TEX_LEN(u64, gTalonRedTex_WIDTH, gTalonRedTex_HEIGHT, 8)];

#define TALON_EYE_TEX_WIDTH 32
#define TALON_EYE_TEX_HEIGHT 32
extern u64 gTalonEyeHalfTex[TEX_LEN(u64, TALON_EYE_TEX_WIDTH, TALON_EYE_TEX_HEIGHT, 8)];
extern u64 gTalonEyeClosedTex[TEX_LEN(u64, TALON_EYE_TEX_WIDTH, TALON_EYE_TEX_HEIGHT, 8)];
extern u64 gTalonEyeClosed2Tex[TEX_LEN(u64, TALON_EYE_TEX_WIDTH, TALON_EYE_TEX_HEIGHT, 8)];
extern u64 gTalonEyeOpenTex[TEX_LEN(u64, TALON_EYE_TEX_WIDTH, TALON_EYE_TEX_HEIGHT, 8)];

typedef enum TalonLimb {
    /*  0 */ TALON_LIMB_NONE,
    /*  1 */ TALON_LIMB_ROOT,
    /*  2 */ TALON_LIMB_LEFT_THIGH,
    /*  3 */ TALON_LIMB_LEFT_LEG,
    /*  4 */ TALON_LIMB_LEFT_FOOT,
    /*  5 */ TALON_LIMB_RIGHT_THIGH,
    /*  6 */ TALON_LIMB_RIGHT_LEG,
    /*  7 */ TALON_LIMB_RIGHT_FOOT,
    /*  8 */ TALON_LIMB_CHEST,
    /*  9 */ TALON_LIMB_LEFT_SHOULDER,
    /* 10 */ TALON_LIMB_LEFT_ARM,
    /* 11 */ TALON_LIMB_LEFT_HAND,
    /* 12 */ TALON_LIMB_RIGHT_SHOULDER,
    /* 13 */ TALON_LIMB_RIGHT_ARM,
    /* 14 */ TALON_LIMB_RIGHT_HAND,
    /* 15 */ TALON_LIMB_HEAD,
    /* 16 */ TALON_LIMB_TORSO,
    /* 17 */ TALON_LIMB_MAX
} TalonLimb;

extern FlexSkeletonHeader gTalonSkel;

extern AnimationHeader gTalonSitSleepingAnim;
extern AnimationHeader gTalonStandAnim;
extern AnimationHeader gTalonSitHandsUpAnim;
extern AnimationHeader gTalonSitWakeUpAnim;
extern AnimationHeader gTalonRunAnim;
extern AnimationHeader gTalonSleepAnim;
extern AnimationHeader gTalonRunTransitionAnim;
extern AnimationHeader gTalonWakeUpAnim;

#endif
