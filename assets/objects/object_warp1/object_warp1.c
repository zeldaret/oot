#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_warp1.h"

Vtx object_warp1Vtx_000000[] = {
#include "assets/objects/object_warp1/object_warp1Vtx_000000.vtx.inc"
};

Gfx gWarpPortalDL[] = {
    gsSPMatrix(0x0A000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gWarpPortalTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_WRAP, 6, 6, 14, G_TX_NOLOD),
    gsDPLoadMultiBlock(gWarpPortalTex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_MIRROR | G_TX_WRAP, 6, 6, 14, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, LOD_FRACTION, TEXEL0, TEXEL1, TEXEL0, LOD_FRACTION, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_warp1Vtx_000000, 13, 0),
    gsSPMatrix(0x09000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_warp1Vtx_000000[13], 13, 13),
    gsSP2Triangles(0, 1, 13, 0, 1, 14, 13, 0),
    gsSP2Triangles(2, 0, 15, 0, 0, 13, 15, 0),
    gsSP2Triangles(16, 2, 15, 0, 16, 3, 2, 0),
    gsSP2Triangles(17, 3, 16, 0, 17, 4, 3, 0),
    gsSP2Triangles(18, 4, 17, 0, 18, 5, 4, 0),
    gsSP2Triangles(19, 5, 18, 0, 19, 6, 5, 0),
    gsSP2Triangles(20, 7, 21, 0, 20, 8, 7, 0),
    gsSP2Triangles(22, 8, 20, 0, 22, 9, 8, 0),
    gsSP2Triangles(23, 9, 22, 0, 23, 10, 9, 0),
    gsSP2Triangles(24, 10, 23, 0, 24, 11, 10, 0),
    gsSP2Triangles(25, 11, 24, 0, 25, 12, 11, 0),
    gsSP2Triangles(14, 12, 25, 0, 14, 1, 12, 0),
    gsSPEndDisplayList(),
};

u64 gWarpPortalTex[] = {
#include "assets/objects/object_warp1/warp_portal_tex.i8.inc.c"
};

s16 sWarpCrystalAnimFrameData[] = {
    0x0000, 0x2AAB, 0x5555, 0x8000, 0xAAAB, 0xD555, 0xA000, 0xC000, 0x0000, 0xA000, 0xC000, 0x0000, 0xA000, 0xC000, 
    0x0000, 0xA000, 0xC000, 0x0000, 0xA000, 0xC000, 0x0000, 0xA000, 0xC000, 0x0000, 
};

JointIndex sWarpCrystalAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0006 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0000, 0x0009 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x000C },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x000F },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0004, 0x0000 },
    { 0x0000, 0x0000, 0x0012 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0005, 0x0000 },
    { 0x0000, 0x0000, 0x0015 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gWarpCrystalAnim = { 
    { 3 }, sWarpCrystalAnimFrameData,
    sWarpCrystalAnimJointIndices, 6
};

u8 object_warp1_possiblePadding_001384[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_warp1Vtx_001390[] = {
#include "assets/objects/object_warp1/object_warp1Vtx_001390.vtx.inc"
};

Gfx gWarp1DL_001750[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x2710, 0x2710, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gWarpCrystalTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_warp1Vtx_001390, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 12, 10, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 16, 14, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 30, 28, 0),
    gsSPVertex(&object_warp1Vtx_001390[31], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP1Triangle(8, 9, 10, 0),
    gsSPEndDisplayList(),
};

Gfx gWarp1DL_001828[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x2710, 0x2710, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gWarpCrystalTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_warp1Vtx_001390[42], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gWarp1DL_0018B0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x2710, 0x2710, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gWarpCrystalTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_warp1Vtx_001390[45], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gWarp1DL_001938[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x2710, 0x2710, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gWarpCrystalTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_warp1Vtx_001390[48], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gWarp1DL_0019C0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x2710, 0x2710, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gWarpCrystalTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_warp1Vtx_001390[51], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gWarp1DL_001A48[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x2710, 0x2710, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gWarpCrystalTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_warp1Vtx_001390[54], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gWarp1DL_001AD0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x2710, 0x2710, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gWarpCrystalTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_warp1Vtx_001390[57], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u64 gWarpCrystalTex[] = {
#include "assets/objects/object_warp1/warp_crystal_tex.i8.inc.c"
};

StandardLimb gWarpCrystalLimb_002B58 = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gWarpCrystalLimb_002B64 = { 
    { 0, 0, 0 }, 0x02, LIMB_DONE,
    NULL
};

StandardLimb gWarpCrystalLimb_002B70 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x03,
    gWarp1DL_001750
};

StandardLimb gWarpCrystalLimb_002B7C = { 
    { 346, 400, 0 }, 0x04, 0x06,
    NULL
};

StandardLimb gWarpCrystalLimb_002B88 = { 
    { 0, 0, 0 }, 0x05, LIMB_DONE,
    NULL
};

StandardLimb gWarpCrystalLimb_002B94 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gWarp1DL_001828
};

StandardLimb gWarpCrystalLimb_002BA0 = { 
    { 173, 400, -300 }, 0x07, 0x09,
    NULL
};

StandardLimb gWarpCrystalLimb_002BAC = { 
    { 0, 0, 0 }, 0x08, LIMB_DONE,
    NULL
};

StandardLimb gWarpCrystalLimb_002BB8 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gWarp1DL_0018B0
};

StandardLimb gWarpCrystalLimb_002BC4 = { 
    { -173, 400, -300 }, 0x0A, 0x0C,
    NULL
};

StandardLimb gWarpCrystalLimb_002BD0 = { 
    { 0, 0, 0 }, 0x0B, LIMB_DONE,
    NULL
};

StandardLimb gWarpCrystalLimb_002BDC = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gWarp1DL_001938
};

StandardLimb gWarpCrystalLimb_002BE8 = { 
    { -346, 400, 0 }, 0x0D, 0x0F,
    NULL
};

StandardLimb gWarpCrystalLimb_002BF4 = { 
    { 0, 0, 0 }, 0x0E, LIMB_DONE,
    NULL
};

StandardLimb gWarpCrystalLimb_002C00 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gWarp1DL_0019C0
};

StandardLimb gWarpCrystalLimb_002C0C = { 
    { -173, 400, 300 }, 0x10, 0x12,
    NULL
};

StandardLimb gWarpCrystalLimb_002C18 = { 
    { 0, 0, 0 }, 0x11, LIMB_DONE,
    NULL
};

StandardLimb gWarpCrystalLimb_002C24 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gWarp1DL_001A48
};

StandardLimb gWarpCrystalLimb_002C30 = { 
    { 173, 400, 300 }, 0x13, LIMB_DONE,
    NULL
};

StandardLimb gWarpCrystalLimb_002C3C = { 
    { 0, 0, 0 }, 0x14, LIMB_DONE,
    NULL
};

StandardLimb gWarpCrystalLimb_002C48 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gWarp1DL_001AD0
};

void* gWarpCrystalSkelLimbs[] = {
    &gWarpCrystalLimb_002B58,
    &gWarpCrystalLimb_002B64,
    &gWarpCrystalLimb_002B70,
    &gWarpCrystalLimb_002B7C,
    &gWarpCrystalLimb_002B88,
    &gWarpCrystalLimb_002B94,
    &gWarpCrystalLimb_002BA0,
    &gWarpCrystalLimb_002BAC,
    &gWarpCrystalLimb_002BB8,
    &gWarpCrystalLimb_002BC4,
    &gWarpCrystalLimb_002BD0,
    &gWarpCrystalLimb_002BDC,
    &gWarpCrystalLimb_002BE8,
    &gWarpCrystalLimb_002BF4,
    &gWarpCrystalLimb_002C00,
    &gWarpCrystalLimb_002C0C,
    &gWarpCrystalLimb_002C18,
    &gWarpCrystalLimb_002C24,
    &gWarpCrystalLimb_002C30,
    &gWarpCrystalLimb_002C3C,
    &gWarpCrystalLimb_002C48,
};

SkeletonHeader gWarpCrystalSkel = { 
    gWarpCrystalSkelLimbs, ARRAY_COUNT(gWarpCrystalSkelLimbs)
};

