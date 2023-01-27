#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_ki_tan_mask.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

u64 object_gi_ki_tan_maskTex_000000[] = {
#include "assets/objects/object_gi_ki_tan_mask/object_gi_ki_tan_maskTex_000000.ia8.inc.c"
};

Vtx object_gi_ki_tan_maskVtx_000100[] = {
#include "assets/objects/object_gi_ki_tan_mask/object_gi_ki_tan_maskVtx_000100.vtx.inc"
};

Gfx gGiKeatonMaskDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 1, 1, PRIM_LOD_FRAC, 1, COMBINED, 0, SHADE, 0, 1, 1,
                       PRIM_LOD_FRAC, 1),
    gsDPSetPrimColor(0, 0, 255, 190, 0, 255),
    gsDPSetEnvColor(100, 70, 0, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x07D0, 0x07D0, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_FOG),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_gi_ki_tan_maskVtx_000100, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_ki_tan_maskVtx_000100[3], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(0, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 2, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 6, 12, 1, 0),
    gsSP2Triangles(18, 19, 14, 0, 0, 4, 20, 0),
    gsSP2Triangles(14, 21, 22, 0, 23, 17, 8, 0),
    gsSP2Triangles(14, 2, 18, 0, 24, 14, 19, 0),
    gsSP2Triangles(19, 25, 24, 0, 21, 14, 24, 0),
    gsSP2Triangles(18, 2, 1, 0, 26, 27, 28, 0),
    gsSP2Triangles(5, 20, 29, 0, 30, 8, 7, 0),
    gsSPVertex(&object_gi_ki_tan_maskVtx_000100[34], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 9, 17, 0, 13, 18, 19, 0),
    gsSP2Triangles(17, 9, 20, 0, 21, 22, 17, 0),
    gsSP2Triangles(23, 17, 0, 0, 24, 22, 25, 0),
    gsSP2Triangles(0, 26, 27, 0, 28, 29, 0, 0),
    gsSP1Triangle(22, 24, 1, 0),
    gsSPVertex(&object_gi_ki_tan_maskVtx_000100[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(10, 11, 8, 0, 7, 11, 10, 0),
    gsSP2Triangles(7, 10, 12, 0, 13, 12, 10, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 11, 7, 6, 0),
    gsSP2Triangles(7, 23, 5, 0, 12, 24, 25, 0),
    gsSP2Triangles(26, 13, 17, 0, 26, 24, 12, 0),
    gsSP2Triangles(27, 28, 29, 0, 17, 29, 26, 0),
    gsSP2Triangles(12, 13, 26, 0, 30, 31, 21, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 100, 100, 50, 255),
    gsDPSetEnvColor(30, 20, 10, 255),
    gsSPTexture(0x0BB8, 0x0BB8, 0, G_TX_RENDERTILE, G_ON),
    gsSPVertex(&object_gi_ki_tan_maskVtx_000100[96], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 1, 5, 0, 6, 2, 3, 0),
    gsSP2Triangles(0, 7, 8, 0, 9, 7, 0, 0),
    gsSP2Triangles(6, 9, 2, 0, 9, 0, 2, 0),
    gsSP2Triangles(1, 0, 8, 0, 5, 1, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 10, 12, 0),
    gsSP2Triangles(14, 13, 12, 0, 15, 16, 14, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(17, 20, 21, 0, 21, 22, 23, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 100, 70, 0, 255),
    gsDPSetEnvColor(60, 40, 0, 255),
    gsSPTexture(0x07D0, 0x07D0, 0, G_TX_RENDERTILE, G_ON),
    gsSPVertex(&object_gi_ki_tan_maskVtx_000100[120], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 1, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 9, 0, 8, 6, 10, 0),
    gsSP2Triangles(11, 4, 12, 0, 1, 11, 2, 0),
    gsSP2Triangles(11, 1, 4, 0, 13, 2, 11, 0),
    gsSP2Triangles(14, 11, 15, 0, 15, 16, 14, 0),
    gsSP2Triangles(16, 15, 17, 0, 17, 15, 18, 0),
    gsSP2Triangles(19, 18, 15, 0, 19, 15, 20, 0),
    gsSP2Triangles(15, 11, 20, 0, 12, 20, 11, 0),
    gsSP2Triangles(12, 21, 20, 0, 22, 20, 21, 0),
    gsSP2Triangles(22, 23, 20, 0, 23, 24, 20, 0),
    gsSP2Triangles(24, 25, 20, 0, 25, 26, 20, 0),
    gsSP2Triangles(26, 27, 20, 0, 20, 27, 19, 0),
    gsSPEndDisplayList(),
};

Gfx gGiKeatonMaskEyesDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_DECAL2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, TEXEL0, COMBINED, 0, SHADE, 0, 0, 0, 0,
                       COMBINED),
    gsDPSetPrimColor(0, 0, 20, 10, 0, 255),
    gsDPSetEnvColor(220, 170, 0, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gi_ki_tan_maskTex_000000, G_IM_FMT_IA, G_IM_SIZ_8b, 8, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 3, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(&object_gi_ki_tan_maskVtx_000100[148], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSPEndDisplayList(),
};

