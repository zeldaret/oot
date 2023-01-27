#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_stick.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

Vtx object_gi_stickVtx_000000[] = {
#include "assets/objects/object_gi_stick/object_gi_stickVtx_000000.vtx.inc"
};

Gfx gGiStickDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 1, 1, PRIM_LOD_FRAC, 1, COMBINED, 0, SHADE, 0, 1, 1,
                       PRIM_LOD_FRAC, 1),
    gsDPSetPrimColor(0, 0, 160, 100, 40, 255),
    gsDPSetEnvColor(40, 10, 0, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(object_gi_stickVtx_000000, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 3, 6, 0, 1, 5, 7, 0),
    gsSP2Triangles(6, 4, 2, 0, 2, 4, 0, 0),
    gsSP2Triangles(4, 6, 3, 0, 6, 7, 5, 0),
    gsSP2Triangles(7, 2, 1, 0, 2, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 12, 0),
    gsSP2Triangles(13, 11, 14, 0, 9, 13, 15, 0),
    gsSP2Triangles(12, 10, 15, 0, 10, 12, 8, 0),
    gsSP2Triangles(12, 14, 11, 0, 14, 15, 13, 0),
    gsSP2Triangles(15, 10, 9, 0, 15, 14, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 20, 0),
    gsSP2Triangles(19, 21, 22, 0, 21, 16, 23, 0),
    gsSP2Triangles(23, 18, 20, 0, 18, 23, 16, 0),
    gsSP2Triangles(20, 18, 17, 0, 22, 20, 19, 0),
    gsSP2Triangles(23, 22, 21, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(30, 29, 26, 0, 31, 26, 25, 0),
    gsSPVertex(&object_gi_stickVtx_000000[32], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 0, 3, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 5, 12, 0),
    gsSP2Triangles(13, 14, 8, 0, 15, 8, 16, 0),
    gsSP2Triangles(17, 16, 18, 0, 8, 15, 13, 0),
    gsSP2Triangles(16, 17, 15, 0, 15, 2, 1, 0),
    gsSP2Triangles(17, 4, 2, 0, 19, 6, 4, 0),
    gsSP2Triangles(2, 3, 0, 0, 4, 5, 3, 0),
    gsSP2Triangles(6, 12, 5, 0, 9, 8, 14, 0),
    gsSP2Triangles(10, 16, 8, 0, 20, 18, 16, 0),
    gsSP2Triangles(12, 6, 21, 0, 6, 19, 22, 0),
    gsSP2Triangles(18, 23, 19, 0, 24, 18, 20, 0),
    gsSP2Triangles(14, 13, 25, 0, 7, 26, 0, 0),
    gsSP2Triangles(0, 27, 1, 0, 13, 1, 28, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 60, 120, 0, 255),
    gsDPSetEnvColor(40, 60, 0, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_gi_stickVtx_000000[61], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 6, 7, 0, 3, 8, 9, 0),
    gsSP2Triangles(6, 10, 11, 0, 8, 12, 13, 0),
    gsSP2Triangles(14, 11, 10, 0, 15, 13, 12, 0),
    gsSP2Triangles(7, 1, 0, 0, 9, 4, 3, 0),
    gsSP2Triangles(11, 7, 6, 0, 13, 9, 8, 0),
    gsSPEndDisplayList(),
};

