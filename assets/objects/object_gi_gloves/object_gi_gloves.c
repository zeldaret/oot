#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_gloves.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

u64 object_gi_glovesTex_000000[] = {
#include "assets/objects/object_gi_gloves/object_gi_glovesTex_000000.i8.inc.c"
};

Vtx object_gi_glovesVtx_000800[] = {
#include "assets/objects/object_gi_gloves/object_gi_glovesVtx_000800.vtx.inc"
};

Gfx gGiSilverGauntletsColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 230, 255),
    gsDPSetEnvColor(60, 70, 50, 255),
    gsSPEndDisplayList(),
};

Gfx gGiGoldenGauntletsColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 190, 70, 255),
    gsDPSetEnvColor(90, 40, 10, 255),
    gsSPEndDisplayList(),
};

Gfx gGiSilverGauntletsPlateColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 60, 50, 90, 255),
    gsDPSetEnvColor(60, 80, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiGoldenGauntletsPlateColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 60, 30, 60, 255),
    gsDPSetEnvColor(50, 30, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiGauntletsDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 1, 1, PRIM_LOD_FRAC, 1, COMBINED, 0, SHADE, 0, 1, 1,
                       PRIM_LOD_FRAC, 1),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x0FA0, 0x0FA0, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown12Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 1, 1),
    gsSPClearGeometryMode(G_FOG),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_gi_glovesVtx_000800, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_glovesVtx_000800[3], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(0, 5, 1, 0, 0, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 2, 0),
    gsSP2Triangles(2, 8, 9, 0, 9, 10, 3, 0),
    gsSP1Triangle(10, 6, 3, 0),
    gsDPPipeSync(),
    gsSPTexture(0x0BB8, 0x0BB8, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_gi_glovesVtx_000800[14], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 0, 2, 0, 5, 3, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 8, 7, 0),
    gsSP2Triangles(10, 11, 8, 0, 6, 8, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 14, 13, 0),
    gsSP2Triangles(16, 17, 14, 0, 12, 14, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 5, 27, 3, 0),
    gsSP2Triangles(16, 28, 17, 0, 10, 29, 11, 0),
    gsSP1Triangle(9, 8, 7, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 170, 60, 0, 255),
    gsDPSetEnvColor(60, 30, 0, 255),
    gsSPTexture(0x03E8, 0x03E8, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_gi_glovesVtx_000800[44], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 1, 4, 0, 1, 6, 4, 0),
    gsSP2Triangles(6, 7, 4, 0, 8, 9, 10, 0),
    gsSP2Triangles(10, 11, 8, 0, 12, 8, 7, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 20, 16, 0, 17, 14, 13, 0),
    gsSP2Triangles(18, 17, 13, 0, 12, 13, 15, 0),
    gsSP2Triangles(16, 18, 19, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(12, 15, 28, 0, 29, 25, 30, 0),
    gsSP2Triangles(23, 31, 30, 0, 31, 22, 30, 0),
    gsSPVertex(&object_gi_glovesVtx_000800[76], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 5, 6, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 11, 0),
    gsSP2Triangles(14, 6, 15, 0, 14, 16, 6, 0),
    gsSP2Triangles(5, 9, 17, 0, 5, 4, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 22, 20, 0),
    gsSP2Triangles(15, 23, 24, 0, 15, 24, 14, 0),
    gsSP2Triangles(25, 26, 12, 0, 25, 12, 11, 0),
    gsSP2Triangles(9, 27, 18, 0, 9, 18, 4, 0),
    gsSP2Triangles(9, 4, 3, 0, 15, 28, 7, 0),
    gsSP2Triangles(15, 7, 5, 0, 12, 26, 23, 0),
    gsSP2Triangles(12, 23, 15, 0, 29, 30, 10, 0),
    gsSP1Triangle(29, 10, 12, 0),
    gsSPVertex(&object_gi_glovesVtx_000800[107], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(3, 4, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 9, 7, 0, 3, 5, 10, 0),
    gsSP2Triangles(5, 11, 10, 0, 2, 7, 12, 0),
    gsSP2Triangles(12, 13, 0, 0, 0, 2, 12, 0),
    gsSP2Triangles(1, 14, 2, 0, 1, 3, 14, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 60, 100, 255),
    gsDPSetEnvColor(60, 10, 20, 255),
    gsSPTexture(0x0FA0, 0x0FA0, 0, G_TX_RENDERTILE, G_ON),
    gsSPVertex(&object_gi_glovesVtx_000800[122], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(1, 5, 4, 0, 1, 0, 5, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 50, 20, 0, 255),
    gsDPSetEnvColor(0, 0, 0, 255),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown12Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_gi_glovesVtx_000800[128], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(1, 3, 5, 0, 1, 6, 7, 0),
    gsSP2Triangles(2, 1, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSPEndDisplayList(),
};

Gfx gGiGauntletsPlateDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_DECAL2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, TEXEL0, COMBINED, 0, SHADE, 0, 0, 0, 0,
                       COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gi_glovesTex_000000, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(&object_gi_glovesVtx_000800[152], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(0, 2, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 13, 12, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 20, 21, 18, 0),
    gsSP2Triangles(22, 23, 24, 0, 16, 25, 26, 0),
    gsSP2Triangles(24, 27, 22, 0, 28, 22, 27, 0),
    gsSP2Triangles(18, 19, 20, 0, 29, 20, 19, 0),
    gsSP1Triangle(26, 14, 16, 0),
    gsSPVertex(&object_gi_glovesVtx_000800[182], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(2, 1, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 14, 13, 0),
    gsSP2Triangles(16, 18, 20, 0, 9, 11, 21, 0),
    gsSPEndDisplayList(),
};

