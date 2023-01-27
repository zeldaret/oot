#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_ps.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

s16 sPoeSellerIdleAnimFrameData[] = {
    0x0000, 0x4000, 0x8000, 0x0000, 0x0027, 0x008D, 0x0117, 0x01AE, 0x0238, 0x029E, 0x02C5, 0x02AA, 0x0261, 0x01F9, 
    0x017F, 0x0101, 0x008F, 0x0034, 0x0000, 0xFFEF, 0xFFF1, 0x0002, 0x001E, 0x0041, 0x0067, 0x008C, 0x00AB, 0x00C1, 
    0x00C9, 0x00A9, 0x0064, 0x001F, 0xFB1C, 0xFB29, 0xFB48, 0xFB73, 0xFBA1, 0xFBCC, 0xFBEC, 0xFBF8, 0xFBF0, 0xFBDA, 
    0xFBBB, 0xFB96, 0xFB70, 0xFB4C, 0xFB2F, 0xFB1C, 0xFB13, 0xFB0E, 0xFB0D, 0xFB0E, 0xFB11, 0xFB16, 0xFB1B, 0xFB1F, 
    0xFB23, 0xFB24, 0xFB23, 0xFB20, 0xFB1E, 0xC000, 0xBEA3, 0xBB20, 0xB653, 0xB118, 0xAC4A, 0xA8C7, 0xA76B, 0xA85D, 
    0xAAE1, 0xAE7D, 0xB2B4, 0xB70B, 0xBB07, 0xBE2C, 0xC000, 0xC0A2, 0xC09D, 0xC015, 0xBF2B, 0xBE05, 0xBCC5, 0xBB8F, 
    0xBA85, 0xB9CC, 0xB986, 0xBA89, 0xBCC3, 0xBEFD, 0x04B9, 0x04DB, 0x0524, 0x0565, 0x0572, 0x051C, 0x0429, 0x02B5, 
    0x011B, 0xFFB8, 0xFEE4, 0xFE91, 0xFE6A, 0xFE67, 0xFE7D, 0xFEA4, 0xFED2, 0xFEFD, 0xFF1C, 0xFF26, 0xFEFE, 0xFEB0, 
    0xFE69, 0xFE55, 0xFEA4, 0xFFA1, 0x012F, 0x02D9, 0x042E, 0x0A72, 0x0A5E, 0x0A30, 0x09FC, 0x09D7, 0x09D6, 0x0A0B, 
    0x0A69, 0x0AD3, 0x0B30, 0x0B64, 0x0B74, 0x0B79, 0x0B75, 0x0B69, 0x0B59, 0x0B47, 0x0B34, 0x0B23, 0x0B17, 0x0B0E, 
    0x0B04, 0x0AF9, 0x0AED, 0x0ADD, 0x0AC8, 0x0AAC, 0x0A90, 0x0A7B, 0xE0AF, 0xE143, 0xE281, 0xE3AF, 0xE411, 0xE2EB, 
    0xDF54, 0xD9C9, 0xD3A8, 0xCE51, 0xCB24, 0xC9E1, 0xC94A, 0xC939, 0xC98B, 0xCA1C, 0xCAC5, 0xCB65, 0xCBD5, 0xCBF2, 
    0xCB55, 0xCA20, 0xC904, 0xC8AE, 0xC9CC, 0xCD81, 0xD359, 0xD9A0, 0xDEA3, 0x0000, 0xFFDD, 0xFF83, 0xFF08, 0xFE82, 
    0xFE07, 0xFDAD, 0xFD8A, 0xFDB8, 0xFE2A, 0xFEC0, 0xFF57, 0xFFCD, 0x0000, 0xFFF3, 0xFFC5, 0xFF80, 0xFF2C, 0xFED2, 
    0xFE7C, 0xFE34, 0xFE01, 0xFDEF, 0xFE0C, 0xFE58, 0xFEBF, 0xFF30, 0xFF97, 0xFFE3, 0x061D, 0x0612, 0x05F5, 0x05CE, 
    0x05A4, 0x057D, 0x0561, 0x0556, 0x0564, 0x0586, 0x05B3, 0x05E2, 0x0608, 0x061D, 0x0621, 0x061D, 0x0614, 0x0608, 
    0x05F9, 0x05EB, 0x05DE, 0x05D6, 0x05D2, 0x05D6, 0x05E1, 0x05EF, 0x05FF, 0x060E, 0x0618, 0xC000, 0xBF07, 0xBC86, 
    0xB919, 0xB55E, 0xB1F1, 0xAF6F, 0xAE77, 0xAFBB, 0xB2E7, 0xB70C, 0xBB3C, 0xBE88, 0xC000, 0xBFB8, 0xBE8C, 0xBCBB, 
    0xBA85, 0xB829, 0xB5E5, 0xB3F8, 0xB2A3, 0xB223, 0xB2E7, 0xB4E2, 0xB798, 0xBA8B, 0xBD40, 0xBF3B, 0x0D64, 0x0CAC, 
    0x0B30, 0x09F3, 0x09F9, 0x0BD6, 0x0EE0, 0x1237, 0x14FB, 0x164E, 0x15E3, 0x145A, 0x1237, 0x1000, 0x0E38, 0x0D64, 
    0x0D76, 0x0DF4, 0x0EC2, 0x0FC1, 0x10D4, 0x11DD, 0x12BF, 0x135C, 0x1397, 0x12F2, 0x1169, 0x0F93, 0x0E09, 0xEDA9, 
    0xED04, 0xEBC8, 0xEAFE, 0xEBB2, 0xEEB1, 0xF343, 0xF825, 0xFC12, 0xFDC7, 0xFCCD, 0xFA0F, 0xF65C, 0xF284, 0xEF59, 
    0xEDA9, 0xED54, 0xED99, 0xEE4F, 0xEF52, 0xF07B, 0xF1A4, 0xF2A8, 0xF35F, 0xF3A5, 0xF306, 0xF18A, 0xEFC4, 0xEE48, 
    0xD768, 0xD945, 0xDCFE, 0xDFCA, 0xDEE0, 0xD861, 0xCE32, 0xC32F, 0xBA34, 0xB620, 0xB7F4, 0xBDA0, 0xC55E, 0xCD6D, 
    0xD407, 0xD768, 0xD7CF, 0xD6E1, 0xD4F5, 0xD264, 0xCF85, 0xCCB1, 0xCA3E, 0xC886, 0xC7E0, 0xC97D, 0xCD58, 0xD1F1, 
    0xD5CB, 0x447B, 0x4467, 0x442E, 0x43D8, 0x436D, 0x42F3, 0x4272, 0x41F1, 0x4177, 0x410B, 0x40B6, 0x407D, 0x4068, 
    0x4073, 0x4090, 0x40BE, 0x40FA, 0x4142, 0x4192, 0x41E9, 0x4244, 0x42A0, 0x42FA, 0x4351, 0x43A2, 0x43E9, 0x4425, 
    0x4453, 0x4471, 0xF254, 0xF25D, 0xF271, 0xF28C, 0xF2A7, 0xF2BC, 0xF2C4, 0xF2C7, 0xF2CC, 0xF2CA, 0xF2BA, 0xF295, 
    0xF254, 0xF1EA, 0xF158, 0xF0AF, 0xF000, 0xEF5B, 0xEED0, 0xEE71, 0xEE4E, 0xEE71, 0xEED0, 0xEF59, 0xEFFC, 0xF0A7, 
    0xF149, 0xF1D2, 0xF231, 0xEB20, 0xEB1B, 0xEB0F, 0xEAFF, 0xEAEE, 0xEAE2, 0xEADD, 0xEADF, 0xEAE6, 0xEAF1, 0xEAFE, 
    0xEB0F, 0xEB20, 0xEB37, 0xEB53, 0xEB72, 0xEB92, 0xEBB0, 0xEBC8, 0xEBD9, 0xEBDF, 0xEBD9, 0xEBC7, 0xEBAE, 0xEB90, 
    0xEB70, 0xEB52, 0xEB39, 0xEB27, 0xC5D6, 0xC5C6, 0xC59C, 0xC565, 0xC52E, 0xC504, 0xC4F4, 0xC513, 0xC55D, 0xC5B3, 
    0xC5F8, 0xC60E, 0xC5D6, 0xC53E, 0xC45A, 0xC347, 0xC224, 0xC10E, 0xC022, 0xBF7F, 0xBF42, 0xBF7C, 0xC017, 0xC0F7, 
    0xC200, 0xC318, 0xC422, 0xC502, 0xC59D, 0xFB89, 0xFB9B, 0xFBCB, 0xFC0C, 0xFC53, 0xFC94, 0xFCC3, 0xFCD6, 0xFCC7, 
    0xFCA2, 0xFC6C, 0xFC2F, 0xFBF2, 0xFBBD, 0xFB97, 0xFB89, 0xFB9B, 0xFBCB, 0xFC0C, 0xFC53, 0xFC94, 0xFCC3, 0xFCD6, 
    0xFCC3, 0xFC94, 0xFC53, 0xFC0C, 0xFBCB, 0xFB9B, 0x299A, 0x2966, 0x28DF, 0x2826, 0x275D, 0x26A4, 0x261E, 0x25E9, 
    0x2612, 0x267D, 0x2714, 0x27C2, 0x286F, 0x2906, 0x2971, 0x299A, 0x2966, 0x28DF, 0x2826, 0x275D, 0x26A4, 0x261E, 
    0x25E9, 0x261E, 0x26A4, 0x275D, 0x2826, 0x28DF, 0x2966, 0x1806, 0x1752, 0x1582, 0x1308, 0x1055, 0x0DDB, 0x0C0C, 
    0x0B58, 0x0BE3, 0x0D53, 0x0F5B, 0x11AF, 0x1403, 0x160B, 0x177A, 0x1806, 0x1752, 0x1582, 0x1308, 0x1055, 0x0DDB, 
    0x0C0C, 0x0B58, 0x0C0C, 0x0DDB, 0x1055, 0x1308, 0x1582, 0x1752, 
};

JointIndex sPoeSellerIdleAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0003, 0x0020, 0x003D },
    { 0x005A, 0x0077, 0x0094 },
    { 0x00B1, 0x00CE, 0x00EB },
    { 0x0108, 0x0125, 0x0142 },
    { 0x0000, 0x0000, 0x015F },
    { 0x0000, 0x0000, 0x0002 },
    { 0x017C, 0x0199, 0x01B6 },
    { 0x01D3, 0x01F0, 0x020D },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gPoeSellerIdleAnim = { 
    { 29 }, sPoeSellerIdleAnimFrameData,
    sPoeSellerIdleAnimJointIndices, 3
};

u8 object_ps_possiblePadding_0004AC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

u64 object_psTLUT_0004B0[] = {
#include "assets/objects/object_ps/object_psTLUT_0004B0.rgba16.inc.c"
};

u64 object_psTex_0005B8[] = {
#include "assets/objects/object_ps/object_psTex_0005B8.rgba16.inc.c"
};

u64 object_psTex_0015B8[] = {
#include "assets/objects/object_ps/object_psTex_0015B8.ci8.inc.c"
};

u64 object_psTex_0015F8[] = {
#include "assets/objects/object_ps/object_psTex_0015F8.rgba16.inc.c"
};

u64 object_psTex_0017F8[] = {
#include "assets/objects/object_ps/object_psTex_0017F8.ci8.inc.c"
};

u64 object_psTex_001838[] = {
#include "assets/objects/object_ps/object_psTex_001838.ci8.inc.c"
};

u64 object_psTex_001C38[] = {
#include "assets/objects/object_ps/object_psTex_001C38.ci8.inc.c"
};

u64 object_psTex_001D38[] = {
#include "assets/objects/object_ps/object_psTex_001D38.i8.inc.c"
};

u64 object_psTex_001D78[] = {
#include "assets/objects/object_ps/object_psTex_001D78.ci8.inc.c"
};

u64 object_psTex_001E78[] = {
#include "assets/objects/object_ps/object_psTex_001E78.ci8.inc.c"
};

u64 object_psTex_001F78[] = {
#include "assets/objects/object_ps/object_psTex_001F78.rgba16.inc.c"
};

u64 object_psTex_002178[] = {
#include "assets/objects/object_ps/object_psTex_002178.rgba16.inc.c"
};

u64 object_psTex_002378[] = {
#include "assets/objects/object_ps/object_psTex_002378.i4.inc.c"
};

u64 object_psTex_002578[] = {
#include "assets/objects/object_ps/object_psTex_002578.ci8.inc.c"
};

u64 object_psTex_002978[] = {
#include "assets/objects/object_ps/object_psTex_002978.rgba16.inc.c"
};

Vtx object_psVtx_002A78[] = {
#include "assets/objects/object_ps/object_psVtx_002A78.vtx.inc"
};

Gfx gPoeSellerSkelLimbsLimb_00C170DL_004838[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_psTex_0015B8, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_psTLUT_0004B0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_psVtx_002A78, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(5, 9, 10, 0, 5, 10, 6, 0),
    gsSP2Triangles(8, 7, 11, 0, 8, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(20, 19, 21, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(26, 25, 27, 0, 26, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_psVtx_002A78[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(1, 4, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 10, 9, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(16, 18, 17, 0, 19, 20, 21, 0),
    gsSP2Triangles(20, 22, 21, 0, 17, 18, 21, 0),
    gsSP2Triangles(18, 19, 21, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&object_psVtx_002A78[63], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(21, 20, 22, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 25, 27, 26, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 31, 30, 0),
    gsSPVertex(&object_psVtx_002A78[95], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(16, 17, 20, 0, 17, 18, 20, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 28, 29, 25, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_psTex_0005B8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&object_psVtx_002A78[125], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_psTex_0015F8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_psVtx_002A78[133], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 0, 5, 6, 0),
    gsSP2Triangles(0, 2, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 9, 0, 12, 10, 9, 0),
    gsSP1Triangle(8, 12, 9, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(object_psTex_0017F8, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_psTLUT_0004B0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_psVtx_002A78[146], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 9, 6, 0),
    gsSP1Triangle(8, 10, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_psTex_001838, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_psVtx_002A78[157], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(1, 0, 4, 0, 1, 4, 5, 0),
    gsSP2Triangles(1, 5, 6, 0, 7, 0, 3, 0),
    gsSP2Triangles(7, 4, 0, 0, 8, 4, 7, 0),
    gsSP2Triangles(8, 5, 4, 0, 1, 8, 2, 0),
    gsSP2Triangles(1, 6, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 9, 11, 0, 13, 14, 15, 0),
    gsSP2Triangles(14, 16, 15, 0, 16, 17, 15, 0),
    gsSP1Triangle(18, 17, 16, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_psVtx_002A78[176], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(1, 4, 3, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_psVtx_002A78[181], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_psTex_0017F8, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_psVtx_002A78[185], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_psTex_002578, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_psVtx_002A78[188], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_psTex_001D78, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_psVtx_002A78[196], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_psTex_001C38, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_psVtx_002A78[203], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_psTex_002578, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_psVtx_002A78[219], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(2, 8, 9, 0, 2, 1, 8, 0),
    gsSP2Triangles(3, 10, 11, 0, 3, 12, 10, 0),
    gsSP2Triangles(13, 9, 14, 0, 9, 8, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 20, 16, 0, 19, 16, 15, 0),
    gsSP2Triangles(18, 17, 20, 0, 18, 20, 19, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(25, 26, 22, 0, 25, 22, 21, 0),
    gsSP2Triangles(24, 23, 26, 0, 24, 26, 25, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_psTex_002978, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_psVtx_002A78[246], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(2, 4, 0, 0, 2, 5, 4, 0),
    gsSP2Triangles(6, 5, 2, 0, 7, 6, 2, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 9, 12, 0),
    gsSP2Triangles(2, 3, 14, 0, 2, 14, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(object_psTex_002578, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_psTLUT_0004B0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&object_psVtx_002A78[261], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_psTex_002978, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&object_psVtx_002A78[269], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(2, 4, 0, 0, 2, 5, 4, 0),
    gsSP2Triangles(6, 5, 2, 0, 7, 6, 2, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 9, 12, 0),
    gsSP2Triangles(2, 3, 14, 0, 2, 14, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(object_psTex_002578, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_psTLUT_0004B0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&object_psVtx_002A78[284], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 6, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_psTex_002978, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&object_psVtx_002A78[291], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(2, 4, 0, 0, 2, 5, 4, 0),
    gsSP2Triangles(6, 5, 2, 0, 7, 6, 2, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 9, 12, 0),
    gsSP2Triangles(2, 3, 14, 0, 2, 14, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(object_psTex_002578, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_psTLUT_0004B0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&object_psVtx_002A78[306], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_psTex_002978, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&object_psVtx_002A78[314], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(2, 4, 0, 0, 2, 5, 4, 0),
    gsSP2Triangles(6, 5, 2, 0, 7, 6, 2, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 9, 12, 0),
    gsSP2Triangles(2, 3, 14, 0, 2, 14, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(object_psTex_002578, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_psTLUT_0004B0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&object_psVtx_002A78[329], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 2, 0, 4, 2, 6, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_psTex_001F78, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetPrimColor(0, 0, 216, 140, 216, 255),
    gsSPVertex(&object_psVtx_002A78[336], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_psTex_002178, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 205, 225, 255),
    gsSPVertex(&object_psVtx_002A78[348], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 3, 2, 0, 1, 0, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_psTex_002378, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_psVtx_002A78[355], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPTexture(0x0514, 0x1388, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_psTex_001D38, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR |
                         G_TX_CLAMP, 3, 3, 1, 3),
    gsSPSetGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_psVtx_002A78[359], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_psVtx_002A78[362], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(4, 1, 0, 0, 5, 6, 3, 0),
    gsSP2Triangles(6, 4, 3, 0, 7, 6, 5, 0),
    gsSP2Triangles(7, 8, 6, 0, 1, 9, 2, 0),
    gsSP2Triangles(9, 10, 2, 0, 4, 9, 1, 0),
    gsSP2Triangles(4, 11, 9, 0, 6, 12, 4, 0),
    gsSP2Triangles(12, 11, 4, 0, 8, 12, 6, 0),
    gsSP2Triangles(8, 13, 12, 0, 2, 10, 8, 0),
    gsSP1Triangle(10, 13, 8, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_psVtx_002A78[376], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 7, 6, 0, 9, 8, 6, 0),
    gsSP2Triangles(2, 8, 9, 0, 3, 2, 9, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_psVtx_002A78[386], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 0, 0, 5, 3, 0, 0),
    gsSP2Triangles(6, 7, 4, 0, 7, 5, 4, 0),
    gsSP2Triangles(2, 1, 8, 0, 1, 9, 8, 0),
    gsSP2Triangles(3, 10, 1, 0, 10, 11, 1, 0),
    gsSP2Triangles(5, 10, 3, 0, 5, 12, 10, 0),
    gsSP2Triangles(7, 13, 5, 0, 13, 12, 5, 0),
    gsSP2Triangles(9, 13, 7, 0, 9, 14, 13, 0),
    gsSP2Triangles(1, 11, 9, 0, 11, 14, 9, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_psVtx_002A78[401], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 7, 6, 0, 9, 8, 6, 0),
    gsSP2Triangles(2, 8, 9, 0, 3, 2, 9, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_psVtx_002A78[411], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 0, 0, 5, 3, 0, 0),
    gsSP2Triangles(6, 7, 4, 0, 7, 5, 4, 0),
    gsSP2Triangles(2, 1, 8, 0, 1, 9, 8, 0),
    gsSP2Triangles(3, 10, 1, 0, 10, 11, 1, 0),
    gsSP2Triangles(5, 10, 3, 0, 5, 12, 10, 0),
    gsSP2Triangles(7, 13, 5, 0, 13, 12, 5, 0),
    gsSP2Triangles(9, 13, 7, 0, 9, 14, 13, 0),
    gsSP2Triangles(1, 11, 9, 0, 11, 14, 9, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_psVtx_002A78[426], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 7, 6, 0, 9, 8, 6, 0),
    gsSP2Triangles(2, 8, 9, 0, 3, 2, 9, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_psVtx_002A78[436], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 0, 0, 5, 3, 0, 0),
    gsSP2Triangles(6, 7, 4, 0, 7, 5, 4, 0),
    gsSP2Triangles(2, 1, 8, 0, 1, 9, 8, 0),
    gsSP2Triangles(3, 10, 1, 0, 10, 11, 1, 0),
    gsSP2Triangles(5, 10, 3, 0, 5, 12, 10, 0),
    gsSP2Triangles(7, 13, 5, 0, 13, 12, 5, 0),
    gsSP2Triangles(9, 13, 7, 0, 9, 14, 13, 0),
    gsSP2Triangles(1, 11, 9, 0, 11, 14, 9, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_psVtx_002A78[451], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 7, 6, 0, 9, 8, 6, 0),
    gsSP2Triangles(2, 8, 9, 0, 3, 2, 9, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_psVtx_002A78[461], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_psTex_001E78, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_psTLUT_0004B0),
    gsDPSetCombineLERP(TEXEL0, 0, ENVIRONMENT, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 205, 225, 255),
    gsSPVertex(&object_psVtx_002A78[466], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 5, 0, 6, 3, 7, 0),
    gsSP2Triangles(2, 6, 7, 0, 4, 2, 5, 0),
    gsSP2Triangles(8, 2, 9, 0, 3, 8, 9, 0),
    gsSPEndDisplayList(),
};

u64 object_psTLUT_005880[] = {
#include "assets/objects/object_ps/object_psTLUT_005880.rgba16.inc.c"
};

u64 gPoeSellerMetalFrameTex[] = {
#include "assets/objects/object_ps/poe_seller_metal_frame.rgba16.inc.c"
};

u64 gPoeSellerMattressTex[] = {
#include "assets/objects/object_ps/poe_seller_mattress.rgba16.inc.c"
};

u64 gPoeSellerClothTex[] = {
#include "assets/objects/object_ps/poe_seller_cloth.rgba16.inc.c"
};

u64 gPoeSellerCarpetTex[] = {
#include "assets/objects/object_ps/poe_seller_carpet.rgba16.inc.c"
};

u64 gPoeSellerBottleLabelTex[] = {
#include "assets/objects/object_ps/poe_seller_bottle_label.rgba16.inc.c"
};

u64 gPoeSellerWoodenPanelTex[] = {
#include "assets/objects/object_ps/poe_seller_wooden_panel.rgba16.inc.c"
};

u64 gPoeSellerLanternTex[] = {
#include "assets/objects/object_ps/poe_seller_lantern.rgba16.inc.c"
};

u64 object_psTex_007180[] = {
#include "assets/objects/object_ps/object_psTex_007180.ci8.inc.c"
};

u64 object_psTex_0071C0[] = {
#include "assets/objects/object_ps/object_psTex_0071C0.ci8.inc.c"
};

u64 object_psTex_0075C0[] = {
#include "assets/objects/object_ps/object_psTex_0075C0.ci8.inc.c"
};

u64 object_psTex_007600[] = {
#include "assets/objects/object_ps/object_psTex_007600.ci8.inc.c"
};

u64 object_psTex_007640[] = {
#include "assets/objects/object_ps/object_psTex_007640.ci8.inc.c"
};

u64 object_psTex_007A40[] = {
#include "assets/objects/object_ps/object_psTex_007A40.rgba16.inc.c"
};

u64 object_psTex_007C40[] = {
#include "assets/objects/object_ps/object_psTex_007C40.ci8.inc.c"
};

Vtx object_psVtx_008040[] = {
#include "assets/objects/object_ps/object_psVtx_008040.vtx.inc"
};

Gfx gPoeSellerSkelLimbsLimb_00C1E8DL_0096C0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_psTLUT_005880),
    gsDPLoadTextureBlock(object_psTex_007600, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_psVtx_008040[278], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 6, 0, 0, 3, 7, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_psVtx_008040[292], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_psVtx_008040[295], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_psTLUT_005880),
    gsDPLoadTextureBlock(object_psTex_007180, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 13, 15, 0),
    gsSP2Triangles(10, 9, 16, 0, 14, 15, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(16, 18, 20, 0, 23, 22, 24, 0),
    gsSP2Triangles(9, 18, 16, 0, 12, 24, 22, 0),
    gsSP2Triangles(17, 23, 24, 0, 14, 24, 12, 0),
    gsSP2Triangles(17, 25, 23, 0, 14, 17, 24, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_psTLUT_005880),
    gsDPLoadTextureBlock(object_psTex_0075C0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_psVtx_008040[321], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 0, 2, 0, 5, 0, 4, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_psTex_0015F8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(16, 15, 18, 0, 19, 8, 7, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_psTLUT_005880),
    gsDPLoadTextureBlock(object_psTex_007C40, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_psVtx_008040[347], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_psTLUT_005880),
    gsDPLoadTextureBlock(object_psTex_007640, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 12, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeSellerSkelLimbsLimb_00C1B8DL_009AE8[] = {
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_psVtx_008040[87], 1, 0),
    gsSPVertex(&object_psVtx_008040[88], 1, 1),
    gsSPVertex(&object_psVtx_008040[89], 9, 2),
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_psTLUT_005880),
    gsDPLoadTextureBlock(object_psTex_007600, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_psVtx_008040[98], 11, 11),
    gsSP2Triangles(11, 12, 0, 0, 13, 5, 0, 0),
    gsSP2Triangles(14, 2, 7, 0, 7, 15, 16, 0),
    gsSP2Triangles(17, 18, 3, 0, 19, 20, 4, 0),
    gsSP1Triangle(21, 1, 4, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_psVtx_008040[109], 5, 11),
    gsSP2Triangles(11, 0, 1, 0, 12, 13, 0, 0),
    gsSP1Triangle(1, 14, 15, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_psVtx_008040[114], 16, 11),
    gsSP2Triangles(1, 11, 12, 0, 13, 2, 14, 0),
    gsSP2Triangles(2, 15, 3, 0, 16, 17, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_psTLUT_005880),
    gsDPLoadTextureBlock(object_psTex_007640, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSP2Triangles(9, 18, 19, 0, 20, 10, 21, 0),
    gsSP2Triangles(22, 8, 10, 0, 23, 9, 6, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_psTLUT_005880),
    gsDPLoadTextureBlock(object_psTex_007600, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP1Triangle(24, 25, 26, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_psVtx_008040[130], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 6, 3, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP1Triangle(8, 9, 10, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP1Triangle(15, 16, 17, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(22, 18, 23, 0, 22, 19, 18, 0),
    gsSP1Triangle(24, 25, 26, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_psTex_0015F8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_psVtx_008040[157], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 2, 3, 0, 5, 6, 7, 0),
    gsSP1Triangle(8, 9, 10, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(PRIMITIVE, 0, SHADE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0x80, 0, 0, 0, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 13, 0),
    gsSP2Triangles(16, 17, 14, 0, 17, 18, 14, 0),
    gsSP1Triangle(18, 15, 14, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_psTex_007A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_FOG),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_psTLUT_005880),
    gsDPLoadTextureBlock(object_psTex_007C40, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSPSetGeometryMode(G_FOG),
    gsSPVertex(&object_psVtx_008040[180], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 4, 0),
    gsSP1Triangle(9, 2, 1, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeSellerSkelLimbsLimb_00C1C4DL_009FC8[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_psVtx_008040[63], 2, 0),
    gsSPVertex(&object_psVtx_008040[65], 2, 2),
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_psTLUT_005880),
    gsDPLoadTextureBlock(object_psTex_007600, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_psVtx_008040[67], 14, 4),
    gsSP2Triangles(4, 3, 5, 0, 6, 0, 3, 0),
    gsSP2Triangles(7, 1, 8, 0, 9, 2, 1, 0),
    gsSP2Triangles(10, 1, 11, 0, 12, 3, 13, 0),
    gsSP2Triangles(1, 0, 14, 0, 3, 2, 15, 0),
    gsSP1Triangle(1, 16, 17, 0),
    gsSPVertex(&object_psVtx_008040[81], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 1, 5, 0, 3, 1, 4, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeSellerSkelLimbsLimb_00C1D0DL_00A0F8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_psTLUT_005880),
    gsDPLoadTextureBlock(object_psTex_0075C0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_psVtx_008040[55], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(0, 5, 6, 0, 3, 7, 6, 0),
    gsSP2Triangles(2, 4, 0, 0, 6, 1, 0, 0),
    gsSP2Triangles(6, 5, 3, 0, 2, 7, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeSellerSkelLimbsLimb_00C1DCDL_00A1D8[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_psVtx_008040, 4, 0),
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_psTLUT_005880),
    gsDPLoadTextureBlock(object_psTex_007180, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_psVtx_008040[4], 14, 4),
    gsSP2Triangles(4, 0, 1, 0, 5, 0, 6, 0),
    gsSP2Triangles(7, 8, 1, 0, 9, 0, 10, 0),
    gsSP2Triangles(2, 3, 11, 0, 2, 12, 13, 0),
    gsSP2Triangles(14, 15, 2, 0, 0, 16, 3, 0),
    gsSP1Triangle(17, 1, 2, 0),
    gsSPVertex(&object_psVtx_008040[18], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(0, 4, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(5, 3, 0, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 11, 13, 0, 14, 15, 13, 0),
    gsSP2Triangles(6, 16, 7, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 21, 20, 0),
    gsSP1Triangle(18, 17, 24, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_psTLUT_005880),
    gsDPLoadTextureBlock(object_psTex_0071C0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSPVertex(&object_psVtx_008040[43], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(2, 4, 0, 0, 5, 4, 2, 0),
    gsSP2Triangles(5, 3, 4, 0, 4, 3, 0, 0),
    gsSP2Triangles(5, 1, 3, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 6, 8, 0, 10, 9, 8, 0),
    gsSP2Triangles(11, 9, 10, 0, 11, 10, 7, 0),
    gsSP2Triangles(6, 11, 7, 0, 10, 8, 7, 0),
    gsSP2Triangles(11, 2, 9, 0, 6, 1, 5, 0),
    gsSP2Triangles(9, 1, 6, 0, 11, 5, 2, 0),
    gsSP2Triangles(11, 6, 5, 0, 2, 1, 9, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeSellerSkelLimbsLimb_00C1A0DL_00A400[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_psTLUT_005880),
    gsDPLoadTextureBlock(object_psTex_0075C0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_psVtx_008040[220], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(0, 4, 5, 0, 6, 1, 0, 0),
    gsSP2Triangles(2, 7, 0, 0, 0, 7, 3, 0),
    gsSP2Triangles(5, 8, 0, 0, 5, 4, 9, 0),
    gsSP2Triangles(6, 10, 9, 0, 1, 6, 9, 0),
    gsSP2Triangles(9, 10, 5, 0, 0, 8, 6, 0),
    gsSP2Triangles(11, 12, 2, 0, 3, 13, 11, 0),
    gsSP2Triangles(2, 9, 11, 0, 2, 12, 7, 0),
    gsSP2Triangles(7, 13, 3, 0, 2, 1, 9, 0),
    gsSP2Triangles(11, 9, 3, 0, 9, 4, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeSellerSkelLimbsLimb_00C1ACDL_00A510[] = {
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_psVtx_008040[190], 4, 0),
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_psTLUT_005880),
    gsDPLoadTextureBlock(object_psTex_007180, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_psVtx_008040[194], 16, 4),
    gsSP2Triangles(0, 1, 4, 0, 0, 5, 6, 0),
    gsSP2Triangles(1, 7, 8, 0, 9, 10, 2, 0),
    gsSP2Triangles(11, 3, 2, 0, 12, 13, 1, 0),
    gsSP2Triangles(14, 15, 0, 0, 1, 3, 16, 0),
    gsSP2Triangles(17, 2, 0, 0, 2, 18, 19, 0),
    gsSPVertex(&object_psVtx_008040[210], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 7, 8, 9, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeSellerSkelLimbsLimb_00C188DL_00A638[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_psTLUT_005880),
    gsDPLoadTextureBlock(object_psTex_0075C0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_psVtx_008040[264], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 3, 2, 0, 2, 1, 6, 0),
    gsSP2Triangles(2, 7, 0, 0, 4, 7, 2, 0),
    gsSP2Triangles(2, 8, 5, 0, 9, 3, 5, 0),
    gsSP2Triangles(9, 10, 6, 0, 9, 6, 1, 0),
    gsSP2Triangles(5, 10, 9, 0, 6, 8, 2, 0),
    gsSP2Triangles(0, 11, 12, 0, 12, 13, 4, 0),
    gsSP2Triangles(12, 9, 0, 0, 7, 11, 0, 0),
    gsSP2Triangles(4, 13, 7, 0, 9, 1, 0, 0),
    gsSP2Triangles(4, 9, 12, 0, 4, 3, 9, 0),
    gsSPEndDisplayList(),
};

Gfx gPoeSellerSkelLimbsLimb_00C194DL_00A748[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_psVtx_008040[234], 4, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_psTLUT_005880),
    gsDPLoadTextureBlock(object_psTex_007180, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_psVtx_008040[238], 16, 4),
    gsSP2Triangles(4, 0, 1, 0, 5, 6, 1, 0),
    gsSP2Triangles(7, 8, 0, 0, 2, 9, 10, 0),
    gsSP2Triangles(2, 3, 11, 0, 0, 12, 13, 0),
    gsSP2Triangles(1, 14, 15, 0, 16, 3, 0, 0),
    gsSP2Triangles(1, 2, 17, 0, 18, 19, 2, 0),
    gsSPVertex(&object_psVtx_008040[254], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 9, 0),
    gsSPEndDisplayList(),
};

u64 gPoeSellerAngrySoulTex[] = {
#include "assets/objects/object_ps/poe_seller_angry_soul.i8.inc.c"
};

u64 gPoeSellerHappySoulTex[] = {
#include "assets/objects/object_ps/poe_seller_happy_soul.i8.inc.c"
};

u64 gPoeSellerSadSoulTex[] = {
#include "assets/objects/object_ps/poe_seller_sad_soul.i8.inc.c"
};

Vtx object_psVtx_00C070[] = {
#include "assets/objects/object_ps/object_psVtx_00C070.vtx.inc"
};

Gfx gPoeSellerCagedSoulDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x09000000, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(gDecorativeFlameMaskTex, 0x0100, 1, G_IM_FMT_I, 32, 128, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, 1, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_psVtx_00C070, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSPEndDisplayList(),
};

StandardLimb gPoeSellerSkelLimbsLimb_00C170 = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    gPoeSellerSkelLimbsLimb_00C170DL_004838
};

StandardLimb gPoeSellerSkelLimbsLimb_00C17C = { 
    { 0, 4600, 2000 }, 0x02, LIMB_DONE,
    NULL
};

StandardLimb gPoeSellerSkelLimbsLimb_00C188 = { 
    { -1450, -1300, 350 }, 0x03, 0x04,
    gPoeSellerSkelLimbsLimb_00C188DL_00A638
};

StandardLimb gPoeSellerSkelLimbsLimb_00C194 = { 
    { 1300, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gPoeSellerSkelLimbsLimb_00C194DL_00A748
};

StandardLimb gPoeSellerSkelLimbsLimb_00C1A0 = { 
    { -1450, -1300, -350 }, 0x05, 0x06,
    gPoeSellerSkelLimbsLimb_00C1A0DL_00A400
};

StandardLimb gPoeSellerSkelLimbsLimb_00C1AC = { 
    { 1300, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gPoeSellerSkelLimbsLimb_00C1ACDL_00A510
};

StandardLimb gPoeSellerSkelLimbsLimb_00C1B8 = { 
    { 0, 0, 0 }, 0x07, 0x0A,
    gPoeSellerSkelLimbsLimb_00C1B8DL_009AE8
};

StandardLimb gPoeSellerSkelLimbsLimb_00C1C4 = { 
    { 900, 700, -1000 }, 0x08, LIMB_DONE,
    gPoeSellerSkelLimbsLimb_00C1C4DL_009FC8
};

StandardLimb gPoeSellerSkelLimbsLimb_00C1D0 = { 
    { 1400, 0, 0 }, 0x09, LIMB_DONE,
    gPoeSellerSkelLimbsLimb_00C1D0DL_00A0F8
};

StandardLimb gPoeSellerSkelLimbsLimb_00C1DC = { 
    { 550, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gPoeSellerSkelLimbsLimb_00C1DCDL_00A1D8
};

StandardLimb gPoeSellerSkelLimbsLimb_00C1E8 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gPoeSellerSkelLimbsLimb_00C1E8DL_0096C0
};

void* gPoeSellerSkelLimbs[] = {
    &gPoeSellerSkelLimbsLimb_00C170,
    &gPoeSellerSkelLimbsLimb_00C17C,
    &gPoeSellerSkelLimbsLimb_00C188,
    &gPoeSellerSkelLimbsLimb_00C194,
    &gPoeSellerSkelLimbsLimb_00C1A0,
    &gPoeSellerSkelLimbsLimb_00C1AC,
    &gPoeSellerSkelLimbsLimb_00C1B8,
    &gPoeSellerSkelLimbsLimb_00C1C4,
    &gPoeSellerSkelLimbsLimb_00C1D0,
    &gPoeSellerSkelLimbsLimb_00C1DC,
    &gPoeSellerSkelLimbsLimb_00C1E8,
};

FlexSkeletonHeader gPoeSellerSkel = { 
    { gPoeSellerSkelLimbs, ARRAY_COUNT(gPoeSellerSkelLimbs) }, 10
};

u8 object_ps_possiblePadding_00C22C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

CamData gPoeSellerColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gPoeSellerColSurfaceType[] = {
    { 0x00200000, 0x000007C0 },
};

CollisionPoly gPoeSellerColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x7FFF, 0x0000, 0x0000, 0xE9BC},
    {0x0000, 0x0001, 0x0003, 0x0002, 0x7FFF, 0x0000, 0x0000, 0xE9BC},
    {0x0000, 0x0002, 0x0003, 0x0004, 0x0000, 0x0000, 0x7FFF, 0xF448},
    {0x0000, 0x0004, 0x0003, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xF448},
    {0x0000, 0x0004, 0x0005, 0x0006, 0x8001, 0x0000, 0x0000, 0xE890},
    {0x0000, 0x0006, 0x0005, 0x0007, 0x8001, 0x0000, 0x0000, 0xE890},
};

Vec3s gPoeSellerColVertices[] = {
    {   5700,      0,  -4000 },
    {   5700,  20000,  -4000 },
    {   5700,      0,   3000 },
    {   5700,  20000,   3000 },
    {  -6000,      0,   3000 },
    {  -6000,  20000,   3000 },
    {  -6000,      0,  -4000 },
    {  -6000,  20000,  -4000 },
};

CollisionHeader gPoeSellerCol = { 
    { -6000, 0, -4000 },
    { 5700, 20000, 3000 },
    8, gPoeSellerColVertices,
    6, gPoeSellerColPolygons,
    gPoeSellerColSurfaceType,
    gPoeSellerColCamDataList,
    0, NULL
};

u8 object_ps_possiblePadding_00C2FC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 sPoeSellerSwingStickAnimFrameData[] = {
    0x0000, 0x4000, 0x0000, 0x0000, 0x0000, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0000, 0xFFE8, 0xFFB4, 0xFF80, 
    0xFF66, 0xFF83, 0xFFF1, 0x02A2, 0x0502, 0x03C8, 0x016D, 0xFFF1, 0xFFA2, 0xFF75, 0xFF64, 0xFF69, 0xFF7D, 0xFF9C, 
    0xFFBF, 0xFFDF, 0xFFF7, 0x0000, 0xFB1C, 0xFB1C, 0xFB1A, 0xFB17, 0xFB15, 0xFB14, 0xFB14, 0xFB17, 0xFB1C, 0xFADC, 
    0xFA47, 0xF9B5, 0xF97E, 0xF9FB, 0xFB84, 0x041D, 0x0C7C, 0x0B5C, 0x073A, 0x0412, 0x02BD, 0x016E, 0x002C, 0xFEFE, 
    0xFDEC, 0xFCFB, 0xFC34, 0xFB9D, 0xFB3E, 0xFB1C, 0xC000, 0xC00B, 0xC027, 0xC049, 0xC068, 0xC07A, 0xC075, 0xC050, 
    0xC000, 0xBF50, 0xBE37, 0xBCEF, 0xBBB4, 0xBAC0, 0xBA4D, 0xBCA8, 0xBF10, 0xBDCF, 0xBB7F, 0xBA4A, 0xBA82, 0xBAFA, 
    0xBBA1, 0xBC67, 0xBD3C, 0xBE0F, 0xBED0, 0xBF6E, 0xBFD9, 0xC000, 0x04B9, 0x04A9, 0x047F, 0x0443, 0x03FE, 0x03B7, 
    0x0378, 0x0349, 0x0326, 0x0305, 0x02E6, 0x02C9, 0x02AF, 0x0297, 0x0281, 0x026E, 0x025E, 0x0250, 0x0248, 0x0247, 
    0x0252, 0x026B, 0x0295, 0x02D9, 0x0336, 0x039F, 0x0407, 0x0461, 0x04A1, 0x04B9, 0x0A72, 0x0AC2, 0x0B8E, 0x0C9D, 
    0x0DB6, 0x0EA2, 0x0F28, 0x0F10, 0x0E5A, 0x0D3A, 0x0BCE, 0x0A31, 0x087C, 0x06CD, 0x053D, 0x03E9, 0x02EB, 0x025F, 
    0x02F2, 0x04C7, 0x0728, 0x095F, 0x0AB8, 0x0B32, 0x0B5A, 0x0B45, 0x0B0C, 0x0AC6, 0x0A8B, 0x0A72, 0xE0AF, 0xE041, 
    0xDF19, 0xDD67, 0xDB5D, 0xD92D, 0xD708, 0xD520, 0xD350, 0xD15D, 0xCF55, 0xCD46, 0xCB3E, 0xC94A, 0xC777, 0xC5D5, 
    0xC471, 0xC358, 0xC2C0, 0xC2D6, 0xC399, 0xC508, 0xC724, 0xCA5A, 0xCEB3, 0xD397, 0xD86D, 0xDC9E, 0xDF91, 0xE0AF, 
    0x0000, 0x0001, 0x0002, 0x0005, 0x0008, 0x000A, 0x000C, 0x000D, 0x0007, 0x0000, 0x000A, 0x0022, 0x003A, 0x0046, 
    0x0037, 0x0000, 0xFEAE, 0xFD84, 0xFDBE, 0xFE4B, 0xFEFA, 0xFF9C, 0x0000, 0x0027, 0x0036, 0x0034, 0x0027, 0x0016, 
    0x0006, 0x0000, 0x061D, 0x05D1, 0x0510, 0x0407, 0x02E6, 0x01DD, 0x011B, 0x00D0, 0x034C, 0x061D, 0x06EB, 0x07D0, 
    0x087C, 0x08A1, 0x07F1, 0x061D, 0xFB7D, 0xF21C, 0xF3ED, 0xF85A, 0xFDDF, 0x02F7, 0x061D, 0x0756, 0x07D0, 0x07BF, 
    0x0756, 0x06CB, 0x0651, 0x061D, 0xC000, 0xC023, 0xC07C, 0xC0F6, 0xC17C, 0xC1F6, 0xC24F, 0xC272, 0xC14D, 0xC000, 
    0xC08B, 0xC226, 0xC3DA, 0xC4B4, 0xC3BD, 0xC000, 0xA8DE, 0x9474, 0x9867, 0xA20A, 0xAE0F, 0xB926, 0xC000, 0xC2AB, 
    0xC3B4, 0xC38E, 0xC2AB, 0xC17B, 0xC072, 0xC000, 0x0D64, 0x0D62, 0x0D5E, 0x0D55, 0x0D4A, 0x0D3C, 0x0D2A, 0x0D16, 
    0x0CFE, 0x0CE3, 0x0CC6, 0x0CA5, 0x0C81, 0x0C5B, 0x0C31, 0x0C05, 0x0A89, 0x0C38, 0x0DCF, 0x0E08, 0x0DF9, 0x0DC3, 
    0x0D86, 0x0D64, 0x0D5D, 0x0D5B, 0x0D5D, 0x0D60, 0x0D63, 0x0D64, 0xEDA9, 0xEDD6, 0xEE58, 0xEF23, 0xF02C, 0xF166, 
    0xF2C8, 0xF445, 0xF5D2, 0xF764, 0xF8F0, 0xFA6A, 0xFBC7, 0xFCFC, 0xFDFD, 0xFEC0, 0xF798, 0xF305, 0xF02A, 0xEF08, 
    0xEE5E, 0xEE06, 0xEDD6, 0xEDA9, 0xED80, 0xED75, 0xED7D, 0xED8F, 0xEDA0, 0xEDA9, 0xD768, 0xD774, 0xD797, 0xD7CD, 
    0xD815, 0xD86D, 0xD8D1, 0xD940, 0xD9B6, 0xDA32, 0xDAB1, 0xDB31, 0xDBAF, 0xDC29, 0xDC9D, 0xDD08, 0xDDBE, 0xC65A, 
    0xB527, 0xB7A3, 0xBF11, 0xC8AC, 0xD1B5, 0xD768, 0xD992, 0xDA2D, 0xD9BE, 0xD8CB, 0xD7D7, 0xD768, 0x0000, 0x0002, 
    0x0003, 0x0000, 0xFFF7, 0xFFEC, 0xFFDF, 0xFFD2, 0xFFC5, 0xFFBA, 0xFFB1, 0xFFAA, 0xFFA8, 0xFFAF, 0xFFC2, 0xFFD9, 
    0xFFF0, 0x0000, 0x0005, 0x0002, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0xFFE9, 0xFFD2, 0x0000, 0x008A, 0x0147, 0x0223, 0x0306, 0x03DB, 0x048B, 0x0500, 0x0524, 0x04E1, 0x0385, 
    0x00ED, 0xFDD5, 0xFAF9, 0xF913, 0xF90F, 0xFA5E, 0xFB85, 0xFC21, 0xFCC8, 0xFD73, 0xFE1A, 0xFEB3, 0xFF39, 0xFFA2, 
    0xFFE7, 0x0000, 0x447B, 0x3FE4, 0x373B, 0x3226, 0x31DC, 0x325A, 0x336F, 0x34EA, 0x3699, 0x384D, 0x39D5, 0x3B00, 
    0x3B9E, 0x3B08, 0x394E, 0x374F, 0x35EA, 0x35FF, 0x39FA, 0x4070, 0x447B, 0x4570, 0x45F1, 0x4617, 0x45F9, 0x45AD, 
    0x4549, 0x44E6, 0x449A, 0x447B, 0x0000, 0x0059, 0x0125, 0x0205, 0x029A, 0x0310, 0x03C1, 0x048F, 0x055F, 0x0617, 
    0x0699, 0x06CA, 0x068F, 0x05CB, 0x0464, 0xF8D0, 0xED7A, 0xEE7C, 0xF2B8, 0xF821, 0xFCAB, 0xFE93, 0xFEEC, 0xFF37, 
    0xFF76, 0xFFA8, 0xFFCF, 0xFFEB, 0xFFFB, 0x0000, 0x0000, 0x01B4, 0x0589, 0x0992, 0x0BE2, 0x0C8E, 0x0CF7, 0x0D27, 
    0x0D28, 0x0D03, 0x0CC1, 0x0C6D, 0x0C0F, 0x0BB1, 0x0B5C, 0x0962, 0x0846, 0x0B0B, 0x0F35, 0x12D1, 0x13EA, 0x0443, 
    0x0262, 0x011B, 0x0052, 0xFFEB, 0xFFCB, 0xFFD6, 0xFFF1, 0x0000, 0x8000, 0x817E, 0x84E8, 0x88A0, 0x8B0D, 0x8CDF, 
    0x8F91, 0x92B4, 0x95DD, 0x989F, 0x9A8B, 0x9B35, 0x9A30, 0x9710, 0x9166, 0x641C, 0x362D, 0x35EF, 0x4150, 0x5161, 
    0x5F31, 0x6A0C, 0x6DC8, 0x7194, 0x7544, 0x78AB, 0x7B9E, 0x7DF0, 0x7F75, 0x8000, 0xF254, 0xF1FD, 0xF118, 0xEFD5, 
    0xEE65, 0xECF8, 0xEBBF, 0xEAEB, 0xE9F3, 0xE894, 0xE766, 0xE701, 0xE7FA, 0xEAEB, 0xFB1C, 0x0BE0, 0x0765, 0x0000, 
    0x025B, 0x071A, 0x0913, 0x0765, 0x04D3, 0x01A8, 0xFE2F, 0xFAB0, 0xF777, 0xF4CE, 0xF2FF, 0xF254, 0xEB20, 0xEB79, 
    0xEC63, 0xEDAC, 0xEF23, 0xF096, 0xF1D4, 0xF2AD, 0xF2F7, 0xF2D4, 0xF280, 0xF236, 0xF231, 0xF2AD, 0xF54A, 0xF92B, 
    0xFD8C, 0x0000, 0xFDB5, 0xF9AA, 0xF68F, 0xF4CB, 0xF303, 0xF147, 0xEFA5, 0xEE2D, 0xECEE, 0xEBF8, 0xEB59, 0xEB20, 
    0xC5D6, 0xC6A9, 0xC8D2, 0xCBDD, 0xCF54, 0xD2C3, 0xD5B6, 0xD7B6, 0xD871, 0xD838, 0xD789, 0xD6E4, 0xD6C9, 0xD7B6, 
    0xDC05, 0xE491, 0xF5EA, 0x0000, 0xF239, 0xDC5F, 0xCE54, 0xCA35, 0xC765, 0xC5AA, 0xC4CE, 0xC497, 0xC4CF, 0xC53C, 
    0xC5A6, 0xC5D6, 0xFB89, 0xFCC5, 0x0008, 0x04A3, 0x09EA, 0x0F2F, 0x13C6, 0x1701, 0x18F2, 0x1A0F, 0x1A3E, 0x1968, 
    0x1774, 0x0FAC, 0x0530, 0xFD77, 0xF7A7, 0xF8CE, 0x0360, 0x032E, 0x00FE, 0xFF3F, 0xFE8B, 0xFDDE, 0xFD3D, 0xFCAE, 
    0xFC35, 0xFBD9, 0xFB9E, 0xFB89, 0x299A, 0x276F, 0x21C0, 0x19CE, 0x10D5, 0x0815, 0x00CB, 0xFC37, 0xFB57, 0xFD6E, 
    0x0120, 0x050D, 0x07D9, 0x0949, 0x08A4, 0x0440, 0xFE47, 0xF7F3, 0x1813, 0x1B5C, 0x194E, 0x1845, 0x1A3C, 0x1CC5, 
    0x1F9F, 0x2288, 0x253D, 0x277E, 0x2908, 0x299A, 0x1806, 0x18D5, 0x1AFA, 0x1E08, 0x2192, 0x252C, 0x2868, 0x2ADB, 
    0x2C8D, 0x2DD0, 0x2EA4, 0x2F05, 0x2EF2, 0x2A3B, 0x28BF, 0x3ABD, 0x47A0, 0x1C9D, 0x4B3D, 0x4EBA, 0x4A08, 0x43DE, 
    0x3E6C, 0x37C8, 0x308A, 0x294A, 0x229F, 0x1D21, 0x1966, 0x1806, 
};

JointIndex sPoeSellerSwingStickAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0002, 0x0020, 0x003E },
    { 0x005C, 0x007A, 0x0098 },
    { 0x00B6, 0x00D4, 0x00F2 },
    { 0x0110, 0x012E, 0x014C },
    { 0x016A, 0x0188, 0x01A6 },
    { 0x01C4, 0x01E2, 0x0200 },
    { 0x021E, 0x023C, 0x025A },
    { 0x0278, 0x0296, 0x02B4 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gPoeSellerSwingStickAnim = { 
    { 30 }, sPoeSellerSwingStickAnimFrameData,
    sPoeSellerSwingStickAnimJointIndices, 2
};

