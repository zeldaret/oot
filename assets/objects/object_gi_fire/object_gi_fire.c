#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_fire.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

u64 object_gi_fireTex_000000[] = {
#include "assets/objects/object_gi_fire/object_gi_fireTex_000000.i8.inc.c"
};

u64 object_gi_fireTex_000200[] = {
#include "assets/objects/object_gi_fire/object_gi_fireTex_000200.i8.inc.c"
};

Vtx object_gi_fireVtx_000400[] = {
#include "assets/objects/object_gi_fire/object_gi_fireVtx_000400.vtx.inc"
};

Gfx gGiBlueFireChamberstickDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, 1),
    gsDPSetPrimColor(0, 0, 255, 150, 0, 255),
    gsDPSetEnvColor(60, 40, 0, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x0BB8, 0x0BB8, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 1, 1),
    gsSPClearGeometryMode(G_FOG),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_gi_fireVtx_000400, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_fireVtx_000400[3], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(3, 2, 5, 0, 6, 5, 7, 0),
    gsSP2Triangles(8, 7, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(1, 12, 13, 0, 8, 14, 15, 0),
    gsSP2Triangles(2, 16, 17, 0, 5, 17, 18, 0),
    gsSP2Triangles(7, 18, 19, 0, 11, 20, 21, 0),
    gsSP2Triangles(12, 21, 22, 0, 13, 22, 23, 0),
    gsSP2Triangles(16, 23, 15, 0, 17, 15, 24, 0),
    gsSP2Triangles(18, 14, 25, 0, 20, 26, 0, 0),
    gsSP2Triangles(21, 0, 4, 0, 22, 4, 3, 0),
    gsSP2Triangles(23, 3, 6, 0, 15, 6, 8, 0),
    gsSP2Triangles(14, 8, 27, 0, 1, 0, 26, 0),
    gsSP2Triangles(2, 4, 0, 0, 27, 25, 14, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 8, 6, 0),
    gsSP2Triangles(9, 27, 8, 0, 12, 1, 10, 0),
    gsSP2Triangles(13, 2, 1, 0, 13, 16, 2, 0),
    gsSP2Triangles(17, 5, 2, 0, 18, 7, 5, 0),
    gsSP2Triangles(19, 9, 7, 0, 21, 12, 11, 0),
    gsSP2Triangles(22, 13, 12, 0, 23, 16, 13, 0),
    gsSP2Triangles(15, 17, 16, 0, 14, 18, 17, 0),
    gsSP2Triangles(25, 19, 18, 0, 0, 21, 20, 0),
    gsSP2Triangles(4, 22, 21, 0, 3, 23, 22, 0),
    gsSP2Triangles(6, 15, 23, 0, 20, 11, 28, 0),
    gsSP2Triangles(28, 26, 20, 0, 10, 26, 28, 0),
    gsSP2Triangles(11, 10, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_gi_fireVtx_000400[35], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 9, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(14, 15, 16, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 15, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(16, 18, 23, 0, 24, 12, 14, 0),
    gsSP2Triangles(23, 14, 16, 0, 22, 25, 26, 0),
    gsSP2Triangles(17, 16, 19, 0, 26, 20, 22, 0),
    gsSP2Triangles(22, 27, 25, 0, 28, 14, 13, 0),
    gsSP2Triangles(29, 30, 31, 0, 15, 14, 28, 0),
    gsSPVertex(&object_gi_fireVtx_000400[67], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 1, 0, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(2, 13, 14, 0, 0, 14, 15, 0),
    gsSP2Triangles(0, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 18, 0, 22, 23, 21, 0),
    gsSP2Triangles(24, 25, 23, 0, 26, 27, 28, 0),
    gsSP2Triangles(29, 30, 27, 0, 11, 10, 6, 0),
    gsSP2Triangles(4, 31, 5, 0, 13, 2, 10, 0),
    gsSP1Triangle(14, 0, 2, 0),
    gsSPVertex(&object_gi_fireVtx_000400[99], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 9, 11, 0, 13, 12, 14, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(10, 9, 16, 0, 10, 16, 15, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(130, 150, 200, 255),
    gsSPVertex(&object_gi_fireVtx_000400[116], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 9, 2, 0, 11, 2, 1, 0),
    gsSP2Triangles(12, 1, 0, 0, 2, 6, 0, 0),
    gsSP2Triangles(6, 4, 0, 0, 2, 9, 8, 0),
    gsSP2Triangles(4, 5, 3, 0, 8, 7, 13, 0),
    gsSP2Triangles(9, 10, 7, 0, 2, 11, 10, 0),
    gsSP2Triangles(1, 12, 11, 0, 0, 3, 12, 0),
    gsSPEndDisplayList(),
};

Gfx gGiBlueFireFlameDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, 1, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0x80, 170, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 200, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gi_fireTex_000000, G_IM_FMT_I, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_gi_fireTex_000200, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, 15),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_gi_fireVtx_000400[130], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSPEndDisplayList(),
};

