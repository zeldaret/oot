#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_bombpouch.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

Vtx object_gi_bombpouchVtx_000000[] = {
#include "assets/objects/object_gi_bombpouch/object_gi_bombpouchVtx_000000.vtx.inc"
};

Gfx gGiBombBag20BagColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 120, 90, 60, 255),
    gsDPSetEnvColor(60, 40, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiBombBag30BagColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 160, 100, 0, 255),
    gsDPSetEnvColor(60, 20, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiBombBag40BagColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 120, 60, 0, 255),
    gsDPSetEnvColor(50, 10, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiBombBag20RingColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 120, 50, 255),
    gsDPSetEnvColor(50, 0, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiBombBag30RingColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 20, 255),
    gsSPEndDisplayList(),
};

Gfx gGiBombBag40RingColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 150, 255),
    gsDPSetEnvColor(80, 40, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiBombBagDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 1, 1, PRIM_LOD_FRAC, 1, COMBINED, 0, SHADE, 0, 1, 1,
                       PRIM_LOD_FRAC, 1),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown12Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(object_gi_bombpouchVtx_000000, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 6, 4, 0, 7, 8, 6, 0),
    gsSP2Triangles(9, 10, 8, 0, 11, 12, 10, 0),
    gsSP2Triangles(13, 14, 12, 0, 15, 16, 14, 0),
    gsSP2Triangles(17, 18, 16, 0, 19, 20, 18, 0),
    gsSP2Triangles(21, 22, 20, 0, 23, 24, 22, 0),
    gsSP2Triangles(25, 26, 24, 0, 27, 28, 26, 0),
    gsSP1Triangle(29, 30, 28, 0),
    gsSPVertex(&object_gi_bombpouchVtx_000000[31], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_gi_bombpouchVtx_000000[34], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 5, 7, 8, 0),
    gsSP2Triangles(7, 9, 10, 0, 9, 11, 12, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 0, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 17, 21, 0),
    gsSP2Triangles(22, 20, 23, 0, 24, 22, 25, 0),
    gsSP2Triangles(26, 24, 27, 0, 28, 26, 29, 0),
    gsSPVertex(&object_gi_bombpouchVtx_000000[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 5, 8, 0),
    gsSP2Triangles(9, 7, 10, 0, 11, 9, 12, 0),
    gsSP2Triangles(13, 11, 14, 0, 15, 13, 16, 0),
    gsSP2Triangles(17, 15, 18, 0, 6, 19, 0, 0),
    gsSP2Triangles(20, 21, 6, 0, 22, 20, 5, 0),
    gsSP2Triangles(23, 22, 7, 0, 24, 23, 9, 0),
    gsSP2Triangles(25, 24, 11, 0, 26, 25, 13, 0),
    gsSP2Triangles(27, 26, 15, 0, 21, 28, 19, 0),
    gsSP2Triangles(29, 21, 20, 0, 30, 20, 22, 0),
    gsSP1Triangle(31, 22, 23, 0),
    gsSPVertex(&object_gi_bombpouchVtx_000000[96], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 6, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 13, 0, 17, 18, 16, 0),
    gsSP2Triangles(19, 20, 18, 0, 21, 22, 20, 0),
    gsSP2Triangles(23, 24, 22, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 14, 26, 0, 14, 13, 29, 0),
    gsSP2Triangles(13, 16, 30, 0, 16, 18, 31, 0),
    gsSPVertex(&object_gi_bombpouchVtx_000000[128], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 10, 11, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 15, 0, 14, 16, 17, 0),
    gsSP2Triangles(16, 2, 18, 0, 2, 4, 19, 0),
    gsSP2Triangles(4, 6, 20, 0, 21, 9, 22, 0),
    gsSP1Triangle(9, 11, 23, 0),
    gsSPEndDisplayList(),
};

Gfx gGiBombBagRingDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x07D0, 0x07D0, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown12Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 1, 1),
    gsSPClearGeometryMode(G_FOG),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_gi_bombpouchVtx_000000[152], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_bombpouchVtx_000000[155], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 5, 7, 8, 0),
    gsSP2Triangles(7, 9, 10, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 15, 14, 0),
    gsSP2Triangles(2, 16, 0, 0, 4, 2, 1, 0),
    gsSP2Triangles(6, 4, 3, 0, 8, 6, 5, 0),
    gsSP2Triangles(10, 8, 7, 0, 12, 10, 9, 0),
    gsSP1Triangle(15, 17, 13, 0),
    gsSPEndDisplayList(),
};

