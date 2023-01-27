#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ovl_Elf_Msg.h"
static Gfx D_809AD278[8];
static Vtx sCylinderVtx[16];
static Gfx sCylinderDL[16];
static Vtx sCubeVtx[8];
static Gfx sCubeDL[8];

static Gfx D_809AD278[8] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(PRIMITIVE, 0, SHADE, 0, 0, 0, 0, PRIMITIVE, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPEndDisplayList(),
};

static Vtx sCylinderVtx[16] = {
#include "assets/overlays/ovl_Elf_Msg/sCylinderVtx.vtx.inc"
};

static Gfx sCylinderDL[16] = {
    gsSPVertex(sCylinderVtx, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 11, 12, 0, 8, 12, 13, 0),
    gsSP2Triangles(8, 13, 14, 0, 8, 14, 15, 0),
    gsSP2Triangles(0, 1, 8, 0, 1, 8, 9, 0),
    gsSP2Triangles(1, 2, 9, 0, 2, 9, 10, 0),
    gsSP2Triangles(2, 3, 10, 0, 3, 10, 11, 0),
    gsSP2Triangles(3, 4, 11, 0, 4, 11, 12, 0),
    gsSP2Triangles(4, 5, 12, 0, 5, 12, 13, 0),
    gsSP2Triangles(5, 6, 13, 0, 6, 13, 14, 0),
    gsSP2Triangles(6, 7, 14, 0, 7, 14, 15, 0),
    gsSP2Triangles(7, 0, 15, 0, 0, 15, 8, 0),
    gsSPEndDisplayList(),
};

static Vtx sCubeVtx[8] = {
#include "assets/overlays/ovl_Elf_Msg/sCubeVtx.vtx.inc"
};

static Gfx sCubeDL[8] = {
    gsSPVertex(sCubeVtx, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(0, 1, 4, 0, 1, 4, 5, 0),
    gsSP2Triangles(1, 2, 5, 0, 2, 5, 6, 0),
    gsSP2Triangles(2, 3, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(3, 0, 7, 0, 0, 7, 4, 0),
    gsSPEndDisplayList(),
};

