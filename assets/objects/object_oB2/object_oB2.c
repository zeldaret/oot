#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_oB2.h"

StandardLimb object_oB2_Limb_000000 = { 
    { 0, 3800, -350 }, 0x01, 0xFF,
    NULL
};

StandardLimb object_oB2_Limb_00000C = { 
    { 0, 0, 0 }, 0x02, 0x13,
    NULL
};

StandardLimb object_oB2_Limb_000018 = { 
    { 0, 0, 0 }, 0x03, 0xFF,
    NULL
};

StandardLimb object_oB2_Limb_000024 = { 
    { 550, 0, 0 }, 0x04, 0x12,
    NULL
};

StandardLimb object_oB2_Limb_000030 = { 
    { 150, -150, 500 }, 0x05, 0x0B,
    NULL
};

StandardLimb object_oB2_Limb_00003C = { 
    { 0, 0, 0 }, 0x06, 0xFF,
    NULL
};

StandardLimb object_oB2_Limb_000048 = { 
    { 1450, 0, 0 }, 0x07, 0x0A,
    NULL
};

StandardLimb object_oB2_Limb_000054 = { 
    { 1250, 0, 0 }, 0x08, 0x09,
    NULL
};

u8 object_oB2_unaccounted_000060[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x1F, 0x78, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x1F, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 
    0x06, 0x00, 0x1F, 0x68, 
};

StandardLimb object_oB2_Limb_000084 = { 
    { 150, -150, -500 }, 0x0C, 0xFF,
    NULL
};

StandardLimb object_oB2_Limb_000090 = { 
    { 0, 0, 0 }, 0x0D, 0xFF,
    NULL
};

StandardLimb object_oB2_Limb_00009C = { 
    { 1450, 0, 0 }, 0x0E, 0x11,
    NULL
};

StandardLimb object_oB2_Limb_0000A8 = { 
    { 1250, 0, 0 }, 0x0F, 0x10,
    NULL
};

u8 object_oB2_unaccounted_0000B4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x1F, 0x90, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x1F, 0x88, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 
    0x06, 0x00, 0x1F, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x1F, 0x98, 
};

StandardLimb object_oB2_Limb_0000E4 = { 
    { 0, 0, 0 }, 0x14, 0xFF,
    NULL
};

StandardLimb object_oB2_Limb_0000F0 = { 
    { 0, 0, 0 }, 0x15, 0xFF,
    NULL
};

StandardLimb object_oB2_Limb_0000FC = { 
    { 1700, 0, 0 }, 0x16, 0x17,
    NULL
};

u8 object_oB2_unaccounted_000108[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x21, 0xD0, 
};

StandardLimb object_oB2_Limb_000114 = { 
    { 1500, 0, 1200 }, 0x18, 0x1E,
    NULL
};

StandardLimb object_oB2_Limb_000120 = { 
    { 0, 0, 0 }, 0x19, 0xFF,
    NULL
};

StandardLimb object_oB2_Limb_00012C = { 
    { 1601, 0, 0 }, 0x1A, 0x1D,
    NULL
};

StandardLimb object_oB2_Limb_000138 = { 
    { 1199, 0, 0 }, 0x1B, 0x1C,
    NULL
};

u8 object_oB2_unaccounted_000144[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x27, 0x58, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x28, 0xB8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 
    0x06, 0x00, 0x29, 0x78, 
};

StandardLimb object_oB2_Limb_000168 = { 
    { 1500, 0, -1200 }, 0x1F, 0x25,
    NULL
};

StandardLimb object_oB2_Limb_000174 = { 
    { 0, 0, 0 }, 0x20, 0xFF,
    NULL
};

StandardLimb object_oB2_Limb_000180 = { 
    { 1600, 0, 0 }, 0x21, 0x24,
    NULL
};

StandardLimb object_oB2_Limb_00018C = { 
    { 1200, 0, 0 }, 0x22, 0x23,
    NULL
};

u8 object_oB2_unaccounted_000198[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x24, 0x50, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x25, 0xB8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 
    0x06, 0x00, 0x26, 0x78, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x1F, 0xA0, 
    0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x0C, 0x06, 0x00, 0x00, 0x18, 0x06, 0x00, 0x00, 0x24, 
    0x06, 0x00, 0x00, 0x30, 0x06, 0x00, 0x00, 0x3C, 0x06, 0x00, 0x00, 0x48, 0x06, 0x00, 0x00, 0x54, 
    0x06, 0x00, 0x00, 0x60, 0x06, 0x00, 0x00, 0x6C, 0x06, 0x00, 0x00, 0x78, 0x06, 0x00, 0x00, 0x84, 
    0x06, 0x00, 0x00, 0x90, 0x06, 0x00, 0x00, 0x9C, 0x06, 0x00, 0x00, 0xA8, 0x06, 0x00, 0x00, 0xB4, 
    0x06, 0x00, 0x00, 0xC0, 0x06, 0x00, 0x00, 0xCC, 0x06, 0x00, 0x00, 0xD8, 0x06, 0x00, 0x00, 0xE4, 
    0x06, 0x00, 0x00, 0xF0, 0x06, 0x00, 0x00, 0xFC, 0x06, 0x00, 0x01, 0x08, 0x06, 0x00, 0x01, 0x14, 
    0x06, 0x00, 0x01, 0x20, 0x06, 0x00, 0x01, 0x2C, 0x06, 0x00, 0x01, 0x38, 0x06, 0x00, 0x01, 0x44, 
    0x06, 0x00, 0x01, 0x50, 0x06, 0x00, 0x01, 0x5C, 0x06, 0x00, 0x01, 0x68, 0x06, 0x00, 0x01, 0x74, 
    0x06, 0x00, 0x01, 0x80, 0x06, 0x00, 0x01, 0x8C, 0x06, 0x00, 0x01, 0x98, 0x06, 0x00, 0x01, 0xA4, 
    0x06, 0x00, 0x01, 0xB0, 0x06, 0x00, 0x01, 0xBC, 0x06, 0x00, 0x01, 0xC8, 0x26, 0x00, 0x00, 0x00, 
};

Vtx object_oB2Vtx_000268[] = {
#include "assets/objects/object_oB2/object_oB2Vtx_000268.vtx.inc"
};

Gfx object_oB2_DL_001F68[] = {
    gsDPPipeSync(),
    gsDPPipeSync(),
    gsDPPipeSync(),
    gsDPPipeSync(),
    gsDPPipeSync(),
    gsDPPipeSync(),
    gsDPPipeSync(),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oB2_Tex_0030D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_oB2Vtx_000268, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 6, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0),
    gsSP2Triangles(8, 10, 6, 0, 29, 27, 26, 0),
    gsSPVertex(&object_oB2Vtx_000268[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 0, 2, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 11, 13, 0, 15, 12, 11, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 19, 21, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 27, 26, 29, 0),
    gsSP1Triangle(29, 30, 27, 0),
    gsSPVertex(&object_oB2Vtx_000268[61], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oB2_Tex_002CD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oB2Vtx_000268[64], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oB2_Tex_002C58, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oB2Vtx_000268[68], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 1, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oB2_Tex_002A58, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oB2Vtx_000268[84], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 3, 15, 4, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSPEndDisplayList(),
};

Gfx object_oB2_DL_0021D0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oB2_Tex_004058, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oB2Vtx_000268[106], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oB2_Tex_003C58, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oB2Vtx_000268[112], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_oB2Vtx_000268[144], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oB2_Tex_003BD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oB2Vtx_000268[150], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oB2_Tex_0039D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oB2Vtx_000268[154], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(3, 5, 18, 0, 11, 10, 19, 0),
    gsSP2Triangles(20, 16, 15, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 13, 25, 0, 26, 27, 28, 0),
    gsSP2Triangles(23, 29, 21, 0, 30, 22, 31, 0),
    gsSPVertex(&object_oB2Vtx_000268[186], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 20, 19, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 15, 17, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oB2_Tex_0031D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oB2Vtx_000268[218], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 0, 0, 6, 4, 0, 0),
    gsSPEndDisplayList(),
};

Gfx object_oB2_DL_002450[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oB2_Tex_003E58, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oB2Vtx_000268[225], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 12, 9, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 9, 12, 0, 17, 8, 7, 0),
    gsSP2Triangles(17, 18, 8, 0, 18, 19, 8, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 3, 29, 30, 0),
    gsSP1Triangle(16, 2, 31, 0),
    gsSPVertex(&object_oB2Vtx_000268[257], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(2, 3, 4, 0, 5, 3, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 12, 13, 0, 4, 7, 2, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 17, 0, 22, 23, 24, 0),
    gsSP2Triangles(25, 17, 19, 0, 8, 26, 27, 0),
    gsSP1Triangle(9, 27, 28, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oB2_Tex_003BD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oB2Vtx_000268[286], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx object_oB2_DL_0025B8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oB2_Tex_003BD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oB2Vtx_000268[298], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(4, 5, 1, 0, 3, 0, 6, 0),
    gsSP2Triangles(7, 6, 0, 0, 2, 7, 0, 0),
    gsSP2Triangles(8, 9, 10, 0, 5, 2, 1, 0),
    gsSP2Triangles(9, 11, 10, 0, 12, 13, 14, 0),
    gsSP2Triangles(6, 4, 3, 0, 15, 16, 17, 0),
    gsSP1Triangle(18, 19, 20, 0),
    gsSPEndDisplayList(),
};

Gfx object_oB2_DL_002678[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oB2_Tex_003BD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oB2Vtx_000268[319], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 8, 0),
    gsSP2Triangles(9, 16, 17, 0, 15, 16, 9, 0),
    gsSP2Triangles(8, 15, 9, 0, 13, 18, 11, 0),
    gsSP2Triangles(0, 19, 1, 0, 19, 0, 20, 0),
    gsSP2Triangles(0, 2, 20, 0, 21, 22, 7, 0),
    gsSP2Triangles(17, 23, 24, 0, 3, 5, 21, 0),
    gsSP2Triangles(10, 9, 17, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 25, 27, 0, 17, 24, 10, 0),
    gsSP2Triangles(29, 16, 15, 0, 7, 3, 21, 0),
    gsSPEndDisplayList(),
};

Gfx object_oB2_DL_002758[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oB2_Tex_003E58, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oB2Vtx_000268[349], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(6, 11, 12, 0, 5, 13, 6, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsSP2Triangles(2, 4, 18, 0, 24, 25, 26, 0),
    gsSP2Triangles(19, 25, 17, 0, 17, 25, 27, 0),
    gsSP2Triangles(17, 27, 28, 0, 4, 2, 1, 0),
    gsSP2Triangles(13, 11, 6, 0, 15, 29, 16, 0),
    gsSP2Triangles(30, 28, 27, 0, 10, 31, 8, 0),
    gsSPVertex(&object_oB2Vtx_000268[381], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 6, 5, 11, 0),
    gsSP2Triangles(11, 12, 6, 0, 0, 4, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oB2_Tex_003BD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oB2Vtx_000268[401], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx object_oB2_DL_0028B8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oB2_Tex_003BD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oB2Vtx_000268[413], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(12, 14, 18, 0, 19, 20, 16, 0),
    gsSP2Triangles(19, 8, 20, 0, 8, 19, 6, 0),
    gsSP2Triangles(15, 17, 7, 0, 7, 6, 15, 0),
    gsSP1Triangle(16, 15, 19, 0),
    gsSPEndDisplayList(),
};

Gfx object_oB2_DL_002978[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oB2_Tex_003BD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oB2Vtx_000268[434], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 12, 10, 0, 8, 13, 6, 0),
    gsSP2Triangles(0, 14, 1, 0, 7, 15, 8, 0),
    gsSP2Triangles(2, 16, 0, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 20, 19, 0),
    gsSP2Triangles(22, 23, 24, 0, 13, 3, 25, 0),
    gsSP2Triangles(13, 4, 3, 0, 8, 4, 13, 0),
    gsSP2Triangles(25, 3, 26, 0, 24, 27, 22, 0),
    gsSP2Triangles(6, 13, 25, 0, 2, 1, 28, 0),
    gsSP2Triangles(14, 29, 1, 0, 18, 21, 19, 0),
    gsSPEndDisplayList(),
};

u64 object_oB2_Tex_002A58[] = {
#include "assets/objects/object_oB2/tex_00002A58.rgba16.inc.c"
};

u64 object_oB2_Tex_002C58[] = {
#include "assets/objects/object_oB2/tex_00002C58.rgba16.inc.c"
};

u64 object_oB2_Tex_002CD8[] = {
#include "assets/objects/object_oB2/tex_00002CD8.rgba16.inc.c"
};

u64 object_oB2_Tex_0030D8[] = {
#include "assets/objects/object_oB2/tex_000030D8.rgba16.inc.c"
};

u64 object_oB2_Tex_0031D8[] = {
#include "assets/objects/object_oB2/tex_000031D8.rgba16.inc.c"
};

u64 object_oB2_Tex_0039D8[] = {
#include "assets/objects/object_oB2/tex_000039D8.rgba16.inc.c"
};

u64 object_oB2_Tex_003BD8[] = {
#include "assets/objects/object_oB2/tex_00003BD8.rgba16.inc.c"
};

u64 object_oB2_Tex_003C58[] = {
#include "assets/objects/object_oB2/tex_00003C58.rgba16.inc.c"
};

u64 object_oB2_Tex_003E58[] = {
#include "assets/objects/object_oB2/tex_00003E58.rgba16.inc.c"
};

u64 object_oB2_Tex_004058[] = {
#include "assets/objects/object_oB2/tex_00004058.rgba16.inc.c"
};

