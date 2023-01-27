#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ovl_Oceff_Wipe2.h"
static u64 s1Tex[256];
static u64 s2Tex[256];
static Vtx sFrustumVtx[22];
static Gfx sMaterialDL[21];
static Gfx sFrustumDL[12];

static u64 s1Tex[256] = {
#include "assets/overlays/ovl_Oceff_Wipe2/eponas_song_effect_1.i4.inc.c"
};

static u64 s2Tex[256] = {
#include "assets/overlays/ovl_Oceff_Wipe2/eponas_song_effect_2.i4.inc.c"
};

static Vtx sFrustumVtx[22] = {
#include "assets/overlays/ovl_Oceff_Wipe2/sFrustumVtx.vtx.inc"
};

static Gfx sMaterialDL[21] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(s1Tex, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 6, 6,
                            14, 14),
    gsDPLoadMultiBlock_4b(s2Tex, 0x0100, 1, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                          6, 6, 1, 14),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, ENV_ALPHA, TEXEL0, TEXEL1, 0, ENVIRONMENT, TEXEL0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPEndDisplayList(),
};

static Gfx sFrustumDL[12] = {
    gsSPVertex(sFrustumVtx, 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 0, 0, 5, 1, 0, 0),
    gsSP2Triangles(6, 7, 4, 0, 7, 5, 4, 0),
    gsSP2Triangles(8, 9, 6, 0, 9, 7, 6, 0),
    gsSP2Triangles(10, 11, 8, 0, 11, 9, 8, 0),
    gsSP2Triangles(12, 13, 10, 0, 13, 11, 10, 0),
    gsSP2Triangles(14, 15, 12, 0, 15, 13, 12, 0),
    gsSP2Triangles(16, 15, 14, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 20, 19, 0, 2, 3, 17, 0),
    gsSP2Triangles(3, 18, 17, 0, 19, 20, 21, 0),
    gsSPEndDisplayList(),
};

