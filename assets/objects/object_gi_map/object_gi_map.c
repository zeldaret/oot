#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_map.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

Vtx object_gi_mapVtx_000000[] = {
#include "assets/objects/object_gi_map/object_gi_mapVtx_000000.vtx.inc"
};

Gfx gGiDungeonMapDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 1, 1, PRIM_LOD_FRAC, 1, COMBINED, 0, SHADE, 0, 1, 1,
                       PRIM_LOD_FRAC, 1),
    gsDPSetPrimColor(0, 0, 200, 120, 60, 255),
    gsDPSetEnvColor(40, 20, 0, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gi_mapTex_000D60, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(object_gi_mapVtx_000000, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 1, 3, 0, 3, 5, 4, 0),
    gsSP2Triangles(0, 6, 3, 0, 6, 7, 3, 0),
    gsSP2Triangles(3, 7, 5, 0, 8, 5, 7, 0),
    gsSP2Triangles(6, 9, 7, 0, 9, 10, 7, 0),
    gsSP2Triangles(7, 10, 8, 0, 11, 8, 10, 0),
    gsSP2Triangles(10, 9, 12, 0, 12, 13, 10, 0),
    gsSP2Triangles(13, 11, 10, 0, 11, 13, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gUnknownWoodBoardTex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gi_mapVtx_000000[15], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(3, 1, 4, 0, 4, 5, 3, 0),
    gsSP2Triangles(3, 6, 2, 0, 3, 7, 6, 0),
    gsSP2Triangles(5, 7, 3, 0, 7, 5, 8, 0),
    gsSP2Triangles(7, 9, 6, 0, 7, 10, 9, 0),
    gsSP2Triangles(8, 10, 7, 0, 10, 8, 11, 0),
    gsSP2Triangles(12, 9, 10, 0, 10, 13, 12, 0),
    gsSP2Triangles(10, 11, 13, 0, 14, 13, 11, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_gi_mapVtx_000000[30], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(5, 6, 4, 0, 7, 5, 4, 0),
    gsSP2Triangles(5, 8, 6, 0, 9, 10, 5, 0),
    gsSP2Triangles(10, 11, 8, 0, 12, 13, 10, 0),
    gsSP2Triangles(13, 14, 11, 0, 15, 16, 13, 0),
    gsSP2Triangles(16, 17, 14, 0, 18, 19, 16, 0),
    gsSP2Triangles(19, 20, 17, 0, 21, 22, 19, 0),
    gsSP2Triangles(22, 23, 20, 0, 24, 25, 22, 0),
    gsSP2Triangles(25, 26, 23, 0, 27, 28, 25, 0),
    gsSP2Triangles(1, 0, 4, 0, 4, 3, 7, 0),
    gsSP2Triangles(1, 4, 6, 0, 5, 7, 9, 0),
    gsSP2Triangles(8, 5, 10, 0, 10, 9, 12, 0),
    gsSP2Triangles(11, 10, 13, 0, 13, 12, 15, 0),
    gsSP2Triangles(14, 13, 16, 0, 16, 15, 18, 0),
    gsSP2Triangles(17, 16, 19, 0, 19, 18, 21, 0),
    gsSP2Triangles(20, 19, 22, 0, 22, 21, 24, 0),
    gsSP2Triangles(23, 22, 25, 0, 25, 24, 27, 0),
    gsSP2Triangles(26, 25, 28, 0, 28, 27, 29, 0),
    gsSPEndDisplayList(),
};

Vtx object_gi_mapVtx_0005C0[] = {
#include "assets/objects/object_gi_map/object_gi_mapVtx_0005C0.vtx.inc"
};

Gfx gGiStoneOfAgonyDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 1, 1, PRIM_LOD_FRAC, 1, SHADE, 0, COMBINED, 0, 1, 1,
                       PRIM_LOD_FRAC, 1),
    gsDPSetPrimColor(0, 0, 180, 180, 160, 255),
    gsDPSetEnvColor(20, 10, 0, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gUnknownWoodBoardTex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(object_gi_mapVtx_0005C0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 8, 0, 12, 13, 14, 0),
    gsSP2Triangles(3, 1, 0, 0, 15, 12, 16, 0),
    gsSP2Triangles(17, 15, 18, 0, 19, 5, 9, 0),
    gsSP2Triangles(9, 20, 19, 0, 21, 10, 17, 0),
    gsSP2Triangles(20, 9, 11, 0, 2, 22, 0, 0),
    gsSP2Triangles(5, 19, 3, 0, 7, 5, 6, 0),
    gsSP2Triangles(9, 5, 7, 0, 9, 8, 11, 0),
    gsSP2Triangles(14, 16, 12, 0, 0, 4, 3, 0),
    gsSP2Triangles(16, 18, 15, 0, 18, 21, 17, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_gi_mapVtx_0005C0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 1, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(3, 6, 1, 0, 10, 2, 11, 0),
    gsSP2Triangles(10, 12, 4, 0, 13, 14, 9, 0),
    gsSP2Triangles(11, 2, 1, 0, 2, 10, 0, 0),
    gsSP2Triangles(4, 15, 3, 0, 6, 16, 5, 0),
    gsSP2Triangles(17, 9, 8, 0, 1, 0, 3, 0),
    gsSP2Triangles(11, 12, 10, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 23, 25, 0),
    gsSP2Triangles(26, 25, 18, 0, 27, 18, 20, 0),
    gsSP2Triangles(28, 20, 29, 0, 30, 29, 19, 0),
    gsSPVertex(&object_gi_mapVtx_0005C0[63], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 3, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(3, 1, 5, 0, 3, 9, 10, 0),
    gsSP2Triangles(4, 11, 9, 0, 5, 12, 11, 0),
    gsSP2Triangles(7, 13, 12, 0, 6, 14, 13, 0),
    gsSP2Triangles(8, 15, 14, 0, 2, 10, 0, 0),
    gsSP2Triangles(13, 14, 15, 0, 12, 9, 11, 0),
    gsSP2Triangles(10, 9, 0, 0, 15, 12, 13, 0),
    gsSP2Triangles(9, 12, 0, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 18, 20, 0, 21, 19, 22, 0),
    gsSP2Triangles(23, 21, 24, 0, 16, 23, 25, 0),
    gsSP2Triangles(17, 16, 26, 0, 18, 17, 27, 0),
    gsSP2Triangles(23, 19, 21, 0, 19, 23, 18, 0),
    gsSP2Triangles(16, 18, 23, 0, 20, 22, 19, 0),
    gsSP2Triangles(22, 24, 21, 0, 24, 25, 23, 0),
    gsSP2Triangles(25, 26, 16, 0, 26, 27, 17, 0),
    gsSP1Triangle(27, 20, 18, 0),
    gsSPEndDisplayList(),
};

u8 object_gi_map_possiblePadding_000D58[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_gi_mapTex_000D60[] = {
#include "assets/objects/object_gi_map/object_gi_mapTex_000D60.i8.inc.c"
};

