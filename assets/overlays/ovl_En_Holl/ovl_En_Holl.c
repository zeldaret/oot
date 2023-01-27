#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ovl_En_Holl.h"
static Vtx sPlaneVtx[4];
static Gfx sPlaneDL[5];

static Vtx sPlaneVtx[4] = {
#include "assets/overlays/ovl_En_Holl/sPlaneVtx.vtx.inc"
};

static Gfx sPlaneDL[5] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineMode(G_CC_PRIMITIVE, G_CC_PASS2),
    gsSPVertex(sPlaneVtx, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

