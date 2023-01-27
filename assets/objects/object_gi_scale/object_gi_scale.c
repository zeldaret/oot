#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_scale.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

Vtx object_gi_scaleVtx_000000[] = {
#include "assets/objects/object_gi_scale/object_gi_scaleVtx_000000.vtx.inc"
};

Gfx gGiSilverScaleWaterColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x60, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 100, 255, 255),
    gsSPEndDisplayList(),
};

Gfx gGiGoldenScaleWaterColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x60, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 200, 150, 255),
    gsSPEndDisplayList(),
};

Gfx gGiSilverScaleColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsDPSetEnvColor(50, 50, 150, 255),
    gsSPEndDisplayList(),
};

Gfx gGiGoldenScaleColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x80, 255, 255, 170, 255),
    gsDPSetEnvColor(150, 120, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiScaleWaterDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x0FA0, 0x0FA0, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gEffFleckTex, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                            6, 6, 14, 14),
    gsDPLoadMultiBlock(gEffUnknown10Tex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsSPClearGeometryMode(G_FOG),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_gi_scaleVtx_000000, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_scaleVtx_000000[3], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 6, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 1, 12, 13, 0),
    gsSP2Triangles(2, 13, 14, 0, 15, 4, 14, 0),
    gsSP2Triangles(16, 17, 8, 0, 11, 18, 19, 0),
    gsSP2Triangles(12, 19, 20, 0, 13, 20, 21, 0),
    gsSP2Triangles(22, 14, 21, 0, 23, 24, 17, 0),
    gsSP2Triangles(25, 26, 27, 0, 19, 28, 29, 0),
    gsSP2Triangles(20, 29, 30, 0, 31, 21, 30, 0),
    gsSPVertex(&object_gi_scaleVtx_000000[35], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 5, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(10, 11, 9, 0, 12, 13, 14, 0),
    gsSP2Triangles(4, 15, 16, 0, 5, 16, 17, 0),
    gsSP2Triangles(7, 17, 18, 0, 19, 9, 18, 0),
    gsSP2Triangles(20, 21, 14, 0, 15, 14, 21, 0),
    gsSP2Triangles(16, 21, 22, 0, 17, 22, 23, 0),
    gsSP2Triangles(24, 18, 23, 0, 25, 22, 21, 0),
    gsSP2Triangles(14, 13, 20, 0, 21, 20, 25, 0),
    gsSP2Triangles(22, 25, 26, 0, 27, 23, 26, 0),
    gsSP2Triangles(26, 23, 22, 0, 13, 2, 1, 0),
    gsSP2Triangles(20, 1, 28, 0, 25, 28, 29, 0),
    gsSP2Triangles(30, 26, 29, 0, 31, 28, 1, 0),
    gsSPVertex(&object_gi_scaleVtx_000000[67], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 8, 6, 0),
    gsSP2Triangles(9, 10, 1, 0, 11, 2, 1, 0),
    gsSP2Triangles(12, 4, 2, 0, 13, 6, 4, 0),
    gsSP2Triangles(14, 0, 15, 0, 16, 17, 10, 0),
    gsSP2Triangles(18, 11, 10, 0, 19, 12, 11, 0),
    gsSP2Triangles(20, 13, 12, 0, 3, 21, 15, 0),
    gsSP2Triangles(22, 23, 17, 0, 24, 18, 17, 0),
    gsSP2Triangles(25, 19, 18, 0, 26, 20, 19, 0),
    gsSP2Triangles(5, 27, 21, 0, 28, 29, 30, 0),
    gsSP1Triangle(31, 24, 23, 0),
    gsSPVertex(&object_gi_scaleVtx_000000[99], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 10, 0, 13, 14, 12, 0),
    gsSP2Triangles(15, 16, 14, 0, 17, 5, 18, 0),
    gsSP2Triangles(19, 20, 9, 0, 21, 11, 9, 0),
    gsSP2Triangles(22, 13, 11, 0, 23, 15, 13, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 20, 0),
    gsSPEndDisplayList(),
};

Gfx gGiScaleDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, 0, 0, 0, TEXEL0, PRIMITIVE, ENVIRONMENT, COMBINED,
                       ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x0BB8, 0x0BB8, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown11Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 15, 15),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_gi_scaleVtx_000000[128], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_scaleVtx_000000[131], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(1, 9, 10, 0, 2, 10, 11, 0),
    gsSP2Triangles(4, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 15, 17, 0, 10, 17, 18, 0),
    gsSP2Triangles(11, 18, 19, 0, 20, 15, 14, 0),
    gsSP2Triangles(15, 21, 22, 0, 17, 22, 23, 0),
    gsSP2Triangles(24, 25, 18, 0, 1, 0, 26, 0),
    gsSP2Triangles(2, 3, 0, 0, 4, 5, 3, 0),
    gsSP2Triangles(6, 27, 5, 0, 9, 1, 7, 0),
    gsSP2Triangles(10, 2, 1, 0, 11, 4, 2, 0),
    gsSP2Triangles(12, 6, 4, 0, 15, 16, 13, 0),
    gsSP2Triangles(17, 10, 16, 0, 18, 11, 10, 0),
    gsSP2Triangles(19, 12, 11, 0, 15, 20, 28, 0),
    gsSP2Triangles(22, 17, 15, 0, 23, 18, 17, 0),
    gsSP2Triangles(18, 25, 29, 0, 28, 30, 15, 0),
    gsSP2Triangles(21, 15, 30, 0, 18, 23, 24, 0),
    gsSP1Triangle(29, 19, 18, 0),
    gsSPEndDisplayList(),
};

