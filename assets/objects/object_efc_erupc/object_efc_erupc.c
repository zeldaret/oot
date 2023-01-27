#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_efc_erupc.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

u64 object_efc_erupc_Tex_000000[] = {
#include "assets/objects/object_efc_erupc/tex_00000000.i8.inc.c"
};

u64 object_efc_erupc_Tex_000800[] = {
#include "assets/objects/object_efc_erupc/tex_00000800.i4.inc.c"
};

Vtx object_efc_erupcVtx_001000[] = {
#include "assets/objects/object_efc_erupc/object_efc_erupcVtx_001000.vtx.inc"
};

Gfx object_efc_erupc_DL_001720[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_efc_erupc_Tex_000000, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, 1),
    gsDPLoadMultiBlock_4b(object_efc_erupc_Tex_000800, 0x0100, 1, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, 1, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_efc_erupcVtx_001000, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 2, 0, 1, 4, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 7, 0, 6, 8, 7, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 11, 0, 10, 12, 11, 0),
    gsSP2Triangles(14, 15, 1, 0, 14, 1, 0, 0),
    gsSP2Triangles(15, 16, 4, 0, 15, 4, 1, 0),
    gsSP2Triangles(16, 17, 6, 0, 16, 6, 4, 0),
    gsSP2Triangles(18, 8, 6, 0, 17, 18, 6, 0),
    gsSP2Triangles(18, 19, 10, 0, 18, 10, 8, 0),
    gsSP2Triangles(19, 20, 12, 0, 19, 12, 10, 0),
    gsSP2Triangles(21, 15, 14, 0, 22, 21, 14, 0),
    gsSP2Triangles(21, 23, 16, 0, 21, 16, 15, 0),
    gsSP2Triangles(24, 17, 16, 0, 23, 24, 16, 0),
    gsSP2Triangles(24, 25, 18, 0, 24, 18, 17, 0),
    gsSP2Triangles(26, 19, 18, 0, 25, 26, 18, 0),
    gsSP2Triangles(26, 27, 20, 0, 26, 20, 19, 0),
    gsSP2Triangles(28, 29, 21, 0, 28, 21, 22, 0),
    gsSP2Triangles(30, 23, 21, 0, 29, 30, 21, 0),
    gsSP2Triangles(30, 31, 24, 0, 30, 24, 23, 0),
    gsSPVertex(&object_efc_erupcVtx_001000[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0),
    gsSP2Triangles(6, 7, 5, 0, 4, 6, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(9, 12, 13, 0, 9, 13, 10, 0),
    gsSP2Triangles(12, 14, 3, 0, 12, 3, 13, 0),
    gsSP2Triangles(15, 0, 3, 0, 14, 15, 3, 0),
    gsSP2Triangles(15, 16, 4, 0, 15, 4, 0, 0),
    gsSP2Triangles(16, 17, 6, 0, 16, 6, 4, 0),
    gsSP2Triangles(18, 9, 8, 0, 19, 18, 8, 0),
    gsSP2Triangles(18, 20, 12, 0, 18, 12, 9, 0),
    gsSP2Triangles(21, 14, 12, 0, 20, 21, 12, 0),
    gsSP2Triangles(21, 22, 15, 0, 21, 15, 14, 0),
    gsSP2Triangles(23, 16, 15, 0, 22, 23, 15, 0),
    gsSP2Triangles(23, 24, 17, 0, 23, 17, 16, 0),
    gsSP2Triangles(25, 26, 18, 0, 25, 18, 19, 0),
    gsSP2Triangles(27, 20, 18, 0, 26, 27, 18, 0),
    gsSP2Triangles(27, 28, 21, 0, 27, 21, 20, 0),
    gsSP2Triangles(29, 22, 21, 0, 28, 29, 21, 0),
    gsSP2Triangles(29, 30, 23, 0, 29, 23, 22, 0),
    gsSP2Triangles(31, 24, 23, 0, 30, 31, 23, 0),
    gsSPVertex(&object_efc_erupcVtx_001000[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 2, 0, 1, 4, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 13, 11, 0),
    gsSP2Triangles(14, 1, 0, 0, 15, 14, 0, 0),
    gsSP2Triangles(14, 16, 4, 0, 14, 4, 1, 0),
    gsSP2Triangles(17, 6, 4, 0, 16, 17, 4, 0),
    gsSP2Triangles(17, 18, 8, 0, 17, 8, 6, 0),
    gsSP2Triangles(19, 10, 8, 0, 18, 19, 8, 0),
    gsSP2Triangles(19, 20, 12, 0, 19, 12, 10, 0),
    gsSP2Triangles(21, 22, 14, 0, 21, 14, 15, 0),
    gsSP2Triangles(23, 16, 14, 0, 22, 23, 14, 0),
    gsSP2Triangles(23, 24, 17, 0, 23, 17, 16, 0),
    gsSP2Triangles(25, 18, 17, 0, 24, 25, 17, 0),
    gsSP2Triangles(25, 26, 19, 0, 25, 19, 18, 0),
    gsSP2Triangles(27, 20, 19, 0, 26, 27, 19, 0),
    gsSP2Triangles(28, 29, 22, 0, 28, 22, 21, 0),
    gsSP2Triangles(29, 30, 23, 0, 29, 23, 22, 0),
    gsSP2Triangles(30, 31, 24, 0, 30, 24, 23, 0),
    gsSPVertex(&object_efc_erupcVtx_001000[96], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(8, 12, 13, 0, 8, 13, 9, 0),
    gsSP2Triangles(14, 0, 13, 0, 12, 14, 13, 0),
    gsSP2Triangles(14, 15, 1, 0, 14, 1, 0, 0),
    gsSP2Triangles(16, 4, 1, 0, 15, 16, 1, 0),
    gsSP2Triangles(16, 17, 6, 0, 16, 6, 4, 0),
    gsSPEndDisplayList(),
};

u64 object_efc_erupc_Tex_001A30[] = {
#include "assets/objects/object_efc_erupc/tex_00001A30.i8.inc.c"
};

Vtx object_efc_erupcVtx_002230[] = {
#include "assets/objects/object_efc_erupc/object_efc_erupcVtx_002230.vtx.inc"
};

Gfx object_efc_erupc_DL_002570[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_efc_erupc_Tex_001A30, G_IM_FMT_I, G_IM_SIZ_8b, 16, 128, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 7, G_TX_NOLOD, 3),
    gsDPLoadMultiBlock(gEffUnknown12Tex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, TEXEL1, 1, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0x80, 0x80, 255, 100, 0, 255),
    gsDPSetEnvColor(100, 0, 0, 255),
    gsSPDisplayList(0x09000000),
    gsSPVertex(object_efc_erupcVtx_002230, 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(2, 3, 4, 0, 4, 3, 5, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 5, 7, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 7, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0),
    gsSP2Triangles(17, 16, 18, 0, 17, 18, 19, 0),
    gsSP2Triangles(19, 18, 20, 0, 19, 20, 21, 0),
    gsSP2Triangles(21, 20, 22, 0, 21, 22, 23, 0),
    gsSP2Triangles(23, 22, 24, 0, 8, 9, 25, 0),
    gsSP2Triangles(25, 9, 11, 0, 25, 11, 10, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, 1, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, SHADE, 0),
    gsDPSetPrimColor(0x80, 0x80, 255, 200, 0, 255),
    gsDPSetEnvColor(255, 0, 0, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(&object_efc_erupcVtx_002230[26], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(2, 3, 4, 0, 4, 3, 5, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 5, 7, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 7, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0),
    gsSP2Triangles(17, 16, 18, 0, 17, 18, 19, 0),
    gsSP2Triangles(19, 18, 20, 0, 19, 20, 21, 0),
    gsSP2Triangles(21, 20, 22, 0, 21, 22, 23, 0),
    gsSP2Triangles(23, 22, 24, 0, 8, 9, 25, 0),
    gsSP2Triangles(25, 9, 11, 0, 25, 11, 10, 0),
    gsSPEndDisplayList(),
};

u8 object_efc_erupc_possiblePadding_002728[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_efc_erupcVtx_002730[] = {
#include "assets/objects/object_efc_erupc/object_efc_erupcVtx_002730.vtx.inc"
};

Gfx object_efc_erupc_DL_002760[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_efc_erupc_Tex_0027F0, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0,
                       0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx object_efc_erupc_DL_0027D8[] = {
    gsSPVertex(object_efc_erupcVtx_002730, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u64 object_efc_erupc_Tex_0027F0[] = {
#include "assets/objects/object_efc_erupc/tex_000027F0.i8.inc.c"
};

