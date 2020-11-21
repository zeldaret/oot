#include "z_magic_dark.h"

extern UNK_TYPE D_04032490[];

static UNK_TYPE D_80B880E0[] = {
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000001, 0x00000000, 0x00000102, 0x01000001, 0x00000000, 0x00000000, 0x00010000, 0x00000000,
    0x00000001, 0x00000000, 0x00000204, 0x02000101, 0x00000000, 0x00000000, 0x00010101, 0x00000001, 0x00000001,
    0x00000000, 0x00000307, 0x03010102, 0x00000000, 0x00000000, 0x01010102, 0x00000002, 0x01010001, 0x00000000,
    0x00010509, 0x04010103, 0x01000000, 0x00000000, 0x01020202, 0x00000104, 0x03020101, 0x00000000, 0x0001060C,
    0x06010103, 0x01000000, 0x00000000, 0x02020202, 0x00000206, 0x05040101, 0x00000000, 0x0001080F, 0x07010103,
    0x01000001, 0x00000000, 0x03030202, 0x00010408, 0x07060201, 0x00000000, 0x00010911, 0x08010103, 0x01000001,
    0x00000001, 0x04040303, 0x0101050B, 0x0A080301, 0x00000000, 0x00020B14, 0x0A010103, 0x01000001, 0x00010102,
    0x06060403, 0x0203070D, 0x0C0A0401, 0x00000000, 0x00030D17, 0x0B020103, 0x01010001, 0x00010205, 0x09080503,
    0x0205090E, 0x0E0D0501, 0x00000000, 0x01050F18, 0x0C020102, 0x01010001, 0x00010408, 0x0D0B0502, 0x03070B0F,
    0x0F0F0601, 0x00000000, 0x02081219, 0x0D030102, 0x00010001, 0x0001050B, 0x130F0702, 0x04080B0F, 0x10110801,
    0x00000000, 0x030C1419, 0x0E040101, 0x00010001, 0x0001070F, 0x19140A03, 0x05090B0E, 0x10130A02, 0x00000001,
    0x05121719, 0x0E040100, 0x00010102, 0x01020A13, 0x1F1A0F06, 0x06090A0C, 0x10150B03, 0x01000001, 0x08181B19,
    0x0F050201, 0x01020102, 0x02040D18, 0x2721140A, 0x080A0A0C, 0x11160D04, 0x02020001, 0x0B1E1E19, 0x10070403,
    0x02030202, 0x0408111D, 0x2F2A1B0F, 0x0A0B0B0D, 0x12180F06, 0x04040101, 0x0E242119, 0x11090606, 0x04040304,
    0x070C1623, 0x38322214, 0x0E0D0E10, 0x141A1108, 0x06060102, 0x112A241A, 0x120B0909, 0x06050507, 0x0B111C29,
    0x413B291B, 0x13101216, 0x181B1209, 0x08080304, 0x152F271B, 0x140E0C0C, 0x0907080B, 0x10172230, 0x4A433223,
    0x1813161D, 0x1D1E140B, 0x0A0A0608, 0x1A342B1E, 0x17110F0F, 0x0C0B0D11, 0x171F2A38, 0x534C3B2B, 0x1E161C25,
    0x2221160D, 0x0B0C0A0E, 0x21393023, 0x1B151211, 0x0F0F1217, 0x1E273240, 0x5C564534, 0x251B242F, 0x2924190F,
    0x0E0E0F17, 0x293E372B, 0x21181513, 0x1113181E, 0x26303B48, 0x655F4E3E, 0x2D222D3A, 0x30271C13, 0x11111520,
    0x32453F35, 0x281D1714, 0x14181E25, 0x2F3A4551, 0x6F695746, 0x362B3744, 0x372A1F17, 0x15151D2A, 0x3D4D483F,
    0x31231A14, 0x171E252E, 0x38444F5B, 0x7974614F, 0x4036404C, 0x3C2D231D, 0x1A1A2637, 0x4957524A, 0x3A2A1D15,
    0x1A252E37, 0x43505B66, 0x837F6C59, 0x4A414750, 0x3F2E2723, 0x21213245, 0x57625D54, 0x43312216, 0x1F2D3741,
    0x4D5B6671, 0x8E8B7662, 0x544B4D51, 0x3F302C2C, 0x2B2D4054, 0x656D675E, 0x4C3A281A, 0x2536414B, 0x5867717B,
    0x9896816C, 0x5E545150, 0x3F323337, 0x383C5063, 0x71777168, 0x56432F21, 0x2C3F4B56, 0x63727C86, 0xA2A08B76,
    0x685D5651, 0x3F343A43, 0x484D5F70, 0x7D827B71, 0x5F4C3829, 0x34465462, 0x6F7C8690, 0xACA99581, 0x72655B53,
    0x42394450, 0x585E6D7C, 0x878C8479, 0x68574334, 0x3D4E5E6E, 0x7B88919A, 0xB4B09E8C, 0x7C6E6155, 0x46414F5F,
    0x676E7B87, 0x92958C80, 0x71625041, 0x4857697A, 0x86929BA3, 0xBBB7A796, 0x86776658, 0x4D4B5C6E, 0x777D8791,
    0x9C9F9487, 0x7A6D5C4F, 0x54617486, 0x919CA4AB, 0xC2BBAFA1, 0x907F6C5D, 0x55576A7E, 0x8589929A, 0xA5A99D90,
    0x8478695E, 0x5F697F93, 0x9DA6ACB2, 0xC8BFB6AC, 0x9A877465, 0x6064788D, 0x92949BA1, 0xADB2A89C, 0x8F83766C,
    0x6A718AA1, 0xA9AFB2B8, 0xCEC3BDB6, 0xA4907E70, 0x6C72879B, 0x9C9CA2A8, 0xB5BBB3A9, 0x9B8E8279, 0x737693AE,
    0xB4B6B9BE, 0xD5C9C5BF, 0xAF9C8B7E, 0x7A8094A5, 0xA4A0A7B0, 0xBDC5C0B7, 0xA8998E85, 0x7B7B9AB7, 0xBDBEC0C5,
    0xDBCFCCC8, 0xBAA9998E, 0x898E9FAD, 0xA8A1ACB8, 0xC6CECCC5, 0xB6A4988F, 0x8381A0BE, 0xC4C6C8CD, 0xE0D4D3D1,
    0xC5B7A89D, 0x989CA8B3, 0xABA2B0C0, 0xCED8D8D2, 0xC2AEA298, 0x8C89A6C3, 0xCACED1D5, 0xE5DBDAD8, 0xD0C4B6AB,
    0xA6A8B1B8, 0xAEA4B5C7, 0xD6E0E3DE, 0xCDB7ABA2, 0x9590ACC9, 0xD0D5D9DC, 0xEBE1E0DE, 0xDAD1C4B9, 0xB2B2B8BC,
    0xB1A7B9CE, 0xDEE8ECE8, 0xD6BDB3AC, 0x9E98B3CE, 0xD6DBE0E3, 0xF0E9E6E3, 0xE3DDD2C6, 0xBCBABEC0, 0xB4AABED5,
    0xE5EFF3F0, 0xDDC2BBB6, 0xA79FB9D4, 0xDCE2E7E9, 0xF5F0ECE7, 0xEAE8DED2, 0xC6C1C2C3, 0xB7ADC4DD, 0xEBF3F8F5,
    0xE1C6C2C1, 0xB1A7BFD8, 0xE1E7EDF0, 0xF9F5F1EB, 0xF0F0E9DD, 0xCFC7C7C6, 0xBBB1CBE5, 0xF0F5FBF7, 0xE3CACACC,
    0xBBB0C5DC, 0xE5ECF4F6, 0xFCF9F5EE, 0xF5F7F0E7, 0xD7CDCCCB, 0xBFB7D2EB, 0xF4F7FBF6, 0xE4CDD2D6, 0xC6B9CBE0,
    0xE9F1F9FB, 0xFDFCF8F2, 0xF9FAF6EE, 0xDFD5D3D0, 0xC5BDD9F0, 0xF7F9FBF4, 0xE5D0D9E0, 0xD1C2D2E4, 0xEDF5FCFE,
    0xFEFDFAF4, 0xFBFCF9F3, 0xE6DDDAD7, 0xCBC3DEF4, 0xFAFBFCF3, 0xE5D3DEE8, 0xDBCDDAE9, 0xF2F8FEFF, 0xFEFDFCF6,
    0xFCFDFCF7, 0xECE4E2DF, 0xD2C9E3F7, 0xFCFDFBF3, 0xE5D6E4EF, 0xE3D6E1EE, 0xF6FAFEFF, 0xFEFDFDF8, 0xFCFDFDFA,
    0xF1EAE9E7, 0xD9CFE7F9, 0xFEFEFBF3, 0xE7DBE9F4, 0xEBDFE8F3, 0xF9FCFFFF, 0xFEFDFDFA, 0xFDFDFEFC, 0xF5EFEFEE,
    0xE0D5ECFB, 0xFFFEFBF3, 0xE9E1EEF8, 0xF0E6EEF6, 0xFCFDFFFF, 0xFEFDFEFC, 0xFEFDFEFE, 0xF8F4F4F3, 0xE7DDF1FD,
    0xFFFEFBF3, 0xECE7F3FC, 0xF5ECF2F9, 0xFDFEFFFF, 0xFEFDFFFE, 0xFFFDFEFE, 0xFAF7F8F7, 0xEDE5F5FE, 0xFFFEFBF5,
    0xF0EDF7FD, 0xF9F1F5FA, 0xFEFFFFFF, 0xFEFDFFFF, 0xFFFEFEFF, 0xFCFAFAFA, 0xF2ECF8FE, 0xFFFEFCF7, 0xF4F3FAFE,
    0xFBF6F8FB, 0xFEFFFFFF, 0xFEFDFFFF, 0xFFFEFEFF, 0xFDFCFCFC, 0xF7F2FBFF, 0xFFFEFCFA, 0xF8F7FCFF, 0xFEFAFBFC,
    0xFFFFFFFF, 0xFEFEFFFF, 0xFFFFFFFF, 0xFEFDFEFD, 0xFAF7FCFF, 0xFFFEFDFC, 0xFCFBFDFF, 0xFFFDFDFD, 0xFFFFFFFF,
    0xFFFEFFFF, 0xFFFFFFFF, 0xFFFEFEFE, 0xFCFAFDFF, 0xFFFEFEFE, 0xFEFDFEFF, 0xFFFFFEFD, 0xFFFFFFFF, 0xFFFFFFFF,
    0xFFFFFFFF, 0xFFFFFFFF, 0xFDFCFEFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFE, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
    0xFFFFFFFF, 0xFEFEFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
    0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
    0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
    0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
    0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
    0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
    0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
};

static Vtx D_80B888E0[] = {
    VTX(0, 0, 64, 1024, 512, 0x00, 0x00, 0x78, 0xFF),    VTX(55, 0, 32, 1707, 512, 0x67, 0x00, 0x3C, 0xFF),
    VTX(0, 108, 0, 1365, 0, 0x00, 0x78, 0x00, 0xFF),     VTX(55, 0, -32, 2389, 512, 0x67, 0x00, 0xC4, 0xFF),
    VTX(0, 108, 0, 2048, 0, 0x00, 0x78, 0x00, 0xFF),     VTX(0, 0, -64, 3072, 512, 0x00, 0x00, 0x88, 0xFF),
    VTX(0, 108, 0, 2731, 0, 0x00, 0x78, 0x00, 0xFF),     VTX(-55, 0, -32, 3755, 512, 0x99, 0x00, 0xC4, 0xFF),
    VTX(0, 108, 0, 3413, 0, 0x00, 0x78, 0x00, 0xFF),     VTX(-55, 0, 32, 4437, 512, 0x98, 0x00, 0x3C, 0xFF),
    VTX(0, 108, 0, 4096, 0, 0x00, 0x78, 0x00, 0xFF),     VTX(-55, 0, 32, 341, 512, 0x98, 0x00, 0x3C, 0xFF),
    VTX(0, 108, 0, 683, 0, 0x00, 0x78, 0x00, 0xFF),      VTX(0, -108, 0, 683, 1024, 0x00, 0x88, 0x00, 0xFF),
    VTX(0, -108, 0, 3413, 1024, 0x00, 0x88, 0x00, 0xFF), VTX(0, -108, 0, 2731, 1024, 0x00, 0x88, 0x00, 0xFF),
    VTX(0, -108, 0, 2048, 1024, 0x00, 0x88, 0x00, 0xFF), VTX(0, -108, 0, 1365, 1024, 0x00, 0x88, 0x00, 0xFF),
    VTX(-55, 0, 32, 2389, 512, 0x98, 0x00, 0x3C, 0xFF),  VTX(-55, 0, -32, 1707, 512, 0x99, 0x00, 0xC4, 0xFF),
};

static Gfx D_80B88A20[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(D_04032490, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, 1),
    gsDPLoadMultiBlock(D_80B880E0, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_MIRROR | G_TX_WRAP, 5, 6, 13, 13),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPEndDisplayList(),
};

static Gfx D_80B88AD0[] = {
    gsSPVertex(D_80B888E0, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 5, 7, 8, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 0, 12, 0),
    gsSP2Triangles(13, 0, 11, 0, 14, 7, 5, 0),
    gsSP2Triangles(15, 5, 3, 0, 16, 3, 1, 0),
    gsSP2Triangles(17, 1, 0, 0, 16, 18, 19, 0),
    gsSPEndDisplayList(),
};
