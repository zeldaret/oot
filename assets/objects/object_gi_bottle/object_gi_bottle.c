#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_bottle.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

Vtx object_gi_bottleVtx_000000[] = {
#include "assets/objects/object_gi_bottle/object_gi_bottleVtx_000000.vtx.inc"
};

Gfx gGiBottleStopperDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, 1),
    gsDPSetPrimColor(0, 0, 110, 70, 0, 255),
    gsDPSetEnvColor(70, 40, 0, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown12Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(object_gi_bottleVtx_000000, 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 4, 0, 8, 9, 7, 0),
    gsSP2Triangles(10, 5, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 11, 16, 0, 17, 16, 18, 0),
    gsSP2Triangles(2, 19, 0, 0, 19, 20, 0, 0),
    gsSP2Triangles(2, 21, 19, 0, 5, 10, 3, 0),
    gsSP2Triangles(4, 3, 6, 0, 7, 6, 8, 0),
    gsSP2Triangles(11, 15, 10, 0, 14, 22, 12, 0),
    gsSP2Triangles(22, 23, 12, 0, 14, 24, 22, 0),
    gsSP2Triangles(16, 17, 15, 0, 18, 25, 17, 0),
    gsSPEndDisplayList(),
};

Gfx gGiBottleDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, 0, 0, 0, TEXEL0, PRIMITIVE, ENVIRONMENT, COMBINED,
                       ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsDPSetEnvColor(50, 100, 100, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x07D0, 0x07D0, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown11Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 15, 15),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_gi_bottleVtx_000000[26], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_bottleVtx_000000[29], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(2, 3, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 5, 7, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(12, 13, 15, 0, 0, 16, 15, 0),
    gsSP2Triangles(14, 0, 15, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 2, 4, 7, 0),
    gsSP2Triangles(20, 2, 7, 0, 21, 7, 22, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 9, 25, 0),
    gsSP2Triangles(24, 25, 26, 0, 26, 12, 15, 0),
    gsSP2Triangles(26, 15, 27, 0, 27, 28, 16, 0),
    gsSP2Triangles(27, 16, 29, 0, 29, 16, 20, 0),
    gsSP1Triangle(29, 20, 30, 0),
    gsSPVertex(&object_gi_bottleVtx_000000[60], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 6, 3, 5, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(11, 12, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(11, 13, 14, 0, 12, 11, 14, 0),
    gsSP2Triangles(14, 13, 0, 0, 14, 0, 15, 0),
    gsSP2Triangles(3, 6, 15, 0, 0, 3, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(23, 22, 25, 0, 23, 25, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_gi_bottleVtx_000000[92], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 5, 8, 9, 0),
    gsSP1Triangle(5, 9, 10, 0),
    gsSPEndDisplayList(),
};

