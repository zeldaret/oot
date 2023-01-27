#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_spot16_obj.h"

u64 gDodongosCavernRockTex[] = {
#include "assets/objects/object_spot16_obj/rock_tex.i4.inc.c"
};

Vtx object_spot16_objVtx_000800[] = {
#include "assets/objects/object_spot16_obj/object_spot16_objVtx_000800.vtx.inc"
};

Gfx gDodongosCavernRockDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gDodongosCavernRockTex, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 190, 175, 135, 255),
    gsSPVertex(object_spot16_objVtx_000800, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 6, 1, 0, 7, 8, 4, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 12, 10, 0),
    gsSP2Triangles(13, 12, 9, 0, 14, 15, 5, 0),
    gsSP2Triangles(16, 17, 3, 0, 18, 19, 20, 0),
    gsSP2Triangles(8, 21, 22, 0, 18, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 28, 26, 0),
    gsSP2Triangles(19, 25, 27, 0, 21, 25, 19, 0),
    gsSP2Triangles(16, 28, 25, 0, 14, 12, 13, 0),
    gsSP2Triangles(5, 12, 14, 0, 29, 30, 31, 0),
    gsSPVertex(&object_spot16_objVtx_000800[32], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(0, 10, 11, 0, 10, 12, 11, 0),
    gsSP1Triangle(0, 13, 14, 0),
    gsSPEndDisplayList(),
};

Gfx gDodongosCavernRock2DL[] = {
    gsSPVertex(&object_spot16_objVtx_000800[47], 1, 0),
    gsSPBranchLessZraw(gDodongosCavernRockDL, 0, 0x00001770),
    gsSPEndDisplayList(),
};

Gfx gDodongosCavernRock3DL[] = {
    gsSPDisplayList(gDodongosCavernRock2DL),
    gsSPEndDisplayList(),
};

u64 gDeathMountainRingTex[] = {
#include "assets/objects/object_spot16_obj/smoke_ring.ia16.inc.c"
};

Vtx object_spot16_objVtx_001430[] = {
#include "assets/objects/object_spot16_obj/object_spot16_objVtx_001430.vtx.inc"
};

Gfx gDeathMountainRingDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gDeathMountainRingTex, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot16_objVtx_001430, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

