#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ovl_Oceff_Wipe4.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"
static u64 sTex[256];
static Vtx sFrustumVtx[22];
static Gfx sMaterialDL[13];
static Gfx sUnusedMaterialDL[13];
static Gfx sMaterial2DL[23];

static u64 sTex[256] = {
#include "assets/overlays/ovl_Oceff_Wipe4/scarecrow_song_effect.i8.inc.c"
};

static Vtx sFrustumVtx[22] = {
#include "assets/overlays/ovl_Oceff_Wipe4/sFrustumVtx.vtx.inc"
};

static Gfx sMaterialDL[13] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadMultiBlock(gEffUnknown12Tex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 15),
    gsDPSetPrimColor(0, 0, 170, 255, 255, 255),
    gsDPSetEnvColor(0, 150, 0, 128),
    gsSPEndDisplayList(),
};

static Gfx sUnusedMaterialDL[13] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadMultiBlock(gEffUnknown12Tex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 170, 255, 255),
    gsDPSetEnvColor(120, 0, 100, 128),
    gsSPEndDisplayList(),
};

static Gfx sMaterial2DL[23] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock(sTex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                         5, 6, 14, 1),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, ENV_ALPHA, TEXEL1, TEXEL0, 0, ENVIRONMENT, TEXEL1, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(sFrustumVtx, 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 0, 0, 5, 1, 0, 0),
    gsSP2Triangles(6, 7, 4, 0, 7, 5, 4, 0),
    gsSP2Triangles(8, 9, 6, 0, 9, 7, 6, 0),
    gsSP2Triangles(10, 11, 8, 0, 11, 9, 8, 0),
    gsSP2Triangles(12, 13, 10, 0, 13, 11, 10, 0),
    gsSP2Triangles(14, 15, 12, 0, 15, 13, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 15, 14, 0),
    gsSP2Triangles(20, 21, 16, 0, 21, 17, 16, 0),
    gsSP2Triangles(2, 3, 20, 0, 3, 21, 20, 0),
    gsSPEndDisplayList(),
};

