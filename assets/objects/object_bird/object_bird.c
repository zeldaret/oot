#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_bird.h"

s16 sBirdFlyAnimFrameData[] = {
    0x0000, 0x4000, 0xFBB9, 0xC000, 0x0447, 0xFFE2, 0xFFF2, 0x000E, 0x001E, 0x000E, 0xFFF2, 0x238E, 0x111F, 0xEEE1, 
    0xDC72, 0xEEE1, 0x111F, 0x238E, 0x111F, 0xEEE1, 0xDC72, 0xEEE1, 0x111F, 0x0000, 
};

JointIndex sBirdFlyAnimJointIndices[] = {
    { 0x0000, 0x0005, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0002, 0x0003, 0x0002 },
    { 0x0000, 0x0000, 0x000B },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0004, 0x0001, 0x0002 },
    { 0x0000, 0x0000, 0x0011 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gBirdFlyAnim = { 
    { 6 }, sBirdFlyAnimFrameData,
    sBirdFlyAnimJointIndices, 5
};

Gfx gBirdLeftWingDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gBirdWingTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_birdVtx_000140, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gBirdLeftWingWrapper1DL[] = {
    gsSPDisplayList(gBirdLeftWingDL),
    gsSPEndDisplayList(),
};

Gfx gBirdLeftWingWrapper2DL[] = {
    gsSPDisplayList(gBirdLeftWingWrapper1DL),
    gsSPEndDisplayList(),
};

Vtx object_birdVtx_000140[] = {
#include "assets/objects/object_bird/object_birdVtx_000140.vtx.inc"
};

Gfx gBirdRightWingDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gBirdWingTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_birdVtx_000240, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gBirdRightWingWrapper1DL[] = {
    gsSPDisplayList(gBirdRightWingDL),
    gsSPEndDisplayList(),
};

Gfx gBirdRightWingWrapper2DL[] = {
    gsSPDisplayList(gBirdRightWingWrapper1DL),
    gsSPEndDisplayList(),
};

Vtx object_birdVtx_000240[] = {
#include "assets/objects/object_bird/object_birdVtx_000240.vtx.inc"
};

Gfx gBirdBodyDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gBirdFaceTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_birdVtx_0003F0, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 1, 0, 0, 0, 3, 6, 0),
    gsSP2Triangles(2, 4, 0, 0, 0, 6, 5, 0),
    gsSP2Triangles(7, 8, 3, 0, 7, 3, 4, 0),
    gsSP2Triangles(3, 8, 6, 0, 6, 8, 5, 0),
    gsSP2Triangles(9, 10, 7, 0, 10, 8, 7, 0),
    gsSP2Triangles(7, 2, 9, 0, 2, 7, 4, 0),
    gsSP2Triangles(9, 2, 1, 0, 9, 5, 8, 0),
    gsSP2Triangles(8, 10, 9, 0, 1, 5, 9, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gBirdTailTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_birdVtx_0003F0[11], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0),
    gsSPEndDisplayList(),
};

Gfx gBirdBodyWrapper1DL[] = {
    gsSPDisplayList(gBirdBodyDL),
    gsSPEndDisplayList(),
};

Gfx gBirdBodyWrapper2DL[] = {
    gsSPDisplayList(gBirdBodyWrapper1DL),
    gsSPEndDisplayList(),
};

Vtx object_birdVtx_0003F0[] = {
#include "assets/objects/object_bird/object_birdVtx_0003F0.vtx.inc"
};

u64 gBirdFaceTex[] = {
#include "assets/objects/object_bird/face.rgba16.inc.c"
};

u64 gBirdTailTex[] = {
#include "assets/objects/object_bird/tail.rgba16.inc.c"
};

u64 gBirdWingTex[] = {
#include "assets/objects/object_bird/wing.rgba16.inc.c"
};

StandardLimb gBirdLimb_002100 = { 
    { 0, -30, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gBirdLimb_00210C = { 
    { 0, 0, 0 }, 0x02, LIMB_DONE,
    NULL
};

StandardLimb gBirdLimb_002118 = { 
    { 184, -7, 45 }, 0x03, 0x05,
    NULL
};

StandardLimb gBirdLimb_002124 = { 
    { 0, 0, 0 }, 0x04, LIMB_DONE,
    NULL
};

StandardLimb gBirdLeftWingLimb = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBirdLeftWingWrapper2DL
};

StandardLimb gBirdLimb_00213C = { 
    { 184, -7, -45 }, 0x06, 0x08,
    NULL
};

StandardLimb gBirdLimb_002148 = { 
    { 0, 0, 0 }, 0x07, LIMB_DONE,
    NULL
};

StandardLimb gBirdRightWingLimb = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBirdRightWingWrapper2DL
};

StandardLimb gBirdBodyLimb = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBirdBodyWrapper2DL
};

void* gBirdSkelLimbs[] = {
    &gBirdLimb_002100,
    &gBirdLimb_00210C,
    &gBirdLimb_002118,
    &gBirdLimb_002124,
    &gBirdLeftWingLimb,
    &gBirdLimb_00213C,
    &gBirdLimb_002148,
    &gBirdRightWingLimb,
    &gBirdBodyLimb,
};

SkeletonHeader gBirdSkel = { 
    gBirdSkelLimbs, ARRAY_COUNT(gBirdSkelLimbs)
};

