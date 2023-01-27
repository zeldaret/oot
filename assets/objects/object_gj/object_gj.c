#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gj.h"

Vtx object_gjVtx_000000[] = {
#include "assets/objects/object_gj/object_gjVtx_000000.vtx.inc"
};

Gfx gGanonsCastleRubbleAroundArenaDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gjTex_003D20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 38, 63, 58, 255),
    gsSPVertex(object_gjVtx_000000, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gjTex_003B20, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_gjVtx_000000[24], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gjTex_004F20, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 204, 204, 204, 255),
    gsSPVertex(&object_gjVtx_000000[40], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 114, 114, 114, 255),
    gsSPVertex(&object_gjVtx_000000[48], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_gjTex_003C20, G_IM_FMT_I, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_gjVtx_000000[80], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gjTex_003F20, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gjVtx_000000[84], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP2Triangles(29, 28, 30, 0, 29, 30, 31, 0),
    gsSPVertex(&object_gjVtx_000000[116], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&object_gjVtx_000000[147], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gjTex_004F20, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gjVtx_000000[175], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(&object_gjVtx_000000[181], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_gjVtx_000000[185], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(&object_gjVtx_000000[189], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_gjVtx_000000[193], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gjTex_005F20, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gjVtx_000000[197], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(14, 17, 18, 0, 19, 20, 21, 0),
    gsSP1Triangle(19, 21, 22, 0),
    gsSPEndDisplayList(),
};

CamData gGanonsCastleRubbleAroundArenaColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gGanonsCastleRubbleAroundArenaColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gGanonsCastleRubbleAroundArenaColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x77B0, 0x17D2, 0xD966, 0xDB55},
    {0x0000, 0x0003, 0x0004, 0x0002, 0x8513, 0x1821, 0x1A42, 0x1E50},
    {0x0000, 0x0004, 0x0000, 0x0002, 0x1D79, 0x3986, 0x6E7A, 0x05F3},
    {0x0000, 0x0001, 0x0003, 0x0002, 0xDEDB, 0xF87E, 0x8499, 0xF37B},
    {0x0000, 0x0005, 0x0006, 0x0007, 0x3A39, 0x5AB3, 0xBAF6, 0xF40A},
    {0x0000, 0x0008, 0x0009, 0x0007, 0x9F05, 0xBA8A, 0x2E67, 0xFFBA},
    {0x0000, 0x0009, 0x0005, 0x0007, 0xE063, 0x5B1F, 0x5426, 0x0BD6},
    {0x0000, 0x0006, 0x0008, 0x0007, 0xF728, 0xBB26, 0x9477, 0xE772},
    {0x0000, 0x000A, 0x000B, 0x000C, 0x3939, 0x2D78, 0x6914, 0xDEA4},
    {0x0000, 0x000A, 0x000C, 0x000D, 0x3937, 0x2D4C, 0x6928, 0xDEA1},
    {0x0000, 0x000E, 0x000F, 0x0010, 0x392D, 0x2D62, 0x6924, 0xDEA2},
    {0x0000, 0x000E, 0x0010, 0x0011, 0x392D, 0x2D62, 0x6924, 0xDEA2},
    {0x0000, 0x0012, 0x0013, 0x0014, 0xA6AC, 0x1A99, 0x57BA, 0xDE76},
    {0x0000, 0x0012, 0x0014, 0x0015, 0xA6AA, 0x1A8D, 0x57BC, 0xDE76},
    {0x0000, 0x0016, 0x0017, 0x0018, 0x0392, 0x2E50, 0x88BB, 0xDEFA},
    {0x0000, 0x0016, 0x0018, 0x0019, 0x0393, 0x2E2E, 0x88AE, 0xDEF8},
    {0x0000, 0x001A, 0x001B, 0x001C, 0xA82F, 0x0000, 0xA2E2, 0xDCCC},
    {0x0000, 0x001A, 0x001C, 0x001D, 0xA82F, 0x0000, 0xA2E2, 0xDCCC},
    {0x0000, 0x001B, 0x001E, 0x001F, 0x7CB9, 0x0000, 0x1CC3, 0x1CB8},
    {0x0000, 0x001B, 0x001F, 0x001C, 0x7CB9, 0x0000, 0x1CC3, 0x1CB8},
    {0x0000, 0x0020, 0x0021, 0x0022, 0x5CE4, 0x1B52, 0xAC4A, 0xDE13},
    {0x0000, 0x0023, 0x0024, 0x0025, 0x8897, 0xF560, 0x2CD9, 0xFEF3},
    {0x0000, 0x0025, 0x0026, 0x0021, 0x0394, 0x2E1F, 0x88A8, 0xDEF6},
    {0x0000, 0x0025, 0x0021, 0x0020, 0x0390, 0x2E4A, 0x88B9, 0xDEFA},
    {0x0000, 0x0027, 0x0028, 0x0029, 0x3935, 0x2D65, 0x691E, 0xDEA3},
    {0x0000, 0x0027, 0x0029, 0x002A, 0x3935, 0x2D7D, 0x6914, 0xDEA5},
    {0x0000, 0x002B, 0x002C, 0x002D, 0x3927, 0x2D72, 0x6920, 0xDEA2},
    {0x0000, 0x002B, 0x002D, 0x002E, 0x393D, 0x2D34, 0x692F, 0xDE9E},
    {0x0000, 0x002F, 0x0030, 0x0031, 0x8080, 0x0B35, 0xFECA, 0xDD11},
    {0x0000, 0x0032, 0x0033, 0x0030, 0xA6A9, 0x1A89, 0x57BB, 0xDE76},
    {0x0000, 0x0032, 0x0030, 0x002F, 0xA6AE, 0x1AA6, 0x57B8, 0xDE77},
    {0x0000, 0x0034, 0x0035, 0x0036, 0x7642, 0x000D, 0x30F8, 0x0000},
    {0x0000, 0x0034, 0x0036, 0x0037, 0x7643, 0xFFE2, 0x30F6, 0x0000},
    {0x0000, 0x0038, 0x0034, 0x0037, 0x5959, 0xE55F, 0xA84D, 0x15C8},
    {0x0000, 0x001B, 0x0039, 0x003A, 0xD9AA, 0x7A1E, 0x0125, 0xF285},
    {0x0000, 0x003A, 0x003B, 0x001B, 0x1C76, 0x7721, 0x2529, 0x064E},
    {0x0000, 0x003C, 0x003D, 0x003E, 0xF463, 0x51B1, 0x61D9, 0x10F8},
    {0x0000, 0x003C, 0x003E, 0x003F, 0xF45C, 0x51A1, 0x61E6, 0x10FB},
    {0x0000, 0x0040, 0x0041, 0x003D, 0x4EEE, 0x51B9, 0xC50F, 0xF858},
    {0x0000, 0x0040, 0x003D, 0x003C, 0x4EFB, 0x51BE, 0xC526, 0xF85E},
    {0x0000, 0x0042, 0x0041, 0x0040, 0x0B89, 0xAE43, 0x9E2E, 0xEBCB},
    {0x0000, 0x003F, 0x003E, 0x0043, 0xB112, 0xAE45, 0x3AEF, 0x046B},
    {0x0000, 0x0044, 0x0045, 0x0046, 0xE13C, 0xD0AE, 0x8D1F, 0xF5DB},
    {0x0000, 0x0044, 0x0046, 0x0047, 0xE145, 0xD0A6, 0x8D20, 0xF5D9},
    {0x0000, 0x0048, 0x0049, 0x0045, 0x85C8, 0xF3F4, 0x240F, 0x211E},
    {0x0000, 0x0048, 0x0045, 0x0044, 0x85C8, 0xF3FA, 0x2413, 0x211E},
    {0x0000, 0x0047, 0x0046, 0x004A, 0x7BB6, 0xEFF1, 0xE35B, 0xDD70},
    {0x0000, 0x0047, 0x004A, 0x004B, 0x7BB4, 0xEFFA, 0xE34B, 0xDD6E},
    {0x0000, 0x001F, 0x001E, 0x004C, 0x1D71, 0x0000, 0x7C90, 0x12B5},
    {0x0000, 0x001F, 0x004C, 0x004D, 0x1D71, 0x0000, 0x7C90, 0x12B5},
    {0x0000, 0x004D, 0x004C, 0x001A, 0x91D1, 0x0000, 0x4123, 0xEAE3},
    {0x0000, 0x004D, 0x001A, 0x001D, 0x91D1, 0x0000, 0x4123, 0xEAE3},
    {0x0000, 0x003E, 0x004E, 0x004F, 0xBB43, 0xA934, 0x4039, 0x0691},
    {0x0000, 0x003E, 0x004F, 0x0050, 0xBB24, 0xA956, 0x4044, 0x068F},
    {0x0000, 0x0041, 0x0051, 0x0052, 0x5B54, 0x49CA, 0xCD0A, 0xFB4E},
    {0x0000, 0x0041, 0x0052, 0x003D, 0x5B62, 0x49CD, 0xCD27, 0xFB55},
    {0x0000, 0x0053, 0x0054, 0x0055, 0xE42F, 0x777F, 0xDB87, 0x08A7},
    {0x0000, 0x0053, 0x0055, 0x0056, 0xE43E, 0x777E, 0xDB79, 0x08A8},
    {0x0000, 0x0057, 0x0058, 0x0059, 0xE444, 0x7780, 0xDB7B, 0x08A8},
    {0x0000, 0x0057, 0x0059, 0x005A, 0xE449, 0x777F, 0xDB75, 0x08A9},
    {0x0000, 0x003D, 0x0052, 0x004E, 0xFFAE, 0x4B13, 0x67AA, 0x1359},
    {0x0000, 0x003D, 0x004E, 0x003E, 0xFFB1, 0x4B00, 0x67B8, 0x135D},
    {0x0000, 0x0056, 0x005B, 0x005C, 0x39FC, 0x2D71, 0x68AC, 0xDCB4},
    {0x0000, 0x0056, 0x005C, 0x0053, 0x3A08, 0x2D7C, 0x68A0, 0xDCB5},
    {0x0000, 0x0054, 0x0053, 0x005C, 0x6F16, 0x0680, 0xC0BF, 0x002F},
    {0x0000, 0x004B, 0x004A, 0x0049, 0x20BE, 0x130A, 0x7A44, 0x0896},
    {0x0000, 0x004B, 0x0049, 0x0048, 0x20D9, 0x1326, 0x7A38, 0x088D},
    {0x0000, 0x005D, 0x0057, 0x005A, 0x39F0, 0x2D64, 0x68B8, 0xDCB2},
    {0x0000, 0x005D, 0x005A, 0x005E, 0x39FC, 0x2D71, 0x68AC, 0xDCB5},
    {0x0000, 0x005E, 0x005A, 0x0059, 0x9146, 0xF9D1, 0x3FE8, 0xF335},
    {0x0000, 0x005E, 0x0059, 0x005F, 0x9147, 0xF9AD, 0x3FE7, 0xF335},
    {0x0000, 0x0060, 0x004B, 0x0048, 0x2017, 0x2120, 0x7766, 0x07CC},
    {0x0000, 0x0060, 0x0048, 0x0061, 0x1FF5, 0x2109, 0x7776, 0x07D7},
    {0x0000, 0x0062, 0x0047, 0x004B, 0x7BA0, 0x0009, 0xDED7, 0xDC30},
    {0x0000, 0x0062, 0x004B, 0x0060, 0x7BAB, 0xFFF9, 0xDEFE, 0xDC34},
    {0x0000, 0x0063, 0x0044, 0x0047, 0xE00D, 0xDEE4, 0x888F, 0xF4EE},
    {0x0000, 0x0063, 0x0047, 0x0062, 0xE00D, 0xDEE4, 0x888F, 0xF4EE},
    {0x0000, 0x0061, 0x0048, 0x0044, 0x845C, 0x0007, 0x211A, 0x2091},
    {0x0000, 0x0061, 0x0044, 0x0063, 0x8455, 0xFFEC, 0x2102, 0x2090},
    {0x0000, 0x004F, 0x0051, 0x0041, 0x1727, 0xA86F, 0xA58F, 0xEE86},
    {0x0000, 0x004F, 0x0041, 0x0050, 0x1725, 0xA87A, 0xA585, 0xEE84},
    {0x0000, 0x002D, 0x002C, 0x0064, 0x8372, 0xE8C9, 0x122B, 0xFA3C},
    {0x0000, 0x0065, 0x0028, 0x0066, 0x517E, 0xF11A, 0x9E6E, 0x0381},
    {0x0000, 0x0058, 0x0057, 0x005D, 0x6EB3, 0x0639, 0xC00D, 0x09B6},
    {0x0000, 0x0058, 0x005D, 0x0067, 0x6EB4, 0x062D, 0xC00C, 0x09B6},
    {0x0000, 0x004E, 0x0052, 0x0051, 0x9BF1, 0x3706, 0xC62E, 0xE63D},
    {0x0000, 0x004E, 0x0051, 0x004F, 0x9BF2, 0x370A, 0xC62F, 0xE63E},
    {0x0000, 0x005B, 0x0056, 0x0055, 0x914C, 0xF9CB, 0x3FF2, 0xFC7C},
    {0x0000, 0x005B, 0x0055, 0x0068, 0x917F, 0xF5ED, 0x3FCD, 0xFC80},
    {0x0000, 0x0049, 0x004A, 0x0046, 0xF76A, 0x7B9E, 0xDFEF, 0xF54F},
    {0x0000, 0x0049, 0x0046, 0x0045, 0xF76A, 0x7B9E, 0xDFEF, 0xF54F},
    {0x0000, 0x002C, 0x002B, 0x0069, 0xE434, 0x777F, 0xDB86, 0x0AA3},
    {0x0000, 0x002C, 0x0069, 0x006A, 0xE428, 0x777B, 0xDB7F, 0x0AA5},
    {0x0000, 0x0021, 0x0026, 0x0023, 0x06C5, 0x771E, 0x2E58, 0x09CE},
    {0x0000, 0x0021, 0x0023, 0x006B, 0x06C6, 0x771D, 0x2E5B, 0x09CE},
    {0x0000, 0x0022, 0x0021, 0x006B, 0x06C6, 0x771D, 0x2E5B, 0x09CE},
    {0x0000, 0x0031, 0x0030, 0x006C, 0x0B00, 0x7CBA, 0xE573, 0x04A0},
    {0x0000, 0x0030, 0x0033, 0x0034, 0x0B00, 0x7CB9, 0xE56B, 0x04A1},
    {0x0000, 0x0030, 0x0034, 0x006D, 0x0B01, 0x7CB8, 0xE568, 0x04A2},
    {0x0000, 0x0030, 0x006D, 0x006C, 0x0B00, 0x7CBA, 0xE572, 0x04A0},
    {0x0000, 0x0029, 0x0028, 0x006E, 0xE43F, 0x777E, 0xDB78, 0x0AA5},
    {0x0000, 0x0029, 0x006E, 0x006F, 0xE42C, 0x7779, 0xDB76, 0x0AA8},
};

Vec3s gGanonsCastleRubbleAroundArenaColVertices[] = {
    {   8008,   2106,  -4997 },
    {   7859,   1952,  -5554 },
    {   7563,   3423,  -5564 },
    {   7308,   1952,  -5406 },
    {   7457,   2106,  -4850 },
    {  -3639,   1156,  -7228 },
    {  -3585,    775,  -7683 },
    {  -4915,   1405,  -7977 },
    {  -3937,    411,  -7421 },
    {  -3991,    791,  -6965 },
    {   5848,    571,   6971 },
    {   5736,   1054,   6823 },
    {   4297,    970,   7643 },
    {   4410,    486,   7790 },
    {   1800,    824,   9065 },
    {    331,    738,   9901 },
    {    443,    254,  10049 },
    {   1912,    340,   9213 },
    {  -4265,    850,   7926 },
    {  -4221,   1354,   7818 },
    {  -8514,    835,   3604 },
    {  -8559,    330,   3711 },
    {  -2702,    884,  -8810 },
    {  -2674,   1366,  -8622 },
    {   3354,   1007,  -8581 },
    {   3326,    526,  -8768 },
    {  -8733,    921,  -4151 },
    {  -5992,   1799,  -6736 },
    {  -5992,      0,  -6736 },
    {  -8733,      0,  -4151 },
    {  -6780,    921,  -3319 },
    {  -6780,      0,  -3319 },
    {   3897,      0,  -8955 },
    {   3925,    490,  -8764 },
    {   5055,      0,  -7670 },
    {  -2741,      0,  -6531 },
    {  -3683,    942,  -8816 },
    {  -3737,      0,  -9183 },
    {  -3684,    943,  -8817 },
    {   6705,      0,   6751 },
    {   6563,    612,   6564 },
    {   4364,    484,   7816 },
    {   4477,      0,   7964 },
    {   1612,    323,   9384 },
    {    -52,    225,  10331 },
    {      0,      0,  10400 },
    {   1687,      0,   9482 },
    {  -9010,      0,   3352 },
    {  -8985,    278,   3293 },
    {  -8997,      0,   1982 },
    {  -3648,      0,   8812 },
    {  -3566,    934,   8613 },
    {  -2352,    202,   5681 },
    {  -3566,    934,   8612 },
    {  -3648,      0,   8811 },
    {  -2370,      0,   5724 },
    {  -4019,      0,   4044 },
    {  -8711,    921,  -4129 },
    {  -8040,   1121,  -2994 },
    {  -6785,    921,  -3314 },
    {  -1171,      0,  -5822 },
    {  -2858,    928,  -6797 },
    {  -3369,    399,  -6416 },
    {  -2643,      0,  -5997 },
    {  -2057,      0,  -7011 },
    {  -2783,    399,  -7430 },
    {  -3168,      0,  -7142 },
    {  -3312,      0,  -6893 },
    {   7223,   1048,  -5260 },
    {   7053,   1882,  -5558 },
    {   8050,   1882,  -5825 },
    {   8023,   1048,  -5474 },
    {   7430,   1263,  -4487 },
    {   7311,   2150,  -4594 },
    {   8308,   2150,  -4861 },
    {   8230,   1263,  -4702 },
    {  -8062,   1121,  -3016 },
    {  -8062,      0,  -3016 },
    {  -4129,    790,  -6701 },
    {  -4035,    131,  -7491 },
    {  -3294,   -130,  -7049 },
    {  -3398,    790,  -7966 },
    {  -3491,   1450,  -7177 },
    {   4478,   1135,   8076 },
    {   3048,      0,   5448 },
    {   2421,     21,   5995 },
    {   3792,   1097,   8473 },
    {   2421,   1020,   9265 },
    {   1201,     63,   7060 },
    {    591,     84,   7592 },
    {   1735,    982,   9661 },
    {   4047,      0,   8808 },
    {   4742,      0,   8423 },
    {   2658,      0,   9576 },
    {   1963,      0,   9961 },
    {    848,      0,   8029 },
    {   8317,      0,  -4375 },
    {   7517,      0,  -4161 },
    {   8096,      0,  -5203 },
    {   7296,      0,  -4989 },
    {   -111,      0,   9639 },
    {   5249,      0,   5560 },
    {   6687,      0,   6761 },
    {   1394,      0,   7388 },
    {   2487,      0,   6106 },
    {   1097,    -81,   8453 },
    {   -122,    -40,   9517 },
    {   3282,      0,  -7411 },
    {  -7380,      0,   2652 },
    {  -4031,      0,   4039 },
    {   4803,   -208,   5219 },
    {   3538,   -165,   6323 },
};

CollisionHeader gGanonsCastleRubbleAroundArenaCol = { 
    { -9010, -208, -9183 },
    { 8317, 3423, 10400 },
    112, gGanonsCastleRubbleAroundArenaColVertices,
    102, gGanonsCastleRubbleAroundArenaColPolygons,
    gGanonsCastleRubbleAroundArenaColSurfaceType,
    gGanonsCastleRubbleAroundArenaColCamDataList,
    0, NULL
};

Vtx object_gjVtx_001BA0[] = {
#include "assets/objects/object_gj/object_gjVtx_001BA0.vtx.inc"
};

Gfx gGanonsCastleRubble2DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_gjTex_006F20, G_IM_FMT_I, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_gjVtx_001BA0, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gjTex_005F20, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gjVtx_001BA0[8], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gjTex_007320, G_IM_FMT_I, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gjVtx_001BA0[16], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

u8 object_gj_possiblePadding_001E68[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gGanonsCastleRubble2ColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gGanonsCastleRubble2ColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gGanonsCastleRubble2ColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x5A98, 0x000E, 0x5A6B, 0xFEE8},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x5A8F, 0xFFFD, 0x5A74, 0xFEE9},
    {0x0000, 0x0004, 0x0005, 0x0006, 0xA571, 0x0003, 0xA58B, 0xFEE8},
    {0x0000, 0x0004, 0x0006, 0x0007, 0xA571, 0x0003, 0xA58B, 0xFEE8},
    {0x0000, 0x0003, 0x0002, 0x0005, 0x80BC, 0x0DA8, 0xFF55, 0xFE45},
    {0x0000, 0x0003, 0x0005, 0x0004, 0x80BD, 0x0DAB, 0xFF59, 0xFE45},
    {0x0000, 0x0007, 0x0006, 0x0001, 0xFF29, 0xF242, 0x80BF, 0xFCBA},
    {0x0000, 0x0007, 0x0001, 0x0000, 0xFF29, 0xF242, 0x80BF, 0xFCBA},
    {0x0000, 0x0001, 0x0006, 0x0005, 0x0DC5, 0x7E89, 0xF27C, 0xFB47},
    {0x0000, 0x0001, 0x0005, 0x0002, 0x0DA2, 0x7E85, 0xF23B, 0xFB46},
    {0x0000, 0x0003, 0x0004, 0x0007, 0xF227, 0x817C, 0x0D9C, 0x0000},
    {0x0000, 0x0003, 0x0007, 0x0000, 0xF240, 0x817B, 0x0DA9, 0x0000},
};

Vec3s gGanonsCastleRubble2ColVertices[] = {
    {   1221,   -222,   -827 },
    {   1350,    974,   -957 },
    {   -306,   1333,    702 },
    {   -435,    137,    831 },
    {   -440,     53,     45 },
    {   -311,   1248,    -84 },
    {    565,   1059,   -961 },
    {    435,   -137,   -831 },
};

CollisionHeader gGanonsCastleRubble2Col = { 
    { -440, -222, -961 },
    { 1350, 1333, 831 },
    8, gGanonsCastleRubble2ColVertices,
    12, gGanonsCastleRubble2ColPolygons,
    gGanonsCastleRubble2ColSurfaceType,
    gGanonsCastleRubble2ColCamDataList,
    0, NULL
};

Vtx object_gjVtx_001FA0[] = {
#include "assets/objects/object_gj/object_gjVtx_001FA0.vtx.inc"
};

Gfx gGanonsCastleRubble3DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gjTex_007720, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_gjVtx_001FA0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gjTex_005F20, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_gjVtx_001FA0[4], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gjTex_007B20, G_IM_FMT_I, G_IM_SIZ_8b, 128, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 7, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gjVtx_001FA0[12], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gjTex_007320, G_IM_FMT_I, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gjVtx_001FA0[20], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

u8 object_gj_possiblePadding_002308[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gGanonsCastleRubble3ColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gGanonsCastleRubble3ColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gGanonsCastleRubble3ColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0020, 0x0000, 0x7FFF, 0x002E},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0020, 0x0000, 0x7FFF, 0x002E},
    {0x0000, 0x0004, 0x0005, 0x0006, 0x8A22, 0x0000, 0x31E8, 0xFC93},
    {0x0000, 0x0004, 0x0006, 0x0007, 0x8A22, 0x0000, 0x31E8, 0xFC93},
    {0x0000, 0x0008, 0x0009, 0x000A, 0x75F5, 0x0000, 0x31B1, 0xFD4A},
    {0x0000, 0x0008, 0x000A, 0x000B, 0x75F5, 0x0000, 0x31B1, 0xFD4A},
    {0x0000, 0x0009, 0x0008, 0x0005, 0x002C, 0x0000, 0x7FFF, 0xFF15},
    {0x0000, 0x0009, 0x0005, 0x0004, 0x002C, 0x0000, 0x7FFF, 0xFF15},
    {0x0000, 0x0007, 0x0006, 0x000B, 0xFFDE, 0x0000, 0x8001, 0xFF15},
    {0x0000, 0x0007, 0x000B, 0x000A, 0xFFDE, 0x0000, 0x8001, 0xFF15},
    {0x0000, 0x0008, 0x000B, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xFA96},
    {0x0000, 0x0008, 0x0006, 0x0005, 0x0000, 0x7FFF, 0x0000, 0xFA96},
    {0x0000, 0x0004, 0x0007, 0x000A, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0004, 0x000A, 0x0009, 0x0000, 0x8001, 0x0000, 0x0000},
};

Vec3s gGanonsCastleRubble3ColVertices[] = {
    {    654,   1386,    -47 },
    {    654,   1829,    -47 },
    {   -371,   1829,    -46 },
    {   -371,   1386,    -46 },
    {   -852,      0,    236 },
    {   -852,   1386,    236 },
    {  -1051,   1386,   -234 },
    {  -1051,      0,   -234 },
    {    654,   1386,    234 },
    {    654,      0,    234 },
    {    852,      0,   -236 },
    {    852,   1386,   -236 },
};

CollisionHeader gGanonsCastleRubble3Col = { 
    { -1051, 0, -236 },
    { 852, 1829, 236 },
    12, gGanonsCastleRubble3ColVertices,
    14, gGanonsCastleRubble3ColPolygons,
    gGanonsCastleRubble3ColSurfaceType,
    gGanonsCastleRubble3ColCamDataList,
    0, NULL
};

u8 object_gj_possiblePadding_002474[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_gjVtx_002480[] = {
#include "assets/objects/object_gj/object_gjVtx_002480.vtx.inc"
};

Gfx gGanonsCastleRubble4DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gjTex_005F20, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_gjVtx_002480, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gjTex_007B20, G_IM_FMT_I, G_IM_SIZ_8b, 128, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 7, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gjVtx_002480[8], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gjTex_007320, G_IM_FMT_I, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gjVtx_002480[16], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

u8 object_gj_possiblePadding_002748[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gGanonsCastleRubble4ColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gGanonsCastleRubble4ColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gGanonsCastleRubble4ColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x294D, 0x265D, 0x72EA, 0xFD02},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x294D, 0x265D, 0x72EA, 0xFD02},
    {0x0000, 0x0004, 0x0005, 0x0006, 0xC780, 0x646C, 0xC843, 0xFD01},
    {0x0000, 0x0004, 0x0006, 0x0007, 0xC780, 0x646C, 0xC843, 0xFD01},
    {0x0000, 0x0007, 0x0006, 0x0003, 0x0CC3, 0x8AE1, 0xCDF8, 0x0000},
    {0x0000, 0x0007, 0x0003, 0x0002, 0x0CC2, 0x8AE0, 0xCDFA, 0x0000},
    {0x0000, 0x0001, 0x0000, 0x0005, 0xF33B, 0x7521, 0x3201, 0xFEF2},
    {0x0000, 0x0001, 0x0005, 0x0004, 0xF339, 0x7521, 0x3200, 0xFEF2},
    {0x0000, 0x0000, 0x0003, 0x0006, 0x6FF6, 0x222E, 0xCC3C, 0xF8CB},
    {0x0000, 0x0000, 0x0006, 0x0005, 0x6FF0, 0x224F, 0xCC45, 0xF8CB},
    {0x0000, 0x0004, 0x0007, 0x0002, 0x9005, 0xDDC5, 0x33B0, 0x0000},
    {0x0000, 0x0004, 0x0002, 0x0001, 0x9005, 0xDDCD, 0x33B5, 0x0000},
};

Vec3s gGanonsCastleRubble4ColVertices[] = {
    {   1944,    514,    -17 },
    {    330,     20,    728 },
    {    451,   -287,    787 },
    {   2065,    207,     42 },
    {   -384,    474,   -518 },
    {   1229,    968,  -1263 },
    {   1162,    781,  -1532 },
    {   -451,    287,   -787 },
};

CollisionHeader gGanonsCastleRubble4Col = { 
    { -451, -287, -1532 },
    { 2065, 968, 787 },
    8, gGanonsCastleRubble4ColVertices,
    12, gGanonsCastleRubble4ColPolygons,
    gGanonsCastleRubble4ColSurfaceType,
    gGanonsCastleRubble4ColCamDataList,
    0, NULL
};

Vtx object_gjVtx_002880[] = {
#include "assets/objects/object_gj/object_gjVtx_002880.vtx.inc"
};

Gfx gGanonsCastleRubble5DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gjTex_007720, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_gjVtx_002880, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gjTex_005F20, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_gjVtx_002880[4], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gjTex_007B20, G_IM_FMT_I, G_IM_SIZ_8b, 128, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 7, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gjVtx_002880[12], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gjTex_007320, G_IM_FMT_I, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gjVtx_002880[20], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

u8 object_gj_possiblePadding_002BE8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gGanonsCastleRubble5ColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gGanonsCastleRubble5ColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gGanonsCastleRubble5ColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x3181, 0x0000, 0x7609, 0x002F},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x3181, 0x0000, 0x7609, 0x002F},
    {0x0000, 0x0004, 0x0005, 0x0006, 0x7FFE, 0x0000, 0xFEF8, 0xFCEB},
    {0x0000, 0x0004, 0x0006, 0x0007, 0x7FFE, 0x0000, 0xFEF8, 0xFCEB},
    {0x0000, 0x0008, 0x0009, 0x000A, 0xA91F, 0x0000, 0x5DFE, 0xFCF8},
    {0x0000, 0x0008, 0x000A, 0x000B, 0xA91F, 0x0000, 0x5DFE, 0xFCF8},
    {0x0000, 0x000B, 0x000A, 0x0007, 0xCE71, 0x0000, 0x89FD, 0xFF1B},
    {0x0000, 0x000B, 0x0007, 0x0006, 0xCE71, 0x0000, 0x89FD, 0xFF1B},
    {0x0000, 0x0005, 0x0004, 0x0009, 0x3189, 0x0000, 0x7606, 0xFF1B},
    {0x0000, 0x0005, 0x0009, 0x0008, 0x3189, 0x0000, 0x7606, 0xFF1B},
    {0x0000, 0x0008, 0x000B, 0x0006, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0008, 0x0006, 0x0005, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0004, 0x0007, 0x000A, 0x0000, 0x7FFF, 0x0000, 0xFB45},
    {0x0000, 0x0004, 0x000A, 0x0009, 0x0000, 0x7FFF, 0x0000, 0xFB45},
};

Vec3s gGanonsCastleRubble5ColVertices[] = {
    {    698,   1196,   -344 },
    {    698,   1738,   -344 },
    {   -189,   1749,     28 },
    {   -189,   1207,     28 },
    {    788,   1211,    -82 },
    {    788,      0,    -82 },
    {    784,      0,   -578 },
    {    784,   1211,   -578 },
    {   -601,      0,    501 },
    {   -601,   1211,    501 },
    {   -971,   1211,    159 },
    {   -971,      0,    159 },
};

CollisionHeader gGanonsCastleRubble5Col = { 
    { -971, 0, -578 },
    { 788, 1749, 501 },
    12, gGanonsCastleRubble5ColVertices,
    14, gGanonsCastleRubble5ColPolygons,
    gGanonsCastleRubble5ColSurfaceType,
    gGanonsCastleRubble5ColCamDataList,
    0, NULL
};

u8 object_gj_possiblePadding_002D54[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_gjVtx_002D60[] = {
#include "assets/objects/object_gj/object_gjVtx_002D60.vtx.inc"
};

Gfx gGanonsCastleRubble6DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gjTex_005F20, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_gjVtx_002D60, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSPEndDisplayList(),
};

u8 object_gj_possiblePadding_002F28[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gGanonsCastleRubble6ColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gGanonsCastleRubble6ColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gGanonsCastleRubble6ColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x9591, 0x215B, 0xC136, 0xF533},
    {0x0000, 0x0003, 0x0000, 0x0002, 0x291B, 0x791C, 0xFAEA, 0xFF5C},
    {0x0000, 0x0003, 0x0002, 0x0004, 0x291C, 0x791C, 0xFAF1, 0xFF5C},
    {0x0000, 0x0000, 0x0003, 0x0005, 0x3655, 0xDD35, 0x9174, 0xFC70},
    {0x0000, 0x0000, 0x0005, 0x0001, 0x3655, 0xDD35, 0x9174, 0xFC70},
    {0x0000, 0x0004, 0x0002, 0x0001, 0xCD24, 0x8D38, 0x18F0, 0x0000},
    {0x0000, 0x0004, 0x0001, 0x0005, 0xCD2A, 0x8D35, 0x18EC, 0x0000},
    {0x0000, 0x0004, 0x0005, 0x0003, 0x6A68, 0xDEA9, 0x3ED7, 0x0000},
};

Vec3s gGanonsCastleRubble6ColVertices[] = {
    {  -1823,    701,  -2173 },
    {  -1941,    396,  -2135 },
    {  -2654,   1050,   -579 },
    {    475,    -22,   -816 },
    {   -357,    327,    778 },
    {    357,   -327,   -778 },
};

CollisionHeader gGanonsCastleRubble6Col = { 
    { -2654, -327, -2173 },
    { 475, 1050, 778 },
    6, gGanonsCastleRubble6ColVertices,
    8, gGanonsCastleRubble6ColPolygons,
    gGanonsCastleRubble6ColSurfaceType,
    gGanonsCastleRubble6ColCamDataList,
    0, NULL
};

Vtx object_gjVtx_003010[] = {
#include "assets/objects/object_gj/object_gjVtx_003010.vtx.inc"
};

Gfx gGanonsCastleRubble7DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gjTex_003F20, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_gjVtx_003010, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gjTex_005F20, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gjVtx_003010[8], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gjTex_007320, G_IM_FMT_I, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gjVtx_003010[16], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

u8 object_gj_possiblePadding_0032D8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gGanonsCastleRubble7ColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gGanonsCastleRubble7ColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gGanonsCastleRubble7ColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0xDD88, 0x5550, 0x58FA, 0xFE42},
    {0x0000, 0x0000, 0x0002, 0x0003, 0xDDC9, 0x5563, 0x5900, 0xFE42},
    {0x0000, 0x0004, 0x0005, 0x0006, 0x2274, 0xAAA9, 0xA70B, 0x0000},
    {0x0000, 0x0004, 0x0006, 0x0007, 0x224C, 0xAAAB, 0xA6FA, 0xFFFF},
    {0x0000, 0x0007, 0x0006, 0x0001, 0x8C4A, 0xE555, 0xD038, 0xFDEF},
    {0x0000, 0x0007, 0x0001, 0x0000, 0x8C4A, 0xE555, 0xD038, 0xFDEF},
    {0x0000, 0x0005, 0x0004, 0x0003, 0x7E6E, 0x0004, 0x13F8, 0x0000},
    {0x0000, 0x0005, 0x0003, 0x0002, 0x7E6E, 0x0004, 0x13F8, 0x0000},
    {0x0000, 0x0005, 0x0002, 0x0001, 0xF282, 0xA19A, 0x5561, 0x0000},
    {0x0000, 0x0005, 0x0001, 0x0006, 0xF284, 0xA19D, 0x5565, 0x0000},
    {0x0000, 0x0007, 0x0000, 0x0003, 0x0D82, 0x5E64, 0xAA9D, 0xF559},
    {0x0000, 0x0007, 0x0003, 0x0004, 0x0D43, 0x5E8A, 0xAABD, 0xF559},
};

Vec3s gGanonsCastleRubble7ColVertices[] = {
    {   -413,   2245,  -1671 },
    {   -700,    233,    147 },
    {    -52,    305,    329 },
    {    235,   2316,  -1490 },
    {    287,   2012,  -1819 },
    {      0,      0,      0 },
    {   -513,    -57,   -144 },
    {   -226,   1955,  -1962 },
};

CollisionHeader gGanonsCastleRubble7Col = { 
    { -700, -57, -1962 },
    { 287, 2316, 329 },
    8, gGanonsCastleRubble7ColVertices,
    12, gGanonsCastleRubble7ColPolygons,
    gGanonsCastleRubble7ColSurfaceType,
    gGanonsCastleRubble7ColCamDataList,
    0, NULL
};

Vtx object_gjVtx_003410[] = {
#include "assets/objects/object_gj/object_gjVtx_003410.vtx.inc"
};

Gfx gGanonsCastleRubbleTallDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gjTex_007720, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_gjVtx_003410, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gjTex_005F20, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&object_gjVtx_003410[4], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gjTex_007B20, G_IM_FMT_I, G_IM_SIZ_8b, 128, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 7, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gjVtx_003410[20], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gjTex_007320, G_IM_FMT_I, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gjVtx_003410[36], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

u8 object_gj_possiblePadding_0038D8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gGanonsCastleRubbleTallColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gGanonsCastleRubbleTallColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gGanonsCastleRubbleTallColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x2E64, 0xF86E, 0x770D, 0x0098},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x2E68, 0xF871, 0x770C, 0x0098},
    {0x0000, 0x0004, 0x0005, 0x0006, 0x8197, 0xFD38, 0x13E3, 0xFE60},
    {0x0000, 0x0004, 0x0006, 0x0007, 0x819E, 0xFD40, 0x1410, 0xFE60},
    {0x0000, 0x0008, 0x0009, 0x000A, 0x7CDB, 0x0011, 0x1C30, 0xFF7D},
    {0x0000, 0x0008, 0x000A, 0x000B, 0x7CD7, 0xFFFF, 0x1C41, 0xFF7F},
    {0x0000, 0x000C, 0x000D, 0x000E, 0x8335, 0xFC15, 0x1C30, 0xFEE1},
    {0x0000, 0x000C, 0x000E, 0x000F, 0x8359, 0xFC54, 0x1CD4, 0xFEDC},
    {0x0000, 0x0010, 0x0011, 0x0012, 0x7E73, 0x000A, 0x13D9, 0xFE60},
    {0x0000, 0x0010, 0x0012, 0x0013, 0x7E6D, 0xFFFC, 0x13FF, 0xFE60},
    {0x0000, 0x0007, 0x0006, 0x0013, 0xFFC3, 0x08D6, 0x804F, 0xFECA},
    {0x0000, 0x0007, 0x0013, 0x0012, 0xFFE8, 0x08C9, 0x804E, 0xFECA},
    {0x0000, 0x0011, 0x0010, 0x0005, 0x001B, 0xF730, 0x7FB1, 0xFECA},
    {0x0000, 0x0011, 0x0005, 0x0004, 0x0018, 0xF72F, 0x7FB1, 0xFECA},
    {0x0000, 0x0009, 0x0008, 0x000D, 0x0014, 0xF741, 0x7FB2, 0x0015},
    {0x0000, 0x0009, 0x000D, 0x000C, 0x0019, 0xF746, 0x7FB3, 0x0015},
    {0x0000, 0x000F, 0x000E, 0x000B, 0xFFF0, 0x08BA, 0x804D, 0xFEEE},
    {0x0000, 0x000F, 0x000B, 0x000A, 0xFFB0, 0x0908, 0x8053, 0xFEE7},
    {0x0000, 0x0008, 0x000B, 0x000E, 0xFF3B, 0x6A60, 0x472E, 0xF647},
    {0x0000, 0x0008, 0x000E, 0x000D, 0xFF08, 0x6A2F, 0x4777, 0xF64B},
    {0x0000, 0x0004, 0x0007, 0x0012, 0x015B, 0x804E, 0xF750, 0x0000},
    {0x0000, 0x0004, 0x0012, 0x0011, 0x015F, 0x804E, 0xF755, 0x0000},
    {0x0000, 0x0010, 0x0013, 0x0014, 0xFEF2, 0x6A68, 0x4721, 0xF7C4},
    {0x0000, 0x0010, 0x0014, 0x0005, 0xFEB7, 0x6A41, 0x475B, 0xF7C6},
};

Vec3s gGanonsCastleRubbleTallColVertices[] = {
    {    139,   3014,    -26 },
    {    129,   3692,     21 },
    {   -305,   3580,    183 },
    {   -295,   2901,    136 },
    {   -372,    -25,    309 },
    {   -397,   2220,    464 },
    {   -499,   2616,   -129 },
    {   -471,     16,   -309 },
    {     93,   2878,    176 },
    {    100,   2440,    146 },
    {    155,   2603,    -98 },
    {    148,   3041,    -67 },
    {   -338,   2435,    146 },
    {   -345,   2874,    176 },
    {   -405,   3037,    -67 },
    {   -399,   2598,    -97 },
    {    348,   2229,    464 },
    {    373,    -17,    309 },
    {    470,     26,   -309 },
    {    442,   2627,   -130 },
    {   -499,   2617,   -129 },
};

CollisionHeader gGanonsCastleRubbleTallCol = { 
    { -499, -25, -309 },
    { 470, 3692, 464 },
    21, gGanonsCastleRubbleTallColVertices,
    24, gGanonsCastleRubbleTallColPolygons,
    gGanonsCastleRubbleTallColSurfaceType,
    gGanonsCastleRubbleTallColCamDataList,
    0, NULL
};

u8 object_gj_possiblePadding_003B1C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

u64 object_gjTex_003B20[] = {
#include "assets/objects/object_gj/object_gjTex_003B20.ia8.inc.c"
};

u64 object_gjTex_003C20[] = {
#include "assets/objects/object_gj/object_gjTex_003C20.i4.inc.c"
};

u64 object_gjTex_003D20[] = {
#include "assets/objects/object_gj/object_gjTex_003D20.rgba16.inc.c"
};

u64 object_gjTex_003F20[] = {
#include "assets/objects/object_gj/object_gjTex_003F20.i8.inc.c"
};

u64 object_gjTex_004F20[] = {
#include "assets/objects/object_gj/object_gjTex_004F20.i8.inc.c"
};

u64 object_gjTex_005F20[] = {
#include "assets/objects/object_gj/object_gjTex_005F20.i8.inc.c"
};

u64 object_gjTex_006F20[] = {
#include "assets/objects/object_gj/object_gjTex_006F20.i4.inc.c"
};

u64 object_gjTex_007320[] = {
#include "assets/objects/object_gj/object_gjTex_007320.i8.inc.c"
};

u64 object_gjTex_007720[] = {
#include "assets/objects/object_gj/object_gjTex_007720.ia8.inc.c"
};

u64 object_gjTex_007B20[] = {
#include "assets/objects/object_gj/object_gjTex_007B20.i8.inc.c"
};

u64 gGanonsCastleUnusedSpikeVariantTex[] = {
#include "assets/objects/object_gj/ganons_castle_unused_spike_variant.ia16.inc.c"
};

u64 gGanonsCastleUnusedWallTex[] = {
#include "assets/objects/object_gj/ganons_castle_unused_wall.rgba16.inc.c"
};

u64 gGanonsCastleUnusedTex_00A320[] = {
#include "assets/objects/object_gj/ganons_castle_unused_00A320.ia16.inc.c"
};

