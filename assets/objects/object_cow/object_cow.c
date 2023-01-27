#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_cow.h"

s16 sCowBodyChewAnimFrameData[] = {
    0x0000, 0x0000, 0xFFF5, 0xFFD7, 0xFFA9, 0xFF6E, 0xFF28, 0xFEDA, 0xFE88, 0xFE35, 0xFDE3, 0xFD96, 0xFD50, 0xFD14, 
    0xFCE6, 0xFCC8, 0xFCBE, 0xFCC8, 0xFCE6, 0xFD14, 0xFD50, 0xFD96, 0xFDE3, 0xFE35, 0xFE88, 0xFEDA, 0xFF28, 0xFF6E, 
    0xFFA9, 0xFFD7, 0xFFF5, 0x0000, 0xFE14, 0xFBDE, 0xF9BC, 0xF80C, 0xF729, 0xF772, 0xF8FC, 0xFB71, 0xFE89, 0x01FE, 
    0x0588, 0x08E0, 0x0BBF, 0x0DDF, 0x0F54, 0x1066, 0x1116, 0x1169, 0x1161, 0x1101, 0x104C, 0x0F38, 0x0DC4, 0x0C05, 
    0x0A11, 0x07FC, 0x05DB, 0x03C3, 0x01C8, 0x0000, 0xFC44, 0xF927, 0xF7DA, 0xF876, 0xFA28, 0xFCBD, 0x0000, 0x05E1, 
    0x0D18, 0x109E, 0x0ECE, 0x0A67, 0x04F3, 0x0000, 0xFB03, 0xF579, 0xF0FC, 0xEF22, 0xF0F7, 0xF56C, 0xFAF4, 0x0000, 
    0x0522, 0x0ADB, 0x0F81, 0x116D, 0x0F63, 0x0A8A, 0x04C7, 0x0000, 0xFF4D, 0xFE6A, 0xFD77, 0xFC94, 0xFBE0, 0xFB7B, 
    0xFB85, 0xFBF4, 0xFCA1, 0xFD7E, 0xFE80, 0xFF99, 0x00BD, 0x01DE, 0x02F1, 0x03E7, 0x04B6, 0x054F, 0x05A6, 0x05B9, 
    0x0596, 0x0543, 0x04CA, 0x0432, 0x0385, 0x02CA, 0x020A, 0x014E, 0x009D, 0x0000, 0x00C4, 0x0190, 0x0231, 0x0272, 
    0x0239, 0x01A5, 0x00DC, 0x0000, 0xFEB9, 0xFD3C, 0xFC86, 0xFCEE, 0xFDE7, 0xFF0D, 0x0000, 0x00C2, 0x017E, 0x020D, 
    0x0245, 0x01D9, 0x00ED, 0x0000, 0xFF1A, 0xFE1D, 0xFD50, 0xFCFB, 0xFD53, 0xFE26, 0xFF25, 0x0000, 0x0182, 0x03CB, 
    0x05CF, 0x0681, 0x060C, 0x0558, 0x046F, 0x035E, 0x0230, 0x00F1, 0xFFAB, 0xFE6C, 0xFD3E, 0xFC2D, 0xFB45, 0xFA96, 
    0xFA2E, 0xFA16, 0xFA55, 0xFAF3, 0xFBD8, 0xFCE3, 0xFDF2, 0xFEE3, 0xFF92, 0xFFD3, 0xFFB9, 0xFF8B, 0xFF8C, 0x0000, 
    0xFEB8, 0xFD0B, 0xFC55, 0xFCC3, 0xFD88, 0xFE85, 0xFF99, 0x00A7, 0x018D, 0x022D, 0x0268, 0x0222, 0x0170, 0x0075, 
    0xFF55, 0xFE33, 0xFD32, 0xFC77, 0xFC25, 0xFC71, 0xFD4D, 0xFE7A, 0xFFB9, 0x00CB, 0x0170, 0x019D, 0x017D, 0x0122, 
    0x009D, 0x0000, 
};

JointIndex sCowBodyChewAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0000, 0x0000 },
    { 0x001F, 0x0000, 0x003D },
    { 0x005B, 0x0000, 0x0079 },
    { 0x0097, 0x0000, 0x00B5 },
};

AnimationHeader gCowBodyChewAnim = { 
    { 30 }, sCowBodyChewAnimFrameData,
    sCowBodyChewAnimJointIndices, 1
};

Vtx object_cowVtx_0001E0[] = {
#include "assets/objects/object_cow/object_cowVtx_0001E0.vtx.inc"
};

Gfx gCowTorsoDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gCowSpottedPatternTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x00FC),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cowVtx_0001E0[203], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 9, 10, 0),
    gsSP2Triangles(10, 6, 8, 0, 11, 2, 1, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 12, 14, 0, 4, 3, 17, 0),
    gsSP2Triangles(6, 18, 19, 0, 10, 18, 6, 0),
    gsSP2Triangles(12, 18, 10, 0, 16, 18, 12, 0),
    gsSP2Triangles(20, 19, 18, 0, 4, 19, 20, 0),
    gsSP2Triangles(16, 20, 18, 0, 21, 8, 7, 0),
    gsSP2Triangles(21, 9, 8, 0, 22, 1, 23, 0),
    gsSP2Triangles(24, 22, 23, 0, 25, 26, 27, 0),
    gsSP2Triangles(21, 24, 23, 0, 24, 27, 22, 0),
    gsSP2Triangles(22, 11, 1, 0, 24, 7, 27, 0),
    gsSP2Triangles(21, 7, 24, 0, 21, 28, 9, 0),
    gsSP2Triangles(21, 23, 28, 0, 28, 13, 9, 0),
    gsSP2Triangles(15, 28, 29, 0, 15, 13, 28, 0),
    gsSP2Triangles(30, 27, 26, 0, 22, 27, 30, 0),
    gsSP2Triangles(29, 23, 1, 0, 29, 28, 23, 0),
    gsSPVertex(&object_cowVtx_0001E0[234], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 3, 0, 0, 5, 3, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(10, 11, 1, 0, 7, 12, 8, 0),
    gsSP2Triangles(9, 12, 7, 0, 5, 13, 3, 0),
    gsSP2Triangles(3, 14, 1, 0, 14, 10, 1, 0),
    gsSP2Triangles(15, 0, 2, 0, 15, 4, 0, 0),
    gsSP2Triangles(16, 17, 13, 0, 18, 10, 14, 0),
    gsSP2Triangles(14, 17, 18, 0, 3, 17, 14, 0),
    gsSP2Triangles(3, 13, 17, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 20, 19, 0, 20, 22, 23, 0),
    gsSP2Triangles(20, 23, 24, 0, 23, 25, 24, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCowTLUT),
    gsDPLoadTextureBlock(gCowTailTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsSPVertex(&object_cowVtx_0001E0[260], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 3, 4, 0, 5, 6, 4, 0),
    gsSP2Triangles(4, 7, 1, 0, 7, 6, 1, 0),
    gsSP2Triangles(4, 8, 7, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 8, 0, 12, 8, 13, 0),
    gsSP2Triangles(11, 13, 8, 0, 10, 9, 12, 0),
    gsSP2Triangles(9, 8, 12, 0, 9, 10, 7, 0),
    gsSP2Triangles(6, 10, 8, 0, 6, 7, 10, 0),
    gsSP2Triangles(6, 2, 1, 0, 8, 4, 6, 0),
    gsSP2Triangles(2, 6, 14, 0, 14, 6, 5, 0),
    gsSP2Triangles(11, 10, 15, 0, 10, 12, 15, 0),
    gsSP2Triangles(11, 15, 13, 0, 15, 12, 13, 0),
    gsSP2Triangles(4, 3, 5, 0, 2, 16, 0, 0),
    gsSP2Triangles(14, 16, 2, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(23, 19, 18, 0, 24, 25, 21, 0),
    gsSP2Triangles(24, 21, 26, 0, 26, 27, 22, 0),
    gsSP2Triangles(26, 21, 27, 0, 17, 28, 18, 0),
    gsSP2Triangles(20, 19, 23, 0, 23, 29, 20, 0),
    gsSP2Triangles(20, 29, 17, 0, 30, 29, 23, 0),
    gsSP2Triangles(18, 28, 23, 0, 30, 28, 29, 0),
    gsSP2Triangles(29, 28, 17, 0, 28, 30, 27, 0),
    gsSP2Triangles(23, 22, 27, 0, 23, 28, 21, 0),
    gsSP2Triangles(27, 30, 23, 0, 27, 21, 28, 0),
    gsSP1Triangle(26, 31, 24, 0),
    gsSPVertex(&object_cowVtx_0001E0[292], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 5, 0, 4, 3, 6, 0),
    gsSP2Triangles(5, 8, 6, 0, 5, 7, 3, 0),
    gsSP2Triangles(9, 3, 10, 0, 10, 3, 7, 0),
    gsSP2Triangles(6, 3, 11, 0, 6, 10, 7, 0),
    gsSP2Triangles(9, 10, 12, 0, 12, 10, 6, 0),
    gsSP2Triangles(6, 13, 12, 0, 11, 3, 9, 0),
    gsSP2Triangles(5, 4, 2, 0, 8, 5, 2, 0),
    gsSP2Triangles(2, 4, 0, 0, 4, 14, 0, 0),
    gsSP2Triangles(11, 13, 6, 0, 6, 8, 4, 0),
    gsSP2Triangles(12, 13, 11, 0, 12, 11, 9, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 16, 15, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 24, 25, 0, 24, 23, 26, 0),
    gsSP2Triangles(24, 26, 25, 0, 19, 27, 17, 0),
    gsSP2Triangles(17, 27, 15, 0, 27, 21, 28, 0),
    gsSP2Triangles(29, 15, 27, 0, 26, 30, 27, 0),
    gsSP2Triangles(28, 26, 27, 0, 30, 26, 31, 0),
    gsSP2Triangles(23, 28, 31, 0, 23, 31, 26, 0),
    gsSP2Triangles(28, 22, 25, 0, 22, 28, 23, 0),
    gsSP2Triangles(28, 25, 26, 0, 31, 28, 30, 0),
    gsSP2Triangles(30, 28, 21, 0, 29, 27, 30, 0),
    gsSP2Triangles(29, 30, 21, 0, 21, 27, 19, 0),
    gsSP2Triangles(21, 20, 29, 0, 29, 20, 18, 0),
    gsSP1Triangle(15, 29, 18, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCowTLUT),
    gsDPLoadTextureBlock(gCowUdderTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_cowVtx_0001E0[324], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(3, 2, 5, 0, 0, 2, 6, 0),
    gsSP2Triangles(5, 2, 1, 0, 6, 2, 4, 0),
    gsSP2Triangles(5, 1, 3, 0, 1, 0, 4, 0),
    gsSP2Triangles(1, 4, 3, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 7, 9, 10, 0),
    gsSP2Triangles(13, 14, 15, 0, 10, 9, 11, 0),
    gsSP2Triangles(10, 12, 16, 0, 8, 16, 12, 0),
    gsSP2Triangles(11, 9, 12, 0, 12, 9, 8, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(20, 21, 18, 0, 19, 18, 21, 0),
    gsSP2Triangles(18, 17, 22, 0, 17, 23, 22, 0),
    gsSP2Triangles(17, 20, 23, 0, 23, 20, 18, 0),
    gsSP2Triangles(23, 18, 22, 0, 16, 8, 0, 0),
    gsSP2Triangles(0, 8, 21, 0, 21, 8, 7, 0),
    gsSP2Triangles(20, 19, 24, 0, 25, 4, 20, 0),
    gsSP2Triangles(4, 0, 21, 0, 21, 20, 4, 0),
    gsSP2Triangles(25, 6, 4, 0, 24, 26, 25, 0),
    gsSP2Triangles(25, 26, 27, 0, 16, 0, 6, 0),
    gsSP2Triangles(28, 19, 7, 0, 7, 19, 21, 0),
    gsSP2Triangles(29, 30, 16, 0, 30, 7, 16, 0),
    gsSP2Triangles(30, 28, 7, 0, 16, 6, 29, 0),
    gsSP2Triangles(29, 6, 25, 0, 29, 25, 27, 0),
    gsSP1Triangle(29, 27, 31, 0),
    gsSPVertex(&object_cowVtx_0001E0[356], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(2, 4, 0, 0, 0, 4, 5, 0),
    gsSP2Triangles(6, 2, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(15, 14, 17, 0, 17, 18, 15, 0),
    gsSP2Triangles(19, 15, 18, 0, 20, 12, 21, 0),
    gsSP2Triangles(10, 9, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 24, 0, 23, 26, 24, 0),
    gsSP2Triangles(27, 28, 24, 0, 29, 25, 0, 0),
    gsSP2Triangles(30, 28, 31, 0, 28, 30, 24, 0),
    gsSP2Triangles(24, 30, 1, 0, 0, 25, 24, 0),
    gsSP1Triangle(0, 24, 1, 0),
    gsSPVertex(&object_cowVtx_0001E0[388], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gCowHeadDL[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cowVtx_0001E0[74], 4, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gCowSpottedPatternTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x00FC),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_cowVtx_0001E0[78], 12, 4),
    gsSP2Triangles(2, 4, 5, 0, 3, 1, 6, 0),
    gsSP2Triangles(2, 3, 7, 0, 8, 9, 1, 0),
    gsSP2Triangles(10, 11, 2, 0, 1, 0, 12, 0),
    gsSP2Triangles(13, 14, 3, 0, 15, 0, 2, 0),
    gsSPVertex(&object_cowVtx_0001E0[90], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(3, 4, 1, 0, 2, 5, 0, 0),
    gsSP2Triangles(4, 2, 1, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 10, 7, 0, 6, 8, 11, 0),
    gsSP2Triangles(11, 9, 6, 0, 7, 6, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(14, 18, 12, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(15, 28, 29, 0, 17, 27, 15, 0),
    gsSP1Triangle(20, 19, 30, 0),
    gsSPVertex(&object_cowVtx_0001E0[121], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 2, 3, 0, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 27, 25, 0, 28, 29, 30, 0),
    gsSP1Triangle(29, 31, 30, 0),
    gsSPVertex(&object_cowVtx_0001E0[153], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 6, 7, 3, 0),
    gsSP2Triangles(8, 2, 1, 0, 7, 6, 9, 0),
    gsSP2Triangles(5, 3, 0, 0, 3, 7, 1, 0),
    gsSP2Triangles(10, 11, 1, 0, 10, 1, 7, 0),
    gsSP2Triangles(12, 13, 11, 0, 12, 11, 10, 0),
    gsSP2Triangles(14, 10, 9, 0, 9, 10, 7, 0),
    gsSP2Triangles(11, 8, 1, 0, 11, 15, 8, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 20, 19, 0, 18, 17, 23, 0),
    gsSP2Triangles(21, 15, 19, 0, 18, 14, 16, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCowTLUT),
    gsDPLoadTextureBlock(gCowEarTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsSPVertex(&object_cowVtx_0001E0[177], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(0, 3, 4, 0, 4, 1, 0, 0),
    gsSP2Triangles(1, 4, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 8, 7, 0, 7, 10, 9, 0),
    gsSP2Triangles(11, 9, 10, 0, 11, 8, 9, 0),
    gsSP2Triangles(10, 6, 11, 0, 8, 11, 6, 0),
    gsSP2Triangles(5, 2, 1, 0, 2, 5, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCowTLUT),
    gsDPLoadTextureBlock(gCowUdderTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(12, 13, 14, 0, 14, 15, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 18, 19, 16, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gCowEyelidTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSPEndDisplayList(),
};

Gfx gCowNoseDL[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cowVtx_0001E0[38], 8, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCowTLUT),
    gsDPLoadTextureBlock(gCowNoseTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_cowVtx_0001E0[46], 16, 8),
    gsSP2Triangles(0, 3, 8, 0, 9, 10, 0, 0),
    gsSP2Triangles(11, 12, 5, 0, 1, 0, 13, 0),
    gsSP2Triangles(14, 5, 1, 0, 2, 6, 15, 0),
    gsSP2Triangles(6, 16, 17, 0, 18, 4, 2, 0),
    gsSP1Triangle(4, 19, 20, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCowTLUT),
    gsDPLoadTextureBlock(gCowUdderTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(21, 22, 7, 0, 23, 7, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCowTLUT),
    gsDPLoadTextureBlock(gCowNoseTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_cowVtx_0001E0[62], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 6, 7, 0),
    gsSP1Triangle(0, 6, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCowTLUT),
    gsDPLoadTextureBlock(gCowUdderTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx gCowNoseRingDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCowTLUT),
    gsDPLoadTextureBlock(gCowNoseRingTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cowVtx_0001E0[21], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(1, 4, 5, 0, 5, 2, 1, 0),
    gsSP2Triangles(2, 6, 7, 0, 2, 7, 3, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 9, 11, 0),
    gsSP2Triangles(5, 4, 0, 0, 5, 0, 3, 0),
    gsSP2Triangles(3, 7, 12, 0, 3, 12, 5, 0),
    gsSP2Triangles(4, 8, 11, 0, 4, 11, 0, 0),
    gsSP2Triangles(13, 12, 7, 0, 13, 7, 14, 0),
    gsSP2Triangles(6, 12, 13, 0, 6, 13, 15, 0),
    gsSP2Triangles(15, 14, 7, 0, 15, 7, 6, 0),
    gsSP2Triangles(16, 14, 15, 0, 16, 15, 13, 0),
    gsSP2Triangles(13, 14, 16, 0, 1, 9, 8, 0),
    gsSP2Triangles(8, 4, 1, 0, 9, 1, 0, 0),
    gsSP2Triangles(0, 11, 9, 0, 10, 11, 8, 0),
    gsSP2Triangles(2, 5, 12, 0, 2, 12, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gCowJawDL[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_cowVtx_0001E0, 4, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCowTLUT),
    gsDPLoadTextureBlock(gCowUdderTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_cowVtx_0001E0[4], 12, 4),
    gsSP2Triangles(2, 4, 5, 0, 6, 3, 2, 0),
    gsSP2Triangles(7, 8, 2, 0, 9, 0, 1, 0),
    gsSP2Triangles(3, 10, 11, 0, 1, 12, 13, 0),
    gsSP2Triangles(2, 0, 14, 0, 15, 1, 3, 0),
    gsSPVertex(&object_cowVtx_0001E0[16], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(4, 2, 1, 0, 1, 0, 3, 0),
    gsSPEndDisplayList(),
};

u64 gCowTLUT[] = {
#include "assets/objects/object_cow/cow_tlut.rgba16.inc.c"
};

u64 gCowUdderTex[] = {
#include "assets/objects/object_cow/cow_udder.ci8.inc.c"
};

u64 gCowNoseRingTex[] = {
#include "assets/objects/object_cow/cow_nose_ring.ci8.inc.c"
};

u64 gCowNoseTex[] = {
#include "assets/objects/object_cow/cow_nose.ci8.inc.c"
};

u64 gCowSpottedPatternTex[] = {
#include "assets/objects/object_cow/cow_spotted_pattern.i8.inc.c"
};

u64 gCowEarTex[] = {
#include "assets/objects/object_cow/cow_ear.ci8.inc.c"
};

u64 gCowEyelidTex[] = {
#include "assets/objects/object_cow/cow_eyelid.rgba16.inc.c"
};

u64 gCowTailTex[] = {
#include "assets/objects/object_cow/cow_tail.ci8.inc.c"
};

StandardLimb gCowRootLimb = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    gCowTorsoDL
};

StandardLimb gCowHeadLimb = { 
    { 0, 4875, 5094 }, 0x02, LIMB_DONE,
    gCowHeadDL
};

StandardLimb gCowJawLimb = { 
    { 0, -2156, 594 }, LIMB_DONE, 0x03,
    gCowJawDL
};

StandardLimb gCowNoseLimb = { 
    { 0, -2156, 1094 }, 0x04, LIMB_DONE,
    gCowNoseDL
};

StandardLimb gCowNoseRingLimb = { 
    { 0, -531, 188 }, LIMB_DONE, LIMB_DONE,
    gCowNoseRingDL
};

void* gCowBodySkelLimbs[] = {
    &gCowRootLimb,
    &gCowHeadLimb,
    &gCowJawLimb,
    &gCowNoseLimb,
    &gCowNoseRingLimb,
};

FlexSkeletonHeader gCowBodySkel = { 
    { gCowBodySkelLimbs, ARRAY_COUNT(gCowBodySkelLimbs) }, 5
};

u8 object_cow_possiblePadding_00401C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 sCowBodyMoveHeadAnimFrameData[] = {
    0x0000, 0x0000, 0xFFCE, 0xFF46, 0xFE7A, 0xFD7D, 0xFC63, 0xFB3C, 0xFA1E, 0xF91A, 0xF843, 0xF7AD, 0xF749, 0xF6FE, 
    0xF6CC, 0xF6B3, 0xF6B3, 0xF6CC, 0xF6FE, 0xF749, 0xF7AD, 0xF843, 0xF91A, 0xFA1E, 0xFB3C, 0xFC63, 0xFD7D, 0xFE7A, 
    0xFF46, 0xFFCE, 0x0000, 0x0000, 0xFF3B, 0xFE23, 0xFCDD, 0xFB8C, 0xFA53, 0xF959, 0xF8BF, 0xF8AB, 0xF932, 0xFA3C, 
    0xFBA4, 0xFD46, 0xFEFE, 0x00A7, 0x021D, 0x033C, 0x03DF, 0x0421, 0x0439, 0x042C, 0x03FC, 0x03B1, 0x034D, 0x02D5, 
    0x024F, 0x01BF, 0x0129, 0x0093, 0x0000, 0x0000, 0xFDB5, 0xFC00, 0xFACD, 0xFA08, 0xF99B, 0xF973, 0xF97B, 0xF998, 
    0xF9CB, 0xFA2A, 0xFAC9, 0xFBBF, 0xFD20, 0xFF04, 0x017E, 0x05C2, 0x0C1C, 0x1343, 0x19ED, 0x1ED3, 0x20AC, 0x1F79, 
    0x1C6E, 0x180C, 0x12D8, 0x0D53, 0x0801, 0x0365, 0x0000, 0x0000, 0x0005, 0xFFAA, 0xFF06, 0xFE32, 0xFD46, 0xFC5B, 
    0xFB88, 0xFAB6, 0xF9C5, 0xF8C4, 0xF7C2, 0xF6CF, 0xF5F8, 0xF54E, 0xF4DF, 0xF4D8, 0xF542, 0xF5F7, 0xF6D0, 0xF7A9, 
    0xF88D, 0xF997, 0xFAB8, 0xFBE1, 0xFD02, 0xFE0C, 0xFEEE, 0xFF9A, 0x0000, 0x0000, 0xFF95, 0xFEA2, 0xFD44, 0xFB9B, 
    0xF9C6, 0xF7E4, 0xF615, 0xF477, 0xF329, 0xF24C, 0xF1D1, 0xF195, 0xF190, 0xF1BC, 0xF210, 0xF287, 0xF319, 0xF3C0, 
    0xF474, 0xF55F, 0xF69D, 0xF814, 0xF9A9, 0xFB43, 0xFCC9, 0xFE1F, 0xFF2B, 0xFFD4, 0x0000, 0x0000, 0x009F, 0x0261, 
    0x04AE, 0x06ED, 0x0887, 0x08E4, 0x07FB, 0x0650, 0x041F, 0x01A5, 0xFF1E, 0xFCC6, 0xFAD8, 0xF991, 0xF92E, 0xFA84, 
    0xFDAC, 0x01C4, 0x05EB, 0x0940, 0x0AE2, 0x0ACD, 0x09C8, 0x081C, 0x0612, 0x03F4, 0x020B, 0x00A1, 0x0000, 0x0000, 
    0x0094, 0x01E2, 0x039D, 0x0572, 0x0713, 0x0830, 0x0878, 0x07E0, 0x06AC, 0x050C, 0x032B, 0x0138, 0xFF5F, 0xFDD0, 
    0xFCB5, 0xFC3E, 0xFCBE, 0xFE2F, 0x0035, 0x0276, 0x0498, 0x0640, 0x0713, 0x06BC, 0x0573, 0x03AC, 0x01DE, 0x007D, 
    0x0000, 0x0000, 0x0244, 0x0559, 0x08F4, 0x0CCB, 0x1093, 0x1402, 0x16CF, 0x18AE, 0x1956, 0x18FE, 0x181C, 0x16C3, 
    0x1507, 0x12FA, 0x10B1, 0x0E3E, 0x0BB5, 0x0928, 0x06AC, 0x0454, 0x0233, 0x005C, 0xFEE2, 0xFDD7, 0xFD43, 0xFD2B, 
    0xFD94, 0xFE84, 0x0000, 0x0000, 0x0053, 0x00CE, 0x0160, 0x01F8, 0x0286, 0x02F8, 0x033F, 0x0349, 0x0305, 0x025F, 
    0x015B, 0x0013, 0xFE9F, 0xFD18, 0xFB97, 0xFA34, 0xF908, 0xF82D, 0xF7BA, 0xF84E, 0xFA0A, 0xFC4C, 0xFE72, 0xFFDA, 
    0x005C, 0x0064, 0x002F, 0xFFF9, 0x0000, 0x0000, 
};

JointIndex sCowBodyMoveHeadAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0000, 0x001F },
    { 0x003D, 0x0000, 0x005B },
    { 0x0079, 0x0097, 0x00B5 },
    { 0x00D3, 0x0000, 0x00F1 },
};

AnimationHeader gCowBodyMoveHeadAnim = { 
    { 30 }, sCowBodyMoveHeadAnimFrameData,
    sCowBodyMoveHeadAnimJointIndices, 1
};

u8 object_cow_possiblePadding_004274[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sCowTailIdleAnimFrameData[] = {
    0x0000, 0xC000, 0xFE94, 0xFE94, 0xFE94, 0xFE94, 0xFEA8, 0xFEDC, 0xFF23, 0xFF71, 0xFFB8, 0xFFEC, 0x0000, 0xFFF6, 
    0xFFDA, 0xFFB1, 0xFF80, 0xFF4A, 0xFF14, 0xFEE3, 0xFEBA, 0xFE9E, 0x0000, 0xFFDA, 0xFF80, 0xFF14, 0xFEBA, 0xFE94, 
    0xFEAE, 0xFEF1, 0xFF4B, 0xFFAC, 0x0000, 0x0054, 0x00B5, 0x010F, 0x0152, 0x016C, 0x0146, 0x00EC, 0x0080, 0x0026, 
    0x0000, 0x007E, 0x01A5, 0x02FD, 0x040C, 0x0457, 0x03F1, 0x0348, 0x026D, 0x0170, 0x0061, 0xFF51, 0xFE51, 0xFD70, 
    0xFCBF, 0xFC4F, 0xFC82, 0xFD67, 0xFE90, 0xFF92, 0x0000, 0x001B, 0x0064, 0x00D1, 0x0159, 0x01F0, 0x028C, 0x0323, 
    0x03AA, 0x0417, 0x0461, 0x047B, 0x0454, 0x03EB, 0x0352, 0x029D, 0x01DE, 0x0129, 0x0091, 0x0027, 
};

JointIndex sCowTailIdleAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0000, 0x0001 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0016, 0x0000 },
    { 0x0000, 0x002A, 0x003E },
};

AnimationHeader gCowTailIdleAnim = { 
    { 20 }, sCowTailIdleAnimFrameData,
    sCowTailIdleAnimJointIndices, 2
};

u8 object_cow_possiblePadding_004358[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_cowVtx_004360[] = {
#include "assets/objects/object_cow/object_cowVtx_004360.vtx.inc"
};

Gfx gCowTailConnectionDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCowTLUT),
    gsDPLoadTextureBlock(gCowTailTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cowVtx_004360[51], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 1, 5, 0, 1, 0, 5, 0),
    gsSP2Triangles(5, 0, 3, 0, 5, 3, 4, 0),
    gsSP1Triangle(4, 3, 1, 0),
    gsSPEndDisplayList(),
};

Gfx gCowTailUpperDL[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cowVtx_004360[39], 3, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCowTLUT),
    gsDPLoadTextureBlock(gCowTailTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_cowVtx_004360[42], 9, 3),
    gsSP2Triangles(0, 3, 4, 0, 1, 2, 5, 0),
    gsSP2Triangles(6, 7, 0, 0, 0, 1, 8, 0),
    gsSP2Triangles(9, 10, 1, 0, 11, 2, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gCowTailMiddleDL[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cowVtx_004360[27], 3, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCowTLUT),
    gsDPLoadTextureBlock(gCowTailTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_cowVtx_004360[30], 9, 3),
    gsSP2Triangles(0, 3, 4, 0, 0, 1, 5, 0),
    gsSP2Triangles(1, 2, 6, 0, 7, 8, 0, 0),
    gsSP2Triangles(9, 10, 1, 0, 11, 2, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gCowTailLowerDL[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cowVtx_004360[15], 3, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCowTLUT),
    gsDPLoadTextureBlock(gCowTailTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_cowVtx_004360[18], 9, 3),
    gsSP2Triangles(0, 3, 4, 0, 0, 2, 5, 0),
    gsSP2Triangles(2, 1, 6, 0, 7, 8, 0, 0),
    gsSP2Triangles(9, 1, 0, 0, 10, 11, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gCowTailEndDL[] = {
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_cowVtx_004360, 3, 0),
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCowTLUT),
    gsDPLoadTextureBlock(gCowTailTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_cowVtx_004360[3], 9, 3),
    gsSP2Triangles(1, 2, 3, 0, 2, 0, 4, 0),
    gsSP2Triangles(0, 1, 5, 0, 6, 7, 1, 0),
    gsSP2Triangles(8, 1, 9, 0, 10, 11, 2, 0),
    gsSPVertex(&object_cowVtx_004360[12], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

StandardLimb gCowTailRootLimb = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    gCowTailConnectionDL
};

StandardLimb gCowTailUpperLimb = { 
    { 0, -250, -1000 }, 0x02, LIMB_DONE,
    gCowTailUpperDL
};

StandardLimb gCowTailMiddleLimb = { 
    { 1000, 0, 0 }, 0x03, LIMB_DONE,
    gCowTailMiddleDL
};

StandardLimb gCowTailLowerLimb = { 
    { 1156, 0, 0 }, 0x04, LIMB_DONE,
    gCowTailLowerDL
};

StandardLimb gCowTailEndLimb = { 
    { 1125, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gCowTailEndDL
};

void* gCowTailSkelLimbs[] = {
    &gCowTailRootLimb,
    &gCowTailUpperLimb,
    &gCowTailMiddleLimb,
    &gCowTailLowerLimb,
    &gCowTailEndLimb,
};

FlexSkeletonHeader gCowTailSkel = { 
    { gCowTailSkelLimbs, ARRAY_COUNT(gCowTailSkelLimbs) }, 5
};

u8 object_cow_possiblePadding_004C3C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 sCowTailSwishAnimFrameData[] = {
    0x0000, 0x0021, 0xC000, 0xBF1C, 0xBD0F, 0xBCEB, 0xBFC9, 0xC1D5, 0xC176, 0xC07E, 0xBF5E, 0xBE7F, 0xBE2A, 0xBE6E, 
    0xBF27, 0xC000, 0xC0CD, 0xC19D, 0xC260, 0xC305, 0xC379, 0xC3AB, 0xC39D, 0xC365, 0xC30B, 0xC298, 0xC217, 0xC191, 
    0xC111, 0xC09E, 0xC043, 0xC006, 0xBFE3, 0xBFCD, 0xBFC3, 0xBFC2, 0xBFC8, 0xBFD2, 0xBFDE, 0xBFEA, 0xBFF5, 0xBFFD, 
    0x0000, 0x01BE, 0x05E6, 0x0AB1, 0x0D7C, 0x0DDF, 0x0D78, 0x0C5E, 0x0A9B, 0x084A, 0x05AA, 0x031E, 0x0116, 0x0000, 
    0xFF8F, 0xFF30, 0xFEE4, 0xFEA9, 0xFE7C, 0xFE5A, 0xFE40, 0xFE2F, 0xFE27, 0xFE26, 0xFE2E, 0xFE3E, 0xFE55, 0xFE73, 
    0xFE95, 0xFEBA, 0xFEE2, 0xFF0B, 0xFF33, 0xFF5B, 0xFF81, 0xFFA3, 0xFFC2, 0xFFDC, 0xFFEF, 0xFFFC, 0xC000, 0xBE1D, 
    0xBE97, 0xC777, 0xD35D, 0xD96A, 0xD8A0, 0xD64E, 0xD2EE, 0xCEF8, 0xCACF, 0xC6C0, 0xC30F, 0xC000, 0xBD30, 0xBA39, 
    0xB767, 0xB506, 0xB360, 0xB2C1, 0xB310, 0xB3EA, 0xB531, 0xB6C6, 0xB88A, 0xBA5E, 0xBC24, 0xBDBC, 0xBF09, 0xBFEA, 
    0xC070, 0xC0C4, 0xC0EE, 0xC0F6, 0xC0E3, 0xC0BE, 0xC08F, 0xC05C, 0xC02E, 0xC00D, 0x0000, 0xFE03, 0xF9D0, 0xF60F, 
    0xF33A, 0xF049, 0xEDA2, 0xEBAE, 0xEAD2, 0xEADB, 0xEB45, 0xEBFD, 0xECF0, 0xEE0C, 0xEF3D, 0xF071, 0xF195, 0xF295, 
    0xF360, 0xF40E, 0xF4C4, 0xF57F, 0xF640, 0xF703, 0xF7C8, 0xF88D, 0xF950, 0xFA11, 0xFACC, 0xFB82, 0xFC30, 0xFCD5, 
    0xFD6E, 0xFDFC, 0xFE7C, 0xFEEC, 0xFF4B, 0xFF98, 0xFFD1, 0xFFF4, 0x0000, 0x0803, 0x1606, 0x1B03, 0x11BD, 0x021A, 
    0xF0C6, 0xE26C, 0xDBB7, 0xDBC2, 0xDE2D, 0xE26F, 0xE802, 0xEE5B, 0xF4F4, 0xFB43, 0x00C0, 0x04E3, 0x0724, 0x0822, 
    0x08DA, 0x0951, 0x098E, 0x0997, 0x0970, 0x091F, 0x08AB, 0x0819, 0x076E, 0x06B0, 0x05E6, 0x0513, 0x043F, 0x036E, 
    0x02A7, 0x01EF, 0x014C, 0x00C3, 0x005B, 0x0018, 0x0000, 0x03C6, 0x0D0C, 0x18C1, 0x23D3, 0x2B31, 0x2BC9, 0x229A, 
    0x1180, 0xFCB1, 0xE865, 0xD8D4, 0xD235, 0xD3A3, 0xD8D2, 0xE0E1, 0xEAEF, 0xF61B, 0x0184, 0x0C48, 0x1587, 0x1C60, 
    0x1FF1, 0x211E, 0x216F, 0x20FC, 0x1FDF, 0x1E2F, 0x1C06, 0x197C, 0x16A9, 0x13A7, 0x108D, 0x0D75, 0x0A76, 0x07AA, 
    0x0529, 0x030C, 0x016B, 0x005F, 0x0000, 0xF2DA, 0xE92F, 0xF55F, 0x0840, 0x1C32, 0x2B92, 0x30C0, 0x2B61, 0x202F, 
    0x1125, 0x0040, 0xEF7C, 0xE0D7, 0xD64D, 0xD1DA, 0xD2A9, 0xD63D, 0xDC11, 0xE3A5, 0xEC75, 0xF5FE, 0xFFBF, 0x0935, 
    0x11DC, 0x1933, 0x1EB8, 0x21E7, 0x22E7, 0x2262, 0x2098, 0x1DC9, 0x1A36, 0x161D, 0x11C0, 0x0D5F, 0x093A, 0x0591, 
    0x02A4, 0x00B4, 
};

JointIndex sCowTailSwishAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0002, 0x002A, 0x0052 },
    { 0x007A, 0x00A2, 0x0000 },
    { 0x0000, 0x00CA, 0x0001 },
    { 0x0000, 0x00F2, 0x0000 },
};

AnimationHeader gCowTailSwishAnim = { 
    { 40 }, sCowTailSwishAnimFrameData,
    sCowTailSwishAnimJointIndices, 2
};

