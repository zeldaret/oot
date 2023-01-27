#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_js.h"

s16 sCarpetMerchantIdleAnimFrameData[] = {
    0x0000, 0x4000, 0xE150, 0xF4AA, 0x00B7, 0xEF78, 0x1B48, 0x0413, 0x049F, 0x05D7, 0x0718, 0x07BE, 0x0793, 0x06FB, 
    0x0639, 0x0593, 0x054C, 0xFB1C, 0xFB8E, 0xFCA0, 0xFDEB, 0xFF0A, 0xFF98, 0xFF29, 0xFE08, 0xFCDE, 0xFC55, 0x0000, 
    0x0031, 0x00A7, 0x0139, 0x01BD, 0x020A, 0x01FC, 0x01B3, 0x0160, 0x0139, 0x0850, 0x085B, 0x0876, 0x0896, 0x08B3, 
    0x08C4, 0x08C1, 0x08B1, 0x089F, 0x0896, 0xF334, 0xF345, 0xF36E, 0xF3A1, 0xF3D1, 0xF3EC, 0xF3E8, 0xF3CD, 0xF3AF, 
    0xF3A1, 0x7E73, 0x7E51, 0x7DFF, 0x7D96, 0x7D36, 0x7CFD, 0x7D07, 0x7D3E, 0x7D7A, 0x7D96, 0xD4E9, 0xD548, 0xD633, 
    0xD75A, 0xD86A, 0xD90B, 0xD8EF, 0xD855, 0xD7AA, 0xD75A, 0xF7D6, 0xFA2E, 0x0140, 0x09B7, 0x0882, 0xFA81, 0xF14F, 
    0xF094, 0xF37D, 0xF548, 0x0D00, 0x1037, 0x181B, 0x2230, 0x2B03, 0x2E60, 0x2DAA, 0x2D0C, 0x2CDF, 0x2CC5, 0x7ED0, 
    0x7FF0, 0x8036, 0x7B2D, 0x6C25, 0x5521, 0x4839, 0x46ED, 0x4AC3, 0x4D3E, 0xCAEA, 0xC52D, 0xBC67, 0xBBC6, 0xC63A, 
    0xD48B, 0xDCBE, 0xDD6C, 0xDA6B, 0xD88F, 0x05B4, 0x07D9, 0x0A8F, 0x0BAF, 0x0CC4, 0x0DC2, 0x0E9D, 0x0F49, 0x0FB9, 
    0x0FE1, 0x0411, 0xFB41, 0xF28E, 0xF3D0, 0xF6AE, 0xFA80, 0xFE9E, 0x025F, 0x051B, 0x0629, 0xFE9A, 0x08D3, 0x1148, 
    0x0BE7, 0x03B3, 0xFA00, 0xF023, 0xE772, 0xE141, 0xDEE5, 0x3B45, 0x3B6F, 0x3BD2, 0x3C4B, 0x3CB3, 0x3CE6, 0x3CBC, 
    0x3C50, 0x3BE0, 0x3BAD, 0x0000, 
};

JointIndex sCarpetMerchantIdleAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0007, 0x0001 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0011 },
    { 0x0001, 0x001B, 0x0001 },
    { 0x0025, 0x002F, 0x0039 },
    { 0x0002, 0x0000, 0x0043 },
    { 0x0003, 0x0004, 0x0005 },
    { 0x004D, 0x0057, 0x0061 },
    { 0x0006, 0x0000, 0x006B },
    { 0x0075, 0x007F, 0x0089 },
    { 0x0000, 0x0000, 0x0093 },
};

AnimationHeader gCarpetMerchantIdleAnim = { 
    { 10 }, sCarpetMerchantIdleAnimFrameData,
    sCarpetMerchantIdleAnimJointIndices, 7
};

u8 object_js_possiblePadding_00019C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 sCarpetMerchantSlappingKneeAnimFrameData[] = {
    0x0000, 0x4000, 0xE150, 0xF4AA, 0x00B7, 0xEF78, 0x1B48, 0x05B4, 0x0411, 0xFE9A, 0x0413, 0x03AD, 0x033C, 0x02BA, 
    0x0222, 0x016F, 0x0085, 0xFF6A, 0xFE43, 0xFD37, 0xFC6C, 0xFBCC, 0xFB55, 0xFB44, 0xFBD9, 0xFD55, 0xFF7D, 0x01DA, 
    0x03F2, 0x054C, 0x05C2, 0x05A5, 0x052E, 0x0495, 0x0413, 0xFB1C, 0xFAA2, 0xFA3A, 0xF9E6, 0xF9A8, 0xF983, 0xF978, 
    0xF98A, 0xF9BB, 0xFA0D, 0xFA82, 0xFB1C, 0xFD16, 0x008B, 0x03D5, 0x054C, 0x04FF, 0x0430, 0x02FF, 0x018D, 0xFFFD, 
    0xFE6E, 0xFD03, 0xFBDD, 0xFB1C, 0x0000, 0x008D, 0x0135, 0x01CE, 0x0230, 0x0232, 0x01D6, 0x0144, 0x008C, 0xFFBF, 
    0xFEEE, 0xFE27, 0xFD7D, 0xFCFF, 0xFCBE, 0xFCB5, 0xFCD1, 0xFD0C, 0xFD5F, 0xFDC5, 0xFE38, 0xFEB0, 0xFF29, 0xFF9B, 
    0x0000, 0x0850, 0x0870, 0x0896, 0x08B7, 0x08CC, 0x08CC, 0x08B9, 0x0899, 0x0870, 0x0841, 0x0810, 0x07E0, 0x07B5, 
    0x0795, 0x0784, 0x0782, 0x0789, 0x0798, 0x07AE, 0x07C7, 0x07E4, 0x0801, 0x081E, 0x0839, 0x0850, 0xF334, 0xF365, 
    0xF3A0, 0xF3D7, 0xF3FA, 0xF3FB, 0xF3DA, 0xF3A5, 0xF365, 0xF31E, 0xF2D7, 0xF296, 0xF25E, 0xF236, 0xF221, 0xF21E, 
    0xF227, 0xF23A, 0xF255, 0xF276, 0xF29B, 0xF2C3, 0xF2EB, 0xF311, 0xF334, 0x7E73, 0x7E11, 0x7D99, 0x7D2A, 0x7CE0, 
    0x7CDF, 0x7D23, 0x7D8E, 0x7E11, 0x7EA0, 0x7F2E, 0x7FB2, 0x8022, 0x8074, 0x809E, 0x80A4, 0x8091, 0x806B, 0x8035, 
    0x7FF2, 0x7FA7, 0x7F57, 0x7F06, 0x7EB9, 0x7E73, 0xD4E9, 0xD5FF, 0xD751, 0xD88E, 0xD95C, 0xD961, 0xD89F, 0xD771, 
    0xD5FE, 0xD46B, 0xD2D9, 0xD166, 0xD02E, 0xCF4B, 0xCED6, 0xCEC6, 0xCEF8, 0xCF61, 0xCFF8, 0xD0B2, 0xD185, 0xD265, 
    0xD349, 0xD423, 0xD4E9, 0xF7D6, 0xF7B3, 0xF78B, 0xF767, 0xF751, 0xF750, 0xF765, 0xF787, 0xF7B3, 0xF7E6, 0xF81C, 
    0xF850, 0xF87F, 0xF8A2, 0xF8B5, 0xF8B7, 0xF8AF, 0xF89F, 0xF887, 0xF86B, 0xF84C, 0xF82C, 0xF80D, 0xF7F0, 0xF7D6, 
    0x0D00, 0x0CD2, 0x0C9B, 0x0C68, 0x0C47, 0x0C46, 0x0C65, 0x0C96, 0x0CD3, 0x0D15, 0x0D57, 0x0D95, 0x0DC9, 0x0DEF, 
    0x0E02, 0x0E05, 0x0DFC, 0x0DEB, 0x0DD2, 0x0DB3, 0x0D90, 0x0D6A, 0x0D45, 0x0D21, 0x0D00, 0x7ED0, 0x7E79, 0x7E0F, 
    0x7DAE, 0x7D6F, 0x7D6E, 0x7DA9, 0x7E06, 0x7E79, 0x7EF8, 0x7F79, 0x7FF1, 0x8058, 0x80A4, 0x80CC, 0x80D1, 0x80C0, 
    0x809D, 0x806A, 0x802D, 0x7FE7, 0x7F9E, 0x7F55, 0x7F0F, 0x7ED0, 0xCAEA, 0xCBEE, 0xCD29, 0xCE4D, 0xCF0A, 0xCF0E, 
    0xCE5D, 0xCD46, 0xCBED, 0xCA74, 0xC8F8, 0xC797, 0xC66C, 0xC591, 0xC521, 0xC511, 0xC542, 0xC5A7, 0xC638, 0xC6EB, 
    0xC7B4, 0xC88A, 0xC962, 0xCA30, 0xCAEA, 0x3B45, 0x3CF3, 0x3F43, 0x41B3, 0x43C2, 0x44EE, 0x4538, 0x450A, 0x447A, 
    0x439F, 0x4291, 0x4167, 0x3FD7, 0x3DC2, 0x3B7A, 0x3950, 0x3797, 0x36A1, 0x3665, 0x3695, 0x371E, 0x37EE, 0x38F1, 
    0x3A14, 0x3B45, 
};

JointIndex sCarpetMerchantSlappingKneeAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x000A, 0x0001 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0023 },
    { 0x0001, 0x003C, 0x0001 },
    { 0x0055, 0x006E, 0x0087 },
    { 0x0002, 0x0000, 0x00A0 },
    { 0x0003, 0x0004, 0x0005 },
    { 0x00B9, 0x00D2, 0x00EB },
    { 0x0006, 0x0000, 0x0104 },
    { 0x0007, 0x0008, 0x0009 },
    { 0x0000, 0x0000, 0x011D },
};

AnimationHeader gCarpetMerchantSlappingKneeAnim = { 
    { 25 }, sCarpetMerchantSlappingKneeAnimFrameData,
    sCarpetMerchantSlappingKneeAnimJointIndices, 10
};

Vtx object_jsVtx_000470[] = {
#include "assets/objects/object_js/object_jsVtx_000470.vtx.inc"
};

Gfx gCarpetMerchantBlanketAndLowerBodyDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCarpetMerchantTLUT),
    gsDPLoadTextureBlock(gCarpetMerchantPantsTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_jsVtx_000470, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 12, 10, 0, 13, 10, 12, 0),
    gsSP2Triangles(13, 12, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 12, 9, 0, 14, 12, 18, 0),
    gsSP2Triangles(8, 19, 20, 0, 21, 19, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 6, 20, 0, 20, 6, 8, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_jsVtx_000470[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 13, 17, 16, 0),
    gsSP2Triangles(14, 13, 16, 0, 21, 22, 23, 0),
    gsSP2Triangles(22, 21, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 28, 26, 0, 29, 30, 31, 0),
    gsSPVertex(&object_jsVtx_000470[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(10, 16, 17, 0, 12, 16, 10, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 1, 0, 0),
    gsSP2Triangles(18, 28, 19, 0, 21, 29, 22, 0),
    gsSP1Triangle(27, 30, 1, 0),
    gsSPVertex(&object_jsVtx_000470[95], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 7, 6, 0, 13, 9, 14, 0),
    gsSP2Triangles(9, 13, 10, 0, 15, 7, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCarpetMerchantTLUT),
    gsDPLoadTextureBlock(gCarpetMerchantHairTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_jsVtx_000470[127], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(19, 30, 31, 0),
    gsSPVertex(&object_jsVtx_000470[159], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 8, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(0, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_jsVtx_000470[191], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 11, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 11, 24, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&object_jsVtx_000470[222], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(9, 18, 19, 0, 20, 21, 22, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCarpetMerchantTLUT),
    gsDPLoadTextureBlock(gCarpetMerchantFootTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x003C),
    gsSPVertex(&object_jsVtx_000470[245], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 11, 0),
    gsSP2Triangles(14, 15, 13, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 19, 17, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 15, 14, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 27, 28, 0, 26, 27, 24, 0),
    gsSP1Triangle(25, 29, 30, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCarpetMerchantTLUT),
    gsDPLoadTextureBlock(gCarpetMerchantSkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_jsVtx_000470[276], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCarpetMerchantTLUT),
    gsDPLoadTextureBlock(gCarpetMerchantFootSoleTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(6, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 17, 15, 0),
    gsSP2Triangles(17, 18, 15, 0, 19, 20, 21, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCarpetMerchantTLUT),
    gsDPLoadTextureBlock(gCarpetMerchantSkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_jsVtx_000470[298], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 5, 4, 0),
    gsSP2Triangles(5, 8, 6, 0, 7, 9, 5, 0),
    gsSP2Triangles(7, 10, 9, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 12, 15, 0),
    gsSP2Triangles(12, 16, 17, 0, 18, 17, 16, 0),
    gsSP2Triangles(18, 19, 17, 0, 12, 14, 16, 0),
    gsSPEndDisplayList(),
};

Gfx gCarpetMerchantUpperHairDL[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_jsVtx_000470[639], 15, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCarpetMerchantTLUT),
    gsDPLoadTextureBlock(gCarpetMerchantHairTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_jsVtx_000470[654], 16, 15),
    gsSP2Triangles(0, 4, 15, 0, 16, 7, 17, 0),
    gsSP2Triangles(1, 18, 19, 0, 20, 8, 9, 0),
    gsSP2Triangles(2, 21, 22, 0, 23, 10, 3, 0),
    gsSP2Triangles(11, 13, 24, 0, 25, 26, 11, 0),
    gsSP2Triangles(8, 27, 14, 0, 28, 5, 12, 0),
    gsSP1Triangle(8, 29, 30, 0),
    gsSPVertex(&object_jsVtx_000470[670], 2, 15),
    gsSP1Triangle(15, 6, 16, 0),
    gsSPVertex(&object_jsVtx_000470[672], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 10, 0, 14, 15, 16, 0),
    gsSP2Triangles(7, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 25, 26, 0),
    gsSP2Triangles(10, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_jsVtx_000470[704], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx gCarpetMerchantLowerHairDL[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_jsVtx_000470[716], 17, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCarpetMerchantTLUT),
    gsDPLoadTextureBlock(gCarpetMerchantHairTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_jsVtx_000470[733], 15, 17),
    gsSP2Triangles(17, 18, 0, 0, 19, 20, 4, 0),
    gsSP2Triangles(21, 1, 5, 0, 22, 23, 7, 0),
    gsSP2Triangles(24, 25, 2, 0, 3, 26, 8, 0),
    gsSP2Triangles(27, 28, 10, 0, 11, 29, 13, 0),
    gsSP1Triangle(30, 10, 31, 0),
    gsSPVertex(&object_jsVtx_000470[748], 3, 17),
    gsSP2Triangles(17, 12, 15, 0, 14, 18, 6, 0),
    gsSP1Triangle(19, 16, 9, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCarpetMerchantTLUT),
    gsDPLoadTextureBlock(gCarpetMerchantHatTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_jsVtx_000470[751], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(3, 1, 0, 0, 4, 5, 3, 0),
    gsSP2Triangles(4, 6, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(6, 10, 5, 0, 1, 11, 2, 0),
    gsSP2Triangles(12, 11, 13, 0, 11, 1, 13, 0),
    gsSP2Triangles(8, 12, 13, 0, 8, 7, 12, 0),
    gsSPEndDisplayList(),
};

Gfx gCarpetMerchantTorsoDL[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_jsVtx_000470[583], 8, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCarpetMerchantTLUT),
    gsDPLoadTextureBlock(gCarpetMerchantShirtTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_jsVtx_000470[591], 19, 8),
    gsSP2Triangles(8, 0, 9, 0, 10, 11, 0, 0),
    gsSP2Triangles(0, 12, 4, 0, 0, 1, 13, 0),
    gsSP2Triangles(4, 14, 15, 0, 16, 17, 6, 0),
    gsSP2Triangles(18, 2, 3, 0, 6, 19, 3, 0),
    gsSP2Triangles(3, 20, 21, 0, 22, 3, 23, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCarpetMerchantTLUT),
    gsDPLoadTextureBlock(gCarpetMerchantChestTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsSP2Triangles(24, 7, 25, 0, 26, 7, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCarpetMerchantTLUT),
    gsDPLoadTextureBlock(gCarpetMerchantShirtTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsSPVertex(&object_jsVtx_000470[610], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(1, 0, 5, 0, 6, 7, 5, 0),
    gsSP2Triangles(6, 5, 8, 0, 7, 9, 10, 0),
    gsSP2Triangles(8, 5, 0, 0, 2, 1, 3, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 16, 15, 20, 0),
    gsSP2Triangles(15, 19, 20, 0, 15, 14, 12, 0),
    gsSP2Triangles(21, 12, 11, 0, 13, 12, 14, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCarpetMerchantTLUT),
    gsDPLoadTextureBlock(gCarpetMerchantChestTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsSP2Triangles(22, 23, 24, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 26, 22, 0, 27, 22, 26, 0),
    gsSP1Triangle(27, 26, 28, 0),
    gsSPEndDisplayList(),
};

Gfx gCarpetMerchantHeadDL[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_jsVtx_000470[318], 22, 0),
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCarpetMerchantTLUT),
    gsDPLoadTextureBlock(gCarpetMerchantHairTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_jsVtx_000470[340], 8, 22),
    gsSP2Triangles(0, 22, 23, 0, 24, 25, 2, 0),
    gsSP2Triangles(26, 0, 3, 0, 27, 28, 1, 0),
    gsSP1Triangle(29, 5, 0, 0),
    gsSPVertex(&object_jsVtx_000470[348], 8, 22),
    gsSP2Triangles(4, 8, 22, 0, 10, 23, 24, 0),
    gsSP2Triangles(25, 9, 11, 0, 12, 14, 26, 0),
    gsSP2Triangles(27, 28, 13, 0, 29, 15, 16, 0),
    gsSPVertex(&object_jsVtx_000470[356], 8, 22),
    gsSP2Triangles(18, 6, 22, 0, 19, 23, 24, 0),
    gsSP2Triangles(17, 20, 25, 0, 16, 26, 27, 0),
    gsSP1Triangle(28, 29, 21, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCarpetMerchantTLUT),
    gsDPLoadTextureBlock(gCarpetMerchantSkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_jsVtx_000470[364], 4, 22),
    gsSP2Triangles(7, 22, 23, 0, 24, 25, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCarpetMerchantTLUT),
    gsDPLoadTextureBlock(gCarpetMerchantHairTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_jsVtx_000470[368], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 11, 13, 0, 14, 11, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 5, 0),
    gsSP2Triangles(23, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_jsVtx_000470[400], 19, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCarpetMerchantTLUT),
    gsDPLoadTextureBlock(gCarpetMerchantSkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(3, 4, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(5, 4, 9, 0, 5, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 13, 12, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 16, 18, 17, 0),
    gsSP1Triangle(17, 18, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gCarpetMerchantUpperArmRightDL[] = {
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_jsVtx_000470[559], 4, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCarpetMerchantTLUT),
    gsDPLoadTextureBlock(gCarpetMerchantSkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_jsVtx_000470[563], 12, 4),
    gsSP2Triangles(4, 0, 1, 0, 5, 6, 1, 0),
    gsSP2Triangles(7, 2, 8, 0, 9, 3, 2, 0),
    gsSP2Triangles(10, 2, 11, 0, 1, 3, 12, 0),
    gsSP2Triangles(1, 13, 14, 0, 2, 0, 15, 0),
    gsSPVertex(&object_jsVtx_000470[575], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(4, 5, 2, 0, 6, 1, 0, 0),
    gsSP2Triangles(4, 3, 6, 0, 6, 7, 4, 0),
    gsSP2Triangles(2, 5, 0, 0, 0, 7, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gCarpetMerchantForearmRightDL[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_jsVtx_000470[535], 4, 0),
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCarpetMerchantTLUT),
    gsDPLoadTextureBlock(gCarpetMerchantSkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_jsVtx_000470[539], 20, 4),
    gsSP2Triangles(0, 4, 5, 0, 6, 7, 1, 0),
    gsSP2Triangles(8, 9, 0, 0, 1, 10, 11, 0),
    gsSP2Triangles(12, 2, 1, 0, 0, 2, 13, 0),
    gsSP2Triangles(14, 3, 0, 0, 1, 3, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCarpetMerchantTLUT),
    gsDPLoadTextureBlock(gCarpetMerchantBraceletTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 16, 0),
    gsSP2Triangles(17, 21, 18, 0, 22, 21, 19, 0),
    gsSP2Triangles(16, 23, 19, 0, 18, 23, 16, 0),
    gsSP2Triangles(22, 18, 21, 0, 20, 19, 21, 0),
    gsSPEndDisplayList(),
};

Gfx gCarpetMerchantRightHandDL[] = {
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_jsVtx_000470[501], 4, 0),
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCarpetMerchantTLUT),
    gsDPLoadTextureBlock(gCarpetMerchantHandTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_jsVtx_000470[505], 18, 4),
    gsSP2Triangles(0, 1, 4, 0, 5, 6, 0, 0),
    gsSP2Triangles(2, 7, 8, 0, 9, 3, 2, 0),
    gsSP2Triangles(3, 10, 11, 0, 12, 13, 2, 0),
    gsSP2Triangles(0, 14, 15, 0, 16, 17, 3, 0),
    gsSP2Triangles(1, 18, 19, 0, 2, 0, 20, 0),
    gsSP1Triangle(21, 1, 3, 0),
    gsSPVertex(&object_jsVtx_000470[523], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 6, 7, 5, 0),
    gsSP2Triangles(8, 9, 4, 0, 8, 0, 9, 0),
    gsSP2Triangles(0, 10, 9, 0, 2, 9, 10, 0),
    gsSP2Triangles(2, 10, 0, 0, 6, 3, 7, 0),
    gsSP2Triangles(11, 6, 4, 0, 1, 0, 8, 0),
    gsSP2Triangles(5, 7, 3, 0, 11, 4, 9, 0),
    gsSP1Triangle(8, 4, 1, 0),
    gsSPEndDisplayList(),
};

Gfx gCarpetMerchantUpperArmLeftDL[] = {
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_jsVtx_000470[477], 4, 0),
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCarpetMerchantTLUT),
    gsDPLoadTextureBlock(gCarpetMerchantSkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_jsVtx_000470[481], 12, 4),
    gsSP2Triangles(0, 1, 4, 0, 0, 5, 6, 0),
    gsSP2Triangles(7, 2, 8, 0, 2, 3, 9, 0),
    gsSP2Triangles(10, 2, 11, 0, 12, 3, 0, 0),
    gsSP2Triangles(13, 14, 0, 0, 15, 1, 2, 0),
    gsSPVertex(&object_jsVtx_000470[493], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(0, 5, 3, 0, 2, 1, 6, 0),
    gsSP2Triangles(6, 4, 3, 0, 3, 7, 6, 0),
    gsSP2Triangles(2, 5, 0, 0, 6, 7, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gCarpetMerchantForearmLeftDL[] = {
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_jsVtx_000470[453], 4, 0),
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCarpetMerchantTLUT),
    gsDPLoadTextureBlock(gCarpetMerchantSkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_jsVtx_000470[457], 20, 4),
    gsSP2Triangles(4, 5, 0, 0, 1, 6, 7, 0),
    gsSP2Triangles(0, 8, 9, 0, 10, 11, 1, 0),
    gsSP2Triangles(1, 2, 12, 0, 13, 2, 0, 0),
    gsSP2Triangles(0, 3, 14, 0, 15, 3, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCarpetMerchantTLUT),
    gsDPLoadTextureBlock(gCarpetMerchantBraceletTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsSP2Triangles(16, 17, 18, 0, 18, 19, 20, 0),
    gsSP2Triangles(16, 21, 17, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 23, 18, 0, 18, 23, 16, 0),
    gsSP2Triangles(21, 16, 22, 0, 21, 20, 19, 0),
    gsSPEndDisplayList(),
};

Gfx gCarpetMerchantLeftHandDL[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_jsVtx_000470[419], 4, 0),
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCarpetMerchantTLUT),
    gsDPLoadTextureBlock(gCarpetMerchantHandTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_jsVtx_000470[423], 18, 4),
    gsSP2Triangles(4, 0, 1, 0, 1, 5, 6, 0),
    gsSP2Triangles(7, 8, 2, 0, 2, 3, 9, 0),
    gsSP2Triangles(10, 11, 3, 0, 2, 12, 13, 0),
    gsSP2Triangles(14, 15, 1, 0, 3, 16, 17, 0),
    gsSP2Triangles(18, 19, 0, 0, 20, 1, 2, 0),
    gsSP1Triangle(3, 0, 21, 0),
    gsSPVertex(&object_jsVtx_000470[441], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 4, 3, 0, 3, 7, 6, 0),
    gsSP2Triangles(4, 8, 9, 0, 8, 2, 9, 0),
    gsSP2Triangles(8, 10, 2, 0, 10, 8, 0, 0),
    gsSP2Triangles(2, 10, 0, 0, 7, 5, 6, 0),
    gsSP2Triangles(4, 6, 11, 0, 9, 2, 1, 0),
    gsSP2Triangles(5, 7, 3, 0, 8, 4, 11, 0),
    gsSP1Triangle(1, 4, 9, 0),
    gsSPEndDisplayList(),
};

u64 gCarpetMerchantTLUT[] = {
#include "assets/objects/object_js/tlut.rgba16.inc.c"
};

u64 gCarpetMerchantPantsTex[] = {
#include "assets/objects/object_js/pants.ci8.inc.c"
};

u64 gCarpetMerchantHairTex[] = {
#include "assets/objects/object_js/hair.ci8.inc.c"
};

u64 gCarpetMerchantFootTex[] = {
#include "assets/objects/object_js/foot.ci8.inc.c"
};

u64 gCarpetMerchantSkinGradientTex[] = {
#include "assets/objects/object_js/skin_gradient.ci8.inc.c"
};

u64 gCarpetMerchantFootSoleTex[] = {
#include "assets/objects/object_js/foot_sole.ci8.inc.c"
};

u64 gCarpetMerchantHandTex[] = {
#include "assets/objects/object_js/hand.ci8.inc.c"
};

u64 gCarpetMerchantBraceletTex[] = {
#include "assets/objects/object_js/bracelet.ci8.inc.c"
};

u64 gCarpetMerchantShirtTex[] = {
#include "assets/objects/object_js/shirt.ci8.inc.c"
};

u64 gCarpetMerchantChestTex[] = {
#include "assets/objects/object_js/chest.ci8.inc.c"
};

u64 gCarpetMerchantHatTex[] = {
#include "assets/objects/object_js/hat.ci8.inc.c"
};

StandardLimb gCarpetMerchantRootLimb = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    gCarpetMerchantBlanketAndLowerBodyDL
};

StandardLimb gCarpetMerchantTopRootLimb = { 
    { 0, 3330, 622 }, 0x02, 0x04,
    NULL
};

StandardLimb gCarpetMerchantLowerHairLimb = { 
    { 0, 0, 0 }, LIMB_DONE, 0x03,
    gCarpetMerchantLowerHairDL
};

StandardLimb gCarpetMerchantUpperHairLimb = { 
    { 700, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gCarpetMerchantUpperHairDL
};

StandardLimb gCarpetMerchantTorsoLimb = { 
    { 0, 730, -378 }, 0x05, LIMB_DONE,
    gCarpetMerchantTorsoDL
};

StandardLimb gCarpetMerchantUpperArmLeftLimb = { 
    { 1372, 190, 750 }, 0x06, 0x08,
    gCarpetMerchantUpperArmLeftDL
};

StandardLimb gCarpetMerchantForearmLeftLimb = { 
    { 900, 0, 0 }, 0x07, LIMB_DONE,
    gCarpetMerchantForearmLeftDL
};

StandardLimb gCarpetMerchantLeftHandLimb = { 
    { 850, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gCarpetMerchantLeftHandDL
};

StandardLimb gCarpetMerchantUpperArmRightLimb = { 
    { 1372, 190, -750 }, 0x09, 0x0B,
    gCarpetMerchantUpperArmRightDL
};

StandardLimb gCarpetMerchantForearmRightLimb = { 
    { 900, 0, 0 }, 0x0A, LIMB_DONE,
    gCarpetMerchantForearmRightDL
};

StandardLimb gCarpetMerchantRightHandLimb = { 
    { 850, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gCarpetMerchantRightHandDL
};

StandardLimb gCarpetMerchantHeadLimb = { 
    { 1600, 1100, 0 }, LIMB_DONE, LIMB_DONE,
    gCarpetMerchantHeadDL
};

void* gCarpetMerchantSkelLimbs[] = {
    &gCarpetMerchantRootLimb,
    &gCarpetMerchantTopRootLimb,
    &gCarpetMerchantLowerHairLimb,
    &gCarpetMerchantUpperHairLimb,
    &gCarpetMerchantTorsoLimb,
    &gCarpetMerchantUpperArmLeftLimb,
    &gCarpetMerchantForearmLeftLimb,
    &gCarpetMerchantLeftHandLimb,
    &gCarpetMerchantUpperArmRightLimb,
    &gCarpetMerchantForearmRightLimb,
    &gCarpetMerchantRightHandLimb,
    &gCarpetMerchantHeadLimb,
};

FlexSkeletonHeader gCarpetMerchantSkel = { 
    { gCarpetMerchantSkelLimbs, ARRAY_COUNT(gCarpetMerchantSkelLimbs) }, 11
};

u8 object_js_possiblePadding_005EAC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

CamData gCarpetMerchantColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gCarpetMerchantColSurfaceType[] = {
    { 0x00000000, 0x000007CD },
};

CollisionPoly gCarpetMerchantColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0x0000},
};

Vec3s gCarpetMerchantColVertices[] = {
    {  -5500,      0,  -5500 },
    {  -5500,      0,   5500 },
    {   5500,      0,   5500 },
    {   5500,      0,  -5500 },
};

CollisionHeader gCarpetMerchantCol = { 
    { -5500, 0, -5500 },
    { 5500, 0, 5500 },
    4, gCarpetMerchantColVertices,
    2, gCarpetMerchantColPolygons,
    gCarpetMerchantColSurfaceType,
    gCarpetMerchantColCamDataList,
    0, NULL
};

