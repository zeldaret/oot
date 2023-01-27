#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_key.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

Vtx object_gi_keyVtx_000000[] = {
#include "assets/objects/object_gi_key/object_gi_keyVtx_000000.vtx.inc"
};

Gfx gGiSmallKeyDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, 1, 1, PRIM_LOD_FRAC, 1, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, 1, 1, PRIM_LOD_FRAC, 1),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsDPSetEnvColor(60, 80, 90, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x09C4, 0x09C4, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown9Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_FOG),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_gi_keyVtx_000000, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_keyVtx_000000[3], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 9, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 19, 0),
    gsSP2Triangles(4, 26, 27, 0, 4, 27, 5, 0),
    gsSP2Triangles(25, 28, 19, 0, 18, 9, 20, 0),
    gsSP2Triangles(26, 29, 30, 0, 26, 30, 27, 0),
    gsSP2Triangles(24, 19, 9, 0, 25, 24, 11, 0),
    gsSP2Triangles(31, 17, 16, 0, 17, 8, 7, 0),
    gsSPVertex(&object_gi_keyVtx_000000[35], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 2, 7, 0, 5, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 4, 22, 0),
    gsSP2Triangles(20, 19, 23, 0, 20, 23, 24, 0),
    gsSP2Triangles(19, 18, 25, 0, 19, 25, 23, 0),
    gsSP2Triangles(18, 17, 26, 0, 18, 26, 25, 0),
    gsSP2Triangles(17, 20, 24, 0, 17, 24, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 29, 28, 21, 0),
    gsSP2Triangles(2, 30, 0, 0, 30, 12, 11, 0),
    gsSP2Triangles(28, 5, 4, 0, 31, 9, 8, 0),
    gsSP2Triangles(9, 31, 2, 0, 31, 8, 12, 0),
    gsSP2Triangles(2, 31, 30, 0, 5, 9, 3, 0),
    gsSP1Triangle(3, 9, 29, 0),
    gsSPVertex(&object_gi_keyVtx_000000[67], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 6, 8, 0),
    gsSP2Triangles(9, 8, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 13, 15, 0),
    gsSP2Triangles(13, 12, 16, 0, 18, 12, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 20, 23, 0),
    gsSP2Triangles(20, 24, 25, 0, 26, 6, 23, 0),
    gsSP2Triangles(3, 2, 27, 0, 3, 27, 28, 0),
    gsSP2Triangles(2, 1, 29, 0, 2, 29, 27, 0),
    gsSP2Triangles(1, 0, 30, 0, 1, 30, 29, 0),
    gsSP1Triangle(9, 31, 7, 0),
    gsSPVertex(&object_gi_keyVtx_000000[99], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 1, 14, 0),
    gsSP2Triangles(15, 13, 14, 0, 16, 17, 13, 0),
    gsSP2Triangles(18, 17, 16, 0, 19, 1, 20, 0),
    gsSP2Triangles(7, 6, 21, 0, 6, 22, 15, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP1Triangle(27, 28, 8, 0),
    gsSPEndDisplayList(),
};

