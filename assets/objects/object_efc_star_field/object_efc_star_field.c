#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_efc_star_field.h"

Vtx object_efc_star_fieldVtx_000000[] = {
#include "assets/objects/object_efc_star_field/object_efc_star_fieldVtx_000000.vtx.inc"
};

Gfx object_efc_star_field_DL_000080[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_efc_star_field_Tex_000108, G_IM_FMT_I, G_IM_SIZ_8b, 16, 64, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT,
                       TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_efc_star_fieldVtx_000000, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSPEndDisplayList(),
};

u64 object_efc_star_field_Tex_000108[] = {
#include "assets/objects/object_efc_star_field/tex_00000108.i8.inc.c"
};

u8 object_efc_star_field_possiblePadding_000508[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_efc_star_fieldVtx_000510[] = {
#include "assets/objects/object_efc_star_field/object_efc_star_fieldVtx_000510.vtx.inc"
};

Gfx object_efc_star_field_DL_000DE0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_efc_star_field_Tex_000FD0, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_efc_star_fieldVtx_000510, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 3, 6, 0),
    gsSP2Triangles(8, 9, 0, 0, 9, 10, 0, 0),
    gsSP2Triangles(9, 11, 10, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 13, 12, 0, 16, 15, 12, 0),
    gsSP2Triangles(15, 17, 13, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 20, 21, 0, 22, 18, 21, 0),
    gsSP2Triangles(21, 20, 23, 0, 17, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 24, 29, 25, 0),
    gsSP2Triangles(25, 29, 30, 0, 24, 31, 29, 0),
    gsSPVertex(&object_efc_star_fieldVtx_000510[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 3, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 5, 9, 0, 5, 7, 9, 0),
    gsSP2Triangles(9, 7, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 17, 16, 0),
    gsSP2Triangles(13, 15, 20, 0, 19, 21, 17, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 28, 27, 29, 0),
    gsSP1Triangle(14, 30, 31, 0),
    gsSPVertex(&object_efc_star_fieldVtx_000510[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(14, 16, 17, 0, 14, 17, 15, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 20, 25, 21, 0),
    gsSP2Triangles(21, 25, 26, 0, 23, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_efc_star_fieldVtx_000510[96], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(16, 18, 19, 0, 16, 19, 17, 0),
    gsSP2Triangles(17, 19, 20, 0, 18, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0),
    gsSP2Triangles(26, 28, 29, 0, 29, 28, 30, 0),
    gsSPVertex(&object_efc_star_fieldVtx_000510[127], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 4, 2, 0, 2, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 10, 0),
    gsSP2Triangles(7, 10, 8, 0, 11, 12, 13, 0),
    gsSPEndDisplayList(),
};

u64 object_efc_star_field_Tex_000FD0[] = {
#include "assets/objects/object_efc_star_field/tex_00000FD0.i4.inc.c"
};

