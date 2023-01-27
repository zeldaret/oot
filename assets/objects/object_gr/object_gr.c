#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gr.h"

s16 sNiwGirlRunAnimFrameData[] = {
    0xFFFB, 0x04F4, 0x0000, 0x3F79, 0x0088, 0x0003, 0xC000, 0x04F4, 0x04CE, 0x0475, 0x041D, 0x03F8, 0x042B, 0x0493, 
    0x04F8, 0x0524, 0x04F0, 0x0483, 0x0414, 0x03DE, 0x0406, 0x0465, 0x04C6, 0xF646, 0xF536, 0xF492, 0xF445, 0xF43B, 
    0xF460, 0xF4A0, 0xF4E6, 0xF51F, 0xF536, 0xF538, 0xF53D, 0xF544, 0xF54A, 0xF54D, 0xF54C, 0xFB42, 0xFB25, 0xFBD0, 
    0xFCF8, 0xFE10, 0xFE8D, 0xFE04, 0xFCD8, 0xFBAC, 0xFB25, 0xFBB2, 0xFCE5, 0xFE17, 0xFEA2, 0xFE16, 0xFCE3, 0xFBCF, 
    0xF9E6, 0xFBCF, 0x0002, 0x0436, 0x061F, 0x0436, 0x0002, 0xFBCF, 0xF9E6, 0xFBCF, 0x0002, 0x0436, 0x061F, 0x0436, 
    0x0002, 0xF962, 0xF9A8, 0xF9D0, 0xF9A6, 0xF95E, 0xF934, 0xF92B, 0xF934, 0xF95E, 0xF9A6, 0xF9D0, 0xF9A7, 0xF960, 
    0xF934, 0xF92B, 0xF92E, 0x0344, 0xFEBD, 0xFCB4, 0xFEC6, 0x035D, 0x07FB, 0x0A14, 0x07FB, 0x035D, 0xFEC6, 0xFCB4, 
    0xFEC1, 0x034D, 0x07E8, 0x0A14, 0x0A16, 0xB9B0, 0xB394, 0xB0D6, 0xB3CE, 0xBA4A, 0xC0BF, 0xC3AF, 0xC0BF, 0xBA4A, 
    0xB3CE, 0xB0D6, 0xB3A9, 0xB9E9, 0xC051, 0xC3AF, 0xC44F, 0x069E, 0x0661, 0x063E, 0x0664, 0x06A2, 0x06C4, 0x06C9, 
    0x06C4, 0x06A2, 0x0664, 0x063E, 0x0662, 0x06A0, 0x06C4, 0x06C9, 0x06C6, 0x0290, 0xFE5B, 0xFC77, 0xFE65, 0x02AA, 
    0x06F5, 0x08E9, 0x06F5, 0x02AA, 0xFE65, 0xFC77, 0xFE5E, 0x0299, 0x06E2, 0x08E9, 0x08EF, 0x46A3, 0x4C7F, 0x4F1E, 
    0x4C42, 0x4600, 0x3FC5, 0x3CEF, 0x3FC5, 0x4600, 0x4C42, 0x4F1E, 0x4C68, 0x4667, 0x4038, 0x3CEF, 0x3C41, 0xFC16, 
    0x9F5A, 0xFF9B, 0xFFB8, 0xFFC4, 0xFFB3, 0xFF9D, 0xFF19, 0xFF06, 0xFF58, 0xFFA0, 0xFFB4, 0xFFC3, 0xFFCD, 0xFFA6, 
    0x98E8, 0xC39E, 0xB094, 0xE12C, 0xF12A, 0xF9BB, 0x01CE, 0x0F96, 0x2143, 0x28D0, 0x20B7, 0x0E82, 0x0116, 0xFA42, 
    0xF2CE, 0xE30A, 0xB12F, 0xD341, 0x03B5, 0x9A61, 0x984B, 0x981C, 0x9A40, 0xA013, 0xAAC0, 0xB37A, 0xA9E1, 0x9FAA, 
    0x9A41, 0x9803, 0x9780, 0x98B6, 0x059A, 0x005E, 0x1435, 0x0000, 0x0000, 0x005E, 0x005E, 0x0000, 0x005E, 0x0000, 
    0x0000, 0x0000, 0x005E, 0x005E, 0x005E, 0x0000, 0x102D, 0x00F4, 0x0072, 0x005C, 0x005E, 0x0059, 0x005E, 0x008B, 
    0x00CD, 0x00F9, 0x0128, 0x00CC, 0x005F, 0x0059, 0x005B, 0x0061, 0x00BF, 0x2C07, 0x2359, 0x11B4, 0x0297, 0xF97E, 
    0xEF20, 0xDE5B, 0xD385, 0xD361, 0xD3E1, 0xDD96, 0xEE75, 0xFA0A, 0x0448, 0x13B2, 0x24C2, 0x71FF, 0x6F8E, 0x6C19, 
    0x69D8, 0x67BB, 0x6311, 0x55F7, 0x396F, 0x2825, 0x3650, 0x53EA, 0x62CF, 0x67D4, 0x698C, 0x6B6F, 0x6F07, 0xFFA2, 
    0x0000, 0x0000, 0xFFA3, 0xFFA2, 0xFFA2, 0xFFA3, 0xFFA3, 0x0000, 0x0000, 0x0000, 0xFFA3, 0xFFA3, 0x0000, 0x0000, 
    0xFFA3, 0x2416, 0x1A78, 0x0AAC, 0xF665, 0xE395, 0xDD26, 0xE8B3, 0xEDB1, 0xEDD8, 0xEFD8, 0xEB18, 0xE79A, 0xF2C8, 
    0x02A4, 0x12DB, 0x1FC9, 0x1CA9, 0x303E, 0x48D0, 0x57E5, 0x5505, 0x40CA, 0x11BB, 0x0061, 0x0000, 0x0000, 0x1952, 
    0x409C, 0x4DFB, 0x4AE8, 0x3B4C, 0x2651, 0x8FA9, 0x9206, 0x9594, 0x9A6C, 0xA0A5, 0xAF69, 0xC6A8, 0xDBA8, 0xE3AF, 
    0xD6B1, 0xBC21, 0xA083, 0x9059, 0x8BA1, 0x89A1, 0x89D1, 0xEDDC, 0xF0A1, 0xF783, 0xF06F, 0xFC0D, 0x0937, 0x15C6, 
    0x1EDC, 0x206A, 0x16FF, 0x06F5, 0xF2B6, 0xE3A8, 0xE23B, 0xEF71, 0xEDAC, 0x0060, 0x0060, 0x0060, 0x35BD, 0x427A, 
    0x3F1E, 0x3398, 0x270D, 0x2572, 0x3630, 0x49DE, 0x52C3, 0x4AC9, 0x2FF7, 0x0060, 0x0061, 0xDF98, 0xD30D, 0xB994, 
    0x9F4D, 0x9059, 0x8C50, 0x8A85, 0x8AB7, 0x8CA6, 0x9010, 0x94B4, 0x9A51, 0xA0A6, 0xAE94, 0xC471, 0xD825, 0x0000, 
    
};

JointIndex sNiwGirlRunAnimJointIndices[] = {
    { 0x0000, 0x0007, 0x0002 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0002, 0x0017, 0x0003 },
    { 0x0002, 0x0027, 0x0004 },
    { 0x0002, 0x0037, 0x0005 },
    { 0x0047, 0x0057, 0x0067 },
    { 0x0077, 0x0087, 0x0097 },
    { 0x00A7, 0x00B7, 0x00C7 },
    { 0x0002, 0x0002, 0x00D7 },
    { 0x00E7, 0x00F7, 0x0107 },
    { 0x0002, 0x0002, 0x0117 },
    { 0x0006, 0x0127, 0x0006 },
    { 0x0002, 0x0002, 0x0137 },
    { 0x0002, 0x0002, 0x0147 },
    { 0x0006, 0x0157, 0x0006 },
    { 0x0002, 0x0002, 0x0167 },
    { 0x0002, 0x0002, 0x0177 },
};

AnimationHeader gNiwGirlRunAnim = { 
    { 16 }, sNiwGirlRunAnimFrameData,
    sNiwGirlRunAnimJointIndices, 7
};

u8 object_gr_possiblePadding_000388[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_grVtx_000390[] = {
#include "assets/objects/object_gr/object_grVtx_000390.vtx.inc"
};

Gfx gNiwGirlSkelLimbsLimb_009878DL_0021C0[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_grVtx_000390[125], 4, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_grTLUT_003F78),
    gsDPLoadTextureBlock(object_grTex_005D78, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_grVtx_000390[129], 10, 4),
    gsSP2Triangles(4, 5, 2, 0, 3, 6, 2, 0),
    gsSP2Triangles(2, 7, 0, 0, 3, 1, 8, 0),
    gsSP2Triangles(9, 1, 0, 0, 10, 11, 0, 0),
    gsSP1Triangle(12, 13, 3, 0),
    gsSPVertex(&object_grVtx_000390[139], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(3, 0, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gNiwGirlSkelLimbsLimb_009884DL_0022E0[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_grVtx_000390[143], 6, 0),
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_grTLUT_003F78),
    gsDPLoadTextureBlock(object_grTex_005D78, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR
                         | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_grVtx_000390[149], 10, 6),
    gsSP2Triangles(6, 2, 5, 0, 0, 7, 8, 0),
    gsSP2Triangles(3, 9, 5, 0, 3, 10, 11, 0),
    gsSP2Triangles(5, 12, 13, 0, 1, 14, 4, 0),
    gsSP1Triangle(0, 2, 15, 0),
    gsSPVertex(&object_grVtx_000390[159], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP1Triangle(3, 0, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gNiwGirlSkelLimbsLimb_00986CDL_002400[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_grVtx_000390, 3, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_grTLUT_003F78),
    gsDPLoadTextureBlock(object_grTex_005EB8, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_grVtx_000390[3], 8, 3),
    gsSP2Triangles(2, 3, 4, 0, 0, 5, 6, 0),
    gsSP2Triangles(7, 2, 0, 0, 0, 1, 8, 0),
    gsSP1Triangle(9, 10, 0, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_grVtx_000390[11], 25, 3),
    gsSP1Triangle(3, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 252, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(4, 5, 6, 0, 7, 6, 8, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 6, 10, 0),
    gsSP1Triangle(5, 12, 8, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP1Triangle(13, 14, 15, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 17, 0),
    gsSP2Triangles(21, 22, 23, 0, 17, 22, 24, 0),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP1Triangle(25, 26, 27, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_grVtx_000390[36], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(1, 5, 2, 0, 6, 7, 1, 0),
    gsSP2Triangles(8, 7, 9, 0, 4, 1, 0, 0),
    gsSP2Triangles(7, 8, 5, 0, 5, 10, 2, 0),
    gsSP1Triangle(1, 4, 6, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gNiwGirlMouthTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 252, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(11, 12, 13, 0, 14, 12, 15, 0),
    gsSP2Triangles(16, 12, 14, 0, 12, 16, 17, 0),
    gsSP1Triangle(13, 12, 17, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_grTLUT_003F78),
    gsDPLoadTextureBlock(object_grTex_005D78, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR
                         | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(18, 19, 20, 0, 21, 18, 20, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_grTLUT_003F78),
    gsDPLoadTextureBlock(object_grTex_005E78, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x001C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP1Triangle(22, 23, 24, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_grTLUT_003F78),
    gsDPLoadTextureBlock(object_grTex_005EB8, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(25, 26, 27, 0, 28, 26, 29, 0),
    gsSP1Triangle(26, 28, 30, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_grVtx_000390[67], 25, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_grTLUT_003F78),
    gsDPLoadTextureBlock(object_grTex_0077F8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(3, 4, 5, 0, 5, 6, 3, 0),
    gsSP2Triangles(7, 8, 9, 0, 9, 10, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_grTLUT_003F78),
    gsDPLoadTextureBlock(object_grTex_007BF8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(11, 12, 13, 0, 11, 14, 15, 0),
    gsSP1Triangle(15, 14, 16, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP1Triangle(17, 18, 19, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(20, 21, 22, 0, 20, 23, 24, 0),
    gsSP1Triangle(22, 23, 20, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_grVtx_000390[92], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 6, 2, 0, 2, 6, 3, 0),
    gsSP2Triangles(5, 7, 2, 0, 2, 3, 5, 0),
    gsSP1Triangle(2, 7, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_grTLUT_003F78),
    gsDPLoadTextureBlock(object_grTex_007FF8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(8, 9, 10, 0, 10, 11, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 8, 11, 15, 0),
    gsSP2Triangles(14, 16, 12, 0, 17, 13, 12, 0),
    gsSP2Triangles(12, 18, 17, 0, 15, 19, 8, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_grTLUT_003F78),
    gsDPLoadTextureBlock(object_grTex_0083F8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(24, 26, 25, 0, 27, 28, 25, 0),
    gsSP2Triangles(29, 23, 21, 0, 22, 23, 28, 0),
    gsSP2Triangles(28, 23, 25, 0, 21, 23, 22, 0),
    gsSP2Triangles(29, 21, 20, 0, 24, 23, 29, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_grTLUT_003F78),
    gsDPLoadTextureBlock(object_grTex_005D78, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_grVtx_000390[122], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gNiwGirlSkelLimbsLimb_009860DL_002C18[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_grVtx_000390[297], 5, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gNiwGirlDress1Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_grVtx_000390[302], 24, 5),
    gsSP2Triangles(5, 0, 2, 0, 6, 1, 0, 0),
    gsSP2Triangles(7, 0, 8, 0, 9, 2, 10, 0),
    gsSP2Triangles(11, 1, 12, 0, 13, 3, 14, 0),
    gsSP2Triangles(15, 2, 3, 0, 16, 3, 4, 0),
    gsSP2Triangles(17, 4, 18, 0, 19, 4, 1, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_grTLUT_003F78),
    gsDPLoadTextureBlock(object_grTex_005EB8, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 20, 0),
    gsSP2Triangles(23, 25, 24, 0, 20, 26, 23, 0),
    gsSP2Triangles(22, 26, 20, 0, 24, 27, 21, 0),
    gsSP2Triangles(25, 27, 24, 0, 21, 27, 28, 0),
    gsSP1Triangle(21, 28, 22, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gNiwGirlDress5Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x017C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 253, 255, 255),
    gsSPVertex(&object_grVtx_000390[326], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(2, 5, 0, 0, 0, 6, 1, 0),
    gsSP2Triangles(6, 3, 1, 0, 2, 7, 5, 0),
    gsSP1Triangle(8, 7, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gNiwGirlDress3Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x017C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSP2Triangles(9, 10, 11, 0, 12, 11, 10, 0),
    gsSP2Triangles(10, 13, 14, 0, 15, 16, 10, 0),
    gsSP2Triangles(13, 10, 17, 0, 18, 16, 19, 0),
    gsSP2Triangles(10, 16, 18, 0, 20, 16, 15, 0),
    gsSP2Triangles(10, 9, 15, 0, 18, 17, 10, 0),
    gsSPEndDisplayList(),
};

Gfx gNiwGirlSkelLimbsLimb_00989CDL_002EA8[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_grVtx_000390[163], 5, 0),
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_grTLUT_003F78),
    gsDPLoadTextureBlock(object_grTex_005EB8, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_grVtx_000390[168], 11, 5),
    gsSP2Triangles(1, 5, 6, 0, 1, 7, 0, 0),
    gsSP2Triangles(4, 8, 9, 0, 4, 0, 10, 0),
    gsSP2Triangles(11, 3, 4, 0, 3, 12, 2, 0),
    gsSP2Triangles(13, 14, 4, 0, 2, 15, 1, 0),
    gsSPVertex(&object_grVtx_000390[179], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 3, 5, 0, 0),
    gsSP2Triangles(2, 4, 0, 0, 1, 5, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_grTLUT_003F78),
    gsDPLoadTextureBlock(object_grTex_005EF8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(6, 7, 8, 0, 8, 9, 10, 0),
    gsSP2Triangles(10, 9, 7, 0, 10, 6, 8, 0),
    gsSP1Triangle(6, 10, 7, 0),
    gsSPEndDisplayList(),
};

Gfx gNiwGirlSkelLimbsLimb_009890DL_003068[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_grVtx_000390[190], 5, 0),
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gNiwGirlDress3Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_grVtx_000390[195], 25, 5),
    gsSP2Triangles(2, 4, 5, 0, 6, 7, 2, 0),
    gsSP2Triangles(8, 3, 1, 0, 2, 9, 10, 0),
    gsSP2Triangles(0, 11, 12, 0, 1, 13, 14, 0),
    gsSP2Triangles(15, 16, 0, 0, 17, 1, 0, 0),
    gsSP2Triangles(3, 18, 4, 0, 19, 0, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_grTLUT_003F78),
    gsDPLoadTextureBlock(object_grTex_005EB8, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 26, 27, 24, 0),
    gsSP2Triangles(23, 22, 25, 0, 23, 25, 24, 0),
    gsSP2Triangles(28, 21, 20, 0, 20, 29, 28, 0),
    gsSP2Triangles(29, 27, 26, 0, 26, 28, 29, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gNiwGirlDress3Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSPVertex(&object_grVtx_000390[220], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(1, 8, 7, 0, 7, 2, 1, 0),
    gsSP2Triangles(4, 9, 0, 0, 7, 8, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 5, 9, 4, 0),
    gsSPEndDisplayList(),
};

Gfx gNiwGirlSkelLimbsLimb_0098B4DL_003270[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_grVtx_000390[230], 5, 0),
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_grTLUT_003F78),
    gsDPLoadTextureBlock(object_grTex_005EB8, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_grVtx_000390[235], 11, 5),
    gsSP2Triangles(1, 5, 6, 0, 1, 7, 3, 0),
    gsSP2Triangles(3, 8, 4, 0, 9, 10, 0, 0),
    gsSP2Triangles(11, 1, 0, 0, 0, 2, 12, 0),
    gsSP2Triangles(0, 13, 14, 0, 4, 15, 2, 0),
    gsSPVertex(&object_grVtx_000390[246], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(0, 5, 4, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 1, 0, 0, 4, 5, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_grTLUT_003F78),
    gsDPLoadTextureBlock(object_grTex_005EF8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(6, 7, 8, 0, 8, 9, 6, 0),
    gsSP2Triangles(9, 8, 7, 0, 6, 10, 7, 0),
    gsSP1Triangle(7, 10, 9, 0),
    gsSPEndDisplayList(),
};

Gfx gNiwGirlSkelLimbsLimb_0098A8DL_003430[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_grVtx_000390[257], 5, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gNiwGirlDress3Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_grVtx_000390[262], 25, 5),
    gsSP2Triangles(5, 6, 3, 0, 1, 7, 8, 0),
    gsSP2Triangles(9, 2, 1, 0, 2, 10, 4, 0),
    gsSP2Triangles(3, 4, 11, 0, 12, 13, 0, 0),
    gsSP2Triangles(14, 15, 1, 0, 0, 16, 17, 0),
    gsSP2Triangles(0, 3, 18, 0, 1, 0, 19, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_grTLUT_003F78),
    gsDPLoadTextureBlock(object_grTex_005EB8, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 22, 27, 0, 25, 21, 20, 0),
    gsSP2Triangles(25, 28, 23, 0, 20, 28, 25, 0),
    gsSP2Triangles(23, 29, 27, 0, 27, 29, 26, 0),
    gsSP2Triangles(22, 26, 20, 0, 27, 24, 23, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gNiwGirlDress3Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSPVertex(&object_grVtx_000390[287], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(3, 8, 1, 0, 2, 9, 6, 0),
    gsSP2Triangles(6, 9, 5, 0, 2, 7, 0, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 8, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gNiwGirlSkelLimbsLimb_009854DL_003638[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gNiwGirlDress1Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 246, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_grVtx_000390[347], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 5, 0, 0, 5, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gNiwGirlDress4Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSP2Triangles(6, 7, 8, 0, 9, 8, 10, 0),
    gsSP2Triangles(8, 9, 6, 0, 10, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 16, 0),
    gsSP2Triangles(16, 17, 15, 0, 14, 16, 12, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gNiwGirlDress2Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSP2Triangles(18, 19, 20, 0, 20, 21, 18, 0),
    gsSP2Triangles(20, 22, 23, 0, 23, 21, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 26, 27, 24, 0),
    gsSP2Triangles(28, 29, 24, 0, 24, 27, 28, 0),
    gsSPEndDisplayList(),
};

Gfx gNiwGirlSkelLimbsLimb_0098D8DL_0037C8[] = {
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_grVtx_000390[377], 3, 0),
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_grTLUT_003F78),
    gsDPLoadTextureBlock(object_grTex_0097F8, G_IM_FMT_CI, G_IM_SIZ_8b, 4, 4, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 2, 2, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x000C, 0x005C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_grVtx_000390[380], 26, 3),
    gsSP2Triangles(3, 1, 0, 0, 4, 5, 2, 0),
    gsSP2Triangles(0, 6, 7, 0, 0, 2, 8, 0),
    gsSP2Triangles(2, 9, 10, 0, 1, 11, 12, 0),
    gsSP2Triangles(13, 2, 1, 0, 14, 15, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_grTLUT_003F78),
    gsDPLoadTextureBlock(object_grTex_009808, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 20, 0),
    gsSP2Triangles(21, 22, 19, 0, 23, 24, 25, 0),
    gsSP2Triangles(21, 16, 23, 0, 26, 25, 27, 0),
    gsSP2Triangles(24, 23, 16, 0, 25, 24, 18, 0),
    gsSP2Triangles(25, 26, 23, 0, 18, 20, 25, 0),
    gsSP2Triangles(20, 27, 25, 0, 21, 19, 17, 0),
    gsSP2Triangles(17, 16, 21, 0, 26, 28, 22, 0),
    gsSP2Triangles(23, 26, 21, 0, 16, 18, 24, 0),
    gsSP2Triangles(27, 28, 26, 0, 22, 21, 26, 0),
    gsSP1Triangle(20, 18, 17, 0),
    gsSPEndDisplayList(),
};

Gfx gNiwGirlSkelLimbsLimb_0098CCDL_0039A0[] = {
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_grVtx_000390[406], 3, 0),
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_grTLUT_003F78),
    gsDPLoadTextureBlock(object_grTex_0097F8, G_IM_FMT_CI, G_IM_SIZ_8b, 4, 4, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 2, 2, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x000C, 0x005C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_grVtx_000390[409], 9, 3),
    gsSP2Triangles(3, 4, 2, 0, 2, 5, 6, 0),
    gsSP2Triangles(7, 1, 0, 0, 8, 0, 2, 0),
    gsSP2Triangles(0, 9, 10, 0, 2, 1, 11, 0),
    gsSPVertex(&object_grVtx_000390[418], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 3, 0, 0, 3, 4, 2, 0),
    gsSP2Triangles(2, 5, 0, 0, 0, 5, 4, 0),
    gsSPEndDisplayList(),
};

Gfx gNiwGirlSkelLimbsLimb_0098C0DL_003AC0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_grTLUT_003F78),
    gsDPLoadTextureBlock(object_grTex_0097F8, G_IM_FMT_CI, G_IM_SIZ_8b, 4, 4, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 2, 2, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x000C, 0x005C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_grVtx_000390[424], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 3, 2, 0),
    gsSP2Triangles(1, 0, 4, 0, 2, 5, 4, 0),
    gsSPEndDisplayList(),
};

Gfx gNiwGirlSkelLimbsLimb_0098FCDL_003BA0[] = {
    gsSPMatrix(0x0D000340, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_grVtx_000390[430], 3, 0),
    gsSPMatrix(0x0D000380, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_grTLUT_003F78),
    gsDPLoadTextureBlock(object_grTex_0097F8, G_IM_FMT_CI, G_IM_SIZ_8b, 4, 4, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 2, 2, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x000C, 0x005C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_grVtx_000390[433], 26, 3),
    gsSP2Triangles(0, 1, 3, 0, 2, 4, 5, 0),
    gsSP2Triangles(6, 7, 0, 0, 8, 2, 0, 0),
    gsSP2Triangles(9, 10, 2, 0, 11, 12, 1, 0),
    gsSP2Triangles(1, 2, 13, 0, 0, 14, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_grTLUT_003F78),
    gsDPLoadTextureBlock(object_grTex_009808, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 16, 24, 0),
    gsSP2Triangles(24, 25, 22, 0, 26, 23, 27, 0),
    gsSP2Triangles(25, 24, 16, 0, 17, 16, 23, 0),
    gsSP2Triangles(24, 27, 23, 0, 23, 19, 17, 0),
    gsSP2Triangles(23, 26, 19, 0, 18, 20, 22, 0),
    gsSP2Triangles(22, 25, 18, 0, 21, 28, 27, 0),
    gsSP2Triangles(22, 27, 24, 0, 16, 18, 25, 0),
    gsSP2Triangles(27, 28, 26, 0, 27, 22, 21, 0),
    gsSP1Triangle(18, 17, 19, 0),
    gsSPEndDisplayList(),
};

Gfx gNiwGirlSkelLimbsLimb_0098F0DL_003D78[] = {
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_grVtx_000390[459], 3, 0),
    gsSPMatrix(0x0D000340, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_grTLUT_003F78),
    gsDPLoadTextureBlock(object_grTex_0097F8, G_IM_FMT_CI, G_IM_SIZ_8b, 4, 4, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 2, 2, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x000C, 0x005C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_grVtx_000390[462], 9, 3),
    gsSP2Triangles(2, 3, 4, 0, 5, 6, 2, 0),
    gsSP2Triangles(0, 1, 7, 0, 2, 0, 8, 0),
    gsSP2Triangles(9, 10, 0, 0, 11, 1, 2, 0),
    gsSPVertex(&object_grVtx_000390[471], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(2, 3, 4, 0, 0, 4, 3, 0),
    gsSP2Triangles(2, 5, 0, 0, 4, 5, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gNiwGirlSkelLimbsLimb_0098E4DL_003E98[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_grTLUT_003F78),
    gsDPLoadTextureBlock(object_grTex_0097F8, G_IM_FMT_CI, G_IM_SIZ_8b, 4, 4, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 2, 2, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x000C, 0x005C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_grVtx_000390[477], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(2, 5, 0, 0, 4, 3, 0, 0),
    gsSP2Triangles(0, 5, 4, 0, 4, 2, 1, 0),
    gsSPEndDisplayList(),
};

u64 object_grTLUT_003F78[] = {
#include "assets/objects/object_gr/object_grTLUT_003F78.rgba16.inc.c"
};

u64 gNiwGirlEyeOpenTex[] = {
#include "assets/objects/object_gr/eye_open.rgba16.inc.c"
};

u64 gNiwGirlEyeHalfTex[] = {
#include "assets/objects/object_gr/eye_half.rgba16.inc.c"
};

u64 gNiwGirlEyeClosedTex[] = {
#include "assets/objects/object_gr/eye_closed.rgba16.inc.c"
};

u64 gNiwGirlMouthTex[] = {
#include "assets/objects/object_gr/mouth.rgba16.inc.c"
};

u64 object_grTex_005D78[] = {
#include "assets/objects/object_gr/object_grTex_005D78.ci8.inc.c"
};

u64 object_grTex_005E78[] = {
#include "assets/objects/object_gr/object_grTex_005E78.ci8.inc.c"
};

u64 object_grTex_005EB8[] = {
#include "assets/objects/object_gr/object_grTex_005EB8.ci8.inc.c"
};

u64 object_grTex_005EF8[] = {
#include "assets/objects/object_gr/object_grTex_005EF8.ci8.inc.c"
};

u64 gNiwGirlDress1Tex[] = {
#include "assets/objects/object_gr/dress_1.rgba16.inc.c"
};

u64 gNiwGirlDress4Tex[] = {
#include "assets/objects/object_gr/dress_4.rgba16.inc.c"
};

u64 gNiwGirlDress2Tex[] = {
#include "assets/objects/object_gr/dress_2.rgba16.inc.c"
};

u64 object_grTex_0077F8[] = {
#include "assets/objects/object_gr/object_grTex_0077F8.ci8.inc.c"
};

u64 object_grTex_007BF8[] = {
#include "assets/objects/object_gr/object_grTex_007BF8.ci8.inc.c"
};

u64 object_grTex_007FF8[] = {
#include "assets/objects/object_gr/object_grTex_007FF8.ci8.inc.c"
};

u64 object_grTex_0083F8[] = {
#include "assets/objects/object_gr/object_grTex_0083F8.ci8.inc.c"
};

u64 gNiwGirlDress5Tex[] = {
#include "assets/objects/object_gr/dress_5.rgba16.inc.c"
};

u64 gNiwGirlDress3Tex[] = {
#include "assets/objects/object_gr/dress_3.rgba16.inc.c"
};

u64 object_grTex_0097F8[] = {
#include "assets/objects/object_gr/object_grTex_0097F8.ci8.inc.c"
};

u64 object_grTex_009808[] = {
#include "assets/objects/object_gr/object_grTex_009808.ci8.inc.c"
};

StandardLimb gNiwGirlSkelLimbsLimb_009848 = { 
    { -5, 1268, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gNiwGirlSkelLimbsLimb_009854 = { 
    { 0, 0, 0 }, 0x02, 0x0A,
    gNiwGirlSkelLimbsLimb_009854DL_003638
};

StandardLimb gNiwGirlSkelLimbsLimb_009860 = { 
    { 359, 0, 0 }, 0x03, LIMB_DONE,
    gNiwGirlSkelLimbsLimb_009860DL_002C18
};

StandardLimb gNiwGirlSkelLimbsLimb_00986C = { 
    { 502, 0, 0 }, 0x04, 0x06,
    gNiwGirlSkelLimbsLimb_00986CDL_002400
};

StandardLimb gNiwGirlSkelLimbsLimb_009878 = { 
    { 129, -395, 121 }, LIMB_DONE, 0x05,
    gNiwGirlSkelLimbsLimb_009878DL_0021C0
};

StandardLimb gNiwGirlSkelLimbsLimb_009884 = { 
    { 129, 400, 118 }, LIMB_DONE, LIMB_DONE,
    gNiwGirlSkelLimbsLimb_009884DL_0022E0
};

StandardLimb gNiwGirlSkelLimbsLimb_009890 = { 
    { 228, -400, 42 }, 0x07, 0x08,
    gNiwGirlSkelLimbsLimb_009890DL_003068
};

StandardLimb gNiwGirlSkelLimbsLimb_00989C = { 
    { 442, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gNiwGirlSkelLimbsLimb_00989CDL_002EA8
};

StandardLimb gNiwGirlSkelLimbsLimb_0098A8 = { 
    { 228, 405, 41 }, 0x09, LIMB_DONE,
    gNiwGirlSkelLimbsLimb_0098A8DL_003430
};

StandardLimb gNiwGirlSkelLimbsLimb_0098B4 = { 
    { 441, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gNiwGirlSkelLimbsLimb_0098B4DL_003270
};

StandardLimb gNiwGirlSkelLimbsLimb_0098C0 = { 
    { 187, 4, 0 }, 0x0B, 0x0D,
    gNiwGirlSkelLimbsLimb_0098C0DL_003AC0
};

StandardLimb gNiwGirlSkelLimbsLimb_0098CC = { 
    { 592, 0, 0 }, 0x0C, LIMB_DONE,
    gNiwGirlSkelLimbsLimb_0098CCDL_0039A0
};

StandardLimb gNiwGirlSkelLimbsLimb_0098D8 = { 
    { 384, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gNiwGirlSkelLimbsLimb_0098D8DL_0037C8
};

StandardLimb gNiwGirlSkelLimbsLimb_0098E4 = { 
    { -175, 4, 0 }, 0x0E, LIMB_DONE,
    gNiwGirlSkelLimbsLimb_0098E4DL_003E98
};

StandardLimb gNiwGirlSkelLimbsLimb_0098F0 = { 
    { 592, 0, 0 }, 0x0F, LIMB_DONE,
    gNiwGirlSkelLimbsLimb_0098F0DL_003D78
};

StandardLimb gNiwGirlSkelLimbsLimb_0098FC = { 
    { 384, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gNiwGirlSkelLimbsLimb_0098FCDL_003BA0
};

void* gNiwGirlSkelLimbs[] = {
    &gNiwGirlSkelLimbsLimb_009848,
    &gNiwGirlSkelLimbsLimb_009854,
    &gNiwGirlSkelLimbsLimb_009860,
    &gNiwGirlSkelLimbsLimb_00986C,
    &gNiwGirlSkelLimbsLimb_009878,
    &gNiwGirlSkelLimbsLimb_009884,
    &gNiwGirlSkelLimbsLimb_009890,
    &gNiwGirlSkelLimbsLimb_00989C,
    &gNiwGirlSkelLimbsLimb_0098A8,
    &gNiwGirlSkelLimbsLimb_0098B4,
    &gNiwGirlSkelLimbsLimb_0098C0,
    &gNiwGirlSkelLimbsLimb_0098CC,
    &gNiwGirlSkelLimbsLimb_0098D8,
    &gNiwGirlSkelLimbsLimb_0098E4,
    &gNiwGirlSkelLimbsLimb_0098F0,
    &gNiwGirlSkelLimbsLimb_0098FC,
};

FlexSkeletonHeader gNiwGirlSkel = { 
    { gNiwGirlSkelLimbs, ARRAY_COUNT(gNiwGirlSkelLimbs) }, 15
};

u8 object_gr_possiblePadding_009954[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sNiwGirlJumpAnimFrameData[] = {
    0xFFFB, 0x04AF, 0x0000, 0x051A, 0x3F79, 0x0088, 0x0003, 0xC000, 0x04AF, 0x0492, 0x045D, 0x042F, 0x0427, 0x0479, 
    0x04FC, 0x0540, 0x0518, 0x04BE, 0x045F, 0x0427, 0x0441, 0x0487, 0x0000, 0x0008, 0x0016, 0x002D, 0x004D, 0x0089, 
    0x00D5, 0x00FA, 0x00E5, 0x00B5, 0x007C, 0x004D, 0x0029, 0x000C, 0xFA55, 0xF6D1, 0xF234, 0xED82, 0xE9C4, 0xE7FF, 
    0xE99C, 0xEDF1, 0xF2E4, 0xF65E, 0xF815, 0xF93A, 0xF9EA, 0xFA3E, 0x061F, 0x0745, 0x0815, 0x0898, 0x08D8, 0x08E1, 
    0x08BC, 0x0875, 0x0815, 0x07A7, 0x0736, 0x06CB, 0x0673, 0x0636, 0xF954, 0xF954, 0xF956, 0xF95A, 0xF95E, 0xF95B, 
    0xF956, 0xF98B, 0xF9B5, 0xF969, 0xF967, 0xF9B6, 0xF991, 0xF959, 0xFF09, 0xFF3B, 0xFF86, 0xFFCB, 0xFFEF, 0xFFD4, 
    0xFEE7, 0xFD86, 0xFCFB, 0xFE2A, 0x0036, 0x0172, 0x00FC, 0xFFBF, 0xBF56, 0xC088, 0xC24A, 0xC3EF, 0xC4C8, 0xC429, 
    0xBE8A, 0xB613, 0xB29E, 0xBA0E, 0xC67B, 0xCE33, 0xCB49, 0xC3A8, 0x06AC, 0x06AB, 0x06A8, 0x06A2, 0x069E, 0x06A2, 
    0x06AC, 0x0689, 0x066E, 0x06A8, 0x0675, 0x0600, 0x063F, 0x069C, 0xFEF0, 0xFF1B, 0xFF5A, 0xFF95, 0xFFB3, 0xFF99, 
    0xFEBD, 0xFD7A, 0xFD0A, 0xFE60, 0x008A, 0x01C5, 0x0134, 0xFFC4, 0x3FD0, 0x3ECC, 0x3D4A, 0x3BE3, 0x3B31, 0x3BCB, 
    0x4100, 0x48B8, 0x4B6F, 0x4337, 0x3601, 0x2E06, 0x31C8, 0x3AC6, 0xFFC9, 0xFFB9, 0xFFA0, 0xFF91, 0xFF6D, 0xFF6B, 
    0xFF72, 0xFF71, 0xFF79, 0xFFAE, 0xFFBB, 0xFFD4, 0xFFC7, 0xFFC6, 0xFF78, 0xFB72, 0xF743, 0xF4D5, 0xF5E8, 0xF9CB, 
    0xFDBD, 0x005B, 0x0543, 0x0D81, 0x0FCE, 0x0C3F, 0x0652, 0x0168, 0x9477, 0x9787, 0x9D35, 0xA60D, 0xB111, 0xB866, 
    0xBAD2, 0xBC14, 0xB373, 0xA185, 0x96F3, 0x9558, 0x94B2, 0x946F, 0x005E, 0xFFA2, 0xFFA2, 0x0000, 0xFFA2, 0xFFA2, 
    0x0000, 0xFFA2, 0x0000, 0xFFA2, 0x0000, 0xFFA2, 0x0000, 0x005E, 0x0056, 0x005F, 0x0070, 0x0086, 0x0096, 0x0092, 
    0x0095, 0x0093, 0x008A, 0x006B, 0x0064, 0x004A, 0x005F, 0x0056, 0xFF89, 0xFE58, 0xFBB5, 0xF99C, 0xF9AD, 0xFBC2, 
    0xFE24, 0x0012, 0x04DB, 0x0D29, 0x0FB8, 0x0C3D, 0x0657, 0x0175, 0x6B34, 0x68AE, 0x6391, 0x5B4E, 0x5107, 0x498C, 
    0x4600, 0x44EC, 0x4CA7, 0x5E53, 0x6928, 0x6ACA, 0x6B8B, 0x6B48, 0x0000, 0x005E, 0x005D, 0x005D, 0x005E, 0x0000, 
    0x005E, 0x0000, 0x005D, 0x005D, 0x0000, 0x005E, 0xFFA3, 0x0000, 0xFCED, 0xF7DF, 0xF384, 0xF19A, 0xF2CA, 0xFC02, 
    0x0822, 0x08EF, 0x0886, 0x0761, 0xF8F1, 0xF2CA, 0xF277, 0xF6D1, 0x082F, 0x1604, 0x235D, 0x2BCB, 0x2CC6, 0x1A25, 
    0x0061, 0x0061, 0x0060, 0x0061, 0x211D, 0x2CC6, 0x28AE, 0x1945, 0xBB21, 0xB40E, 0xAA87, 0xA27F, 0x9FEA, 0xA923, 
    0xB9B3, 0xC551, 0xC324, 0xB921, 0xA56A, 0xA069, 0xA510, 0xB007, 0xFCED, 0xF7DF, 0xF384, 0xF19A, 0xF2CA, 0xFC02, 
    0x0822, 0x08EF, 0x0886, 0x0761, 0xF8F1, 0xF2CA, 0xF277, 0xF6D1, 0x082F, 0x1604, 0x235D, 0x2BCB, 0x2CC6, 0x1A25, 
    0x0061, 0x0061, 0x0060, 0x0061, 0x211D, 0x2CC6, 0x28AE, 0x1945, 0xBB21, 0xB433, 0xAADE, 0xA2FF, 0xA073, 0xA96D, 
    0xB994, 0xC4E9, 0xC2D5, 0xB910, 0xA586, 0xA0AA, 0xA520, 0xB041, 
};

JointIndex sNiwGirlJumpAnimJointIndices[] = {
    { 0x0000, 0x0008, 0x0016 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0002, 0x0003, 0x0004 },
    { 0x0002, 0x0024, 0x0005 },
    { 0x0002, 0x0032, 0x0006 },
    { 0x0040, 0x004E, 0x005C },
    { 0x006A, 0x0078, 0x0086 },
    { 0x0094, 0x00A2, 0x00B0 },
    { 0x0002, 0x0002, 0x00BE },
    { 0x00CC, 0x00DA, 0x00E8 },
    { 0x0002, 0x0002, 0x00F6 },
    { 0x0007, 0x0104, 0x0007 },
    { 0x0002, 0x0002, 0x0112 },
    { 0x0002, 0x0002, 0x0120 },
    { 0x0007, 0x012E, 0x0007 },
    { 0x0002, 0x0002, 0x013C },
    { 0x0002, 0x0002, 0x014A },
};

AnimationHeader gNiwGirlJumpAnim = { 
    { 14 }, sNiwGirlJumpAnimFrameData,
    sNiwGirlJumpAnimJointIndices, 8
};

