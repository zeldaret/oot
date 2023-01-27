#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ovl_Magic_Dark.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"
static u64 sDiamondTex[256];
static Vtx sDiamondVtx[20];
static Gfx sDiamondMaterialDL[22];
static Gfx sDiamondModelDL[8];

static u64 sDiamondTex[256] = {
#include "assets/overlays/ovl_Magic_Dark/diamond_texture.i8.inc.c"
};

static Vtx sDiamondVtx[20] = {
#include "assets/overlays/ovl_Magic_Dark/sDiamondVtx.vtx.inc"
};

static Gfx sDiamondMaterialDL[22] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, 1),
    gsDPLoadMultiBlock(sDiamondTex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_MIRROR | G_TX_WRAP, 5, 6, 13, 13),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPEndDisplayList(),
};

static Gfx sDiamondModelDL[8] = {
    gsSPVertex(sDiamondVtx, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 5, 7, 8, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 0, 12, 0),
    gsSP2Triangles(13, 0, 11, 0, 14, 7, 5, 0),
    gsSP2Triangles(15, 5, 3, 0, 16, 3, 1, 0),
    gsSP2Triangles(17, 1, 0, 0, 16, 18, 19, 0),
    gsSPEndDisplayList(),
};

