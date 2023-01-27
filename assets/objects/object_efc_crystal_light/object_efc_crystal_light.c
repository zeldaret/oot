#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_efc_crystal_light.h"

u64 gCrystalLightTex[] = {
#include "assets/objects/object_efc_crystal_light/crystal_light.i4.inc.c"
};

Vtx object_efc_crystal_lightVtx_000800[] = {
#include "assets/objects/object_efc_crystal_light/object_efc_crystal_lightVtx_000800.vtx.inc"
};

Gfx gCrystalLightDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gCrystalLightTex, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP,
                            6, 6, 1, 1),
    gsDPLoadMultiBlock_4b(gCrystalLightTex, 0x0000, 1, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                          G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       SHADE, COMBINED, SHADE, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_efc_crystal_lightVtx_000800, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(2, 3, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 8, 7, 9, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 9, 11, 0),
    gsSP2Triangles(10, 11, 0, 0, 0, 11, 1, 0),
    gsSP2Triangles(1, 12, 3, 0, 3, 12, 13, 0),
    gsSP2Triangles(6, 14, 7, 0, 7, 14, 15, 0),
    gsSP2Triangles(7, 15, 9, 0, 9, 15, 16, 0),
    gsSP2Triangles(9, 16, 11, 0, 11, 16, 17, 0),
    gsSP2Triangles(11, 17, 1, 0, 1, 17, 18, 0),
    gsSP2Triangles(12, 19, 13, 0, 14, 20, 15, 0),
    gsSP2Triangles(15, 21, 16, 0, 16, 22, 17, 0),
    gsSP1Triangle(17, 23, 18, 0),
    gsSPEndDisplayList(),
};

