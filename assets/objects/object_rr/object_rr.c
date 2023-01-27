#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_rr.h"

Vtx object_rrVtx_000000[] = {
#include "assets/objects/object_rr/object_rrVtx_000000.vtx.inc"
};

Gfx gLikeLikeDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gLikeLikeBodyPattern1Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gLikeLikeBodyPattern2Tex, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 4, 1, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 160),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_rrVtx_000000, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 10, 11, 0, 10, 0, 12, 0),
    gsDPPipeSync(),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_rrVtx_000000[13], 7, 0),
    gsSPMatrix(0x0C000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_rrVtx_000000[20], 7, 16),
    gsSP2Triangles(0, 1, 17, 0, 0, 17, 16, 0),
    gsSP2Triangles(5, 6, 22, 0, 5, 22, 21, 0),
    gsSP2Triangles(4, 5, 21, 0, 4, 21, 20, 0),
    gsSP2Triangles(2, 3, 19, 0, 2, 19, 18, 0),
    gsSP2Triangles(6, 0, 16, 0, 6, 16, 22, 0),
    gsSP2Triangles(3, 4, 20, 0, 3, 20, 19, 0),
    gsSPMatrix(0x0C000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_rrVtx_000000[27], 7, 0),
    gsSP2Triangles(20, 21, 5, 0, 20, 5, 4, 0),
    gsSP2Triangles(21, 22, 6, 0, 21, 6, 5, 0),
    gsSP2Triangles(22, 16, 0, 0, 22, 0, 6, 0),
    gsSP2Triangles(19, 20, 4, 0, 19, 4, 3, 0),
    gsSP2Triangles(16, 17, 1, 0, 16, 1, 0, 0),
    gsSP2Triangles(18, 19, 3, 0, 18, 3, 2, 0),
    gsDPPipeSync(),
    gsSPDisplayList(0x08000000),
    gsSPMatrix(0x0C000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_rrVtx_000000[34], 7, 16),
    gsSP2Triangles(4, 5, 21, 0, 4, 21, 20, 0),
    gsSP2Triangles(5, 6, 22, 0, 5, 22, 21, 0),
    gsSP2Triangles(3, 4, 20, 0, 3, 20, 19, 0),
    gsSP2Triangles(6, 0, 16, 0, 6, 16, 22, 0),
    gsSP2Triangles(0, 1, 17, 0, 0, 17, 16, 0),
    gsSP2Triangles(2, 3, 19, 0, 2, 19, 18, 0),
    gsDPPipeSync(),
    gsSPDisplayList(0x08000000),
    gsSPMatrix(0x0C0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_rrVtx_000000[41], 14, 0),
    gsSP2Triangles(1, 2, 12, 0, 18, 2, 1, 0),
    gsSP2Triangles(19, 4, 3, 0, 3, 4, 13, 0),
    gsSP2Triangles(3, 2, 18, 0, 3, 18, 19, 0),
    gsSPModifyVertex(12, G_MWO_POINT_ST, 0x15000000),
    gsSP2Triangles(11, 0, 12, 0, 16, 0, 11, 0),
    gsSP2Triangles(5, 4, 19, 0, 5, 19, 20, 0),
    gsSP2Triangles(7, 6, 20, 0, 7, 20, 21, 0),
    gsSPModifyVertex(12, G_MWO_POINT_ST, 0x11000000),
    gsSP2Triangles(9, 10, 12, 0, 22, 10, 9, 0),
    gsSP2Triangles(9, 8, 21, 0, 9, 21, 22, 0),
    gsSP2Triangles(11, 10, 22, 0, 11, 22, 16, 0),
    gsSPModifyVertex(12, G_MWO_POINT_ST, 0x0D000000),
    gsSP2Triangles(7, 8, 12, 0, 21, 8, 7, 0),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x18000200),
    gsSP2Triangles(1, 0, 16, 0, 1, 16, 17, 0),
    gsSPModifyVertex(12, G_MWO_POINT_ST, 0x03000000),
    gsSPModifyVertex(13, G_MWO_POINT_ST, 0x0F000000),
    gsSP2Triangles(12, 2, 3, 0, 13, 8, 9, 0),
    gsSPModifyVertex(12, G_MWO_POINT_ST, 0x09000000),
    gsSP2Triangles(5, 6, 12, 0, 20, 6, 5, 0),
    gsSPModifyVertex(12, G_MWO_POINT_ST, 0x07000000),
    gsSPModifyVertex(13, G_MWO_POINT_ST, 0x13000000),
    gsSP2Triangles(12, 4, 5, 0, 13, 10, 11, 0),
    gsSPModifyVertex(12, G_MWO_POINT_ST, 0x0B000000),
    gsSP1Triangle(12, 6, 7, 0),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x02000200),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x04000200),
    gsSPModifyVertex(12, G_MWO_POINT_ST, 0x03000000),
    gsSP1Triangle(12, 0, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gLikeLikeHoleTex, G_IM_FMT_IA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_DECAL2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_rrVtx_000000[55], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 0, 0),
    gsSP2Triangles(0, 8, 9, 0, 9, 10, 0, 0),
    gsSP2Triangles(0, 10, 11, 0, 11, 12, 0, 0),
    gsSP2Triangles(0, 12, 13, 0, 13, 14, 0, 0),
    gsSP2Triangles(0, 14, 15, 0, 15, 1, 0, 0),
    gsSPEndDisplayList(),
};

u8 object_rr_possiblePadding_0007F8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gLikeLikeBodyPattern1Tex[] = {
#include "assets/objects/object_rr/body_pattern_1.rgba16.inc.c"
};

u64 gLikeLikeBodyPattern2Tex[] = {
#include "assets/objects/object_rr/body_pattern_2.rgba16.inc.c"
};

u64 gLikeLikeHoleTex[] = {
#include "assets/objects/object_rr/hole.ia16.inc.c"
};

