#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ovl_Demo_Shd.h"
static u64 ovl_Demo_ShdTex_000450[256];
static u64 ovl_Demo_ShdTex_000C50[256];
static Vtx ovl_Demo_ShdVtx_001450[197];
static Gfx D_809932D0[24];
static Gfx D_80993390[37];
static Gfx D_809934B8[41];

static u64 ovl_Demo_ShdTex_000450[256] = {
#include "assets/overlays/ovl_Demo_Shd/ovl_Demo_ShdTex_000450.i8.inc.c"
};

static u64 ovl_Demo_ShdTex_000C50[256] = {
#include "assets/overlays/ovl_Demo_Shd/ovl_Demo_ShdTex_000C50.i8.inc.c"
};

static Vtx ovl_Demo_ShdVtx_001450[197] = {
#include "assets/overlays/ovl_Demo_Shd/ovl_Demo_ShdVtx_001450.vtx.inc"
};

static Gfx D_809932D0[24] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ovl_Demo_ShdTex_000450, G_IM_FMT_I, G_IM_SIZ_8b, 16, 128, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 7, G_TX_NOLOD, 1),
    gsDPLoadMultiBlock(ovl_Demo_ShdTex_000C50, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, 15),
    gsDPSetCombineLERP(NOISE, ENVIRONMENT, PRIMITIVE, ENVIRONMENT, TEXEL1, 1, ENVIRONMENT, TEXEL0, 0, 0, 0, COMBINED, 0,
                       0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 0, 50, 100, 255),
    gsDPSetEnvColor(50, 20, 0, 128),
    gsSPEndDisplayList(),
};

static Gfx D_80993390[37] = {
    gsSPVertex(ovl_Demo_ShdVtx_001450, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 10, 9, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 15, 16, 2, 0),
    gsSP2Triangles(16, 0, 2, 0, 17, 1, 0, 0),
    gsSP2Triangles(7, 18, 19, 0, 18, 20, 19, 0),
    gsSP2Triangles(20, 21, 19, 0, 22, 23, 21, 0),
    gsSP2Triangles(23, 19, 21, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 28, 30, 29, 0),
    gsSP2Triangles(29, 30, 31, 0, 26, 25, 18, 0),
    gsSPVertex(&ovl_Demo_ShdVtx_001450[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(1, 0, 8, 0, 0, 9, 8, 0),
    gsSP2Triangles(6, 7, 10, 0, 7, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(4, 2, 20, 0, 2, 21, 20, 0),
    gsSP2Triangles(21, 22, 20, 0, 23, 24, 20, 0),
    gsSP2Triangles(25, 21, 2, 0, 3, 25, 2, 0),
    gsSP2Triangles(26, 18, 19, 0, 24, 27, 20, 0),
    gsSP2Triangles(27, 4, 20, 0, 27, 5, 4, 0),
    gsSP2Triangles(28, 29, 15, 0, 29, 16, 15, 0),
    gsSP2Triangles(16, 14, 15, 0, 9, 30, 31, 0),
    gsSPVertex(&ovl_Demo_ShdVtx_001450[64], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 0, 0, 6, 7, 4, 0),
    gsSP2Triangles(6, 4, 3, 0, 8, 9, 10, 0),
    gsSP2Triangles(9, 11, 10, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 11, 9, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(20, 22, 21, 0, 23, 16, 24, 0),
    gsSP2Triangles(15, 25, 16, 0, 25, 24, 16, 0),
    gsSPVertex(&ovl_Demo_ShdVtx_001450[90], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

static Gfx D_809934B8[41] = {
    gsSPVertex(&ovl_Demo_ShdVtx_001450[93], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 3, 0, 5, 6, 3, 0),
    gsSP2Triangles(6, 7, 3, 0, 7, 2, 3, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(10, 12, 8, 0, 12, 13, 8, 0),
    gsSP2Triangles(13, 14, 8, 0, 9, 15, 11, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(18, 20, 16, 0, 17, 21, 19, 0),
    gsSP2Triangles(21, 22, 19, 0, 23, 11, 24, 0),
    gsSP2Triangles(11, 15, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(26, 28, 27, 0, 29, 30, 31, 0),
    gsSP2Triangles(31, 30, 27, 0, 30, 25, 27, 0),
    gsSPVertex(&ovl_Demo_ShdVtx_001450[125], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 6, 7, 5, 0),
    gsSP2Triangles(7, 8, 5, 0, 8, 9, 5, 0),
    gsSP2Triangles(10, 11, 1, 0, 11, 2, 1, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 2, 13, 19, 0),
    gsSP2Triangles(2, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 24, 22, 0, 11, 25, 2, 0),
    gsSP2Triangles(11, 26, 25, 0, 27, 28, 29, 0),
    gsSP2Triangles(28, 10, 29, 0, 10, 1, 29, 0),
    gsSPVertex(&ovl_Demo_ShdVtx_001450[155], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(13, 16, 14, 0, 16, 17, 14, 0),
    gsSP2Triangles(17, 18, 14, 0, 19, 20, 21, 0),
    gsSP2Triangles(20, 22, 21, 0, 20, 23, 22, 0),
    gsSP2Triangles(24, 25, 22, 0, 26, 27, 28, 0),
    gsSP2Triangles(27, 29, 28, 0, 27, 30, 29, 0),
    gsSPVertex(&ovl_Demo_ShdVtx_001450[186], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSPVertex(&ovl_Demo_ShdVtx_001450[194], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

