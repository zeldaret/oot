#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_rs.h"

s16 object_rs_Anim_00065CFrameData[] = {
    0x0000, 0x0EFD, 0x0032, 0xCFEC, 0x3B0C, 0x2067, 0x2067, 0x2068, 0x2069, 0x206A, 0x206B, 0x206B, 0x206A, 0x2067, 
    0x205C, 0x2047, 0x202F, 0x2022, 0x201F, 0x201E, 0x201D, 0x201E, 0x2020, 0x2022, 0x2025, 0x2029, 0x202D, 0x2031, 
    0x2035, 0x203A, 0x203F, 0x2044, 0x204A, 0x2050, 0x2055, 0x2059, 0x205E, 0x2061, 0x2064, 0x2066, 0x2067, 0x2067, 
    0x2067, 0x2067, 0x07EF, 0x0836, 0x086D, 0x0891, 0x08A0, 0x0899, 0x087B, 0x0842, 0x07EF, 0x0718, 0x05B3, 0x0445, 
    0x0358, 0x02DA, 0x0260, 0x01ED, 0x0183, 0x0125, 0x00D6, 0x0097, 0x006C, 0x0056, 0x0059, 0x0076, 0x00AD, 0x00FA, 
    0x0159, 0x01C8, 0x0244, 0x02CB, 0x0359, 0x03EC, 0x0481, 0x0516, 0x05A7, 0x0632, 0x06B5, 0x072D, 0x0796, 0x3B2C, 
    0x3B20, 0x3B17, 0x3B12, 0x3B10, 0x3B11, 0x3B17, 0x3B1F, 0x3B2C, 0x3B49, 0x3B78, 0x3BA7, 0x3BC7, 0x3BDB, 0x3BF0, 
    0x3C04, 0x3C17, 0x3C29, 0x3C39, 0x3C47, 0x3C51, 0x3C58, 0x3C5A, 0x3C58, 0x3C51, 0x3C46, 0x3C39, 0x3C29, 0x3C17, 
    0x3C02, 0x3BEC, 0x3BD5, 0x3BBE, 0x3BA6, 0x3B8E, 0x3B77, 0x3B61, 0x3B4D, 0x3B3B, 0xE2BD, 0xE2CE, 0xE2DB, 0xE2E3, 
    0xE2E7, 0xE2E6, 0xE2DF, 0xE2D1, 0xE2BD, 0xE28A, 0xE238, 0xE1E8, 0xE1B8, 0xE1A0, 0xE18A, 0xE176, 0xE164, 0xE154, 
    0xE147, 0xE13E, 0xE137, 0xE134, 0xE135, 0xE13B, 0xE144, 0xE151, 0xE162, 0xE176, 0xE18D, 0xE1A6, 0xE1C1, 0xE1DF, 
    0xE1FD, 0xE21C, 0xE23B, 0xE259, 0xE276, 0xE291, 0xE2A9, 0xF0BD, 0xF0B4, 0xF0AE, 0xF0A9, 0xF0A7, 0xF0A8, 0xF0AB, 
    0xF0B2, 0xF0BD, 0xF0D8, 0xF107, 0xF137, 0xF156, 0xF165, 0xF174, 0xF182, 0xF18E, 0xF198, 0xF1A1, 0xF1A8, 0xF1AC, 
    0xF1AD, 0xF1AB, 0xF1A7, 0xF19F, 0xF194, 0xF188, 0xF179, 0xF169, 0xF158, 0xF147, 0xF135, 0xF123, 0xF111, 0xF100, 
    0xF0F0, 0xF0E1, 0xF0D3, 0xF0C7, 0x99B5, 0x9981, 0x9958, 0x993C, 0x992F, 0x9933, 0x9949, 0x9974, 0x99B5, 0x9A62, 
    0x9B89, 0x9CBB, 0x9D81, 0x9DE3, 0x9E40, 0x9E95, 0x9EE2, 0x9F25, 0x9F5C, 0x9F85, 0x9F9F, 0x9FA7, 0x9F9E, 0x9F80, 
    0x9F4F, 0x9F0E, 0x9EBE, 0x9E62, 0x9DFD, 0x9D91, 0x9D21, 0x9CAF, 0x9C3C, 0x9BCB, 0x9B5E, 0x9AF7, 0x9A98, 0x9A41, 
    0x99F5, 0xCA33, 0xCA88, 0xCACA, 0xCAF7, 0xCB0B, 0xCB04, 0xCADF, 0xCA9A, 0xCA33, 0xC929, 0xC778, 0xC5CD, 0xC4C2, 
    0xC43D, 0xC3C0, 0xC34D, 0xC2E6, 0xC28D, 0xC244, 0xC20D, 0xC1E9, 0xC1DA, 0xC1E2, 0xC203, 0xC23E, 0xC28D, 0xC2F0, 
    0xC364, 0xC3E6, 0xC475, 0xC50C, 0xC5AB, 0xC64E, 0xC6F2, 0xC794, 0xC832, 0xC8C7, 0xC950, 0xC9CB, 0x025B, 0x0257, 
    0x0246, 0x022B, 0x0207, 0x01DD, 0x01AD, 0x017B, 0x0147, 0x0115, 0x00E5, 0x00BA, 0x0078, 0x0051, 0x0065, 0x007A, 
    0x008E, 0x00A2, 0x00B6, 0x00CA, 0x00DE, 0x00F2, 0x0106, 0x011A, 0x012E, 0x0142, 0x0156, 0x016A, 0x017E, 0x0192, 
    0x01A6, 0x01BA, 0x01CF, 0x01E3, 0x01F7, 0x020B, 0x021F, 0x0233, 0x0247, 0x0B3A, 0x0B3F, 0x0B43, 0x0B47, 0x0B4A, 
    0x0B4A, 0x0B48, 0x0B43, 0x0B3A, 0x0B20, 0x0AF4, 0x0AC6, 0x0AAB, 0x0AA2, 0x0A9C, 0x0A97, 0x0A94, 0x0A93, 0x0A94, 
    0x0A96, 0x0A9A, 0x0A9E, 0x0AA4, 0x0AAA, 0x0AB1, 0x0AB9, 0x0AC3, 0x0ACD, 0x0AD8, 0x0AE3, 0x0AEE, 0x0AF9, 0x0B03, 
    0x0B0D, 0x0B16, 0x0B1F, 0x0B27, 0x0B2E, 0x0B34, 0xFE9C, 0xFED1, 0xFEF9, 0xFF14, 0xFF20, 0xFF1C, 0xFF06, 0xFEDC, 
    0xFE9C, 0xFDF0, 0xFCC2, 0xFB7B, 0xFA9D, 0xFA29, 0xF9B7, 0xF94B, 0xF8E8, 0xF88F, 0xF844, 0xF80A, 0xF7E2, 0xF7D1, 
    0xF7D8, 0xF7F9, 0xF834, 0xF884, 0xF8E5, 0xF954, 0xF9CE, 0xFA4E, 0xFAD2, 0xFB57, 0xFBDB, 0xFC5B, 0xFCD4, 0xFD45, 
    0xFDAD, 0xFE09, 0xFE59, 0x003F, 0x0020, 0x0025, 0x0042, 0x006E, 0x00A0, 0x00D1, 0x00F8, 0x0109, 0x0123, 0x0134, 
    0xFDAF, 0xFD5F, 0xFD38, 0xFD1F, 0xFD10, 0xFD0A, 0xFD0C, 0xFD14, 0xFD21, 0xFD33, 0xFDA5, 0xFE94, 0xFFD9, 0x011F, 
    0x01FB, 0x0270, 0x02D1, 0x0319, 0x0343, 0x034B, 0x0330, 0x02F4, 0x029B, 0x0230, 0x01BA, 0x0145, 0x00DB, 0x0081, 
    0x028D, 0x026A, 0x0273, 0x029B, 0x02D8, 0x031C, 0x035C, 0x038C, 0x039D, 0x03B2, 0x03B6, 0xFED9, 0xF9D4, 0xFA2D, 
    0xFA86, 0xFADF, 0xFB38, 0xFB91, 0xFBE9, 0xFC41, 0xFC97, 0xFE01, 0x0023, 0x027B, 0x0481, 0x05A5, 0x0613, 0x065C, 
    0x0681, 0x0682, 0x0662, 0x0622, 0x05C6, 0x0553, 0x04D2, 0x0449, 0x03C2, 0x0346, 0x02DC, 0x66CB, 0x6502, 0x6333, 
    0x6171, 0x5FD6, 0x5E7E, 0x5D8D, 0x5D26, 0x5D6C, 0x5E95, 0x60B9, 0x6CC0, 0x68EF, 0x6A72, 0x6BC1, 0x6CEC, 0x6DFB, 
    0x6EF3, 0x6FD8, 0x70AB, 0x7170, 0x7454, 0x7848, 0x7C37, 0x7F50, 0x80CB, 0x80F1, 0x80A5, 0x7FE1, 0x7EA2, 0x7CEF, 
    0x7AD3, 0x7862, 0x75B8, 0x72F0, 0x7028, 0x6D79, 0x6AF9, 0x68B9, 0xBD67, 0xBE20, 0xBE88, 0xBEB9, 0xBEC5, 0xBEB1, 
    0xBE7C, 0xBE21, 0xBDA5, 0xBC86, 0xBAFE, 0xC619, 0xEC32, 0xE8C2, 0xE5D2, 0xE340, 0xE0FA, 0xDEF5, 0xDD29, 0xDB91, 
    0xDA2A, 0xD5FC, 0xD142, 0xCD3A, 0xCA08, 0xC73A, 0xC481, 0xC1DE, 0xBF69, 0xBD3B, 0xBB6A, 0xBA08, 0xB922, 0xB8BE, 
    0xB8D5, 0xB959, 0xBA32, 0xBB41, 0xBC61, 0xCDBB, 0xCE20, 0xCF4C, 0xD10E, 0xD334, 0xD58C, 0xD7E6, 0xDA10, 0xDBD9, 
    0xDD0F, 0xDD82, 0xD5FE, 0xCDBB, 0xCC4D, 0xCB06, 0xC9E6, 0xC8F1, 0xC82A, 0xC793, 0xC72F, 0xC700, 0xC709, 0xC74D, 
    0xC7CE, 0xC88F, 0xCA62, 0xCDAD, 0xD1D1, 0xD630, 0xDA2D, 0xDD29, 0xDE85, 0xDE12, 0xDC4E, 0xD9A7, 0xD687, 0xD35A, 
    0xD08C, 0xCE88, 0xF12F, 0xEF3C, 0xEDDB, 0xECF5, 0xEC74, 0xEC44, 0xEC4D, 0xEC7B, 0xECB6, 0xECEA, 0xED00, 0xEEEF, 
    0xF12F, 0xF1AB, 0xF1E3, 0xF1EC, 0xF1D7, 0xF1B9, 0xF1A2, 0xF1A7, 0xF1DB, 0xF24F, 0xF318, 0xF447, 0xF5F0, 0xF926, 
    0xFE54, 0x048F, 0x0AED, 0x1084, 0x146A, 0x15B5, 0x1424, 0x107E, 0x0B5F, 0x0564, 0xFF2B, 0xF951, 0xF473, 0x1109, 
    0x0F4A, 0x0D65, 0x0B70, 0x097C, 0x079F, 0x05EC, 0x0478, 0x0355, 0x0298, 0x0254, 0x091E, 0x1109, 0x1335, 0x1536, 
    0x170E, 0x18BF, 0x1A4C, 0x1BB7, 0x1D03, 0x1E31, 0x1F45, 0x2041, 0x2127, 0x21F9, 0x2295, 0x22D8, 0x22CC, 0x2275, 
    0x21DC, 0x2107, 0x1FFE, 0x1EAA, 0x1D01, 0x1B18, 0x1908, 0x16E8, 0x14CD, 0x12D1, 0x0735, 0x05E7, 0x055A, 0x055E, 
    0x05C3, 0x065D, 0x06FA, 0x076D, 0x0785, 0x069F, 0x0568, 0x05AD, 0x09E0, 0x0F90, 0x1479, 0x198B, 0x1E04, 0x2123, 
    0x235D, 0x2594, 0x27AF, 0x2992, 0x2B23, 0x2C46, 0x2CE1, 0x2CD9, 0x2C13, 0x2A93, 0x287E, 0x25ED, 0x22FA, 0x1FBD, 
    0x1C4F, 0x18CA, 0x1546, 0x11DD, 0x0EA8, 0x0BBE, 0x093B, 0x030D, 0x02EA, 0x030A, 0x035A, 0x03C7, 0x043E, 0x04AC, 
    0x04FD, 0x0520, 0x050F, 0x0491, 0x0341, 0xFF69, 0xFBD6, 0xFAC8, 0xFA4E, 0xFA76, 0xFB4B, 0xFCBE, 0xFEA0, 0x00C9, 
    0x0314, 0x055A, 0x0775, 0x093F, 0x0A92, 0x0B48, 0x0B76, 0x0B56, 0x0AF3, 0x0A59, 0x0994, 0x08B1, 0x07BA, 0x06BD, 
    0x05C6, 0x04DF, 0x0416, 0x0377, 0x0ED0, 0x0FFA, 0x10F1, 0x11B9, 0x1255, 0x12CA, 0x1319, 0x1348, 0x135A, 0x1275, 
    0x1095, 0x0F02, 0x0F02, 0x0E5A, 0x0B4D, 0x076E, 0x03B7, 0x0126, 0xFF7A, 0xFDD8, 0xFC50, 0xFAF1, 0xF9CB, 0xF8EE, 
    0xF869, 0xF84E, 0xF8AC, 0xF97B, 0xFAA4, 0xFC17, 0xFDC7, 0xFFA6, 0x01A7, 0x03BB, 0x05D5, 0x07E8, 0x09E5, 0x0BBE, 
    0x0D66, 0x0000, 
};

JointIndex object_rs_Anim_00065CJointIndices[] = {
    { 0x0000, 0x0001, 0x0002 },
    { 0x0005, 0x002C, 0x0053 },
    { 0x007A, 0x00A1, 0x00C8 },
    { 0x0003, 0x0000, 0x00EF },
    { 0x0116, 0x013D, 0x0164 },
    { 0x018B, 0x01B2, 0x01D9 },
    { 0x0004, 0x0000, 0x0200 },
    { 0x0227, 0x024E, 0x0275 },
    { 0x029C, 0x02C3, 0x02EA },
};

AnimationHeader object_rs_Anim_00065C = { 
    { 39 }, object_rs_Anim_00065CFrameData,
    object_rs_Anim_00065CJointIndices, 5
};

Vtx object_rsVtx_000670[] = {
#include "assets/objects/object_rs/object_rsVtx_000670.vtx.inc"
};

Gfx object_rs_DL_001FA0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rs_TLUT_002EE8),
    gsDPLoadTextureBlock(object_rs_Tex_0030E8, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_rsVtx_000670[363], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 3, 8, 0),
    gsSP2Triangles(8, 3, 2, 0, 5, 4, 6, 0),
    gsSP1Triangle(8, 7, 6, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_rs_Tex_004668, G_IM_FMT_I, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsSPVertex(&object_rsVtx_000670[372], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 10, 7, 0, 11, 6, 9, 0),
    gsSP2Triangles(9, 8, 11, 0, 10, 0, 7, 0),
    gsSP2Triangles(4, 12, 5, 0, 6, 11, 4, 0),
    gsSP2Triangles(4, 13, 12, 0, 5, 12, 3, 0),
    gsSP2Triangles(5, 3, 0, 0, 5, 0, 10, 0),
    gsSP2Triangles(14, 15, 16, 0, 16, 17, 14, 0),
    gsSP2Triangles(14, 17, 7, 0, 7, 18, 14, 0),
    gsSP2Triangles(15, 19, 20, 0, 7, 2, 18, 0),
    gsSP2Triangles(1, 21, 19, 0, 21, 22, 20, 0),
    gsSP2Triangles(2, 19, 18, 0, 19, 21, 20, 0),
    gsSP2Triangles(2, 1, 19, 0, 20, 16, 15, 0),
    gsSP1Triangle(7, 0, 2, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rs_TLUT_002EE8),
    gsDPLoadTextureBlock(object_rs_Tex_0046E8, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x007C),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 30, 28, 0),
    gsSPEndDisplayList(),
};

Gfx object_rs_DL_0021F8[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_rsVtx_000670, 6, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rs_TLUT_002EE8),
    gsDPLoadTextureBlock(object_rs_Tex_0030E8, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_rsVtx_000670[6], 16, 6),
    gsSP2Triangles(6, 2, 7, 0, 8, 2, 0, 0),
    gsSP2Triangles(9, 10, 0, 0, 0, 4, 11, 0),
    gsSP2Triangles(12, 4, 13, 0, 14, 15, 1, 0),
    gsSP2Triangles(3, 16, 17, 0, 18, 1, 3, 0),
    gsSP2Triangles(5, 1, 19, 0, 20, 21, 5, 0),
    gsSPVertex(&object_rsVtx_000670[22], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 2, 0, 2, 6, 3, 0),
    gsSP2Triangles(4, 7, 8, 0, 8, 5, 4, 0),
    gsSP2Triangles(9, 10, 11, 0, 5, 6, 2, 0),
    gsSP2Triangles(12, 6, 5, 0, 13, 5, 14, 0),
    gsSP2Triangles(14, 15, 13, 0, 3, 6, 12, 0),
    gsSP2Triangles(12, 5, 13, 0, 3, 12, 16, 0),
    gsSP2Triangles(12, 17, 16, 0, 16, 18, 3, 0),
    gsSP2Triangles(3, 18, 0, 0, 17, 19, 20, 0),
    gsSP2Triangles(19, 21, 20, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 24, 1, 0, 7, 23, 8, 0),
    gsSP2Triangles(14, 21, 15, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 23, 7, 0, 29, 30, 22, 0),
    gsSPVertex(&object_rsVtx_000670[53], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 10, 8, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 17, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(23, 24, 21, 0, 24, 23, 25, 0),
    gsSP2Triangles(22, 21, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(30, 31, 26, 0),
    gsSPVertex(&object_rsVtx_000670[85], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(4, 3, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(8, 16, 6, 0, 17, 15, 14, 0),
    gsSP2Triangles(14, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(14, 13, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(13, 26, 25, 0, 25, 23, 13, 0),
    gsSP2Triangles(27, 28, 29, 0, 30, 29, 28, 0),
    gsSPVertex(&object_rsVtx_000670[116], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(16, 15, 18, 0, 18, 19, 20, 0),
    gsSP1Triangle(20, 16, 18, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rs_TLUT_002EE8),
    gsDPLoadTextureBlock(object_rs_Tex_003128, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(21, 22, 23, 0, 23, 24, 21, 0),
    gsSP2Triangles(25, 26, 27, 0, 27, 28, 25, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rs_TLUT_002EE8),
    gsDPLoadTextureBlock(object_rs_Tex_003168, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x00FC),
    gsSPVertex(&object_rsVtx_000670[145], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 8, 5, 0, 8, 9, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rs_TLUT_002EE8),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSP2Triangles(10, 11, 12, 0, 11, 10, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 16, 15, 0),
    gsSPEndDisplayList(),
};

Gfx object_rs_DL_0025F8[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_rsVtx_000670[337], 4, 0),
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rs_TLUT_002EE8),
    gsDPLoadTextureBlock(object_rs_Tex_0030E8, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_rsVtx_000670[341], 12, 4),
    gsSP2Triangles(4, 0, 5, 0, 6, 0, 7, 0),
    gsSP2Triangles(0, 1, 8, 0, 2, 9, 10, 0),
    gsSP2Triangles(2, 3, 11, 0, 12, 3, 0, 0),
    gsSP2Triangles(13, 14, 2, 0, 15, 1, 2, 0),
    gsSPVertex(&object_rsVtx_000670[353], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(0, 4, 3, 0, 2, 5, 0, 0),
    gsSP2Triangles(3, 4, 6, 0, 6, 7, 3, 0),
    gsSP2Triangles(4, 8, 6, 0, 6, 5, 9, 0),
    gsSP2Triangles(9, 7, 6, 0, 6, 8, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_rs_DL_002730[] = {
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_rsVtx_000670[310], 5, 0),
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rs_TLUT_002EE8),
    gsDPLoadTextureBlock(object_rs_Tex_003168, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x00FC),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_rsVtx_000670[315], 12, 5),
    gsSP2Triangles(5, 6, 0, 0, 7, 1, 3, 0),
    gsSP2Triangles(3, 8, 9, 0, 0, 1, 10, 0),
    gsSP2Triangles(0, 11, 12, 0, 13, 14, 4, 0),
    gsSP2Triangles(4, 2, 15, 0, 16, 2, 0, 0),
    gsSPVertex(&object_rsVtx_000670[327], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(2, 4, 0, 0, 3, 5, 2, 0),
    gsSP2Triangles(6, 0, 4, 0, 7, 8, 5, 0),
    gsSP2Triangles(4, 9, 6, 0, 5, 3, 7, 0),
    gsSPEndDisplayList(),
};

Gfx object_rs_DL_002860[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_rsVtx_000670[263], 5, 0),
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rs_TLUT_002EE8),
    gsDPLoadTextureBlock(object_rs_Tex_003168, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x00FC),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_rsVtx_000670[268], 12, 5),
    gsSP2Triangles(0, 3, 5, 0, 6, 0, 7, 0),
    gsSP2Triangles(8, 9, 4, 0, 1, 10, 4, 0),
    gsSP2Triangles(11, 12, 2, 0, 2, 0, 13, 0),
    gsSP2Triangles(2, 14, 1, 0, 15, 0, 16, 0),
    gsSPVertex(&object_rsVtx_000670[280], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 3, 0, 3, 5, 2, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 6, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rs_TLUT_002EE8),
    gsDPLoadTextureBlock(object_rs_Tex_004568, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(8, 9, 10, 0, 11, 9, 8, 0),
    gsSP2Triangles(11, 12, 13, 0, 12, 14, 13, 0),
    gsSP2Triangles(8, 12, 11, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 15, 19, 0, 15, 17, 19, 0),
    gsSP2Triangles(18, 20, 21, 0, 17, 16, 20, 0),
    gsSP2Triangles(20, 16, 21, 0, 19, 22, 18, 0),
    gsSP2Triangles(19, 17, 22, 0, 18, 22, 20, 0),
    gsSP2Triangles(22, 17, 20, 0, 15, 23, 16, 0),
    gsSP2Triangles(15, 18, 23, 0, 18, 24, 23, 0),
    gsSP2Triangles(11, 25, 26, 0, 9, 11, 26, 0),
    gsSP2Triangles(26, 10, 9, 0, 26, 12, 10, 0),
    gsSP2Triangles(10, 12, 8, 0, 12, 26, 14, 0),
    gsSP2Triangles(26, 25, 14, 0, 27, 28, 29, 0),
    gsSPEndDisplayList(),
};

Gfx object_rs_DL_002A70[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_rsVtx_000670[237], 4, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rs_TLUT_002EE8),
    gsDPLoadTextureBlock(object_rs_Tex_0030E8, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_rsVtx_000670[241], 12, 4),
    gsSP2Triangles(4, 0, 5, 0, 6, 0, 7, 0),
    gsSP2Triangles(8, 1, 0, 0, 9, 10, 2, 0),
    gsSP2Triangles(11, 3, 2, 0, 0, 3, 12, 0),
    gsSP2Triangles(2, 13, 14, 0, 2, 1, 15, 0),
    gsSPVertex(&object_rsVtx_000670[253], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(3, 4, 2, 0, 2, 5, 0, 0),
    gsSP2Triangles(6, 4, 3, 0, 3, 7, 6, 0),
    gsSP2Triangles(6, 8, 4, 0, 9, 5, 6, 0),
    gsSP2Triangles(6, 7, 9, 0, 5, 8, 6, 0),
    gsSPEndDisplayList(),
};

Gfx object_rs_DL_002BA8[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_rsVtx_000670[210], 5, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rs_TLUT_002EE8),
    gsDPLoadTextureBlock(object_rs_Tex_003168, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x00FC),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_rsVtx_000670[215], 12, 5),
    gsSP2Triangles(0, 5, 6, 0, 3, 1, 7, 0),
    gsSP2Triangles(8, 9, 3, 0, 10, 1, 0, 0),
    gsSP2Triangles(11, 12, 0, 0, 4, 13, 14, 0),
    gsSP2Triangles(15, 2, 4, 0, 0, 2, 16, 0),
    gsSPVertex(&object_rsVtx_000670[227], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(2, 4, 0, 0, 0, 5, 3, 0),
    gsSP2Triangles(4, 2, 6, 0, 5, 7, 8, 0),
    gsSP2Triangles(6, 9, 4, 0, 8, 3, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_rs_DL_002CD8[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_rsVtx_000670[163], 5, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rs_TLUT_002EE8),
    gsDPLoadTextureBlock(object_rs_Tex_003168, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x00FC),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_rsVtx_000670[168], 12, 5),
    gsSP2Triangles(5, 3, 0, 0, 6, 0, 7, 0),
    gsSP2Triangles(4, 8, 9, 0, 4, 10, 1, 0),
    gsSP2Triangles(2, 11, 12, 0, 13, 0, 2, 0),
    gsSP2Triangles(1, 14, 2, 0, 15, 0, 16, 0),
    gsSPVertex(&object_rsVtx_000670[180], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 5, 0, 0, 4, 3, 0),
    gsSP2Triangles(6, 5, 4, 0, 5, 6, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_rs_TLUT_002EE8),
    gsDPLoadTextureBlock(object_rs_Tex_004568, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(8, 9, 10, 0, 10, 9, 11, 0),
    gsSP2Triangles(12, 13, 11, 0, 12, 14, 13, 0),
    gsSP2Triangles(11, 13, 10, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 17, 19, 0, 18, 15, 17, 0),
    gsSP2Triangles(20, 21, 19, 0, 21, 16, 15, 0),
    gsSP2Triangles(20, 16, 21, 0, 19, 22, 18, 0),
    gsSP2Triangles(22, 15, 18, 0, 21, 22, 19, 0),
    gsSP2Triangles(21, 15, 22, 0, 16, 23, 17, 0),
    gsSP2Triangles(23, 19, 17, 0, 23, 24, 19, 0),
    gsSP2Triangles(25, 26, 11, 0, 25, 11, 9, 0),
    gsSP2Triangles(9, 8, 25, 0, 8, 13, 25, 0),
    gsSP2Triangles(10, 13, 8, 0, 14, 25, 13, 0),
    gsSP2Triangles(14, 26, 25, 0, 27, 28, 29, 0),
    gsSPEndDisplayList(),
};

u64 object_rs_TLUT_002EE8[] = {
#include "assets/objects/object_rs/tlut_00002EE8.rgba16.inc.c"
};

u64 object_rs_Tex_0030E8[] = {
#include "assets/objects/object_rs/tex_000030E8.ci8.inc.c"
};

u64 object_rs_Tex_003128[] = {
#include "assets/objects/object_rs/tex_00003128.ci8.inc.c"
};

u64 object_rs_Tex_003168[] = {
#include "assets/objects/object_rs/tex_00003168.ci8.inc.c"
};

u64 gBombchuShopkeeperEyeOpenTex[] = {
#include "assets/objects/object_rs/eye_open.ci8.inc.c"
};

u64 gBombchuShopkeeperEyeHalfTex[] = {
#include "assets/objects/object_rs/eye_half.ci8.inc.c"
};

u64 gBombchuShopkeeperEyeClosedTex[] = {
#include "assets/objects/object_rs/eye_closed.ci8.inc.c"
};

u64 object_rs_Tex_004568[] = {
#include "assets/objects/object_rs/tex_00004568.ci8.inc.c"
};

u64 object_rs_Tex_004668[] = {
#include "assets/objects/object_rs/tex_00004668.i8.inc.c"
};

u64 object_rs_Tex_0046E8[] = {
#include "assets/objects/object_rs/tex_000046E8.ci8.inc.c"
};

StandardLimb object_rs_Limb_0047E8 = { 
    { 0, 3837, 50 }, 0x01, LIMB_DONE,
    object_rs_DL_001FA0
};

StandardLimb object_rs_Limb_0047F4 = { 
    { 1400, -100, 650 }, 0x02, 0x04,
    object_rs_DL_002A70
};

StandardLimb object_rs_Limb_004800 = { 
    { 1050, 0, 0 }, 0x03, LIMB_DONE,
    object_rs_DL_002BA8
};

StandardLimb object_rs_Limb_00480C = { 
    { 751, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_rs_DL_002CD8
};

StandardLimb object_rs_Limb_004818 = { 
    { 1400, -100, -650 }, 0x05, 0x07,
    object_rs_DL_0025F8
};

StandardLimb object_rs_Limb_004824 = { 
    { 1050, 0, 0 }, 0x06, LIMB_DONE,
    object_rs_DL_002730
};

StandardLimb object_rs_Limb_004830 = { 
    { 750, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_rs_DL_002860
};

StandardLimb object_rs_Limb_00483C = { 
    { 2004, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_rs_DL_0021F8
};

void* object_rs_Skel_004868Limbs[] = {
    &object_rs_Limb_0047E8,
    &object_rs_Limb_0047F4,
    &object_rs_Limb_004800,
    &object_rs_Limb_00480C,
    &object_rs_Limb_004818,
    &object_rs_Limb_004824,
    &object_rs_Limb_004830,
    &object_rs_Limb_00483C,
};

FlexSkeletonHeader object_rs_Skel_004868 = { 
    { object_rs_Skel_004868Limbs, ARRAY_COUNT(object_rs_Skel_004868Limbs) }, 8
};

