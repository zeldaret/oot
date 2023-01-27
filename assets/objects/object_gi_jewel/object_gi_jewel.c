#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_jewel.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

u64 gGiKokiriEmeraldScintillationTex[] = {
#include "assets/objects/object_gi_jewel/kokiri_emerald_scintillation.i4.inc.c"
};

Vtx object_gi_jewelVtx_000800[] = {
#include "assets/objects/object_gi_jewel/object_gi_jewelVtx_000800.vtx.inc"
};

Gfx gGiKokiriEmeraldSettingDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x07D0, 0x07D0, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 15, 15),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, 0, 0, 0, 1, PRIMITIVE, ENVIRONMENT, COMBINED,
                       ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_gi_jewelVtx_000800, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_jewelVtx_000800[3], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 4, 6, 5, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(7, 15, 8, 0, 10, 16, 11, 0),
    gsSP2Triangles(17, 18, 19, 0, 15, 20, 8, 0),
    gsSP2Triangles(13, 21, 14, 0, 1, 0, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 14, 21, 0),
    gsSP2Triangles(27, 28, 24, 0, 29, 16, 30, 0),
    gsSPVertex(&object_gi_jewelVtx_000800[34], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 0, 5, 0),
    gsSP2Triangles(0, 12, 15, 0, 12, 14, 15, 0),
    gsSP2Triangles(14, 16, 15, 0, 2, 17, 0, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 6, 20, 0),
    gsSP2Triangles(22, 23, 24, 0, 10, 9, 25, 0),
    gsSP2Triangles(26, 19, 18, 0, 27, 28, 29, 0),
    gsSP2Triangles(6, 30, 7, 0, 24, 29, 31, 0),
    gsSP1Triangle(6, 8, 20, 0),
    gsSPVertex(&object_gi_jewelVtx_000800[66], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 8, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(13, 17, 18, 0, 19, 20, 21, 0),
    gsSP1Triangle(4, 3, 22, 0),
    gsSPEndDisplayList(),
};

Gfx gGiKokiriEmeraldGemDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x1F40, 0x1F40, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gGiKokiriEmeraldScintillationTex, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gEffUnknown10Tex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 15),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x09000000),
    gsSPVertex(&object_gi_jewelVtx_000800[89], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_jewelVtx_000800[92], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 10, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 2, 6, 0, 9, 8, 3, 0),
    gsSP2Triangles(14, 13, 17, 0, 8, 4, 3, 0),
    gsSP2Triangles(18, 3, 1, 0, 11, 4, 8, 0),
    gsSP2Triangles(6, 5, 16, 0, 6, 4, 7, 0),
    gsSP2Triangles(10, 11, 8, 0, 15, 7, 13, 0),
    gsSP2Triangles(2, 4, 6, 0, 1, 4, 2, 0),
    gsSP2Triangles(2, 16, 0, 0, 1, 0, 18, 0),
    gsSP2Triangles(3, 18, 9, 0, 7, 4, 13, 0),
    gsSP2Triangles(7, 15, 5, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 23, 20, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSP1Triangle(13, 4, 17, 0),
    gsSPVertex(&object_gi_jewelVtx_000800[124], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 2, 1, 0),
    gsSP2Triangles(6, 10, 7, 0, 11, 6, 12, 0),
    gsSP2Triangles(7, 10, 13, 0, 5, 14, 3, 0),
    gsSP2Triangles(15, 10, 3, 0, 7, 13, 16, 0),
    gsSP2Triangles(2, 15, 0, 0, 3, 10, 4, 0),
    gsSP2Triangles(4, 10, 11, 0, 17, 5, 4, 0),
    gsSP2Triangles(12, 17, 11, 0, 8, 12, 6, 0),
    gsSP2Triangles(2, 10, 15, 0, 14, 0, 15, 0),
    gsSPEndDisplayList(),
};

u8 object_gi_jewel_possiblePadding_0013D8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gGiGoronRubyScintillationTex[] = {
#include "assets/objects/object_gi_jewel/goron_ruby_scintillation.i8.inc.c"
};

Vtx object_gi_jewelVtx_001BE0[] = {
#include "assets/objects/object_gi_jewel/object_gi_jewelVtx_001BE0.vtx.inc"
};

Gfx gGiGoronRubySettingDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x07D0, 0x0BB8, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 15, 15),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, 0, 0, 0, 1, PRIMITIVE, ENVIRONMENT, COMBINED,
                       ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_gi_jewelVtx_001BE0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_jewelVtx_001BE0[3], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 8, 9, 0),
    gsSP2Triangles(6, 10, 11, 0, 12, 8, 13, 0),
    gsSP2Triangles(10, 6, 13, 0, 9, 14, 7, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 16, 15, 0),
    gsSP2Triangles(0, 3, 10, 0, 0, 10, 1, 0),
    gsSP2Triangles(19, 20, 18, 0, 5, 21, 12, 0),
    gsSP2Triangles(21, 14, 12, 0, 1, 10, 13, 0),
    gsSP2Triangles(3, 4, 5, 0, 22, 4, 2, 0),
    gsSP2Triangles(23, 2, 1, 0, 13, 6, 12, 0),
    gsSP1Triangle(12, 6, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gGiGoronRubyGemDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x1770, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gGiGoronRubyScintillationTex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gEffUnknown10Tex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 14),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x09000000),
    gsSPVertex(&object_gi_jewelVtx_001BE0[27], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_jewelVtx_001BE0[30], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 9, 0),
    gsSP2Triangles(4, 10, 11, 0, 3, 12, 2, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 20, 9, 0, 21, 17, 22, 0),
    gsSP2Triangles(23, 24, 10, 0, 21, 22, 25, 0),
    gsSP2Triangles(7, 26, 13, 0, 26, 16, 13, 0),
    gsSP2Triangles(3, 2, 1, 0, 4, 27, 3, 0),
    gsSP2Triangles(7, 15, 5, 0, 19, 9, 8, 0),
    gsSP2Triangles(11, 27, 4, 0, 12, 3, 27, 0),
    gsSP2Triangles(27, 11, 24, 0, 14, 13, 16, 0),
    gsSP2Triangles(8, 5, 15, 0, 11, 10, 24, 0),
    gsSP2Triangles(2, 25, 22, 0, 13, 15, 7, 0),
    gsSPVertex(&object_gi_jewelVtx_001BE0[58], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u8 object_gi_jewel_possiblePadding_0021E8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gGiZoraSapphireScintillationTex[] = {
#include "assets/objects/object_gi_jewel/zora_sapphire_scintillation.i4.inc.c"
};

Vtx object_gi_jewelVtx_0029F0[] = {
#include "assets/objects/object_gi_jewel/object_gi_jewelVtx_0029F0.vtx.inc"
};

Gfx gGiZoraSapphireSettingDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x05DC, 0x05DC, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 15, 15),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, 0, 0, 0, 1, PRIMITIVE, ENVIRONMENT, COMBINED,
                       ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_gi_jewelVtx_0029F0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_jewelVtx_0029F0[3], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 0, 3, 0, 6, 7, 8, 0),
    gsSP2Triangles(7, 9, 2, 0, 10, 8, 11, 0),
    gsSP2Triangles(12, 7, 10, 0, 5, 3, 13, 0),
    gsSP2Triangles(1, 12, 10, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 15, 18, 0, 19, 17, 18, 0),
    gsSP2Triangles(14, 17, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(21, 23, 22, 0, 20, 18, 24, 0),
    gsSP2Triangles(25, 21, 26, 0, 25, 19, 27, 0),
    gsSP2Triangles(15, 25, 20, 0, 28, 29, 30, 0),
    gsSPVertex(&object_gi_jewelVtx_0029F0[34], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 0, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 6, 9, 0, 11, 9, 1, 0),
    gsSP2Triangles(5, 8, 7, 0, 5, 6, 8, 0),
    gsSP2Triangles(1, 12, 7, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(20, 15, 22, 0, 23, 24, 17, 0),
    gsSP2Triangles(17, 25, 26, 0, 15, 17, 27, 0),
    gsSP2Triangles(15, 20, 19, 0, 28, 22, 15, 0),
    gsSP2Triangles(29, 30, 11, 0, 18, 31, 16, 0),
    gsSPVertex(&object_gi_jewelVtx_0029F0[66], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 1, 3, 0, 3, 5, 4, 0),
    gsSP2Triangles(3, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 12, 15, 0),
    gsSP2Triangles(13, 12, 14, 0, 16, 12, 11, 0),
    gsSP2Triangles(17, 18, 11, 0, 19, 20, 18, 0),
    gsSP2Triangles(11, 21, 22, 0, 23, 24, 11, 0),
    gsSP2Triangles(25, 11, 20, 0, 11, 18, 20, 0),
    gsSP2Triangles(26, 19, 27, 0, 28, 12, 16, 0),
    gsSP2Triangles(28, 15, 12, 0, 2, 1, 20, 0),
    gsSP2Triangles(29, 20, 1, 0, 29, 1, 4, 0),
    gsSP2Triangles(4, 5, 29, 0, 7, 30, 25, 0),
    gsSPVertex(&object_gi_jewelVtx_0029F0[97], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP1Triangle(5, 3, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gGiZoraSapphireGemDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x1770, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gGiZoraSapphireScintillationTex, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, 1, 1),
    gsDPLoadMultiBlock_4b(gGiZoraSapphireScintillationTex, 0x0100, 1, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 6, 15, 15),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x09000000),
    gsSPVertex(&object_gi_jewelVtx_0029F0[104], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_jewelVtx_0029F0[107], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 8, 11, 0),
    gsSP2Triangles(12, 10, 11, 0, 13, 12, 7, 0),
    gsSP2Triangles(9, 13, 7, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 15, 18, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 16, 20, 14, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 22, 21, 0),
    gsSP2Triangles(25, 24, 26, 0, 27, 25, 26, 0),
    gsSP2Triangles(23, 27, 21, 0, 28, 29, 30, 0),
    gsSP1Triangle(30, 29, 31, 0),
    gsSPVertex(&object_gi_jewelVtx_0029F0[139], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(3, 4, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 7, 6, 0, 10, 9, 11, 0),
    gsSP2Triangles(12, 10, 11, 0, 8, 12, 11, 0),
    gsSPEndDisplayList(),
};

