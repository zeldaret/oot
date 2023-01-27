#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_soul.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

u64 object_gi_soulTex_000000[] = {
#include "assets/objects/object_gi_soul/object_gi_soulTex_000000.i8.inc.c"
};

Vtx object_gi_soulVtx_000400[] = {
#include "assets/objects/object_gi_soul/object_gi_soulVtx_000400.vtx.inc"
};

Gfx gGiFairyContainerBaseCapDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, 1),
    gsDPSetPrimColor(0, 0, 255, 50, 100, 255),
    gsDPSetEnvColor(50, 0, 0, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x0FA0, 0x0FA0, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 1, 1),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_gi_soulVtx_000400, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_soulVtx_000400[3], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(4, 5, 0, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_gi_soulVtx_000400[9], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 3, 5, 9, 0),
    gsSP2Triangles(1, 0, 7, 0, 4, 3, 10, 0),
    gsSP2Triangles(8, 9, 6, 0, 7, 6, 11, 0),
    gsSP2Triangles(7, 11, 1, 0, 9, 8, 3, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 12, 18, 13, 0),
    gsSP2Triangles(13, 18, 7, 0, 14, 13, 0, 0),
    gsSP2Triangles(17, 16, 3, 0, 18, 17, 8, 0),
    gsSP2Triangles(7, 0, 13, 0, 10, 3, 16, 0),
    gsSP2Triangles(3, 8, 17, 0, 8, 7, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 23, 21, 0),
    gsSP2Triangles(23, 24, 21, 0, 24, 25, 21, 0),
    gsSP2Triangles(26, 27, 21, 0, 28, 19, 21, 0),
    gsSP1Triangle(19, 29, 30, 0),
    gsSPVertex(&object_gi_soulVtx_000400[40], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 5, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(10, 9, 11, 0, 11, 12, 13, 0),
    gsSP2Triangles(1, 13, 14, 0, 4, 15, 16, 0),
    gsSP2Triangles(5, 16, 17, 0, 7, 17, 18, 0),
    gsSP2Triangles(9, 18, 12, 0, 12, 19, 20, 0),
    gsSP2Triangles(13, 20, 21, 0, 15, 22, 23, 0),
    gsSP2Triangles(16, 23, 24, 0, 17, 24, 25, 0),
    gsSP2Triangles(18, 25, 19, 0, 24, 17, 16, 0),
    gsSP2Triangles(23, 16, 15, 0, 21, 14, 13, 0),
    gsSP2Triangles(20, 13, 12, 0, 19, 12, 18, 0),
    gsSP2Triangles(25, 18, 17, 0, 1, 0, 26, 0),
    gsSP2Triangles(2, 27, 0, 0, 5, 6, 3, 0),
    gsSP2Triangles(7, 8, 6, 0, 9, 10, 8, 0),
    gsSP2Triangles(11, 26, 10, 0, 13, 1, 11, 0),
    gsSP2Triangles(14, 2, 1, 0, 16, 5, 4, 0),
    gsSP2Triangles(17, 7, 5, 0, 18, 9, 7, 0),
    gsSP2Triangles(12, 11, 9, 0, 23, 22, 28, 0),
    gsSP2Triangles(28, 25, 23, 0, 25, 24, 23, 0),
    gsSP1Triangle(20, 19, 25, 0),
    gsSPEndDisplayList(),
};

Gfx gGiFairyContainerGlassDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, TEXEL0, COMBINED, 0, SHADE, 0, 0, 0, 0,
                       COMBINED),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 50, 150, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x0BB8, 0x0BB8, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_gi_soulVtx_000400[69], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_soulVtx_000400[72], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 5, 8, 9, 0),
    gsSP2Triangles(10, 5, 9, 0, 11, 10, 9, 0),
    gsSP2Triangles(11, 9, 12, 0, 13, 11, 12, 0),
    gsSP2Triangles(13, 12, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 6, 5, 0),
    gsSP2Triangles(19, 5, 20, 0, 21, 22, 10, 0),
    gsSP2Triangles(21, 10, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 26, 27, 0, 28, 11, 13, 0),
    gsSP2Triangles(28, 13, 29, 0, 30, 1, 0, 0),
    gsSP1Triangle(30, 0, 31, 0),
    gsSPVertex(&object_gi_soulVtx_000400[104], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 6, 0, 5, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(11, 7, 10, 0, 11, 10, 12, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 11, 14, 0),
    gsSP2Triangles(1, 15, 16, 0, 1, 16, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gGiFairyContainerContentsDL[] = {
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL0, 0, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0x80, 255, 220, 255, 255),
    gsDPSetEnvColor(150, 0, 100, 255),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gi_soulTex_000000, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gEffUnknown11Tex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_gi_soulVtx_000400[121], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSPEndDisplayList(),
};

