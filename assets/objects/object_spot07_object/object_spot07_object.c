#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_spot07_object.h"

Vtx object_spot07_objectVtx_000000[] = {
#include "assets/objects/object_spot07_object/object_spot07_objectVtx_000000.vtx.inc"
};

Gfx object_spot07_object_DL_000460[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_spot07_object_Tex_003930, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 14, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE,
                       0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_spot07_objectVtx_000000, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsSPVertex(&object_spot07_objectVtx_000000[3], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 4, 1, 0, 3, 5, 4, 0),
    gsSP2Triangles(3, 6, 7, 0, 3, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 10, 13, 0, 12, 13, 14, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE,
                       0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_spot07_objectVtx_000000[18], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_spot07_object_Tex_004130, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, 1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 6, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_WRAP, 6, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x00FC, 0x00FC),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG),
    gsSPDisplayList(0x09000000),
    gsSPVertex(&object_spot07_objectVtx_000000[24], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 2, 3, 5, 0),
    gsSP2Triangles(6, 4, 0, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 12, 11, 8, 0),
    gsSP1Triangle(12, 8, 7, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_spot07_objectVtx_000000[37], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_spot07_object_Tex_004930, G_IM_FMT_I, 32, 128, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 7, G_TX_NOLOD, 1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 7, 2, G_TX_NOMIRROR | G_TX_CLAMP,
                5, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x01FC),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0,
                       COMBINED, 0, SHADE, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(&object_spot07_objectVtx_000000[49], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 5, 4, 6, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 15, 0, 16, 14, 17, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 20, 0),
    gsSP1Triangle(17, 20, 18, 0),
    gsSPEndDisplayList(),
};

Vtx object_spot07_objectVtx_000700[] = {
#include "assets/objects/object_spot07_object/object_spot07_objectVtx_000700.vtx.inc"
};

Gfx object_spot07_object_DL_000BE0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_spot07_object_Tex_003930, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 14, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_spot07_objectVtx_000700, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE,
                       0),
    gsSPVertex(&object_spot07_objectVtx_000700[6], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsSPVertex(&object_spot07_objectVtx_000700[9], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 2, 0),
    gsSP2Triangles(5, 7, 8, 0, 5, 8, 6, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE,
                       0),
    gsSPVertex(&object_spot07_objectVtx_000700[18], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(2, 5, 6, 0, 2, 6, 3, 0),
    gsSP2Triangles(5, 7, 6, 0, 5, 8, 7, 0),
    gsSP2Triangles(5, 9, 8, 0, 5, 10, 9, 0),
    gsSP2Triangles(0, 11, 1, 0, 0, 12, 11, 0),
    gsSP1Triangle(12, 13, 11, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsSPVertex(&object_spot07_objectVtx_000700[32], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 2, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 9, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 16, 17, 0),
    gsSP2Triangles(13, 17, 14, 0, 16, 18, 17, 0),
    gsSP2Triangles(16, 19, 20, 0, 16, 20, 18, 0),
    gsSP2Triangles(11, 21, 22, 0, 11, 22, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_spot07_object_Tex_005130, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 1, G_TX_NOMIRROR | G_TX_WRAP, 5,
                2),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0,
                       COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 204),
    gsSPDisplayList(0x09000000),
    gsSPVertex(&object_spot07_objectVtx_000700[55], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_spot07_object_Tex_004930, G_IM_FMT_I, 32, 128, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 7, G_TX_NOLOD, 1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 2, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 7, 2, G_TX_NOMIRROR | G_TX_CLAMP,
                5, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x01FC),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(&object_spot07_objectVtx_000700[69], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 5, 0, 4, 5, 6, 0),
    gsSP2Triangles(5, 7, 8, 0, 5, 8, 6, 0),
    gsSPEndDisplayList(),
};

u8 object_spot07_object_possiblePadding_000EB8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_spot07_object_TLUT_000EC0[] = {
#include "assets/objects/object_spot07_object/tlut_00000EC0.rgba16.inc.c"
};

u64 object_spot07_object_Tex_000EE0[] = {
#include "assets/objects/object_spot07_object/tex_00000EE0.ci4.inc.c"
};

Vtx object_spot07_objectVtx_0016E0[] = {
#include "assets/objects/object_spot07_object/object_spot07_objectVtx_0016E0.vtx.inc"
};

Gfx object_spot07_object_DL_001CF0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_spot07_object_Tex_000EE0, G_IM_FMT_CI, 32, 128, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_spot07_object_TLUT_000EC0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot07_objectVtx_0016E0, 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 2, 3, 5, 0),
    gsSP2Triangles(2, 5, 6, 0, 6, 5, 7, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 7, 9, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 4, 12, 0),
    gsSP2Triangles(11, 12, 13, 0, 12, 0, 14, 0),
    gsSP2Triangles(12, 14, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(17, 18, 15, 0, 15, 18, 19, 0),
    gsSP2Triangles(15, 19, 20, 0, 15, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 24, 25, 22, 0),
    gsSP2Triangles(26, 25, 24, 0, 27, 26, 24, 0),
    gsSP1Triangle(24, 28, 27, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_spot07_object_Tex_005D30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot07_objectVtx_0016E0[29], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0),
    gsSP2Triangles(4, 6, 7, 0, 5, 4, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_spot07_object_Tex_005530, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot07_objectVtx_0016E0[39], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 6, 4, 1, 0),
    gsSP2Triangles(0, 6, 1, 0, 7, 0, 3, 0),
    gsSP2Triangles(3, 8, 9, 0, 7, 3, 9, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(object_spot07_object_Tex_000EE0, G_IM_FMT_CI, 32, 128, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_spot07_object_TLUT_000EC0),
    gsSPVertex(&object_spot07_objectVtx_0016E0[49], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_spot07_object_DL_001F68[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_spot07_object_Tex_005530, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, PRIMITIVE, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 178),
    gsSPVertex(&object_spot07_objectVtx_0016E0[53], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 5, 0, 4, 5, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(7, 10, 11, 0, 5, 7, 11, 0),
    gsSP2Triangles(5, 11, 12, 0, 5, 12, 6, 0),
    gsSP1Triangle(8, 13, 9, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_spot07_objectVtx_0016E0[67], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_spot07_object_Tex_006530, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_spot07_objectVtx_0016E0[73], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_DECAL2),
    gsSPVertex(&object_spot07_objectVtx_0016E0[93], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSPEndDisplayList(),
};

CamData object_spot07_object_Col_002590CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_spot07_object_Col_002590SurfaceType[] = {
    { 0x0000A000, 0x000007CC },
};

CollisionPoly object_spot07_object_Col_002590Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0xD216, 0x04E0, 0x7761, 0x1B60},
    {0x0000, 0x0001, 0x0003, 0x0002, 0x0000, 0x1521, 0x7E3D, 0x1DE5},
    {0x0000, 0x0001, 0x0004, 0x0003, 0x2DEA, 0x04E0, 0x7761, 0x20E1},
    {0x0000, 0x0002, 0x0003, 0x0005, 0x0000, 0x1861, 0x7DA7, 0x1D0F},
    {0x0000, 0x0002, 0x0005, 0x0006, 0x0000, 0x1861, 0x7DA7, 0x1D0F},
    {0x0000, 0x0006, 0x0005, 0x0007, 0x0000, 0x332E, 0x7552, 0x143A},
    {0x0000, 0x0006, 0x0007, 0x0008, 0x0000, 0x332E, 0x7552, 0x143A},
    {0x0000, 0x0008, 0x0007, 0x0009, 0x0000, 0x5932, 0x5BCD, 0x02FE},
    {0x0000, 0x0008, 0x0009, 0x000A, 0x0000, 0x5932, 0x5BCD, 0x02FE},
    {0x0000, 0x0009, 0x000B, 0x000C, 0x0000, 0x7FD2, 0x06B6, 0xDF7F},
    {0x0000, 0x0009, 0x000C, 0x000A, 0x0000, 0x7FD2, 0x06B6, 0xDF7F},
    {0x0000, 0x000D, 0x0004, 0x0001, 0x2DF1, 0x0222, 0x7773, 0x213C},
    {0x0000, 0x000D, 0x0001, 0x000E, 0x4730, 0x0D58, 0x6989, 0x1DC9},
    {0x0000, 0x0001, 0x0000, 0x000F, 0xD20F, 0x021A, 0x7773, 0x1BBC},
    {0x0000, 0x0001, 0x000F, 0x000E, 0xB8D0, 0x0D4C, 0x698A, 0x1544},
    {0x0000, 0x0010, 0x000F, 0x0000, 0x85B6, 0x0598, 0x2562, 0xFE2F},
    {0x0000, 0x0000, 0x0002, 0x0010, 0x8535, 0x0623, 0x2398, 0xFD96},
    {0x0000, 0x0010, 0x0002, 0x0006, 0x818A, 0x08C9, 0x11B2, 0xF7DA},
    {0x0000, 0x0010, 0x0006, 0x0008, 0x808C, 0x09BC, 0x06A0, 0xF474},
    {0x0000, 0x0010, 0x0008, 0x000A, 0x80D6, 0x0A5C, 0xF5C7, 0xEF7D},
    {0x0000, 0x0004, 0x000D, 0x0011, 0x7A28, 0x05AB, 0x25CD, 0x0CEF},
    {0x0000, 0x0011, 0x0003, 0x0004, 0x7A9D, 0x0625, 0x2437, 0x0C76},
    {0x0000, 0x0005, 0x0003, 0x0011, 0x7E6C, 0x08D5, 0x11F4, 0x070F},
    {0x0000, 0x0007, 0x0005, 0x0011, 0x7F72, 0x09C9, 0x06BE, 0x03BE},
    {0x0000, 0x0011, 0x0009, 0x0007, 0x7F75, 0x0A41, 0xFA45, 0x000D},
    {0x0000, 0x0012, 0x000F, 0x0010, 0xE075, 0x7BAC, 0x09A5, 0xFC51},
    {0x0000, 0x0012, 0x0010, 0x0013, 0xE231, 0x7C12, 0x0A0E, 0xFC9B},
    {0x0000, 0x0012, 0x0014, 0x000F, 0xF741, 0x7CFA, 0x1A39, 0x02F1},
    {0x0000, 0x0014, 0x0015, 0x000D, 0x0C9F, 0x7CD9, 0x193A, 0x03D1},
    {0x0000, 0x0015, 0x0016, 0x0011, 0x226C, 0x7ABF, 0x0B78, 0x00B3},
    {0x0000, 0x0015, 0x0011, 0x000D, 0x241F, 0x7A49, 0x0B2D, 0x00A7},
    {0x0000, 0x0014, 0x000E, 0x000F, 0xE0F2, 0x7352, 0x2E0A, 0x0665},
    {0x0000, 0x0014, 0x000D, 0x000E, 0x1393, 0x7B1E, 0x1D04, 0x050C},
    {0x0000, 0x0017, 0x0012, 0x0013, 0x944E, 0x3ADE, 0x2452, 0xFB59},
    {0x0000, 0x0017, 0x0013, 0x0018, 0x9439, 0x3ABD, 0x244B, 0xFB55},
    {0x0000, 0x0019, 0x0014, 0x0012, 0xDBFC, 0x3A80, 0x6C00, 0x1507},
    {0x0000, 0x0019, 0x0012, 0x0017, 0xDBFC, 0x3A81, 0x6BFF, 0x1507},
    {0x0000, 0x001A, 0x0015, 0x0014, 0x339E, 0x3776, 0x672A, 0x187E},
    {0x0000, 0x001A, 0x0014, 0x0019, 0x339E, 0x3774, 0x672B, 0x187F},
    {0x0000, 0x001B, 0x0016, 0x0015, 0x7189, 0x2D6A, 0x25D3, 0x0953},
    {0x0000, 0x001B, 0x0015, 0x001A, 0x7189, 0x2D68, 0x25D3, 0x0953},
    {0x0000, 0x000C, 0x000B, 0x001C, 0x0000, 0x7FF8, 0xFD54, 0xDC94},
    {0x0000, 0x000C, 0x001C, 0x001D, 0x0000, 0x7FF8, 0xFD54, 0xDC94},
    {0x0000, 0x001D, 0x001C, 0x001E, 0x0000, 0x7FFF, 0x0000, 0xDD92},
    {0x0000, 0x001D, 0x001E, 0x001F, 0x0000, 0x7FFF, 0x0000, 0xDD92},
    {0x0000, 0x0020, 0x0021, 0x0022, 0x0000, 0x7FFF, 0x0000, 0xDD92},
    {0x0000, 0x0020, 0x0022, 0x0023, 0x0000, 0x7FFF, 0x0000, 0xDD92},
    {0x0000, 0x0020, 0x0023, 0x0024, 0x0000, 0x7FFF, 0x0000, 0xDD92},
    {0x0000, 0x001E, 0x0020, 0x0024, 0x0000, 0x7FFF, 0x0000, 0xDD92},
    {0x0000, 0x001E, 0x0024, 0x0025, 0x0000, 0x7FFF, 0x0000, 0xDD92},
    {0x0000, 0x001E, 0x0025, 0x001F, 0x0000, 0x7FFF, 0x0000, 0xDD92},
    {0x0000, 0x0021, 0x0026, 0x0022, 0x0000, 0x7FFF, 0x0000, 0xDD92},
    {0x0000, 0x0027, 0x0028, 0x0029, 0x0000, 0x7FFF, 0x0000, 0xFFD8},
    {0x0000, 0x0027, 0x0029, 0x002A, 0x0000, 0x7FFF, 0x0000, 0xFFD8},
    {0x0000, 0x0027, 0x002A, 0x002B, 0x0000, 0x7FFF, 0x0000, 0xFFD8},
    {0x0000, 0x0027, 0x002B, 0x002C, 0x0000, 0x7FFF, 0x0000, 0xFFD8},
};

Vec3s object_spot07_object_Col_002590Vertices[] = {
    {  -3003,   4031,  -8834 },
    {  -1963,   4031,  -8434 },
    {  -2883,   6827,  -8902 },
    {  -1043,   6827,  -8902 },
    {   -923,   4031,  -8834 },
    {  -1091,   7961,  -9122 },
    {  -2835,   7961,  -9122 },
    {  -1123,   8557,  -9382 },
    {  -2803,   8557,  -9382 },
    {  -1158,   8839,  -9656 },
    {  -2758,   8839,  -9656 },
    {  -1158,   8860, -10056 },
    {  -2758,   8860, -10056 },
    {   -776,    862,  -8834 },
    {  -1962,    862,  -8034 },
    {  -3148,    862,  -8834 },
    {  -3406,    862,  -9678 },
    {   -517,    862,  -9671 },
    {  -3757,    640,  -7979 },
    {  -4331,    640,  -9681 },
    {  -1676,    640,  -7285 },
    {   -289,    640,  -7979 },
    {    276,    640,  -9675 },
    {  -4003,     40,  -7736 },
    {  -4658,     40,  -9681 },
    {  -1679,     40,  -6961 },
    {   -130,     40,  -7736 },
    {    516,     40,  -9675 },
    {  -1218,   8814, -12259 },
    {  -2684,   8814, -12259 },
    {  -1151,   8814, -13859 },
    {  -2751,   8814, -13859 },
    {   -351,   8814, -14659 },
    {   2049,   8814, -14659 },
    {   2049,   8814, -16259 },
    {   -351,   8814, -16259 },
    {  -1551,   8814, -15859 },
    {  -2351,   8814, -15059 },
    {   5799,   8814, -15477 },
    { -12000,     40,  -3407 },
    {  -6219,     40,   2700 },
    {   9440,     40,   1195 },
    {  11513,     40,  -5776 },
    {   5926,     40, -10598 },
    {  -9806,     40, -10598 },
};

CollisionHeader object_spot07_object_Col_002590 = { 
    { -12000, 40, -16259 },
    { 11513, 8860, 2700 },
    45, object_spot07_object_Col_002590Vertices,
    56, object_spot07_object_Col_002590Polygons,
    object_spot07_object_Col_002590SurfaceType,
    object_spot07_object_Col_002590CamDataList,
    0, NULL
};

u8 object_spot07_object_possiblePadding_0025BC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

u64 object_spot07_object_TLUT_0025C0[] = {
#include "assets/objects/object_spot07_object/tlut_000025C0.rgba16.inc.c"
};

u64 object_spot07_object_Tex_0025E0[] = {
#include "assets/objects/object_spot07_object/tex_000025E0.ci4.inc.c"
};

Vtx object_spot07_objectVtx_002DE0[] = {
#include "assets/objects/object_spot07_object/object_spot07_objectVtx_002DE0.vtx.inc"
};

Gfx object_spot07_object_DL_003210[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_spot07_object_Tex_0025E0, G_IM_FMT_CI, 32, 128, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_spot07_object_TLUT_0025C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot07_objectVtx_002DE0, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 3, 0, 4, 5, 3, 0),
    gsSPEndDisplayList(),
};

Gfx object_spot07_object_DL_0032D8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_spot07_object_Tex_003930, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 14, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_spot07_objectVtx_002DE0[6], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 8, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(object_spot07_object_Tex_0025E0, G_IM_FMT_CI, 32, 128, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_spot07_object_TLUT_0025C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, PRIMITIVE, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 178),
    gsSPVertex(&object_spot07_objectVtx_002DE0[15], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 2, 0),
    gsSP2Triangles(5, 7, 8, 0, 5, 8, 6, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_spot07_object_Tex_005530, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot07_objectVtx_002DE0[24], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 2, 0, 1, 5, 6, 0),
    gsSP2Triangles(1, 6, 4, 0, 5, 7, 6, 0),
    gsSP2Triangles(5, 8, 7, 0, 5, 9, 8, 0),
    gsSP2Triangles(5, 10, 9, 0, 0, 11, 3, 0),
    gsSP2Triangles(0, 12, 11, 0, 12, 13, 11, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 17, 18, 0),
    gsSP2Triangles(14, 18, 15, 0, 17, 19, 18, 0),
    gsSP2Triangles(17, 0, 2, 0, 17, 2, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(21, 24, 25, 0, 21, 25, 22, 0),
    gsSP2Triangles(26, 27, 23, 0, 26, 23, 28, 0),
    gsSP2Triangles(29, 30, 14, 0, 29, 14, 16, 0),
    gsSPVertex(&object_spot07_objectVtx_002DE0[55], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_spot07_object_Tex_006530, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_spot07_objectVtx_002DE0[59], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_DECAL2),
    gsSPVertex(&object_spot07_objectVtx_002DE0[63], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSPEndDisplayList(),
};

u8 object_spot07_object_possiblePadding_003588[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData object_spot07_object_Col_0038FCCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_spot07_object_Col_0038FCSurfaceType[] = {
    { 0x0000A000, 0x000007CC },
};

CollisionPoly object_spot07_object_Col_0038FCPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x5933, 0x5BCC, 0xEDA0},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x5933, 0x5BCC, 0xEDA0},
    {0x0000, 0x0002, 0x0004, 0x0005, 0x0000, 0x7FD2, 0x06BA, 0x0340},
    {0x0000, 0x0002, 0x0005, 0x0003, 0x0000, 0x7FD2, 0x06BA, 0x0340},
    {0x0000, 0x0006, 0x0007, 0x0008, 0x0000, 0x0099, 0x7FFF, 0xFFA7},
    {0x0000, 0x0006, 0x0008, 0x0009, 0x0000, 0x0099, 0x7FFF, 0xFFA7},
    {0x0000, 0x0007, 0x000A, 0x000B, 0x0000, 0x0C67, 0x7F65, 0xFFCD},
    {0x0000, 0x0007, 0x000B, 0x0008, 0x0000, 0x0C67, 0x7F65, 0xFFCD},
    {0x0000, 0x000A, 0x000C, 0x000D, 0x0000, 0x3A73, 0x71DF, 0xFFEE},
    {0x0000, 0x000A, 0x000D, 0x000B, 0x0000, 0x3A73, 0x71DF, 0xFFEE},
    {0x0000, 0x000E, 0x000F, 0x0010, 0x0000, 0x7FFF, 0x0000, 0x04F3},
    {0x0000, 0x000E, 0x0011, 0x000F, 0x0000, 0x7FFF, 0x0000, 0x04F3},
    {0x0000, 0x000F, 0x0012, 0x0010, 0x0000, 0x7FFF, 0x0000, 0x04F3},
    {0x0000, 0x000F, 0x0013, 0x0014, 0x0000, 0x7FFF, 0x0000, 0x04F3},
    {0x0000, 0x000F, 0x0014, 0x0012, 0x0000, 0x7FFF, 0x0000, 0x04F3},
    {0x0000, 0x0013, 0x0015, 0x0014, 0x0000, 0x7FFF, 0x0000, 0x04F3},
    {0x0000, 0x0013, 0x0016, 0x0015, 0x0000, 0x7FFF, 0x0000, 0x04F3},
    {0x0000, 0x0013, 0x0017, 0x0016, 0x0000, 0x7FFF, 0x0000, 0x04F3},
    {0x0000, 0x0013, 0x0018, 0x0017, 0x0000, 0x7FFF, 0x0000, 0x04F3},
    {0x0000, 0x000E, 0x0019, 0x0011, 0x0000, 0x7FFF, 0x0000, 0x04F3},
    {0x0000, 0x000E, 0x001A, 0x0019, 0x0000, 0x7FFF, 0x0000, 0x04F3},
    {0x0000, 0x001A, 0x001B, 0x0019, 0x0000, 0x7FFF, 0x0000, 0x04F3},
    {0x0000, 0x001C, 0x001D, 0x001E, 0x0000, 0x7FFF, 0x0000, 0x04F3},
    {0x0000, 0x001C, 0x001F, 0x0020, 0x0000, 0x7FFF, 0x0000, 0x04F3},
    {0x0000, 0x001C, 0x0020, 0x001D, 0x0000, 0x7FFF, 0x0000, 0x04F3},
    {0x0000, 0x001F, 0x0021, 0x0020, 0x0000, 0x7FFF, 0x0000, 0x04F3},
    {0x0000, 0x001F, 0x000E, 0x0010, 0x0000, 0x7FFF, 0x0000, 0x04F3},
    {0x0000, 0x001F, 0x0010, 0x0021, 0x0000, 0x7FFF, 0x0000, 0x04F3},
    {0x0000, 0x0022, 0x0023, 0x0024, 0x0000, 0x7FFF, 0x0000, 0xFFD8},
    {0x0000, 0x0022, 0x0024, 0x0025, 0x0000, 0x7FFF, 0x0000, 0xFFD8},
    {0x0000, 0x0023, 0x0026, 0x0027, 0xFC7E, 0x7FE2, 0xFBE9, 0xFF7E},
    {0x0000, 0x0023, 0x0027, 0x0024, 0x0000, 0x7EE0, 0xEF15, 0xFCCD},
    {0x0000, 0x000C, 0x0022, 0x0025, 0x0000, 0x7FFF, 0x0000, 0xFFD8},
    {0x0000, 0x000C, 0x0025, 0x000D, 0x0000, 0x7FFF, 0x0000, 0xFFD8},
    {0x0000, 0x0028, 0x0029, 0x001C, 0x0000, 0x7FFF, 0x0000, 0x04F3},
    {0x0000, 0x0028, 0x001C, 0x001E, 0x0000, 0x7FFF, 0x0000, 0x04F3},
    {0x0000, 0x0005, 0x0004, 0x0029, 0x0000, 0x7FF8, 0xFD54, 0x055E},
    {0x0000, 0x0005, 0x0029, 0x0028, 0x0000, 0x7FF8, 0xFD54, 0x055E},
};

Vec3s object_spot07_object_Col_0038FCVertices[] = {
    {  -7251,  -1525,   8041 },
    {  -5571,  -1525,   8041 },
    {  -5606,  -1242,   7766 },
    {  -7206,  -1242,   7766 },
    {  -5606,  -1221,   7367 },
    {  -7206,  -1221,   7367 },
    {   3601,  -1267,     95 },
    {   3601,   -412,     91 },
    {      0,   -412,     91 },
    {      0,  -1267,     95 },
    {   3601,    -73,     58 },
    {      0,    -73,     58 },
    {   3601,     40,      0 },
    {      0,     40,      0 },
    {  -2400,  -1267,   2763 },
    {   1350,  -1267,   1946 },
    {  -2400,  -1267,   1163 },
    {   1350,  -1267,   3746 },
    {  -1250,  -1267,   -254 },
    {   2150,  -1267,   1946 },
    {   4550,  -1267,   -254 },
    {   5750,  -1267,   1346 },
    {   5750,  -1267,   4146 },
    {   3550,  -1267,   4146 },
    {   2150,  -1267,   3746 },
    {    -50,  -1267,   4146 },
    {  -2450,  -1267,   5346 },
    {   -250,  -1267,   5346 },
    {  -5600,  -1267,   3563 },
    {  -6800,  -1267,   2363 },
    {  -7200,  -1267,   3563 },
    {  -4800,  -1267,   2763 },
    {  -6000,  -1267,   1563 },
    {  -4800,  -1267,   1163 },
    {   3585,     40,   -837 },
    {   3600,     40,  -5900 },
    {    -34,     40,  -5900 },
    {    -16,     40,   -837 },
    {   1966,   -120,  -9500 },
    {   -834,   -120,  -7100 },
    {  -7133,  -1267,   5163 },
    {  -5667,  -1267,   5163 },
};

CollisionHeader object_spot07_object_Col_0038FC = { 
    { -7251, -1525, -10700 },
    { 5750, 40, 8041 },
    42, object_spot07_object_Col_0038FCVertices,
    38, object_spot07_object_Col_0038FCPolygons,
    object_spot07_object_Col_0038FCSurfaceType,
    object_spot07_object_Col_0038FCCamDataList,
    0, NULL
};

u8 object_spot07_object_possiblePadding_003928[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_spot07_object_Tex_003930[] = {
#include "assets/objects/object_spot07_object/tex_00003930.rgba16.inc.c"
};

u64 object_spot07_object_Tex_004130[] = {
#include "assets/objects/object_spot07_object/tex_00004130.i4.inc.c"
};

u64 object_spot07_object_Tex_004930[] = {
#include "assets/objects/object_spot07_object/tex_00004930.i4.inc.c"
};

u64 object_spot07_object_Tex_005130[] = {
#include "assets/objects/object_spot07_object/tex_00005130.i8.inc.c"
};

u64 object_spot07_object_Tex_005530[] = {
#include "assets/objects/object_spot07_object/tex_00005530.rgba16.inc.c"
};

u64 object_spot07_object_Tex_005D30[] = {
#include "assets/objects/object_spot07_object/tex_00005D30.rgba16.inc.c"
};

u64 object_spot07_object_Tex_006530[] = {
#include "assets/objects/object_spot07_object/tex_00006530.i4.inc.c"
};

