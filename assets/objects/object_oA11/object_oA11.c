#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_oA11.h"

StandardLimb object_oA11_Limb_000000 = { 
    { 0, 3800, -350 }, 0x01, 0xFF,
    NULL
};

StandardLimb object_oA11_Limb_00000C = { 
    { 0, 0, 0 }, 0x02, 0x13,
    NULL
};

StandardLimb object_oA11_Limb_000018 = { 
    { 0, 0, 0 }, 0x03, 0xFF,
    NULL
};

StandardLimb object_oA11_Limb_000024 = { 
    { 550, 0, 0 }, 0x04, 0x12,
    NULL
};

StandardLimb object_oA11_Limb_000030 = { 
    { -300, 0, 350 }, 0x05, 0x0B,
    NULL
};

StandardLimb object_oA11_Limb_00003C = { 
    { 0, 0, 0 }, 0x06, 0xFF,
    NULL
};

StandardLimb object_oA11_Limb_000048 = { 
    { 1600, 0, 0 }, 0x07, 0x0A,
    NULL
};

StandardLimb object_oA11_Limb_000054 = { 
    { 1700, 0, 0 }, 0x08, 0x09,
    NULL
};

u8 object_oA11_unaccounted_000060[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x24, 0x48, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x24, 0xD8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 
    0x06, 0x00, 0x25, 0xC0, 
};

StandardLimb object_oA11_Limb_000084 = { 
    { -300, 0, -350 }, 0x0C, 0xFF,
    NULL
};

StandardLimb object_oA11_Limb_000090 = { 
    { 0, 0, 0 }, 0x0D, 0xFF,
    NULL
};

StandardLimb object_oA11_Limb_00009C = { 
    { 1600, 0, 0 }, 0x0E, 0x11,
    NULL
};

StandardLimb object_oA11_Limb_0000A8 = { 
    { 1700, 0, 0 }, 0x0F, 0x10,
    NULL
};

u8 object_oA11_unaccounted_0000B4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x1F, 0xF8, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x20, 0x88, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 
    0x06, 0x00, 0x21, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x18, 0x78, 
};

StandardLimb object_oA11_Limb_0000E4 = { 
    { 0, 0, 0 }, 0x14, 0xFF,
    NULL
};

StandardLimb object_oA11_Limb_0000F0 = { 
    { 0, 0, 0 }, 0x15, 0xFF,
    NULL
};

StandardLimb object_oA11_Limb_0000FC = { 
    { 1700, 0, 0 }, 0x16, 0x17,
    NULL
};

u8 object_oA11_unaccounted_000108[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x06, 0x00, 0x1A, 0xE0, 
};

StandardLimb object_oA11_Limb_000114 = { 
    { 1500, 0, 750 }, 0x18, 0x1E,
    NULL
};

StandardLimb object_oA11_Limb_000120 = { 
    { 0, 0, 0 }, 0x19, 0xFF,
    NULL
};

StandardLimb object_oA11_Limb_00012C = { 
    { 1050, 0, 0 }, 0x1A, 0x1D,
    NULL
};

StandardLimb object_oA11_Limb_000138 = { 
    { 1050, 0, 0 }, 0x1B, 0x1C,
    NULL
};

StandardLimb object_oA11_Limb_000144 = { 
    { 0, 0, 0 }, 0xFF, 0xFF,
    object_oA11_DL_000DD0
};

StandardLimb object_oA11_Limb_000150 = { 
    { 0, 0, 0 }, 0xFF, 0xFF,
    object_oA11_DL_000EF0
};

StandardLimb object_oA11_Limb_00015C = { 
    { 0, 0, 0 }, 0xFF, 0xFF,
    object_oA11_DL_000FD8
};

StandardLimb object_oA11_Limb_000168 = { 
    { 1500, 0, -750 }, 0x1F, 0x25,
    NULL
};

StandardLimb object_oA11_Limb_000174 = { 
    { 0, 0, 0 }, 0x20, 0xFF,
    NULL
};

StandardLimb object_oA11_Limb_000180 = { 
    { 1050, 0, 0 }, 0x21, 0x24,
    NULL
};

StandardLimb object_oA11_Limb_00018C = { 
    { 1050, 0, 0 }, 0x22, 0x23,
    NULL
};

StandardLimb object_oA11_Limb_000198 = { 
    { 0, 0, 0 }, 0xFF, 0xFF,
    object_oA11_DL_000BA8
};

StandardLimb object_oA11_Limb_0001A4 = { 
    { 0, 0, 0 }, 0xFF, 0xFF,
    object_oA11_DL_000C40
};

StandardLimb object_oA11_Limb_0001B0 = { 
    { 0, 0, 0 }, 0xFF, 0xFF,
    object_oA11_DL_000D28
};

StandardLimb object_oA11_Limb_0001BC = { 
    { 0, 0, 0 }, 0xFF, 0xFF,
    object_oA11_DL_000A58
};

u8 object_oA11_unaccounted_0001C8[] = {
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

Vtx object_oA11Vtx_000268[] = {
#include "assets/objects/object_oA11/object_oA11Vtx_000268.vtx.inc"
};

Gfx object_oA11_DL_000A58[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oA11_Tex_001540, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_oA11Vtx_000268, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oA11_Tex_001140, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oA11Vtx_000268[4], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(1, 0, 4, 0, 11, 2, 1, 0),
    gsSP2Triangles(11, 1, 3, 0, 12, 13, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oA11_Tex_001080, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oA11Vtx_000268[19], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx object_oA11_DL_000BA8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oA11_Tex_001540, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oA11Vtx_000268[27], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx object_oA11_DL_000C40[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oA11_Tex_001540, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oA11Vtx_000268[39], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oA11_Tex_001080, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oA11Vtx_000268[48], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_oA11_DL_000D28[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oA11_Tex_001080, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oA11Vtx_000268[51], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSPEndDisplayList(),
};

Gfx object_oA11_DL_000DD0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oA11_Tex_001540, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oA11Vtx_000268[71], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_oA11_Tex_001100, G_IM_FMT_I, 16, 8, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR |
                            G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oA11Vtx_000268[83], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 100, 48, 18, 255),
    gsSPVertex(&object_oA11Vtx_000268[89], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 4, 5, 0, 0, 3, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_oA11_DL_000EF0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oA11_Tex_001540, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oA11Vtx_000268[95], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oA11_Tex_001080, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oA11Vtx_000268[104], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_oA11_DL_000FD8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oA11_Tex_001080, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oA11Vtx_000268[107], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSPEndDisplayList(),
};

u64 object_oA11_Tex_001080[] = {
#include "assets/objects/object_oA11/tex_00001080.rgba16.inc.c"
};

u64 object_oA11_Tex_001100[] = {
#include "assets/objects/object_oA11/tex_00001100.i4.inc.c"
};

u64 object_oA11_Tex_001140[] = {
#include "assets/objects/object_oA11/tex_00001140.rgba16.inc.c"
};

u64 object_oA11_Tex_001540[] = {
#include "assets/objects/object_oA11/tex_00001540.rgba16.inc.c"
};

