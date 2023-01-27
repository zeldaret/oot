#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_crow.h"

s16 sGuayFlyAnimFrameData[] = {
    0x0000, 0x0056, 0xFB6D, 0xC000, 0x8000, 0x06E8, 0x4000, 0xEFAB, 0x1061, 0x02A9, 0xFC88, 0xFEC8, 0x0077, 0x06FE, 
    0x0FEC, 0x17BE, 0x15E4, 0x116D, 0x063A, 0xE1AA, 0xF310, 0x0BFB, 0x1D5C, 0x25B8, 0x19AD, 0x05FE, 0xEFCD, 0xBDE9, 
    0xC206, 0xC662, 0xCA69, 0xCD9E, 0xC965, 0xC55A, 0xC169, 0xF226, 0xEE7E, 0xEDAA, 0xF5C1, 0x0000, 0x0978, 0x0D72, 
    0xFF39, 0x0000, 0xF351, 0xEAD0, 0xFFAA, 0x17A2, 0x1E65, 0x1C5A, 0x0D4D, 0x003D, 0xFE76, 0xF854, 0xF01A, 0xE908, 
    0xEA96, 0xEECD, 0xF93C, 0xE2CB, 0xF31F, 0x0AA2, 0x1B5A, 0x238E, 0x1817, 0x0555, 0xF03C, 0x415C, 0x3D82, 0x3956, 
    0x35B8, 0x32FE, 0x36A7, 0x3A64, 0x3E21, 0x0D72, 0x0F8C, 0x0F13, 0x0898, 0x0000, 0xF562, 0xF01C, 0xFF48, 0x0000, 
    0xF3F1, 0xEC09, 0x00A2, 0x180A, 0x1E08, 0x1B6E, 0x0CCC, 0x0000, 
};

JointIndex sGuayFlyAnimJointIndices[] = {
    { 0x0000, 0x0001, 0x0002 },
    { 0x0003, 0x0004, 0x0000 },
    { 0x0000, 0x0005, 0x0006 },
    { 0x000B, 0x0013, 0x001B },
    { 0x0023, 0x002B, 0x0007 },
    { 0x0033, 0x003B, 0x0043 },
    { 0x004B, 0x0053, 0x0008 },
    { 0x0000, 0x0009, 0x0003 },
    { 0x0000, 0x000A, 0x0000 },
};

AnimationHeader gGuayFlyAnim = { 
    { 8 }, sGuayFlyAnimFrameData,
    sGuayFlyAnimJointIndices, 11
};

Vtx object_crowVtx_000100[] = {
#include "assets/objects/object_crow/object_crowVtx_000100.vtx.inc"
};

Gfx gGuaySkelLimbsLimb_00104CDL_000490[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gGuayEyeTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 253, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_crowVtx_000100[26], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 1, 9, 0),
    gsSP2Triangles(2, 4, 10, 0, 5, 7, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gGuayBodyTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSP2Triangles(11, 12, 13, 0, 13, 14, 11, 0),
    gsSP2Triangles(15, 16, 17, 0, 13, 15, 18, 0),
    gsSP2Triangles(19, 11, 14, 0, 12, 20, 21, 0),
    gsSP2Triangles(13, 22, 23, 0, 13, 18, 14, 0),
    gsSP2Triangles(14, 18, 19, 0, 12, 11, 24, 0),
    gsSP2Triangles(12, 24, 18, 0, 12, 18, 15, 0),
    gsSP2Triangles(17, 20, 12, 0, 17, 12, 15, 0),
    gsSP2Triangles(21, 22, 13, 0, 13, 12, 21, 0),
    gsSP2Triangles(23, 16, 15, 0, 23, 15, 13, 0),
    gsSPEndDisplayList(),
};

Gfx gGuaySkelLimbsLimb_001064DL_0005E0[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_crowVtx_000100, 2, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gGuayBodyTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00BC, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_crowVtx_000100[2], 3, 2),
    gsSP2Triangles(0, 2, 3, 0, 4, 1, 0, 0),
    gsSPVertex(&object_crowVtx_000100[5], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gGuaySkelLimbsLimb_001058DL_0006B0[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_crowVtx_000100[8], 2, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gGuayBodyTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00BC, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_crowVtx_000100[10], 3, 2),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gGuaySkelLimbsLimb_00107CDL_000770[] = {
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_crowVtx_000100[13], 2, 0),
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gGuayBodyTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00BC, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_crowVtx_000100[15], 3, 2),
    gsSP2Triangles(2, 3, 0, 0, 0, 1, 4, 0),
    gsSPVertex(&object_crowVtx_000100[18], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gGuaySkelLimbsLimb_001070DL_000840[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_crowVtx_000100[21], 2, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gGuayBodyTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00BC, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_crowVtx_000100[23], 3, 2),
    gsSP2Triangles(2, 1, 0, 0, 0, 3, 4, 0),
    gsSPEndDisplayList(),
};

Gfx gGuaySkelLimbsLimb_001094DL_000900[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gGuayTailTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPSetGeometryMode(G_FOG),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_crowVtx_000100[51], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gGuaySkelLimbsLimb_001088DL_0009A0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gGuayTailTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPSetGeometryMode(G_FOG),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_crowVtx_000100[54], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u64 gGuayBodyTex[] = {
#include "assets/objects/object_crow/body.rgba16.inc.c"
};

u64 gGuayEyeTex[] = {
#include "assets/objects/object_crow/eye.rgba16.inc.c"
};

u64 gGuayTailTex[] = {
#include "assets/objects/object_crow/tail.rgba16.inc.c"
};

StandardLimb gGuaySkelLimbsLimb_001040 = { 
    { 0, 86, -1171 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gGuaySkelLimbsLimb_00104C = { 
    { 0, 0, 0 }, 0x02, 0x06,
    gGuaySkelLimbsLimb_00104CDL_000490
};

StandardLimb gGuaySkelLimbsLimb_001058 = { 
    { 1132, -24, 106 }, 0x03, 0x04,
    gGuaySkelLimbsLimb_001058DL_0006B0
};

StandardLimb gGuaySkelLimbsLimb_001064 = { 
    { 1186, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gGuaySkelLimbsLimb_001064DL_0005E0
};

StandardLimb gGuaySkelLimbsLimb_001070 = { 
    { 1132, -24, 106 }, 0x05, LIMB_DONE,
    gGuaySkelLimbsLimb_001070DL_000840
};

StandardLimb gGuaySkelLimbsLimb_00107C = { 
    { 1147, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gGuaySkelLimbsLimb_00107CDL_000770
};

StandardLimb gGuaySkelLimbsLimb_001088 = { 
    { 0, -6, -1 }, 0x07, LIMB_DONE,
    gGuaySkelLimbsLimb_001088DL_0009A0
};

StandardLimb gGuaySkelLimbsLimb_001094 = { 
    { 702, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gGuaySkelLimbsLimb_001094DL_000900
};

void* gGuaySkelLimbs[] = {
    &gGuaySkelLimbsLimb_001040,
    &gGuaySkelLimbsLimb_00104C,
    &gGuaySkelLimbsLimb_001058,
    &gGuaySkelLimbsLimb_001064,
    &gGuaySkelLimbsLimb_001070,
    &gGuaySkelLimbsLimb_00107C,
    &gGuaySkelLimbsLimb_001088,
    &gGuaySkelLimbsLimb_001094,
};

FlexSkeletonHeader gGuaySkel = { 
    { gGuaySkelLimbs, ARRAY_COUNT(gGuaySkelLimbs) }, 7
};

