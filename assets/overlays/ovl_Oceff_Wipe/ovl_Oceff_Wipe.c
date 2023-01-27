#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ovl_Oceff_Wipe.h"
static u64 sTex[128];
static Vtx sFrustumVtx[40];
static Gfx sMaterialDL[17];
static Gfx sFrustumDL[23];

static u64 sTex[128] = {
#include "assets/overlays/ovl_Oceff_Wipe/oceff.i8.inc.c"
};

static Vtx sFrustumVtx[40] = {
#include "assets/overlays/ovl_Oceff_Wipe/sFrustumVtx.vtx.inc"
};

static Gfx sMaterialDL[17] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(sTex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                         5, 5, 1, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 15, G_TX_NOMIRROR | G_TX_WRAP,
                5, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPEndDisplayList(),
};

static Gfx sFrustumDL[23] = {
    gsSPVertex(sFrustumVtx, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 1, 0, 6, 1, 0, 0),
    gsSP2Triangles(7, 8, 4, 0, 7, 4, 1, 0),
    gsSP2Triangles(9, 10, 7, 0, 9, 7, 6, 0),
    gsSP2Triangles(10, 11, 8, 0, 10, 8, 7, 0),
    gsSP2Triangles(12, 13, 10, 0, 12, 10, 9, 0),
    gsSP2Triangles(13, 14, 11, 0, 13, 11, 10, 0),
    gsSP2Triangles(15, 16, 13, 0, 15, 13, 12, 0),
    gsSP2Triangles(16, 17, 14, 0, 16, 14, 13, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(19, 22, 23, 0, 19, 23, 20, 0),
    gsSP2Triangles(24, 25, 19, 0, 24, 19, 18, 0),
    gsSP2Triangles(25, 26, 22, 0, 25, 22, 19, 0),
    gsSP2Triangles(27, 28, 25, 0, 27, 25, 24, 0),
    gsSP2Triangles(28, 29, 26, 0, 28, 26, 25, 0),
    gsSP2Triangles(30, 31, 28, 0, 30, 28, 27, 0),
    gsSPVertex(&sFrustumVtx[32], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 4, 0, 6, 0),
    gsSP2Triangles(5, 7, 1, 0, 5, 1, 0, 0),
    gsSPEndDisplayList(),
};

