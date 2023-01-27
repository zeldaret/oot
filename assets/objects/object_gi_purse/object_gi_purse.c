#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_purse.h"

u64 object_gi_purseTex_000000[] = {
#include "assets/objects/object_gi_purse/object_gi_purseTex_000000.i8.inc.c"
};

Vtx object_gi_purseVtx_001000[] = {
#include "assets/objects/object_gi_purse/object_gi_purseVtx_001000.vtx.inc"
};

Gfx gGiAdultWalletColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 160, 130, 100, 255),
    gsDPSetEnvColor(70, 60, 50, 255),
    gsSPEndDisplayList(),
};

Gfx gGiGiantsWalletColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 150, 80, 20, 255),
    gsDPSetEnvColor(40, 20, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiAdultWalletRupeeOuterColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 50, 70, 80, 255),
    gsDPSetEnvColor(0, 10, 20, 255),
    gsSPEndDisplayList(),
};

Gfx gGiAdultWalletStringColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 60, 40, 30, 255),
    gsDPSetEnvColor(20, 10, 10, 255),
    gsSPEndDisplayList(),
};

Gfx gGiAdultWalletRupeeInnerColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(50, 60, 60, 255),
    gsSPEndDisplayList(),
};

Gfx gGiGiantsWalletRupeeOuterColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 80, 30, 40, 255),
    gsDPSetEnvColor(20, 30, 40, 255),
    gsSPEndDisplayList(),
};

Gfx gGiGiantsWalletStringColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 180, 160, 100, 255),
    gsDPSetEnvColor(20, 10, 10, 255),
    gsSPEndDisplayList(),
};

Gfx gGiGiantsWalletRupeeInnerColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 150, 255),
    gsDPSetEnvColor(100, 50, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiWalletDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 1, 1, PRIM_LOD_FRAC, 1, COMBINED, 0, SHADE, 0, 1, 1,
                       PRIM_LOD_FRAC, 1),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gi_purseTex_000000, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(object_gi_purseVtx_001000, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 2, 6, 0, 3, 7, 1, 0),
    gsSP2Triangles(3, 5, 7, 0, 3, 6, 4, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_gi_purseVtx_001000[8], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 7, 0, 8, 9, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 2, 12, 11, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 7, 0),
    gsSP2Triangles(13, 7, 6, 0, 13, 6, 9, 0),
    gsSP2Triangles(13, 9, 11, 0, 13, 11, 12, 0),
    gsSP2Triangles(12, 2, 1, 0, 15, 8, 4, 0),
    gsSP2Triangles(7, 5, 4, 0, 6, 4, 8, 0),
    gsSP2Triangles(9, 8, 10, 0, 11, 10, 2, 0),
    gsSP2Triangles(2, 16, 0, 0, 17, 10, 8, 0),
    gsSP2Triangles(16, 2, 10, 0, 4, 3, 15, 0),
    gsSP2Triangles(8, 15, 17, 0, 10, 17, 16, 0),
    gsSP2Triangles(0, 16, 18, 0, 19, 0, 18, 0),
    gsSP2Triangles(3, 19, 18, 0, 15, 3, 18, 0),
    gsSP2Triangles(17, 15, 18, 0, 16, 17, 18, 0),
    gsSP2Triangles(20, 7, 14, 0, 5, 7, 20, 0),
    gsSP2Triangles(21, 5, 20, 0, 21, 3, 5, 0),
    gsSP2Triangles(19, 3, 21, 0, 12, 22, 14, 0),
    gsSP2Triangles(12, 1, 22, 0, 1, 23, 22, 0),
    gsSP2Triangles(23, 1, 0, 0, 0, 19, 23, 0),
    gsSPEndDisplayList(),
};

Gfx gGiWalletRupeeOuterDL[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(&object_gi_purseVtx_001000[32], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 6, 8, 0),
    gsSP2Triangles(9, 8, 10, 0, 11, 12, 1, 0),
    gsSP2Triangles(1, 13, 14, 0, 2, 14, 15, 0),
    gsSP2Triangles(4, 15, 16, 0, 6, 16, 17, 0),
    gsSP2Triangles(8, 17, 18, 0, 12, 19, 13, 0),
    gsSP2Triangles(2, 3, 0, 0, 4, 5, 3, 0),
    gsSP2Triangles(6, 7, 5, 0, 8, 9, 7, 0),
    gsSP2Triangles(10, 20, 9, 0, 1, 0, 11, 0),
    gsSP2Triangles(14, 2, 1, 0, 15, 4, 2, 0),
    gsSP2Triangles(16, 21, 4, 0, 17, 8, 6, 0),
    gsSP2Triangles(18, 10, 8, 0, 13, 1, 12, 0),
    gsSPEndDisplayList(),
};

Gfx gGiWalletStringDL[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(&object_gi_purseVtx_001000[54], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 6, 4, 0, 7, 8, 6, 0),
    gsSP2Triangles(9, 10, 8, 0, 11, 2, 10, 0),
    gsSP2Triangles(2, 11, 0, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 3, 5, 0, 6, 5, 7, 0),
    gsSP2Triangles(8, 7, 9, 0, 10, 9, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 16, 0),
    gsSP2Triangles(17, 15, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 19, 23, 0, 24, 22, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 26, 30, 0),
    gsSPVertex(&object_gi_purseVtx_001000[85], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 7, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 14, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 2, 1, 0, 2, 20, 0, 0),
    gsSP1Triangle(0, 20, 21, 0),
    gsSPEndDisplayList(),
};

Gfx gGiWalletRupeeInnerDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x1388, 0x1388, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gi_purseTex_000000, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, 1, 15),
    gsSPClearGeometryMode(G_FOG),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_gi_purseVtx_001000[107], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_purseVtx_001000[110], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 1, 3, 0, 1, 4, 5, 0),
    gsSP1Triangle(6, 1, 5, 0),
    gsSPEndDisplayList(),
};

