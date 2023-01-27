#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ovl_En_St.h"
static Vtx sSkulltulaUnusedVtx[4];
static Gfx sSkulltulaUnusedDL[10];

static Vtx sSkulltulaUnusedVtx[4] = {
#include "assets/overlays/ovl_En_St/sSkulltulaUnusedVtx.vtx.inc"
};

static Gfx sSkulltulaUnusedDL[10] = {
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(sSkulltulaUnusedVtx, 4, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSP1Triangle(0, 2, 3, 0),
    gsSPEndDisplayList(),
};

