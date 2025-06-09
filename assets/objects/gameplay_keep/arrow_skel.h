#ifndef GAMEPLAY_KEEP_ARROW_SKEL_H
#define GAMEPLAY_KEEP_ARROW_SKEL_H

#include "tex_len.h"
#include "animation.h"

#define gArrowShaftTex_WIDTH 16
#define gArrowShaftTex_HEIGHT 128
extern u64 gArrowShaftTex[TEX_LEN(u64, gArrowShaftTex_WIDTH, gArrowShaftTex_HEIGHT, 16)];
#define gArrowFletchingTex_WIDTH 32
#define gArrowFletchingTex_HEIGHT 16
extern u64 gArrowFletchingTex[TEX_LEN(u64, gArrowFletchingTex_WIDTH, gArrowFletchingTex_HEIGHT, 16)];
extern Vtx gArrowNearVtx[];
extern Gfx gArrowNearDL[60];
extern Vtx gArrowFarVtx[];
extern Gfx gArrowFarDL[52];
extern LodLimb gArrowSkelLimb_0;
extern LodLimb gArrowSkelLimb_1;
extern LodLimb gArrowSkelLimb_2;
extern LodLimb gArrowSkelLimb_3;
extern void* gArrowLimbs[];
typedef enum gArrowSkelLimb {
    /*  0 */ ARROW_LIMB_NONE,
    /*  1 */ ARROW_LIMB_0,
    /*  2 */ ARROW_LIMB_1,
    /*  3 */ ARROW_LIMB_2,
    /*  4 */ ARROW_LIMB_3,
    /*  5 */ ARROW_LIMB_MAX
} gArrowSkelLimb;
extern SkeletonHeader gArrowSkel;

#endif
