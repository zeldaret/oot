#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ovl_En_Sda.h"
static Vtx D_80AFA398[4];
static Gfx D_80AFA3D8[4];
static Gfx D_80AFA3F8[6];

static Vtx D_80AFA398[4] = {
#include "assets/overlays/ovl_En_Sda/D_80AFA398.vtx.inc"
};

static Gfx D_80AFA3D8[4] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPEndDisplayList(),
};

static Gfx D_80AFA3F8[6] = {
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                       COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_DECAL2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(D_80AFA398, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

