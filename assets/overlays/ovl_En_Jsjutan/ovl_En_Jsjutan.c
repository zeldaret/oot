#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ovl_En_Jsjutan.h"
static u64 sCarpetTex[512];
static Vtx gShadowOddVtx[144];
static Vtx sShadowEvenVtx[144];
static Vtx sCarpetOddVtx[144];
static Gfx sCarpetMaterialDL[16];
static Gfx sShadowMaterialDL[14];
static Gfx sModelDL[134];
static Vtx sCarpetEvenVtx[144];
static CamData sColCamDataList[1];
static SurfaceType sColSurfaceType[1];
static CollisionPoly sColPolygons[2];
static Vec3s sColVertices[4];
static CollisionHeader sCol;

static u64 sCarpetTex[512] = {
#include "assets/overlays/ovl_En_Jsjutan/carpet.rgba16.inc.c"
};

static Vtx gShadowOddVtx[144] = {
#include "assets/overlays/ovl_En_Jsjutan/gShadowOddVtx.vtx.inc"
};

static Vtx sShadowEvenVtx[144] = {
#include "assets/overlays/ovl_En_Jsjutan/sShadowEvenVtx.vtx.inc"
};

static Vtx sCarpetOddVtx[144] = {
#include "assets/overlays/ovl_En_Jsjutan/sCarpetOddVtx.vtx.inc"
};

static Gfx sCarpetMaterialDL[16] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(sCarpetTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_PASS2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPEndDisplayList(),
};

static Gfx sShadowMaterialDL[14] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(sShadowTex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                       COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPEndDisplayList(),
};

static Gfx sModelDL[134] = {
    gsDPPipeSync(),
    gsSPVertex(0x0C000000, 24, 0),
    gsSP2Triangles(0, 1, 13, 0, 0, 13, 12, 0),
    gsSP2Triangles(1, 2, 14, 0, 1, 14, 13, 0),
    gsSP2Triangles(2, 3, 15, 0, 2, 15, 14, 0),
    gsSP2Triangles(3, 4, 16, 0, 3, 16, 15, 0),
    gsSP2Triangles(4, 5, 17, 0, 4, 17, 16, 0),
    gsSP2Triangles(5, 6, 18, 0, 5, 18, 17, 0),
    gsSP2Triangles(6, 7, 19, 0, 6, 19, 18, 0),
    gsSP2Triangles(7, 8, 20, 0, 7, 20, 19, 0),
    gsSP2Triangles(8, 9, 21, 0, 8, 21, 20, 0),
    gsSP2Triangles(9, 10, 22, 0, 9, 22, 21, 0),
    gsSP2Triangles(10, 11, 23, 0, 10, 23, 22, 0),
    gsSPVertex(0x0C000180, 12, 12),
    gsSP2Triangles(12, 13, 1, 0, 12, 1, 0, 0),
    gsSP2Triangles(13, 14, 2, 0, 13, 2, 1, 0),
    gsSP2Triangles(14, 15, 3, 0, 14, 3, 2, 0),
    gsSP2Triangles(15, 16, 4, 0, 15, 4, 3, 0),
    gsSP2Triangles(16, 17, 5, 0, 16, 5, 4, 0),
    gsSP2Triangles(17, 18, 6, 0, 17, 6, 5, 0),
    gsSP2Triangles(18, 19, 7, 0, 18, 7, 6, 0),
    gsSP2Triangles(19, 20, 8, 0, 19, 8, 7, 0),
    gsSP2Triangles(20, 21, 9, 0, 20, 9, 8, 0),
    gsSP2Triangles(21, 22, 10, 0, 21, 10, 9, 0),
    gsSP2Triangles(22, 23, 11, 0, 22, 11, 10, 0),
    gsSPVertex(0x0C000240, 12, 0),
    gsSP2Triangles(0, 1, 13, 0, 0, 13, 12, 0),
    gsSP2Triangles(1, 2, 14, 0, 1, 14, 13, 0),
    gsSP2Triangles(2, 3, 15, 0, 2, 15, 14, 0),
    gsSP2Triangles(3, 4, 16, 0, 3, 16, 15, 0),
    gsSP2Triangles(4, 5, 17, 0, 4, 17, 16, 0),
    gsSP2Triangles(5, 6, 18, 0, 5, 18, 17, 0),
    gsSP2Triangles(6, 7, 19, 0, 6, 19, 18, 0),
    gsSP2Triangles(7, 8, 20, 0, 7, 20, 19, 0),
    gsSP2Triangles(8, 9, 21, 0, 8, 21, 20, 0),
    gsSP2Triangles(9, 10, 22, 0, 9, 22, 21, 0),
    gsSP2Triangles(10, 11, 23, 0, 10, 23, 22, 0),
    gsSPVertex(0x0C000300, 12, 12),
    gsSP2Triangles(12, 13, 1, 0, 12, 1, 0, 0),
    gsSP2Triangles(13, 14, 2, 0, 13, 2, 1, 0),
    gsSP2Triangles(14, 15, 3, 0, 14, 3, 2, 0),
    gsSP2Triangles(15, 16, 4, 0, 15, 4, 3, 0),
    gsSP2Triangles(16, 17, 5, 0, 16, 5, 4, 0),
    gsSP2Triangles(17, 18, 6, 0, 17, 6, 5, 0),
    gsSP2Triangles(18, 19, 7, 0, 18, 7, 6, 0),
    gsSP2Triangles(19, 20, 8, 0, 19, 8, 7, 0),
    gsSP2Triangles(20, 21, 9, 0, 20, 9, 8, 0),
    gsSP2Triangles(21, 22, 10, 0, 21, 10, 9, 0),
    gsSP2Triangles(22, 23, 11, 0, 22, 11, 10, 0),
    gsSPVertex(0x0C0003C0, 12, 0),
    gsSP2Triangles(0, 1, 13, 0, 0, 13, 12, 0),
    gsSP2Triangles(1, 2, 14, 0, 1, 14, 13, 0),
    gsSP2Triangles(2, 3, 15, 0, 2, 15, 14, 0),
    gsSP2Triangles(3, 4, 16, 0, 3, 16, 15, 0),
    gsSP2Triangles(4, 5, 17, 0, 4, 17, 16, 0),
    gsSP2Triangles(5, 6, 18, 0, 5, 18, 17, 0),
    gsSP2Triangles(6, 7, 19, 0, 6, 19, 18, 0),
    gsSP2Triangles(7, 8, 20, 0, 7, 20, 19, 0),
    gsSP2Triangles(8, 9, 21, 0, 8, 21, 20, 0),
    gsSP2Triangles(9, 10, 22, 0, 9, 22, 21, 0),
    gsSP2Triangles(10, 11, 23, 0, 10, 23, 22, 0),
    gsSPVertex(0x0C000480, 12, 12),
    gsSP2Triangles(12, 13, 1, 0, 12, 1, 0, 0),
    gsSP2Triangles(13, 14, 2, 0, 13, 2, 1, 0),
    gsSP2Triangles(14, 15, 3, 0, 14, 3, 2, 0),
    gsSP2Triangles(15, 16, 4, 0, 15, 4, 3, 0),
    gsSP2Triangles(16, 17, 5, 0, 16, 5, 4, 0),
    gsSP2Triangles(17, 18, 6, 0, 17, 6, 5, 0),
    gsSP2Triangles(18, 19, 7, 0, 18, 7, 6, 0),
    gsSP2Triangles(19, 20, 8, 0, 19, 8, 7, 0),
    gsSP2Triangles(20, 21, 9, 0, 20, 9, 8, 0),
    gsSP2Triangles(21, 22, 10, 0, 21, 10, 9, 0),
    gsSP2Triangles(22, 23, 11, 0, 22, 11, 10, 0),
    gsSPVertex(0x0C000540, 12, 0),
    gsSP2Triangles(0, 1, 13, 0, 0, 13, 12, 0),
    gsSP2Triangles(1, 2, 14, 0, 1, 14, 13, 0),
    gsSP2Triangles(2, 3, 15, 0, 2, 15, 14, 0),
    gsSP2Triangles(3, 4, 16, 0, 3, 16, 15, 0),
    gsSP2Triangles(4, 5, 17, 0, 4, 17, 16, 0),
    gsSP2Triangles(5, 6, 18, 0, 5, 18, 17, 0),
    gsSP2Triangles(6, 7, 19, 0, 6, 19, 18, 0),
    gsSP2Triangles(7, 8, 20, 0, 7, 20, 19, 0),
    gsSP2Triangles(8, 9, 21, 0, 8, 21, 20, 0),
    gsSP2Triangles(9, 10, 22, 0, 9, 22, 21, 0),
    gsSP2Triangles(10, 11, 23, 0, 10, 23, 22, 0),
    gsSPVertex(0x0C000600, 12, 12),
    gsSP2Triangles(12, 13, 1, 0, 12, 1, 0, 0),
    gsSP2Triangles(13, 14, 2, 0, 13, 2, 1, 0),
    gsSP2Triangles(14, 15, 3, 0, 14, 3, 2, 0),
    gsSP2Triangles(15, 16, 4, 0, 15, 4, 3, 0),
    gsSP2Triangles(16, 17, 5, 0, 16, 5, 4, 0),
    gsSP2Triangles(17, 18, 6, 0, 17, 6, 5, 0),
    gsSP2Triangles(18, 19, 7, 0, 18, 7, 6, 0),
    gsSP2Triangles(19, 20, 8, 0, 19, 8, 7, 0),
    gsSP2Triangles(20, 21, 9, 0, 20, 9, 8, 0),
    gsSP2Triangles(21, 22, 10, 0, 21, 10, 9, 0),
    gsSP2Triangles(22, 23, 11, 0, 22, 11, 10, 0),
    gsSPVertex(0x0C0006C0, 12, 0),
    gsSP2Triangles(0, 1, 13, 0, 0, 13, 12, 0),
    gsSP2Triangles(1, 2, 14, 0, 1, 14, 13, 0),
    gsSP2Triangles(2, 3, 15, 0, 2, 15, 14, 0),
    gsSP2Triangles(3, 4, 16, 0, 3, 16, 15, 0),
    gsSP2Triangles(4, 5, 17, 0, 4, 17, 16, 0),
    gsSP2Triangles(5, 6, 18, 0, 5, 18, 17, 0),
    gsSP2Triangles(6, 7, 19, 0, 6, 19, 18, 0),
    gsSP2Triangles(7, 8, 20, 0, 7, 20, 19, 0),
    gsSP2Triangles(8, 9, 21, 0, 8, 21, 20, 0),
    gsSP2Triangles(9, 10, 22, 0, 9, 22, 21, 0),
    gsSP2Triangles(10, 11, 23, 0, 10, 23, 22, 0),
    gsSPVertex(0x0C000780, 12, 12),
    gsSP2Triangles(12, 13, 1, 0, 12, 1, 0, 0),
    gsSP2Triangles(13, 14, 2, 0, 13, 2, 1, 0),
    gsSP2Triangles(14, 15, 3, 0, 14, 3, 2, 0),
    gsSP2Triangles(15, 16, 4, 0, 15, 4, 3, 0),
    gsSP2Triangles(16, 17, 5, 0, 16, 5, 4, 0),
    gsSP2Triangles(17, 18, 6, 0, 17, 6, 5, 0),
    gsSP2Triangles(18, 19, 7, 0, 18, 7, 6, 0),
    gsSP2Triangles(19, 20, 8, 0, 19, 8, 7, 0),
    gsSP2Triangles(20, 21, 9, 0, 20, 9, 8, 0),
    gsSP2Triangles(21, 22, 10, 0, 21, 10, 9, 0),
    gsSP2Triangles(22, 23, 11, 0, 22, 11, 10, 0),
    gsSPVertex(0x0C000840, 12, 0),
    gsSP2Triangles(0, 1, 13, 0, 0, 13, 12, 0),
    gsSP2Triangles(1, 2, 14, 0, 1, 14, 13, 0),
    gsSP2Triangles(2, 3, 15, 0, 2, 15, 14, 0),
    gsSP2Triangles(3, 4, 16, 0, 3, 16, 15, 0),
    gsSP2Triangles(4, 5, 17, 0, 4, 17, 16, 0),
    gsSP2Triangles(5, 6, 18, 0, 5, 18, 17, 0),
    gsSP2Triangles(6, 7, 19, 0, 6, 19, 18, 0),
    gsSP2Triangles(7, 8, 20, 0, 7, 20, 19, 0),
    gsSP2Triangles(8, 9, 21, 0, 8, 21, 20, 0),
    gsSP2Triangles(9, 10, 22, 0, 9, 22, 21, 0),
    gsSP2Triangles(10, 11, 23, 0, 10, 23, 22, 0),
    gsSPEndDisplayList(),
};

static Vtx sCarpetEvenVtx[144] = {
#include "assets/overlays/ovl_En_Jsjutan/sCarpetEvenVtx.vtx.inc"
};

static CamData sColCamDataList[1] = {
    { 0x0000, 0, NULL },
};

static SurfaceType sColSurfaceType[1] = {
    { 0x00000000, 0x000007C0 },
};

static CollisionPoly sColPolygons[2] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0x0000},
};

static Vec3s sColVertices[4] = {
    {  -5500,      0,  -5500 },
    {  -5500,      0,   5500 },
    {   5500,      0,   5500 },
    {   5500,      0,  -5500 },
};

static CollisionHeader sCol = { 
    { -5500, 0, -5500 },
    { 5500, 0, 5500 },
    4, sColVertices,
    2, sColPolygons,
    sColSurfaceType,
    sColCamDataList,
    0, NULL
};

