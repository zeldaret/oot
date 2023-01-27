#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_oE5.h"

u8 object_oE5_unaccounted_000000[] = {
    0x00, 0x00, 0x08, 0x34, 0xFE, 0xA2, 0x01, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x02, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0xFF, 
    0x00, 0x00, 0x00, 0x00, 0x02, 0x26, 0x00, 0x00, 0x00, 0x00, 0x04, 0x12, 0x00, 0x00, 0x00, 0x00, 
    0xFE, 0xD4, 0x00, 0x00, 0x00, 0xC8, 0x05, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x06, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x02, 0xF7, 0x00, 0x00, 0x00, 0x00, 0x07, 0x0A, 
    0x00, 0x00, 0x00, 0x00, 0x03, 0x52, 0x00, 0x00, 0x00, 0x00, 0x08, 0x09, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x38, 0xB0, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x39, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 
    0x06, 0x00, 0x3A, 0xB0, 0xFE, 0xD4, 0x00, 0x00, 0xFF, 0x38, 0x0C, 0xFF, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x02, 0xF4, 0x00, 0x00, 
    0x00, 0x00, 0x0E, 0x11, 0x00, 0x00, 0x00, 0x00, 0x03, 0x52, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x10, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x31, 0x50, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x32, 0x10, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x33, 0x50, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 
    0x06, 0x00, 0x2C, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0xFF, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x03, 0xF8, 0x00, 0x00, 
    0x00, 0x00, 0x16, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 
    0x06, 0x00, 0x26, 0x90, 0x03, 0x20, 0x00, 0x00, 0x01, 0xC2, 0x18, 0x1E, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x02, 0x58, 0x00, 0x00, 
    0x00, 0x00, 0x1A, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x02, 0x26, 0x00, 0x00, 0x00, 0x00, 0x1B, 0x1C, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x30, 0x50, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x32, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x32, 0xF0, 0x03, 0x20, 0x00, 0x00, 0xFE, 0x3E, 0x1F, 0x25, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0xFF, 0x00, 0x00, 0x00, 0x00, 
    0x02, 0x58, 0x00, 0x00, 0x00, 0x00, 0x21, 0x24, 0x00, 0x00, 0x00, 0x00, 0x02, 0x26, 0x00, 0x00, 
    0x00, 0x00, 0x22, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 
    0x06, 0x00, 0x2C, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x2E, 0x10, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x2F, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x24, 0xE8, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x0C, 
    0x06, 0x00, 0x00, 0x18, 0x06, 0x00, 0x00, 0x24, 0x06, 0x00, 0x00, 0x30, 0x06, 0x00, 0x00, 0x3C, 
    0x06, 0x00, 0x00, 0x48, 0x06, 0x00, 0x00, 0x54, 0x06, 0x00, 0x00, 0x60, 0x06, 0x00, 0x00, 0x6C, 
    0x06, 0x00, 0x00, 0x78, 0x06, 0x00, 0x00, 0x84, 0x06, 0x00, 0x00, 0x90, 0x06, 0x00, 0x00, 0x9C, 
    0x06, 0x00, 0x00, 0xA8, 0x06, 0x00, 0x00, 0xB4, 0x06, 0x00, 0x00, 0xC0, 0x06, 0x00, 0x00, 0xCC, 
    0x06, 0x00, 0x00, 0xD8, 0x06, 0x00, 0x00, 0xE4, 0x06, 0x00, 0x00, 0xF0, 0x06, 0x00, 0x00, 0xFC, 
    0x06, 0x00, 0x01, 0x08, 0x06, 0x00, 0x01, 0x14, 0x06, 0x00, 0x01, 0x20, 0x06, 0x00, 0x01, 0x2C, 
    0x06, 0x00, 0x01, 0x38, 0x06, 0x00, 0x01, 0x44, 0x06, 0x00, 0x01, 0x50, 0x06, 0x00, 0x01, 0x5C, 
    0x06, 0x00, 0x01, 0x68, 0x06, 0x00, 0x01, 0x74, 0x06, 0x00, 0x01, 0x80, 0x06, 0x00, 0x01, 0x8C, 
    0x06, 0x00, 0x01, 0x98, 0x06, 0x00, 0x01, 0xA4, 0x06, 0x00, 0x01, 0xB0, 0x06, 0x00, 0x01, 0xBC, 
    0x06, 0x00, 0x01, 0xC8, 0x26, 0x00, 0x00, 0x00, 
};

Vtx object_oE5Vtx_000268[] = {
#include "assets/objects/object_oE5/object_oE5Vtx_000268.vtx.inc"
};

Gfx object_oE5_DL_0024E8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_oE5_Tex_0054C0, G_IM_FMT_I, 16, 32, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR |
                            G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, ENVIRONMENT, 0, COMBINED, 0,
                       PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0D000000),
    gsSPVertex(object_oE5Vtx_000268, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 5, 9, 3, 0),
    gsSP2Triangles(8, 10, 6, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 13, 17, 11, 0),
    gsSP2Triangles(16, 18, 14, 0, 16, 19, 18, 0),
    gsSP2Triangles(6, 20, 7, 0, 4, 21, 5, 0),
    gsSP2Triangles(22, 23, 24, 0, 17, 25, 11, 0),
    gsSP2Triangles(0, 26, 27, 0, 28, 29, 30, 0),
    gsSPVertex(&object_oE5Vtx_000268[31], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 9, 13, 0, 14, 0, 15, 0),
    gsSP2Triangles(2, 15, 0, 0, 11, 13, 9, 0),
    gsSP2Triangles(5, 16, 3, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 19, 24, 0),
    gsSP2Triangles(19, 23, 17, 0, 24, 25, 23, 0),
    gsSP1Triangle(13, 26, 12, 0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, COMBINED, 0,
                       PRIMITIVE, 0),
    gsSPVertex(&object_oE5Vtx_000268[58], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 7, 0, 8, 0, 9, 0),
    gsSP2Triangles(10, 4, 3, 0, 11, 6, 3, 0),
    gsSP2Triangles(3, 5, 11, 0, 3, 7, 10, 0),
    gsSP2Triangles(2, 9, 0, 0, 9, 12, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE5_Tex_0053C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oE5Vtx_000268[71], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP1Triangle(0, 2, 4, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE5_DL_002690[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE5_Tex_004480, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE5_TLUT_004240),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, COMBINED, 0,
                       PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0D000000),
    gsSPVertex(&object_oE5Vtx_000268[76], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_oE5_Tex_004BC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE5Vtx_000268[82], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_oE5_Tex_004B80, G_IM_FMT_I, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oE5Vtx_000268[88], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 9, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 14, 16, 0, 6, 17, 18, 0),
    gsSP2Triangles(18, 19, 6, 0, 2, 1, 20, 0),
    gsSP1Triangle(21, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE5_Tex_004A80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oE5Vtx_000268[112], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 13, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 0, 2, 0, 23, 24, 25, 0),
    gsSP2Triangles(24, 23, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_oE5Vtx_000268[142], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(8, 12, 6, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 8, 0, 16, 8, 7, 0),
    gsSP2Triangles(18, 19, 15, 0, 14, 13, 20, 0),
    gsSP2Triangles(21, 3, 5, 0, 22, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 29, 30, 0),
    gsSPVertex(&object_oE5Vtx_000268[173], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 12, 11, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 9, 18, 0),
    gsSP2Triangles(9, 19, 18, 0, 20, 16, 15, 0),
    gsSP2Triangles(9, 17, 7, 0, 21, 20, 15, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 23, 22, 0),
    gsSP2Triangles(26, 23, 25, 0, 25, 22, 27, 0),
    gsSP2Triangles(28, 25, 27, 0, 25, 28, 26, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_oE5Vtx_000268[205], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 7, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 0, 19, 1, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(24, 26, 25, 0, 27, 26, 24, 0),
    gsSP2Triangles(28, 29, 25, 0, 25, 26, 28, 0),
    gsSPVertex(&object_oE5Vtx_000268[235], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE5_Tex_004680, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oE5Vtx_000268[241], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 1, 0, 0, 0, 5, 6, 0),
    gsSP1Triangle(5, 4, 6, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(object_oE5_Tex_004440, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR
                         | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE5_TLUT_004240),
    gsSPVertex(&object_oE5Vtx_000268[248], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 3, 16, 0),
    gsSP2Triangles(11, 17, 9, 0, 2, 18, 19, 0),
    gsSP2Triangles(20, 16, 3, 0, 14, 13, 21, 0),
    gsSP2Triangles(4, 22, 23, 0, 4, 23, 5, 0),
    gsSP2Triangles(23, 22, 15, 0, 15, 16, 23, 0),
    gsSP1Triangle(24, 25, 26, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE5_Tex_003640, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE5_TLUT_003440),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE5Vtx_000268[275], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE5Vtx_000268[281], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 5, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 5, 9, 3, 0),
    gsSP2Triangles(2, 8, 7, 0, 8, 4, 3, 0),
    gsSP2Triangles(10, 14, 0, 0, 7, 15, 2, 0),
    gsSP2Triangles(16, 17, 0, 0, 10, 18, 9, 0),
    gsSP2Triangles(18, 17, 19, 0, 20, 16, 15, 0),
    gsSP1Triangle(21, 15, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, ENVIRONMENT, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&object_oE5Vtx_000268[303], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE5_TLUT_003440),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, COMBINED, 0,
                       PRIMITIVE, 0),
    gsSPVertex(&object_oE5Vtx_000268[309], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 6, 4, 0, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE5_DL_002C60[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE5_Tex_004580, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE5_TLUT_004240),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, COMBINED, 0,
                       PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0D000000),
    gsSPVertex(&object_oE5Vtx_000268[316], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 3, 6, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 10, 17, 18, 0),
    gsSP2Triangles(15, 14, 19, 0, 14, 7, 19, 0),
    gsSP2Triangles(19, 7, 9, 0, 20, 18, 17, 0),
    gsSP2Triangles(21, 22, 23, 0, 9, 20, 19, 0),
    gsSP2Triangles(24, 1, 25, 0, 18, 3, 10, 0),
    gsSP1Triangle(1, 0, 25, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE5_Tex_004440, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR
                         | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE5_TLUT_004240),
    gsSPVertex(&object_oE5Vtx_000268[342], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 11, 10, 0),
    gsSP2Triangles(16, 17, 18, 0, 14, 19, 12, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE5_DL_002E10[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE5_Tex_004440, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR
                         | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE5_TLUT_004240),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, COMBINED, 0,
                       PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0D000000),
    gsSPVertex(&object_oE5Vtx_000268[374], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 6, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 4, 3, 0),
    gsSP2Triangles(14, 15, 16, 0, 5, 2, 1, 0),
    gsSP2Triangles(2, 13, 0, 0, 17, 18, 19, 0),
    gsSP2Triangles(5, 6, 3, 0, 3, 0, 13, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE5_DL_002F00[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_oE5_Tex_004B80, G_IM_FMT_I, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, COMBINED, 0,
                       PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0D000000),
    gsSPVertex(&object_oE5Vtx_000268[394], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(17, 24, 15, 0, 8, 25, 6, 0),
    gsSP2Triangles(2, 26, 0, 0, 11, 27, 9, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(object_oE5_Tex_004440, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR
                         | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE5_TLUT_004240),
    gsSPVertex(&object_oE5Vtx_000268[422], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE5_DL_003050[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE5_Tex_004580, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE5_TLUT_004240),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, COMBINED, 0,
                       PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0D000000),
    gsSPVertex(&object_oE5Vtx_000268[434], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 2, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 5, 8, 0),
    gsSP2Triangles(9, 14, 7, 0, 7, 14, 15, 0),
    gsSP2Triangles(7, 15, 16, 0, 5, 13, 3, 0),
    gsSP2Triangles(17, 16, 15, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 4, 3, 0, 9, 22, 14, 0),
    gsSP2Triangles(4, 21, 23, 0, 23, 24, 4, 0),
    gsSP1Triangle(25, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE5_Tex_004440, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR
                         | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE5_TLUT_004240),
    gsSPVertex(&object_oE5Vtx_000268[460], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 1, 0, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 18, 19, 16, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE5_DL_003200[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE5_Tex_004440, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR
                         | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE5_TLUT_004240),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, COMBINED, 0,
                       PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0D000000),
    gsSPVertex(&object_oE5Vtx_000268[492], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 1, 0, 8, 0),
    gsSP2Triangles(9, 8, 4, 0, 10, 11, 12, 0),
    gsSP2Triangles(2, 13, 0, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 4, 3, 9, 0),
    gsSP2Triangles(4, 13, 2, 0, 8, 9, 1, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE5_DL_0032F0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_oE5_Tex_004B80, G_IM_FMT_I, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, COMBINED, 0,
                       PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0D000000),
    gsSPVertex(&object_oE5Vtx_000268[512], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(11, 18, 9, 0, 19, 20, 21, 0),
    gsSP2Triangles(2, 22, 0, 0, 8, 23, 6, 0),
    gsSP2Triangles(24, 25, 26, 0, 5, 27, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(object_oE5_Tex_004440, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR
                         | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE5_TLUT_004240),
    gsSPVertex(&object_oE5Vtx_000268[540], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

u64 object_oE5_TLUT_003440[] = {
#include "assets/objects/object_oE5/tlut_00003440.rgba16.inc.c"
};

u64 object_oE5_Tex_003640[] = {
#include "assets/objects/object_oE5/tex_00003640.ci8.inc.c"
};

u8 object_oE5_Blob_003A40[] = {
#include "assets/objects/object_oE5/object_oE5_Blob_003A40.bin.inc.c"
};

u64 object_oE5_TLUT_004240[] = {
#include "assets/objects/object_oE5/tlut_00004240.rgba16.inc.c"
};

u64 object_oE5_Tex_004440[] = {
#include "assets/objects/object_oE5/tex_00004440.ci8.inc.c"
};

u64 object_oE5_Tex_004480[] = {
#include "assets/objects/object_oE5/tex_00004480.ci8.inc.c"
};

u64 object_oE5_Tex_004580[] = {
#include "assets/objects/object_oE5/tex_00004580.ci8.inc.c"
};

u64 object_oE5_Tex_004680[] = {
#include "assets/objects/object_oE5/tex_00004680.rgba16.inc.c"
};

u64 object_oE5_Tex_004A80[] = {
#include "assets/objects/object_oE5/tex_00004A80.rgba16.inc.c"
};

u64 object_oE5_Tex_004B80[] = {
#include "assets/objects/object_oE5/tex_00004B80.i4.inc.c"
};

u64 object_oE5_Tex_004BC0[] = {
#include "assets/objects/object_oE5/tex_00004BC0.rgba16.inc.c"
};

u64 object_oE5_Tex_0053C0[] = {
#include "assets/objects/object_oE5/tex_000053C0.rgba16.inc.c"
};

u64 object_oE5_Tex_0054C0[] = {
#include "assets/objects/object_oE5/tex_000054C0.i4.inc.c"
};

