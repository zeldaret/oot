#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_ocarina_0.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

u64 object_gi_ocarina_0Tex_000000[] = {
#include "assets/objects/object_gi_ocarina_0/object_gi_ocarina_0Tex_000000.i8.inc.c"
};

Vtx object_gi_ocarina_0Vtx_000100[] = {
#include "assets/objects/object_gi_ocarina_0/object_gi_ocarina_0Vtx_000100.vtx.inc"
};

Gfx gGiOcarinaFairyDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 1, 1, PRIM_LOD_FRAC, 1, COMBINED, 0, SHADE, 0, 1, 1,
                       PRIM_LOD_FRAC, 1),
    gsDPSetPrimColor(0, 0, 0, 255, 100, 255),
    gsDPSetEnvColor(0, 50, 0, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x07D0, 0x07D0, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown12Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_FOG),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_gi_ocarina_0Vtx_000100, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_ocarina_0Vtx_000100[3], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 160, 160, 120, 255),
    gsDPSetEnvColor(80, 60, 10, 255),
    gsSPVertex(&object_gi_ocarina_0Vtx_000100[12], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 5, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 5, 0),
    gsSP2Triangles(15, 14, 0, 0, 1, 0, 14, 0),
    gsSP2Triangles(3, 1, 13, 0, 14, 13, 1, 0),
    gsSP2Triangles(2, 16, 0, 0, 4, 2, 1, 0),
    gsSP2Triangles(17, 4, 3, 0, 18, 16, 2, 0),
    gsSP2Triangles(18, 2, 4, 0, 18, 4, 17, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 22, 20, 0),
    gsSP2Triangles(19, 23, 22, 0, 21, 20, 12, 0),
    gsSP2Triangles(7, 9, 5, 0, 9, 24, 8, 0),
    gsSP2Triangles(6, 5, 14, 0, 5, 8, 13, 0),
    gsSP2Triangles(13, 8, 25, 0, 3, 13, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 19, 29, 23, 0),
    gsSP1Triangle(26, 30, 31, 0),
    gsSPVertex(&object_gi_ocarina_0Vtx_000100[44], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 0, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 15, 17, 0),
    gsSP2Triangles(15, 7, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(22, 23, 20, 0, 12, 22, 21, 0),
    gsSP2Triangles(10, 24, 11, 0, 24, 19, 3, 0),
    gsSP2Triangles(21, 16, 12, 0, 12, 16, 10, 0),
    gsSP2Triangles(19, 7, 3, 0, 15, 18, 7, 0),
    gsSP2Triangles(25, 1, 0, 0, 3, 1, 24, 0),
    gsSP2Triangles(9, 3, 7, 0, 15, 19, 24, 0),
    gsSP2Triangles(26, 16, 21, 0, 15, 10, 16, 0),
    gsSP2Triangles(2, 14, 0, 0, 4, 2, 1, 0),
    gsSP2Triangles(6, 4, 3, 0, 25, 11, 24, 0),
    gsSP2Triangles(10, 15, 24, 0, 22, 12, 11, 0),
    gsSP2Triangles(27, 14, 2, 0, 27, 2, 4, 0),
    gsSP2Triangles(27, 4, 6, 0, 28, 22, 11, 0),
    gsSP2Triangles(28, 11, 0, 0, 29, 30, 31, 0),
    gsSP2Triangles(26, 17, 16, 0, 28, 0, 13, 0),
    gsSPVertex(&object_gi_ocarina_0Vtx_000100[76], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 5, 4, 0),
    gsSP2Triangles(8, 9, 4, 0, 3, 5, 7, 0),
    gsSP2Triangles(7, 6, 3, 0, 7, 9, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 1, 13, 14, 0),
    gsSP2Triangles(11, 10, 15, 0, 11, 15, 1, 0),
    gsSP2Triangles(13, 10, 12, 0, 12, 14, 13, 0),
    gsSP2Triangles(1, 15, 13, 0, 16, 17, 11, 0),
    gsSP2Triangles(18, 1, 0, 0, 17, 16, 19, 0),
    gsSP2Triangles(20, 8, 4, 0, 18, 16, 11, 0),
    gsSP2Triangles(11, 1, 18, 0, 0, 19, 18, 0),
    gsSP2Triangles(12, 21, 22, 0, 23, 14, 24, 0),
    gsSP2Triangles(25, 26, 3, 0, 3, 6, 25, 0),
    gsSP2Triangles(12, 22, 24, 0, 24, 14, 12, 0),
    gsSP2Triangles(24, 27, 23, 0, 11, 17, 28, 0),
    gsSP2Triangles(28, 21, 12, 0, 17, 21, 28, 0),
    gsSP1Triangle(28, 12, 11, 0),
    gsSPEndDisplayList(),
};

Gfx gGiOcarinaFairyHolesDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_DECAL2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, TEXEL0, COMBINED, 0, SHADE, 0, 0, 0, 0,
                       COMBINED),
    gsDPSetPrimColor(0, 0, 30, 20, 10, 255),
    gsDPSetEnvColor(80, 60, 10, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gi_ocarina_0Tex_000000, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(&object_gi_ocarina_0Vtx_000100[105], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP1Triangle(18, 19, 20, 0),
    gsSPEndDisplayList(),
};

