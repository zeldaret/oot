#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_b_heart.h"

Vtx object_b_heartVtx_000000[] = {
#include "assets/objects/object_b_heart/object_b_heartVtx_000000.vtx.inc"
};

Gfx object_b_heart_DL_000240[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_b_heart_Tex_0003C0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, 8, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(object_b_heart_Tex_0003C0, 0x0100, 1, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_MIRROR | G_TX_WRAP, 5, 5, 4, 15),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, LOD_FRACTION, TEXEL0, TEXEL1, TEXEL0, LOD_FRACTION, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_b_heartVtx_000000, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 8, 7, 0, 10, 11, 12, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 15, 16, 0),
    gsSP2Triangles(16, 17, 18, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 21, 20, 0, 16, 22, 18, 0),
    gsSP2Triangles(14, 23, 16, 0, 12, 24, 14, 0),
    gsSP2Triangles(10, 25, 26, 0, 27, 8, 28, 0),
    gsSP2Triangles(6, 28, 8, 0, 4, 29, 6, 0),
    gsSP2Triangles(2, 30, 4, 0, 0, 31, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_b_heart_DL_000348[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_b_heart_Tex_0005C0, G_IM_FMT_I, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR |
                            G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, ENVIRONMENT, 0, PRIMITIVE, ENVIRONMENT,
                       TEXEL0, ENVIRONMENT, TEXEL0, 0, ENVIRONMENT, 0),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 0, 0, 255),
    gsSPVertex(&object_b_heartVtx_000000[32], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u64 object_b_heart_Tex_0003C0[] = {
#include "assets/objects/object_b_heart/tex_000003C0.i4.inc.c"
};

u64 object_b_heart_Tex_0005C0[] = {
#include "assets/objects/object_b_heart/tex_000005C0.i4.inc.c"
};

