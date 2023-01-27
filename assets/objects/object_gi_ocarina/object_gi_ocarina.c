#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_ocarina.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

u64 object_gi_ocarinaTex_000000[] = {
#include "assets/objects/object_gi_ocarina/object_gi_ocarinaTex_000000.i8.inc.c"
};

Vtx object_gi_ocarinaVtx_000100[] = {
#include "assets/objects/object_gi_ocarina/object_gi_ocarinaVtx_000100.vtx.inc"
};

Gfx gGiOcarinaTimeDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 1, 1, PRIM_LOD_FRAC, 1, COMBINED, 0, SHADE, 0, 1, 1,
                       PRIM_LOD_FRAC, 1),
    gsDPSetPrimColor(0, 0, 90, 100, 255, 255),
    gsDPSetEnvColor(40, 0, 90, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x07D0, 0x07D0, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown12Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 1, 1),
    gsSPClearGeometryMode(G_FOG),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_gi_ocarinaVtx_000100, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_ocarinaVtx_000100[3], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 7, 0, 8, 9, 4, 0),
    gsSP2Triangles(10, 11, 3, 0, 8, 11, 12, 0),
    gsSP2Triangles(0, 12, 11, 0, 1, 0, 10, 0),
    gsSP2Triangles(11, 10, 0, 0, 13, 14, 12, 0),
    gsSP2Triangles(2, 13, 0, 0, 15, 2, 1, 0),
    gsSP2Triangles(16, 14, 13, 0, 16, 13, 2, 0),
    gsSP2Triangles(16, 2, 15, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 20, 18, 0, 17, 21, 20, 0),
    gsSP2Triangles(19, 18, 22, 0, 5, 7, 3, 0),
    gsSP2Triangles(7, 23, 6, 0, 4, 3, 11, 0),
    gsSP2Triangles(3, 6, 10, 0, 10, 6, 24, 0),
    gsSP2Triangles(1, 10, 24, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&object_gi_ocarinaVtx_000100[34], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(2, 5, 6, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 3, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 17, 19, 0, 17, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 25, 26, 23, 0),
    gsSP2Triangles(14, 25, 24, 0, 12, 1, 13, 0),
    gsSP2Triangles(1, 22, 5, 0, 24, 18, 14, 0),
    gsSP2Triangles(14, 17, 12, 0, 22, 21, 5, 0),
    gsSP2Triangles(17, 20, 21, 0, 0, 2, 3, 0),
    gsSP2Triangles(5, 2, 1, 0, 7, 5, 21, 0),
    gsSP2Triangles(17, 22, 1, 0, 27, 18, 24, 0),
    gsSP2Triangles(18, 17, 14, 0, 4, 16, 3, 0),
    gsSP2Triangles(6, 4, 2, 0, 8, 6, 5, 0),
    gsSP2Triangles(0, 13, 1, 0, 12, 17, 1, 0),
    gsSP2Triangles(25, 14, 13, 0, 28, 16, 4, 0),
    gsSP2Triangles(28, 4, 6, 0, 28, 6, 8, 0),
    gsSP2Triangles(29, 25, 13, 0, 29, 13, 3, 0),
    gsSP2Triangles(30, 9, 11, 0, 27, 19, 18, 0),
    gsSP1Triangle(11, 10, 31, 0),
    gsSPVertex(&object_gi_ocarinaVtx_000100[66], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 7, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(8, 15, 16, 0, 9, 11, 7, 0),
    gsSP2Triangles(11, 17, 10, 0, 14, 18, 12, 0),
    gsSP2Triangles(16, 9, 8, 0, 19, 20, 21, 0),
    gsSP1Triangle(22, 20, 23, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 30, 255),
    gsSPVertex(&object_gi_ocarinaVtx_000100[90], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 3, 6, 0, 7, 5, 8, 0),
    gsSP2Triangles(2, 4, 0, 0, 4, 6, 3, 0),
    gsSP2Triangles(6, 8, 5, 0, 8, 9, 7, 0),
    gsSPEndDisplayList(),
};

Gfx gGiOcarinaTimeHolesDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_DECAL2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, TEXEL0, COMBINED, 0, SHADE, 0, 0, 0, 0,
                       COMBINED),
    gsDPSetPrimColor(0, 0, 0, 0, 0, 255),
    gsDPSetEnvColor(30, 0, 60, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gi_ocarinaTex_000000, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(&object_gi_ocarinaVtx_000100[100], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 12, 11, 0, 21, 22, 23, 0),
    gsSPEndDisplayList(),
};

