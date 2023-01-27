#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ovl_Bg_Ganon_Otyuka.h"
static u64 sPlatformTex[256];
static Vtx sPlatformTopVtx[4];
static Gfx sPlatformMaterialDL[17];
static Gfx sPlatformTopDL[3];
static Vtx sPlatformBottomVtx[4];
static Gfx sPlatformBottomDL[3];
static Vtx sPlatformSideVtx[4];
static Gfx sPlatformSideDL[3];
static u64 sFlashTex[256];
static Vtx sFlashVtx[8];
static Gfx sFlashDL[22];
static CamData sColCamDataList[1];
static SurfaceType sColSurfaceType[2];
static CollisionPoly sColPolygons[10];
static Vec3s sColVertices[8];
static CollisionHeader sCol;

static u64 sPlatformTex[256] = {
#include "assets/overlays/ovl_Bg_Ganon_Otyuka/platform_tex.rgba16.inc.c"
};

static u8 ovl_Bg_Ganon_Otyuka_possiblePadding_0019C0[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

static Vtx sPlatformTopVtx[4] = {
#include "assets/overlays/ovl_Bg_Ganon_Otyuka/sPlatformTopVtx.vtx.inc"
};

static Gfx sPlatformMaterialDL[17] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(sPlatformTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsSPEndDisplayList(),
};

static Gfx sPlatformTopDL[3] = {
    gsSPVertex(sPlatformTopVtx, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

static Vtx sPlatformBottomVtx[4] = {
#include "assets/overlays/ovl_Bg_Ganon_Otyuka/sPlatformBottomVtx.vtx.inc"
};

static Gfx sPlatformBottomDL[3] = {
    gsSPVertex(sPlatformBottomVtx, 4, 0),
    gsSP2Triangles(0, 2, 1, 0, 0, 3, 2, 0),
    gsSPEndDisplayList(),
};

static Vtx sPlatformSideVtx[4] = {
#include "assets/overlays/ovl_Bg_Ganon_Otyuka/sPlatformSideVtx.vtx.inc"
};

static Gfx sPlatformSideDL[3] = {
    gsSPVertex(sPlatformSideVtx, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

static u64 sFlashTex[256] = {
#include "assets/overlays/ovl_Bg_Ganon_Otyuka/flash_tex.i8.inc.c"
};

static Vtx sFlashVtx[8] = {
#include "assets/overlays/ovl_Bg_Ganon_Otyuka/sFlashVtx.vtx.inc"
};

static Gfx sFlashDL[22] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(sFlashTex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 6, 15, 1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_CLAMP, 6, 14, G_TX_NOMIRROR | G_TX_WRAP,
                5, 13),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x00FC),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, ENV_ALPHA, TEXEL0, TEXEL1, 1, ENVIRONMENT, TEXEL0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(sFlashVtx, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 2, 5, 0, 4, 0, 2, 0),
    gsSP2Triangles(6, 4, 5, 0, 6, 7, 4, 0),
    gsSPEndDisplayList(),
};

static CamData sColCamDataList[1] = {
    { 0x0000, 0, NULL },
};

static SurfaceType sColSurfaceType[2] = {
    { 0x00000000, 0x000007C0 },
    { 0x00000000, 0x000007C2 },
};

static CollisionPoly sColPolygons[10] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x7FFF, 0x0000, 0x0000, 0xFFC4},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x7FFF, 0x0000, 0x0000, 0xFFC4},
    {0x0000, 0x0003, 0x0002, 0x0004, 0x0000, 0x0000, 0x8001, 0xFFC4},
    {0x0000, 0x0003, 0x0004, 0x0005, 0x0000, 0x0000, 0x8001, 0xFFC4},
    {0x0000, 0x0005, 0x0004, 0x0006, 0x8001, 0x0000, 0x0000, 0xFFC4},
    {0x0000, 0x0005, 0x0006, 0x0007, 0x8001, 0x0000, 0x0000, 0xFFC4},
    {0x0000, 0x0007, 0x0006, 0x0001, 0x0000, 0x0000, 0x7FFF, 0xFFC4},
    {0x0000, 0x0007, 0x0001, 0x0000, 0x0000, 0x0000, 0x7FFF, 0xFFC4},
    {0x0001, 0x0000, 0x0003, 0x0005, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0001, 0x0000, 0x0005, 0x0007, 0x0000, 0x7FFF, 0x0000, 0x0000},
};

static Vec3s sColVertices[8] = {
    {     60,      0,     60 },
    {     60,    -60,     60 },
    {     60,    -60,    -60 },
    {     60,      0,    -60 },
    {    -60,    -60,    -60 },
    {    -60,      0,    -60 },
    {    -60,    -60,     60 },
    {    -60,      0,     60 },
};

static CollisionHeader sCol = { 
    { -60, -60, -60 },
    { 60, 0, 60 },
    8, sColVertices,
    10, sColPolygons,
    sColSurfaceType,
    sColCamDataList,
    0, NULL
};

