#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ovl_Bg_Jya_Cobra.h"
static Vtx sShadowVtx[4];
static Gfx sShadowDL[7];

static Vtx sShadowVtx[4] = {
#include "assets/overlays/ovl_Bg_Jya_Cobra/sShadowVtx.vtx.inc"
};

static Gfx sShadowDL[7] = {
    gsDPPipeSync(),
    gsDPSetCombineLERP(PRIMITIVE, 0, TEXEL0, 0, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_DECAL2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(sShadowVtx, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

