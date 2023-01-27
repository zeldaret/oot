#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_goddess.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

Vtx object_gi_goddessVtx_000000[] = {
#include "assets/objects/object_gi_goddess/object_gi_goddessVtx_000000.vtx.inc"
};

Gfx gGiMagicSpellDiamondDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsDPSetCombineMode(G_CC_BLENDPEDECALA, G_CC_PASS2),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 50, 200, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x1770, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 1, 1),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_gi_goddessVtx_000000, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_goddessVtx_000000[3], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 10, 12, 0, 13, 14, 12, 0),
    gsSP1Triangle(9, 15, 16, 0),
    gsSPEndDisplayList(),
};

Gfx gGiDinsFireColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x80, 255, 200, 0, 255),
    gsDPSetEnvColor(200, 0, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiFaroresWindColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x80, 255, 255, 170, 255),
    gsDPSetEnvColor(0, 150, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiNayrusLoveColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x80, 170, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 200, 255),
    gsSPEndDisplayList(),
};

Gfx gGiMagicSpellOrbDL[] = {
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, 0, 0, 0, COMBINED),
    gsSPTexture(0x0FA0, 0x0FA0, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 1, 1),
    gsDPLoadMultiBlock(gEffUnknown12Tex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_gi_goddessVtx_000000[20], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_goddessVtx_000000[23], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 1, 5, 6, 0),
    gsSP2Triangles(5, 7, 8, 0, 5, 8, 6, 0),
    gsSP2Triangles(6, 8, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(11, 13, 14, 0, 11, 14, 12, 0),
    gsSP2Triangles(12, 14, 15, 0, 13, 16, 17, 0),
    gsSP2Triangles(16, 18, 19, 0, 16, 19, 17, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 22, 27, 23, 0),
    gsSP2Triangles(23, 27, 28, 0, 25, 29, 30, 0),
    gsSPVertex(&object_gi_goddessVtx_000000[54], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSP2Triangles(7, 9, 10, 0, 8, 11, 12, 0),
    gsSP2Triangles(11, 13, 14, 0, 11, 14, 12, 0),
    gsSP2Triangles(12, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(17, 19, 18, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 22, 24, 25, 0),
    gsSP2Triangles(22, 25, 23, 0, 23, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 28, 30, 31, 0),
    gsSP1Triangle(28, 31, 29, 0),
    gsSPVertex(&object_gi_goddessVtx_000000[86], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0),
    gsSP2Triangles(13, 15, 16, 0, 14, 17, 18, 0),
    gsSP2Triangles(17, 19, 20, 0, 17, 20, 18, 0),
    gsSP2Triangles(18, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(23, 25, 26, 0, 23, 26, 24, 0),
    gsSP2Triangles(24, 26, 27, 0, 25, 28, 29, 0),
    gsSP2Triangles(28, 30, 31, 0, 28, 31, 29, 0),
    gsSPVertex(&object_gi_goddessVtx_000000[118], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(5, 7, 8, 0, 6, 9, 10, 0),
    gsSP2Triangles(9, 11, 12, 0, 9, 12, 10, 0),
    gsSP2Triangles(10, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(15, 17, 18, 0, 15, 18, 16, 0),
    gsSP2Triangles(16, 18, 19, 0, 17, 20, 21, 0),
    gsSP2Triangles(20, 22, 23, 0, 20, 23, 21, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0),
    gsSPEndDisplayList(),
};

