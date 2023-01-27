#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_st.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

s16 object_st_Anim_000304FrameData[] = {
    0xBFFF, 0x3FFC, 0x0000, 0x0190, 0xB1EC, 0x2457, 0xC000, 0x2459, 0x0A9E, 0x09E6, 0x0872, 0x0667, 0x03EC, 0x0125, 
    0xFE39, 0xFB4D, 0xF886, 0xF60B, 0xF400, 0xF28C, 0xF1D4, 0xF1DC, 0xF244, 0xF2FD, 0xF3FB, 0xF536, 0xF6A4, 0xF83B, 
    0xF9F2, 0xFBC0, 0xFD9A, 0xFF77, 0x014E, 0x0315, 0x04C3, 0x064D, 0x07AB, 0x08D3, 0x09BB, 0x0A59, 0x154D, 0x14D6, 
    0x13E3, 0x1287, 0x10D9, 0x0EEC, 0x0CD6, 0x0AAB, 0x0880, 0x0669, 0x047D, 0x02CE, 0x0173, 0x007F, 0x0008, 0x0016, 
    0x0084, 0x0144, 0x024C, 0x038F, 0x0503, 0x069D, 0x0850, 0x0A13, 0x0BDA, 0x0D99, 0x0F45, 0x10D3, 0x1238, 0x1369, 
    0x145A, 0x1500, 0xFA0D, 0xF8C2, 0xF769, 0xF607, 0xF4A3, 0xF342, 0xF1E9, 0xF09D, 0xEF64, 0xEE44, 0xED41, 0xEC61, 
    0xEBA9, 0xEB1F, 0xEAC9, 0xEAAB, 0xEB59, 0xED30, 0xEFDD, 0xF310, 0xF679, 0xF9C8, 0xFCAB, 0xFED1, 0xFFEC, 0xFFF2, 
    0xFFAC, 0xFF2F, 0xFE82, 0xFDA9, 0xFCAB, 0xFB8D, 0xF47A, 0xF22A, 0xEFD8, 0xED91, 0xEB65, 0xE960, 0xE792, 0xE609, 
    0xE4D2, 0xE3FC, 0xE395, 0xE3C3, 0xE4C7, 0xE684, 0xE8D3, 0xEB92, 0xEE9A, 0xF1C7, 0xF4F4, 0xF7FC, 0xFABB, 0xFD0B, 
    0xFEC7, 0xFFCB, 0xFFF9, 0xFF92, 0xFEBC, 0xFD85, 0xFBFC, 0xFA2E, 0xF829, 0xF5FD, 0x8B86, 0x8DD6, 0x9028, 0x926F, 
    0x949B, 0x96A0, 0x986E, 0x99F7, 0x9B2E, 0x9C04, 0x9C6B, 0x9C3D, 0x9B39, 0x997C, 0x972D, 0x946E, 0x9166, 0x8E39, 
    0x8B0C, 0x8804, 0x8545, 0x82F5, 0x8139, 0x8035, 0x8007, 0x806E, 0x8144, 0x827B, 0x8404, 0x85D2, 0x87D7, 0x8A03, 
    0x6AB3, 0x6B2A, 0x6C1D, 0x6D79, 0x6F27, 0x7114, 0x732A, 0x7555, 0x7780, 0x7997, 0x7B83, 0x7D32, 0x7E8D, 0x7F81, 
    0x7FF8, 0x7FEA, 0x7F7C, 0x7EBC, 0x7DB4, 0x7C71, 0x7AFD, 0x7963, 0x77B0, 0x75ED, 0x7426, 0x7267, 0x70BB, 0x6F2D, 
    0x6DC8, 0x6C97, 0x6BA6, 0x6B00, 0x0E18, 0x0C6D, 0x0971, 0x05EE, 0x02AF, 0x007D, 0x0002, 0x001A, 0x004F, 0x009C, 
    0x0101, 0x017B, 0x0207, 0x02A3, 0x034C, 0x0402, 0x04C0, 0x0586, 0x0650, 0x071C, 0x07E9, 0x08B3, 0x0978, 0x0A37, 
    0x0AEC, 0x0B96, 0x0C32, 0x0CBE, 0x0D38, 0x0D9C, 0x0DEA, 0x0E1E, 0x71E8, 0x7393, 0x768F, 0x7A12, 0x7D51, 0x7F83, 
    0x7FFE, 0x7FE6, 0x7FB1, 0x7F64, 0x7EFF, 0x7E85, 0x7DF9, 0x7D5D, 0x7CB4, 0x7BFE, 0x7B40, 0x7A7A, 0x79B0, 0x78E4, 
    0x7817, 0x774D, 0x7688, 0x75C9, 0x7514, 0x746A, 0x73CE, 0x7342, 0x72C8, 0x7264, 0x7216, 0x71E2, 0x85F3, 0x873E, 
    0x8897, 0x89F9, 0x8B5D, 0x8CBE, 0x8E17, 0x8F63, 0x909C, 0x91BC, 0x92BF, 0x939F, 0x9457, 0x94E1, 0x9537, 0x9555, 
    0x94A7, 0x92D0, 0x9023, 0x8CF0, 0x8987, 0x8638, 0x8355, 0x812F, 0x8014, 0x800E, 0x8054, 0x80D1, 0x817E, 0x8257, 
    0x8355, 0x8473, 
};

JointIndex object_st_Anim_000304JointIndices[] = {
    { 0x0002, 0x0003, 0x0002 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0002, 0x0002, 0x0004 },
    { 0x0002, 0x0002, 0x0008 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0005, 0x0006, 0x0005 },
    { 0x0002, 0x0002, 0x0028 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0007, 0x0006, 0x0007 },
    { 0x0002, 0x0002, 0x0048 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0005, 0x0006, 0x0005 },
    { 0x0002, 0x0002, 0x0068 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0007, 0x0006, 0x0007 },
    { 0x0002, 0x0002, 0x0088 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0005, 0x0006, 0x0005 },
    { 0x0002, 0x0002, 0x00A8 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0007, 0x0006, 0x0007 },
    { 0x0002, 0x0002, 0x00C8 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0007, 0x0006, 0x0007 },
    { 0x0002, 0x0002, 0x00E8 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0007, 0x0006, 0x0007 },
    { 0x0002, 0x0002, 0x0108 },
    { 0x0002, 0x0002, 0x0002 },
};

AnimationHeader object_st_Anim_000304 = { 
    { 32 }, object_st_Anim_000304FrameData,
    object_st_Anim_000304JointIndices, 8
};

u8 object_st_possiblePadding_000314[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_st_Tex_000320[] = {
#include "assets/objects/object_st/tex_00000320.i4.inc.c"
};

u64 object_st_Tex_000360[] = {
#include "assets/objects/object_st/tex_00000360.rgba16.inc.c"
};

u64 object_st_Tex_000460[] = {
#include "assets/objects/object_st/tex_00000460.rgba16.inc.c"
};

u64 object_st_Tex_0004E0[] = {
#include "assets/objects/object_st/tex_000004E0.i4.inc.c"
};

u64 object_st_Tex_000560[] = {
#include "assets/objects/object_st/tex_00000560.rgba16.inc.c"
};

u64 object_st_Tex_000760[] = {
#include "assets/objects/object_st/tex_00000760.rgba16.inc.c"
};

u64 object_st_Tex_0007E0[] = {
#include "assets/objects/object_st/tex_000007E0.rgba16.inc.c"
};

Vtx object_stVtx_000860[] = {
#include "assets/objects/object_st/object_stVtx_000860.vtx.inc"
};

Gfx object_st_DL_001A40[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_st_Tex_0004E0, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_stVtx_000860, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(3, 4, 2, 0, 2, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 6, 0),
    gsSP2Triangles(10, 11, 6, 0, 6, 11, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_st_Tex_000360, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&object_stVtx_000860[12], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 7, 0, 2, 1, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_st_Tex_000460, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_stVtx_000860[21], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 3, 0, 6, 3, 8, 0),
    gsSP2Triangles(4, 7, 6, 0, 6, 8, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 8, 13, 0),
    gsSP2Triangles(13, 15, 14, 0, 8, 16, 13, 0),
    gsSP2Triangles(16, 15, 13, 0, 12, 14, 16, 0),
    gsSP2Triangles(0, 17, 1, 0, 14, 15, 16, 0),
    gsSP2Triangles(3, 7, 4, 0, 2, 1, 18, 0),
    gsSP2Triangles(1, 19, 18, 0, 20, 21, 22, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_st_Tex_0004E0, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_stVtx_000860[44], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSPEndDisplayList(),
};

Gfx object_st_DL_001C30[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_st_Tex_000320, G_IM_FMT_I, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 0, 255),
    gsSPVertex(&object_stVtx_000860[48], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_stVtx_000860[54], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_st_Tex_0007E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_stVtx_000860[63], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_st_Tex_000360, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_stVtx_000860[69], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 2, 1, 0, 2, 7, 0, 0),
    gsSP2Triangles(8, 7, 2, 0, 9, 10, 3, 0),
    gsSP2Triangles(11, 12, 13, 0, 12, 11, 14, 0),
    gsSP2Triangles(14, 7, 12, 0, 12, 7, 8, 0),
    gsSP2Triangles(15, 16, 17, 0, 5, 4, 15, 0),
    gsSP2Triangles(5, 15, 17, 0, 9, 3, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_st_Tex_000460, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_stVtx_000860[87], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 6, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 7, 0, 16, 12, 11, 0),
    gsSP1Triangle(15, 14, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_st_Tex_000560, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_stVtx_000860[105], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 6, 7, 3, 0),
    gsSP2Triangles(3, 7, 8, 0, 8, 9, 3, 0),
    gsSP2Triangles(10, 11, 12, 0, 2, 13, 0, 0),
    gsSP2Triangles(0, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 22, 21, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 14, 31, 0, 0),
    gsSPVertex(&object_stVtx_000860[137], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP1Triangle(10, 11, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_st_Tex_000760, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_stVtx_000860[150], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(4, 3, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_st_Tex_0007E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_stVtx_000860[155], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 9, 13, 7, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 14, 16, 0),
    gsSP2Triangles(1, 12, 2, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 11, 13, 9, 0),
    gsSPVertex(&object_stVtx_000860[185], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 6, 0),
    gsSP1Triangle(7, 6, 3, 0),
    gsSPEndDisplayList(),
};

Gfx object_st_DL_001FD0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_st_Tex_000320, G_IM_FMT_I, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 0, 255),
    gsSPVertex(&object_stVtx_000860[194], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx object_st_DL_002068[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_st_Tex_000320, G_IM_FMT_I, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 0, 255),
    gsSPVertex(&object_stVtx_000860[206], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx object_st_DL_002100[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_st_Tex_000320, G_IM_FMT_I, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 0, 255),
    gsSPVertex(&object_stVtx_000860[218], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 8, 7, 0),
    gsSPEndDisplayList(),
};

Gfx object_st_DL_002198[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_st_Tex_000320, G_IM_FMT_I, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 0, 255),
    gsSPVertex(&object_stVtx_000860[228], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx object_st_DL_002230[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_st_Tex_000320, G_IM_FMT_I, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 0, 255),
    gsSPVertex(&object_stVtx_000860[240], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx object_st_DL_0022C8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_st_Tex_000320, G_IM_FMT_I, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 0, 255),
    gsSPVertex(&object_stVtx_000860[252], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx object_st_DL_002360[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_st_Tex_000320, G_IM_FMT_I, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 0, 255),
    gsSPVertex(&object_stVtx_000860[264], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 6, 9, 0),
    gsSPEndDisplayList(),
};

Gfx object_st_DL_0023F8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_st_Tex_000320, G_IM_FMT_I, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 0, 255),
    gsSPVertex(&object_stVtx_000860[274], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

u64 object_st_Tex_002490[] = {
#include "assets/objects/object_st/tex_00002490.i8.inc.c"
};

u64 object_st_Tex_0024D0[] = {
#include "assets/objects/object_st/tex_000024D0.rgba16.inc.c"
};

u64 object_st_Tex_0025D0[] = {
#include "assets/objects/object_st/tex_000025D0.i4.inc.c"
};

u64 object_st_Tex_002650[] = {
#include "assets/objects/object_st/tex_00002650.rgba16.inc.c"
};

Vtx object_stVtx_0026D0[] = {
#include "assets/objects/object_st/object_stVtx_0026D0.vtx.inc"
};

u8 object_st_Blob_003C50[] = {
#include "assets/objects/object_st/object_st_Blob_003C50.bin.inc.c"
};

Gfx object_st_DL_003FB0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 6, 6, 16, 255),
    gsSPVertex(object_stVtx_0026D0, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 5, 9, 0, 5, 7, 9, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_st_Tex_002650, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_stVtx_0026D0[10], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(15, 12, 14, 0, 14, 12, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(20, 22, 21, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 17, 16, 27, 0),
    gsSP2Triangles(19, 21, 22, 0, 28, 29, 25, 0),
    gsSP1Triangle(24, 28, 25, 0),
    gsSPVertex(&object_stVtx_0026D0[40], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(0, 6, 7, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_stVtx_0026D0[48], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_stVtx_0026D0[54], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(3, 5, 10, 0, 11, 9, 8, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_stVtx_0026D0[66], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_stVtx_0026D0[72], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 6, 9, 0),
    gsSP2Triangles(7, 9, 8, 0, 10, 11, 12, 0),
    gsSP2Triangles(12, 11, 13, 0, 12, 13, 10, 0),
    gsSP2Triangles(12, 10, 11, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_stVtx_0026D0[95], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 7, 6, 0, 5, 8, 6, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 9, 11, 0),
    gsSP2Triangles(13, 12, 11, 0, 10, 13, 11, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 14, 16, 0),
    gsSP2Triangles(18, 17, 16, 0, 15, 18, 16, 0),
    gsSP2Triangles(2, 3, 19, 0, 2, 19, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_st_Tex_0024D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_stVtx_0026D0[115], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 13, 12, 0),
    gsSP2Triangles(16, 15, 12, 0, 16, 17, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 20, 21, 18, 0),
    gsSP2Triangles(22, 21, 23, 0, 23, 21, 24, 0),
    gsSP2Triangles(24, 21, 20, 0, 12, 14, 25, 0),
    gsSP2Triangles(14, 26, 25, 0, 23, 27, 22, 0),
    gsSP2Triangles(27, 23, 28, 0, 29, 20, 19, 0),
    gsSP1Triangle(2, 30, 31, 0),
    gsSPVertex(&object_stVtx_0026D0[147], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsSPTexture(0x0A8C, 0x0384, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_st_Tex_0025D0, G_IM_FMT_I, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 4, 4, G_TX_NOLOD, 15),
    gsSPSetGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, PRIMITIVE, ENVIRONMENT, COMBINED, ENVIRONMENT, 0, 0, 0,
                       COMBINED),
    gsDPSetPrimColor(0, 0, 240, 220, 30, 255),
    gsDPSetEnvColor(20, 20, 0, 255),
    gsSPVertex(&object_stVtx_0026D0[153], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_stVtx_0026D0[156], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 3, 9, 10, 0),
    gsSP2Triangles(8, 7, 11, 0, 11, 4, 12, 0),
    gsSP2Triangles(3, 10, 4, 0, 3, 13, 14, 0),
    gsSP2Triangles(15, 9, 3, 0, 16, 15, 2, 0),
    gsSP2Triangles(2, 17, 18, 0, 18, 17, 19, 0),
    gsSP2Triangles(20, 15, 3, 0, 19, 21, 22, 0),
    gsSP2Triangles(19, 6, 21, 0, 23, 7, 6, 0),
    gsSP2Triangles(19, 17, 24, 0, 5, 4, 25, 0),
    gsSP2Triangles(4, 26, 25, 0, 23, 25, 27, 0),
    gsSP2Triangles(23, 5, 25, 0, 7, 23, 28, 0),
    gsSP2Triangles(23, 27, 28, 0, 11, 7, 29, 0),
    gsSP2Triangles(7, 28, 29, 0, 26, 11, 29, 0),
    gsSP2Triangles(26, 4, 11, 0, 30, 31, 15, 0),
    gsSP1Triangle(30, 20, 24, 0),
    gsSPVertex(&object_stVtx_0026D0[188], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 3, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 1, 8, 9, 0),
    gsSP2Triangles(10, 9, 11, 0, 12, 2, 10, 0),
    gsSP2Triangles(2, 9, 10, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 16, 14, 0, 11, 16, 13, 0),
    gsSP2Triangles(10, 15, 12, 0, 10, 13, 15, 0),
    gsSPEndDisplayList(),
};

Gfx object_st_DL_0043D8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_st_Tex_0025D0, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_stVtx_0026D0[205], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 2, 1, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 8, 7, 0, 1, 0, 11, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&object_stVtx_0026D0[217], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 1, 0, 0, 4, 5, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_st_Tex_002650, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_stVtx_0026D0[223], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 4, 7, 6, 0),
    gsSP2Triangles(3, 5, 8, 0, 5, 6, 8, 0),
    gsSP2Triangles(6, 3, 8, 0, 9, 2, 1, 0),
    gsSP2Triangles(4, 3, 10, 0, 10, 11, 12, 0),
    gsSP2Triangles(1, 13, 14, 0, 15, 11, 16, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 11, 0),
    gsSP2Triangles(16, 18, 12, 0, 17, 16, 12, 0),
    gsSP2Triangles(17, 12, 11, 0, 13, 1, 19, 0),
    gsDPPipeSync(),
    gsSPTexture(0x0A8C, 0x0384, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_st_Tex_0025D0, G_IM_FMT_I, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 4, 4, G_TX_NOLOD, 15),
    gsSPSetGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, PRIMITIVE, ENVIRONMENT, COMBINED, ENVIRONMENT, 0, 0, 0,
                       COMBINED),
    gsDPSetPrimColor(0, 0, 240, 220, 30, 255),
    gsDPSetEnvColor(20, 20, 0, 255),
    gsSPVertex(&object_stVtx_0026D0[243], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_stVtx_0026D0[246], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP1Triangle(5, 3, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_st_DL_0045C0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_st_Tex_002490, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_stVtx_0026D0[252], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx object_st_DL_004658[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_st_Tex_002490, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_stVtx_0026D0[264], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 5, 4, 0, 7, 8, 9, 0),
    gsSPEndDisplayList(),
};

Gfx object_st_DL_0046F0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_st_Tex_002490, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_stVtx_0026D0[274], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx object_st_DL_004788[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_st_Tex_002490, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_stVtx_0026D0[286], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx object_st_DL_004820[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_st_Tex_002490, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_stVtx_0026D0[298], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx object_st_DL_0048B8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_st_Tex_002490, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_stVtx_0026D0[310], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx object_st_DL_004950[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_st_Tex_002490, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_stVtx_0026D0[322], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 6, 9, 0),
    gsSPEndDisplayList(),
};

Gfx object_st_DL_0049E8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_st_Tex_002490, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_stVtx_0026D0[332], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx object_stVtx_004A80[] = {
#include "assets/objects/object_st/object_stVtx_004A80.vtx.inc"
};

Gfx object_st_DL_004DB0[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, 0, 0, 0, 1, PRIMITIVE, ENVIRONMENT, COMBINED,
                       ENVIRONMENT, 0, 0, 0, 1),
    gsDPSetPrimColor(0, 0x80, 255, 255, 170, 255),
    gsDPSetEnvColor(150, 120, 0, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x0FA0, 0x0FA0, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 1, 1),
    gsSPClearGeometryMode(G_FOG),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_stVtx_004A80, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_stVtx_004A80[3], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(0, 4, 5, 0, 4, 0, 6, 0),
    gsSP2Triangles(2, 1, 7, 0, 1, 0, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 10, 12, 13, 0),
    gsSP2Triangles(12, 14, 15, 0, 16, 15, 17, 0),
    gsSP2Triangles(13, 15, 11, 0, 16, 18, 11, 0),
    gsSP2Triangles(19, 4, 6, 0, 20, 6, 0, 0),
    gsSP2Triangles(0, 3, 18, 0, 11, 18, 9, 0),
    gsSP2Triangles(13, 11, 10, 0, 15, 13, 12, 0),
    gsSP2Triangles(21, 19, 16, 0, 15, 16, 11, 0),
    gsSP2Triangles(20, 16, 19, 0, 6, 20, 19, 0),
    gsSP2Triangles(0, 16, 20, 0, 18, 16, 0, 0),
    gsSP1Triangle(21, 16, 17, 0),
    gsSPEndDisplayList(),
};

Gfx object_st_DL_004EB8[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_CLD_SURF2),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, PRIM_LOD_FRAC, TEXEL1, TEXEL0, 1, PRIM_LOD_FRAC, TEXEL1, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0x80, 170, 255, 170, 255),
    gsDPSetEnvColor(0, 0, 255, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown12Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gDecorativeFlameTex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                       G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_stVtx_004A80[25], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, 0, 0, 0, 1, PRIMITIVE, ENVIRONMENT, COMBINED,
                       ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0x80, 255, 255, 170, 255),
    gsDPSetEnvColor(150, 120, 0, 255),
    gsSPTexture(0x0FA0, 0x0FA0, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 1, 1),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_stVtx_004A80[29], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_stVtx_004A80[32], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(2, 4, 5, 0, 3, 2, 5, 0),
    gsSP2Triangles(2, 3, 0, 0, 6, 7, 3, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 1, 3, 0),
    gsSP2Triangles(1, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 5, 4, 0, 5, 11, 10, 0),
    gsSP1Triangle(9, 11, 4, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_OVL_SURF2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, TEXEL0, COMBINED, 0, SHADE, 0, COMBINED, 0,
                       PRIMITIVE, 0),
    gsDPSetPrimColor(0, 0x96, 100, 0, 0, 255),
    gsDPSetEnvColor(255, 0, 0, 255),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gUnknownCircle6Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_stVtx_004A80[44], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsSPEndDisplayList(),
};

StandardLimb object_st_Limb_0050C8 = { 
    { 0, 400, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb object_st_Limb_0050D4 = { 
    { 0, 0, 0 }, 0x02, LIMB_DONE,
    NULL
};

StandardLimb object_st_Limb_0050E0 = { 
    { 531, 0, 0 }, 0x03, 0x04,
    NULL
};

StandardLimb object_st_Limb_0050EC = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_st_DL_001A40
};

StandardLimb object_st_Limb_0050F8 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x05,
    object_st_DL_001C30
};

StandardLimb object_st_Limb_005104 = { 
    { 226, 81, 180 }, 0x06, 0x08,
    NULL
};

StandardLimb object_st_Limb_005110 = { 
    { 0, 0, 0 }, 0x07, LIMB_DONE,
    NULL
};

StandardLimb object_st_Limb_00511C = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_st_DL_002068
};

StandardLimb object_st_Limb_005128 = { 
    { -188, -68, 200 }, 0x09, 0x0B,
    NULL
};

StandardLimb object_st_Limb_005134 = { 
    { 0, 0, 0 }, 0x0A, LIMB_DONE,
    NULL
};

StandardLimb object_st_Limb_005140 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_st_DL_002198
};

StandardLimb object_st_Limb_00514C = { 
    { 47, 17, 250 }, 0x0C, 0x0E,
    NULL
};

StandardLimb object_st_Limb_005158 = { 
    { 0, 0, 0 }, 0x0D, LIMB_DONE,
    NULL
};

StandardLimb object_st_Limb_005164 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_st_DL_002100
};

StandardLimb object_st_Limb_005170 = { 
    { 47, 17, -250 }, 0x0F, 0x11,
    NULL
};

StandardLimb object_st_Limb_00517C = { 
    { 0, 0, 0 }, 0x10, LIMB_DONE,
    NULL
};

StandardLimb object_st_Limb_005188 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_st_DL_002360
};

StandardLimb object_st_Limb_005194 = { 
    { 226, 81, -180 }, 0x12, 0x14,
    NULL
};

StandardLimb object_st_Limb_0051A0 = { 
    { 0, 0, 0 }, 0x13, LIMB_DONE,
    NULL
};

StandardLimb object_st_Limb_0051AC = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_st_DL_0022C8
};

StandardLimb object_st_Limb_0051B8 = { 
    { 414, 149, 160 }, 0x15, 0x17,
    NULL
};

StandardLimb object_st_Limb_0051C4 = { 
    { 0, 0, 0 }, 0x16, LIMB_DONE,
    NULL
};

StandardLimb object_st_Limb_0051D0 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_st_DL_001FD0
};

StandardLimb object_st_Limb_0051DC = { 
    { 414, 149, -160 }, 0x18, 0x1A,
    NULL
};

StandardLimb object_st_Limb_0051E8 = { 
    { 0, 0, 0 }, 0x19, LIMB_DONE,
    NULL
};

StandardLimb object_st_Limb_0051F4 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_st_DL_002230
};

StandardLimb object_st_Limb_005200 = { 
    { -188, -68, -200 }, 0x1B, LIMB_DONE,
    NULL
};

StandardLimb object_st_Limb_00520C = { 
    { 0, 0, 0 }, 0x1C, LIMB_DONE,
    NULL
};

StandardLimb object_st_Limb_005218 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_st_DL_0023F8
};

void* object_st_Skel_005298Limbs[] = {
    &object_st_Limb_0050C8,
    &object_st_Limb_0050D4,
    &object_st_Limb_0050E0,
    &object_st_Limb_0050EC,
    &object_st_Limb_0050F8,
    &object_st_Limb_005104,
    &object_st_Limb_005110,
    &object_st_Limb_00511C,
    &object_st_Limb_005128,
    &object_st_Limb_005134,
    &object_st_Limb_005140,
    &object_st_Limb_00514C,
    &object_st_Limb_005158,
    &object_st_Limb_005164,
    &object_st_Limb_005170,
    &object_st_Limb_00517C,
    &object_st_Limb_005188,
    &object_st_Limb_005194,
    &object_st_Limb_0051A0,
    &object_st_Limb_0051AC,
    &object_st_Limb_0051B8,
    &object_st_Limb_0051C4,
    &object_st_Limb_0051D0,
    &object_st_Limb_0051DC,
    &object_st_Limb_0051E8,
    &object_st_Limb_0051F4,
    &object_st_Limb_005200,
    &object_st_Limb_00520C,
    &object_st_Limb_005218,
};

SkeletonHeader object_st_Skel_005298 = { 
    object_st_Skel_005298Limbs, ARRAY_COUNT(object_st_Skel_005298Limbs)
};

s16 object_st_Anim_0055A8FrameData[] = {
    0xBFFF, 0x3FFC, 0x0000, 0x0190, 0x2457, 0xC000, 0x2459, 0xB020, 0xAABD, 0xA55A, 0xA581, 0xAAB1, 0xB15F, 0xB82A, 
    0xBDB2, 0xC0BA, 0xC238, 0xC2D3, 0xC2BE, 0xC22A, 0xC14A, 0xC050, 0xBF4B, 0xBDEA, 0xBC3F, 0xBA66, 0xB876, 0xB68B, 
    0xB4BF, 0xB32C, 0xB1EC, 0xB145, 0xB13B, 0xB184, 0xB1D6, 0xB1EC, 0x1C72, 0xF1C7, 0xF0FF, 0xF173, 0xF2F3, 0xF554, 
    0xF867, 0xFBFF, 0xFFEE, 0x0408, 0x081E, 0x0C03, 0x0F8A, 0x1284, 0x14C6, 0x1640, 0x1748, 0x17F0, 0x1841, 0x1849, 
    0x1811, 0x17A6, 0x1711, 0x165F, 0x1599, 0x13E2, 0x0FAB, 0x0BB1, 0x0AAB, 0x1F1C, 0x11C7, 0x0472, 0xFFB9, 0xFF87, 
    0xFF93, 0xFFD9, 0x0054, 0x00FD, 0x01D1, 0x02C9, 0x03E0, 0x0512, 0x0658, 0x07AE, 0x090F, 0x0A74, 0x0BDA, 0x0D3A, 
    0x0E90, 0x0FD5, 0x1106, 0x121C, 0x1312, 0x13E4, 0x148C, 0x1504, 0x1548, 0x1555, 0x0000, 0x0000, 0xFDEB, 0xF3CF, 
    0xEB6B, 0xEAD6, 0xEBAA, 0xED14, 0xEEF3, 0xF129, 0xF396, 0xF61A, 0xF896, 0xFAEB, 0xFCF9, 0xFEA0, 0xFFC2, 0x004A, 
    0x0053, 0xFFF4, 0xFF45, 0xFE5C, 0xFD4F, 0xFC34, 0xFB21, 0xFA2D, 0xF96F, 0xF8FB, 0xF8E4, 0x0E39, 0x0E39, 0xEE39, 
    0xE329, 0xE370, 0xE49F, 0xE68C, 0xE910, 0xEC02, 0xEF3A, 0xF28F, 0xF5D9, 0xF8F0, 0xFBAB, 0xFDE2, 0xFF6D, 0x0025, 
    0x001B, 0xFF72, 0xFE4B, 0xFCC5, 0xFAFE, 0xF917, 0xF72E, 0xF563, 0xF3D5, 0xF2A3, 0xF1ED, 0xF1C7, 0x71C7, 0x71C7, 
    0x91C7, 0x9CD7, 0x9C90, 0x9B61, 0x9974, 0x96F0, 0x93FE, 0x90C6, 0x8D71, 0x8A27, 0x8710, 0x8455, 0x821E, 0x8093, 
    0x7FDB, 0x7FE5, 0x808E, 0x81B5, 0x833B, 0x8502, 0x86E9, 0x88D2, 0x8A9D, 0x8C2B, 0x8D5D, 0x8E13, 0x8E39, 0x60E4, 
    0x6E39, 0x7B8E, 0x8047, 0x8079, 0x806D, 0x8027, 0x7FAC, 0x7F03, 0x7E2F, 0x7D37, 0x7C20, 0x7AEE, 0x79A8, 0x7852, 
    0x76F1, 0x758C, 0x7426, 0x72C6, 0x7170, 0x702B, 0x6EFA, 0x6DE4, 0x6CEE, 0x6C1C, 0x6B74, 0x6AFC, 0x6AB8, 0x6AAB, 
    0x1B32, 0x0000, 0xFF54, 0xFEE2, 0xFEA4, 0xFE97, 0xFEB7, 0xFF00, 0xFF6E, 0xFFFD, 0x00A8, 0x016D, 0x0246, 0x0331, 
    0x0428, 0x0528, 0x062D, 0x0733, 0x0836, 0x0932, 0x0A23, 0x0B04, 0x0BD2, 0x0C8A, 0x0D26, 0x0DA3, 0x0DFC, 0x0E2F, 
    0x0E39, 0x64CE, 0x8000, 0x80AC, 0x811E, 0x815C, 0x8169, 0x8149, 0x8100, 0x8092, 0x8003, 0x7F58, 0x7E93, 0x7DBA, 
    0x7CCF, 0x7BD8, 0x7AD8, 0x79D3, 0x78CD, 0x77CA, 0x76CE, 0x75DD, 0x74FC, 0x742E, 0x7376, 0x72DA, 0x725D, 0x7204, 
    0x71D1, 0x71C7, 0x8000, 0x8000, 0x8215, 0x8C31, 0x9495, 0x952A, 0x9456, 0x92EC, 0x910D, 0x8ED7, 0x8C6A, 0x89E6, 
    0x876A, 0x8515, 0x8307, 0x8160, 0x803E, 0x7FB6, 0x7FAD, 0x800C, 0x80BB, 0x81A4, 0x82B1, 0x83CC, 0x84DF, 0x85D3, 
    0x8691, 0x8705, 0x871C, 0x0000, 
};

JointIndex object_st_Anim_0055A8JointIndices[] = {
    { 0x0002, 0x0003, 0x0002 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0002, 0x0002, 0x0007 },
    { 0x0002, 0x0002, 0x0024 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0004, 0x0005, 0x0004 },
    { 0x0002, 0x0002, 0x0041 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0006, 0x0005, 0x0006 },
    { 0x0002, 0x0002, 0x005E },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0004, 0x0005, 0x0004 },
    { 0x0002, 0x0002, 0x007B },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0006, 0x0005, 0x0006 },
    { 0x0002, 0x0002, 0x0098 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0004, 0x0005, 0x0004 },
    { 0x0002, 0x0002, 0x00B5 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0006, 0x0005, 0x0006 },
    { 0x0002, 0x0002, 0x00D2 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0006, 0x0005, 0x0006 },
    { 0x0002, 0x0002, 0x00EF },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0006, 0x0005, 0x0006 },
    { 0x0002, 0x0002, 0x010C },
    { 0x0002, 0x0002, 0x0002 },
};

AnimationHeader object_st_Anim_0055A8 = { 
    { 29 }, object_st_Anim_0055A8FrameData,
    object_st_Anim_0055A8JointIndices, 7
};

u8 object_st_possiblePadding_0055B8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 object_st_Anim_005B98FrameData[] = {
    0xBFFF, 0x3FFC, 0x0000, 0x0190, 0x2457, 0xC000, 0x2459, 0xF5D0, 0xF682, 0xF84D, 0xFAC4, 0xFD79, 0x0000, 0x0339, 
    0x06BB, 0x0826, 0x071F, 0x0529, 0x02AC, 0x0014, 0xFDCB, 0xFC3C, 0xFBBE, 0xFC16, 0xFCD6, 0xFD8E, 0xFE2D, 0xFEE6, 
    0xFFAF, 0x0080, 0x0150, 0x0215, 0x02C8, 0x035E, 0x03CF, 0x0413, 0x03D6, 0x0301, 0x01E1, 0x00C7, 0x0000, 0xFFC6, 
    0xFFE3, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0xA6FF, 0xADC7, 0xB68A, 0xBFD1, 0xC829, 0xCE1C, 0xCF81, 0xCCF3, 0xC921, 0xC515, 0xC052, 0xBB3D, 0xB63E, 
    0xB1BB, 0xAE1C, 0xAB97, 0xAA27, 0xA9D5, 0xAAAB, 0xAC59, 0xAE79, 0xB0EC, 0xB398, 0xB660, 0xB928, 0xBBD4, 0xBE47, 
    0xC066, 0xC214, 0xC2D0, 0xC27E, 0xC19A, 0xC09C, 0xC000, 0xBFE2, 0xBFF1, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 
    0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xE92B, 0xF304, 0x015E, 0x1075, 0x1C87, 
    0x21D1, 0x0857, 0xEDAA, 0xEE19, 0xF217, 0xF877, 0x000A, 0x07A0, 0x0E0C, 0x121E, 0xFC4C, 0xF8DC, 0xF7A2, 0xF842, 
    0xFB0C, 0xFFBF, 0x052B, 0x0A1F, 0x0D6A, 0x0DDA, 0x07B9, 0xFBEF, 0xF03F, 0xEA68, 0xEC4D, 0xF25A, 0xFA19, 0x0118, 
    0x04E4, 0x01A4, 0xFA09, 0xF568, 0xF684, 0xF9F2, 0xFDC1, 0x0000, 0x00A5, 0x00FC, 0x0116, 0x0102, 0x00CE, 0x008B, 
    0x0048, 0x0015, 0x0000, 0xFDE7, 0xFE12, 0xFE7F, 0xFF0C, 0xFF97, 0x0000, 0x0013, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xD5FA, 0xCB29, 0xC7E2, 
    0xCA64, 0xD0ED, 0xD9BB, 0xF93F, 0x1777, 0x1C6E, 0x1E56, 0x1DFF, 0x1C3D, 0x19E2, 0x17C0, 0x16AA, 0x0C54, 0xFCD7, 
    0xEEF1, 0xE71C, 0xE55F, 0xE647, 0xE913, 0xED04, 0xF15A, 0xF555, 0xF9F8, 0xFFEC, 0x05E9, 0x0AAB, 0x0DE3, 0x105C, 
    0x126D, 0x1471, 0x16C1, 0x1B04, 0x1F75, 0x1F4A, 0x17C2, 0x0C31, 0x00ED, 0xFA50, 0xF810, 0xF6DF, 0xF685, 0xF6CD, 
    0xF780, 0xF86A, 0xF954, 0xFA08, 0xFA50, 0xF1E3, 0xEB50, 0xE67C, 0xE33C, 0xE168, 0xE0D6, 0xE15E, 0xE2D6, 0xE515, 
    0xE988, 0xF0EE, 0xFA17, 0x03D2, 0x0CF1, 0x1444, 0x189B, 0x1AAE, 0x1C0E, 0x1CD0, 0x1D09, 0x1CD0, 0x1C3B, 0x1B5E, 
    0x1A50, 0x1926, 0x17F7, 0x16D7, 0x15DD, 0x1513, 0x1409, 0x12AD, 0x1119, 0x0F68, 0x0DB2, 0x0C12, 0x0AA2, 0x097B, 
    0x08B7, 0x0870, 0x08BD, 0x0990, 0x0ACB, 0x0C50, 0x0E02, 0x0FC3, 0x1175, 0x12FB, 0x1436, 0x1508, 0x1555, 0x0F7C, 
    0x0896, 0xFEB8, 0xF44B, 0xEBB8, 0xE767, 0xE7FA, 0xEBA4, 0xF125, 0xF73E, 0xFCB0, 0x003A, 0x01B4, 0x020E, 0x01AA, 
    0x00E8, 0x002D, 0xFFBC, 0xFF69, 0xFF26, 0xFEE5, 0xFE9E, 0xFE45, 0xFDCE, 0xFD2F, 0xFC5E, 0xFB4F, 0xF9F7, 0xF837, 
    0xF528, 0xF100, 0xEC51, 0xE7AE, 0xE3A9, 0xE0D4, 0xDFC1, 0xE01F, 0xE126, 0xE2B9, 0xE4BD, 0xE715, 0xE9A6, 0xEC52, 
    0xEEFF, 0xF190, 0xF3E8, 0xF5EC, 0xF77F, 0xF886, 0xF8E4, 0x0AD8, 0x00B6, 0xF694, 0xEC72, 0xE250, 0xD82F, 0xD857, 
    0xDA57, 0xDDCC, 0xE255, 0xE791, 0xED1E, 0xF29A, 0xF7A4, 0xFBDA, 0xFEDB, 0x0054, 0x00C3, 0x0079, 0xFF95, 0xFE3A, 
    0xFC86, 0xFA9B, 0xF899, 0xF6A1, 0xF4D3, 0xF34F, 0xF237, 0xF1A6, 0xF182, 0xF1AE, 0xF219, 0xF2AF, 0xF360, 0xF419, 
    0xF4C8, 0xF55B, 0xF5C1, 0xF5E7, 0xF5CE, 0xF58B, 0xF526, 0xF4AA, 0xF41F, 0xF38F, 0xF304, 0xF288, 0xF223, 0xF1E0, 
    0xF1C7, 0x925F, 0xA0EE, 0xAE14, 0xB89D, 0xBF57, 0xC112, 0xBEB0, 0xBA33, 0xB411, 0xACC0, 0xA4B8, 0x9C6E, 0x945A, 
    0x8CF2, 0x86AC, 0x8200, 0x7F50, 0x7DF5, 0x7D8C, 0x7DF0, 0x7EFF, 0x8094, 0x828C, 0x84C2, 0x8713, 0x895C, 0x8B78, 
    0x8D44, 0x8EA9, 0x9029, 0x91DB, 0x93A7, 0x9572, 0x9724, 0x98A1, 0x99D2, 0x9A9B, 0x9AE4, 0x9AA4, 0x99F4, 0x98E9, 
    0x979B, 0x9620, 0x948E, 0x92FD, 0x9182, 0x9034, 0x8F29, 0x8E79, 0x8E39, 0x824C, 0x9081, 0x97A6, 0x9927, 0x9831, 
    0x9702, 0x959E, 0x940C, 0x924F, 0x906D, 0x8E6B, 0x8C4D, 0x8A19, 0x87D4, 0x8582, 0x8328, 0x80CB, 0x7E71, 0x7C1E, 
    0x79D7, 0x77A2, 0x7582, 0x737D, 0x7198, 0x6FD8, 0x6E42, 0x6CDA, 0x6BA6, 0x6AAB, 0x6A3A, 0x6A8A, 0x6B78, 0x6CE2, 
    0x6EA4, 0x709C, 0x72A6, 0x749F, 0x7665, 0x77D5, 0x78CB, 0x7925, 0x78A6, 0x7751, 0x7564, 0x731B, 0x70B4, 0x6E6C, 
    0x6C7E, 0x6B2A, 0x6AAB, 0xF961, 0xF06E, 0xEAE7, 0xE861, 0xE871, 0xEAAE, 0xF05C, 0xF9B6, 0x04C4, 0x0F8C, 0x1817, 
    0x1C6C, 0x1DB8, 0x1E81, 0x1ED4, 0x1EBD, 0x1E48, 0x1D83, 0x1C78, 0x1B35, 0x19C6, 0x1837, 0x1694, 0x14EB, 0x1347, 
    0x11B5, 0x1041, 0x0EF7, 0x0DDC, 0x0C96, 0x0B16, 0x096F, 0x07B4, 0x05F7, 0x044B, 0x02C2, 0x016E, 0x0063, 0xFFB3, 
    0xFF70, 0xFFD2, 0x00E5, 0x027E, 0x046F, 0x068D, 0x08AC, 0x0AA0, 0x0C3B, 0x0D53, 0x0DBA, 0x828C, 0x8C89, 0x8F07, 
    0x8E78, 0x8DCB, 0x8CFD, 0x8C10, 0x8B08, 0x89E7, 0x88B1, 0x8769, 0x8612, 0x84AE, 0x8341, 0x81CE, 0x8058, 0x7EE1, 
    0x7D6E, 0x7C01, 0x7A9C, 0x7944, 0x77FA, 0x76C3, 0x75A1, 0x7497, 0x73A8, 0x72D7, 0x7228, 0x71A1, 0x7178, 0x71AE, 
    0x7234, 0x72FA, 0x73F0, 0x7504, 0x7629, 0x774C, 0x785F, 0x7950, 0x7A11, 0x7A90, 0x7ABE, 0x7A5B, 0x7957, 0x77E8, 
    0x7642, 0x749D, 0x732E, 0x722A, 0x71C7, 0x9E26, 0xA33E, 0xA73A, 0xAA11, 0xABBC, 0xAC2F, 0xAB63, 0xA94E, 0xA56D, 
    0x9FA3, 0x9886, 0x90A9, 0x88A1, 0x8102, 0x7A5F, 0x754E, 0x7263, 0x7143, 0x711C, 0x71CC, 0x7331, 0x7529, 0x7792, 
    0x7A49, 0x7D2D, 0x801B, 0x82F2, 0x858F, 0x87E7, 0x8AE3, 0x8E7B, 0x924D, 0x95F4, 0x990C, 0x9B30, 0x9BFD, 0x9BAF, 
    0x9AD5, 0x9986, 0x97DA, 0x95E7, 0x93C6, 0x918D, 0x8F54, 0x8D33, 0x8B40, 0x8994, 0x8845, 0x876A, 0x871C, 0x0000, 
    
};

JointIndex object_st_Anim_005B98JointIndices[] = {
    { 0x0002, 0x0003, 0x0002 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0002, 0x0007, 0x0039 },
    { 0x006B, 0x009D, 0x00CF },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0004, 0x0005, 0x0004 },
    { 0x0002, 0x0002, 0x0101 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0006, 0x0005, 0x0006 },
    { 0x0002, 0x0002, 0x0133 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0004, 0x0005, 0x0004 },
    { 0x0002, 0x0002, 0x0165 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0006, 0x0005, 0x0006 },
    { 0x0002, 0x0002, 0x0197 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0004, 0x0005, 0x0004 },
    { 0x0002, 0x0002, 0x01C9 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0006, 0x0005, 0x0006 },
    { 0x0002, 0x0002, 0x01FB },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0006, 0x0005, 0x0006 },
    { 0x0002, 0x0002, 0x022D },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0006, 0x0005, 0x0006 },
    { 0x0002, 0x0002, 0x025F },
    { 0x0002, 0x0002, 0x0002 },
};

AnimationHeader object_st_Anim_005B98 = { 
    { 50 }, object_st_Anim_005B98FrameData,
    object_st_Anim_005B98JointIndices, 7
};

