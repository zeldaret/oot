#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_ts.h"

s16 object_ts_Anim_000498FrameData[] = {
    0x0000, 0x0C80, 0xFA21, 0xE22C, 0x0DB8, 0xF6A7, 0xEC0B, 0x1D56, 0x1D57, 0x1D57, 0x1D56, 0x1D55, 0x1D53, 0x1D51, 
    0x1D4E, 0x1D4C, 0x1D48, 0x1D43, 0x1D3D, 0x1D37, 0x1D31, 0x1D2D, 0x1D29, 0x1D28, 0x1D2A, 0x1D2C, 0x1D2F, 0x1D33, 
    0x1D37, 0x1D3C, 0x1D40, 0x1D45, 0x1D49, 0x1D4D, 0x1D51, 0x1D54, 0x0135, 0x012C, 0x012B, 0x0130, 0x013B, 0x014B, 
    0x015D, 0x0173, 0x0189, 0x01A7, 0x01CF, 0x01FE, 0x022E, 0x025B, 0x0280, 0x0298, 0x029E, 0x0296, 0x0285, 0x026D, 
    0x0250, 0x022F, 0x020B, 0x01E6, 0x01C1, 0x019D, 0x017B, 0x015E, 0x0146, 0x39F6, 0x39F8, 0x39F8, 0x39F7, 0x39F4, 
    0x39F0, 0x39EB, 0x39E5, 0x39DF, 0x39D7, 0x39CC, 0x39BF, 0x39B2, 0x39A6, 0x399B, 0x3995, 0x3993, 0x3995, 0x399A, 
    0x39A1, 0x39A9, 0x39B2, 0x39BB, 0x39C6, 0x39D0, 0x39DA, 0x39E3, 0x39EB, 0x39F1, 0x2569, 0x256B, 0x256B, 0x256A, 
    0x2569, 0x2567, 0x2564, 0x2562, 0x255F, 0x255C, 0x2557, 0x2551, 0x254C, 0x2547, 0x2543, 0x2540, 0x2540, 0x2540, 
    0x2542, 0x2545, 0x2548, 0x254C, 0x2550, 0x2554, 0x2559, 0x255D, 0x2561, 0x2564, 0x2567, 0xF158, 0xF150, 0xF14E, 
    0xF153, 0xF15D, 0xF16B, 0xF17D, 0xF190, 0xF1A5, 0xF1C1, 0xF1E7, 0xF214, 0xF244, 0xF271, 0xF296, 0xF2AF, 0xF2B5, 
    0xF2AC, 0xF29B, 0xF283, 0xF266, 0xF245, 0xF221, 0xF1FD, 0xF1D9, 0xF1B7, 0xF198, 0xF17D, 0xF167, 0x65DB, 0x65DC, 
    0x65DD, 0x65DC, 0x65DA, 0x65D7, 0x65D3, 0x65CE, 0x65CA, 0x65C3, 0x65BA, 0x65AE, 0x65A2, 0x6596, 0x658B, 0x6584, 
    0x6582, 0x6584, 0x6589, 0x6590, 0x6599, 0x65A2, 0x65AB, 0x65B4, 0x65BD, 0x65C5, 0x65CD, 0x65D3, 0x65D7, 0xD8E6, 
    0xD8CC, 0xD8C9, 0xD8D8, 0xD8F7, 0xD923, 0xD959, 0xD996, 0xD9D6, 0xDA2D, 0xDAA4, 0xDB2F, 0xDBC1, 0xDC4A, 0xDCBC, 
    0xDD07, 0xDD1B, 0xDD00, 0xDCCC, 0xDC83, 0xDC29, 0xDBC4, 0xDB57, 0xDAE8, 0xDA79, 0xDA10, 0xD9AF, 0xD95A, 0xD916, 
    0x26AC, 0x26AA, 0x26AA, 0x26AB, 0x26AD, 0x26AF, 0x26B2, 0x26B5, 0x26B9, 0x26BD, 0x26C3, 0x26CA, 0x26D1, 0x26D7, 
    0x26DC, 0x26DF, 0x26E0, 0x26DF, 0x26DC, 0x26D9, 0x26D5, 0x26D1, 0x26CC, 0x26C6, 0x26C1, 0x26BC, 0x26B7, 0x26B2, 
    0x26AE, 0xDFCF, 0xDFE8, 0xDFEB, 0xDFDC, 0xDFBE, 0xDF94, 0xDF60, 0xDF25, 0xDEE8, 0xDE95, 0xDE23, 0xDD9F, 0xDD16, 
    0xDC96, 0xDC2B, 0xDBE6, 0xDBD3, 0xDBEC, 0xDC1D, 0xDC61, 0xDCB4, 0xDD13, 0xDD79, 0xDDE3, 0xDE4C, 0xDEB1, 0xDF0D, 
    0xDF5E, 0xDFA0, 0x07A8, 0x07A8, 0x07A8, 0x07A8, 0x07A8, 0x07A8, 0x07A9, 0x07A9, 0x07A9, 0x07A9, 0x07AA, 0x07AA, 
    0x07A9, 0x07A9, 0x07A9, 0x07A8, 0x07A8, 0x07A8, 0x07A9, 0x07A9, 0x07A9, 0x07A9, 0x07AA, 0x07AA, 0x07AA, 0x07A9, 
    0x07A9, 0x07A9, 0x07A8, 0x11CF, 0x11CF, 0x11CF, 0x11CF, 0x11CF, 0x11CF, 0x11CF, 0x11CF, 0x11CF, 0x11CF, 0x11CF, 
    0x11CF, 0x11D0, 0x11D0, 0x11D0, 0x11D0, 0x11D0, 0x11D0, 0x11D0, 0x11D0, 0x11D0, 0x11D0, 0x11D0, 0x11CF, 0x11CF, 
    0x11CF, 0x11CF, 0x11CF, 0x11CF, 0x8260, 0x825E, 0x825D, 0x825F, 0x8261, 0x8265, 0x826A, 0x826E, 0x8274, 0x827A, 
    0x8283, 0x828D, 0x8297, 0x829F, 0x82A6, 0x82AB, 0x82AC, 0x82AA, 0x82A7, 0x82A3, 0x829D, 0x8297, 0x8290, 0x8288, 
    0x8280, 0x8278, 0x8270, 0x826A, 0x8264, 0xE063, 0xE06C, 0xE06D, 0xE068, 0xE05D, 0xE04F, 0xE03D, 0xE029, 0xE015, 
    0xDFF9, 0xDFD4, 0xDFAA, 0xDF7F, 0xDF57, 0xDF37, 0xDF22, 0xDF1D, 0xDF24, 0xDF33, 0xDF47, 0xDF61, 0xDF7E, 0xDF9E, 
    0xDFBF, 0xDFE1, 0xE002, 0xE021, 0xE03D, 0xE053, 0x0D2A, 0x0D14, 0x0CFA, 0x0CE2, 0x0CD3, 0x0CD4, 0x0CE6, 0x0D05, 
    0x0D2B, 0x0D54, 0x0D79, 0x0D96, 0x0DAD, 0x0DC3, 0x0DD7, 0x0DE8, 0x0DF5, 0x0DFB, 0x0DF9, 0x0DF1, 0x0DE4, 0x0DD4, 
    0x0DC2, 0x0DAD, 0x0D97, 0x0D80, 0x0D69, 0x0D53, 0x0D3D, 0xF8EA, 0xF8AE, 0xF835, 0xF7A0, 0xF70E, 0xF69E, 0xF648, 
    0xF5F3, 0xF5A7, 0xF56D, 0xF54E, 0xF552, 0xF582, 0xF5D8, 0xF646, 0xF6BF, 0xF735, 0xF79A, 0xF7E1, 0xF813, 0xF842, 
    0xF86E, 0xF896, 0xF8B9, 0xF8D5, 0xF8EA, 0xF8F8, 0xF8FD, 0xF8F9, 0xFBB8, 0xFC1D, 0xFC90, 0xFCF6, 0xFD32, 0xFD2B, 
    0xFCD4, 0xFC40, 0xFB8B, 0xFACC, 0xFA1C, 0xF995, 0xF92A, 0xF8C2, 0xF863, 0xF813, 0xF7DB, 0xF7C0, 0xF7CA, 0xF7F4, 
    0xF831, 0xF87F, 0xF8DA, 0xF93F, 0xF9AB, 0xFA1A, 0xFA8A, 0xFAF6, 0xFB5C, 0xFAFE, 0xFB03, 0xFB0F, 0xFB20, 0xFB34, 
    0xFB4B, 0xFB62, 0xFB78, 0xFB8B, 0xFB9B, 0xFBA5, 0xFBAB, 0xFBAD, 0xFBAC, 0xFBA9, 0xFBA4, 0xFB9E, 0xFB96, 0xFB8E, 
    0xFB85, 0xFB7A, 0xFB6B, 0xFB5A, 0xFB47, 0xFB34, 0xFB23, 0xFB13, 0xFB07, 0xFB00, 0x0375, 0x039D, 0x03C6, 0x03EE, 
    0x0412, 0x0432, 0x044B, 0x045A, 0x045F, 0x0457, 0x0440, 0x040E, 0x03BC, 0x0353, 0x02DD, 0x0264, 0x01F3, 0x0193, 
    0x014E, 0x012D, 0x0131, 0x0150, 0x0183, 0x01C5, 0x0212, 0x0264, 0x02B6, 0x0302, 0x0343, 0x47BC, 0x47FA, 0x487B, 
    0x4930, 0x4A0A, 0x4AF7, 0x4BE9, 0x4CD0, 0x4D9C, 0x4E3E, 0x4EA5, 0x4ED5, 0x4EDE, 0x4EC7, 0x4E96, 0x4E4F, 0x4DF9, 
    0x4D9B, 0x4D38, 0x4CD8, 0x4C66, 0x4BD1, 0x4B26, 0x4A6F, 0x49B9, 0x490E, 0x487A, 0x4808, 0x47C5, 
};

JointIndex object_ts_Anim_000498JointIndices[] = {
    { 0x0000, 0x0001, 0x0000 },
    { 0x0007, 0x0024, 0x0041 },
    { 0x005E, 0x007B, 0x0098 },
    { 0x0002, 0x0000, 0x00B5 },
    { 0x0003, 0x00D2, 0x00EF },
    { 0x010C, 0x0129, 0x0146 },
    { 0x0000, 0x0000, 0x0163 },
    { 0x0004, 0x0005, 0x0006 },
    { 0x0180, 0x019D, 0x01BA },
    { 0x01D7, 0x01F4, 0x0211 },
};

AnimationHeader object_ts_Anim_000498 = { 
    { 29 }, object_ts_Anim_000498FrameData,
    object_ts_Anim_000498JointIndices, 7
};

u8 object_ts_possiblePadding_0004A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_ts_TLUT_0004B0[] = {
#include "assets/objects/object_ts/tlut_000004B0.rgba16.inc.c"
};

u64 object_ts_Tex_0006B0[] = {
#include "assets/objects/object_ts/tex_000006B0.ci8.inc.c"
};

u64 object_ts_Tex_0006F0[] = {
#include "assets/objects/object_ts/tex_000006F0.ci8.inc.c"
};

u64 object_ts_Tex_0007F0[] = {
#include "assets/objects/object_ts/tex_000007F0.ci8.inc.c"
};

u64 object_ts_Tex_000830[] = {
#include "assets/objects/object_ts/tex_00000830.ci8.inc.c"
};

u64 object_ts_Tex_000930[] = {
#include "assets/objects/object_ts/tex_00000930.ci8.inc.c"
};

u64 object_ts_Tex_000970[] = {
#include "assets/objects/object_ts/tex_00000970.ci8.inc.c"
};

u64 object_ts_Tex_000D70[] = {
#include "assets/objects/object_ts/tex_00000D70.ci8.inc.c"
};

u64 object_ts_Tex_001170[] = {
#include "assets/objects/object_ts/tex_00001170.ci8.inc.c"
};

u64 object_ts_Tex_001270[] = {
#include "assets/objects/object_ts/tex_00001270.ci8.inc.c"
};

Vtx object_tsVtx_001A70[] = {
#include "assets/objects/object_ts/object_tsVtx_001A70.vtx.inc"
};

Gfx object_ts_DL_003CD0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ts_TLUT_0004B0),
    gsDPLoadTextureBlock(object_ts_Tex_0006B0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_tsVtx_001A70[468], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(4, 12, 9, 0, 11, 5, 9, 0),
    gsSP2Triangles(9, 5, 4, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 9, 12, 0, 12, 1, 16, 0),
    gsSP2Triangles(1, 17, 16, 0, 1, 0, 17, 0),
    gsSP2Triangles(18, 5, 11, 0, 7, 15, 19, 0),
    gsSP2Triangles(8, 7, 19, 0, 7, 13, 15, 0),
    gsSP2Triangles(20, 21, 22, 0, 2, 21, 20, 0),
    gsSP2Triangles(21, 1, 12, 0, 2, 1, 21, 0),
    gsSP2Triangles(13, 23, 24, 0, 4, 25, 12, 0),
    gsSP2Triangles(25, 21, 12, 0, 22, 21, 25, 0),
    gsSP2Triangles(5, 26, 3, 0, 7, 23, 13, 0),
    gsSP2Triangles(27, 24, 26, 0, 18, 26, 5, 0),
    gsSP2Triangles(24, 14, 13, 0, 27, 14, 24, 0),
    gsSP2Triangles(26, 28, 27, 0, 18, 28, 26, 0),
    gsSP2Triangles(6, 23, 7, 0, 29, 8, 19, 0),
    gsSP1Triangle(20, 22, 30, 0),
    gsSPVertex(&object_tsVtx_001A70[499], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 18, 17, 0, 21, 22, 20, 0),
    gsSP2Triangles(23, 22, 21, 0, 24, 17, 19, 0),
    gsSP2Triangles(17, 21, 20, 0, 23, 15, 14, 0),
    gsSP2Triangles(25, 17, 24, 0, 26, 27, 9, 0),
    gsSP2Triangles(28, 27, 26, 0, 28, 26, 29, 0),
    gsSP2Triangles(21, 15, 23, 0, 27, 30, 31, 0),
    gsSP2Triangles(28, 30, 27, 0, 10, 27, 31, 0),
    gsSP1Triangle(9, 27, 10, 0),
    gsSPVertex(&object_tsVtx_001A70[531], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(3, 0, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(11, 10, 12, 0, 12, 13, 11, 0),
    gsSP2Triangles(0, 14, 1, 0, 15, 6, 13, 0),
    gsSP2Triangles(13, 6, 5, 0, 13, 12, 15, 0),
    gsSP2Triangles(4, 2, 16, 0, 6, 15, 17, 0),
    gsSP1Triangle(18, 10, 9, 0),
    gsSPEndDisplayList(),
};

Gfx object_ts_DL_003ED8[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_tsVtx_001A70[74], 6, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ts_TLUT_0004B0),
    gsDPLoadTextureBlock(object_ts_Tex_0006B0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_tsVtx_001A70[80], 26, 6),
    gsSP2Triangles(6, 7, 0, 0, 8, 9, 1, 0),
    gsSP2Triangles(2, 10, 11, 0, 12, 0, 13, 0),
    gsSP2Triangles(3, 0, 14, 0, 15, 16, 3, 0),
    gsSP2Triangles(17, 2, 3, 0, 0, 1, 18, 0),
    gsSP2Triangles(19, 1, 4, 0, 5, 2, 20, 0),
    gsSP2Triangles(5, 21, 22, 0, 23, 4, 5, 0),
    gsSP2Triangles(24, 4, 25, 0, 26, 27, 2, 0),
    gsSP2Triangles(4, 28, 29, 0, 1, 30, 31, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_tsVtx_001A70[106], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 5, 0, 3, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_tsVtx_001A70[113], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 5, 2, 0, 5, 6, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 2, 1, 8, 0),
    gsSP2Triangles(5, 9, 10, 0, 5, 10, 0, 0),
    gsSP2Triangles(0, 2, 5, 0, 9, 5, 4, 0),
    gsSP2Triangles(6, 2, 7, 0, 4, 11, 9, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_tsVtx_001A70[125], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_tsVtx_001A70[131], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 6, 0, 0, 6, 4, 7, 0),
    gsSP2Triangles(7, 8, 6, 0, 8, 0, 6, 0),
    gsSP2Triangles(9, 10, 4, 0, 9, 3, 5, 0),
    gsSP2Triangles(11, 5, 6, 0, 4, 6, 5, 0),
    gsSP2Triangles(6, 2, 11, 0, 4, 10, 7, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_tsVtx_001A70[143], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ts_TLUT_0004B0),
    gsDPLoadTextureBlock(object_ts_Tex_0007F0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ts_TLUT_0004B0),
    gsDPLoadTextureBlock(object_ts_Tex_000830, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(11, 12, 13, 0, 13, 14, 11, 0),
    gsSP2Triangles(12, 11, 15, 0, 16, 17, 13, 0),
    gsSP2Triangles(18, 16, 12, 0, 13, 12, 16, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ts_TLUT_0004B0),
    gsDPLoadTextureBlock(object_ts_Tex_000930, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_tsVtx_001A70[162], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 6, 0),
    gsSP2Triangles(9, 8, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 13, 0, 16, 8, 17, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ts_TLUT_0004B0),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP1Triangle(19, 22, 21, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP2Triangles(23, 24, 25, 0, 25, 26, 23, 0),
    gsSP2Triangles(27, 28, 29, 0, 29, 30, 27, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_tsVtx_001A70[193], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(3, 4, 1, 0),
    gsSPEndDisplayList(),
};

Gfx object_ts_DL_004378[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_tsVtx_001A70, 10, 0),
    gsSPVertex(&object_tsVtx_001A70[10], 6, 10),
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ts_TLUT_0004B0),
    gsDPLoadTextureBlock(object_ts_Tex_0006B0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_tsVtx_001A70[16], 14, 16),
    gsSP2Triangles(16, 0, 1, 0, 17, 18, 8, 0),
    gsSP2Triangles(1, 19, 20, 0, 21, 10, 22, 0),
    gsSP2Triangles(23, 11, 24, 0, 25, 26, 8, 0),
    gsSP2Triangles(27, 10, 28, 0, 9, 0, 29, 0),
    gsSPVertex(&object_tsVtx_001A70[30], 15, 16),
    gsSP2Triangles(16, 1, 2, 0, 17, 3, 11, 0),
    gsSP2Triangles(2, 3, 18, 0, 19, 4, 5, 0),
    gsSP2Triangles(13, 4, 20, 0, 5, 6, 21, 0),
    gsSP2Triangles(22, 7, 9, 0, 23, 14, 24, 0),
    gsSP2Triangles(8, 25, 26, 0, 27, 13, 28, 0),
    gsSP1Triangle(29, 14, 30, 0),
    gsSPVertex(&object_tsVtx_001A70[45], 13, 16),
    gsSP2Triangles(16, 17, 6, 0, 8, 18, 19, 0),
    gsSP1Triangle(6, 7, 20, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ts_TLUT_0004B0),
    gsDPLoadTextureBlock(object_ts_Tex_0006F0, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(12, 21, 22, 0, 23, 24, 12, 0),
    gsSP2Triangles(15, 25, 26, 0, 27, 28, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ts_TLUT_0004B0),
    gsDPLoadTextureBlock(object_ts_Tex_0006B0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_tsVtx_001A70[58], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(4, 3, 5, 0, 6, 1, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ts_TLUT_0004B0),
    gsDPLoadTextureBlock(object_ts_Tex_0006F0, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(7, 8, 9, 0, 10, 11, 9, 0),
    gsSP2Triangles(9, 8, 12, 0, 9, 12, 10, 0),
    gsSP2Triangles(10, 12, 13, 0, 12, 8, 13, 0),
    gsSP2Triangles(13, 14, 10, 0, 13, 8, 15, 0),
    gsSPEndDisplayList(),
};

Gfx object_ts_DL_0046A0[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_tsVtx_001A70[412], 9, 0),
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ts_TLUT_0004B0),
    gsDPLoadTextureBlock(object_ts_Tex_001270, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x00FC),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_tsVtx_001A70[421], 20, 9),
    gsSP2Triangles(3, 5, 9, 0, 4, 10, 11, 0),
    gsSP2Triangles(7, 0, 12, 0, 13, 14, 3, 0),
    gsSP2Triangles(15, 0, 4, 0, 1, 16, 17, 0),
    gsSP2Triangles(18, 2, 1, 0, 19, 6, 2, 0),
    gsSP2Triangles(20, 6, 21, 0, 5, 22, 23, 0),
    gsSP2Triangles(24, 25, 7, 0, 1, 8, 26, 0),
    gsSP1Triangle(27, 7, 28, 0),
    gsSPVertex(&object_tsVtx_001A70[441], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 1, 12, 0),
    gsSP2Triangles(2, 15, 0, 0, 1, 16, 2, 0),
    gsSP2Triangles(11, 17, 9, 0, 6, 10, 9, 0),
    gsSP2Triangles(9, 7, 6, 0, 18, 10, 6, 0),
    gsSP2Triangles(6, 19, 18, 0, 8, 19, 6, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(23, 24, 20, 0, 5, 25, 3, 0),
    gsSP1Triangle(3, 26, 4, 0),
    gsSPEndDisplayList(),
};

Gfx object_ts_DL_004818[] = {
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_tsVtx_001A70[378], 4, 0),
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ts_TLUT_0004B0),
    gsDPLoadTextureBlock(object_ts_Tex_0006B0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_tsVtx_001A70[382], 16, 4),
    gsSP2Triangles(0, 4, 5, 0, 0, 6, 7, 0),
    gsSP2Triangles(8, 9, 1, 0, 10, 11, 1, 0),
    gsSP2Triangles(12, 2, 0, 0, 1, 2, 13, 0),
    gsSP2Triangles(14, 15, 0, 0, 1, 16, 17, 0),
    gsSP2Triangles(0, 3, 18, 0, 19, 3, 1, 0),
    gsSPVertex(&object_tsVtx_001A70[398], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 5, 6, 0),
    gsSP2Triangles(0, 3, 6, 0, 0, 6, 1, 0),
    gsSP2Triangles(3, 7, 8, 0, 8, 9, 3, 0),
    gsSP2Triangles(10, 5, 3, 0, 4, 7, 3, 0),
    gsSP2Triangles(9, 10, 3, 0, 11, 12, 4, 0),
    gsSP2Triangles(4, 2, 11, 0, 11, 2, 1, 0),
    gsSP2Triangles(1, 13, 11, 0, 11, 9, 8, 0),
    gsSP2Triangles(11, 13, 9, 0, 8, 12, 11, 0),
    gsSPEndDisplayList(),
};

Gfx object_ts_DL_004978[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_tsVtx_001A70[333], 4, 0),
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ts_TLUT_0004B0),
    gsDPLoadTextureBlock(object_ts_Tex_001170, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_tsVtx_001A70[337], 14, 4),
    gsSP2Triangles(4, 5, 0, 0, 0, 1, 6, 0),
    gsSP2Triangles(7, 0, 8, 0, 9, 2, 10, 0),
    gsSP2Triangles(11, 2, 0, 0, 12, 1, 13, 0),
    gsSP2Triangles(1, 3, 14, 0, 15, 3, 2, 0),
    gsSP1Triangle(2, 16, 17, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_tsVtx_001A70[351], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 0, 8, 3, 0),
    gsSP2Triangles(9, 10, 11, 0, 11, 10, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 2, 16, 6, 0),
    gsSP2Triangles(17, 18, 5, 0, 2, 6, 0, 0),
    gsSP2Triangles(1, 0, 5, 0, 5, 18, 1, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 22, 20, 0),
    gsSP2Triangles(23, 17, 5, 0, 19, 21, 24, 0),
    gsSP2Triangles(25, 21, 20, 0, 21, 25, 24, 0),
    gsSP2Triangles(8, 0, 6, 0, 7, 15, 8, 0),
    gsSP2Triangles(14, 8, 15, 0, 14, 3, 8, 0),
    gsSP2Triangles(5, 0, 3, 0, 26, 18, 17, 0),
    gsSPEndDisplayList(),
};

Gfx object_ts_DL_004AF8[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_tsVtx_001A70[277], 9, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ts_TLUT_0004B0),
    gsDPLoadTextureBlock(object_ts_Tex_001270, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x00FC),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_tsVtx_001A70[286], 20, 9),
    gsSP2Triangles(9, 3, 5, 0, 10, 11, 6, 0),
    gsSP2Triangles(12, 0, 7, 0, 5, 13, 14, 0),
    gsSP2Triangles(6, 0, 15, 0, 16, 17, 1, 0),
    gsSP2Triangles(1, 2, 18, 0, 2, 4, 19, 0),
    gsSP2Triangles(20, 4, 21, 0, 22, 23, 3, 0),
    gsSP2Triangles(7, 24, 25, 0, 26, 8, 1, 0),
    gsSP1Triangle(27, 7, 28, 0),
    gsSPVertex(&object_tsVtx_001A70[306], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 1, 12, 0),
    gsSP2Triangles(2, 15, 0, 0, 0, 16, 1, 0),
    gsSP2Triangles(11, 17, 9, 0, 11, 10, 8, 0),
    gsSP2Triangles(8, 7, 11, 0, 8, 10, 18, 0),
    gsSP2Triangles(18, 19, 8, 0, 8, 19, 6, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 20, 22, 0),
    gsSP2Triangles(22, 24, 23, 0, 5, 25, 3, 0),
    gsSP1Triangle(4, 26, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_ts_DL_004C70[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_tsVtx_001A70[243], 4, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ts_TLUT_0004B0),
    gsDPLoadTextureBlock(object_ts_Tex_0006B0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_tsVtx_001A70[247], 16, 4),
    gsSP2Triangles(4, 5, 0, 0, 6, 7, 0, 0),
    gsSP2Triangles(1, 8, 9, 0, 1, 10, 11, 0),
    gsSP2Triangles(0, 2, 12, 0, 13, 2, 1, 0),
    gsSP2Triangles(0, 14, 15, 0, 16, 17, 1, 0),
    gsSP2Triangles(18, 3, 0, 0, 1, 3, 19, 0),
    gsSPVertex(&object_tsVtx_001A70[263], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 0, 3, 0, 5, 6, 3, 0),
    gsSP2Triangles(5, 3, 2, 0, 1, 5, 2, 0),
    gsSP2Triangles(7, 8, 3, 0, 3, 9, 7, 0),
    gsSP2Triangles(3, 6, 10, 0, 3, 8, 4, 0),
    gsSP2Triangles(3, 10, 9, 0, 4, 11, 12, 0),
    gsSP2Triangles(12, 0, 4, 0, 1, 0, 12, 0),
    gsSP2Triangles(12, 13, 1, 0, 7, 9, 12, 0),
    gsSP2Triangles(9, 13, 12, 0, 12, 11, 7, 0),
    gsSPEndDisplayList(),
};

Gfx object_ts_DL_004DD0[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_tsVtx_001A70[198], 4, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ts_TLUT_0004B0),
    gsDPLoadTextureBlock(object_ts_Tex_001170, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_tsVtx_001A70[202], 14, 4),
    gsSP2Triangles(0, 4, 5, 0, 6, 1, 0, 0),
    gsSP2Triangles(7, 0, 8, 0, 9, 2, 10, 0),
    gsSP2Triangles(0, 2, 11, 0, 12, 1, 13, 0),
    gsSP2Triangles(14, 3, 1, 0, 2, 3, 15, 0),
    gsSP1Triangle(16, 17, 2, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_tsVtx_001A70[216], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 5, 6, 2, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 10, 9, 0),
    gsSP2Triangles(13, 14, 15, 0, 8, 16, 0, 0),
    gsSP2Triangles(3, 17, 18, 0, 2, 8, 0, 0),
    gsSP2Triangles(3, 2, 1, 0, 1, 17, 3, 0),
    gsSP2Triangles(19, 20, 21, 0, 20, 22, 21, 0),
    gsSP2Triangles(3, 18, 23, 0, 24, 19, 21, 0),
    gsSP2Triangles(20, 19, 25, 0, 24, 25, 19, 0),
    gsSP2Triangles(8, 2, 6, 0, 6, 13, 7, 0),
    gsSP2Triangles(13, 6, 14, 0, 6, 5, 14, 0),
    gsSP2Triangles(5, 2, 3, 0, 18, 17, 26, 0),
    gsSPEndDisplayList(),
};

StandardLimb object_ts_Limb_004F50 = { 
    { 0, 3200, 0 }, 0x01, LIMB_DONE,
    object_ts_DL_003CD0
};

StandardLimb object_ts_Limb_004F5C = { 
    { 2210, -85, 978 }, 0x02, 0x04,
    object_ts_DL_004AF8
};

StandardLimb object_ts_Limb_004F68 = { 
    { 1318, 0, 0 }, 0x03, LIMB_DONE,
    object_ts_DL_004C70
};

StandardLimb object_ts_Limb_004F74 = { 
    { 1275, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_ts_DL_004DD0
};

StandardLimb object_ts_Limb_004F80 = { 
    { 2210, -85, -977 }, 0x05, 0x07,
    object_ts_DL_0046A0
};

StandardLimb object_ts_Limb_004F8C = { 
    { 1317, 0, 0 }, 0x06, LIMB_DONE,
    object_ts_DL_004818
};

StandardLimb object_ts_Limb_004F98 = { 
    { 1275, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_ts_DL_004978
};

StandardLimb object_ts_Limb_004FA4 = { 
    { 2763, 0, 0 }, 0x08, LIMB_DONE,
    object_ts_DL_003ED8
};

StandardLimb object_ts_Limb_004FB0 = { 
    { 170, 553, 0 }, LIMB_DONE, LIMB_DONE,
    object_ts_DL_004378
};

void* object_ts_Skel_004FE0Limbs[] = {
    &object_ts_Limb_004F50,
    &object_ts_Limb_004F5C,
    &object_ts_Limb_004F68,
    &object_ts_Limb_004F74,
    &object_ts_Limb_004F80,
    &object_ts_Limb_004F8C,
    &object_ts_Limb_004F98,
    &object_ts_Limb_004FA4,
    &object_ts_Limb_004FB0,
};

FlexSkeletonHeader object_ts_Skel_004FE0 = { 
    { object_ts_Skel_004FE0Limbs, ARRAY_COUNT(object_ts_Skel_004FE0Limbs) }, 9
};

