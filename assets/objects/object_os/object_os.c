#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_os.h"

s16 object_os_Anim_0002E4FrameData[] = {
    0x0000, 0x0DAC, 0xFF9C, 0x4000, 0xFB0D, 0x03C0, 0xEDAA, 0xEDB1, 0xEDC4, 0xEDE1, 0xEE06, 0xEE32, 0xEE62, 0xEE95, 
    0xEEC9, 0xEEFC, 0xEF2D, 0xEF58, 0xEF7E, 0xEF9B, 0xEFAD, 0xEFB4, 0xEFA2, 0xEF72, 0xEF2D, 0xEEDA, 0xEE84, 0xEE32, 
    0xEDEC, 0xEDBC, 0x1771, 0x1770, 0x176E, 0x176B, 0x1767, 0x1762, 0x175D, 0x1758, 0x1753, 0x174E, 0x1749, 0x1744, 
    0x1741, 0x173E, 0x173C, 0x173B, 0x173D, 0x1742, 0x1749, 0x1751, 0x175A, 0x1762, 0x176A, 0x176F, 0xFA7D, 0xFA81, 
    0xFA8B, 0xFA9A, 0xFAAE, 0xFAC6, 0xFAE0, 0xFAFC, 0xFB19, 0xFB36, 0xFB52, 0xFB6B, 0xFB81, 0xFB92, 0xFB9D, 0xFBA1, 
    0xFB96, 0xFB7A, 0xFB52, 0xFB23, 0xFAF3, 0xFAC6, 0xFAA0, 0xFA87, 0x6570, 0x656C, 0x6564, 0x6556, 0x6544, 0x652F, 
    0x6516, 0x64FC, 0x64E1, 0x64C6, 0x64AC, 0x6493, 0x647E, 0x646E, 0x6463, 0x645F, 0x646A, 0x6485, 0x64AC, 0x64D8, 
    0x6505, 0x652F, 0x6550, 0x6567, 0xC42C, 0xC43E, 0xC46F, 0xC4BB, 0xC51E, 0xC592, 0xC614, 0xC69E, 0xC72C, 0xC7B8, 
    0xC83D, 0xC8B7, 0xC91F, 0xC970, 0xC9A5, 0xC9B8, 0xC985, 0xC8FF, 0xC83D, 0xC75B, 0xC66F, 0xC592, 0xC4DA, 0xC45B, 
    0xF7F1, 0xF7F4, 0xF7FD, 0xF80B, 0xF81C, 0xF82F, 0xF845, 0xF85C, 0xF872, 0xF888, 0xF89C, 0xF8AD, 0xF8BA, 0xF8C3, 
    0xF8C6, 0xF8C0, 0xF8B0, 0xF898, 0xF87B, 0xF85C, 0xF83C, 0xF81F, 0xF808, 0xF7F7, 0xF5F6, 0xF5F4, 0xF5EE, 0xF5E4, 
    0xF5D7, 0xF5C9, 0xF5B9, 0xF5A8, 0xF598, 0xF588, 0xF579, 0xF56D, 0xF563, 0xF55D, 0xF55B, 0xF55F, 0xF56B, 0xF57C, 
    0xF591, 0xF5A8, 0xF5C0, 0xF5D5, 0xF5E6, 0xF5F2, 0xF4AE, 0xF4A1, 0xF47F, 0xF44A, 0xF406, 0xF3B7, 0xF360, 0xF306, 
    0xF2AC, 0xF256, 0xF207, 0xF1C3, 0xF18E, 0xF16B, 0xF15F, 0xF176, 0xF1B7, 0xF216, 0xF289, 0xF306, 0xF384, 0xF3F7, 
    0xF456, 0xF496, 0xEBA0, 0xEBA0, 0xEBA1, 0xEBA2, 0xEBA4, 0xEBA6, 0xEBA7, 0xEBA9, 0xEBAB, 0xEBAD, 0xEBAF, 0xEBB1, 
    0xEBB3, 0xEBB4, 0xEBB4, 0xEBB5, 0xEBB4, 0xEBB2, 0xEBAF, 0xEBAC, 0xEBA9, 0xEBA6, 0xEBA3, 0xEBA1, 0x7B1A, 0x7B1E, 
    0x7B28, 0x7B37, 0x7B4C, 0x7B64, 0x7B7F, 0x7B9B, 0x7BB9, 0x7BD7, 0x7BF3, 0x7C0D, 0x7C23, 0x7C35, 0x7C40, 0x7C44, 
    0x7C39, 0x7C1C, 0x7BF3, 0x7BC3, 0x7B92, 0x7B64, 0x7B3E, 0x7B24, 0xE273, 0xE26F, 0xE265, 0xE254, 0xE23F, 0xE225, 
    0xE208, 0xE1E9, 0xE1C8, 0xE1A7, 0xE187, 0xE16A, 0xE150, 0xE13C, 0xE12F, 0xE12A, 0xE137, 0xE158, 0xE187, 0xE1BD, 
    0xE1F3, 0xE225, 0xE24E, 0xE269, 0x37D8, 0x37C5, 0x3790, 0x373D, 0x36D1, 0x3652, 0x35C4, 0x352D, 0x3492, 0x33F8, 
    0x3365, 0x32DF, 0x326C, 0x3212, 0x31D7, 0x31C3, 0x31FA, 0x328F, 0x3365, 0x345E, 0x3560, 0x3652, 0x371B, 0x37A5, 
    0x0B69, 0x0B7B, 0x0BAE, 0x0BFC, 0x0C61, 0x0CD5, 0x0D55, 0x0DDA, 0x0E60, 0x0EDF, 0x0F54, 0x0FB8, 0x1007, 0x103A, 
    0x104C, 0x1029, 0x0FCA, 0x0F3E, 0x0E94, 0x0DDA, 0x0D21, 0x0C77, 0x0BEB, 0x0B8C, 0xF772, 0xF787, 0xF7C1, 0xF81B, 
    0xF88C, 0xF90F, 0xF99B, 0xFA2C, 0xFAB8, 0xFB3B, 0xFBAC, 0xFC06, 0xFC40, 0xFC55, 0xFC38, 0xFBE8, 0xFB71, 0xFADD, 
    0xFA39, 0xF98E, 0xF8EA, 0xF856, 0xF7DF, 0xF78F, 
};

JointIndex object_os_Anim_0002E4JointIndices[] = {
    { 0x0000, 0x0001, 0x0002 },
    { 0x0003, 0x0006, 0x0003 },
    { 0x001E, 0x0036, 0x004E },
    { 0x0004, 0x0000, 0x0066 },
    { 0x007E, 0x0096, 0x00AE },
    { 0x00C6, 0x00DE, 0x00F6 },
    { 0x0005, 0x0000, 0x010E },
    { 0x0000, 0x0000, 0x0126 },
    { 0x0000, 0x0000, 0x013E },
};

AnimationHeader object_os_Anim_0002E4 = { 
    { 24 }, object_os_Anim_0002E4FrameData,
    object_os_Anim_0002E4JointIndices, 6
};

u8 object_os_possiblePadding_0002F4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_osVtx_000300[] = {
#include "assets/objects/object_os/object_osVtx_000300.vtx.inc"
};

Gfx object_os_DL_001D80[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_os_TLUT_002E18),
    gsDPLoadTextureBlock(object_os_Tex_0040D8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_osVtx_000300[357], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 4, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 2, 1, 11, 0),
    gsSP2Triangles(9, 12, 13, 0, 12, 1, 3, 0),
    gsSP2Triangles(12, 11, 1, 0, 11, 14, 2, 0),
    gsSP2Triangles(12, 15, 11, 0, 9, 15, 12, 0),
    gsSP2Triangles(9, 8, 15, 0, 10, 16, 8, 0),
    gsSP2Triangles(9, 17, 10, 0, 9, 18, 17, 0),
    gsSP2Triangles(13, 18, 9, 0, 2, 19, 0, 0),
    gsSP2Triangles(10, 17, 20, 0, 21, 16, 10, 0),
    gsSP2Triangles(22, 21, 10, 0, 14, 21, 22, 0),
    gsSP2Triangles(2, 14, 22, 0, 19, 2, 22, 0),
    gsSP2Triangles(20, 22, 10, 0, 23, 7, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_os_TLUT_002E18),
    gsDPLoadTextureBlock(object_os_Tex_003218, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_osVtx_000300[381], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(2, 5, 0, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 4, 0, 6, 5, 2, 0),
    gsSP2Triangles(4, 3, 6, 0, 2, 7, 6, 0),
    gsSP2Triangles(4, 7, 8, 0, 9, 1, 4, 0),
    gsSP2Triangles(2, 1, 9, 0, 8, 7, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_os_TLUT_002E18),
    gsDPLoadTextureBlock(object_os_Tex_0044D8, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsSPVertex(&object_osVtx_000300[391], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(10, 12, 11, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 11, 25, 26, 0),
    gsSP2Triangles(11, 27, 25, 0, 15, 28, 13, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_os_TLUT_002E18),
    gsDPLoadTextureBlock(object_os_Tex_004558, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsSPVertex(&object_osVtx_000300[420], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx object_os_DL_0020A8[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_osVtx_000300, 4, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_os_TLUT_002E18),
    gsDPLoadTextureBlock(object_os_Tex_003218, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_osVtx_000300[4], 20, 4),
    gsSP2Triangles(0, 4, 5, 0, 1, 6, 7, 0),
    gsSP2Triangles(8, 9, 0, 0, 10, 11, 2, 0),
    gsSP2Triangles(12, 13, 1, 0, 2, 14, 15, 0),
    gsSP2Triangles(16, 3, 0, 0, 3, 17, 18, 0),
    gsSP2Triangles(1, 3, 19, 0, 2, 20, 21, 0),
    gsSP2Triangles(2, 1, 22, 0, 23, 0, 2, 0),
    gsSPVertex(&object_osVtx_000300[24], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 13, 0, 9, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 7, 6, 0),
    gsSP2Triangles(19, 24, 23, 0, 22, 25, 11, 0),
    gsSP2Triangles(22, 21, 26, 0, 27, 24, 19, 0),
    gsSP2Triangles(25, 22, 26, 0, 27, 19, 18, 0),
    gsSP2Triangles(28, 10, 20, 0, 7, 9, 5, 0),
    gsSP1Triangle(10, 28, 29, 0),
    gsSPVertex(&object_osVtx_000300[54], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 4, 7, 0, 8, 9, 10, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_os_TLUT_002E18),
    gsDPLoadTextureBlock(object_os_Tex_003258, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_osVtx_000300[65], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 5, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 8, 12, 0),
    gsSP2Triangles(9, 8, 11, 0, 11, 14, 9, 0),
    gsSP2Triangles(13, 14, 11, 0, 15, 12, 16, 0),
    gsSP2Triangles(12, 15, 13, 0, 16, 17, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 13, 15, 0),
    gsSP2Triangles(13, 21, 22, 0, 22, 14, 13, 0),
    gsSP2Triangles(23, 15, 17, 0, 18, 20, 24, 0),
    gsSP2Triangles(25, 20, 26, 0, 15, 23, 21, 0),
    gsSP2Triangles(27, 25, 26, 0, 27, 26, 28, 0),
    gsSP2Triangles(14, 22, 29, 0, 29, 9, 14, 0),
    gsSP1Triangle(7, 30, 31, 0),
    gsSPVertex(&object_osVtx_000300[97], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 9, 0),
    gsSP2Triangles(13, 14, 15, 0, 4, 15, 14, 0),
    gsSP2Triangles(14, 16, 4, 0, 1, 4, 16, 0),
    gsSP2Triangles(14, 13, 17, 0, 17, 18, 14, 0),
    gsSP2Triangles(16, 14, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(1, 16, 19, 0, 19, 20, 1, 0),
    gsSP2Triangles(1, 20, 2, 0, 21, 2, 20, 0),
    gsSP2Triangles(21, 20, 19, 0, 21, 22, 23, 0),
    gsSP2Triangles(23, 24, 2, 0, 19, 18, 22, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_os_TLUT_002E18),
    gsDPLoadTextureBlock(object_os_Tex_003358, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_osVtx_000300[122], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_os_TLUT_002E18),
    gsDPLoadTextureBlock(object_os_Tex_003398, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(8, 9, 10, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_os_TLUT_003018),
    gsDPLoadTextureBlock(object_os_Tex_0033D8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x003C),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 11, 0),
    gsSP2Triangles(13, 12, 16, 0, 13, 16, 17, 0),
    gsSP2Triangles(18, 17, 16, 0, 18, 19, 20, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_os_TLUT_003018),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSPVertex(&object_osVtx_000300[143], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(3, 4, 0, 0, 5, 4, 3, 0),
    gsSP2Triangles(5, 3, 2, 0, 6, 7, 8, 0),
    gsSP2Triangles(7, 9, 8, 0, 6, 10, 0, 0),
    gsSP2Triangles(0, 7, 6, 0, 0, 9, 7, 0),
    gsSPEndDisplayList(),
};

Gfx object_os_DL_0025E8[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_osVtx_000300[333], 4, 0),
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_os_TLUT_002E18),
    gsDPLoadTextureBlock(object_os_Tex_003ED8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_osVtx_000300[337], 12, 4),
    gsSP2Triangles(4, 0, 3, 0, 5, 6, 3, 0),
    gsSP2Triangles(7, 1, 8, 0, 9, 2, 1, 0),
    gsSP2Triangles(10, 1, 11, 0, 3, 2, 12, 0),
    gsSP2Triangles(3, 13, 14, 0, 1, 0, 15, 0),
    gsSPVertex(&object_osVtx_000300[349], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(4, 5, 2, 0, 6, 1, 0, 0),
    gsSP2Triangles(4, 3, 6, 0, 6, 7, 4, 0),
    gsSP2Triangles(2, 5, 0, 0, 0, 7, 6, 0),
    gsSPEndDisplayList(),
};

Gfx object_os_DL_002718[] = {
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_osVtx_000300[309], 4, 0),
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_os_TLUT_002E18),
    gsDPLoadTextureBlock(object_os_Tex_003ED8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_osVtx_000300[313], 12, 4),
    gsSP2Triangles(0, 4, 5, 0, 6, 7, 1, 0),
    gsSP2Triangles(8, 9, 0, 0, 1, 10, 11, 0),
    gsSP2Triangles(12, 2, 1, 0, 0, 2, 13, 0),
    gsSP2Triangles(14, 3, 0, 0, 1, 3, 15, 0),
    gsSPVertex(&object_osVtx_000300[325], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(1, 5, 6, 0, 6, 5, 4, 0),
    gsSP2Triangles(0, 7, 3, 0, 2, 7, 0, 0),
    gsSP2Triangles(6, 2, 1, 0, 4, 3, 6, 0),
    gsSPEndDisplayList(),
};

Gfx object_os_DL_002848[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_osVtx_000300[255], 4, 0),
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_os_TLUT_002E18),
    gsDPLoadTextureBlock(object_os_Tex_003DD8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_osVtx_000300[259], 20, 4),
    gsSP2Triangles(4, 0, 5, 0, 6, 1, 0, 0),
    gsSP2Triangles(7, 8, 0, 0, 9, 2, 1, 0),
    gsSP2Triangles(3, 2, 10, 0, 11, 12, 3, 0),
    gsSP2Triangles(1, 13, 14, 0, 15, 16, 0, 0),
    gsSP2Triangles(3, 17, 18, 0, 19, 20, 1, 0),
    gsSP2Triangles(2, 21, 22, 0, 0, 3, 23, 0),
    gsSPVertex(&object_osVtx_000300[279], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 10, 0),
    gsSP2Triangles(6, 11, 12, 0, 11, 13, 14, 0),
    gsSP2Triangles(13, 7, 10, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 16, 15, 0, 18, 2, 19, 0),
    gsSP2Triangles(16, 19, 20, 0, 20, 19, 21, 0),
    gsSP2Triangles(15, 22, 18, 0, 22, 5, 4, 0),
    gsSP2Triangles(19, 2, 1, 0, 21, 23, 20, 0),
    gsSP2Triangles(4, 3, 24, 0, 19, 16, 18, 0),
    gsSP2Triangles(20, 17, 16, 0, 8, 7, 25, 0),
    gsSP2Triangles(25, 26, 8, 0, 7, 13, 25, 0),
    gsSP2Triangles(12, 9, 6, 0, 10, 7, 6, 0),
    gsSP2Triangles(10, 14, 13, 0, 14, 12, 11, 0),
    gsSP2Triangles(12, 14, 10, 0, 10, 9, 12, 0),
    gsSP2Triangles(2, 18, 4, 0, 4, 24, 2, 0),
    gsSP2Triangles(4, 18, 22, 0, 0, 24, 3, 0),
    gsSP2Triangles(17, 27, 15, 0, 2, 24, 0, 0),
    gsSP2Triangles(25, 28, 26, 0, 25, 13, 29, 0),
    gsSP1Triangle(1, 21, 19, 0),
    gsSPEndDisplayList(),
};

Gfx object_os_DL_002A00[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_osVtx_000300[231], 4, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_os_TLUT_002E18),
    gsDPLoadTextureBlock(object_os_Tex_003ED8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_osVtx_000300[235], 12, 4),
    gsSP2Triangles(3, 0, 4, 0, 3, 5, 6, 0),
    gsSP2Triangles(7, 1, 8, 0, 1, 2, 9, 0),
    gsSP2Triangles(10, 1, 11, 0, 12, 2, 3, 0),
    gsSP2Triangles(13, 14, 3, 0, 15, 0, 1, 0),
    gsSPVertex(&object_osVtx_000300[247], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(0, 5, 3, 0, 2, 1, 6, 0),
    gsSP2Triangles(6, 4, 3, 0, 3, 7, 6, 0),
    gsSP2Triangles(2, 5, 0, 0, 6, 7, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_os_DL_002B30[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_osVtx_000300[207], 4, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_os_TLUT_002E18),
    gsDPLoadTextureBlock(object_os_Tex_003ED8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_osVtx_000300[211], 12, 4),
    gsSP2Triangles(4, 5, 0, 0, 1, 6, 7, 0),
    gsSP2Triangles(0, 8, 9, 0, 10, 11, 1, 0),
    gsSP2Triangles(1, 2, 12, 0, 13, 2, 0, 0),
    gsSP2Triangles(0, 3, 14, 0, 15, 3, 1, 0),
    gsSPVertex(&object_osVtx_000300[223], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 6, 1, 0, 3, 6, 5, 0),
    gsSP2Triangles(4, 7, 2, 0, 2, 7, 0, 0),
    gsSP2Triangles(1, 0, 5, 0, 5, 4, 3, 0),
    gsSPEndDisplayList(),
};

Gfx object_os_DL_002C60[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_osVtx_000300[154], 4, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_os_TLUT_002E18),
    gsDPLoadTextureBlock(object_os_Tex_003DD8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_osVtx_000300[158], 20, 4),
    gsSP2Triangles(4, 0, 5, 0, 0, 1, 6, 0),
    gsSP2Triangles(0, 7, 8, 0, 1, 2, 9, 0),
    gsSP2Triangles(10, 2, 3, 0, 3, 11, 12, 0),
    gsSP2Triangles(13, 14, 1, 0, 0, 15, 16, 0),
    gsSP2Triangles(17, 18, 3, 0, 1, 19, 20, 0),
    gsSP2Triangles(21, 22, 2, 0, 23, 3, 0, 0),
    gsSPVertex(&object_osVtx_000300[178], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(0, 3, 8, 0, 9, 10, 8, 0),
    gsSP2Triangles(11, 12, 8, 0, 13, 4, 12, 0),
    gsSP2Triangles(9, 3, 4, 0, 14, 15, 16, 0),
    gsSP2Triangles(16, 15, 17, 0, 18, 19, 17, 0),
    gsSP2Triangles(20, 18, 15, 0, 21, 18, 20, 0),
    gsSP2Triangles(17, 22, 16, 0, 6, 5, 22, 0),
    gsSP2Triangles(23, 19, 18, 0, 24, 7, 6, 0),
    gsSP2Triangles(17, 15, 18, 0, 15, 14, 20, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 3, 9, 0),
    gsSP2Triangles(4, 13, 9, 0, 12, 11, 13, 0),
    gsSP2Triangles(13, 11, 10, 0, 10, 9, 13, 0),
    gsSP2Triangles(7, 25, 5, 0, 24, 6, 17, 0),
    gsSP2Triangles(17, 19, 24, 0, 22, 17, 6, 0),
    gsSP2Triangles(7, 24, 25, 0, 14, 16, 26, 0),
    gsSP2Triangles(19, 23, 25, 0, 25, 24, 19, 0),
    gsSP2Triangles(0, 27, 1, 0, 2, 28, 4, 0),
    gsSP1Triangle(18, 21, 23, 0),
    gsSPEndDisplayList(),
};

u64 object_os_TLUT_002E18[] = {
#include "assets/objects/object_os/tlut_00002E18.rgba16.inc.c"
};

u64 object_os_TLUT_003018[] = {
#include "assets/objects/object_os/tlut_00003018.rgba16.inc.c"
};

u64 object_os_Tex_003218[] = {
#include "assets/objects/object_os/tex_00003218.ci8.inc.c"
};

u64 object_os_Tex_003258[] = {
#include "assets/objects/object_os/tex_00003258.ci8.inc.c"
};

u64 object_os_Tex_003358[] = {
#include "assets/objects/object_os/tex_00003358.ci8.inc.c"
};

u64 object_os_Tex_003398[] = {
#include "assets/objects/object_os/tex_00003398.ci8.inc.c"
};

u64 object_os_Tex_0033D8[] = {
#include "assets/objects/object_os/tex_000033D8.ci8.inc.c"
};

u64 gOsEyeClosedTex[] = {
#include "assets/objects/object_os/eye_closed.ci8.inc.c"
};

u64 gOsEyeOpenTex[] = {
#include "assets/objects/object_os/eye_open.ci8.inc.c"
};

u64 object_os_Tex_003DD8[] = {
#include "assets/objects/object_os/tex_00003DD8.ci8.inc.c"
};

u64 object_os_Tex_003ED8[] = {
#include "assets/objects/object_os/tex_00003ED8.ci8.inc.c"
};

u64 object_os_Tex_0040D8[] = {
#include "assets/objects/object_os/tex_000040D8.ci8.inc.c"
};

u64 object_os_Tex_0044D8[] = {
#include "assets/objects/object_os/tex_000044D8.ci8.inc.c"
};

u64 object_os_Tex_004558[] = {
#include "assets/objects/object_os/tex_00004558.ci8.inc.c"
};

StandardLimb object_os_Limb_0045D8 = { 
    { 0, 3500, -100 }, 0x01, LIMB_DONE,
    object_os_DL_001D80
};

StandardLimb object_os_Limb_0045E4 = { 
    { 1850, 0, 700 }, 0x02, 0x04,
    object_os_DL_002A00
};

StandardLimb object_os_Limb_0045F0 = { 
    { 950, 0, 0 }, 0x03, LIMB_DONE,
    object_os_DL_002B30
};

StandardLimb object_os_Limb_0045FC = { 
    { 1000, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_os_DL_002C60
};

StandardLimb object_os_Limb_004608 = { 
    { 1850, 0, -700 }, 0x05, 0x07,
    object_os_DL_0025E8
};

StandardLimb object_os_Limb_004614 = { 
    { 950, 0, 0 }, 0x06, LIMB_DONE,
    object_os_DL_002718
};

StandardLimb object_os_Limb_004620 = { 
    { 1000, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_os_DL_002848
};

StandardLimb object_os_Limb_00462C = { 
    { 2450, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_os_DL_0020A8
};

void* object_os_Skel_004658Limbs[] = {
    &object_os_Limb_0045D8,
    &object_os_Limb_0045E4,
    &object_os_Limb_0045F0,
    &object_os_Limb_0045FC,
    &object_os_Limb_004608,
    &object_os_Limb_004614,
    &object_os_Limb_004620,
    &object_os_Limb_00462C,
};

FlexSkeletonHeader object_os_Skel_004658 = { 
    { object_os_Skel_004658Limbs, ARRAY_COUNT(object_os_Skel_004658Limbs) }, 8
};

