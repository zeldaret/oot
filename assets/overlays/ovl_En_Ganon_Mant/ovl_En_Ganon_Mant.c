#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ovl_En_Ganon_Mant.h"
static u64 gMantTex[512];
static u64 gMantUnusedTex[256];
static Vtx gMant1Vtx[144];
static Gfx gMantMaterialDL[11];
static Gfx gMantUnusedMaterialDL[11];
static Gfx gMantDL[138];
static Vtx gMant2Vtx[144];

static u64 gMantTex[512] = {
#include "assets/overlays/ovl_En_Ganon_Mant/mant.rgba16.inc.c"
};

static u64 gMantUnusedTex[256] = {
#include "assets/overlays/ovl_En_Ganon_Mant/mant_unused.rgba16.inc.c"
};

static Vtx gMant1Vtx[144] = {
#include "assets/overlays/ovl_En_Ganon_Mant/gMant1Vtx.vtx.inc"
};

static Gfx gMantMaterialDL[11] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gMantTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPEndDisplayList(),
};

static Gfx gMantUnusedMaterialDL[11] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gMantUnusedTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPEndDisplayList(),
};

static Gfx gMantDL[138] = {
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
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

static Vtx gMant2Vtx[144] = {
#include "assets/overlays/ovl_En_Ganon_Mant/gMant2Vtx.vtx.inc"
};

