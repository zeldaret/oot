#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_bl.h"

s16 sBiriDischargeLightningAnimFrameData[] = {
    0x0000, 0x0000, 
};

JointIndex sBiriDischargeLightningAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gBiriDischargeLightningAnim = { 
    { 7 }, sBiriDischargeLightningAnimFrameData,
    sBiriDischargeLightningAnimJointIndices, 1
};

u8 object_bl_possiblePadding_000034[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sBiriClimbAnimFrameData[] = {
    0x0000, 0x0000, 
};

JointIndex sBiriClimbAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gBiriClimbAnim = { 
    { 41 }, sBiriClimbAnimFrameData,
    sBiriClimbAnimJointIndices, 1
};

u8 object_bl_possiblePadding_000074[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sBiriDefaultAnimFrameData[] = {
    0x0000, 0x0000, 
};

JointIndex sBiriDefaultAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gBiriDefaultAnim = { 
    { 16 }, sBiriDefaultAnimFrameData,
    sBiriDefaultAnimJointIndices, 1
};

u8 object_bl_possiblePadding_0000B4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_blVtx_0000C0[] = {
#include "assets/objects/object_bl/object_blVtx_0000C0.vtx.inc"
};

Gfx gBiriTentaclesDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_IA, G_IM_SIZ_8b, 48, 48, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR |
                         G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0,
                       COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 200, 255, 255, 255),
    gsDPSetEnvColor(0, 150, 255, 0),
    gsSPVertex(object_blVtx_0000C0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gBiriInnerHoodDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gBiriInnerHoodTex, G_IM_FMT_IA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPDisplayList(0x09000000),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_blVtx_0000C0[4], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 1, 3, 0, 7, 8, 2, 0),
    gsSP2Triangles(9, 2, 8, 0, 9, 10, 0, 0),
    gsSP2Triangles(7, 2, 6, 0, 11, 1, 6, 0),
    gsSP2Triangles(12, 10, 9, 0, 7, 6, 5, 0),
    gsSP2Triangles(3, 1, 0, 0, 7, 12, 8, 0),
    gsSP2Triangles(0, 2, 9, 0, 13, 10, 12, 0),
    gsSP2Triangles(5, 4, 7, 0, 4, 12, 7, 0),
    gsSP2Triangles(4, 3, 0, 0, 4, 0, 10, 0),
    gsSP2Triangles(3, 5, 6, 0, 9, 8, 12, 0),
    gsSP2Triangles(6, 2, 11, 0, 12, 4, 13, 0),
    gsSP2Triangles(13, 4, 10, 0, 11, 2, 1, 0),
    gsSPEndDisplayList(),
};

Gfx gBiriOuterHoodDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gBiriOuterHoodTex, G_IM_FMT_IA, G_IM_SIZ_16b, 16, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 229),
    gsSPVertex(&object_blVtx_0000C0[18], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 4, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 14, 16, 0, 17, 16, 18, 0),
    gsSP2Triangles(19, 18, 20, 0, 21, 20, 22, 0),
    gsSP2Triangles(20, 21, 19, 0, 21, 23, 24, 0),
    gsSP2Triangles(15, 17, 25, 0, 16, 17, 15, 0),
    gsSP2Triangles(19, 21, 26, 0, 17, 19, 27, 0),
    gsSP2Triangles(12, 15, 28, 0, 14, 15, 12, 0),
    gsSP2Triangles(18, 19, 17, 0, 22, 23, 21, 0),
    gsSPEndDisplayList(),
};

u64 gBiriOuterHoodTex[] = {
#include "assets/objects/object_bl/biri_outer_hood.ia16.inc.c"
};

u64 gBiriTentacles0Tex[] = {
#include "assets/objects/object_bl/biri_tentacles_0.ia8.inc.c"
};

u64 gBiriTentacles1Tex[] = {
#include "assets/objects/object_bl/biri_tentacles_1.ia8.inc.c"
};

u64 gBiriTentacles2Tex[] = {
#include "assets/objects/object_bl/biri_tentacles_2.ia8.inc.c"
};

u64 gBiriTentacles3Tex[] = {
#include "assets/objects/object_bl/biri_tentacles_3.ia8.inc.c"
};

u64 gBiriTentacles4Tex[] = {
#include "assets/objects/object_bl/biri_tentacles_4.ia8.inc.c"
};

u64 gBiriTentacles5Tex[] = {
#include "assets/objects/object_bl/biri_tentacles_5.ia8.inc.c"
};

u64 gBiriTentacles6Tex[] = {
#include "assets/objects/object_bl/biri_tentacles_6.ia8.inc.c"
};

u64 gBiriTentacles7Tex[] = {
#include "assets/objects/object_bl/biri_tentacles_7.ia8.inc.c"
};

u64 gBiriInnerHoodTex[] = {
#include "assets/objects/object_bl/biri_inner_hood.ia16.inc.c"
};

StandardLimb gBiriRootLimb = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gBiriInnerHoodLimb = { 
    { 0, 0, 0 }, LIMB_DONE, 0x02,
    gBiriInnerHoodDL
};

StandardLimb gBiriOuterHoodLimb = { 
    { 0, 0, 0 }, LIMB_DONE, 0x03,
    gBiriOuterHoodDL
};

StandardLimb gBiriTentaclesLimb = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBiriTentaclesDL
};

void* gBiriSkelLimbs[] = {
    &gBiriRootLimb,
    &gBiriInnerHoodLimb,
    &gBiriOuterHoodLimb,
    &gBiriTentaclesLimb,
};

SkeletonHeader gBiriSkel = { 
    gBiriSkelLimbs, ARRAY_COUNT(gBiriSkelLimbs)
};

