#ifndef OBJECT_NIW_G_CUCCO_SKEL_H
#define OBJECT_NIW_G_CUCCO_SKEL_H

#include "tex_len.h"
#include "ultra64.h"
#include "animation.h"

#define gCuccoEyeTex_WIDTH 16
#define gCuccoEyeTex_HEIGHT 16
extern u64 gCuccoEyeTex[TEX_LEN(u64, gCuccoEyeTex_WIDTH, gCuccoEyeTex_HEIGHT, 16)];
#define gCuccoHeadFeathersTex_WIDTH 8
#define gCuccoHeadFeathersTex_HEIGHT 16
extern u64 gCuccoHeadFeathersTex[TEX_LEN(u64, gCuccoHeadFeathersTex_WIDTH, gCuccoHeadFeathersTex_HEIGHT, 16)];
#define gCuccoBaseFeathersTex_WIDTH 8
#define gCuccoBaseFeathersTex_HEIGHT 8
extern u64 gCuccoBaseFeathersTex[TEX_LEN(u64, gCuccoBaseFeathersTex_WIDTH, gCuccoBaseFeathersTex_HEIGHT, 16)];
#define gCuccoBeakTex_WIDTH 8
#define gCuccoBeakTex_HEIGHT 8
extern u64 gCuccoBeakTex[TEX_LEN(u64, gCuccoBeakTex_WIDTH, gCuccoBeakTex_HEIGHT, 16)];
#define gCuccoCombTex_WIDTH 16
#define gCuccoCombTex_HEIGHT 16
extern u64 gCuccoCombTex[TEX_LEN(u64, gCuccoCombTex_WIDTH, gCuccoCombTex_HEIGHT, 16)];
#define gCuccoTailFeathersTex_WIDTH 32
#define gCuccoTailFeathersTex_HEIGHT 32
extern u64 gCuccoTailFeathersTex[TEX_LEN(u64, gCuccoTailFeathersTex_WIDTH, gCuccoTailFeathersTex_HEIGHT, 16)];
#define gCuccoClawTex_WIDTH 8
#define gCuccoClawTex_HEIGHT 16
extern u64 gCuccoClawTex[TEX_LEN(u64, gCuccoClawTex_WIDTH, gCuccoClawTex_HEIGHT, 16)];
#define gCuccoTex_2180_WIDTH 16
#define gCuccoTex_2180_HEIGHT 16
extern u64 gCuccoTex_2180[TEX_LEN(u64, gCuccoTex_2180_WIDTH, gCuccoTex_2180_HEIGHT, 16)];

extern Vtx gCuccoEffectFeatherModelVtx[];
extern Gfx gCuccoEffectFeatherMaterialDL[15];
extern Gfx gCuccoEffectFeatherModelDL[3];

typedef enum gCuccoSkelLimb {
    /*  0 */ CUCCO_LIMB_NONE,
    /*  1 */ CUCCO_LIMB_ROOT,
    /*  2 */ CUCCO_LIMB_00244C,
    /*  3 */ CUCCO_LIMB_002458,
    /*  4 */ CUCCO_LIMB_TAIL_AND_UNDERSIDE,
    /*  5 */ CUCCO_LIMB_LEFT_FOOT_ROOT,
    /*  6 */ CUCCO_LIMB_LEFT_FOOT,
    /*  7 */ CUCCO_LIMB_LEFT_WING_ROOT,
    /*  8 */ CUCCO_LIMB_LEFT_WING,
    /*  9 */ CUCCO_LIMB_RIGHT_FOOT_ROOT,
    /* 10 */ CUCCO_LIMB_RIGHT_FOOT,
    /* 11 */ CUCCO_LIMB_RIGHT_WING_ROOT,
    /* 12 */ CUCCO_LIMB_RIGHT_WING,
    /* 13 */ CUCCO_LIMB_UPPER_BODY_ROOT,
    /* 14 */ CUCCO_LIMB_NECK,
    /* 15 */ CUCCO_LIMB_HEAD,
    /* 16 */ CUCCO_LIMB_MAX
} gCuccoSkelLimb;

extern FlexSkeletonHeader gCuccoSkel;

#endif
