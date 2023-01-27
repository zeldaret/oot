#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_arrowcase.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

Vtx object_gi_arrowcaseVtx_000000[] = {
#include "assets/objects/object_gi_arrowcase/object_gi_arrowcaseVtx_000000.vtx.inc"
};

Gfx gGiQuiver30InnerColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 120, 90, 60, 255),
    gsDPSetEnvColor(60, 40, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiQuiver40InnerColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 160, 100, 0, 255),
    gsDPSetEnvColor(60, 20, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiQuiver50InnerColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 120, 60, 0, 255),
    gsDPSetEnvColor(50, 10, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiQuiver30OuterColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 120, 50, 255),
    gsDPSetEnvColor(50, 0, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiQuiver40OuterColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 20, 255),
    gsSPEndDisplayList(),
};

Gfx gGiQuiver50OuterColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 150, 255),
    gsDPSetEnvColor(80, 40, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiQuiverInnerDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 1, 1, PRIM_LOD_FRAC, 1, COMBINED, 0, SHADE, 0, 1, 1,
                       PRIM_LOD_FRAC, 1),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown12Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(object_gi_arrowcaseVtx_000000, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 7, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 12, 14, 0, 15, 14, 6, 0),
    gsSP2Triangles(7, 8, 5, 0, 9, 16, 8, 0),
    gsSP2Triangles(12, 13, 10, 0, 14, 15, 13, 0),
    gsSP2Triangles(6, 5, 15, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 19, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(25, 24, 26, 0, 27, 26, 18, 0),
    gsSP2Triangles(19, 20, 17, 0, 21, 28, 20, 0),
    gsSP2Triangles(24, 25, 22, 0, 26, 27, 25, 0),
    gsSP2Triangles(18, 17, 27, 0, 29, 30, 31, 0),
    gsSPVertex(&object_gi_arrowcaseVtx_000000[32], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSPEndDisplayList(),
};

Gfx gGiQuiverOuterDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x0FA0, 0x0FA0, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown12Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 2, 2),
    gsSPClearGeometryMode(G_FOG),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_gi_arrowcaseVtx_000000[37], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_arrowcaseVtx_000000[40], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(4, 1, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 8, 10, 0, 11, 10, 12, 0),
    gsSP2Triangles(13, 12, 14, 0, 15, 14, 16, 0),
    gsSP2Triangles(8, 9, 6, 0, 10, 11, 9, 0),
    gsSP2Triangles(12, 13, 11, 0, 14, 15, 13, 0),
    gsSP2Triangles(16, 17, 15, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 20, 22, 0, 23, 22, 24, 0),
    gsSP2Triangles(25, 24, 26, 0, 27, 26, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_gi_arrowcaseVtx_000000[72], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 6, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 10, 0),
    gsSP2Triangles(14, 15, 13, 0, 16, 17, 15, 0),
    gsSP2Triangles(18, 19, 17, 0, 1, 0, 20, 0),
    gsSP2Triangles(2, 3, 0, 0, 4, 5, 3, 0),
    gsSP2Triangles(6, 7, 5, 0, 8, 21, 7, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 24, 26, 0),
    gsSP2Triangles(27, 26, 28, 0, 29, 28, 30, 0),
    gsSPVertex(&object_gi_arrowcaseVtx_000000[103], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 4, 0, 8, 9, 7, 0),
    gsSP2Triangles(1, 0, 9, 0, 2, 10, 0, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 100, 255),
    gsDPSetEnvColor(180, 110, 0, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown12Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_gi_arrowcaseVtx_000000[114], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_gi_arrowcaseVtx_000000[117], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 11, 1, 0, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(200, 200, 200, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_gi_arrowcaseVtx_000000[129], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

