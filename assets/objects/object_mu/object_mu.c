#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_mu.h"

s16 object_mu_Anim_0003F4FrameData[] = {
    0x0000, 0x7840, 0x3CAF, 0x3CA1, 0x3CBD, 0x3CEB, 0x3D14, 0x3D25, 0x3D09, 0x3C64, 0x3B52, 0x3A73, 0x3A6B, 0x3BDE, 
    0x3E50, 0x40B7, 0x420A, 0x422C, 0x41CE, 0x411C, 0x4041, 0x3F66, 0x3EB8, 0x3E21, 0x3D83, 0x3CFE, 0xFA4C, 0xFA74, 
    0xFAA4, 0xFAD5, 0xFAFF, 0xFB1B, 0xFB1F, 0xFAE0, 0xFA69, 0xF9FD, 0xF9E4, 0xFA5C, 0xFB31, 0xFBFC, 0xFC55, 0xFC2C, 
    0xFBC4, 0xFB39, 0xFAA6, 0xFA25, 0xF9D2, 0xF9C1, 0xF9E4, 0xFA1C, 0x4069, 0x4005, 0x3F78, 0x3EDB, 0x3E44, 0x3DCC, 
    0x3D8A, 0x3DAA, 0x3E24, 0x3EB9, 0x3F2D, 0x3F75, 0x3FAF, 0x3FDD, 0x4000, 0x401A, 0x402D, 0x403B, 0x4047, 0x4050, 
    0x405A, 0x4070, 0x408B, 0x4092, 0x0000, 0xFFF9, 0xFFA3, 0xFF3C, 0xFF01, 0xFF2E, 0x0000, 0x01F7, 0x04FB, 0x0867, 
    0x0B97, 0x0DE4, 0x0EAB, 0x0D6E, 0x0A98, 0x06E0, 0x02FD, 0xFFA5, 0xFD8E, 0xFCDC, 0xFD03, 0xFDB5, 0xFEA4, 0xFF82, 
    0x0A98, 0x0A2C, 0x0906, 0x0770, 0x05B0, 0x0411, 0x02DA, 0x01FB, 0x0135, 0x008F, 0x000F, 0xFFBB, 0xFF98, 0xFFA7, 
    0xFFE5, 0x004E, 0x00E0, 0x0198, 0x0272, 0x03AE, 0x055B, 0x072E, 0x08DC, 0x0A18, 0x88F7, 0x8603, 0x8285, 0x7EE1, 
    0x7B7D, 0x78BE, 0x7709, 0x7658, 0x7658, 0x76FC, 0x783B, 0x7A07, 0x7C55, 0x7FD4, 0x84AE, 0x8A16, 0x8F3E, 0x9358, 
    0x9598, 0x95BE, 0x9463, 0x91FA, 0x8EF8, 0x8BD0, 0x0000, 0x0017, 0x0028, 0x0033, 0x0038, 0x0038, 0x0032, 0x0027, 
    0x0016, 0x0000, 0xFFDB, 0xFFA3, 0xFF5F, 0xFF17, 0xFED2, 0xFE97, 0xFE6E, 0xFE5F, 0xFE73, 0xFEA7, 0xFEF0, 0xFF42, 
    0xFF93, 0xFFD6, 0xF3C7, 0xF488, 0xF5F7, 0xF7E2, 0xFA1B, 0xFC72, 0xFEB7, 0x00BC, 0x024F, 0x0342, 0x0391, 0x0367, 
    0x02DB, 0x0204, 0x00F9, 0xFFD3, 0xFEA7, 0xFD8E, 0xFC36, 0xFA6B, 0xF86F, 0xF685, 0xF4EE, 0xF3EE, 0x8000, 0x7ED7, 
    0x7DDE, 0x7D1B, 0x7C92, 0x7C47, 0x7C41, 0x7C83, 0x7D14, 0x7DF6, 0x7F9D, 0x8238, 0x856C, 0x88DD, 0x8C31, 0x8F0D, 
    0x9115, 0x91ED, 0x9130, 0x8F05, 0x8BEC, 0x8861, 0x84E2, 0x81ED, 0x45A1, 0x44F3, 0x42F6, 0x40E6, 0x4002, 0x40FF, 
    0x432A, 0x458F, 0x470D, 0x4781, 0x47A6, 0x4797, 0x474A, 0x4696, 0x44E2, 0x4240, 0x3F77, 0x3D43, 0x3C55, 0x3CEB, 
    0x3E81, 0x40A2, 0x42D8, 0x44AA, 0xFC55, 0xFD0C, 0xFE11, 0xFEEE, 0xFF2F, 0xFE49, 0xFC9F, 0xFB22, 0xFABB, 0xFBE4, 
    0xFE06, 0x006F, 0x026A, 0x0342, 0x028A, 0x00B9, 0xFE74, 0xFC5E, 0xFB1C, 0xFAB5, 0xFAB0, 0xFAF2, 0xFB60, 0xFBDF, 
    0x40D1, 0x40B8, 0x407D, 0x401F, 0x3F98, 0x3EA6, 0x3D60, 0x3C48, 0x3BE4, 0x3C70, 0x3D8C, 0x3EDE, 0x4011, 0x40D1, 
    0x40FE, 0x40D2, 0x407C, 0x4027, 0x4000, 0x4011, 0x403B, 0x4071, 0x40A5, 0x40C9, 0x263F, 0x27C9, 0x2BA2, 0x30A3, 
    0x35A3, 0x397C, 0x3B06, 0x37C7, 0x30A3, 0x297E, 0x263F, 0x26F5, 0x28DE, 0x2BA2, 0x2EE9, 0x325C, 0x35A3, 0x3867, 
    0x3A50, 0x3B06, 0x38DD, 0x33B6, 0x2D8F, 0x2868, 0x0000, 0x02CD, 0x0949, 0x10DB, 0x16E9, 0x18DB, 0x14A5, 0x0C03, 
    0x0206, 0xF9BD, 0xF639, 0xF886, 0xFE79, 0x0652, 0x0E4D, 0x14A8, 0x17A2, 0x1724, 0x14B1, 0x10E8, 0x0C6C, 0x07DC, 
    0x03D9, 0x0105, 0x055A, 0x05BF, 0x06B7, 0x07EF, 0x0915, 0x09D6, 0x0A1F, 0x0A28, 0x0A0D, 0x09E8, 0x09D6, 0x09E1, 
    0x09FA, 0x0A13, 0x0A1F, 0x0A0F, 0x09D6, 0x0966, 0x08C6, 0x080B, 0x0746, 0x068C, 0x05EF, 0x0583, 0xD07B, 0xD148, 
    0xD2B6, 0xD3FD, 0xD453, 0xD2ED, 0xCE78, 0xC77B, 0xBFF2, 0xB9DD, 0xB738, 0xB8A1, 0xBCA2, 0xC219, 0xC7E9, 0xCCF2, 
    0xD013, 0xD173, 0xD216, 0xD22A, 0xD1DD, 0xD15D, 0xD0D9, 0xD07E, 0x301C, 0x2FCB, 0x30B6, 0x32AE, 0x3591, 0x394D, 
    0x3F27, 0x4753, 0x5003, 0x5735, 0x5ACA, 0x5811, 0x50BB, 0x48E1, 0x43B9, 0x42DC, 0x43C7, 0x437C, 0x4131, 0x3E43, 
    0x3AF3, 0x3789, 0x3457, 0x31BC, 0x0000, 0x0035, 0x002E, 0x0035, 0x0096, 0x019F, 0x03F3, 0x0761, 0x0AF2, 0x0DB1, 
    0x0EAA, 0x0CAD, 0x084F, 0x035B, 0xFF99, 0xFD95, 0xFC94, 0xFC56, 0xFC83, 0xFCEC, 0xFD82, 0xFE2F, 0xFEE0, 0xFF80, 
    0x328E, 0x32E9, 0x34A2, 0x3713, 0x3996, 0x3B84, 0x3CFD, 0x3E73, 0x3FB9, 0x409D, 0x40DF, 0x3FAC, 0x3D58, 0x3B2D, 
    0x3A4C, 0x3C8C, 0x406A, 0x420C, 0x40AE, 0x3E65, 0x3B93, 0x389B, 0x35DC, 0x33B7, 
};

JointIndex object_mu_Anim_0003F4JointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0002, 0x001A, 0x0032 },
    { 0x004A, 0x0062, 0x007A },
    { 0x0092, 0x00AA, 0x00C2 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x00DA, 0x00F2, 0x010A },
    { 0x0000, 0x0122, 0x0001 },
    { 0x013A, 0x0152, 0x016A },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0182, 0x019A, 0x01B2 },
};

AnimationHeader object_mu_Anim_0003F4 = { 
    { 24 }, object_mu_Anim_0003F4FrameData,
    object_mu_Anim_0003F4JointIndices, 2
};

u8 object_mu_possiblePadding_000404[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_mu_TLUT_000410[] = {
#include "assets/objects/object_mu/tlut_00000410.rgba16.inc.c"
};

u64 object_mu_Tex_000610[] = {
#include "assets/objects/object_mu/tex_00000610.i8.inc.c"
};

u64 object_mu_Tex_000650[] = {
#include "assets/objects/object_mu/tex_00000650.i8.inc.c"
};

u64 object_mu_Tex_000690[] = {
#include "assets/objects/object_mu/tex_00000690.i8.inc.c"
};

u64 object_mu_Tex_0006D0[] = {
#include "assets/objects/object_mu/tex_000006D0.i8.inc.c"
};

u64 object_mu_Tex_000710[] = {
#include "assets/objects/object_mu/tex_00000710.ci8.inc.c"
};

u64 object_mu_Tex_000790[] = {
#include "assets/objects/object_mu/tex_00000790.ci8.inc.c"
};

u64 object_mu_Tex_0007D0[] = {
#include "assets/objects/object_mu/tex_000007D0.ci8.inc.c"
};

u64 object_mu_Tex_000810[] = {
#include "assets/objects/object_mu/tex_00000810.ci8.inc.c"
};

u64 object_mu_Tex_000850[] = {
#include "assets/objects/object_mu/tex_00000850.ci8.inc.c"
};

u64 object_mu_Tex_000890[] = {
#include "assets/objects/object_mu/tex_00000890.ci8.inc.c"
};

Vtx object_muVtx_0008D0[] = {
#include "assets/objects/object_mu/object_muVtx_0008D0.vtx.inc"
};

Gfx object_mu_DL_003110[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x09000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_000610, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_muVtx_0008D0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 1, 3, 0, 4, 5, 1, 0),
    gsSP2Triangles(1, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 14, 0),
    gsSP2Triangles(13, 11, 15, 0, 11, 10, 16, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 16, 10, 0),
    gsSP2Triangles(11, 19, 20, 0, 11, 14, 19, 0),
    gsSP2Triangles(18, 10, 21, 0, 22, 7, 23, 0),
    gsSP2Triangles(15, 11, 16, 0, 12, 11, 20, 0),
    gsSP2Triangles(24, 12, 20, 0, 25, 26, 27, 0),
    gsSP2Triangles(8, 22, 28, 0, 8, 7, 22, 0),
    gsSP2Triangles(12, 24, 29, 0, 16, 18, 17, 0),
    gsSPVertex(&object_muVtx_0008D0[30], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 0, 6, 1, 0),
    gsSP2Triangles(7, 4, 3, 0, 1, 7, 3, 0),
    gsSP2Triangles(5, 8, 3, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 14, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 12, 17, 0),
    gsSP2Triangles(18, 19, 16, 0, 13, 12, 16, 0),
    gsSP2Triangles(20, 21, 22, 0, 22, 21, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 26, 23, 24, 0),
    gsSP2Triangles(24, 27, 25, 0, 22, 23, 26, 0),
    gsDPPipeSync(),
    gsSPDisplayList(0x0B000000),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_000650, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_muVtx_0008D0[58], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 3, 0, 0, 2, 5, 0, 0),
    gsSP2Triangles(3, 4, 6, 0, 6, 4, 7, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsDPPipeSync(),
    gsSPDisplayList(0x09000000),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_000690, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_muVtx_0008D0[68], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(3, 2, 1, 0, 5, 1, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 12, 11, 0),
    gsSP2Triangles(11, 14, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 11, 10, 0, 19, 15, 17, 0),
    gsSP2Triangles(15, 20, 21, 0, 22, 13, 14, 0),
    gsSP2Triangles(23, 13, 22, 0, 16, 24, 25, 0),
    gsSP2Triangles(15, 19, 20, 0, 26, 15, 21, 0),
    gsSP2Triangles(27, 28, 29, 0, 28, 27, 30, 0),
    gsSP1Triangle(30, 26, 31, 0),
    gsSPVertex(&object_muVtx_0008D0[100], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 6, 4, 0),
    gsSP2Triangles(4, 7, 8, 0, 1, 9, 10, 0),
    gsSP2Triangles(11, 2, 12, 0, 0, 11, 6, 0),
    gsSP2Triangles(11, 0, 2, 0, 13, 1, 3, 0),
    gsSP1Triangle(13, 9, 1, 0),
    gsDPPipeSync(),
    gsSPDisplayList(0x08000000),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_000610, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(14, 15, 16, 0, 16, 17, 14, 0),
    gsSP2Triangles(15, 18, 19, 0, 20, 17, 16, 0),
    gsSP2Triangles(21, 18, 15, 0, 21, 15, 14, 0),
    gsSP2Triangles(22, 23, 24, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 27, 25, 0, 27, 28, 25, 0),
    gsSP2Triangles(27, 29, 28, 0, 30, 22, 26, 0),
    gsSP1Triangle(26, 22, 24, 0),
    gsSPVertex(&object_muVtx_0008D0[131], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(3, 1, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(2, 5, 0, 0, 5, 2, 6, 0),
    gsSP2Triangles(7, 8, 5, 0, 4, 9, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_000690, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 11, 0),
    gsSP2Triangles(14, 12, 11, 0, 15, 14, 11, 0),
    gsSP2Triangles(16, 14, 15, 0, 16, 15, 17, 0),
    gsSP2Triangles(16, 18, 19, 0, 18, 16, 17, 0),
    gsDPPipeSync(),
    gsSPDisplayList(0x08000000),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_000650, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 21, 23, 0, 22, 21, 26, 0),
    gsSP2Triangles(27, 21, 20, 0, 26, 23, 25, 0),
    gsDPPipeSync(),
    gsSPDisplayList(0x09000000),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_000610, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_muVtx_0008D0[159], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 0, 2, 0, 2, 5, 4, 0),
    gsSP2Triangles(6, 1, 0, 0, 7, 4, 3, 0),
    gsSP2Triangles(8, 1, 6, 0, 8, 9, 1, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_0035E8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPDisplayList(0x0A000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_0006D0, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0008D0[169], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 4, 7, 0),
    gsSP2Triangles(2, 8, 0, 0, 9, 6, 5, 0),
    gsSP2Triangles(10, 8, 2, 0, 11, 9, 8, 0),
    gsSP2Triangles(11, 8, 10, 0, 9, 11, 6, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_000410),
    gsDPLoadTextureBlock(object_mu_Tex_000710, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsSPVertex(&object_muVtx_0008D0[185], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 2, 5, 0, 0, 2, 4, 0),
    gsSP2Triangles(6, 2, 7, 0, 7, 1, 8, 0),
    gsSP2Triangles(6, 5, 2, 0, 2, 1, 7, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(6, 12, 5, 0, 15, 10, 9, 0),
    gsSP2Triangles(16, 10, 15, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 18, 17, 0, 5, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 18, 20, 0),
    gsSP2Triangles(27, 28, 29, 0, 29, 5, 22, 0),
    gsSP2Triangles(30, 28, 27, 0, 27, 29, 22, 0),
    gsSP2Triangles(4, 29, 0, 0, 5, 29, 4, 0),
    gsSP2Triangles(3, 0, 28, 0, 29, 28, 0, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_0037B0[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0008D0[290], 5, 0),
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x09000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_000610, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_muVtx_0008D0[295], 12, 5),
    gsSP2Triangles(0, 5, 6, 0, 1, 7, 0, 0),
    gsSP2Triangles(2, 8, 9, 0, 10, 3, 11, 0),
    gsSP2Triangles(4, 12, 13, 0, 14, 4, 3, 0),
    gsSP2Triangles(15, 1, 4, 0, 0, 16, 2, 0),
    gsSPVertex(&object_muVtx_0008D0[307], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 0, 2, 0),
    gsSP2Triangles(2, 4, 6, 0, 3, 0, 5, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 8, 7, 0),
    gsSP2Triangles(7, 11, 10, 0, 10, 12, 8, 0),
    gsSP2Triangles(9, 11, 7, 0, 13, 14, 12, 0),
    gsSP2Triangles(12, 10, 13, 0, 10, 11, 13, 0),
    gsSP2Triangles(8, 12, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(17, 19, 18, 0, 16, 20, 17, 0),
    gsSP2Triangles(21, 22, 23, 0, 22, 24, 25, 0),
    gsSP2Triangles(24, 21, 26, 0, 24, 22, 21, 0),
    gsSP2Triangles(16, 18, 27, 0, 25, 24, 28, 0),
    gsSP2Triangles(19, 17, 29, 0, 29, 17, 30, 0),
    gsSP1Triangle(30, 17, 20, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_000410),
    gsDPLoadTextureBlock(object_mu_Tex_000810, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_muVtx_0008D0[338], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 7, 0, 3, 6, 4, 0),
    gsSP2Triangles(6, 8, 1, 0, 6, 0, 7, 0),
    gsSP2Triangles(3, 8, 6, 0, 1, 0, 6, 0),
    gsSP2Triangles(0, 9, 7, 0, 10, 9, 0, 0),
    gsSP2Triangles(11, 9, 10, 0, 0, 2, 10, 0),
    gsSP2Triangles(8, 12, 1, 0, 3, 12, 8, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_000410),
    gsDPLoadTextureBlock(object_mu_Tex_000790, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 13, 17, 0, 16, 14, 13, 0),
    gsSP2Triangles(16, 18, 14, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 19, 23, 0, 22, 20, 19, 0),
    gsSP2Triangles(24, 23, 21, 0, 24, 22, 23, 0),
    gsSP2Triangles(20, 22, 24, 0, 24, 21, 20, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_000410),
    gsDPLoadTextureBlock(object_mu_Tex_000850, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(25, 26, 27, 0, 25, 28, 26, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_003B08[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_000650, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0008D0[449], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 3, 0, 0),
    gsSP2Triangles(8, 5, 4, 0, 7, 9, 3, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 5, 8, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_000410),
    gsDPLoadTextureBlock(object_mu_Tex_000790, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(10, 11, 12, 0, 13, 11, 10, 0),
    gsSP2Triangles(12, 14, 10, 0, 15, 16, 17, 0),
    gsSP2Triangles(14, 16, 15, 0, 15, 10, 14, 0),
    gsSP2Triangles(17, 18, 15, 0, 18, 10, 15, 0),
    gsSP2Triangles(14, 12, 19, 0, 13, 10, 18, 0),
    gsSP1Triangle(19, 12, 20, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_000610, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(21, 22, 23, 0, 24, 22, 21, 0),
    gsSP2Triangles(24, 25, 22, 0, 26, 25, 24, 0),
    gsSP2Triangles(27, 28, 29, 0, 25, 23, 22, 0),
    gsSP1Triangle(28, 23, 29, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_000410),
    gsDPLoadTextureBlock(object_mu_Tex_000890, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_muVtx_0008D0[479], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 3, 0, 0),
    gsSP2Triangles(3, 6, 7, 0, 3, 4, 6, 0),
    gsSP2Triangles(4, 8, 5, 0, 4, 2, 8, 0),
    gsSP2Triangles(0, 2, 4, 0, 9, 10, 11, 0),
    gsSP2Triangles(10, 12, 11, 0, 8, 9, 11, 0),
    gsSP2Triangles(10, 13, 12, 0, 10, 1, 13, 0),
    gsSP2Triangles(10, 2, 1, 0, 9, 2, 10, 0),
    gsSP1Triangle(9, 8, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_003DB0[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0008D0[367], 5, 0),
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0B000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_000650, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_muVtx_0008D0[372], 12, 5),
    gsSP2Triangles(0, 5, 1, 0, 6, 0, 7, 0),
    gsSP2Triangles(2, 8, 9, 0, 10, 1, 11, 0),
    gsSP2Triangles(12, 3, 4, 0, 13, 3, 14, 0),
    gsSP2Triangles(15, 2, 3, 0, 1, 16, 4, 0),
    gsSPVertex(&object_muVtx_0008D0[384], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(3, 6, 4, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_000410),
    gsDPLoadTextureBlock(object_mu_Tex_000790, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_muVtx_0008D0[391], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(4, 5, 1, 0, 0, 3, 1, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 1, 7, 0),
    gsSP2Triangles(2, 6, 8, 0, 2, 1, 6, 0),
    gsSP2Triangles(7, 1, 5, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 10, 0, 12, 14, 13, 0),
    gsSP2Triangles(11, 10, 13, 0, 9, 12, 10, 0),
    gsSP2Triangles(4, 14, 5, 0, 5, 14, 12, 0),
    gsSP2Triangles(12, 7, 5, 0, 7, 12, 9, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 18, 16, 0),
    gsSP2Triangles(16, 19, 17, 0, 19, 16, 20, 0),
    gsSP2Triangles(21, 20, 16, 0, 22, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 26, 25, 28, 0),
    gsSP2Triangles(25, 27, 29, 0, 18, 30, 21, 0),
    gsSP1Triangle(18, 31, 30, 0),
    gsSPVertex(&object_muVtx_0008D0[423], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 1, 5, 0, 6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_000410),
    gsDPLoadTextureBlock(object_mu_Tex_0007D0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 14, 13, 0, 10, 13, 12, 0),
    gsSP2Triangles(9, 13, 10, 0, 13, 16, 15, 0),
    gsSP2Triangles(9, 16, 13, 0, 17, 12, 14, 0),
    gsSP2Triangles(11, 18, 9, 0, 11, 19, 18, 0),
    gsSP2Triangles(20, 18, 21, 0, 20, 9, 18, 0),
    gsSP2Triangles(16, 20, 21, 0, 16, 9, 20, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_000410),
    gsDPLoadTextureBlock(object_mu_Tex_000850, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(22, 23, 24, 0, 22, 25, 23, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_004108[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_000610, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0008D0[245], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 3, 1, 0),
    gsSP2Triangles(7, 8, 3, 0, 9, 5, 4, 0),
    gsSP2Triangles(7, 9, 8, 0, 7, 5, 9, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_000410),
    gsDPLoadTextureBlock(object_mu_Tex_0007D0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(14, 16, 15, 0, 11, 14, 13, 0),
    gsSP2Triangles(15, 17, 13, 0, 18, 19, 20, 0),
    gsSP2Triangles(10, 14, 11, 0, 10, 19, 18, 0),
    gsSP2Triangles(21, 17, 15, 0, 13, 12, 11, 0),
    gsSP2Triangles(19, 22, 23, 0, 22, 10, 24, 0),
    gsSP2Triangles(19, 10, 22, 0, 12, 24, 10, 0),
    gsSP1Triangle(12, 25, 24, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_000410),
    gsDPLoadTextureBlock(object_mu_Tex_000710, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsSP2Triangles(26, 27, 28, 0, 27, 29, 28, 0),
    gsSP1Triangle(27, 30, 29, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_000410),
    gsDPLoadTextureBlock(object_mu_Tex_000790, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_muVtx_0008D0[276], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 0, 2, 7, 0),
    gsSP2Triangles(7, 8, 0, 0, 7, 9, 8, 0),
    gsSP2Triangles(8, 6, 10, 0, 4, 6, 8, 0),
    gsSP2Triangles(11, 12, 4, 0, 13, 4, 12, 0),
    gsSP2Triangles(5, 4, 13, 0, 8, 11, 4, 0),
    gsSP2Triangles(8, 10, 0, 0, 2, 9, 7, 0),
    gsSP1Triangle(1, 9, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_0043E0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_000410),
    gsDPLoadTextureBlock(object_mu_Tex_000790, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0008D0[238], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(1, 0, 4, 0, 5, 2, 1, 0),
    gsSP2Triangles(3, 2, 5, 0, 1, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 0, 6, 4, 0),
    gsSP1Triangle(0, 3, 6, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_0044C8[] = {
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0008D0[216], 3, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_000410),
    gsDPLoadTextureBlock(object_mu_Tex_000790, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_muVtx_0008D0[219], 11, 3),
    gsSP2Triangles(2, 3, 0, 0, 2, 4, 5, 0),
    gsSP2Triangles(6, 7, 2, 0, 8, 0, 9, 0),
    gsSP2Triangles(10, 0, 11, 0, 12, 2, 1, 0),
    gsSP1Triangle(13, 1, 0, 0),
    gsSPVertex(&object_muVtx_0008D0[230], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(0, 5, 1, 0, 0, 6, 5, 0),
    gsSP2Triangles(0, 7, 6, 0, 0, 2, 7, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_0045F0[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0008D0[581], 5, 0),
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0A000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_000610, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_muVtx_0008D0[586], 26, 5),
    gsSP2Triangles(0, 5, 1, 0, 2, 6, 7, 0),
    gsSP2Triangles(0, 8, 9, 0, 10, 1, 11, 0),
    gsSP2Triangles(3, 12, 2, 0, 13, 4, 1, 0),
    gsSP2Triangles(14, 3, 4, 0, 15, 16, 3, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_000410),
    gsDPLoadTextureBlock(object_mu_Tex_000810, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(22, 23, 20, 0, 17, 22, 18, 0),
    gsSP2Triangles(17, 23, 22, 0, 18, 22, 24, 0),
    gsSP2Triangles(22, 21, 24, 0, 25, 23, 26, 0),
    gsSP2Triangles(27, 28, 25, 0, 26, 27, 25, 0),
    gsSP2Triangles(27, 29, 28, 0, 26, 17, 27, 0),
    gsSP2Triangles(20, 23, 30, 0, 23, 17, 26, 0),
    gsSP2Triangles(27, 19, 29, 0, 27, 17, 19, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_004798[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0008D0[612], 4, 0),
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_000650, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_muVtx_0008D0[616], 11, 4),
    gsSP2Triangles(4, 5, 0, 0, 1, 6, 7, 0),
    gsSP2Triangles(8, 0, 9, 0, 2, 10, 1, 0),
    gsSP2Triangles(11, 3, 0, 0, 12, 2, 3, 0),
    gsSP1Triangle(13, 14, 2, 0),
    gsSPVertex(&object_muVtx_0008D0[627], 17, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_000410),
    gsDPLoadTextureBlock(object_mu_Tex_0007D0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(3, 4, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 4, 3, 0, 8, 4, 6, 0),
    gsSP2Triangles(9, 7, 6, 0, 6, 10, 9, 0),
    gsSP2Triangles(3, 10, 6, 0, 10, 11, 12, 0),
    gsSP2Triangles(3, 13, 14, 0, 11, 13, 15, 0),
    gsSP2Triangles(11, 14, 13, 0, 13, 16, 15, 0),
    gsSP2Triangles(13, 5, 16, 0, 10, 14, 11, 0),
    gsSP2Triangles(3, 5, 13, 0, 10, 3, 14, 0),
    gsSP1Triangle(5, 4, 8, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_004958[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0008D0[524], 5, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_000690, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_muVtx_0008D0[529], 26, 5),
    gsSP2Triangles(5, 0, 6, 0, 1, 7, 8, 0),
    gsSP2Triangles(2, 9, 10, 0, 3, 11, 2, 0),
    gsSP2Triangles(4, 12, 3, 0, 13, 1, 2, 0),
    gsSP2Triangles(4, 14, 15, 0, 0, 16, 4, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_000410),
    gsDPLoadTextureBlock(object_mu_Tex_000890, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(18, 21, 20, 0, 19, 23, 24, 0),
    gsSP2Triangles(18, 23, 19, 0, 20, 23, 18, 0),
    gsSP2Triangles(22, 23, 20, 0, 25, 26, 27, 0),
    gsSP2Triangles(24, 25, 27, 0, 26, 25, 28, 0),
    gsSP2Triangles(25, 22, 28, 0, 23, 25, 24, 0),
    gsSP2Triangles(23, 22, 25, 0, 22, 21, 29, 0),
    gsSP1Triangle(26, 30, 27, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_000410),
    gsDPLoadTextureBlock(object_mu_Tex_000850, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_muVtx_0008D0[555], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_000410),
    gsDPLoadTextureBlock(object_mu_Tex_000790, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(4, 5, 6, 0, 7, 5, 4, 0),
    gsSP2Triangles(7, 8, 5, 0, 9, 6, 5, 0),
    gsSP2Triangles(4, 10, 7, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 12, 11, 0, 12, 14, 15, 0),
    gsSP2Triangles(14, 16, 15, 0, 11, 16, 14, 0),
    gsSP2Triangles(17, 11, 13, 0, 16, 11, 8, 0),
    gsSP2Triangles(18, 11, 17, 0, 18, 8, 11, 0),
    gsSP2Triangles(9, 17, 13, 0, 9, 18, 17, 0),
    gsSP2Triangles(5, 18, 9, 0, 8, 18, 5, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 19, 21, 0),
    gsSP2Triangles(23, 19, 22, 0, 24, 22, 21, 0),
    gsSP1Triangle(24, 25, 22, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_004C68[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_000410),
    gsDPLoadTextureBlock(object_mu_Tex_000790, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0008D0[507], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 3, 0, 0, 5, 3, 6, 0),
    gsSP2Triangles(3, 4, 6, 0, 5, 1, 3, 0),
    gsSP2Triangles(5, 7, 1, 0, 8, 7, 5, 0),
    gsSP2Triangles(9, 10, 8, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 11, 9, 0, 13, 14, 1, 0),
    gsSP2Triangles(15, 14, 16, 0, 7, 13, 1, 0),
    gsSP2Triangles(8, 13, 7, 0, 11, 16, 10, 0),
    gsSP2Triangles(12, 16, 11, 0, 8, 10, 16, 0),
    gsSP2Triangles(16, 12, 15, 0, 14, 2, 1, 0),
    gsSP2Triangles(14, 13, 16, 0, 13, 8, 16, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_004D80[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_000410),
    gsDPLoadTextureBlock(object_mu_Tex_000790, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0008D0[493], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(2, 4, 0, 0, 4, 2, 5, 0),
    gsSP2Triangles(0, 6, 3, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 7, 8, 0, 4, 9, 7, 0),
    gsSP2Triangles(6, 8, 10, 0, 0, 8, 6, 0),
    gsSP2Triangles(10, 8, 7, 0, 7, 11, 10, 0),
    gsSP2Triangles(7, 12, 11, 0, 7, 9, 12, 0),
    gsSP2Triangles(9, 13, 12, 0, 4, 8, 0, 0),
    gsSPEndDisplayList(),
};

StandardLimb object_mu_Limb_004E80 = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    object_mu_DL_003110
};

StandardLimb object_mu_Limb_004E8C = { 
    { 2900, 3200, -1700 }, 0x02, 0x07,
    NULL
};

StandardLimb object_mu_Limb_004E98 = { 
    { 1400, -2000, 3100 }, LIMB_DONE, 0x03,
    object_mu_DL_004D80
};

StandardLimb object_mu_Limb_004EA4 = { 
    { 1400, -2000, 1300 }, LIMB_DONE, 0x04,
    object_mu_DL_004C68
};

StandardLimb object_mu_Limb_004EB0 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x05,
    object_mu_DL_004958
};

StandardLimb object_mu_Limb_004EBC = { 
    { 0, 0, 0 }, LIMB_DONE, 0x06,
    object_mu_DL_004798
};

StandardLimb object_mu_Limb_004EC8 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_mu_DL_0045F0
};

StandardLimb object_mu_Limb_004ED4 = { 
    { -3300, 3200, -2000 }, 0x08, 0x0E,
    NULL
};

StandardLimb object_mu_Limb_004EE0 = { 
    { 2100, 100, -3500 }, 0x09, 0x0A,
    object_mu_DL_0043E0
};

StandardLimb object_mu_Limb_004EEC = { 
    { 1137, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_mu_DL_0044C8
};

StandardLimb object_mu_Limb_004EF8 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x0B,
    object_mu_DL_004108
};

StandardLimb object_mu_Limb_004F04 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x0C,
    object_mu_DL_003DB0
};

StandardLimb object_mu_Limb_004F10 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x0D,
    object_mu_DL_003B08
};

StandardLimb object_mu_Limb_004F1C = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_mu_DL_0037B0
};

StandardLimb object_mu_Limb_004F28 = { 
    { 0, 2800, 2000 }, LIMB_DONE, LIMB_DONE,
    object_mu_DL_0035E8
};

void* object_mu_Skel_004F70Limbs[] = {
    &object_mu_Limb_004E80,
    &object_mu_Limb_004E8C,
    &object_mu_Limb_004E98,
    &object_mu_Limb_004EA4,
    &object_mu_Limb_004EB0,
    &object_mu_Limb_004EBC,
    &object_mu_Limb_004EC8,
    &object_mu_Limb_004ED4,
    &object_mu_Limb_004EE0,
    &object_mu_Limb_004EEC,
    &object_mu_Limb_004EF8,
    &object_mu_Limb_004F04,
    &object_mu_Limb_004F10,
    &object_mu_Limb_004F1C,
    &object_mu_Limb_004F28,
};

FlexSkeletonHeader object_mu_Skel_004F70 = { 
    { object_mu_Skel_004F70Limbs, ARRAY_COUNT(object_mu_Skel_004F70Limbs) }, 13
};

u8 object_mu_possiblePadding_004F7C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 sDancingCoupleAnimFrameData[] = {
    0x0000, 0x4000, 0x0A30, 0xFC6E, 0x0190, 0x71A6, 0xE8A4, 0x223A, 0xFCB4, 0x031D, 0x701B, 0x01DE, 0xE916, 0xDC8E, 
    0x12BE, 0xC000, 0xEE13, 0x07D2, 0xFEDE, 0x5E7E, 0xD1F6, 0x2790, 0x0D2C, 0x13C6, 0xFEA1, 0x0149, 0x5D58, 0xD023, 
    0xEFA0, 0x25F9, 0x08F7, 0x0000, 
};

JointIndex sDancingCoupleAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0002, 0x0001 },
    { 0x0003, 0x0004, 0x0005 },
    { 0x0000, 0x0000, 0x0006 },
    { 0x0000, 0x0007, 0x0000 },
    { 0x0008, 0x0009, 0x000A },
    { 0x000B, 0x0000, 0x000C },
    { 0x0000, 0x000D, 0x0000 },
    { 0x0000, 0x0000, 0x000E },
    { 0x000F, 0x0010, 0x0001 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0011, 0x0012, 0x0013 },
    { 0x0000, 0x0000, 0x0014 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0015, 0x0016, 0x0017 },
    { 0x0018, 0x0019, 0x001A },
    { 0x0000, 0x0000, 0x0014 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x001B, 0x001C, 0x001D },
    { 0x0000, 0x0000, 0x001E },
};

AnimationHeader gDancingCoupleAnim = { 
    { 2 }, sDancingCoupleAnimFrameData,
    sDancingCoupleAnimJointIndices, 31
};

u64 object_mu_TLUT_005050[] = {
#include "assets/objects/object_mu/tlut_00005050.rgba16.inc.c"
};

u64 object_mu_Tex_005250[] = {
#include "assets/objects/object_mu/tex_00005250.i8.inc.c"
};

u64 object_mu_Tex_005350[] = {
#include "assets/objects/object_mu/tex_00005350.ci8.inc.c"
};

u64 object_mu_Tex_005450[] = {
#include "assets/objects/object_mu/tex_00005450.i8.inc.c"
};

u64 object_mu_Tex_005490[] = {
#include "assets/objects/object_mu/tex_00005490.ci8.inc.c"
};

u64 object_mu_Tex_0054D0[] = {
#include "assets/objects/object_mu/tex_000054D0.ci8.inc.c"
};

u64 object_mu_Tex_0055D0[] = {
#include "assets/objects/object_mu/tex_000055D0.ci8.inc.c"
};

u64 object_mu_Tex_005610[] = {
#include "assets/objects/object_mu/tex_00005610.ci8.inc.c"
};

u64 object_mu_Tex_005810[] = {
#include "assets/objects/object_mu/tex_00005810.ci8.inc.c"
};

u64 object_mu_Tex_005C10[] = {
#include "assets/objects/object_mu/tex_00005C10.ci8.inc.c"
};

u64 object_mu_Tex_005C50[] = {
#include "assets/objects/object_mu/tex_00005C50.ci8.inc.c"
};

u64 object_mu_Tex_005CD0[] = {
#include "assets/objects/object_mu/tex_00005CD0.ci8.inc.c"
};

Vtx object_muVtx_0060D0[] = {
#include "assets/objects/object_mu/object_muVtx_0060D0.vtx.inc"
};

Gfx object_mu_DL_008FD0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_005250, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_muVtx_0060D0, 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 6, 4, 0),
    gsSP2Triangles(2, 6, 0, 0, 5, 7, 0, 0),
    gsSP2Triangles(5, 8, 7, 0, 7, 3, 0, 0),
    gsSP2Triangles(2, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 4, 10, 0, 4, 6, 10, 0),
    gsSP2Triangles(10, 6, 2, 0, 10, 13, 12, 0),
    gsSP2Triangles(13, 14, 12, 0, 10, 11, 13, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(16, 19, 18, 0, 15, 19, 16, 0),
    gsSP2Triangles(21, 17, 20, 0, 21, 15, 17, 0),
    gsSP2Triangles(21, 19, 15, 0, 20, 19, 21, 0),
    gsSP2Triangles(17, 16, 20, 0, 22, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 27, 26, 23, 0),
    gsSP2Triangles(23, 26, 24, 0, 25, 22, 28, 0),
    gsSP2Triangles(22, 24, 28, 0, 24, 26, 28, 0),
    gsSP2Triangles(28, 26, 25, 0, 25, 23, 22, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_005050),
    gsDPLoadTextureBlock(object_mu_Tex_005350, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_muVtx_0060D0[29], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(2, 4, 0, 0, 0, 5, 1, 0),
    gsSP2Triangles(6, 5, 0, 0, 6, 7, 5, 0),
    gsSP2Triangles(5, 8, 1, 0, 9, 10, 3, 0),
    gsSP2Triangles(0, 11, 6, 0, 0, 4, 11, 0),
    gsSP2Triangles(12, 3, 1, 0, 12, 9, 3, 0),
    gsSP2Triangles(1, 8, 12, 0, 13, 9, 12, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_005450, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_muVtx_0060D0[43], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 4, 3, 0),
    gsSP2Triangles(9, 4, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 11, 14, 0, 10, 8, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 1, 17, 0),
    gsSP2Triangles(8, 19, 6, 0, 19, 8, 3, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(22, 21, 23, 0, 21, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&object_muVtx_0060D0[74], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 5, 2, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 10, 12, 13, 0),
    gsSP2Triangles(11, 13, 12, 0, 0, 2, 14, 0),
    gsSP2Triangles(14, 2, 5, 0, 15, 16, 17, 0),
    gsSP2Triangles(16, 18, 17, 0, 18, 19, 17, 0),
    gsSP2Triangles(3, 20, 2, 0, 19, 9, 17, 0),
    gsSP2Triangles(4, 2, 20, 0, 21, 17, 9, 0),
    gsSP2Triangles(22, 23, 24, 0, 23, 22, 25, 0),
    gsSP2Triangles(22, 26, 25, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 15, 29, 0, 28, 16, 15, 0),
    gsSP2Triangles(30, 16, 28, 0, 31, 30, 28, 0),
    gsSPVertex(&object_muVtx_0060D0[106], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 3, 1, 0, 0, 2, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 6, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 11, 0),
    gsSP2Triangles(14, 4, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(18, 17, 19, 0, 20, 19, 17, 0),
    gsSP2Triangles(21, 20, 17, 0, 17, 22, 21, 0),
    gsSP2Triangles(23, 24, 25, 0, 24, 23, 26, 0),
    gsSP2Triangles(26, 27, 24, 0, 22, 17, 16, 0),
    gsSP2Triangles(22, 16, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_muVtx_0060D0[138], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_009328[] = {
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0060D0[446], 5, 0),
    gsSPMatrix(0x0D000400, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_005050),
    gsDPLoadTextureBlock(object_mu_Tex_005490, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_muVtx_0060D0[451], 24, 5),
    gsSP2Triangles(5, 6, 0, 0, 1, 7, 8, 0),
    gsSP2Triangles(9, 0, 2, 0, 2, 1, 10, 0),
    gsSP2Triangles(11, 3, 0, 0, 1, 3, 12, 0),
    gsSP2Triangles(0, 13, 14, 0, 15, 3, 16, 0),
    gsSP2Triangles(17, 3, 18, 0, 19, 20, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_005050),
    gsDPLoadTextureBlock(object_mu_Tex_005C50, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsSP2Triangles(21, 4, 22, 0, 23, 24, 4, 0),
    gsSP2Triangles(4, 25, 26, 0, 27, 4, 28, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_005050),
    gsDPLoadTextureBlock(object_mu_Tex_005490, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_muVtx_0060D0[475], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP1Triangle(22, 17, 16, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_005050),
    gsDPLoadTextureBlock(object_mu_Tex_005C50, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsSPVertex(&object_muVtx_0060D0[498], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(4, 2, 1, 0, 3, 1, 5, 0),
    gsSP2Triangles(4, 6, 2, 0, 2, 7, 8, 0),
    gsSP2Triangles(7, 6, 9, 0, 4, 10, 6, 0),
    gsSP2Triangles(9, 6, 10, 0, 6, 7, 2, 0),
    gsSP2Triangles(11, 12, 13, 0, 10, 13, 9, 0),
    gsSP2Triangles(13, 10, 4, 0, 9, 13, 12, 0),
    gsSP2Triangles(14, 12, 11, 0, 11, 13, 4, 0),
    gsSP2Triangles(5, 15, 3, 0, 15, 11, 4, 0),
    gsSP2Triangles(4, 3, 15, 0, 11, 15, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_005050),
    gsDPLoadTextureBlock(object_mu_Tex_0055D0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_005050),
    gsDPLoadTextureBlock(object_mu_Tex_005610, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x003C),
    gsSP2Triangles(22, 23, 24, 0, 24, 25, 22, 0),
    gsSP2Triangles(22, 25, 26, 0, 22, 27, 23, 0),
    gsSP1Triangle(28, 27, 22, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_005050),
    gsDPLoadTextureBlock(object_mu_Tex_005CD0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSPVertex(&object_muVtx_0060D0[527], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 1, 0, 0, 5, 1, 4, 0),
    gsSP2Triangles(4, 0, 6, 0, 6, 0, 3, 0),
    gsSP2Triangles(7, 8, 9, 0, 9, 8, 10, 0),
    gsSP2Triangles(10, 1, 5, 0, 8, 1, 10, 0),
    gsSP2Triangles(7, 11, 8, 0, 11, 1, 8, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_009828[] = {
    gsSPMatrix(0x0D000380, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0060D0[623], 6, 0),
    gsSPMatrix(0x0D0003C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_005050),
    gsDPLoadTextureBlock(object_mu_Tex_005C10, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_muVtx_0060D0[629], 15, 6),
    gsSP2Triangles(0, 2, 6, 0, 7, 8, 0, 0),
    gsSP2Triangles(0, 9, 10, 0, 11, 4, 12, 0),
    gsSP2Triangles(13, 5, 14, 0, 1, 15, 4, 0),
    gsSP2Triangles(3, 5, 16, 0, 17, 2, 18, 0),
    gsSP1Triangle(19, 20, 0, 0),
    gsSPVertex(&object_muVtx_0060D0[644], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 9, 0),
    gsSP2Triangles(10, 4, 3, 0, 11, 12, 13, 0),
    gsSP2Triangles(8, 7, 6, 0, 13, 14, 15, 0),
    gsSP2Triangles(6, 9, 8, 0, 16, 17, 18, 0),
    gsSP2Triangles(13, 15, 11, 0, 4, 1, 0, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_009970[] = {
    gsSPMatrix(0x0D000340, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0060D0[663], 3, 0),
    gsSPMatrix(0x0D000380, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_005450, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_muVtx_0060D0[666], 11, 3),
    gsSP2Triangles(0, 1, 3, 0, 2, 0, 4, 0),
    gsSP2Triangles(5, 1, 2, 0, 6, 7, 2, 0),
    gsSP2Triangles(0, 8, 9, 0, 10, 11, 0, 0),
    gsSP1Triangle(2, 12, 13, 0),
    gsSPVertex(&object_muVtx_0060D0[677], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 1, 0, 0, 3, 6, 2, 0),
    gsSP2Triangles(2, 4, 3, 0, 2, 6, 0, 0),
    gsSP1Triangle(0, 3, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_009A70[] = {
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0060D0[684], 4, 0),
    gsSPMatrix(0x0D000340, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_005450, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_muVtx_0060D0[688], 12, 4),
    gsSP2Triangles(0, 1, 4, 0, 5, 2, 0, 0),
    gsSP2Triangles(3, 2, 6, 0, 7, 1, 3, 0),
    gsSP2Triangles(0, 8, 9, 0, 10, 11, 3, 0),
    gsSP2Triangles(3, 12, 13, 0, 14, 15, 0, 0),
    gsSPVertex(&object_muVtx_0060D0[700], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(2, 3, 5, 0, 2, 6, 0, 0),
    gsSP2Triangles(1, 0, 4, 0, 4, 5, 3, 0),
    gsSP1Triangle(5, 6, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_009B70[] = {
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0060D0[539], 6, 0),
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_005050),
    gsDPLoadTextureBlock(object_mu_Tex_005C10, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_muVtx_0060D0[545], 15, 6),
    gsSP2Triangles(6, 0, 2, 0, 2, 7, 8, 0),
    gsSP2Triangles(9, 10, 2, 0, 11, 4, 12, 0),
    gsSP2Triangles(13, 5, 14, 0, 4, 15, 3, 0),
    gsSP2Triangles(16, 5, 1, 0, 17, 0, 18, 0),
    gsSP1Triangle(2, 19, 20, 0),
    gsSPVertex(&object_muVtx_0060D0[560], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 7, 0),
    gsSP2Triangles(4, 3, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(6, 5, 9, 0, 14, 15, 11, 0),
    gsSP2Triangles(9, 8, 6, 0, 16, 17, 18, 0),
    gsSP2Triangles(13, 14, 11, 0, 2, 1, 3, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_009CB8[] = {
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0060D0[579], 3, 0),
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_005450, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_muVtx_0060D0[582], 11, 3),
    gsSP2Triangles(3, 0, 1, 0, 4, 1, 2, 0),
    gsSP2Triangles(2, 0, 5, 0, 2, 6, 7, 0),
    gsSP2Triangles(8, 9, 1, 0, 1, 10, 11, 0),
    gsSP1Triangle(12, 13, 2, 0),
    gsSPVertex(&object_muVtx_0060D0[593], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 1, 3, 0, 0, 6, 5, 0),
    gsSP2Triangles(5, 4, 0, 0, 2, 6, 0, 0),
    gsSP1Triangle(3, 5, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_009DB8[] = {
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0060D0[600], 4, 0),
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_005450, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_muVtx_0060D0[604], 12, 4),
    gsSP2Triangles(4, 0, 1, 0, 1, 2, 5, 0),
    gsSP2Triangles(6, 2, 3, 0, 3, 0, 7, 0),
    gsSP2Triangles(8, 9, 1, 0, 3, 10, 11, 0),
    gsSP2Triangles(12, 13, 3, 0, 1, 14, 15, 0),
    gsSPVertex(&object_muVtx_0060D0[616], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(5, 4, 0, 0, 2, 6, 0, 0),
    gsSP2Triangles(3, 2, 1, 0, 4, 5, 3, 0),
    gsSP1Triangle(0, 6, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_009EB8[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0060D0[707], 5, 0),
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x09000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_005250, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_muVtx_0060D0[712], 14, 5),
    gsSP2Triangles(5, 0, 1, 0, 6, 7, 2, 0),
    gsSP2Triangles(8, 9, 3, 0, 4, 2, 10, 0),
    gsSP2Triangles(2, 0, 11, 0, 12, 0, 13, 0),
    gsSP2Triangles(1, 14, 15, 0, 16, 1, 3, 0),
    gsSP1Triangle(3, 17, 18, 0),
    gsSPVertex(&object_muVtx_0060D0[726], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 1, 0, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 9, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 3, 5, 0, 0),
    gsSP2Triangles(15, 11, 9, 0, 14, 16, 12, 0),
    gsSP2Triangles(17, 8, 14, 0, 9, 8, 17, 0),
    gsSP2Triangles(3, 0, 2, 0, 14, 13, 17, 0),
    gsSP2Triangles(11, 18, 10, 0, 19, 20, 14, 0),
    gsSP2Triangles(21, 19, 22, 0, 7, 23, 1, 0),
    gsSP2Triangles(14, 22, 19, 0, 18, 7, 10, 0),
    gsSP2Triangles(20, 16, 14, 0, 0, 10, 7, 0),
    gsSP2Triangles(1, 23, 2, 0, 6, 10, 0, 0),
    gsSP2Triangles(14, 8, 24, 0, 10, 6, 24, 0),
    gsSP2Triangles(25, 22, 14, 0, 6, 0, 5, 0),
    gsSP2Triangles(22, 25, 4, 0, 14, 24, 25, 0),
    gsSP1Triangle(10, 24, 8, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_00A028[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0060D0[406], 5, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_005250, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_muVtx_0060D0[411], 12, 5),
    gsSP2Triangles(0, 5, 6, 0, 7, 1, 0, 0),
    gsSP2Triangles(3, 1, 8, 0, 9, 10, 3, 0),
    gsSP2Triangles(4, 11, 12, 0, 13, 2, 4, 0),
    gsSP2Triangles(0, 2, 14, 0, 15, 16, 0, 0),
    gsSPVertex(&object_muVtx_0060D0[423], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 3, 6, 0, 2, 7, 0, 0),
    gsSP2Triangles(0, 8, 9, 0, 9, 8, 4, 0),
    gsSP2Triangles(5, 4, 8, 0, 9, 1, 0, 0),
    gsSP2Triangles(5, 10, 3, 0, 0, 11, 12, 0),
    gsSP2Triangles(13, 12, 14, 0, 14, 15, 16, 0),
    gsSP2Triangles(12, 13, 0, 0, 5, 17, 10, 0),
    gsSP2Triangles(0, 7, 11, 0, 17, 5, 18, 0),
    gsSP2Triangles(18, 5, 19, 0, 20, 8, 0, 0),
    gsSP2Triangles(20, 19, 5, 0, 0, 13, 21, 0),
    gsSP2Triangles(18, 19, 22, 0, 22, 21, 13, 0),
    gsSP2Triangles(21, 20, 0, 0, 8, 20, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_00A170[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0060D0[144], 6, 0),
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_005050),
    gsDPLoadTextureBlock(object_mu_Tex_005490, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_muVtx_0060D0[150], 16, 6),
    gsSP2Triangles(6, 0, 1, 0, 1, 2, 7, 0),
    gsSP2Triangles(8, 2, 9, 0, 3, 10, 2, 0),
    gsSP2Triangles(11, 3, 0, 0, 12, 0, 13, 0),
    gsSP2Triangles(14, 2, 15, 0, 16, 0, 17, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_005050),
    gsDPLoadTextureBlock(object_mu_Tex_0054D0, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(18, 19, 4, 0, 5, 20, 21, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_005050),
    gsDPLoadTextureBlock(object_mu_Tex_005490, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_muVtx_0060D0[166], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 4, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 1, 0, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 16, 15, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(25, 4, 7, 0, 5, 0, 3, 0),
    gsSP1Triangle(24, 23, 26, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_005050),
    gsDPLoadTextureBlock(object_mu_Tex_0054D0, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_muVtx_0060D0[193], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 10, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_muVtx_0060D0[225], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 6, 7, 0, 8, 9, 10, 0),
    gsSP1Triangle(9, 11, 10, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_005050),
    gsDPLoadTextureBlock(object_mu_Tex_0055D0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_005050),
    gsDPLoadTextureBlock(object_mu_Tex_005610, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x003C),
    gsSP2Triangles(18, 19, 20, 0, 21, 19, 18, 0),
    gsSP2Triangles(22, 21, 18, 0, 18, 23, 22, 0),
    gsSP1Triangle(24, 23, 18, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_005050),
    gsDPLoadTextureBlock(object_mu_Tex_005810, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSPVertex(&object_muVtx_0060D0[250], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(6, 0, 5, 0, 1, 0, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 8, 7, 0),
    gsSP2Triangles(10, 11, 8, 0, 11, 3, 8, 0),
    gsSP2Triangles(8, 3, 2, 0, 2, 9, 8, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_00A670[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0060D0[383], 4, 0),
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_005450, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_muVtx_0060D0[387], 12, 4),
    gsSP2Triangles(0, 1, 4, 0, 5, 2, 0, 0),
    gsSP2Triangles(3, 2, 6, 0, 7, 1, 3, 0),
    gsSP2Triangles(0, 8, 9, 0, 10, 11, 3, 0),
    gsSP2Triangles(3, 12, 13, 0, 14, 15, 0, 0),
    gsSPVertex(&object_muVtx_0060D0[399], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(2, 3, 5, 0, 2, 6, 0, 0),
    gsSP2Triangles(1, 0, 4, 0, 4, 5, 3, 0),
    gsSP1Triangle(5, 6, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_00A770[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0060D0[362], 3, 0),
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_005450, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_muVtx_0060D0[365], 11, 3),
    gsSP2Triangles(0, 1, 3, 0, 2, 0, 4, 0),
    gsSP2Triangles(5, 1, 2, 0, 6, 7, 2, 0),
    gsSP2Triangles(0, 8, 9, 0, 10, 11, 0, 0),
    gsSP1Triangle(2, 12, 13, 0),
    gsSPVertex(&object_muVtx_0060D0[376], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 1, 0, 0, 3, 6, 2, 0),
    gsSP2Triangles(2, 4, 3, 0, 2, 6, 0, 0),
    gsSP1Triangle(0, 3, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_00A870[] = {
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0060D0[334], 3, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_005050),
    gsDPLoadTextureBlock(object_mu_Tex_005C10, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_muVtx_0060D0[337], 15, 3),
    gsSP2Triangles(0, 1, 3, 0, 4, 5, 0, 0),
    gsSP2Triangles(0, 6, 7, 0, 8, 2, 9, 0),
    gsSP2Triangles(10, 2, 11, 0, 0, 12, 2, 0),
    gsSP2Triangles(1, 2, 13, 0, 14, 1, 15, 0),
    gsSP1Triangle(16, 17, 0, 0),
    gsSPVertex(&object_muVtx_0060D0[352], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 2, 6, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 4, 3, 0, 1, 4, 9, 0),
    gsSP2Triangles(7, 6, 2, 0, 9, 8, 2, 0),
    gsSP2Triangles(2, 8, 7, 0, 6, 7, 5, 0),
    gsSP2Triangles(9, 2, 1, 0, 4, 1, 0, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_00A9B8[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0060D0[311], 4, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_005450, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_muVtx_0060D0[315], 12, 4),
    gsSP2Triangles(4, 0, 1, 0, 1, 2, 5, 0),
    gsSP2Triangles(6, 2, 3, 0, 3, 0, 7, 0),
    gsSP2Triangles(8, 9, 1, 0, 3, 10, 11, 0),
    gsSP2Triangles(12, 13, 3, 0, 1, 14, 15, 0),
    gsSPVertex(&object_muVtx_0060D0[327], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(5, 4, 0, 0, 2, 6, 0, 0),
    gsSP2Triangles(3, 2, 1, 0, 4, 5, 3, 0),
    gsSP1Triangle(0, 6, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_00AAB8[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0060D0[290], 3, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_mu_Tex_005450, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_muVtx_0060D0[293], 11, 3),
    gsSP2Triangles(3, 0, 1, 0, 4, 1, 2, 0),
    gsSP2Triangles(2, 0, 5, 0, 2, 6, 7, 0),
    gsSP2Triangles(8, 9, 1, 0, 1, 10, 11, 0),
    gsSP1Triangle(12, 13, 2, 0),
    gsSPVertex(&object_muVtx_0060D0[304], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 1, 3, 0, 0, 6, 5, 0),
    gsSP2Triangles(5, 4, 0, 0, 2, 6, 0, 0),
    gsSP1Triangle(3, 5, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_mu_DL_00ABB8[] = {
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_muVtx_0060D0[262], 3, 0),
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_mu_TLUT_005050),
    gsDPLoadTextureBlock(object_mu_Tex_005C10, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_muVtx_0060D0[265], 15, 3),
    gsSP2Triangles(3, 0, 1, 0, 1, 4, 5, 0),
    gsSP2Triangles(6, 7, 1, 0, 8, 2, 9, 0),
    gsSP2Triangles(10, 2, 11, 0, 2, 12, 1, 0),
    gsSP2Triangles(13, 2, 0, 0, 14, 0, 15, 0),
    gsSP1Triangle(1, 16, 17, 0),
    gsSPVertex(&object_muVtx_0060D0[280], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 0, 6, 0, 7, 8, 6, 0),
    gsSP2Triangles(4, 3, 9, 0, 9, 3, 1, 0),
    gsSP2Triangles(0, 5, 8, 0, 0, 7, 9, 0),
    gsSP2Triangles(8, 7, 0, 0, 6, 8, 5, 0),
    gsSP2Triangles(1, 0, 9, 0, 2, 1, 3, 0),
    gsSPEndDisplayList(),
};

StandardLimb object_mu_Limb_00AD00 = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    object_mu_DL_008FD0
};

StandardLimb object_mu_Limb_00AD0C = { 
    { 0, 3727, -428 }, 0x02, 0x09,
    object_mu_DL_00A028
};

StandardLimb object_mu_Limb_00AD18 = { 
    { 1200, 0, 600 }, 0x03, 0x05,
    object_mu_DL_00A9B8
};

StandardLimb object_mu_Limb_00AD24 = { 
    { 1000, 0, 0 }, 0x04, LIMB_DONE,
    object_mu_DL_00AAB8
};

StandardLimb object_mu_Limb_00AD30 = { 
    { 855, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_mu_DL_00ABB8
};

StandardLimb object_mu_Limb_00AD3C = { 
    { 1200, 0, -600 }, 0x06, 0x08,
    object_mu_DL_00A670
};

StandardLimb object_mu_Limb_00AD48 = { 
    { 1001, 0, 0 }, 0x07, LIMB_DONE,
    object_mu_DL_00A770
};

StandardLimb object_mu_Limb_00AD54 = { 
    { 850, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_mu_DL_00A870
};

StandardLimb object_mu_Limb_00AD60 = { 
    { 1855, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_mu_DL_00A170
};

StandardLimb object_mu_Limb_00AD6C = { 
    { 0, 3521, 365 }, 0x0A, LIMB_DONE,
    NULL
};

StandardLimb object_mu_Limb_00AD78 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x0B,
    object_mu_DL_009EB8
};

StandardLimb object_mu_Limb_00AD84 = { 
    { 1250, -50, 650 }, 0x0C, 0x0F,
    object_mu_DL_009DB8
};

StandardLimb object_mu_Limb_00AD90 = { 
    { 850, 0, 0 }, 0x0D, LIMB_DONE,
    NULL
};

StandardLimb object_mu_Limb_00AD9C = { 
    { 0, 0, 0 }, LIMB_DONE, 0x0E,
    object_mu_DL_009CB8
};

StandardLimb object_mu_Limb_00ADA8 = { 
    { 1001, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_mu_DL_009B70
};

StandardLimb object_mu_Limb_00ADB4 = { 
    { 1250, -50, -650 }, 0x10, 0x13,
    object_mu_DL_009A70
};

StandardLimb object_mu_Limb_00ADC0 = { 
    { 851, 0, 0 }, 0x11, LIMB_DONE,
    NULL
};

StandardLimb object_mu_Limb_00ADCC = { 
    { 0, 0, 0 }, LIMB_DONE, 0x12,
    object_mu_DL_009970
};

StandardLimb object_mu_Limb_00ADD8 = { 
    { 1000, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_mu_DL_009828
};

StandardLimb object_mu_Limb_00ADE4 = { 
    { 1905, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_mu_DL_009328
};

void* gDancingCoupleSkelLimbs[] = {
    &object_mu_Limb_00AD00,
    &object_mu_Limb_00AD0C,
    &object_mu_Limb_00AD18,
    &object_mu_Limb_00AD24,
    &object_mu_Limb_00AD30,
    &object_mu_Limb_00AD3C,
    &object_mu_Limb_00AD48,
    &object_mu_Limb_00AD54,
    &object_mu_Limb_00AD60,
    &object_mu_Limb_00AD6C,
    &object_mu_Limb_00AD78,
    &object_mu_Limb_00AD84,
    &object_mu_Limb_00AD90,
    &object_mu_Limb_00AD9C,
    &object_mu_Limb_00ADA8,
    &object_mu_Limb_00ADB4,
    &object_mu_Limb_00ADC0,
    &object_mu_Limb_00ADCC,
    &object_mu_Limb_00ADD8,
    &object_mu_Limb_00ADE4,
};

FlexSkeletonHeader gDancingCoupleSkel = { 
    { gDancingCoupleSkelLimbs, ARRAY_COUNT(gDancingCoupleSkelLimbs) }, 17
};

