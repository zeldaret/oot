#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_shield_3.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

u64 object_gi_shield_3Tex_000000[] = {
#include "assets/objects/object_gi_shield_3/object_gi_shield_3Tex_000000.i4.inc.c"
};

u64 object_gi_shield_3Tex_000400[] = {
#include "assets/objects/object_gi_shield_3/object_gi_shield_3Tex_000400.i4.inc.c"
};

Vtx object_gi_shield_3Vtx_000C00[] = {
#include "assets/objects/object_gi_shield_3/object_gi_shield_3Vtx_000C00.vtx.inc"
};

Gfx gGiMirrorShieldDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 1, 1, PRIM_LOD_FRAC, 1, COMBINED, 0, SHADE, 0, 1, 1,
                       PRIM_LOD_FRAC, 1),
    gsDPSetPrimColor(0, 0, 255, 20, 70, 255),
    gsDPSetEnvColor(50, 0, 30, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x05DC, 0x05DC, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown12Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 1, G_TX_NOLOD),
    gsSPClearGeometryMode(G_FOG),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_gi_shield_3Vtx_000C00, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_shield_3Vtx_000C00[3], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 7, 9, 0, 1, 8, 10, 0),
    gsSP2Triangles(11, 2, 1, 0, 2, 4, 3, 0),
    gsSP2Triangles(12, 3, 5, 0, 7, 12, 5, 0),
    gsSP2Triangles(6, 9, 7, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 16, 13, 0, 15, 17, 16, 0),
    gsSP2Triangles(15, 18, 17, 0, 18, 15, 19, 0),
    gsSP1Triangle(19, 15, 14, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 100, 100, 100, 255),
    gsDPSetEnvColor(30, 30, 30, 255),
    gsSPTexture(0x03E8, 0x03E8, 0, G_TX_RENDERTILE, G_ON),
    gsSPVertex(&object_gi_shield_3Vtx_000C00[23], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(4, 5, 6, 0, 2, 7, 0, 0),
    gsSP2Triangles(4, 2, 1, 0, 5, 4, 3, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 9, 0),
    gsSP2Triangles(11, 13, 12, 0, 10, 14, 8, 0),
    gsSP2Triangles(9, 8, 11, 0, 13, 11, 15, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, 1, 1, PRIM_LOD_FRAC, 1, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, 1, 1, PRIM_LOD_FRAC, 1),
    gsDPSetPrimColor(0, 0x80, 170, 255, 255, 255),
    gsDPSetEnvColor(0, 80, 120, 255),
    gsSPTexture(0x0BB8, 0x0BB8, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gEffFleckTex, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                            6, 6, 13, 13),
    gsDPLoadMultiBlock(gEffUnknown12Tex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_gi_shield_3Vtx_000C00[39], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_shield_3Vtx_000C00[42], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 0, 3, 0, 5, 0, 4, 0),
    gsSP1Triangle(6, 1, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gGiMirrorShieldSymbolDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_DECAL2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, 0,
                       0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 140),
    gsDPSetEnvColor(0, 0, 50, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_gi_shield_3Tex_000000, G_IM_FMT_I, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_MIRROR
                            | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(&object_gi_shield_3Vtx_000C00[49], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 0, 3, 0, 5, 0, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_gi_shield_3Tex_000400, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gi_shield_3Vtx_000C00[55], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSPEndDisplayList(),
};

