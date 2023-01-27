#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_ds2.h"

s16 object_ds2_Anim_0002E4FrameData[] = {
    0x0000, 0x0E74, 0x0032, 0xE4F6, 0x3812, 0xE055, 0xE661, 0x1617, 0x0F6F, 0xC976, 0xAF5A, 0x37C5, 0x3436, 0x3436, 
    0x3437, 0x3438, 0x3438, 0x3438, 0x3437, 0x3436, 0x3435, 0x3435, 0x3435, 0x3435, 0x3436, 0x3437, 0x3437, 0x3438, 
    0x3438, 0x3438, 0x3438, 0x3437, 0x3437, 0x3436, 0xFF2F, 0xFF44, 0xFF7B, 0xFFCB, 0x002A, 0x008D, 0x00EC, 0x013C, 
    0x0173, 0x0187, 0x017D, 0x0161, 0x0136, 0x0100, 0x00C1, 0x007E, 0x0039, 0xFFF5, 0xFFB7, 0xFF81, 0xFF56, 0xFF39, 
    0x3D44, 0x3D3E, 0x3D2E, 0x3D16, 0x3CFA, 0x3CDD, 0x3CC0, 0x3CA8, 0x3C98, 0x3C92, 0x3C95, 0x3C9D, 0x3CAA, 0x3CBA, 
    0x3CCD, 0x3CE1, 0x3CF6, 0x3D0A, 0x3D1C, 0x3D2C, 0x3D39, 0x3D41, 0x04CA, 0x04DA, 0x04F2, 0x050B, 0x051F, 0x0525, 
    0x051E, 0x050F, 0x04FC, 0x04E7, 0x04D1, 0x04BD, 0x04AD, 0x04A4, 0x04A0, 0x049F, 0x04A1, 0x04A4, 0x04AA, 0x04B0, 
    0x04B8, 0x04C1, 0xFC63, 0xFC7A, 0xFC9E, 0xFCC4, 0xFCE1, 0xFCEB, 0xFCE1, 0xFCCD, 0xFCB2, 0xFC93, 0xFC74, 0xFC57, 
    0xFC40, 0xFC33, 0xFC2D, 0xFC2B, 0xFC2C, 0xFC30, 0xFC37, 0xFC40, 0xFC4A, 0xFC56, 0x628E, 0x61D0, 0x60AA, 0x5F74, 
    0x5E86, 0x5E39, 0x5E8C, 0x5F33, 0x6013, 0x6112, 0x6216, 0x6303, 0x63BE, 0x642E, 0x645E, 0x646E, 0x6462, 0x643D, 
    0x6403, 0x63B7, 0x635D, 0x62F9, 0xFDA6, 0xFD6F, 0xFD30, 0xFCF8, 0xFCD8, 0xFCE0, 0xFD14, 0xFD65, 0xFDC8, 0xFE33, 
    0xFE9B, 0xFEF6, 0xFF39, 0xFF59, 0xFF58, 0xFF40, 0xFF16, 0xFEDF, 0xFE9F, 0xFE5B, 0xFE18, 0xFDDA, 0x0AED, 0x0AE2, 
    0x0AD2, 0x0AC2, 0x0AB7, 0x0AB5, 0x0ABD, 0x0ACB, 0x0ADC, 0x0AEF, 0x0B02, 0x0B13, 0x0B20, 0x0B27, 0x0B29, 0x0B27, 
    0x0B22, 0x0B1B, 0x0B13, 0x0B09, 0x0B00, 0x0AF6, 0x607A, 0x5FAA, 0x5EB8, 0x5DE3, 0x5D67, 0x5D83, 0x5E44, 0x5F73, 
    0x60E7, 0x627A, 0x6403, 0x6559, 0x6656, 0x66D1, 0x66CE, 0x6675, 0x65D9, 0x650C, 0x641D, 0x6320, 0x6224, 0x613D, 
    0x0B2F, 0x0AF0, 0x0A47, 0x0953, 0x0832, 0x0702, 0x05E1, 0x04ED, 0x0444, 0x0405, 0x0424, 0x047A, 0x04FD, 0x05A3, 
    0x0662, 0x0730, 0x0804, 0x08D2, 0x0991, 0x0A37, 0x0ABA, 0x0B10, 0xF65B, 0xF649, 0xF61B, 0xF5D8, 0xF588, 0xF534, 
    0xF4E4, 0xF4A0, 0xF472, 0xF460, 0xF469, 0xF481, 0xF4A5, 0xF4D3, 0xF507, 0xF540, 0xF57B, 0xF5B4, 0xF5E8, 0xF616, 
    0xF63B, 0xF652, 0x08F0, 0x08D4, 0x0887, 0x0818, 0x0794, 0x0709, 0x0685, 0x0616, 0x05C9, 0x05AD, 0x05BB, 0x05E2, 
    0x061E, 0x0669, 0x06C0, 0x071E, 0x077F, 0x07DD, 0x0834, 0x087F, 0x08BB, 0x08E2, 0x0908, 0x090C, 0x091A, 0x092F, 
    0x0946, 0x095B, 0x096A, 0x0976, 0x0981, 0x098B, 0x0993, 0x0998, 0x0999, 0x0996, 0x098C, 0x097D, 0x096B, 0x0956, 
    0x0940, 0x092C, 0x091B, 0x090E, 0x03FB, 0x03F2, 0x03CA, 0x038F, 0x034E, 0x0310, 0x02E4, 0x02C1, 0x029E, 0x027D, 
    0x0261, 0x024F, 0x0248, 0x0251, 0x026C, 0x0298, 0x02D0, 0x030E, 0x034E, 0x038B, 0x03BF, 0x03E6, 0x01C3, 0x01EC, 
    0x0299, 0x0397, 0x04B3, 0x05BB, 0x067D, 0x0710, 0x07A7, 0x0834, 0x08A9, 0x08F8, 0x0913, 0x08ED, 0x0876, 0x07B8, 
    0x06C8, 0x05BC, 0x04A8, 0x03A3, 0x02C2, 0x021B, 
};

JointIndex object_ds2_Anim_0002E4JointIndices[] = {
    { 0x0000, 0x0001, 0x0002 },
    { 0x000C, 0x0022, 0x0038 },
    { 0x004E, 0x0064, 0x007A },
    { 0x0003, 0x0004, 0x0005 },
    { 0x0006, 0x0007, 0x0008 },
    { 0x0090, 0x00A6, 0x00BC },
    { 0x0009, 0x000A, 0x000B },
    { 0x00D2, 0x00E8, 0x00FE },
    { 0x0114, 0x012A, 0x0140 },
};

AnimationHeader object_ds2_Anim_0002E4 = { 
    { 22 }, object_ds2_Anim_0002E4FrameData,
    object_ds2_Anim_0002E4JointIndices, 12
};

u8 object_ds2_possiblePadding_0002F4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_ds2Vtx_000300[] = {
#include "assets/objects/object_ds2/object_ds2Vtx_000300.vtx.inc"
};

Gfx object_ds2_DL_001990[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ds2_TLUT_002A98),
    gsDPLoadTextureBlock(object_ds2_Tex_002D98, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ds2Vtx_000300[312], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(2, 3, 4, 0, 5, 6, 4, 0),
    gsSP2Triangles(4, 7, 2, 0, 4, 3, 5, 0),
    gsSP2Triangles(5, 8, 9, 0, 2, 7, 9, 0),
    gsSP2Triangles(9, 6, 5, 0, 9, 8, 2, 0),
    gsSP2Triangles(8, 0, 2, 0, 10, 11, 12, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ds2_TLUT_002A98),
    gsDPLoadTextureBlock(object_ds2_Tex_003ED8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_ds2Vtx_000300[325], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 3, 0, 8, 9, 10, 0),
    gsSP2Triangles(5, 6, 3, 0, 11, 10, 5, 0),
    gsSP2Triangles(5, 4, 11, 0, 8, 12, 9, 0),
    gsSP2Triangles(10, 11, 8, 0, 8, 13, 12, 0),
    gsSP2Triangles(9, 12, 14, 0, 9, 14, 7, 0),
    gsSP2Triangles(9, 7, 6, 0, 15, 0, 16, 0),
    gsSP2Triangles(0, 2, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 20, 19, 0, 20, 21, 19, 0),
    gsSP2Triangles(21, 22, 23, 0, 23, 24, 25, 0),
    gsSP2Triangles(19, 21, 23, 0, 24, 26, 27, 0),
    gsSP2Triangles(27, 25, 24, 0, 3, 17, 27, 0),
    gsSP2Triangles(25, 19, 23, 0, 3, 18, 17, 0),
    gsSP1Triangle(27, 26, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ds2_TLUT_002A98),
    gsDPLoadTextureBlock(object_ds2_Tex_003FD8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsSPVertex(&object_ds2Vtx_000300[353], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ds2_TLUT_002A98),
    gsDPLoadTextureBlock(object_ds2_Tex_003DD8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx object_ds2_DL_001C98[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_ds2Vtx_000300, 4, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ds2_TLUT_002A98),
    gsDPLoadTextureBlock(object_ds2_Tex_002D98, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ds2Vtx_000300[4], 8, 4),
    gsSP2Triangles(0, 4, 5, 0, 6, 1, 0, 0),
    gsSP2Triangles(2, 1, 7, 0, 8, 9, 3, 0),
    gsSP1Triangle(10, 1, 11, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ds2_TLUT_002A98),
    gsDPLoadTextureBlock(object_ds2_Tex_002C98, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ds2Vtx_000300[12], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(0, 4, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 7, 6, 0, 5, 9, 6, 0),
    gsSP2Triangles(7, 8, 10, 0, 11, 12, 5, 0),
    gsSP2Triangles(11, 0, 3, 0, 1, 10, 2, 0),
    gsSP2Triangles(0, 11, 5, 0, 1, 7, 10, 0),
    gsSP2Triangles(7, 1, 4, 0, 5, 12, 9, 0),
    gsSP2Triangles(5, 4, 0, 0, 7, 4, 5, 0),
    gsSP2Triangles(13, 10, 14, 0, 15, 10, 16, 0),
    gsSP2Triangles(17, 18, 8, 0, 19, 18, 17, 0),
    gsSP2Triangles(20, 21, 17, 0, 17, 22, 19, 0),
    gsSP2Triangles(16, 10, 23, 0, 24, 19, 22, 0),
    gsSP2Triangles(17, 21, 22, 0, 25, 26, 27, 0),
    gsSP2Triangles(6, 20, 17, 0, 28, 27, 26, 0),
    gsSP2Triangles(8, 6, 17, 0, 23, 18, 19, 0),
    gsSP2Triangles(19, 24, 16, 0, 16, 23, 19, 0),
    gsSP2Triangles(10, 8, 23, 0, 18, 23, 8, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ds2_TLUT_002A98),
    gsDPLoadTextureBlock(object_ds2_Tex_002D98, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ds2Vtx_000300[41], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSP2Triangles(8, 7, 6, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 12, 13, 0, 2, 1, 14, 0),
    gsSP1Triangle(15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ds2_TLUT_002A98),
    gsDPLoadTextureBlock(object_ds2_Tex_002DD8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_ds2Vtx_000300[59], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 9, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 12, 11, 0),
    gsSP2Triangles(11, 3, 13, 0, 5, 13, 3, 0),
    gsSP2Triangles(14, 15, 16, 0, 16, 17, 18, 0),
    gsSP2Triangles(2, 19, 0, 0, 19, 2, 20, 0),
    gsSP2Triangles(20, 21, 19, 0, 21, 20, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 25, 26, 23, 0),
    gsSP2Triangles(27, 28, 29, 0, 29, 15, 14, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ds2_TLUT_002A98),
    gsDPLoadTextureBlock(object_ds2_Tex_002ED8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x003C),
    gsSPVertex(&object_ds2Vtx_000300[89], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(3, 4, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(0, 2, 7, 0, 8, 6, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ds2_TLUT_002A98),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 11, 0),
    gsSP2Triangles(12, 11, 14, 0, 14, 11, 10, 0),
    gsSP2Triangles(10, 15, 14, 0, 14, 15, 12, 0),
    gsSP2Triangles(11, 16, 9, 0, 11, 17, 18, 0),
    gsSP2Triangles(19, 11, 18, 0, 16, 11, 19, 0),
    gsSP2Triangles(19, 20, 16, 0, 18, 20, 19, 0),
    gsSPEndDisplayList(),
};

Gfx object_ds2_DL_002188[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ds2Vtx_000300[287], 5, 0),
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ds2_TLUT_002A98),
    gsDPLoadTextureBlock(object_ds2_Tex_003DD8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ds2Vtx_000300[292], 20, 5),
    gsSP2Triangles(3, 0, 5, 0, 1, 6, 7, 0),
    gsSP2Triangles(1, 2, 8, 0, 9, 2, 3, 0),
    gsSP2Triangles(10, 11, 1, 0, 12, 0, 1, 0),
    gsSP2Triangles(13, 4, 14, 0, 15, 4, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 17, 0),
    gsSP2Triangles(19, 18, 22, 0, 22, 23, 19, 0),
    gsSP2Triangles(19, 24, 17, 0, 22, 21, 20, 0),
    gsSP2Triangles(20, 23, 22, 0, 17, 24, 20, 0),
    gsSPEndDisplayList(),
};

Gfx object_ds2_DL_0022B0[] = {
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ds2Vtx_000300[255], 4, 0),
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ds2_TLUT_002A98),
    gsDPLoadTextureBlock(object_ds2_Tex_003DD8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ds2Vtx_000300[259], 12, 4),
    gsSP2Triangles(0, 1, 4, 0, 5, 1, 2, 0),
    gsSP2Triangles(2, 3, 6, 0, 7, 3, 0, 0),
    gsSP2Triangles(0, 8, 9, 0, 10, 11, 2, 0),
    gsSP2Triangles(12, 13, 0, 0, 2, 14, 15, 0),
    gsSPVertex(&object_ds2Vtx_000300[271], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(5, 6, 3, 0, 1, 6, 2, 0),
    gsSP2Triangles(5, 2, 6, 0, 4, 3, 6, 0),
    gsSP2Triangles(1, 0, 7, 0, 7, 0, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ds2_TLUT_002A98),
    gsDPLoadTextureBlock(object_ds2_Tex_002D98, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 10, 0),
    gsSP2Triangles(9, 8, 13, 0, 13, 11, 14, 0),
    gsSP2Triangles(14, 15, 13, 0, 13, 15, 9, 0),
    gsSP2Triangles(10, 14, 11, 0, 10, 12, 8, 0),
    gsSPEndDisplayList(),
};

Gfx object_ds2_DL_002480[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ds2Vtx_000300[211], 4, 0),
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ds2_TLUT_002A98),
    gsDPLoadTextureBlock(object_ds2_Tex_003CD8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ds2Vtx_000300[215], 12, 4),
    gsSP2Triangles(0, 1, 4, 0, 5, 0, 6, 0),
    gsSP2Triangles(7, 8, 1, 0, 2, 9, 1, 0),
    gsSP2Triangles(10, 11, 3, 0, 3, 0, 12, 0),
    gsSP2Triangles(3, 13, 2, 0, 14, 0, 15, 0),
    gsSPVertex(&object_ds2Vtx_000300[227], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(10, 6, 11, 0, 6, 10, 7, 0),
    gsSP2Triangles(10, 12, 7, 0, 13, 14, 12, 0),
    gsSP2Triangles(9, 13, 15, 0, 12, 14, 7, 0),
    gsSP2Triangles(14, 13, 16, 0, 11, 16, 13, 0),
    gsSP2Triangles(9, 11, 13, 0, 10, 9, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 10, 21, 12, 0),
    gsSP2Triangles(15, 13, 21, 0, 21, 13, 12, 0),
    gsSP2Triangles(11, 6, 22, 0, 23, 22, 8, 0),
    gsSP2Triangles(22, 6, 8, 0, 11, 23, 16, 0),
    gsSP2Triangles(23, 8, 16, 0, 17, 24, 10, 0),
    gsSP2Triangles(17, 15, 24, 0, 10, 24, 21, 0),
    gsSP2Triangles(24, 15, 21, 0, 1, 11, 22, 0),
    gsSP2Triangles(22, 2, 1, 0, 25, 26, 27, 0),
    gsSP2Triangles(2, 23, 0, 0, 5, 26, 3, 0),
    gsSPEndDisplayList(),
};

Gfx object_ds2_DL_002610[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ds2Vtx_000300[186], 5, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ds2_TLUT_002A98),
    gsDPLoadTextureBlock(object_ds2_Tex_003DD8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ds2Vtx_000300[191], 20, 5),
    gsSP2Triangles(5, 0, 3, 0, 6, 7, 1, 0),
    gsSP2Triangles(8, 2, 1, 0, 3, 2, 9, 0),
    gsSP2Triangles(1, 10, 11, 0, 1, 0, 12, 0),
    gsSP2Triangles(13, 4, 14, 0, 15, 4, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 18, 17, 0, 17, 23, 22, 0),
    gsSP2Triangles(19, 24, 17, 0, 21, 20, 22, 0),
    gsSP2Triangles(22, 23, 21, 0, 21, 24, 19, 0),
    gsSPEndDisplayList(),
};

Gfx object_ds2_DL_002738[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ds2Vtx_000300[154], 4, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ds2_TLUT_002A98),
    gsDPLoadTextureBlock(object_ds2_Tex_003DD8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ds2Vtx_000300[158], 12, 4),
    gsSP2Triangles(4, 0, 1, 0, 2, 0, 5, 0),
    gsSP2Triangles(6, 3, 2, 0, 1, 3, 7, 0),
    gsSP2Triangles(8, 9, 1, 0, 2, 10, 11, 0),
    gsSP2Triangles(1, 12, 13, 0, 14, 15, 2, 0),
    gsSPVertex(&object_ds2Vtx_000300[170], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(4, 5, 6, 0, 0, 5, 1, 0),
    gsSP2Triangles(5, 0, 6, 0, 5, 4, 3, 0),
    gsSP2Triangles(7, 2, 1, 0, 3, 2, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ds2_TLUT_002A98),
    gsDPLoadTextureBlock(object_ds2_Tex_002D98, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 12, 0),
    gsSP2Triangles(13, 10, 9, 0, 14, 12, 13, 0),
    gsSP2Triangles(13, 15, 14, 0, 9, 15, 13, 0),
    gsSP2Triangles(12, 14, 8, 0, 10, 11, 8, 0),
    gsSPEndDisplayList(),
};

Gfx object_ds2_DL_002908[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ds2Vtx_000300[110], 4, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ds2_TLUT_002A98),
    gsDPLoadTextureBlock(object_ds2_Tex_003CD8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ds2Vtx_000300[114], 12, 4),
    gsSP2Triangles(4, 0, 1, 0, 5, 1, 6, 0),
    gsSP2Triangles(0, 7, 8, 0, 0, 9, 2, 0),
    gsSP2Triangles(3, 10, 11, 0, 12, 1, 3, 0),
    gsSP2Triangles(2, 13, 3, 0, 14, 1, 15, 0),
    gsSPVertex(&object_ds2Vtx_000300[126], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 8, 10, 0, 7, 10, 8, 0),
    gsSP2Triangles(7, 12, 10, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 14, 11, 0, 7, 13, 12, 0),
    gsSP2Triangles(16, 14, 13, 0, 14, 16, 9, 0),
    gsSP2Triangles(14, 9, 11, 0, 17, 11, 10, 0),
    gsSP2Triangles(18, 19, 20, 0, 12, 21, 10, 0),
    gsSP2Triangles(21, 14, 15, 0, 12, 14, 21, 0),
    gsSP2Triangles(22, 8, 9, 0, 6, 22, 23, 0),
    gsSP2Triangles(6, 8, 22, 0, 16, 23, 9, 0),
    gsSP2Triangles(16, 6, 23, 0, 10, 24, 17, 0),
    gsSP2Triangles(24, 15, 17, 0, 21, 24, 10, 0),
    gsSP2Triangles(21, 15, 24, 0, 22, 9, 1, 0),
    gsSP2Triangles(1, 0, 22, 0, 25, 26, 27, 0),
    gsSP2Triangles(2, 23, 0, 0, 5, 26, 3, 0),
    gsSPEndDisplayList(),
};

u64 object_ds2_TLUT_002A98[] = {
#include "assets/objects/object_ds2/tlut_00002A98.rgba16.inc.c"
};

u64 object_ds2_Tex_002C98[] = {
#include "assets/objects/object_ds2/tex_00002C98.ci8.inc.c"
};

u64 object_ds2_Tex_002D98[] = {
#include "assets/objects/object_ds2/tex_00002D98.ci8.inc.c"
};

u64 object_ds2_Tex_002DD8[] = {
#include "assets/objects/object_ds2/tex_00002DD8.ci8.inc.c"
};

u64 object_ds2_Tex_002ED8[] = {
#include "assets/objects/object_ds2/tex_00002ED8.ci8.inc.c"
};

u64 gPotionShopkeeperEyeOpenTex[] = {
#include "assets/objects/object_ds2/eye_open.ci8.inc.c"
};

u64 gPotionShopkeeperEyeHalfTex[] = {
#include "assets/objects/object_ds2/eye_half.ci8.inc.c"
};

u64 gPotionShopkeeperEyeClosedTex[] = {
#include "assets/objects/object_ds2/eye_closed.ci8.inc.c"
};

u64 object_ds2_Tex_003CD8[] = {
#include "assets/objects/object_ds2/tex_00003CD8.ci8.inc.c"
};

u64 object_ds2_Tex_003DD8[] = {
#include "assets/objects/object_ds2/tex_00003DD8.ci8.inc.c"
};

u64 object_ds2_Tex_003ED8[] = {
#include "assets/objects/object_ds2/tex_00003ED8.ci8.inc.c"
};

u64 object_ds2_Tex_003FD8[] = {
#include "assets/objects/object_ds2/tex_00003FD8.ci8.inc.c"
};

StandardLimb object_ds2_Limb_0041D8 = { 
    { 0, 3700, 50 }, 0x01, LIMB_DONE,
    object_ds2_DL_001990
};

StandardLimb object_ds2_Limb_0041E4 = { 
    { 1400, -100, 650 }, 0x02, 0x04,
    object_ds2_DL_002610
};

StandardLimb object_ds2_Limb_0041F0 = { 
    { 1050, 0, 0 }, 0x03, LIMB_DONE,
    object_ds2_DL_002738
};

StandardLimb object_ds2_Limb_0041FC = { 
    { 751, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_ds2_DL_002908
};

StandardLimb object_ds2_Limb_004208 = { 
    { 1400, -100, -650 }, 0x05, 0x07,
    object_ds2_DL_002188
};

StandardLimb object_ds2_Limb_004214 = { 
    { 1050, 0, 0 }, 0x06, LIMB_DONE,
    object_ds2_DL_0022B0
};

StandardLimb object_ds2_Limb_004220 = { 
    { 750, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_ds2_DL_002480
};

StandardLimb object_ds2_Limb_00422C = { 
    { 2004, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_ds2_DL_001C98
};

void* object_ds2_Skel_004258Limbs[] = {
    &object_ds2_Limb_0041D8,
    &object_ds2_Limb_0041E4,
    &object_ds2_Limb_0041F0,
    &object_ds2_Limb_0041FC,
    &object_ds2_Limb_004208,
    &object_ds2_Limb_004214,
    &object_ds2_Limb_004220,
    &object_ds2_Limb_00422C,
};

FlexSkeletonHeader object_ds2_Skel_004258 = { 
    { object_ds2_Skel_004258Limbs, ARRAY_COUNT(object_ds2_Skel_004258Limbs) }, 8
};

