#ifndef GAMEPLAY_KEEP_0x18610_H
#define GAMEPLAY_KEEP_0x18610_H

#include "tex_len.h"
#include "ultra64.h"
#include "animation.h"

extern Vtx gameplay_keep_Vtx_018610[];
extern Vtx gameplay_keep_Vtx_018650[];
extern Vtx gameplay_keep_Vtx_018750[];
extern Gfx gameplay_keep_0188B0_DL[20];
extern Gfx gameplay_keep_018950_DL[35];
extern Gfx gameplay_keep_018A68_DL[35];
#define gFishTailTex_WIDTH 16
#define gFishTailTex_HEIGHT 16
extern u64 gFishTailTex[TEX_LEN(u64, gFishTailTex_WIDTH, gFishTailTex_HEIGHT, 16)];
#define gFishBodyTex_WIDTH 32
#define gFishBodyTex_HEIGHT 8
extern u64 gFishBodyTex[TEX_LEN(u64, gFishBodyTex_WIDTH, gFishBodyTex_HEIGHT, 16)];
extern StandardLimb gFishSkelLimb_0;
extern StandardLimb gFishSkelLimb_1;
extern StandardLimb gFishSkelLimb_2;
extern StandardLimb gFishSkelLimb_3;
extern StandardLimb gFishSkelLimb_4;
extern StandardLimb gFishSkelLimb_5;
extern void* gFishLimbs[];
typedef enum gFishSkelLimb {
    /*  0 */ FISH_LIMB_NONE,
    /*  1 */ FISH_LIMB_0,
    /*  2 */ FISH_LIMB_1,
    /*  3 */ FISH_LIMB_2,
    /*  4 */ FISH_LIMB_3,
    /*  5 */ FISH_LIMB_4,
    /*  6 */ FISH_LIMB_5,
    /*  7 */ FISH_LIMB_MAX
} gFishSkelLimb;
extern FlexSkeletonHeader gFishSkel;

#endif
