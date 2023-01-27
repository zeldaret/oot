#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_dekupouch.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

u64 object_gi_dekupouchTex_000000[] = {
#include "assets/objects/object_gi_dekupouch/object_gi_dekupouchTex_000000.i4.inc.c"
};

u64 object_gi_dekupouchTex_000100[] = {
#include "assets/objects/object_gi_dekupouch/object_gi_dekupouchTex_000100.i4.inc.c"
};

Vtx object_gi_dekupouchVtx_000300[] = {
#include "assets/objects/object_gi_dekupouch/object_gi_dekupouchVtx_000300.vtx.inc"
};

Gfx gGiBulletBagColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 160, 0, 255),
    gsDPSetEnvColor(20, 20, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiBulletBag50ColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 100, 0, 255),
    gsDPSetEnvColor(20, 0, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiBulletBagStringColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 60, 40, 0, 255),
    gsDPSetEnvColor(100, 60, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiBulletBag50StringColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 200, 120, 40, 255),
    gsDPSetEnvColor(100, 60, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiBulletBagDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, 1),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x05DC, 0x05DC, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 1, 1),
    gsSPClearGeometryMode(G_FOG),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_gi_dekupouchVtx_000300, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_dekupouchVtx_000300[3], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 6, 8, 0),
    gsSP2Triangles(9, 8, 10, 0, 10, 11, 12, 0),
    gsSP2Triangles(1, 13, 14, 0, 2, 14, 15, 0),
    gsSP2Triangles(4, 15, 16, 0, 6, 16, 17, 0),
    gsSP2Triangles(11, 18, 19, 0, 13, 20, 21, 0),
    gsSP2Triangles(14, 21, 22, 0, 15, 22, 23, 0),
    gsSP2Triangles(16, 23, 24, 0, 17, 24, 18, 0),
    gsSP2Triangles(21, 14, 13, 0, 19, 12, 11, 0),
    gsSP2Triangles(18, 11, 17, 0, 24, 17, 16, 0),
    gsSP2Triangles(22, 15, 14, 0, 23, 16, 15, 0),
    gsSP2Triangles(1, 0, 25, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 3, 0, 6, 7, 5, 0),
    gsSP2Triangles(8, 9, 7, 0, 26, 25, 27, 0),
    gsSP2Triangles(13, 1, 26, 0, 14, 2, 1, 0),
    gsSP2Triangles(15, 4, 2, 0, 16, 6, 4, 0),
    gsSP2Triangles(28, 29, 30, 0, 18, 29, 31, 0),
    gsSP2Triangles(18, 31, 19, 0, 28, 21, 20, 0),
    gsSP2Triangles(21, 28, 30, 0, 22, 21, 30, 0),
    gsSP2Triangles(22, 30, 23, 0, 23, 30, 29, 0),
    gsSP2Triangles(29, 24, 23, 0, 24, 29, 18, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_gi_dekupouchTex_000000, G_IM_FMT_I, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 4, 1, 1),
    gsSPVertex(&object_gi_dekupouchVtx_000300[35], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_dekupouchVtx_000300[38], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 190, 200, 170, 255),
    gsDPSetEnvColor(160, 170, 140, 255),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_gi_dekupouchVtx_000300[42], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 4, 2, 5, 0),
    gsSP2Triangles(9, 5, 0, 0, 8, 10, 3, 0),
    gsSP2Triangles(10, 0, 4, 0, 11, 3, 9, 0),
    gsSP2Triangles(12, 5, 2, 0, 5, 9, 3, 0),
    gsSP2Triangles(7, 9, 10, 0, 5, 12, 1, 0),
    gsSP2Triangles(10, 8, 7, 0, 0, 10, 9, 0),
    gsSP2Triangles(1, 0, 5, 0, 3, 11, 8, 0),
    gsSP2Triangles(4, 3, 10, 0, 2, 4, 0, 0),
    gsSP2Triangles(9, 7, 11, 0, 13, 11, 7, 0),
    gsSP2Triangles(13, 14, 8, 0, 8, 14, 6, 0),
    gsSP2Triangles(7, 6, 13, 0, 8, 11, 13, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 17, 16, 0),
    gsSP2Triangles(25, 18, 26, 0, 20, 27, 21, 0),
    gsSP2Triangles(19, 25, 27, 0, 26, 20, 28, 0),
    gsSP2Triangles(17, 24, 29, 0, 20, 26, 18, 0),
    gsSP2Triangles(27, 26, 22, 0, 24, 30, 29, 0),
    gsSP2Triangles(22, 21, 27, 0, 26, 27, 25, 0),
    gsSP2Triangles(15, 29, 30, 0, 21, 28, 20, 0),
    gsSP2Triangles(27, 20, 19, 0, 16, 15, 30, 0),
    gsSP2Triangles(28, 22, 26, 0, 22, 28, 31, 0),
    gsSPVertex(&object_gi_dekupouchVtx_000300[74], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 8, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, 0, 0, 0, 1, PRIMITIVE, ENVIRONMENT, COMBINED,
                       ENVIRONMENT, 0, 0, 0, 1),
    gsDPSetPrimColor(0, 0x80, 255, 255, 170, 255),
    gsDPSetEnvColor(150, 120, 0, 255),
    gsSPTexture(0x0BB8, 0x0BB8, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 1, 1),
    gsSPSetGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_gi_dekupouchVtx_000300[83], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_dekupouchVtx_000300[86], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(1, 0, 5, 0, 5, 3, 4, 0),
    gsSP2Triangles(2, 3, 0, 0, 6, 5, 0, 0),
    gsSP2Triangles(3, 5, 6, 0, 0, 3, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(9, 13, 14, 0, 15, 12, 11, 0),
    gsSP2Triangles(9, 14, 7, 0, 12, 16, 10, 0),
    gsSP2Triangles(12, 15, 17, 0, 17, 15, 16, 0),
    gsSP1Triangle(17, 16, 12, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, 1),
    gsDPSetPrimColor(0, 0, 80, 50, 0, 255),
    gsDPSetEnvColor(0, 0, 0, 255),
    gsSPTexture(0x05DC, 0x05DC, 0, G_TX_RENDERTILE, G_ON),
    gsSPVertex(&object_gi_dekupouchVtx_000300[104], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 0, 5, 4, 0),
    gsSP2Triangles(5, 0, 6, 0, 6, 0, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gGiBulletBagStringDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_DECAL2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, TEXEL0, COMBINED, 0, SHADE, 0, 0, 0, 0,
                       COMBINED),
    gsDPSetPrimColor(0, 0, 190, 200, 170, 255),
    gsDPSetEnvColor(160, 170, 140, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_gi_dekupouchTex_000000, G_IM_FMT_I, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(&object_gi_dekupouchVtx_000300[111], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 6, 7, 0),
    gsSP1Triangle(8, 9, 10, 0),
    gsSPEndDisplayList(),
};

Gfx gGiBulletBagWritingDL[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_gi_dekupouchTex_000100, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gi_dekupouchVtx_000300[122], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP1Triangle(3, 4, 1, 0),
    gsSPEndDisplayList(),
};

