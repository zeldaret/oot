#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ovl_Oceff_Storm.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"
static u64 sTex[512];
static Gfx sMaterialDL[21];
static Vtx sCylinderVtx[27];
static Gfx sCylinderMaterialDL[21];
static Gfx sCylinderModelDL[18];

static u64 sTex[512] = {
#include "assets/overlays/ovl_Oceff_Storm/song_of_storms_effect.i8.inc.c"
};

static Gfx sMaterialDL[21] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetRenderMode(G_RM_PASS, G_RM_CLD_SURF2),
    gsDPSetEnvColor(50, 50, 0, 0),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPLoadTextureBlock(sTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                         6, 6, 3, 1),
    gsDPLoadMultiBlock(sTex, 0x0000, 1, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                       G_TX_WRAP, 6, 6, 2, G_TX_NOLOD),
    gsSPEndDisplayList(),
};

static Vtx sCylinderVtx[27] = {
#include "assets/overlays/ovl_Oceff_Storm/sCylinderVtx.vtx.inc"
};

static Gfx sCylinderMaterialDL[21] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 2, 13),
    gsDPLoadMultiBlock(gEffUnknown11Tex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 12),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPEndDisplayList(),
};

static Gfx sCylinderModelDL[18] = {
    gsSPVertex(sCylinderVtx, 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 4, 0),
    gsSP2Triangles(9, 10, 6, 0, 9, 6, 3, 0),
    gsSP2Triangles(10, 2, 7, 0, 10, 7, 6, 0),
    gsSP2Triangles(11, 0, 10, 0, 11, 10, 9, 0),
    gsSP2Triangles(3, 6, 4, 0, 0, 2, 10, 0),
    gsSP2Triangles(12, 13, 0, 0, 12, 0, 11, 0),
    gsSP2Triangles(13, 14, 1, 0, 13, 1, 0, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(16, 19, 20, 0, 16, 20, 17, 0),
    gsSP2Triangles(21, 22, 16, 0, 21, 16, 15, 0),
    gsSP2Triangles(22, 23, 19, 0, 22, 19, 16, 0),
    gsSP2Triangles(24, 25, 22, 0, 24, 22, 21, 0),
    gsSP2Triangles(25, 26, 23, 0, 25, 23, 22, 0),
    gsSP2Triangles(5, 4, 25, 0, 5, 25, 24, 0),
    gsSP2Triangles(4, 8, 26, 0, 4, 26, 25, 0),
    gsSPEndDisplayList(),
};

