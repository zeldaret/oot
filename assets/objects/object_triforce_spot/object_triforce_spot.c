#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_triforce_spot.h"

Vtx gTriforceVtx[] = {
#include "assets/objects/object_triforce_spot/gTriforceVtx.vtx.inc"
};

Vtx object_triforce_spotVtx_000200[] = {
#include "assets/objects/object_triforce_spot/object_triforce_spotVtx_000200.vtx.inc"
};

Gfx gTriforceDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x07D0, 0x03E8, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gTriforceTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 6, 6, 15, 14),
    gsDPLoadMultiBlock(gTriforceTex, 0x0000, 1, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 6, 6, 14, 13),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, 0, 0, 0, PRIMITIVE, PRIMITIVE, ENVIRONMENT, COMBINED,
                       ENVIRONMENT, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(gTriforceVtx, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 0, 2, 9, 0),
    gsSP2Triangles(5, 10, 3, 0, 1, 0, 6, 0),
    gsSP2Triangles(6, 8, 1, 0, 7, 6, 3, 0),
    gsSP2Triangles(6, 4, 3, 0, 7, 3, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 11, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 11, 13, 15, 0),
    gsSP2Triangles(15, 19, 14, 0, 12, 11, 16, 0),
    gsSP2Triangles(16, 18, 12, 0, 17, 16, 20, 0),
    gsSP2Triangles(16, 11, 14, 0, 17, 20, 21, 0),
    gsSP2Triangles(2, 18, 17, 0, 18, 2, 1, 0),
    gsSP2Triangles(1, 12, 18, 0, 12, 1, 8, 0),
    gsSP2Triangles(7, 13, 8, 0, 12, 8, 13, 0),
    gsSP2Triangles(7, 15, 13, 0, 15, 7, 10, 0),
    gsSP2Triangles(5, 19, 10, 0, 15, 10, 19, 0),
    gsSP2Triangles(9, 17, 21, 0, 17, 9, 2, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 22, 24, 31, 0),
    gsSPVertex(object_triforce_spotVtx_000200, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 5, 2, 0),
    gsSP2Triangles(5, 8, 2, 0, 7, 2, 1, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 9, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 9, 11, 13, 0),
    gsSP2Triangles(13, 17, 12, 0, 10, 9, 14, 0),
    gsSP2Triangles(14, 16, 10, 0, 15, 14, 18, 0),
    gsSP2Triangles(14, 9, 12, 0, 15, 18, 19, 0),
    gsSP2Triangles(20, 16, 15, 0, 16, 20, 3, 0),
    gsSP2Triangles(3, 10, 16, 0, 10, 3, 6, 0),
    gsSP2Triangles(7, 11, 6, 0, 10, 6, 11, 0),
    gsSP2Triangles(7, 13, 11, 0, 13, 7, 1, 0),
    gsSP2Triangles(0, 17, 1, 0, 13, 1, 17, 0),
    gsSP2Triangles(21, 15, 19, 0, 15, 21, 20, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 22, 24, 31, 0),
    gsSPVertex(&object_triforce_spotVtx_000200[32], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 5, 2, 0),
    gsSP2Triangles(5, 8, 2, 0, 7, 2, 1, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 9, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 9, 11, 13, 0),
    gsSP2Triangles(13, 17, 12, 0, 10, 9, 14, 0),
    gsSP2Triangles(14, 16, 10, 0, 15, 14, 18, 0),
    gsSP2Triangles(14, 9, 12, 0, 15, 18, 19, 0),
    gsSP2Triangles(20, 16, 15, 0, 16, 20, 3, 0),
    gsSP2Triangles(3, 10, 16, 0, 10, 3, 6, 0),
    gsSP2Triangles(7, 11, 6, 0, 10, 6, 11, 0),
    gsSP2Triangles(7, 13, 11, 0, 13, 7, 1, 0),
    gsSP2Triangles(0, 17, 1, 0, 13, 1, 17, 0),
    gsSP2Triangles(21, 15, 19, 0, 15, 21, 20, 0),
    gsSPEndDisplayList(),
};

Gfx gTriforceLightColumnDL[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gTriforceColumnSide1Tex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, 1),
    gsDPLoadMultiBlock(gTriforceColumnSide2Tex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                       G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x09000000),
    gsSPVertex(&object_triforce_spotVtx_000200[54], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 3, 5, 4, 0),
    gsSP2Triangles(5, 6, 4, 0, 5, 7, 6, 0),
    gsSP2Triangles(7, 8, 6, 0, 7, 9, 8, 0),
    gsSPEndDisplayList(),
};

u64 gTriforceTex[] = {
#include "assets/objects/object_triforce_spot/triforce.i8.inc.c"
};

u64 gTriforceColumnSide1Tex[] = {
#include "assets/objects/object_triforce_spot/triforce_light_column_side_1.i8.inc.c"
};

u64 gTriforceColumnSide2Tex[] = {
#include "assets/objects/object_triforce_spot/triforce_light_column_side_2.i8.inc.c"
};

