#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_Bb.h"

s16 object_Bb_Anim_000184FrameData[] = {
    0x0000, 0x4000, 0x31D9, 0xC000, 0xCE27, 0x001E, 0x004F, 0x0064, 0x004F, 0x001E, 0xFFE2, 0xFFB1, 0xFF9C, 0xFFB1, 
    0xFFE2, 0x0000, 0x0076, 0x00EC, 0x00AE, 0x003D, 0x0000, 0x0076, 0x00EC, 0x00AE, 0x003D, 0x01E2, 0xFFE4, 0x0000, 
    0xFE8D, 0xFCCD, 0xFBF4, 0xFDAE, 0x0000, 0x0104, 0x01A8, 0xFBA6, 0x0062, 0x0000, 0x016E, 0x0329, 0x03FF, 0x026A, 
    0x0000, 0xFE21, 0xFC68, 0x921F, 0x99DC, 0xA19A, 0x9D97, 0x9622, 0x921F, 0x99DC, 0xA19A, 0x9D97, 0x9622, 0x4CF3, 
    0x1979, 0x1979, 0x2C8A, 0x4277, 0x4CF3, 0x1979, 0x1979, 0x2C8A, 0x4277, 0x0C39, 0x0910, 0x1CF2, 0x19D1, 0x1129, 
    0x0C39, 0x1495, 0x1CF2, 0x189C, 0x108F, 0x0B07, 0xF5EF, 0xE8DE, 0xF2D0, 0x02B7, 0x0B07, 0xF9F3, 0xE8DE, 0xF1B9, 
    0x022C, 0x1661, 0x0049, 0x08FB, 0x0EAA, 0x1403, 0x1661, 0x0FAE, 0x08FB, 0x0C74, 0x12E8, 0x1715, 0x32CC, 0xFD58, 
    0xC7E5, 0xE39C, 0x1715, 0x32CC, 0xFD58, 0xC7E5, 0xE39C, 0xF3C7, 0xF6E9, 0xE30E, 0xE534, 0xEC81, 0xF2DB, 0xEF00, 
    0xE30E, 0xE764, 0xEF71, 0xF4F9, 0x0A0A, 0x1722, 0x0F14, 0x0140, 0xF679, 0xFEBC, 0x1722, 0x0E47, 0xFDD4, 0x1661, 
    0x0056, 0x08FB, 0x0DFA, 0x12DB, 0x15FB, 0x128D, 0x08FB, 0x0C74, 0x12E8, 0xE8EB, 0xCD34, 0x02A8, 0x381B, 0x1C64, 
    0xE8EB, 0xCD34, 0x02A8, 0x381B, 0x1C64, 0x0000, 
};

JointIndex object_Bb_Anim_000184JointIndices[] = {
    { 0x0005, 0x000F, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0019, 0x0023, 0x002D },
    { 0x0000, 0x0000, 0x0037 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0002, 0x0003, 0x0002 },
    { 0x0041, 0x004B, 0x0055 },
    { 0x0000, 0x005F, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0004, 0x0001, 0x0002 },
    { 0x0069, 0x0073, 0x007D },
    { 0x0000, 0x0087, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader object_Bb_Anim_000184 = { 
    { 10 }, object_Bb_Anim_000184FrameData,
    object_Bb_Anim_000184JointIndices, 5
};

u8 object_Bb_possiblePadding_000194[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 object_Bb_Anim_0002ACFrameData[] = {
    0x0000, 0x4000, 0x31D9, 0xC000, 0xCE27, 0xA3AB, 0xB256, 0x80A1, 0x80A1, 0x80A1, 0x80A1, 0x80A1, 0x80A1, 0x17BD, 
    0x3A70, 0x5200, 0x3B98, 0x4AAB, 0x371C, 0x48A1, 0x48A1, 0x0C39, 0x0E0A, 0x2B95, 0x2FDF, 0x3068, 0x2ECC, 0x2CA7, 
    0x2B95, 0x0B07, 0x0AC1, 0x21E8, 0x253F, 0x25AA, 0x2469, 0x22BE, 0x21E8, 0x1661, 0x0654, 0x18F3, 0x1B68, 0x1BB7, 
    0x1ACB, 0x1990, 0x18F3, 0x32CC, 0x1B51, 0x0000, 0x1BC9, 0x0000, 0x0BDA, 0x1E93, 0x2856, 0xF3C7, 0xF253, 0xD572, 
    0xD141, 0xD0BB, 0xD24D, 0xD466, 0xD572, 0xF4F9, 0xF569, 0xDE8F, 0xDB44, 0xDADB, 0xDC17, 0xDDBC, 0xDE8F, 0x1661, 
    0x0679, 0x195C, 0x1BDB, 0x1C2B, 0x1B3C, 0x19FC, 0x195C, 0xCD34, 0xE4A1, 0x0000, 0xE4E6, 0x0000, 0xF439, 0xE1B6, 
    0xD812, 0x0000, 
};

JointIndex object_Bb_Anim_0002ACJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0000, 0x0005 },
    { 0x0000, 0x0000, 0x000D },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0002, 0x0003, 0x0002 },
    { 0x0015, 0x001D, 0x0025 },
    { 0x0000, 0x002D, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0004, 0x0001, 0x0002 },
    { 0x0035, 0x003D, 0x0045 },
    { 0x0000, 0x004D, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader object_Bb_Anim_0002AC = { 
    { 8 }, object_Bb_Anim_0002ACFrameData,
    object_Bb_Anim_0002ACJointIndices, 5
};

u8 object_Bb_possiblePadding_0002BC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 object_Bb_Anim_000444FrameData[] = {
    0x0000, 0x4000, 0x31D9, 0xC000, 0xCE27, 0x001E, 0x004F, 0x0064, 0x004F, 0x001E, 0xFFE2, 0xFFB1, 0xFF9C, 0xFFB1, 
    0xFFE2, 0x01E2, 0x013D, 0x0000, 0xFE6C, 0xFCBD, 0xFBF4, 0xFDAE, 0x0000, 0x0104, 0x01A8, 0xFBA6, 0xFD68, 0x0000, 
    0x01C7, 0x0355, 0x03FF, 0x026A, 0x0000, 0xFE21, 0xFC68, 0xA3AB, 0xA3B8, 0xA3CA, 0xA3D2, 0xA3D8, 0xA3DB, 0xA3D5, 
    0xA3CA, 0xA3BD, 0xA3B1, 0x0000, 0x03EC, 0x0A98, 0x08DA, 0x04C1, 0x0000, 0xF8E0, 0xF401, 0xF71D, 0xFCE4, 0x245E, 
    0x2B3A, 0x2C4F, 0x2CDF, 0x2CEE, 0x2C84, 0x2B42, 0x292F, 0x26ED, 0x251D, 0x0C39, 0x030F, 0x0CF8, 0x1767, 0x1CF2, 
    0x1C1C, 0x182F, 0x12E7, 0x0DFE, 0x0B30, 0x0B07, 0xFB83, 0xF249, 0xEB1E, 0xE8DE, 0xEC34, 0xF2C2, 0xFAD2, 0x02B0, 
    0x08A9, 0x1661, 0xFF1F, 0x0107, 0x0550, 0x08FB, 0x0B9B, 0x0E8C, 0x1172, 0x13F4, 0x15B7, 0x1715, 0x2AE1, 0x32CC, 
    0x2218, 0xFD58, 0xD899, 0xC7E5, 0xCFD0, 0xE39C, 0xFD58, 0xF3C7, 0xFCF1, 0xF308, 0xE899, 0xE30E, 0xE3E4, 0xE7D1, 
    0xED19, 0xF202, 0xF4D0, 0xF4F9, 0x047D, 0x0DB7, 0x14E2, 0x1722, 0x13CC, 0x0D3E, 0x052E, 0xFD50, 0xF757, 0x1661, 
    0xFF1F, 0x0107, 0x0550, 0x08FB, 0x0B9B, 0x0E8C, 0x1172, 0x13F4, 0x15B7, 0xE8EB, 0xD51F, 0xCD34, 0xDDE8, 0x02A8, 
    0x2767, 0x381B, 0x3030, 0x1C64, 0x02A8, 0x0000, 
};

JointIndex object_Bb_Anim_000444JointIndices[] = {
    { 0x0005, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x000F, 0x0019, 0x0023 },
    { 0x002D, 0x0000, 0x0037 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0002, 0x0003, 0x0002 },
    { 0x0041, 0x004B, 0x0055 },
    { 0x0000, 0x005F, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0004, 0x0001, 0x0002 },
    { 0x0069, 0x0073, 0x007D },
    { 0x0000, 0x0087, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader object_Bb_Anim_000444 = { 
    { 10 }, object_Bb_Anim_000444FrameData,
    object_Bb_Anim_000444JointIndices, 5
};

u8 object_Bb_possiblePadding_000454[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_BbVtx_000460[] = {
#include "assets/objects/object_Bb/object_BbVtx_000460.vtx.inc"
};

Gfx object_Bb_DL_000C20[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_Bb_Tex_001740, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_BbVtx_000460, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_Bb_DL_000CB0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_Bb_Tex_001640, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_BbVtx_000460[6], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_Bb_DL_000D40[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_Bb_Tex_0014A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 4, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 2, 2, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_BbVtx_000460[9], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 16, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 28, 27, 0),
    gsSPVertex(&object_BbVtx_000460[39], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_Bb_DL_000E08[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_Bb_Tex_001540, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_BbVtx_000460[42], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(4, 10, 5, 0, 11, 1, 3, 0),
    gsSP2Triangles(4, 6, 12, 0, 7, 9, 13, 0),
    gsSP2Triangles(7, 14, 1, 0, 7, 13, 15, 0),
    gsSP2Triangles(14, 7, 15, 0, 1, 14, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_Bb_Tex_0014C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_BbVtx_000460[58], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 0, 3, 5, 0),
    gsSP2Triangles(7, 8, 4, 0, 0, 5, 6, 0),
    gsSP2Triangles(7, 2, 9, 0, 2, 3, 0, 0),
    gsSP2Triangles(3, 2, 7, 0, 9, 10, 7, 0),
    gsSP2Triangles(1, 9, 2, 0, 7, 4, 3, 0),
    gsSP2Triangles(11, 1, 0, 0, 12, 10, 9, 0),
    gsSP1Triangle(10, 8, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_Bb_Tex_0014A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 4, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 2, 2, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_BbVtx_000460[71], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_BbVtx_000460[80], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP1Triangle(12, 13, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_Bb_Tex_001420, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_BbVtx_000460[95], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 3, 2, 0, 2, 1, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_Bb_Tex_001220, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_BbVtx_000460[101], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(1, 4, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(3, 6, 5, 0, 3, 4, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_Bb_Tex_0015C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, ENVIRONMENT, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 178, 255, 101, 255),
    gsSPVertex(&object_BbVtx_000460[109], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_Bb_DL_001100[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_Bb_Tex_001640, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_BbVtx_000460[115], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_Bb_DL_001190[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_Bb_Tex_001740, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_BbVtx_000460[118], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPEndDisplayList(),
};

u64 object_Bb_Tex_001220[] = {
#include "assets/objects/object_Bb/tex_00001220.rgba16.inc.c"
};

u64 object_Bb_Tex_001420[] = {
#include "assets/objects/object_Bb/tex_00001420.rgba16.inc.c"
};

u64 object_Bb_Tex_0014A0[] = {
#include "assets/objects/object_Bb/tex_000014A0.rgba16.inc.c"
};

u64 object_Bb_Tex_0014C0[] = {
#include "assets/objects/object_Bb/tex_000014C0.rgba16.inc.c"
};

u64 object_Bb_Tex_001540[] = {
#include "assets/objects/object_Bb/tex_00001540.rgba16.inc.c"
};

u64 object_Bb_Tex_0015C0[] = {
#include "assets/objects/object_Bb/tex_000015C0.rgba16.inc.c"
};

u64 object_Bb_Tex_001640[] = {
#include "assets/objects/object_Bb/tex_00001640.rgba16.inc.c"
};

u64 object_Bb_Tex_001740[] = {
#include "assets/objects/object_Bb/tex_00001740.rgba16.inc.c"
};

StandardLimb object_Bb_Limb_001940 = { 
    { 30, 0, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb object_Bb_Limb_00194C = { 
    { 0, 0, 0 }, 0x02, LIMB_DONE,
    NULL
};

StandardLimb object_Bb_Limb_001958 = { 
    { 391, 0, 0 }, 0x03, 0x04,
    NULL
};

StandardLimb object_Bb_Limb_001964 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_Bb_DL_000D40
};

StandardLimb object_Bb_Limb_001970 = { 
    { -96, -115, 600 }, 0x05, 0x09,
    NULL
};

StandardLimb object_Bb_Limb_00197C = { 
    { 0, 0, 0 }, 0x06, LIMB_DONE,
    NULL
};

StandardLimb object_Bb_Limb_001988 = { 
    { 560, 0, 0 }, 0x07, 0x08,
    NULL
};

StandardLimb object_Bb_Limb_001994 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_Bb_DL_000C20
};

StandardLimb object_Bb_Limb_0019A0 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_Bb_DL_000CB0
};

StandardLimb object_Bb_Limb_0019AC = { 
    { -96, -115, -600 }, 0x0A, 0x0E,
    NULL
};

StandardLimb object_Bb_Limb_0019B8 = { 
    { 0, 0, 0 }, 0x0B, LIMB_DONE,
    NULL
};

StandardLimb object_Bb_Limb_0019C4 = { 
    { 560, 0, 0 }, 0x0C, 0x0D,
    NULL
};

StandardLimb object_Bb_Limb_0019D0 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_Bb_DL_001190
};

StandardLimb object_Bb_Limb_0019DC = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_Bb_DL_001100
};

StandardLimb object_Bb_Limb_0019E8 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_Bb_DL_000E08
};

void* object_Bb_Skel_001A30Limbs[] = {
    &object_Bb_Limb_001940,
    &object_Bb_Limb_00194C,
    &object_Bb_Limb_001958,
    &object_Bb_Limb_001964,
    &object_Bb_Limb_001970,
    &object_Bb_Limb_00197C,
    &object_Bb_Limb_001988,
    &object_Bb_Limb_001994,
    &object_Bb_Limb_0019A0,
    &object_Bb_Limb_0019AC,
    &object_Bb_Limb_0019B8,
    &object_Bb_Limb_0019C4,
    &object_Bb_Limb_0019D0,
    &object_Bb_Limb_0019DC,
    &object_Bb_Limb_0019E8,
};

SkeletonHeader object_Bb_Skel_001A30 = { 
    object_Bb_Skel_001A30Limbs, ARRAY_COUNT(object_Bb_Skel_001A30Limbs)
};

