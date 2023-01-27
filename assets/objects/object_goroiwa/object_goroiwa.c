#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_goroiwa.h"

Vtx object_goroiwaVtx_000000[] = {
#include "assets/objects/object_goroiwa/object_goroiwaVtx_000000.vtx.inc"
};

Gfx gRollingRockDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gRollingRockTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_goroiwaVtx_000000, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 6, 5, 7, 0),
    gsSP2Triangles(4, 8, 9, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 11, 9, 0, 9, 11, 12, 0),
    gsSP2Triangles(0, 2, 13, 0, 6, 7, 14, 0),
    gsSP2Triangles(6, 14, 15, 0, 15, 14, 16, 0),
    gsSP2Triangles(7, 17, 18, 0, 17, 12, 19, 0),
    gsSP2Triangles(17, 19, 18, 0, 18, 19, 20, 0),
    gsSP2Triangles(0, 13, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 24, 25, 0, 25, 24, 26, 0),
    gsSP2Triangles(16, 27, 28, 0, 27, 20, 29, 0),
    gsSP1Triangle(27, 29, 28, 0),
    gsSPVertex(&object_goroiwaVtx_000000[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 7, 11, 12, 0),
    gsSP2Triangles(11, 2, 13, 0, 11, 13, 12, 0),
    gsSP2Triangles(12, 13, 14, 0, 3, 5, 15, 0),
    gsSP2Triangles(9, 10, 16, 0, 9, 16, 17, 0),
    gsSP2Triangles(17, 16, 18, 0, 10, 19, 20, 0),
    gsSP2Triangles(19, 14, 21, 0, 19, 21, 20, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 2, 1, 0, 26, 1, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 2, 11, 0, 0),
    gsSP2Triangles(11, 7, 31, 0, 11, 31, 0, 0),
    gsSPVertex(&object_goroiwaVtx_000000[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 7, 11, 12, 0),
    gsSP2Triangles(11, 13, 14, 0, 11, 14, 12, 0),
    gsSP2Triangles(12, 14, 15, 0, 3, 5, 16, 0),
    gsSP2Triangles(9, 10, 17, 0, 9, 17, 18, 0),
    gsSP2Triangles(18, 17, 19, 0, 10, 20, 21, 0),
    gsSP2Triangles(20, 15, 22, 0, 20, 22, 21, 0),
    gsSP2Triangles(21, 22, 23, 0, 3, 16, 24, 0),
    gsSP2Triangles(18, 19, 25, 0, 18, 25, 26, 0),
    gsSP2Triangles(26, 25, 27, 0, 19, 28, 29, 0),
    gsSP2Triangles(28, 23, 30, 0, 28, 30, 29, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_goroiwaVtx_000000[94], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 6, 5, 7, 0),
    gsSP2Triangles(4, 8, 9, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 11, 9, 0, 9, 11, 12, 0),
    gsSPEndDisplayList(),
};

u8 object_goroiwa_possiblePadding_000898[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gRollingRockTex[] = {
#include "assets/objects/object_goroiwa/rolling_rock.rgba16.inc.c"
};

