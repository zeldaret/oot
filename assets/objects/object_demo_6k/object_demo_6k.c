#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_demo_6k.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

u64 object_demo_6k_Tex_000000[] = {
#include "assets/objects/object_demo_6k/tex_00000000.i8.inc.c"
};

Vtx object_demo_6kVtx_001000[] = {
#include "assets/objects/object_demo_6k/object_demo_6kVtx_001000.vtx.inc"
};

Gfx object_demo_6k_DL_001040[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetCycleType(G_CYC_1CYCLE),
    gsDPLoadTextureBlock(object_demo_6k_Tex_000000, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, ENVIRONMENT,
                       TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(object_demo_6kVtx_001000, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u64 object_demo_6k_Tex_0010D0[] = {
#include "assets/objects/object_demo_6k/tex_000010D0.i8.inc.c"
};

Vtx object_demo_6kVtx_0018D0[] = {
#include "assets/objects/object_demo_6k/object_demo_6kVtx_0018D0.vtx.inc"
};

Gfx object_demo_6k_DL_0022B0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_demo_6k_Tex_0010D0, G_IM_FMT_I, G_IM_SIZ_8b, 16, 128, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 7, G_TX_NOLOD, 2),
    gsDPLoadMultiBlock(gEffUnknown10Tex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, 1, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_demo_6kVtx_0018D0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 6, 8, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 10, 12, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 14, 16, 0),
    gsSP2Triangles(17, 16, 18, 0, 17, 18, 19, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 18, 20, 0),
    gsSP2Triangles(21, 20, 22, 0, 21, 22, 23, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 22, 24, 0),
    gsSP2Triangles(25, 24, 26, 0, 25, 26, 27, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 26, 28, 0),
    gsSP2Triangles(29, 28, 30, 0, 29, 30, 31, 0),
    gsSPVertex(&object_demo_6kVtx_0018D0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 4, 6, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 8, 10, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 12, 14, 0),
    gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 16, 18, 0),
    gsSP2Triangles(19, 18, 20, 0, 19, 20, 21, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 20, 22, 0),
    gsSP2Triangles(23, 22, 24, 0, 23, 24, 25, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 24, 26, 0),
    gsSP2Triangles(27, 26, 28, 0, 27, 28, 29, 0),
    gsSP2Triangles(29, 30, 31, 0, 29, 28, 30, 0),
    gsSPVertex(&object_demo_6kVtx_0018D0[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 6, 8, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 10, 12, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 16, 18, 0),
    gsSP2Triangles(19, 18, 20, 0, 19, 20, 21, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 20, 22, 0),
    gsSP2Triangles(23, 22, 24, 0, 23, 24, 25, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 24, 26, 0),
    gsSP2Triangles(27, 26, 28, 0, 27, 28, 29, 0),
    gsSP2Triangles(29, 30, 31, 0, 29, 28, 30, 0),
    gsSPVertex(&object_demo_6kVtx_0018D0[96], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 6, 8, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 10, 12, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 14, 16, 0),
    gsSP2Triangles(17, 16, 18, 0, 17, 18, 19, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 18, 20, 0),
    gsSP2Triangles(21, 20, 22, 0, 21, 22, 23, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 22, 24, 0),
    gsSP2Triangles(25, 24, 26, 0, 25, 26, 27, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 26, 28, 0),
    gsSP2Triangles(29, 28, 30, 0, 29, 30, 31, 0),
    gsSPVertex(&object_demo_6kVtx_0018D0[128], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 4, 6, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 8, 10, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 12, 14, 0),
    gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 16, 18, 0),
    gsSP2Triangles(19, 18, 20, 0, 19, 20, 21, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 20, 22, 0),
    gsSP2Triangles(23, 22, 24, 0, 23, 24, 25, 0),
    gsSP1Triangle(25, 24, 26, 0),
    gsSPVertex(&object_demo_6kVtx_0018D0[155], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u8 object_demo_6k_possiblePadding_0025D8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_demo_6k_Tex_0025E0[] = {
#include "assets/objects/object_demo_6k/tex_000025E0.i8.inc.c"
};

Vtx object_demo_6kVtx_0035E0[] = {
#include "assets/objects/object_demo_6k/object_demo_6kVtx_0035E0.vtx.inc"
};

Gfx object_demo_6k_DL_0039D0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_demo_6k_Tex_0025E0, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, 1, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 6, 15, G_TX_NOMIRROR | G_TX_WRAP,
                6, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x00FC, 0x00FC),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_demo_6kVtx_0035E0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 3, 5, 4, 0),
    gsSP2Triangles(5, 6, 4, 0, 5, 7, 6, 0),
    gsSP2Triangles(2, 8, 9, 0, 2, 1, 8, 0),
    gsSP2Triangles(1, 10, 8, 0, 1, 4, 10, 0),
    gsSP2Triangles(4, 11, 10, 0, 4, 6, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 8, 13, 0),
    gsSP2Triangles(8, 15, 13, 0, 8, 10, 15, 0),
    gsSP2Triangles(10, 16, 15, 0, 10, 11, 16, 0),
    gsSP2Triangles(14, 17, 18, 0, 14, 13, 17, 0),
    gsSP2Triangles(13, 19, 17, 0, 13, 15, 19, 0),
    gsSP2Triangles(15, 20, 19, 0, 15, 16, 20, 0),
    gsSP2Triangles(18, 21, 22, 0, 18, 17, 21, 0),
    gsSP2Triangles(17, 23, 21, 0, 17, 19, 23, 0),
    gsSP2Triangles(19, 24, 23, 0, 19, 20, 24, 0),
    gsSP2Triangles(22, 25, 26, 0, 22, 21, 25, 0),
    gsSP2Triangles(21, 27, 25, 0, 21, 23, 27, 0),
    gsSP2Triangles(23, 28, 27, 0, 23, 24, 28, 0),
    gsSP2Triangles(26, 29, 30, 0, 26, 25, 29, 0),
    gsSP2Triangles(25, 31, 29, 0, 25, 27, 31, 0),
    gsSPVertex(&object_demo_6kVtx_0035E0[32], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(7, 8, 5, 0, 7, 2, 8, 0),
    gsSP2Triangles(2, 9, 8, 0, 2, 1, 9, 0),
    gsSP2Triangles(6, 10, 11, 0, 6, 5, 10, 0),
    gsSP2Triangles(5, 12, 10, 0, 5, 8, 12, 0),
    gsSP2Triangles(8, 13, 12, 0, 8, 9, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 10, 15, 0),
    gsSP2Triangles(10, 17, 15, 0, 10, 12, 17, 0),
    gsSP2Triangles(12, 18, 17, 0, 12, 13, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 22, 20, 0),
    gsSP2Triangles(22, 23, 20, 0, 22, 24, 23, 0),
    gsSP2Triangles(24, 25, 23, 0, 24, 26, 25, 0),
    gsSP2Triangles(21, 27, 28, 0, 21, 20, 27, 0),
    gsSP2Triangles(20, 29, 27, 0, 20, 23, 29, 0),
    gsSP2Triangles(23, 30, 29, 0, 23, 25, 30, 0),
    gsSPEndDisplayList(),
};

