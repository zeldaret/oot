#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_m_arrow.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

Vtx object_gi_m_arrowVtx_000000[] = {
#include "assets/objects/object_gi_m_arrow/object_gi_m_arrowVtx_000000.vtx.inc"
};

Gfx gGiMagicArrowDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, 1, PRIMITIVE, ENVIRONMENT, COMBINED,
                       ENVIRONMENT, 0, 0, 0, 1),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(60, 80, 120, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x0FA0, 0x0FA0, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 1, 1),
    gsSPClearGeometryMode(G_FOG),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_gi_m_arrowVtx_000000, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_m_arrowVtx_000000[3], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(2, 18, 0, 0, 5, 19, 3, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(60, 60, 90, 255),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_gi_m_arrowVtx_000000[23], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 0, 6, 0, 2, 6, 0, 0),
    gsSP2Triangles(4, 2, 1, 0, 7, 4, 3, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 230, 190, 70, 255),
    gsDPSetEnvColor(160, 110, 60, 255),
    gsSPVertex(&object_gi_m_arrowVtx_000000[31], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 3, 6, 0, 4, 2, 7, 0),
    gsSP2Triangles(2, 4, 0, 0, 4, 6, 3, 0),
    gsSP1Triangle(7, 2, 1, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(160, 150, 170, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_gi_m_arrowVtx_000000[39], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 2, 9, 0, 0),
    gsSP2Triangles(5, 10, 3, 0, 8, 11, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gGiFireArrowColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x80, 255, 200, 0, 255),
    gsDPSetEnvColor(255, 0, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiIceArrowColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x80, 0, 200, 255, 255),
    gsDPSetEnvColor(0, 0, 255, 255),
    gsSPEndDisplayList(),
};

Gfx gGiLightArrowColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x80, 255, 255, 170, 255),
    gsDPSetEnvColor(255, 255, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiArrowMagicDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, 0, 0, 0, TEXEL0, PRIMITIVE, ENVIRONMENT, COMBINED,
                       ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x0BB8, 0x0BB8, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_gi_m_arrowVtx_000000[51], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_m_arrowVtx_000000[54], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(10, 9, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(7, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 11, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 28, 29, 26, 0),
    gsSPVertex(&object_gi_m_arrowVtx_000000[84], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 2, 9, 10, 0),
    gsSP2Triangles(11, 2, 1, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 25, 24, 30, 0),
    gsSPVertex(&object_gi_m_arrowVtx_000000[115], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 6, 21, 7, 0),
    gsSP2Triangles(22, 14, 13, 0, 23, 24, 16, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 7, 21, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_gi_m_arrowVtx_000000[147], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 4, 0),
    gsSP2Triangles(6, 10, 11, 0, 10, 9, 11, 0),
    gsSP2Triangles(12, 4, 10, 0, 8, 7, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(25, 26, 24, 0, 11, 25, 24, 0),
    gsSPEndDisplayList(),
};

