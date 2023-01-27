#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ovl_Magic_Wind.h"
static Vtx sCylinderVtx[36];
static u64 sTex[512];
static Gfx sInnerCylinderDL[33];
static Gfx sOuterCylinderDL[33];
static u8 ovl_Magic_WindCurveAnime_Ref_001BD0[27];
static s16 ovl_Magic_WindCurveAnime_Copy_001BEC[25];
static TransformData ovl_Magic_WindCurveAnime_TransformData_001C20[4];
static TransformUpdateIndex sAnim;
static SkelCurveLimb sRootLimb;
static SkelCurveLimb sInnerCylinderLimb;
static SkelCurveLimb sOuterCylinderLimb;
static SkelCurveLimb* sSkelLimbs[3];
static SkelCurveLimbList sSkel;

static Vtx sCylinderVtx[36] = {
#include "assets/overlays/ovl_Magic_Wind/sCylinderVtx.vtx.inc"
};

static u64 sTex[512] = {
#include "assets/overlays/ovl_Magic_Wind/magic_wind.i8.inc.c"
};

static Gfx sInnerCylinderDL[33] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(sTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                         6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(sTex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                       G_TX_WRAP, 6, 6, 14, 14),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0x80, 255, 255, 170, 255),
    gsDPSetEnvColor(150, 255, 0, 0),
    gsSPDisplayList(0x08000000),
    gsSPVertex(sCylinderVtx, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(3, 8, 1, 0, 3, 9, 8, 0),
    gsSP2Triangles(10, 2, 11, 0, 10, 0, 2, 0),
    gsSP2Triangles(9, 12, 8, 0, 9, 13, 12, 0),
    gsSP2Triangles(7, 14, 5, 0, 7, 15, 14, 0),
    gsSP2Triangles(15, 11, 14, 0, 15, 10, 11, 0),
    gsSP2Triangles(13, 16, 12, 0, 13, 17, 16, 0),
    gsSPEndDisplayList(),
};

static Gfx sOuterCylinderDL[33] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(sTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                         6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(sTex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                       G_TX_WRAP, 6, 6, 15, 15),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0x80, 255, 255, 170, 255),
    gsDPSetEnvColor(0, 150, 0, 0),
    gsSPDisplayList(0x09000000),
    gsSPVertex(&sCylinderVtx[18], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(3, 8, 1, 0, 3, 9, 8, 0),
    gsSP2Triangles(10, 2, 11, 0, 10, 0, 2, 0),
    gsSP2Triangles(9, 12, 8, 0, 9, 13, 12, 0),
    gsSP2Triangles(7, 14, 5, 0, 7, 15, 14, 0),
    gsSP2Triangles(15, 11, 14, 0, 15, 10, 11, 0),
    gsSP2Triangles(13, 16, 12, 0, 13, 17, 16, 0),
    gsSPEndDisplayList(),
};

static u8 ovl_Magic_WindCurveAnime_Ref_001BD0[27] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 
};

static s16 ovl_Magic_WindCurveAnime_Copy_001BEC[25] = {
      1024,   1024,   1024,      0,      0,      0,      0,      0, 
         0,    512,    512,      0,      0,      0,      0,      0, 
         0,    717,    717,      0,      0,      0,      0,      0, 
         0, 
};

static TransformData ovl_Magic_WindCurveAnime_TransformData_001C20[4] = {
    { 0x000C, 0x0001, 1, 1, 0.000000f },
    { 0x0014, 0x003C, 0, 0, 1.500000f },
    { 0x000C, 0x0001, 1, 1, 0.000000f },
    { 0x0014, 0x003C, 0, 0, 1.000000f },
};

static TransformUpdateIndex sAnim = { 
    ovl_Magic_WindCurveAnime_Ref_001BD0,
    ovl_Magic_WindCurveAnime_TransformData_001C20,
    ovl_Magic_WindCurveAnime_Copy_001BEC,
    1, 60
};

static SkelCurveLimb sRootLimb = { 
    0x01, LIMB_DONE,
    { NULL, NULL }
};

static SkelCurveLimb sInnerCylinderLimb = { 
    LIMB_DONE, 0x02,
    { NULL, sInnerCylinderDL }
};

static SkelCurveLimb sOuterCylinderLimb = { 
    LIMB_DONE, LIMB_DONE,
    { NULL, sOuterCylinderDL }
};

static SkelCurveLimb* sSkelLimbs[3] = {
    &sRootLimb,
    &sInnerCylinderLimb,
    &sOuterCylinderLimb,
};

static SkelCurveLimbList sSkel = { 
    sSkelLimbs, ARRAY_COUNT(sSkelLimbs)
};

