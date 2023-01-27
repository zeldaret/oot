#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_rupy.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

Vtx object_gi_rupyVtx_000000[] = {
#include "assets/objects/object_gi_rupy/object_gi_rupyVtx_000000.vtx.inc"
};

Gfx gGiGreenRupeeInnerColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x80, 200, 255, 0, 255),
    gsDPSetEnvColor(0, 120, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiBlueRupeeInnerColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x80, 0, 200, 255, 255),
    gsDPSetEnvColor(0, 0, 120, 255),
    gsSPEndDisplayList(),
};

Gfx gGiRedRupeeInnerColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x80, 255, 200, 0, 255),
    gsDPSetEnvColor(130, 0, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiPurpleRupeeInnerColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x80, 255, 0, 255, 255),
    gsDPSetEnvColor(100, 0, 100, 255),
    gsSPEndDisplayList(),
};

Gfx gGiGoldRupeeInnerColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x80, 255, 255, 170, 255),
    gsDPSetEnvColor(120, 90, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiGreenRupeeOuterColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x80, 255, 255, 170, 255),
    gsDPSetEnvColor(100, 255, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiBlueRupeeOuterColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x80, 170, 255, 255, 255),
    gsDPSetEnvColor(0, 100, 255, 255),
    gsSPEndDisplayList(),
};

Gfx gGiRedRupeeOuterColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x80, 255, 255, 170, 255),
    gsDPSetEnvColor(255, 0, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiPurpleRupeeOuterColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x80, 255, 170, 255, 255),
    gsDPSetEnvColor(100, 0, 150, 255),
    gsSPEndDisplayList(),
};

Gfx gGiGoldRupeeOuterColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x80, 255, 255, 170, 255),
    gsDPSetEnvColor(255, 255, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiRupeeInnerDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, 0, 0, 0, 1, PRIMITIVE, ENVIRONMENT, COMBINED,
                       ENVIRONMENT, 0, 0, 0, 1),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x0DAC, 0x0DAC, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_FOG),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_gi_rupyVtx_000000, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPVertex(&object_gi_rupyVtx_000000[6], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(19, 7, 6, 0, 19, 6, 20, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(25, 24, 26, 0, 25, 26, 27, 0),
    gsSP2Triangles(27, 26, 28, 0, 27, 28, 29, 0),
    gsSPVertex(&object_gi_rupyVtx_000000[36], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gGiRupeeOuterDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, 0, 0, 0, TEXEL0, PRIMITIVE, ENVIRONMENT, COMBINED,
                       ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x0BB8, 0x07D0, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, 15),
    gsSPClearGeometryMode(G_FOG),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_gi_rupyVtx_000000[44], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPVertex(&object_gi_rupyVtx_000000[50], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(14, 16, 17, 0, 14, 17, 15, 0),
    gsSP2Triangles(16, 7, 6, 0, 16, 6, 17, 0),
    gsSP2Triangles(0, 18, 19, 0, 0, 19, 1, 0),
    gsSP2Triangles(1, 19, 20, 0, 1, 20, 2, 0),
    gsSP2Triangles(2, 20, 21, 0, 2, 21, 3, 0),
    gsSP2Triangles(21, 22, 4, 0, 21, 4, 3, 0),
    gsSP2Triangles(22, 23, 5, 0, 22, 5, 4, 0),
    gsSP2Triangles(23, 18, 0, 0, 23, 0, 5, 0),
    gsSPEndDisplayList(),
};

