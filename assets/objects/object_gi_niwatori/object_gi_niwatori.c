#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_niwatori.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

u64 object_gi_niwatoriTex_000000[] = {
#include "assets/objects/object_gi_niwatori/object_gi_niwatoriTex_000000.i8.inc.c"
};

u64 object_gi_niwatoriTex_000800[] = {
#include "assets/objects/object_gi_niwatori/object_gi_niwatoriTex_000800.ia8.inc.c"
};

Vtx object_gi_niwatoriVtx_000C00[] = {
#include "assets/objects/object_gi_niwatori/object_gi_niwatoriVtx_000C00.vtx.inc"
};

Gfx gGiChickenColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 220, 255),
    gsDPSetEnvColor(50, 50, 20, 255),
    gsSPEndDisplayList(),
};

Gfx gGiCojiroColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 80, 140, 255, 255),
    gsDPSetEnvColor(20, 30, 60, 255),
    gsSPEndDisplayList(),
};

Gfx gGiChickenDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, 1),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gi_niwatoriTex_000000, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(object_gi_niwatoriVtx_000C00, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 8, 0),
    gsSP2Triangles(5, 4, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 3, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(8, 9, 17, 0, 15, 3, 12, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 5, 8, 0),
    gsSP2Triangles(5, 15, 14, 0, 3, 15, 5, 0),
    gsSP2Triangles(9, 18, 17, 0, 19, 2, 17, 0),
    gsSP2Triangles(10, 9, 8, 0, 5, 14, 6, 0),
    gsSP2Triangles(9, 11, 18, 0, 13, 3, 1, 0),
    gsSP2Triangles(16, 15, 12, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 21, 20, 0),
    gsSP2Triangles(25, 27, 26, 0, 24, 27, 25, 0),
    gsSP2Triangles(25, 20, 23, 0, 26, 20, 25, 0),
    gsSP2Triangles(20, 22, 23, 0, 28, 29, 30, 0),
    gsSPVertex(&object_gi_niwatoriVtx_000C00[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(4, 2, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 8, 5, 0, 5, 8, 9, 0),
    gsSP2Triangles(9, 10, 5, 0, 10, 11, 5, 0),
    gsSP2Triangles(5, 11, 12, 0, 5, 12, 13, 0),
    gsSP2Triangles(14, 5, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 16, 15, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 21, 0, 22, 21, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 14, 18, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 31, 26, 22, 0),
    gsSP1Triangle(27, 18, 29, 0),
    gsSPVertex(&object_gi_niwatoriVtx_000C00[63], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 4, 0, 4, 6, 7, 0),
    gsSP2Triangles(2, 1, 8, 0, 2, 9, 0, 0),
    gsSP2Triangles(3, 8, 10, 0, 11, 5, 4, 0),
    gsSP2Triangles(1, 12, 8, 0, 13, 7, 14, 0),
    gsSP2Triangles(15, 6, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 19, 18, 23, 0),
    gsSP2Triangles(23, 24, 20, 0, 20, 24, 21, 0),
    gsSP2Triangles(22, 19, 20, 0, 20, 19, 23, 0),
    gsSP2Triangles(22, 17, 19, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 27, 29, 0, 27, 30, 25, 0),
    gsSP1Triangle(27, 28, 30, 0),
    gsSPVertex(&object_gi_niwatoriVtx_000C00[94], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 3, 2, 0, 2, 5, 4, 0),
    gsSP2Triangles(2, 6, 5, 0, 7, 6, 2, 0),
    gsSP2Triangles(8, 7, 2, 0, 8, 2, 9, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 170, 40, 255),
    gsDPSetEnvColor(70, 50, 20, 255),
    gsSPTexture(0x0FA0, 0x0BB8, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown11Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_gi_niwatoriVtx_000C00[104], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_niwatoriVtx_000C00[107], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(0, 2, 5, 0, 0, 5, 6, 0),
    gsSP2Triangles(0, 6, 1, 0, 7, 4, 8, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 8, 4, 0),
    gsSP2Triangles(5, 7, 10, 0, 12, 5, 10, 0),
    gsSP2Triangles(9, 12, 10, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0),
    gsSP1Triangle(13, 15, 20, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 200, 50, 40, 255),
    gsDPSetEnvColor(100, 20, 10, 255),
    gsSPTexture(0x07D0, 0x07D0, 0, G_TX_RENDERTILE, G_ON),
    gsSPVertex(&object_gi_niwatoriVtx_000C00[128], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 3, 2, 0, 2, 5, 4, 0),
    gsSP2Triangles(6, 5, 2, 0, 7, 6, 2, 0),
    gsSP2Triangles(2, 8, 7, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 12, 13, 14, 0),
    gsSP2Triangles(14, 13, 15, 0, 15, 16, 14, 0),
    gsSP2Triangles(14, 16, 17, 0, 17, 18, 14, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 21, 20, 0),
    gsSP2Triangles(23, 20, 19, 0, 23, 22, 20, 0),
    gsSP2Triangles(24, 19, 21, 0, 21, 22, 24, 0),
    gsSPEndDisplayList(),
};

Gfx gGiChickenEyesDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_DECAL2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, TEXEL0, COMBINED, 0, SHADE, 0, 0, 0, 0,
                       COMBINED),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(10, 20, 40, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gi_niwatoriTex_000800, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(&object_gi_niwatoriVtx_000C00[153], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 2, 5, 0, 2, 4, 0, 0),
    gsSPEndDisplayList(),
};

