#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_light_ring.h"

Vtx object_light_ringVtx_000000[] = {
#include "assets/objects/object_light_ring/object_light_ringVtx_000000.vtx.inc"
};

Gfx gGoldenGoddessLightRingDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gGoldenGoddessLightRingTex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 128, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 7, 15, G_TX_NOLOD),
    gsDPLoadMultiBlock(gGoldenGoddessLightRingTex, 0x0000, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 128, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 7, 14, 3),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL0, 0, SHADE, 0, PRIMITIVE, ENVIRONMENT, COMBINED,
                       ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_light_ringVtx_000000, 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 2, 0, 7, 8, 2, 0),
    gsSP2Triangles(9, 10, 2, 0, 11, 12, 2, 0),
    gsSP2Triangles(13, 14, 2, 0, 15, 16, 2, 0),
    gsSP2Triangles(17, 18, 2, 0, 19, 20, 2, 0),
    gsSP2Triangles(21, 22, 2, 0, 23, 24, 2, 0),
    gsSPEndDisplayList(),
};

u64 gGoldenGoddessLightRingTex[] = {
#include "assets/objects/object_light_ring/goddess_light_ring.i8.inc.c"
};

