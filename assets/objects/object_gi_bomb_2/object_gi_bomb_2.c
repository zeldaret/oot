#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_bomb_2.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

Vtx object_gi_bomb_2Vtx_000000[] = {
#include "assets/objects/object_gi_bomb_2/object_gi_bomb_2Vtx_000000.vtx.inc"
};

Gfx gGiBombchuDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 1, 1, PRIM_LOD_FRAC, 1, PRIMITIVE, ENVIRONMENT,
                       TEXEL0, ENVIRONMENT, 1, 1, PRIM_LOD_FRAC, 1),
    gsDPSetPrimColor(0, 0, 0, 100, 150, 255),
    gsDPSetEnvColor(0, 20, 40, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x0BB8, 0x0BB8, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 15, 15),
    gsSPClearGeometryMode(G_FOG),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_gi_bomb_2Vtx_000000, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_bomb_2Vtx_000000[3], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 1, 7, 3, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 8, 11, 0),
    gsSP2Triangles(9, 12, 10, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 14, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(4, 6, 21, 0, 22, 21, 2, 0),
    gsSP2Triangles(23, 24, 22, 0, 22, 25, 23, 0),
    gsSP2Triangles(24, 21, 22, 0, 26, 4, 21, 0),
    gsSP2Triangles(21, 24, 26, 0, 26, 27, 4, 0),
    gsSP2Triangles(25, 4, 27, 0, 25, 27, 23, 0),
    gsSP2Triangles(22, 28, 29, 0, 29, 25, 22, 0),
    gsSP2Triangles(29, 30, 25, 0, 30, 3, 25, 0),
    gsSP2Triangles(3, 30, 31, 0, 3, 31, 2, 0),
    gsSP2Triangles(28, 22, 2, 0, 2, 31, 28, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 180, 130, 50, 255),
    gsDPSetEnvColor(80, 30, 0, 255),
    gsSPVertex(&object_gi_bomb_2Vtx_000000[35], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 5, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 7, 6, 0, 5, 4, 6, 0),
    gsSP2Triangles(6, 4, 9, 0, 10, 11, 3, 0),
    gsSP2Triangles(7, 12, 13, 0, 14, 12, 7, 0),
    gsSP2Triangles(4, 15, 16, 0, 17, 4, 16, 0),
    gsSP2Triangles(18, 4, 17, 0, 8, 19, 14, 0),
    gsSP2Triangles(18, 19, 9, 0, 7, 8, 14, 0),
    gsSP2Triangles(18, 9, 4, 0, 9, 19, 20, 0),
    gsSP2Triangles(8, 6, 21, 0, 6, 9, 20, 0),
    gsSP2Triangles(20, 19, 8, 0, 22, 23, 24, 0),
    gsSP2Triangles(23, 25, 24, 0, 19, 26, 24, 0),
    gsSP2Triangles(23, 27, 25, 0, 19, 28, 14, 0),
    gsSP2Triangles(29, 25, 27, 0, 28, 12, 14, 0),
    gsSP2Triangles(19, 30, 26, 0, 18, 31, 30, 0),
    gsSP1Triangle(19, 18, 30, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 100, 255),
    gsDPSetEnvColor(200, 100, 0, 255),
    gsSPTexture(0x1770, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsSPVertex(&object_gi_bomb_2Vtx_000000[67], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 4, 7, 0),
    gsSPEndDisplayList(),
};

