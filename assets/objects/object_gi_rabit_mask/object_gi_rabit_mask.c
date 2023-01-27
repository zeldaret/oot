#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_rabit_mask.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

u64 object_gi_rabit_maskTex_000000[] = {
#include "assets/objects/object_gi_rabit_mask/object_gi_rabit_maskTex_000000.ia8.inc.c"
};

Vtx object_gi_rabit_maskVtx_000100[] = {
#include "assets/objects/object_gi_rabit_mask/object_gi_rabit_maskVtx_000100.vtx.inc"
};

Gfx gGiBunnyHoodDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 1, 1, PRIM_LOD_FRAC, 1, COMBINED, 0, SHADE, 0, 1, 1,
                       PRIM_LOD_FRAC, 1),
    gsDPSetPrimColor(0, 0, 255, 255, 90, 255),
    gsDPSetEnvColor(160, 130, 40, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x03E8, 0x03E8, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_gi_rabit_maskVtx_000100, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_rabit_maskVtx_000100[3], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 3, 4, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 10, 5, 0, 10, 11, 3, 0),
    gsSP2Triangles(0, 3, 11, 0, 1, 0, 12, 0),
    gsSP2Triangles(7, 1, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 5, 15, 0, 14, 17, 5, 0),
    gsSP2Triangles(15, 7, 16, 0, 7, 6, 16, 0),
    gsSP2Triangles(15, 4, 2, 0, 15, 5, 4, 0),
    gsSP2Triangles(7, 15, 2, 0, 7, 2, 1, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 27, 25, 0),
    gsSP2Triangles(26, 25, 22, 0, 26, 22, 21, 0),
    gsSP2Triangles(28, 19, 18, 0, 29, 30, 31, 0),
    gsSP1Triangle(23, 29, 21, 0),
    gsSPVertex(&object_gi_rabit_maskVtx_000100[35], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 10, 9, 0, 11, 12, 13, 0),
    gsSP2Triangles(7, 14, 8, 0, 15, 16, 5, 0),
    gsSP2Triangles(17, 18, 8, 0, 18, 10, 8, 0),
    gsSP2Triangles(17, 8, 14, 0, 3, 19, 5, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 20, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 26, 28, 0),
    gsSP2Triangles(29, 30, 31, 0, 27, 30, 24, 0),
    gsSPVertex(&object_gi_rabit_maskVtx_000100[67], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 2, 0, 8, 1, 0, 0),
    gsSP2Triangles(9, 2, 7, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 5, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 14, 9, 0, 19, 20, 21, 0),
    gsSP2Triangles(7, 18, 9, 0, 22, 23, 24, 0),
    gsSP2Triangles(25, 21, 20, 0, 26, 27, 21, 0),
    gsSP2Triangles(2, 1, 28, 0, 9, 5, 4, 0),
    gsSP2Triangles(3, 13, 19, 0, 2, 9, 29, 0),
    gsSP2Triangles(30, 17, 16, 0, 24, 16, 22, 0),
    gsSPVertex(&object_gi_rabit_maskVtx_000100[98], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 8, 7, 0, 13, 9, 14, 0),
    gsSP2Triangles(15, 16, 6, 0, 12, 17, 18, 0),
    gsSP2Triangles(19, 8, 20, 0, 8, 19, 6, 0),
    gsSP2Triangles(21, 22, 23, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 27, 10, 28, 0),
    gsSP2Triangles(10, 29, 28, 0, 10, 9, 29, 0),
    gsSP1Triangle(9, 13, 29, 0),
    gsSPVertex(&object_gi_rabit_maskVtx_000100[128], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 7, 0, 6, 3, 8, 0),
    gsSP2Triangles(8, 3, 9, 0, 10, 8, 9, 0),
    gsSP2Triangles(9, 11, 10, 0, 10, 11, 12, 0),
    gsSP2Triangles(11, 13, 12, 0, 1, 14, 15, 0),
    gsSP2Triangles(3, 16, 9, 0, 17, 12, 13, 0),
    gsSP2Triangles(18, 8, 10, 0, 19, 18, 20, 0),
    gsSP1Triangle(21, 22, 23, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(170, 160, 140, 255),
    gsSPVertex(&object_gi_rabit_maskVtx_000100[152], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 0, 2, 0, 2, 5, 4, 0),
    gsSP2Triangles(0, 4, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 10, 7, 0, 9, 11, 10, 0),
    gsSP2Triangles(9, 12, 11, 0, 11, 13, 10, 0),
    gsSPEndDisplayList(),
};

Gfx gGiBunnyHoodEyesDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_DECAL2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, TEXEL0, COMBINED, 0, SHADE, 0, 0, 0, 0,
                       COMBINED),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(30, 20, 0, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gi_rabit_maskTex_000000, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(&object_gi_rabit_maskVtx_000100[166], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(1, 0, 4, 0, 5, 4, 0, 0),
    gsSPEndDisplayList(),
};

