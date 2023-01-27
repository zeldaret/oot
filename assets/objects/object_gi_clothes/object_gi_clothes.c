#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_clothes.h"

u64 object_gi_clothesTex_000000[] = {
#include "assets/objects/object_gi_clothes/object_gi_clothesTex_000000.i4.inc.c"
};

Vtx object_gi_clothesVtx_000800[] = {
#include "assets/objects/object_gi_clothes/object_gi_clothesVtx_000800.vtx.inc"
};

Gfx gGiGoronCollarColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 130, 20, 10, 255),
    gsDPSetEnvColor(90, 20, 30, 255),
    gsSPEndDisplayList(),
};

Gfx gGiZoraCollarColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 0, 110, 170, 255),
    gsDPSetEnvColor(0, 40, 70, 255),
    gsSPEndDisplayList(),
};

Gfx gGiGoronTunicColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 170, 50, 40, 255),
    gsDPSetEnvColor(100, 30, 30, 255),
    gsSPEndDisplayList(),
};

Gfx gGiZoraTunicColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 20, 140, 200, 255),
    gsDPSetEnvColor(0, 60, 100, 255),
    gsSPEndDisplayList(),
};

Gfx gGiTunicCollarDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 1, 1, PRIM_LOD_FRAC, 1, COMBINED, 0, SHADE, 0, 1, 1,
                       PRIM_LOD_FRAC, 1),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_gi_clothesTex_000000, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(object_gi_clothesVtx_000800, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 5, 7, 0, 8, 2, 9, 0),
    gsSP2Triangles(2, 10, 11, 0, 2, 12, 0, 0),
    gsSP2Triangles(11, 4, 13, 0, 9, 14, 4, 0),
    gsSP2Triangles(5, 6, 13, 0, 7, 15, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gGiTunicDL[] = {
    gsDPPipeSync(),
    gsSPVertex(&object_gi_clothesVtx_000800[16], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 0, 2, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 9, 0, 12, 13, 1, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 1, 13, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 1, 28, 0),
    gsSP1Triangle(29, 0, 30, 0),
    gsSPVertex(&object_gi_clothesVtx_000800[47], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 8, 0),
    gsSP2Triangles(11, 12, 10, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 20, 24, 18, 0),
    gsSP2Triangles(24, 22, 18, 0, 22, 13, 18, 0),
    gsSP2Triangles(9, 25, 26, 0, 8, 25, 9, 0),
    gsSP1Triangle(27, 28, 29, 0),
    gsSPVertex(&object_gi_clothesVtx_000800[77], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 4, 0, 5, 7, 8, 0),
    gsSP2Triangles(7, 6, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 9, 11, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 5, 0, 14, 13, 16, 0),
    gsSP2Triangles(10, 17, 18, 0, 19, 18, 12, 0),
    gsSP2Triangles(9, 17, 10, 0, 9, 12, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_gi_clothesVtx_000800[109], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(7, 6, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 9, 6, 0),
    gsSP2Triangles(5, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(24, 23, 26, 0, 27, 24, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_gi_clothesVtx_000800[141], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 9, 0),
    gsSP2Triangles(1, 10, 11, 0, 10, 4, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(5, 15, 14, 0, 8, 5, 14, 0),
    gsSP2Triangles(14, 16, 8, 0, 16, 17, 8, 0),
    gsSP2Triangles(17, 18, 8, 0, 18, 19, 8, 0),
    gsSP2Triangles(19, 20, 8, 0, 21, 8, 20, 0),
    gsSP2Triangles(22, 21, 20, 0, 22, 20, 23, 0),
    gsSP2Triangles(24, 17, 25, 0, 18, 17, 24, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 26, 28, 0),
    gsSP2Triangles(26, 29, 30, 0, 26, 30, 31, 0),
    gsSPVertex(&object_gi_clothesVtx_000800[173], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 0, 5, 4, 0),
    gsSP2Triangles(0, 6, 5, 0, 6, 0, 7, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 6, 8, 0),
    gsSP2Triangles(10, 3, 11, 0, 11, 3, 4, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 200, 255),
    gsDPSetEnvColor(200, 140, 0, 255),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(&object_gi_clothesVtx_000800[185], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(0, 5, 1, 0, 4, 6, 0, 0),
    gsSP2Triangles(3, 7, 4, 0, 1, 8, 2, 0),
    gsSP2Triangles(9, 10, 11, 0, 11, 12, 9, 0),
    gsSP2Triangles(9, 13, 10, 0, 12, 14, 9, 0),
    gsSP2Triangles(11, 15, 12, 0, 10, 16, 11, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(100, 100, 100, 255),
    gsSPVertex(&object_gi_clothesVtx_000800[202], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSPEndDisplayList(),
};

