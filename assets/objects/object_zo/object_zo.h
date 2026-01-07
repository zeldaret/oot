#ifndef OBJECT_ZO_H
#define OBJECT_ZO_H

#include "ultra64.h"
#include "animation.h"
#include "tex_len.h"

extern Gfx gZoraBubblesMaterialDL[12];
extern Gfx gZoraBubblesModelDL[3];

extern Gfx gZoraSplashesMaterialDL[14];
extern Gfx gZoraSplashesModelDL[3];

extern Gfx gZoraRipplesMaterialDL[13];
extern Gfx gZoraRipplesModelDL[3];

extern AnimationHeader gZoraHandsOnHipsTappingFootAnim;
extern AnimationHeader gZoraOpenArmsAnim;
extern AnimationHeader gZoraThrowRupeesAnim;
extern AnimationHeader gZoraSurfaceAnim;
extern AnimationHeader gZoraIdleAnim;

#define ZORA_EYE_TEX_WIDTH 32
#define ZORA_EYE_TEX_HEIGHT 32
extern u64 gZoraEyeOpenTex[TEX_LEN(u64, ZORA_EYE_TEX_WIDTH, ZORA_EYE_TEX_HEIGHT, 16)];
extern u64 gZoraEyeHalfTex[TEX_LEN(u64, ZORA_EYE_TEX_WIDTH, ZORA_EYE_TEX_HEIGHT, 16)];
extern u64 gZoraEyeClosedTex[TEX_LEN(u64, ZORA_EYE_TEX_WIDTH, ZORA_EYE_TEX_HEIGHT, 16)];

typedef enum ZoraLimb {
    /*  0 */ ZORA_LIMB_NONE,
    /*  1 */ ZORA_LIMB_PELVIS,
    /*  2 */ ZORA_LIMB_LEFT_THIGHS,
    /*  3 */ ZORA_LIMB_LEFT_SHIN,
    /*  4 */ ZORA_LIMB_LEFT_FOOT,
    /*  5 */ ZORA_LIMB_RIGHT_THIGHS,
    /*  6 */ ZORA_LIMB_RIGHT_SHIN,
    /*  7 */ ZORA_LIMB_RIGHT_FOOT,
    /*  8 */ ZORA_LIMB_TORSO,
    /*  9 */ ZORA_LIMB_LEFT_ARM,
    /* 10 */ ZORA_LIMB_LEFT_FOREARM,
    /* 11 */ ZORA_LIMB_LEFT_HAND,
    /* 12 */ ZORA_LIMB_RIGHT_ARM,
    /* 13 */ ZORA_LIMB_RIGHT_FOREARM,
    /* 14 */ ZORA_LIMB_RIGHT_HAND,
    /* 15 */ ZORA_LIMB_HEAD,
    /* 16 */ ZORA_LIMB_HEAD_TAIL_1,
    /* 17 */ ZORA_LIMB_HEAD_TAIL_2,
    /* 18 */ ZORA_LIMB_HEAD_TAIL_3,
    /* 19 */ ZORA_LIMB_HEAD_TAIL_FIN,
    /* 20 */ ZORA_LIMB_MAX
} ZoraLimb;

extern FlexSkeletonHeader gZoraSkel;

#endif
