#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_shield_1.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

u64 object_gi_shield_1Tex_000000[] = {
#include "assets/objects/object_gi_shield_1/object_gi_shield_1Tex_000000.i8.inc.c"
};

Vtx object_gi_shield_1Vtx_000400[] = {
#include "assets/objects/object_gi_shield_1/object_gi_shield_1Vtx_000400.vtx.inc"
};

Gfx gGiDekuShieldDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 1, 1, PRIM_LOD_FRAC, 1, COMBINED, 0, SHADE, 0, 1, 1,
                       PRIM_LOD_FRAC, 1),
    gsDPSetPrimColor(0, 0, 255, 120, 50, 255),
    gsDPSetEnvColor(50, 0, 0, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x0FA0, 0x0FA0, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 1, 1),
    gsSPClearGeometryMode(G_FOG),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_gi_shield_1Vtx_000400, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_shield_1Vtx_000400[3], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(1, 4, 3, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 6, 5, 7, 0),
    gsSP2Triangles(7, 8, 6, 0, 7, 9, 8, 0),
    gsSP2Triangles(10, 9, 7, 0, 10, 11, 9, 0),
    gsSP2Triangles(9, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(14, 13, 11, 0, 14, 15, 13, 0),
    gsSP2Triangles(14, 16, 15, 0, 16, 17, 15, 0),
    gsSP2Triangles(13, 18, 12, 0, 12, 18, 19, 0),
    gsSP2Triangles(18, 20, 21, 0, 19, 18, 21, 0),
    gsSP2Triangles(20, 22, 23, 0, 23, 21, 20, 0),
    gsSP2Triangles(22, 24, 23, 0, 25, 23, 24, 0),
    gsSP1Triangle(25, 26, 23, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 160, 100, 40, 255),
    gsDPSetEnvColor(40, 10, 0, 255),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gi_shield_1Tex_000000, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, 15, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 4, 0x0000, 1, 0, G_TX_MIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_gi_shield_1Vtx_000400[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 6, 0),
    gsSP2Triangles(9, 4, 6, 0, 4, 9, 10, 0),
    gsSP2Triangles(10, 11, 4, 0, 5, 7, 6, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 15, 12, 0),
    gsSP2Triangles(15, 14, 16, 0, 14, 17, 16, 0),
    gsSP2Triangles(17, 18, 16, 0, 17, 19, 18, 0),
    gsSP2Triangles(17, 20, 19, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 19, 20, 0, 18, 15, 16, 0),
    gsSP2Triangles(25, 15, 18, 0, 26, 3, 15, 0),
    gsSP2Triangles(15, 25, 26, 0, 3, 27, 0, 0),
    gsSP2Triangles(3, 26, 27, 0, 0, 27, 28, 0),
    gsSP2Triangles(1, 0, 28, 0, 28, 29, 1, 0),
    gsSP2Triangles(28, 30, 29, 0, 28, 31, 30, 0),
    gsSPVertex(&object_gi_shield_1Vtx_000400[62], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(3, 4, 2, 0, 3, 5, 4, 0),
    gsSP2Triangles(5, 6, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 9, 8, 0, 8, 11, 10, 0),
    gsSP2Triangles(11, 12, 10, 0, 13, 12, 14, 0),
    gsSP1Triangle(10, 12, 13, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 160, 100, 40, 255),
    gsDPSetEnvColor(90, 50, 0, 255),
    gsDPLoadTextureBlock(gEffUnknown12Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gi_shield_1Vtx_000400[77], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(2, 1, 4, 0, 5, 1, 3, 0),
    gsSP2Triangles(1, 5, 6, 0, 1, 6, 7, 0),
    gsSP1Triangle(1, 7, 4, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 90, 50, 0, 255),
    gsDPSetEnvColor(40, 10, 0, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_gi_shield_1Vtx_000400[85], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(4, 3, 5, 0, 2, 6, 0, 0),
    gsSP2Triangles(4, 2, 1, 0, 7, 5, 3, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 12, 0),
    gsSP2Triangles(12, 11, 13, 0, 10, 14, 8, 0),
    gsSP2Triangles(12, 10, 9, 0, 15, 13, 11, 0),
    gsSPEndDisplayList(),
};

