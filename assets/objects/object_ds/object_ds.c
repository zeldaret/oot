#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_ds.h"

s16 sPotionShopLadyAnimFrameData[] = {
    0x0000, 0x0E74, 0x237B, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFE, 0xFFFE, 
    0xFFFE, 0xFFFD, 0xFFFD, 0xFFFD, 0xFFFC, 0xFFFC, 0xFFFC, 0xFFFC, 0xFFFB, 0xFFFB, 0xFFFB, 0xFFFB, 0xFFFB, 0xFFFB, 
    0xFFFB, 0xFFFB, 0xFFFB, 0xFFFB, 0xFFFB, 0xFFFC, 0xFFFC, 0xFFFC, 0xFFFC, 0xFFFD, 0xFFFD, 0xFFFD, 0xFFFE, 0xFFFE, 
    0xFFFE, 0xFFFE, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0003, 0x000A, 0x0016, 
    0x0027, 0x003A, 0x0051, 0x006B, 0x0087, 0x00A5, 0x00C4, 0x00E4, 0x0105, 0x0125, 0x0145, 0x0164, 0x0182, 0x019E, 
    0x01B8, 0x01CF, 0x01E3, 0x01F3, 0x01FF, 0x0207, 0x0209, 0x0207, 0x0200, 0x01F5, 0x01E6, 0x01D3, 0x01BE, 0x01A6, 
    0x018B, 0x016F, 0x0152, 0x0133, 0x0114, 0x00F5, 0x00D6, 0x00B8, 0x009A, 0x007E, 0x0064, 0x004C, 0x0036, 0x0024, 
    0x0015, 0x0009, 0x0002, 0x4000, 0x3FFC, 0x3FF2, 0x3FE1, 0x3FCA, 0x3FAE, 0x3F8E, 0x3F6A, 0x3F43, 0x3F19, 0x3EED, 
    0x3EC0, 0x3E93, 0x3E65, 0x3E38, 0x3E0D, 0x3DE3, 0x3DBC, 0x3D98, 0x3D78, 0x3D5C, 0x3D45, 0x3D34, 0x3D29, 0x3D26, 
    0x3D29, 0x3D33, 0x3D43, 0x3D58, 0x3D72, 0x3D90, 0x3DB1, 0x3DD6, 0x3DFE, 0x3E27, 0x3E51, 0x3E7D, 0x3EA9, 0x3ED4, 
    0x3EFF, 0x3F28, 0x3F50, 0x3F74, 0x3F96, 0x3FB4, 0x3FCE, 0x3FE3, 0x3FF3, 0x3FFD, 0x065F, 0x0642, 0x0608, 0x05B3, 
    0x0546, 0x04C2, 0x042A, 0x037F, 0x02C6, 0x01FE, 0x012B, 0x0050, 0xFF6D, 0xFE86, 0xFD9C, 0xFCB3, 0xFBCB, 0xFAE7, 
    0xFA0A, 0xF936, 0xF86D, 0xF7B0, 0xF704, 0xF668, 0xF5F3, 0xF5B1, 0xF597, 0xF59C, 0xF5B8, 0xF5DF, 0xF60F, 0xF64F, 
    0xF6A4, 0xF715, 0xF7A9, 0xF866, 0xF951, 0xFA66, 0xFB9A, 0xFCE5, 0xFE3D, 0xFF98, 0x00EC, 0x0231, 0x035B, 0x0463, 
    0x053D, 0x05E1, 0x0645, 0x0DC0, 0x0DD0, 0x0DB4, 0x0D6F, 0x0D04, 0x0C75, 0x0BC7, 0x0AFD, 0x0A19, 0x091F, 0x0812, 
    0x06F4, 0x05CA, 0x0496, 0x035C, 0x021F, 0x00E1, 0xFFA6, 0xFE71, 0xFD46, 0xFC27, 0xFB17, 0xFA1B, 0xF934, 0xF85D, 
    0xF78F, 0xF6CD, 0xF61C, 0xF57F, 0xF4F8, 0xF45B, 0xF39C, 0xF2F0, 0xF28D, 0xF2AA, 0xF37B, 0xF4EC, 0xF6B8, 0xF8CC, 
    0xFB17, 0xFD85, 0x0005, 0x0283, 0x04ED, 0x0731, 0x093D, 0x0AFC, 0x0C5F, 0x0D50, 0x1D99, 0x1DD1, 0x1E13, 0x1E60, 
    0x1EB7, 0x1F15, 0x1F7B, 0x1FE7, 0x2059, 0x20D0, 0x214B, 0x21C8, 0x2248, 0x22CA, 0x234B, 0x23CD, 0x244D, 0x24CA, 
    0x2545, 0x25BC, 0x262E, 0x269A, 0x2700, 0x275E, 0x27BB, 0x2811, 0x2850, 0x2865, 0x2841, 0x27D1, 0x26E6, 0x2582, 
    0x23E4, 0x224A, 0x20F2, 0x201A, 0x1F9D, 0x1F2A, 0x1EC3, 0x1E67, 0x1E17, 0x1DD4, 0x1D9D, 0x1D72, 0x1D56, 0x1D46, 
    0x1D45, 0x1D52, 0x1D6E, 0x0000, 0x0001, 0x0003, 0x0004, 0x0005, 0x0005, 0x0006, 0x0006, 0x0006, 0x0006, 0x0006, 
    0x0005, 0x0005, 0x0004, 0x0003, 0x0002, 0x0001, 0x0000, 0xFFFF, 0xFFFD, 0xFFFB, 0xFFF9, 0xFFF6, 0xFFF3, 0xFFF1, 
    0xFFEE, 0xFFEB, 0xFFE8, 0xFFE5, 0xFFE2, 0xFFDF, 0xFFDD, 0xFFDB, 0xFFD8, 0xFFD7, 0xFFD5, 0xFFD4, 0xFFD3, 0xFFD3, 
    0xFFD4, 0xFFD7, 0xFFDA, 0xFFDF, 0xFFE5, 0xFFEA, 0xFFF0, 0xFFF5, 0xFFFA, 0xFFFE, 0x0000, 0x003D, 0x0080, 0x00C9, 
    0x0115, 0x0164, 0x01B3, 0x0201, 0x024E, 0x0297, 0x02DB, 0x0318, 0x034D, 0x0379, 0x0399, 0x03AD, 0x03B4, 0x03AB, 
    0x0392, 0x036B, 0x0337, 0x02F8, 0x02AF, 0x025E, 0x0206, 0x01A8, 0x0146, 0x00E1, 0x007B, 0x0015, 0xFFB0, 0xFF4F, 
    0xFEF2, 0xFE9B, 0xFE4B, 0xFE04, 0xFDC7, 0xFD96, 0xFD71, 0xFD64, 0xFD72, 0xFD98, 0xFDD2, 0xFE1A, 0xFE6C, 0xFEC4, 
    0xFF1D, 0xFF72, 0xFFBF, 0x0000, 0x0054, 0x00BC, 0x0136, 0x01BF, 0x0252, 0x02ED, 0x038C, 0x042B, 0x04C8, 0x055F, 
    0x05ED, 0x066E, 0x06DE, 0x073C, 0x0782, 0x07AF, 0x07BE, 0x07B2, 0x0793, 0x0763, 0x0722, 0x06D2, 0x0677, 0x0610, 
    0x05A0, 0x0529, 0x04AC, 0x042C, 0x03AA, 0x0327, 0x02A6, 0x0228, 0x01AF, 0x013D, 0x00D3, 0x0074, 0x0021, 0xFFDB, 
    0xFFA3, 0xFF76, 0xFF55, 0xFF3F, 0xFF36, 0xFF38, 0xFF47, 0xFF62, 0xFF8A, 0xFFBE, 
};

JointIndex sPotionShopLadyAnimJointIndices[] = {
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0003, 0x0034, 0x0065 },
    { 0x0096, 0x00C7, 0x00F8 },
    { 0x0129, 0x015A, 0x018B },
};

AnimationHeader gPotionShopLadyAnim = { 
    { 49 }, sPotionShopLadyAnimFrameData,
    sPotionShopLadyAnimJointIndices, 3
};

Vtx object_dsVtx_0003B0[] = {
#include "assets/objects/object_ds/object_dsVtx_0003B0.vtx.inc"
};

Gfx gPotionShopLadyTorsoDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gPotionShopLadyTLUT),
    gsDPLoadTextureBlock(gPotionShopLadyShirtPatternTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_dsVtx_0003B0[456], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(17, 18, 15, 0, 14, 19, 12, 0),
    gsSP2Triangles(20, 19, 14, 0, 15, 18, 21, 0),
    gsSP2Triangles(20, 14, 13, 0, 22, 23, 24, 0),
    gsSP2Triangles(2, 25, 0, 0, 5, 26, 3, 0),
    gsSP2Triangles(16, 15, 21, 0, 27, 28, 29, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gPotionShopLadyTLUT),
    gsDPLoadTextureBlock(gPotionShopLadySkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_dsVtx_0003B0[486], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 4, 2, 0),
    gsSP2Triangles(2, 6, 5, 0, 6, 2, 7, 0),
    gsSP2Triangles(7, 2, 1, 0, 8, 9, 6, 0),
    gsSP2Triangles(6, 9, 5, 0, 0, 9, 1, 0),
    gsSP1Triangle(1, 9, 8, 0),
    gsSPEndDisplayList(),
};

Gfx gPotionShopLadyHeadDL[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(object_dsVtx_0003B0, 7, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gPotionShopLadyTLUT),
    gsDPLoadTextureBlock(gPotionShopLadySkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_dsVtx_0003B0[7], 19, 7),
    gsSP2Triangles(7, 8, 0, 0, 1, 9, 10, 0),
    gsSP2Triangles(2, 3, 11, 0, 12, 0, 13, 0),
    gsSP2Triangles(4, 14, 15, 0, 16, 17, 2, 0),
    gsSP2Triangles(1, 18, 19, 0, 2, 20, 1, 0),
    gsSP2Triangles(0, 21, 3, 0, 22, 5, 1, 0),
    gsSP2Triangles(0, 6, 23, 0, 24, 25, 4, 0),
    gsSPVertex(&object_dsVtx_0003B0[26], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 5, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 13, 24, 14, 0),
    gsSP2Triangles(25, 26, 9, 0, 27, 7, 28, 0),
    gsSP2Triangles(9, 8, 25, 0, 28, 20, 27, 0),
    gsSP2Triangles(9, 28, 7, 0, 29, 30, 22, 0),
    gsSPVertex(&object_dsVtx_0003B0[57], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 7, 9, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 16, 15, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&object_dsVtx_0003B0[88], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(6, 12, 13, 0, 7, 6, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 26, 28, 29, 0),
    gsSP1Triangle(29, 27, 26, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gPotionShopLadyTLUT),
    gsDPLoadTextureBlock(gPotionShopLadyEyelashBottomTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 8, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x001C),
    gsSPVertex(&object_dsVtx_0003B0[118], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gPotionShopLadyTLUT),
    gsDPLoadTextureBlock(gPotionShopLadyEyelashTopTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x001C),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gPotionShopLadyTLUT),
    gsDPLoadTextureBlock(gPotionShopLadyEar1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_dsVtx_0003B0[138], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 6, 7, 5, 0),
    gsSP2Triangles(7, 8, 5, 0, 2, 9, 0, 0),
    gsSP2Triangles(9, 2, 8, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 14, 13, 0),
    gsSP2Triangles(13, 17, 16, 0, 13, 18, 17, 0),
    gsSP2Triangles(12, 19, 10, 0, 18, 10, 19, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gPotionShopLadyTLUT),
    gsDPLoadTextureBlock(gPotionShopLadySkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gPotionShopLadyTLUT),
    gsDPLoadTextureBlock(gPotionShopLadyEar1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_dsVtx_0003B0[162], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 2, 5, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 6, 0),
    gsSP2Triangles(11, 9, 6, 0, 8, 11, 6, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gPotionShopLadyTLUT),
    gsDPLoadTextureBlock(gPotionShopLadyHairTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_dsVtx_0003B0[174], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(10, 12, 11, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 16, 13, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(19, 26, 17, 0, 27, 28, 29, 0),
    gsSP2Triangles(29, 30, 27, 0, 25, 31, 23, 0),
    gsSPVertex(&object_dsVtx_0003B0[206], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 9, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 18, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 28, 29, 26, 0),
    gsSPVertex(&object_dsVtx_0003B0[236], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 3, 1, 0, 3, 5, 6, 0),
    gsSP2Triangles(3, 6, 7, 0, 7, 4, 3, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 9, 8, 0),
    gsSP1Triangle(12, 13, 14, 0),
    gsSP1Triangle(15, 16, 17, 0),
    gsSPVertex(&object_dsVtx_0003B0[254], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 9, 13, 7, 0),
    gsSP2Triangles(13, 9, 14, 0, 9, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(25, 27, 26, 0, 28, 29, 30, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gPotionShopLadyTLUT),
    gsDPLoadTextureBlock(gPotionShopLadyEyeTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x001C),
    gsSPVertex(&object_dsVtx_0003B0[285], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gPotionShopLadyTLUT),
    gsDPLoadTextureBlock(gPotionShopLadyHairTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsSP2Triangles(8, 9, 10, 0, 10, 11, 8, 0),
    gsSP2Triangles(11, 12, 8, 0, 12, 11, 13, 0),
    gsSP2Triangles(13, 14, 12, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 17, 16, 0, 17, 19, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gPotionShopLadyTLUT),
    gsDPLoadTextureBlock(gPotionShopLadyEar2Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(20, 21, 22, 0, 22, 23, 20, 0),
    gsSP2Triangles(24, 21, 20, 0, 25, 26, 27, 0),
    gsSP2Triangles(27, 28, 25, 0, 27, 26, 29, 0),
    gsSPEndDisplayList(),
};

Gfx gPotionShopLadyArmDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gPotionShopLadyTLUT),
    gsDPLoadTextureBlock(gPotionShopLadySkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_dsVtx_0003B0[315], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 1, 0, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 10, 12, 11, 0),
    gsSP2Triangles(11, 13, 9, 0, 13, 14, 9, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_dsVtx_0003B0[347], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 5, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(20, 21, 18, 0, 22, 23, 4, 0),
    gsSP2Triangles(4, 24, 22, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&object_dsVtx_0003B0[378], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 5, 0),
    gsSP2Triangles(5, 25, 23, 0, 26, 27, 24, 0),
    gsSP2Triangles(24, 23, 26, 0, 28, 29, 30, 0),
    gsSPVertex(&object_dsVtx_0003B0[409], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 7, 0, 7, 5, 8, 0),
    gsSP2Triangles(7, 4, 3, 0, 9, 10, 11, 0),
    gsSP2Triangles(5, 4, 9, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 7, 8, 0, 16, 17, 18, 0),
    gsSP2Triangles(4, 7, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(4, 23, 24, 0, 19, 7, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gPotionShopLadyTLUT),
    gsDPLoadTextureBlock(gPotionShopLadyArmGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_dsVtx_0003B0[434], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 2, 1, 13, 0),
    gsSP2Triangles(5, 4, 14, 0, 8, 7, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 16, 0),
    gsSP1Triangle(21, 18, 17, 0),
    gsSPEndDisplayList(),
};

Gfx gPotionShopLadyCatDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gPotionShopLadyTLUT),
    gsDPLoadTextureBlock(gPotionShopLadyCatPattern1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_dsVtx_0003B0[496], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(4, 1, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 7, 6, 0, 9, 7, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 16, 14, 0, 17, 13, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 19, 18, 0),
    gsSP2Triangles(22, 23, 24, 0, 18, 25, 21, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_dsVtx_0003B0[528], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 7, 6, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 12, 10, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 16, 14, 0),
    gsSP2Triangles(17, 9, 18, 0, 9, 17, 19, 0),
    gsSP2Triangles(19, 12, 9, 0, 18, 20, 17, 0),
    gsSP2Triangles(4, 1, 0, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 2, 27, 0, 0),
    gsSP2Triangles(28, 29, 30, 0, 30, 31, 28, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gPotionShopLadyTLUT),
    gsDPLoadTextureBlock(gPotionShopLadyCatPattern2Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_dsVtx_0003B0[560], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 3, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 19, 20, 17, 0),
    gsSP2Triangles(21, 13, 12, 0, 22, 7, 6, 0),
    gsSP2Triangles(9, 23, 10, 0, 24, 25, 26, 0),
    gsSP2Triangles(13, 27, 11, 0, 26, 28, 24, 0),
    gsSP1Triangle(29, 1, 0, 0),
    gsSPVertex(&object_dsVtx_0003B0[590], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 6, 13, 4, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0),
    gsSP2Triangles(13, 6, 24, 0, 11, 25, 26, 0),
    gsSPEndDisplayList(),
};

u64 gPotionShopLadyTLUT[] = {
#include "assets/objects/object_ds/potion_shop_lady_tlut.rgba16.inc.c"
};

u64 gPotionShopLadySkinGradientTex[] = {
#include "assets/objects/object_ds/skin_gradient.ci8.inc.c"
};

u64 gPotionShopLadyEyelashBottomTex[] = {
#include "assets/objects/object_ds/eyelash_bottom.ci8.inc.c"
};

u64 gPotionShopLadyEyelashTopTex[] = {
#include "assets/objects/object_ds/eyelash_top.ci8.inc.c"
};

u64 gPotionShopLadyEar1Tex[] = {
#include "assets/objects/object_ds/ear_1.ci8.inc.c"
};

u64 gPotionShopLadyHairTex[] = {
#include "assets/objects/object_ds/hair.ci8.inc.c"
};

u64 gPotionShopLadyEyeTex[] = {
#include "assets/objects/object_ds/eye.ci8.inc.c"
};

u64 gPotionShopLadyEar2Tex[] = {
#include "assets/objects/object_ds/ear_2.ci8.inc.c"
};

u64 gPotionShopLadyArmGradientTex[] = {
#include "assets/objects/object_ds/arm_gradient.ci8.inc.c"
};

u64 gPotionShopLadyShirtPatternTex[] = {
#include "assets/objects/object_ds/shirt_pattern.ci8.inc.c"
};

u64 gPotionShopLadyCatPattern1Tex[] = {
#include "assets/objects/object_ds/cat_pattern_1.ci8.inc.c"
};

u64 gPotionShopLadyCatPattern2Tex[] = {
#include "assets/objects/object_ds/cat_pattern_2.ci8.inc.c"
};

StandardLimb gPotionShopLadyRootLimb = { 
    { 0, 3700, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gPotionShopLadyCatLimb = { 
    { 0, 0, 0 }, LIMB_DONE, 0x02,
    gPotionShopLadyCatDL
};

StandardLimb gPotionShopLadyTorsoLimb = { 
    { 0, 0, 0 }, 0x03, LIMB_DONE,
    gPotionShopLadyTorsoDL
};

StandardLimb gPotionShopLadyArmLimb = { 
    { 100, 186, 526 }, LIMB_DONE, 0x04,
    gPotionShopLadyArmDL
};

StandardLimb gPotionShopLadyHeadLimb = { 
    { 1450, 300, 0 }, LIMB_DONE, LIMB_DONE,
    gPotionShopLadyHeadDL
};

void* gPotionShopLadySkelLimbs[] = {
    &gPotionShopLadyRootLimb,
    &gPotionShopLadyCatLimb,
    &gPotionShopLadyTorsoLimb,
    &gPotionShopLadyArmLimb,
    &gPotionShopLadyHeadLimb,
};

FlexSkeletonHeader gPotionShopLadySkel = { 
    { gPotionShopLadySkelLimbs, ARRAY_COUNT(gPotionShopLadySkelLimbs) }, 4
};

