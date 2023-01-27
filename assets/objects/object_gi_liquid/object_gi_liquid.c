#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_liquid.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

u64 object_gi_liquidTex_000000[] = {
#include "assets/objects/object_gi_liquid/object_gi_liquidTex_000000.ia8.inc.c"
};

u64 object_gi_liquidTex_000200[] = {
#include "assets/objects/object_gi_liquid/object_gi_liquidTex_000200.ia8.inc.c"
};

u64 object_gi_liquidTex_000400[] = {
#include "assets/objects/object_gi_liquid/object_gi_liquidTex_000400.ia8.inc.c"
};

Vtx object_gi_liquidVtx_000600[] = {
#include "assets/objects/object_gi_liquid/object_gi_liquidVtx_000600.vtx.inc"
};

Gfx gGiGreenPotColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 50, 100, 0, 255),
    gsDPSetEnvColor(20, 40, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiRedPotColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 220, 50, 50, 255),
    gsDPSetEnvColor(50, 0, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiBluePotColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 50, 30, 220, 255),
    gsDPSetEnvColor(20, 10, 60, 255),
    gsSPEndDisplayList(),
};

Gfx gGiGreenLiquidColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x80, 255, 255, 170, 255),
    gsDPSetEnvColor(0, 100, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiRedLiquidColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x80, 255, 170, 255, 255),
    gsDPSetEnvColor(150, 0, 30, 255),
    gsSPEndDisplayList(),
};

Gfx gGiBlueLiquidColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x80, 170, 255, 255, 255),
    gsDPSetEnvColor(0, 50, 150, 255),
    gsSPEndDisplayList(),
};

Gfx gGiGreenPatternColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 100, 200, 40, 255),
    gsDPSetEnvColor(60, 120, 20, 255),
    gsDPLoadTextureBlock(object_gi_liquidTex_000000, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPEndDisplayList(),
};

Gfx gGiRedPatternColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 130, 120, 255),
    gsDPSetEnvColor(255, 70, 80, 255),
    gsDPLoadTextureBlock(object_gi_liquidTex_000200, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPEndDisplayList(),
};

Gfx gGiBluePatternColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 0, 130, 230, 255),
    gsDPSetEnvColor(0, 70, 190, 255),
    gsDPLoadTextureBlock(object_gi_liquidTex_000400, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPEndDisplayList(),
};

Gfx gGiPotionPotDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 1, 1, PRIM_LOD_FRAC, 1, COMBINED, 0, SHADE, 0, 1, 1,
                       PRIM_LOD_FRAC, 1),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x07D0, 0x07D0, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown12Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 1, G_TX_NOLOD),
    gsSPClearGeometryMode(G_FOG),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_gi_liquidVtx_000600, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_liquidVtx_000600[3], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 5, 7, 8, 0),
    gsSP2Triangles(7, 9, 10, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 13, 17, 0),
    gsSP2Triangles(18, 16, 19, 0, 20, 18, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 22, 26, 0),
    gsSP2Triangles(14, 25, 27, 0, 28, 29, 14, 0),
    gsSP2Triangles(30, 28, 13, 0, 31, 30, 16, 0),
    gsSPVertex(&object_gi_liquidVtx_000600[35], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 5, 9, 0),
    gsSP2Triangles(10, 11, 8, 0, 12, 10, 13, 0),
    gsSP2Triangles(14, 12, 15, 0, 16, 14, 1, 0),
    gsSP2Triangles(17, 16, 0, 0, 18, 19, 6, 0),
    gsSP2Triangles(11, 18, 5, 0, 20, 21, 11, 0),
    gsSP2Triangles(22, 20, 10, 0, 23, 22, 12, 0),
    gsSP2Triangles(24, 23, 14, 0, 25, 24, 16, 0),
    gsSP2Triangles(26, 25, 17, 0, 21, 27, 18, 0),
    gsSP2Triangles(28, 29, 21, 0, 30, 28, 20, 0),
    gsSP1Triangle(31, 30, 22, 0),
    gsSPVertex(&object_gi_liquidVtx_000600[67], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 3, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 7, 0, 12, 10, 13, 0),
    gsSP2Triangles(14, 12, 15, 0, 16, 14, 1, 0),
    gsSP2Triangles(17, 16, 0, 0, 18, 17, 3, 0),
    gsSP2Triangles(19, 18, 5, 0, 20, 21, 11, 0),
    gsSP2Triangles(22, 20, 10, 0, 23, 22, 12, 0),
    gsSP2Triangles(24, 23, 14, 0, 25, 24, 16, 0),
    gsSP2Triangles(26, 25, 17, 0, 27, 26, 18, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 31, 29, 0),
    gsSPVertex(&object_gi_liquidVtx_000600[99], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(4, 8, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(9, 2, 11, 0, 2, 1, 12, 0),
    gsSP2Triangles(1, 3, 13, 0, 6, 5, 14, 0),
    gsSP2Triangles(5, 7, 15, 0, 7, 8, 16, 0),
    gsSP2Triangles(16, 10, 17, 0, 10, 11, 18, 0),
    gsSP2Triangles(11, 12, 19, 0, 12, 13, 20, 0),
    gsSP2Triangles(21, 14, 22, 0, 14, 15, 23, 0),
    gsSP2Triangles(15, 16, 24, 0, 24, 17, 25, 0),
    gsSP2Triangles(17, 18, 26, 0, 18, 19, 27, 0),
    gsSP2Triangles(19, 20, 28, 0, 20, 29, 30, 0),
    gsSP1Triangle(22, 23, 31, 0),
    gsSPVertex(&object_gi_liquidVtx_000600[131], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 5, 7, 8, 0),
    gsSP2Triangles(7, 9, 10, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 14, 2, 16, 0),
    gsSP2Triangles(16, 4, 17, 0, 4, 6, 18, 0),
    gsSP2Triangles(6, 8, 19, 0, 8, 10, 20, 0),
    gsSP2Triangles(10, 12, 21, 0, 12, 22, 23, 0),
    gsSP2Triangles(15, 16, 24, 0, 24, 17, 25, 0),
    gsSP2Triangles(17, 18, 26, 0, 18, 19, 27, 0),
    gsSP2Triangles(19, 20, 28, 0, 20, 21, 29, 0),
    gsSP1Triangle(21, 23, 30, 0),
    gsSPVertex(&object_gi_liquidVtx_000600[162], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 160, 100, 0, 255),
    gsDPSetEnvColor(60, 30, 0, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown12Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_gi_liquidVtx_000600[165], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_gi_liquidVtx_000600[168], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(5, 2, 6, 0, 4, 0, 5, 0),
    gsSP2Triangles(5, 0, 2, 0, 4, 1, 0, 0),
    gsSP1Triangle(3, 7, 1, 0),
    gsSPEndDisplayList(),
};

Gfx gGiPotionLiquidDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, 0, 0, 0, TEXEL0, PRIMITIVE, ENVIRONMENT, COMBINED,
                       ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown12Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 1, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 15, G_TX_NOMIRROR | G_TX_WRAP,
                5, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_gi_liquidVtx_000600[176], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 2, 5, 0, 0),
    gsSP1Triangle(5, 6, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gGiPotionPatternDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_DECAL2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, TEXEL0, COMBINED, 0, SHADE, 0, 0, 0, 0,
                       COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPVertex(&object_gi_liquidVtx_000600[183], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 3, 6, 0, 7, 5, 8, 0),
    gsSP2Triangles(9, 7, 10, 0, 11, 9, 12, 0),
    gsSP2Triangles(1, 13, 14, 0, 2, 4, 0, 0),
    gsSP2Triangles(4, 6, 3, 0, 6, 8, 5, 0),
    gsSP2Triangles(8, 10, 7, 0, 10, 12, 9, 0),
    gsSP2Triangles(12, 15, 11, 0, 14, 2, 1, 0),
    gsSPEndDisplayList(),
};

