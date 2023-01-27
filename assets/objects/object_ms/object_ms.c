#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_ms.h"

s16 sBeanSalesmanEatingAnimFrameData[] = {
    0x0000, 0xCCA3, 0xCCEC, 0xCDF8, 0xD0F6, 0xD70B, 0xDCEA, 0xD6C9, 0xCF8A, 0xD0C0, 0xEA8B, 0xFE65, 0xFF4D, 0xFF15, 
    0xFDE1, 0xFBC0, 0xF8BB, 0xF4F5, 0xF0C5, 0xECC7, 0xE9CA, 0xE8A1, 0xE922, 0xEA84, 0xEC8C, 0xEEFD, 0xF19B, 0xF434, 
    0xF6A3, 0xF8D1, 0xFAB1, 0xFC40, 0xFD7C, 0xFE65, 0xFF26, 0xFFC3, 0x0003, 0xFFA7, 0xFE65, 0xFAB2, 0xF4B4, 0xEF07, 
    0xEC5A, 0xEFAC, 0xF7C6, 0xFF6A, 0x009C, 0xF5DC, 0xE235, 0xD347, 0xCCA3, 0xCB25, 0xCBDF, 0xCE26, 0xCE57, 0xCDB9, 
    0xCB2B, 0xC822, 0xC686, 0xC74B, 0xC989, 0xCAB6, 0xC9FC, 0xCC66, 0xCC61, 0xCC06, 0xCB68, 0xCAA4, 0xC9D3, 0xC913, 
    0xC877, 0xC80B, 0xC7D0, 0xC7BD, 0xC7C8, 0xC7E9, 0xC820, 0xC86F, 0xC8D3, 0xC94C, 0xC9D4, 0xCA65, 0xCAF7, 0xCB83, 
    0xCC00, 0xCC66, 0xCCA7, 0xCCC1, 0xCCBB, 0xCC99, 0xCC66, 0xCC15, 0xCBD2, 0xCBBF, 0xCB97, 0xCAFA, 0xCA5F, 0xCA22, 
    0xC9AE, 0xC8C0, 0xC933, 0xCBB0, 0xCE26, 0xCEE8, 0xCE86, 0xB29E, 0xB22F, 0xB0F3, 0xADE4, 0xA7C5, 0xA1E3, 0xA822, 
    0xAF8F, 0xAE4F, 0x93FB, 0x8020, 0x7F42, 0x7F81, 0x80BB, 0x82E3, 0x85F2, 0x89C5, 0x8E05, 0x9214, 0x951D, 0x964A, 
    0x95C7, 0x945E, 0x924B, 0x8FCD, 0x8D22, 0x8A7B, 0x8800, 0x85C8, 0x83E0, 0x824B, 0x810B, 0x8020, 0x7F5E, 0x7EC0, 
    0x7E81, 0x7EDE, 0x8020, 0x83D8, 0x89E5, 0x8FA1, 0x9251, 0x8EDF, 0x868D, 0x7EB3, 0x7D60, 0x882F, 0x9C20, 0xAB89, 
    0xB29E, 0xB43F, 0xB374, 0x5920, 0x5B09, 0x5C99, 0x5ADB, 0x5809, 0x55A1, 0x5293, 0x541A, 0x61B1, 0x72F0, 0x7AF2, 
    0x78CA, 0x7483, 0x6EA9, 0x67CC, 0x6078, 0x593B, 0x52A4, 0x4D3F, 0x499A, 0x4844, 0x4909, 0x4B31, 0x4E82, 0x52C1, 
    0x57B5, 0x5D22, 0x62D0, 0x6882, 0x6DFF, 0x730D, 0x7772, 0x7AF2, 0x7CC2, 0x7CCD, 0x7BF0, 0x7B08, 0x7AF2, 0x7A7F, 
    0x7ABA, 0x7FD7, 0x8CA7, 0x9E2F, 0xAFFF, 0xBDA2, 0xC2A6, 0xA218, 0x7A64, 0x6D49, 0x63D4, 0x5D9A, 0x5A2D, 0x59E2, 
    0x58BB, 0x589C, 0x5BF2, 0x607B, 0x642D, 0x672E, 0x659D, 0x5A63, 0x4BF0, 0x4385, 0x41C1, 0x40F7, 0x40F7, 0x4193, 
    0x429A, 0x43DC, 0x452A, 0x4653, 0x4729, 0x477A, 0x476B, 0x4740, 0x46FE, 0x46A9, 0x4646, 0x45D9, 0x4568, 0x44F6, 
    0x4488, 0x4423, 0x43CB, 0x4385, 0x4352, 0x4334, 0x432F, 0x4348, 0x4385, 0x4443, 0x455A, 0x4605, 0x45F5, 0x4590, 
    0x451A, 0x44DA, 0x4513, 0x46E0, 0x49E3, 0x4D74, 0x51A9, 0x55AE, 0x58B2, 0x3CB9, 0x4027, 0x43F1, 0x43BB, 0x423D, 
    0x4050, 0x3B77, 0x3AA5, 0x4726, 0x57A9, 0x5F4B, 0x5CF8, 0x5892, 0x52A6, 0x4BBE, 0x4466, 0x3D2B, 0x3698, 0x3139, 
    0x2D99, 0x2C45, 0x2D0C, 0x2F37, 0x328E, 0x36D5, 0x3BD1, 0x4148, 0x46FF, 0x4CBB, 0x5242, 0x5758, 0x5BC4, 0x5F4B, 
    0x6123, 0x6138, 0x6061, 0x5F76, 0x5F4B, 0x5E92, 0x5E65, 0x6338, 0x6FE9, 0x8162, 0x932A, 0xA0C7, 0xA5C1, 0x851B, 
    0x5D5F, 0x505F, 0x4713, 0x4103, 0x3DB8, 0x154C, 0x1D69, 0x220C, 0x1427, 0x0055, 0xF285, 0xF045, 0xF406, 0xF909, 
    0x02C6, 0x1A66, 0x1CDB, 0x1EAF, 0x1FF9, 0x20D1, 0x214E, 0x2187, 0x2193, 0x218A, 0x2182, 0x2194, 0x2192, 0x214A, 
    0x20CA, 0x2021, 0x1F5F, 0x1E92, 0x1DCA, 0x1D16, 0x1C51, 0x1B67, 0x1A84, 0x19CF, 0x1973, 0x1956, 0x1939, 0x18DF, 
    0x180A, 0x16D5, 0x1587, 0x1420, 0x12A0, 0x1106, 0x0F53, 0x0D87, 0x0BA2, 0x09A3, 0x0399, 0x06AF, 0x0B3A, 0x1000, 
    0x13C4, 0x12CA, 0x195D, 0x216F, 0x230E, 0x22C1, 0x21CA, 0x203A, 0x1E00, 0x1C23, 0x1C70, 0x0974, 0x0A47, 0x0C03, 
    0x0E6D, 0x114C, 0x1469, 0x1789, 0x1A74, 0x1CF1, 0x1EC6, 0x1FBB, 0x1FA5, 0x1EA4, 0x1CF0, 0x1AC0, 0x184B, 0x15C7, 
    0x136D, 0x1174, 0x0F8F, 0x0D97, 0x0BFB, 0x0B28, 0x0B33, 0x0BC5, 0x0CB1, 0x0DCC, 0x0EE8, 0x0FCF, 0x107D, 0x1113, 
    0x11B3, 0x127E, 0x1395, 0x1518, 0x1729, 0x19E9, 0x2E3F, 0x2AA2, 0x23BA, 0x1BE3, 0x1575, 0x1F0E, 0x2454, 0x23B0, 
    0x0FDE, 0xF5C3, 0xE3F0, 0xE019, 0xE489, 0xEEB2, 0x14A2, 0x2DD7, 0x2F35, 0x2FC1, 0x2FA1, 0x2EFE, 0x2DFC, 0x2CC3, 
    0x2B7A, 0x2A46, 0x2950, 0x28BD, 0x286E, 0x2829, 0x27F0, 0x27C8, 0x27B0, 0x27AE, 0x27C2, 0x27EF, 0x28A8, 0x29EF, 
    0x2B18, 0x2B7A, 0x2B22, 0x2A80, 0x2979, 0x27F6, 0x25DB, 0x2359, 0x20AF, 0x1DDD, 0x1AE1, 0x17BC, 0x146B, 0x10EF, 
    0x0D47, 0x0972, 0xFEA4, 0x0451, 0x0CA5, 0x1560, 0x1C43, 0x4000, 0x3FF9, 0x3FF0, 0x3FFF, 0x3FC6, 0x3F6E, 0x3F60, 
    0x3F88, 0x3FCB, 0x4000, 0x3FFC, 0x4000, 0x3FF5, 0x3FF0, 0x4000, 0x401B, 0x4000, 0x3FE2, 0x4000, 0x4014, 0x4000, 
    0x3FEC, 0x4000, 0x401E, 0x4000, 0x3FE2, 0x4000, 0x4014, 0x4000, 0x3FEC, 0x4000, 0x401E, 0x4000, 0x3FE2, 0x4000, 
    0x4014, 0x4000, 0x3FEC, 0x4000, 0x401E, 0x4000, 0x3FE2, 0x4000, 0x4014, 0x4000, 0x3FEC, 0x4000, 0x401E, 0x4000, 
    0x3FE4, 0x4000, 0x4002, 0x0000, 0xFDB0, 0xFC72, 0x008A, 0x065E, 0x0AA7, 0x0CCD, 0x0E30, 0x0E86, 0x0D83, 0x06FD, 
    0x0000, 0xFEA4, 0xFF16, 0x0000, 0x01F4, 0x038E, 0x0221, 0x0000, 0xFE94, 0xFDDE, 0xFE94, 0x0000, 0x0221, 0x038E, 
    0x0221, 0x0000, 0xFE94, 0xFDDE, 0xFE94, 0x0000, 0x0221, 0x038E, 0x0221, 0x0000, 0xFE94, 0xFDDE, 0xFE94, 0x0000, 
    0x0221, 0x038E, 0x0221, 0x0000, 0xFE94, 0xFDDE, 0xFE94, 0x0000, 0x0221, 0x038E, 0x01FF, 0x0000, 0xFFC7, 0x4000, 
    0x4077, 0x40B7, 0x3FCE, 0x3E89, 0x3DCB, 0x3DFA, 0x3E9F, 0x3F69, 0x4000, 0x3FE9, 0x4000, 0x413D, 0x42CB, 0x438E, 
    0x423A, 0x4000, 0x3DC6, 0x3C72, 0x3DC7, 0x4000, 0x4239, 0x438E, 0x423A, 0x4000, 0x3DC6, 0x3C72, 0x3DC7, 0x4000, 
    0x4239, 0x438E, 0x423A, 0x4000, 0x3DC6, 0x3C72, 0x3DC7, 0x4000, 0x4239, 0x438E, 0x423A, 0x4000, 0x3DC6, 0x3C72, 
    0x3DC7, 0x4000, 0x4239, 0x438E, 0x423A, 0x4000, 0x3DC6, 0x3C72, 0x3E39, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xFF5C, 0x0000, 0x0475, 0x0A0D, 0x0CCD, 0x0800, 0x0000, 0xF800, 0xF333, 
    0xF800, 0x0000, 0x0800, 0x0CCD, 0x0800, 0x0000, 0xF800, 0xF333, 0xF800, 0x0000, 0x0800, 0x0CCD, 0x0800, 0x0000, 
    0xF800, 0xF333, 0xF800, 0x0000, 0x0800, 0x0CCD, 0x0800, 0x0000, 0xF800, 0xF333, 0xF800, 0x0000, 0x0800, 0x0CCD, 
    0x0800, 0x0000, 0xF800, 0xF333, 0xF99A, 0x4A69, 0x430B, 0x3C77, 0x4449, 0x50B4, 0x5E70, 0x6785, 0x65EA, 0x5FE4, 
    0x580A, 0x4B9A, 0x4000, 0x3AED, 0x386C, 0x38E4, 0x422B, 0x4A69, 0x41A6, 0x38E4, 0x41A6, 0x4A69, 0x41A6, 0x38E4, 
    0x41A6, 0x4A69, 0x41A6, 0x38E4, 0x41A6, 0x4A69, 0x41A6, 0x38E4, 0x41A6, 0x4A69, 0x41A6, 0x38E4, 0x41A6, 0x4A69, 
    0x41A6, 0x38E4, 0x41A6, 0x4A69, 0x41A6, 0x38E4, 0x41A6, 0x4A69, 0x41A6, 0x38E4, 0x41A6, 0x4A69, 0x41A6, 0x38E4, 
    0x41A6, 0x0000, 
};

JointIndex sBeanSalesmanEatingAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0035, 0x0069 },
    { 0x009D, 0x00D1, 0x0105 },
    { 0x0139, 0x016D, 0x01A1 },
    { 0x01D5, 0x0209, 0x023D },
    { 0x0271, 0x0000, 0x02A5 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gBeanSalesmanEatingAnim = { 
    { 52 }, sBeanSalesmanEatingAnimFrameData,
    sBeanSalesmanEatingAnimJointIndices, 1
};

Vtx object_msVtx_000600[] = {
#include "assets/objects/object_ms/object_msVtx_000600.vtx.inc"
};

Gfx gBeanSalesmanBeanbagDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gBeanSalesmanTLUT),
    gsDPLoadTextureBlock(gBeanSalesmanBeanbagTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_msVtx_000600[425], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 6, 7, 0, 8, 4, 3, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 12, 10, 0),
    gsSP2Triangles(13, 14, 15, 0, 10, 12, 5, 0),
    gsSP2Triangles(7, 6, 5, 0, 4, 16, 5, 0),
    gsSP2Triangles(12, 3, 5, 0, 9, 13, 3, 0),
    gsSP2Triangles(0, 10, 6, 0, 3, 12, 9, 0),
    gsSP2Triangles(6, 10, 5, 0, 17, 15, 14, 0),
    gsSP2Triangles(11, 10, 0, 0, 4, 18, 19, 0),
    gsSP2Triangles(20, 5, 16, 0, 4, 19, 16, 0),
    gsSP1Triangle(0, 7, 1, 0),
    gsSPEndDisplayList(),
};

Gfx gBeanSalesmanBodyDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gBeanSalesmanTLUT),
    gsDPLoadTextureBlock(gBeanSalesmanTattooTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_msVtx_000600[237], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 15, 14, 0, 14, 18, 19, 0),
    gsSP2Triangles(20, 17, 14, 0, 19, 20, 14, 0),
    gsSP2Triangles(21, 22, 23, 0, 8, 24, 25, 0),
    gsSP2Triangles(25, 24, 26, 0, 21, 23, 9, 0),
    gsSP2Triangles(20, 27, 17, 0, 18, 26, 24, 0),
    gsSP2Triangles(23, 22, 12, 0, 23, 12, 11, 0),
    gsSP2Triangles(28, 29, 30, 0, 24, 29, 28, 0),
    gsSPVertex(&object_msVtx_000600[268], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 5, 0, 0, 3, 6, 2, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 5, 4, 0),
    gsSP2Triangles(4, 9, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(13, 6, 3, 0, 13, 12, 6, 0),
    gsSP2Triangles(13, 15, 16, 0, 3, 15, 13, 0),
    gsSP2Triangles(16, 17, 13, 0, 18, 10, 19, 0),
    gsSP2Triangles(19, 10, 11, 0, 20, 8, 17, 0),
    gsSP2Triangles(5, 21, 0, 0, 22, 21, 5, 0),
    gsSP2Triangles(0, 23, 1, 0, 0, 21, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 27, 31, 24, 0),
    gsSPVertex(&object_msVtx_000600[300], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 2, 0, 2, 7, 8, 0),
    gsSP2Triangles(9, 8, 7, 0, 7, 10, 9, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 7, 15, 0),
    gsSP2Triangles(14, 10, 7, 0, 16, 14, 15, 0),
    gsSP1Triangle(17, 18, 9, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gBeanSalesmanTLUT),
    gsDPLoadTextureBlock(gBeanSalesmanPantsTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_msVtx_000600[319], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(0, 2, 4, 0, 4, 5, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 4, 0),
    gsSP2Triangles(4, 2, 9, 0, 11, 10, 9, 0),
    gsSP2Triangles(12, 1, 3, 0, 10, 5, 4, 0),
    gsSP2Triangles(12, 13, 1, 0, 2, 14, 9, 0),
    gsSP2Triangles(15, 16, 17, 0, 6, 8, 18, 0),
    gsSP2Triangles(19, 10, 20, 0, 21, 12, 3, 0),
    gsSP2Triangles(20, 10, 11, 0, 22, 23, 24, 0),
    gsSP2Triangles(21, 3, 25, 0, 26, 27, 28, 0),
    gsSP1Triangle(28, 27, 29, 0),
    gsSPVertex(&object_msVtx_000600[349], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 0, 2, 0, 7, 5, 8, 0),
    gsSP2Triangles(7, 9, 3, 0, 3, 5, 7, 0),
    gsSP2Triangles(10, 4, 3, 0, 3, 9, 10, 0),
    gsSP2Triangles(10, 0, 6, 0, 9, 0, 10, 0),
    gsSP2Triangles(7, 11, 9, 0, 12, 13, 14, 0),
    gsSP1Triangle(15, 12, 14, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gBeanSalesmanTLUT),
    gsDPLoadTextureBlock(gBeanSalesmanBackOfHandTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_msVtx_000600[365], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(4, 2, 1, 0, 5, 4, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 6, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 2, 4, 0),
    gsSP2Triangles(14, 15, 16, 0, 16, 15, 17, 0),
    gsSP2Triangles(18, 14, 16, 0, 0, 2, 13, 0),
    gsSP2Triangles(15, 19, 20, 0, 21, 4, 5, 0),
    gsSP2Triangles(14, 19, 15, 0, 13, 4, 21, 0),
    gsSP2Triangles(20, 22, 23, 0, 19, 22, 20, 0),
    gsSP2Triangles(23, 24, 20, 0, 11, 9, 12, 0),
    gsSP2Triangles(7, 11, 25, 0, 11, 6, 9, 0),
    gsSP2Triangles(7, 6, 11, 0, 12, 8, 7, 0),
    gsSP1Triangle(12, 9, 8, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gBeanSalesmanTLUT),
    gsDPLoadTextureBlock(gBeanSalesmanShoeTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_msVtx_000600[391], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 7, 6, 0),
    gsSP2Triangles(3, 5, 10, 0, 3, 10, 11, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gBeanSalesmanTLUT),
    gsDPLoadTextureBlock(gBeanSalesmanSkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 4, 4, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 2, 2, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x000C, 0x000C),
    gsSP2Triangles(12, 13, 14, 0, 14, 13, 15, 0),
    gsSP1Triangle(13, 16, 15, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 18, 17, 0),
    gsSP1Triangle(20, 21, 18, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gBeanSalesmanTLUT),
    gsDPLoadTextureBlock(gBeanSalesmanShoeTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_msVtx_000600[413], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 7, 9, 0),
    gsSP2Triangles(10, 3, 5, 0, 11, 10, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gBeanSalesmanHeadDL[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_msVtx_000600[123], 8, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gBeanSalesmanTLUT),
    gsDPLoadTextureBlock(gBeanSalesmanTattooTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_msVtx_000600[131], 23, 8),
    gsSP2Triangles(8, 9, 0, 0, 0, 10, 11, 0),
    gsSP2Triangles(5, 12, 1, 0, 13, 2, 3, 0),
    gsSP2Triangles(3, 14, 15, 0, 16, 3, 0, 0),
    gsSP2Triangles(17, 18, 0, 0, 0, 1, 19, 0),
    gsSP2Triangles(20, 6, 7, 0, 7, 21, 22, 0),
    gsSP2Triangles(7, 4, 23, 0, 24, 25, 4, 0),
    gsSP2Triangles(4, 2, 26, 0, 27, 28, 7, 0),
    gsSP1Triangle(7, 29, 30, 0),
    gsSPVertex(&object_msVtx_000600[154], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 6, 10, 0),
    gsSP2Triangles(11, 12, 9, 0, 12, 13, 5, 0),
    gsSP2Triangles(5, 7, 12, 0, 12, 11, 14, 0),
    gsSP2Triangles(12, 6, 9, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 15, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(10, 23, 9, 0, 2, 1, 24, 0),
    gsSP2Triangles(25, 11, 26, 0, 20, 25, 26, 0),
    gsSP2Triangles(25, 20, 22, 0, 26, 17, 16, 0),
    gsSP2Triangles(4, 8, 7, 0, 7, 5, 4, 0),
    gsSP2Triangles(8, 10, 6, 0, 12, 7, 6, 0),
    gsSP2Triangles(5, 14, 3, 0, 14, 11, 25, 0),
    gsSP2Triangles(13, 14, 5, 0, 27, 28, 29, 0),
    gsSP2Triangles(30, 31, 28, 0, 3, 28, 27, 0),
    gsSPVertex(&object_msVtx_000600[186], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(7, 10, 9, 0, 7, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 6, 5, 19, 0),
    gsSP2Triangles(20, 0, 2, 0, 21, 11, 2, 0),
    gsSP2Triangles(2, 1, 4, 0, 4, 22, 2, 0),
    gsSP2Triangles(20, 2, 11, 0, 4, 3, 23, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gBeanSalesmanTLUT),
    gsDPLoadTextureBlock(gBeanSalesmanMouthTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(24, 25, 26, 0, 24, 27, 25, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 27, 24, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gBeanSalesmanTLUT),
    gsDPLoadTextureBlock(gBeanSalesmanEarTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_msVtx_000600[216], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gBeanSalesmanTLUT),
    gsDPLoadTextureBlock(gBeanSalesmanNoseTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(6, 7, 8, 0, 7, 6, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 8, 12, 11, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gBeanSalesmanTLUT),
    gsDPLoadTextureBlock(gBeanSalesmanEyeTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(13, 14, 15, 0, 15, 14, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 19, 18, 20, 0),
    gsSPEndDisplayList(),
};

Gfx gBeanSalesmanMouthDL[] = {
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_msVtx_000600[101], 8, 0),
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gBeanSalesmanTLUT),
    gsDPLoadTextureBlock(gBeanSalesmanTattooTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_msVtx_000600[109], 14, 8),
    gsSP2Triangles(8, 9, 0, 0, 1, 3, 10, 0),
    gsSP2Triangles(0, 1, 11, 0, 12, 2, 0, 0),
    gsSP2Triangles(13, 5, 2, 0, 0, 14, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gBeanSalesmanTLUT),
    gsDPLoadTextureBlock(gBeanSalesmanMouthTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(6, 16, 7, 0, 17, 7, 18, 0),
    gsSP2Triangles(7, 19, 20, 0, 7, 21, 4, 0),
    gsSPEndDisplayList(),
};

Gfx gBeanSalesmanLeftUpperArmDL[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_msVtx_000600[69], 6, 0),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gBeanSalesmanTLUT),
    gsDPLoadTextureBlock(gBeanSalesmanTattooTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_msVtx_000600[75], 14, 6),
    gsSP2Triangles(6, 7, 2, 0, 8, 4, 9, 0),
    gsSP2Triangles(2, 10, 11, 0, 3, 0, 12, 0),
    gsSP2Triangles(13, 0, 1, 0, 14, 4, 2, 0),
    gsSP2Triangles(1, 15, 16, 0, 17, 1, 5, 0),
    gsSP1Triangle(18, 19, 3, 0),
    gsSPVertex(&object_msVtx_000600[89], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 6, 7, 0, 10, 11, 3, 0),
    gsSP1Triangle(6, 9, 4, 0),
    gsSPEndDisplayList(),
};

Gfx gBeanSalesmanLeftForearmDL[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_msVtx_000600[43], 6, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gBeanSalesmanTLUT),
    gsDPLoadTextureBlock(gBeanSalesmanTattooTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_msVtx_000600[49], 12, 6),
    gsSP2Triangles(0, 6, 7, 0, 4, 8, 9, 0),
    gsSP2Triangles(2, 10, 11, 0, 12, 13, 4, 0),
    gsSP2Triangles(14, 1, 3, 0, 15, 0, 4, 0),
    gsSP2Triangles(5, 1, 16, 0, 17, 2, 0, 0),
    gsSPVertex(&object_msVtx_000600[61], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 4, 3, 0),
    gsSP2Triangles(4, 2, 1, 0, 2, 5, 0, 0),
    gsSP2Triangles(3, 7, 6, 0, 7, 0, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gBeanSalesmanLeftHandDL[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_msVtx_000600, 5, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gBeanSalesmanTLUT),
    gsDPLoadTextureBlock(gBeanSalesmanBackOfHandTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_msVtx_000600[5], 16, 5),
    gsSP2Triangles(0, 5, 6, 0, 3, 1, 7, 0),
    gsSP2Triangles(8, 1, 9, 0, 10, 11, 4, 0),
    gsSP2Triangles(0, 12, 13, 0, 2, 14, 15, 0),
    gsSP2Triangles(4, 16, 17, 0, 18, 0, 3, 0),
    gsSP2Triangles(19, 2, 0, 0, 20, 1, 2, 0),
    gsSPVertex(&object_msVtx_000600[21], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 0, 5, 0, 6, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 9, 8, 0),
    gsSP2Triangles(12, 8, 10, 0, 13, 14, 15, 0),
    gsSP2Triangles(6, 2, 16, 0, 14, 13, 17, 0),
    gsSP2Triangles(13, 18, 17, 0, 13, 19, 18, 0),
    gsSP2Triangles(8, 12, 11, 0, 20, 11, 12, 0),
    gsSP2Triangles(20, 9, 11, 0, 14, 21, 15, 0),
    gsSP2Triangles(5, 7, 3, 0, 5, 4, 1, 0),
    gsSP2Triangles(10, 20, 12, 0, 2, 6, 0, 0),
    gsSP2Triangles(7, 10, 3, 0, 5, 0, 6, 0),
    gsSPEndDisplayList(),
};

u64 gBeanSalesmanTLUT[] = {
#include "assets/objects/object_ms/tlut.rgba16.inc.c"
};

u64 gBeanSalesmanBackOfHandTex[] = {
#include "assets/objects/object_ms/back_of_hand.ci8.inc.c"
};

u64 gBeanSalesmanTattooTex[] = {
#include "assets/objects/object_ms/tattoo.ci8.inc.c"
};

u64 gBeanSalesmanMouthTex[] = {
#include "assets/objects/object_ms/mouth.ci8.inc.c"
};

u64 gBeanSalesmanEarTex[] = {
#include "assets/objects/object_ms/ear.ci8.inc.c"
};

u64 gBeanSalesmanNoseTex[] = {
#include "assets/objects/object_ms/nose.ci8.inc.c"
};

u64 gBeanSalesmanEyeTex[] = {
#include "assets/objects/object_ms/eye.ci8.inc.c"
};

u64 gBeanSalesmanPantsTex[] = {
#include "assets/objects/object_ms/pants.ci8.inc.c"
};

u64 gBeanSalesmanShoeTex[] = {
#include "assets/objects/object_ms/shoe.ci8.inc.c"
};

u64 gBeanSalesmanSkinGradientTex[] = {
#include "assets/objects/object_ms/skin_gradient.ci8.inc.c"
};

u64 gBeanSalesmanBeanbagTex[] = {
#include "assets/objects/object_ms/beanbag.ci8.inc.c"
};

StandardLimb gBeanSalesmanRootLimb = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gBeanSalesmanLeftUpperArmLimb = { 
    { 650, 1450, -50 }, 0x02, 0x04,
    gBeanSalesmanLeftUpperArmDL
};

StandardLimb gBeanSalesmanLeftForearmLimb = { 
    { 1150, 0, 0 }, 0x03, LIMB_DONE,
    gBeanSalesmanLeftForearmDL
};

StandardLimb gBeanSalesmanLeftHandLimb = { 
    { 750, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBeanSalesmanLeftHandDL
};

StandardLimb gBeanSalesmanHeadLimb = { 
    { 0, 2150, -450 }, 0x05, 0x06,
    gBeanSalesmanHeadDL
};

StandardLimb gBeanSalesmanMouthLimb = { 
    { -109, 844, 0 }, LIMB_DONE, LIMB_DONE,
    gBeanSalesmanMouthDL
};

StandardLimb gBeanSalesmanBodyLimb = { 
    { 0, 0, 0 }, LIMB_DONE, 0x07,
    gBeanSalesmanBodyDL
};

StandardLimb gBeanSalesmanBeanbagLimb = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBeanSalesmanBeanbagDL
};

void* gBeanSalesmanSkelLimbs[] = {
    &gBeanSalesmanRootLimb,
    &gBeanSalesmanLeftUpperArmLimb,
    &gBeanSalesmanLeftForearmLimb,
    &gBeanSalesmanLeftHandLimb,
    &gBeanSalesmanHeadLimb,
    &gBeanSalesmanMouthLimb,
    &gBeanSalesmanBodyLimb,
    &gBeanSalesmanBeanbagLimb,
};

FlexSkeletonHeader gBeanSalesmanSkel = { 
    { gBeanSalesmanSkelLimbs, ARRAY_COUNT(gBeanSalesmanSkelLimbs) }, 7
};

