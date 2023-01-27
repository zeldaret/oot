#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ovl_Magic_Fire.h"
static u64 sTex[512];
static Vtx sSphereVtx[76];
static Gfx sMaterialDL[5];
static Gfx sModelDL[45];

static u64 sTex[512] = {
#include "assets/overlays/ovl_Magic_Fire/dins_fire.i8.inc.c"
};

static Vtx sSphereVtx[76] = {
#include "assets/overlays/ovl_Magic_Fire/sSphereVtx.vtx.inc"
};

static Gfx sMaterialDL[5] = {
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, 1, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPEndDisplayList(),
};

static Gfx sModelDL[45] = {
    gsSPVertex(sSphereVtx, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(3, 4, 1, 0, 5, 4, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 7, 6, 0),
    gsSP2Triangles(9, 10, 7, 0, 11, 10, 9, 0),
    gsSP2Triangles(11, 12, 10, 0, 12, 11, 13, 0),
    gsSP2Triangles(14, 0, 15, 0, 16, 0, 14, 0),
    gsSP2Triangles(16, 3, 0, 0, 17, 3, 16, 0),
    gsSP2Triangles(17, 5, 3, 0, 18, 5, 17, 0),
    gsSP2Triangles(18, 19, 5, 0, 20, 19, 18, 0),
    gsSP2Triangles(21, 11, 9, 0, 11, 21, 22, 0),
    gsSP2Triangles(23, 14, 24, 0, 25, 14, 23, 0),
    gsSP2Triangles(25, 16, 14, 0, 26, 16, 25, 0),
    gsSP2Triangles(26, 17, 16, 0, 27, 17, 26, 0),
    gsSP2Triangles(27, 18, 17, 0, 28, 18, 27, 0),
    gsSP2Triangles(28, 20, 18, 0, 20, 28, 29, 0),
    gsSP1Triangle(30, 23, 31, 0),
    gsSPVertex(&sSphereVtx[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 3, 0, 0, 4, 5, 3, 0),
    gsSP2Triangles(6, 5, 4, 0, 6, 7, 5, 0),
    gsSP2Triangles(8, 7, 6, 0, 8, 9, 7, 0),
    gsSP2Triangles(9, 8, 10, 0, 11, 2, 12, 0),
    gsSP2Triangles(13, 2, 11, 0, 13, 0, 2, 0),
    gsSP2Triangles(14, 0, 13, 0, 14, 4, 0, 0),
    gsSP2Triangles(15, 4, 14, 0, 15, 6, 4, 0),
    gsSP2Triangles(16, 6, 15, 0, 16, 8, 6, 0),
    gsSP2Triangles(8, 16, 17, 0, 18, 11, 19, 0),
    gsSP2Triangles(20, 11, 18, 0, 20, 13, 11, 0),
    gsSP2Triangles(21, 13, 20, 0, 21, 14, 13, 0),
    gsSP2Triangles(22, 14, 21, 0, 22, 15, 14, 0),
    gsSP2Triangles(23, 15, 22, 0, 23, 16, 15, 0),
    gsSP2Triangles(16, 23, 24, 0, 25, 18, 26, 0),
    gsSP2Triangles(27, 18, 25, 0, 27, 20, 18, 0),
    gsSP2Triangles(28, 20, 27, 0, 28, 21, 20, 0),
    gsSP2Triangles(29, 21, 28, 0, 29, 22, 21, 0),
    gsSP2Triangles(30, 22, 29, 0, 30, 23, 22, 0),
    gsSP1Triangle(23, 30, 31, 0),
    gsSPVertex(&sSphereVtx[64], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(3, 4, 1, 0, 5, 4, 3, 0),
    gsSP2Triangles(5, 6, 4, 0, 7, 6, 5, 0),
    gsSP2Triangles(7, 8, 6, 0, 9, 8, 7, 0),
    gsSP2Triangles(9, 10, 8, 0, 10, 9, 11, 0),
    gsSPEndDisplayList(),
};

