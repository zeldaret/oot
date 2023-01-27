#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "nintendo_rogo_static.h"

u64 nintendo_rogo_static_Tex_000000[] = {
#include "assets/textures/nintendo_rogo_static/tex_00000000.i8.inc.c"
};

u64 nintendo_rogo_static_Tex_001800[] = {
#include "assets/textures/nintendo_rogo_static/tex_00001800.i8.inc.c"
};

Vtx nintendo_rogo_staticVtx_001C00[] = {
#include "assets/textures/nintendo_rogo_static/nintendo_rogo_staticVtx_001C00.vtx.inc"
};

Gfx gNintendo64LogoDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x0ED8, 0x0ED8, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(nintendo_rogo_staticTex_0029C0, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 2, 1),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, ENV_ALPHA, TEXEL0, 0, 0, 0, 0, PRIMITIVE, ENVIRONMENT, COMBINED, ENVIRONMENT,
                       0, 0, 0, 1),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_FOG),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 170, 255, 255),
    gsDPSetEnvColor(150, 0, 50, 128),
    gsSPVertex(nintendo_rogo_staticVtx_001C00, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&nintendo_rogo_staticVtx_001C00[3], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 2, 0),
    gsSP2Triangles(7, 2, 9, 0, 10, 11, 12, 0),
    gsSP1Triangle(10, 12, 13, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 170, 255, 255, 255),
    gsDPSetEnvColor(0, 50, 150, 128),
    gsSPVertex(&nintendo_rogo_staticVtx_001C00[17], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 27, 25, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 31, 30, 0),
    gsSPVertex(&nintendo_rogo_staticVtx_001C00[49], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 11, 13, 0, 13, 14, 12, 0),
    gsSP2Triangles(15, 16, 17, 0, 16, 18, 17, 0),
    gsSP2Triangles(19, 20, 21, 0, 20, 22, 21, 0),
    gsSP2Triangles(23, 24, 25, 0, 25, 22, 23, 0),
    gsSP2Triangles(26, 27, 24, 0, 26, 28, 27, 0),
    gsSP2Triangles(29, 5, 30, 0, 29, 30, 31, 0),
    gsSPVertex(&nintendo_rogo_staticVtx_001C00[81], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 170, 255),
    gsDPSetEnvColor(50, 100, 0, 128),
    gsSPVertex(&nintendo_rogo_staticVtx_001C00[85], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 7, 6, 0, 12, 13, 7, 0),
    gsSP2Triangles(14, 2, 1, 0, 14, 15, 2, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0),
    gsSP2Triangles(24, 25, 26, 0, 25, 27, 26, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 31, 29, 0),
    gsSPVertex(&nintendo_rogo_staticVtx_001C00[117], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 12, 7, 13, 0),
    gsSP2Triangles(14, 15, 3, 0, 15, 2, 3, 0),
    gsSP2Triangles(2, 16, 0, 0, 16, 17, 0, 0),
    gsSP2Triangles(17, 18, 19, 0, 18, 20, 19, 0),
    gsSP2Triangles(21, 22, 23, 0, 22, 24, 23, 0),
    gsSP2Triangles(25, 26, 27, 0, 26, 28, 27, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 170, 255),
    gsDPSetEnvColor(200, 150, 0, 128),
    gsSPVertex(&nintendo_rogo_staticVtx_001C00[146], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsSP2Triangles(24, 25, 26, 0, 25, 27, 26, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 31, 30, 0),
    gsSPEndDisplayList(),
};

u8 nintendo_rogo_static_possiblePadding_0029B8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 nintendo_rogo_staticTex_0029C0[] = {
#include "assets/textures/nintendo_rogo_static/nintendo_rogo_staticTex_0029C0.i8.inc.c"
};

