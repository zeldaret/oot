#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_hs.h"

s16 object_hs_Anim_000304FrameData[] = {
    0x0000, 0xEF4A, 0xEF4C, 0xEF4A, 0xEF4C, 0xEF4A, 0xEF4C, 0xEF4A, 0xEF4C, 0xEF4A, 0xEF4C, 0xEF4A, 0xEF4A, 0xEF4A, 
    0xEF4A, 0xEF49, 0xEF4A, 0xD919, 0xD7DD, 0xD919, 0xD7DD, 0xD919, 0xD7DD, 0xD919, 0xD7DD, 0xD919, 0xD7DD, 0xD919, 
    0xD918, 0xD918, 0xD919, 0xD91A, 0xD919, 0xC352, 0xC34F, 0xC352, 0xC34F, 0xC352, 0xC34F, 0xC352, 0xC34F, 0xC352, 
    0xC34F, 0xC352, 0xC352, 0xC354, 0xC352, 0xC350, 0xC352, 0x2FE3, 0x2FE1, 0x2FE0, 0x2FE0, 0x2FDF, 0x2FDF, 0x2FE0, 
    0x2FE0, 0x2FE1, 0x2FE1, 0x2FE2, 0x2FE2, 0x2FE3, 0x2FE3, 0x2FE3, 0x2FE3, 0xD3A1, 0xD3A1, 0xD3A0, 0xD39F, 0xD39D, 
    0xD39B, 0xD399, 0xD397, 0xD395, 0xD394, 0xD394, 0xD394, 0xD395, 0xD398, 0xD39C, 0xD3A1, 0xF497, 0xF495, 0xF490, 
    0xF489, 0xF481, 0xF479, 0xF470, 0xF469, 0xF462, 0xF45E, 0xF45D, 0xF45F, 0xF465, 0xF470, 0xF480, 0xF497, 0xC8D9, 
    0xC8D9, 0xC8D9, 0xC8D8, 0xC8D8, 0xC8D7, 0xC8D7, 0xC8D6, 0xC8D6, 0xC8D6, 0xC8D6, 0xC8D6, 0xC8D7, 0xC8D7, 0xC8D8, 
    0xC8D9, 0x09AA, 0x07D7, 0x09AA, 0x07D7, 0x09AA, 0x07D7, 0x09AA, 0x07D7, 0x09AA, 0x07D7, 0x09AA, 0x09AB, 0x09AA, 
    0x09AA, 0x09AA, 0x09AA, 0xF8BA, 0xFA38, 0xF8BA, 0xFA38, 0xF8BA, 0xFA38, 0xF8BA, 0xFA38, 0xF8BA, 0xFA38, 0xF8BA, 
    0xF8BB, 0xF8B8, 0xF8B4, 0xF8B4, 0xF8BA, 0xE4E5, 0xE4E3, 0xE4E5, 0xE4E3, 0xE4E5, 0xE4E3, 0xE4E5, 0xE4E3, 0xE4E5, 
    0xE4E3, 0xE4E5, 0xE4E2, 0xE4DC, 0xE4D9, 0xE4DB, 0xE4E5, 0xB937, 0xB77E, 0xB937, 0xB77E, 0xB937, 0xB77E, 0xB937, 
    0xB77E, 0xB937, 0xB77E, 0xB937, 0xB938, 0xB939, 0xB939, 0xB938, 0xB937, 0xC78D, 0xC81A, 0xC78D, 0xC81A, 0xC78D, 
    0xC81A, 0xC78D, 0xC81A, 0xC78D, 0xC81A, 0xC78D, 0xC781, 0xC783, 0xC78D, 0xC793, 0xC78D, 0xA6DC, 0xA6C6, 0xA6B7, 
    0xA6AF, 0xA6AB, 0xA6AD, 0xA6B1, 0xA6B9, 0xA6C1, 0xA6CB, 0xA6D4, 0xA6DC, 0xA6E2, 0xA6E4, 0xA6E3, 0xA6DC, 0x933D, 
    0x934D, 0x9359, 0x9361, 0x9366, 0x9367, 0x9367, 0x9364, 0x9360, 0x935A, 0x9354, 0x934E, 0x9348, 0x9343, 0x933F, 
    0x933D, 0x7902, 0x7905, 0x7908, 0x790A, 0x790C, 0x790C, 0x790C, 0x790C, 0x790B, 0x790A, 0x7908, 0x7907, 0x7905, 
    0x7904, 0x7903, 0x7902, 0x1555, 0x1555, 0x1555, 0x1555, 0x1555, 0x1555, 0x1555, 0x1555, 0x1555, 0x1555, 0x1555, 
    0x1555, 0x1555, 0x1555, 0x1554, 0x1555, 0x0AE3, 0x08DD, 0x0AE3, 0x08DD, 0x0AE3, 0x08DD, 0x0AE3, 0x08DD, 0x0AE3, 
    0x08DD, 0x0AE3, 0x0ADC, 0x0ADA, 0x0ADC, 0x0ADF, 0x0AE2, 0xE34A, 0xE348, 0xE34A, 0xE348, 0xE34A, 0xE348, 0xE34A, 
    0xE348, 0xE34A, 0xE348, 0xE34A, 0xE348, 0xE345, 0xE344, 0xE345, 0xE348, 0x4000, 0x3F61, 0x4000, 0x3F61, 0x4000, 
    0x3F61, 0x4000, 0x3F61, 0x4000, 0x3F61, 0x4000, 0x4010, 0x4013, 0x400E, 0x4006, 0x4000, 0x0000, 0x0104, 0x0000, 
    0x0104, 0x0000, 0x0104, 0x0000, 0x0104, 0x0000, 0x0104, 0x0000, 0xFFE6, 0xFFE1, 0xFFE9, 0xFFF7, 0x0000, 0x2997, 
    0x299D, 0x2997, 0x299D, 0x2997, 0x299D, 0x2997, 0x299D, 0x2997, 0x299D, 0x2997, 0x299D, 0x299D, 0x299A, 0x2998, 
    0x2996, 0x0000, 
};

JointIndex object_hs_Anim_000304JointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0011, 0x0021 },
    { 0x0031, 0x0041, 0x0051 },
    { 0x0061, 0x0071, 0x0081 },
    { 0x0091, 0x00A1, 0x00B1 },
    { 0x00C1, 0x00D1, 0x00E1 },
    { 0x00F1, 0x0101, 0x0111 },
    { 0x0121, 0x0131, 0x0141 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader object_hs_Anim_000304 = { 
    { 16 }, object_hs_Anim_000304FrameData,
    object_hs_Anim_000304JointIndices, 1
};

u8 object_hs_possiblePadding_000314[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 object_hs_Anim_000528FrameData[] = {
    0x0000, 0xCA6D, 0xCA67, 0xCA60, 0xCA59, 0xCA56, 0xCA58, 0xCA5E, 0xCA66, 0xCA6C, 0xCA6E, 0xF358, 0xF35F, 0xF367, 
    0xF36E, 0xF371, 0xF36D, 0xF366, 0xF35E, 0xF356, 0xF353, 0x37E7, 0x38A0, 0x3979, 0x3A2E, 0x3A7A, 0x3A2D, 0x3975, 
    0x3899, 0x37E1, 0x3794, 0xBC06, 0xBB58, 0xBA82, 0xB9CC, 0xB980, 0xB9C9, 0xBA79, 0xBB4A, 0xBBFA, 0xBC43, 0xD66D, 
    0xD788, 0xD8DA, 0xD9F5, 0xDA6C, 0xD9F5, 0xD8DA, 0xD788, 0xD66D, 0xD5F7, 0x0372, 0x0388, 0x03A3, 0x03B9, 0x03C2, 
    0x03BA, 0x03A6, 0x038D, 0x0377, 0x0368, 0xBF2D, 0xBD85, 0xBB8C, 0xB9E4, 0xB933, 0xB9E4, 0xBB8C, 0xBD86, 0xBF2D, 
    0xBFDF, 0xF97E, 0xFA25, 0xFAEE, 0xFB97, 0xFBDE, 0xFB98, 0xFAF0, 0xFA28, 0xF980, 0xF93A, 0x2432, 0x23A8, 0x2308, 
    0x2283, 0x224B, 0x2285, 0x230E, 0x23B1, 0x243A, 0x2473, 0x3908, 0x38FE, 0x38FA, 0x38FA, 0x38FB, 0x38FF, 0x3907, 
    0x3912, 0x391A, 0x391E, 0xE7DB, 0xE7D4, 0xE7CD, 0xE7C8, 0xE7C5, 0xE7C8, 0xE7CF, 0xE7D7, 0xE7DE, 0xE7E1, 0x4674, 
    0x4605, 0x4587, 0x4520, 0x44F5, 0x4523, 0x4590, 0x4613, 0x4680, 0x46AE, 0xFFEA, 0xFFE2, 0xFFDF, 0xFFDF, 0xFFE0, 
    0xFFE3, 0xFFE9, 0xFFF1, 0xFFF7, 0xFFFA, 0xA7E2, 0xA616, 0xA3ED, 0xA21B, 0xA157, 0xA218, 0xA3E5, 0xA60B, 0xA7D7, 
    0xA898, 0x650E, 0x650F, 0x650F, 0x650F, 0x650F, 0x650E, 0x650E, 0x650D, 0x650D, 0x650C, 0x1AFB, 0x182F, 0x14D7, 
    0x120A, 0x10DD, 0x1209, 0x14D6, 0x182D, 0x1AFA, 0x1C26, 0xDA75, 0xDCB3, 0xDF5F, 0xE19A, 0xE28A, 0xE199, 0xDF5C, 
    0xDCAF, 0xDA71, 0xD980, 0xF414, 0xF54E, 0xF6C3, 0xF7FC, 0xF880, 0xF7FC, 0xF6C2, 0xF54C, 0xF412, 0xF38F, 0x3FFA, 
    0x3FF8, 0x3FF9, 0x3FFA, 0x3FFB, 0x3FFB, 0x3FFC, 0x3FFD, 0x3FFF, 0x4000, 0xC2C9, 0xC38B, 0xC475, 0xC53A, 0xC58C, 
    0xC53B, 0xC478, 0xC38F, 0xC2CC, 0xC27A, 0x4006, 0x4008, 0x4007, 0x4006, 0x4005, 0x4005, 0x4004, 0x4003, 0x4001, 
    0x4000, 0x0000, 
};

JointIndex object_hs_Anim_000528JointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x000B, 0x0015 },
    { 0x001F, 0x0029, 0x0033 },
    { 0x003D, 0x0047, 0x0051 },
    { 0x005B, 0x0065, 0x006F },
    { 0x0079, 0x0083, 0x008D },
    { 0x0097, 0x00A1, 0x00AB },
    { 0x00B5, 0x00BF, 0x00C9 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader object_hs_Anim_000528 = { 
    { 10 }, object_hs_Anim_000528FrameData,
    object_hs_Anim_000528JointIndices, 1
};

u8 object_hs_possiblePadding_000538[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 object_hs_Anim_0005C0FrameData[] = {
    0x0000, 0x02D8, 0xF8E4, 0xCAAB, 0x471C, 0xB49F, 0xEAAB, 0x2AAB, 0xE93F, 0xFD28, 0xB555, 0xB8E4, 0x4B61, 0x1555, 
    0x16C1, 0x4000, 
};

JointIndex object_hs_Anim_0005C0JointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0002, 0x0003 },
    { 0x0004, 0x0003, 0x0005 },
    { 0x0006, 0x0007, 0x0008 },
    { 0x0009, 0x0002, 0x000A },
    { 0x000B, 0x0003, 0x000C },
    { 0x000D, 0x0007, 0x000E },
    { 0x000F, 0x0000, 0x000F },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader object_hs_Anim_0005C0 = { 
    { 2 }, object_hs_Anim_0005C0FrameData,
    object_hs_Anim_0005C0JointIndices, 16
};

Vtx object_hsVtx_0005D0[] = {
#include "assets/objects/object_hs/object_hsVtx_0005D0.vtx.inc"
};

Gfx object_hs_DL_003760[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_hs_TLUT_004E50),
    gsDPLoadTextureBlock(object_hs_Tex_005AB0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_hsVtx_0005D0[410], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hsVtx_0005D0[413], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hsVtx_0005D0[419], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 3, 6, 0, 1, 7, 8, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hsVtx_0005D0[428], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hsVtx_0005D0[432], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 4, 0, 8, 1, 7, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hsVtx_0005D0[441], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 7, 6, 0),
    gsSP1Triangle(10, 8, 11, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hsVtx_0005D0[453], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(2, 12, 13, 0, 7, 14, 15, 0),
    gsSP2Triangles(16, 5, 1, 0, 14, 17, 18, 0),
    gsSP2Triangles(19, 20, 4, 0, 21, 22, 23, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hsVtx_0005D0[477], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hsVtx_0005D0[482], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 3, 6, 0, 1, 5, 7, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hsVtx_0005D0[490], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hsVtx_0005D0[495], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(5, 6, 4, 0, 7, 1, 8, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hsVtx_0005D0[504], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 3, 7, 6, 0),
    gsSP1Triangle(2, 8, 0, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hsVtx_0005D0[513], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(2, 12, 13, 0, 7, 14, 15, 0),
    gsSP2Triangles(16, 5, 17, 0, 14, 9, 18, 0),
    gsSP2Triangles(13, 12, 4, 0, 19, 20, 21, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hsVtx_0005D0[535], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hsVtx_0005D0[540], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 3, 6, 0, 7, 5, 8, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hsVtx_0005D0[549], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hsVtx_0005D0[553], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(5, 6, 4, 0, 7, 1, 8, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hsVtx_0005D0[562], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 3, 7, 6, 0),
    gsSP1Triangle(2, 8, 0, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hsVtx_0005D0[571], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(2, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 1, 0, 15, 9, 19, 0),
    gsSP2Triangles(13, 12, 4, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 24, 26, 0, 28, 29, 30, 0),
    gsSP1Triangle(31, 28, 30, 0),
    gsSPEndDisplayList(),
};

Gfx object_hs_DL_003AB0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_hs_TLUT_004E50),
    gsDPLoadTextureBlock(object_hs_Tex_005050, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_hsVtx_0005D0[603], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 4, 7, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 0, 5, 6, 0),
    gsSP2Triangles(11, 12, 13, 0, 10, 9, 14, 0),
    gsSP2Triangles(15, 1, 16, 0, 2, 1, 15, 0),
    gsSP2Triangles(2, 5, 0, 0, 17, 5, 2, 0),
    gsSP2Triangles(18, 19, 2, 0, 16, 19, 18, 0),
    gsSP2Triangles(20, 5, 17, 0, 21, 5, 20, 0),
    gsSP2Triangles(22, 21, 20, 0, 5, 21, 3, 0),
    gsSP2Triangles(2, 19, 17, 0, 14, 9, 23, 0),
    gsSP2Triangles(24, 25, 11, 0, 23, 9, 26, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_hs_TLUT_004E50),
    gsDPLoadTextureBlock(object_hs_Tex_005EF0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsSPVertex(&object_hsVtx_0005D0[630], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 0, 4, 0, 5, 1, 3, 0),
    gsSP2Triangles(3, 6, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 9, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 15, 12, 0),
    gsSP2Triangles(15, 14, 16, 0, 17, 15, 16, 0),
    gsSP1Triangle(4, 16, 14, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_hs_TLUT_004E50),
    gsDPLoadTextureBlock(object_hs_Tex_005F70, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsSPVertex(&object_hsVtx_0005D0[648], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 3, 4, 0, 4, 5, 1, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 7, 6, 0),
    gsSP2Triangles(6, 10, 9, 0, 11, 10, 6, 0),
    gsSP2Triangles(9, 10, 12, 0, 9, 12, 13, 0),
    gsSP2Triangles(14, 7, 9, 0, 15, 10, 11, 0),
    gsSP2Triangles(13, 12, 16, 0, 17, 18, 19, 0),
    gsSP1Triangle(20, 17, 19, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_hs_TLUT_004E50),
    gsDPLoadTextureBlock(object_hs_Tex_005890, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_hsVtx_0005D0[669], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(8, 6, 7, 0, 4, 10, 11, 0),
    gsSP2Triangles(10, 9, 7, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 13, 12, 0, 15, 16, 13, 0),
    gsSP2Triangles(17, 16, 15, 0, 12, 18, 19, 0),
    gsSP2Triangles(12, 14, 18, 0, 20, 16, 17, 0),
    gsSP2Triangles(21, 22, 17, 0, 23, 11, 19, 0),
    gsSP2Triangles(24, 22, 21, 0, 25, 11, 23, 0),
    gsSP2Triangles(25, 4, 11, 0, 0, 26, 27, 0),
    gsSP2Triangles(26, 0, 15, 0, 24, 27, 26, 0),
    gsSP2Triangles(28, 22, 24, 0, 24, 21, 27, 0),
    gsSP2Triangles(29, 22, 28, 0, 29, 23, 22, 0),
    gsSP2Triangles(25, 23, 29, 0, 2, 1, 30, 0),
    gsSP2Triangles(27, 1, 0, 0, 31, 4, 25, 0),
    gsSP2Triangles(5, 31, 12, 0, 5, 4, 31, 0),
    gsSP2Triangles(26, 12, 31, 0, 20, 17, 22, 0),
    gsSP1Triangle(12, 26, 15, 0),
    gsSPVertex(&object_hsVtx_0005D0[701], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(3, 4, 1, 0, 5, 4, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 11, 10, 0),
    gsSP2Triangles(14, 15, 16, 0, 12, 15, 14, 0),
    gsSP2Triangles(17, 6, 18, 0, 9, 6, 17, 0),
    gsSP2Triangles(19, 13, 20, 0, 16, 19, 14, 0),
    gsSP2Triangles(11, 19, 16, 0, 20, 14, 19, 0),
    gsSP2Triangles(11, 13, 19, 0, 21, 5, 22, 0),
    gsSP2Triangles(23, 21, 22, 0, 24, 23, 22, 0),
    gsSP2Triangles(25, 26, 20, 0, 27, 26, 25, 0),
    gsSP2Triangles(28, 26, 27, 0, 26, 29, 20, 0),
    gsSP2Triangles(28, 29, 26, 0, 29, 14, 20, 0),
    gsSP2Triangles(28, 14, 29, 0, 21, 30, 5, 0),
    gsSP2Triangles(21, 31, 30, 0, 31, 23, 24, 0),
    gsSP2Triangles(21, 23, 31, 0, 24, 7, 31, 0),
    gsSP1Triangle(17, 24, 22, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_hs_TLUT_004E50),
    gsDPLoadTextureBlock(object_hs_Tex_005AF0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSPVertex(&object_hsVtx_0005D0[733], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 10, 7, 0, 6, 11, 4, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(17, 18, 15, 0, 14, 19, 12, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_hs_TLUT_004E50),
    gsDPLoadTextureBlock(object_hs_Tex_005EF0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsSPVertex(&object_hsVtx_0005D0[753], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(4, 2, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(0, 6, 5, 0, 0, 2, 6, 0),
    gsSP2Triangles(7, 3, 5, 0, 7, 4, 3, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 11, 12, 14, 0),
    gsSP2Triangles(10, 12, 11, 0, 15, 13, 9, 0),
    gsSP2Triangles(9, 8, 15, 0, 13, 15, 14, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_hs_Tex_005A90, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 4, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 2, 2, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x000C, 0x000C),
    gsSPVertex(&object_hsVtx_0005D0[769], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 0, 5, 0, 4, 3, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 12, 10, 0, 12, 13, 10, 0),
    gsSP2Triangles(13, 14, 10, 0, 4, 7, 6, 0),
    gsSP2Triangles(4, 5, 7, 0, 1, 8, 2, 0),
    gsSP2Triangles(8, 15, 2, 0, 8, 7, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 11, 17, 0),
    gsSP2Triangles(13, 18, 14, 0, 16, 9, 11, 0),
    gsSP2Triangles(18, 13, 19, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 16, 19, 0, 21, 22, 6, 0),
    gsSP2Triangles(6, 8, 21, 0, 19, 23, 20, 0),
    gsSP2Triangles(21, 3, 22, 0, 21, 1, 3, 0),
    gsSP2Triangles(12, 20, 23, 0, 9, 20, 12, 0),
    gsSP2Triangles(1, 21, 8, 0, 16, 20, 9, 0),
    gsSPEndDisplayList(),
};

Gfx object_hs_DL_004140[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_hs_TLUT_004E50),
    gsDPLoadTextureBlock(object_hs_Tex_005890, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_hsVtx_0005D0[147], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 12, 9, 0, 8, 13, 6, 0),
    gsSP2Triangles(6, 14, 3, 0, 2, 15, 11, 0),
    gsSP2Triangles(14, 16, 3, 0, 17, 18, 10, 0),
    gsSP2Triangles(0, 19, 20, 0, 2, 10, 0, 0),
    gsSP2Triangles(5, 7, 3, 0, 7, 5, 21, 0),
    gsSP2Triangles(10, 18, 19, 0, 11, 22, 12, 0),
    gsSP2Triangles(9, 17, 10, 0, 23, 19, 21, 0),
    gsSP2Triangles(24, 21, 5, 0, 25, 0, 20, 0),
    gsSP2Triangles(23, 21, 24, 0, 20, 19, 23, 0),
    gsSP2Triangles(26, 27, 24, 0, 20, 28, 29, 0),
    gsSP2Triangles(3, 30, 4, 0, 13, 31, 6, 0),
    gsSPVertex(&object_hsVtx_0005D0[179], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(2, 10, 11, 0, 12, 5, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 16, 17, 18, 0),
    gsSP2Triangles(12, 13, 8, 0, 14, 19, 20, 0),
    gsSPEndDisplayList(),
};

Gfx object_hs_DL_0042A0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_hs_TLUT_004E50),
    gsDPLoadTextureBlock(object_hs_Tex_005890, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_hsVtx_0005D0[129], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSPEndDisplayList(),
};

Gfx object_hs_DL_004380[] = {
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_hsVtx_0005D0, 7, 0),
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_hs_TLUT_004E50),
    gsDPLoadTextureBlock(object_hs_Tex_005050, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hsVtx_0005D0[7], 18, 7),
    gsSP2Triangles(7, 1, 8, 0, 1, 9, 10, 0),
    gsSP2Triangles(3, 11, 12, 0, 3, 13, 14, 0),
    gsSP2Triangles(15, 2, 3, 0, 16, 0, 1, 0),
    gsSP2Triangles(17, 18, 4, 0, 5, 0, 19, 0),
    gsSP2Triangles(20, 21, 5, 0, 22, 5, 23, 0),
    gsSP1Triangle(3, 6, 24, 0),
    gsSPVertex(&object_hsVtx_0005D0[25], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(2, 4, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 1, 12, 0),
    gsSP2Triangles(1, 7, 6, 0, 0, 13, 14, 0),
    gsSP2Triangles(0, 7, 1, 0, 1, 15, 12, 0),
    gsSP2Triangles(4, 13, 0, 0, 10, 16, 8, 0),
    gsSP2Triangles(11, 3, 1, 0, 14, 10, 9, 0),
    gsSP2Triangles(6, 17, 15, 0, 6, 15, 1, 0),
    gsSP2Triangles(5, 7, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(12, 15, 17, 0, 8, 16, 22, 0),
    gsSP2Triangles(12, 23, 11, 0, 24, 25, 26, 0),
    gsSP2Triangles(12, 20, 24, 0, 22, 25, 24, 0),
    gsSP2Triangles(17, 20, 12, 0, 20, 17, 21, 0),
    gsSP2Triangles(24, 26, 27, 0, 23, 12, 27, 0),
    gsSP2Triangles(27, 12, 24, 0, 28, 29, 30, 0),
    gsSPVertex(&object_hsVtx_0005D0[56], 9, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_hs_TLUT_004E50),
    gsDPLoadTextureBlock(object_hs_Tex_005250, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(3, 4, 5, 0, 6, 7, 8, 0),
    gsSPVertex(&object_hsVtx_0005D0[65], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 18, 17, 19, 0),
    gsSP2Triangles(19, 20, 18, 0, 20, 19, 21, 0),
    gsSP2Triangles(18, 20, 16, 0, 16, 20, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 25, 24, 0),
    gsSP2Triangles(24, 27, 26, 0, 26, 27, 28, 0),
    gsSP2Triangles(28, 25, 26, 0, 22, 25, 28, 0),
    gsSP1Triangle(29, 30, 9, 0),
    gsSPVertex(&object_hsVtx_0005D0[96], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 5, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP1Triangle(14, 15, 16, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_hs_TLUT_004E50),
    gsDPLoadTextureBlock(object_hs_Tex_005290, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x003C),
    gsSP2Triangles(17, 18, 19, 0, 17, 20, 18, 0),
    gsSP2Triangles(20, 17, 21, 0, 22, 19, 18, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_hs_Tex_005490, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x003C),
    gsSPVertex(&object_hsVtx_0005D0[119], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 5, 9, 0),
    gsSPEndDisplayList(),
};

Gfx object_hs_DL_004728[] = {
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_hsVtx_0005D0[266], 10, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_hs_TLUT_004E50),
    gsDPLoadTextureBlock(object_hs_Tex_005050, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hsVtx_0005D0[276], 13, 10),
    gsSP2Triangles(0, 2, 10, 0, 11, 1, 0, 0),
    gsSP2Triangles(12, 5, 13, 0, 3, 14, 15, 0),
    gsSP1Triangle(6, 1, 16, 0),
    gsSP2Triangles(4, 8, 17, 0, 18, 9, 7, 0),
    gsSP2Triangles(19, 7, 20, 0, 21, 22, 4, 0),
    gsSPVertex(&object_hsVtx_0005D0[289], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 12, 13, 10, 0),
    gsSP2Triangles(2, 14, 0, 0, 9, 15, 7, 0),
    gsSPEndDisplayList(),
};

Gfx object_hs_DL_004860[] = {
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_hsVtx_0005D0[242], 4, 0),
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_hs_Tex_005A90, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 4, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 2, 2, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x000C, 0x000C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hsVtx_0005D0[246], 12, 4),
    gsSP2Triangles(0, 4, 5, 0, 6, 7, 1, 0),
    gsSP2Triangles(8, 9, 0, 0, 1, 10, 11, 0),
    gsSP2Triangles(12, 2, 1, 0, 0, 2, 13, 0),
    gsSP2Triangles(14, 3, 0, 0, 1, 3, 15, 0),
    gsSPVertex(&object_hsVtx_0005D0[258], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(1, 5, 6, 0, 6, 5, 4, 0),
    gsSP2Triangles(0, 7, 3, 0, 2, 7, 0, 0),
    gsSP2Triangles(6, 2, 1, 0, 4, 3, 6, 0),
    gsSPEndDisplayList(),
};

Gfx object_hs_DL_004960[] = {
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_hsVtx_0005D0[200], 4, 0),
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_hs_TLUT_004E50),
    gsDPLoadTextureBlock(object_hs_Tex_005990, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hsVtx_0005D0[204], 20, 4),
    gsSP2Triangles(0, 4, 5, 0, 6, 1, 7, 0),
    gsSP2Triangles(2, 1, 8, 0, 9, 10, 2, 0),
    gsSP2Triangles(3, 11, 12, 0, 13, 0, 3, 0),
    gsSP2Triangles(0, 14, 15, 0, 16, 17, 3, 0),
    gsSP2Triangles(2, 18, 19, 0, 20, 21, 0, 0),
    gsSP2Triangles(22, 1, 0, 0, 3, 2, 23, 0),
    gsSPVertex(&object_hsVtx_0005D0[224], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 2, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 11, 9, 0, 11, 12, 9, 0),
    gsSP2Triangles(1, 13, 6, 0, 2, 1, 6, 0),
    gsSP2Triangles(3, 14, 4, 0, 15, 3, 5, 0),
    gsSP2Triangles(2, 7, 16, 0, 4, 14, 5, 0),
    gsSP2Triangles(17, 10, 9, 0, 16, 5, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_hs_DL_004AB8[] = {
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_hsVtx_0005D0[371], 10, 0),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_hs_TLUT_004E50),
    gsDPLoadTextureBlock(object_hs_Tex_005050, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hsVtx_0005D0[381], 13, 10),
    gsSP2Triangles(10, 2, 0, 0, 0, 1, 11, 0),
    gsSP2Triangles(12, 5, 13, 0, 14, 15, 3, 0),
    gsSP1Triangle(16, 1, 6, 0),
    gsSP2Triangles(17, 8, 4, 0, 7, 9, 18, 0),
    gsSP2Triangles(19, 7, 20, 0, 4, 21, 22, 0),
    gsSPVertex(&object_hsVtx_0005D0[394], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 12, 13, 10, 0),
    gsSP2Triangles(2, 14, 0, 0, 9, 15, 7, 0),
    gsSPEndDisplayList(),
};

Gfx object_hs_DL_004BF0[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_hsVtx_0005D0[347], 4, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_hs_Tex_005A90, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 4, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 2, 2, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x000C, 0x000C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hsVtx_0005D0[351], 12, 4),
    gsSP2Triangles(4, 5, 0, 0, 1, 6, 7, 0),
    gsSP2Triangles(0, 8, 9, 0, 10, 11, 1, 0),
    gsSP2Triangles(1, 2, 12, 0, 13, 2, 0, 0),
    gsSP2Triangles(0, 3, 14, 0, 15, 3, 1, 0),
    gsSPVertex(&object_hsVtx_0005D0[363], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 6, 1, 0, 3, 6, 5, 0),
    gsSP2Triangles(4, 7, 2, 0, 2, 7, 0, 0),
    gsSP2Triangles(1, 0, 5, 0, 5, 4, 3, 0),
    gsSPEndDisplayList(),
};

Gfx object_hs_DL_004CF0[] = {
    gsSPEndDisplayList(),
};

Gfx object_hs_DL_004CF8[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_hsVtx_0005D0[305], 4, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_hs_TLUT_004E50),
    gsDPLoadTextureBlock(object_hs_Tex_005990, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hsVtx_0005D0[309], 20, 4),
    gsSP2Triangles(4, 5, 0, 0, 6, 1, 7, 0),
    gsSP2Triangles(8, 1, 2, 0, 2, 9, 10, 0),
    gsSP2Triangles(11, 12, 3, 0, 3, 0, 13, 0),
    gsSP2Triangles(14, 15, 0, 0, 3, 16, 17, 0),
    gsSP2Triangles(18, 19, 2, 0, 0, 20, 21, 0),
    gsSP2Triangles(0, 1, 22, 0, 23, 2, 3, 0),
    gsSPVertex(&object_hsVtx_0005D0[329], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(9, 11, 10, 0, 9, 12, 11, 0),
    gsSP2Triangles(7, 13, 1, 0, 7, 1, 0, 0),
    gsSP2Triangles(4, 14, 5, 0, 3, 5, 15, 0),
    gsSP2Triangles(16, 6, 0, 0, 3, 14, 4, 0),
    gsSP2Triangles(9, 8, 17, 0, 0, 3, 16, 0),
    gsSPEndDisplayList(),
};

u64 object_hs_TLUT_004E50[] = {
#include "assets/objects/object_hs/tlut_00004E50.rgba16.inc.c"
};

u64 object_hs_Tex_005050[] = {
#include "assets/objects/object_hs/tex_00005050.ci8.inc.c"
};

u64 object_hs_Tex_005250[] = {
#include "assets/objects/object_hs/tex_00005250.ci8.inc.c"
};

u64 object_hs_Tex_005290[] = {
#include "assets/objects/object_hs/tex_00005290.ci8.inc.c"
};

u64 object_hs_Tex_005490[] = {
#include "assets/objects/object_hs/tex_00005490.rgba16.inc.c"
};

u64 object_hs_Tex_005890[] = {
#include "assets/objects/object_hs/tex_00005890.ci8.inc.c"
};

u64 object_hs_Tex_005990[] = {
#include "assets/objects/object_hs/tex_00005990.ci8.inc.c"
};

u64 object_hs_Tex_005A90[] = {
#include "assets/objects/object_hs/tex_00005A90.rgba16.inc.c"
};

u64 object_hs_Tex_005AB0[] = {
#include "assets/objects/object_hs/tex_00005AB0.ci8.inc.c"
};

u64 object_hs_Tex_005AF0[] = {
#include "assets/objects/object_hs/tex_00005AF0.ci8.inc.c"
};

u64 object_hs_Tex_005EF0[] = {
#include "assets/objects/object_hs/tex_00005EF0.ci8.inc.c"
};

u64 object_hs_Tex_005F70[] = {
#include "assets/objects/object_hs/tex_00005F70.ci8.inc.c"
};

StandardLimb object_hs_Limb_006170 = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb object_hs_Limb_00617C = { 
    { 650, 3000, -1550 }, 0x02, 0x04,
    object_hs_DL_004AB8
};

StandardLimb object_hs_Limb_006188 = { 
    { 1050, 0, 0 }, 0x03, LIMB_DONE,
    object_hs_DL_004BF0
};

StandardLimb object_hs_Limb_006194 = { 
    { 900, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_hs_DL_004CF8
};

StandardLimb object_hs_Limb_0061A0 = { 
    { -650, 3000, -1550 }, 0x05, 0x07,
    object_hs_DL_004728
};

StandardLimb object_hs_Limb_0061AC = { 
    { 1050, 0, 0 }, 0x06, LIMB_DONE,
    object_hs_DL_004860
};

StandardLimb object_hs_Limb_0061B8 = { 
    { 900, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_hs_DL_004960
};

StandardLimb object_hs_Limb_0061C4 = { 
    { 0, 3650, -1000 }, 0x08, 0x0B,
    NULL
};

StandardLimb object_hs_Limb_0061D0 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x09,
    object_hs_DL_004380
};

StandardLimb object_hs_Limb_0061DC = { 
    { 0, 0, 0 }, LIMB_DONE, 0x0A,
    object_hs_DL_0042A0
};

StandardLimb object_hs_Limb_0061E8 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_hs_DL_004140
};

StandardLimb object_hs_Limb_0061F4 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x0C,
    object_hs_DL_004CF0
};

StandardLimb object_hs_Limb_006200 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x0D,
    object_hs_DL_004CF0
};

StandardLimb object_hs_Limb_00620C = { 
    { 0, 0, 0 }, LIMB_DONE, 0x0E,
    object_hs_DL_003AB0
};

StandardLimb object_hs_Limb_006218 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_hs_DL_003760
};

void* object_hs_Skel_006260Limbs[] = {
    &object_hs_Limb_006170,
    &object_hs_Limb_00617C,
    &object_hs_Limb_006188,
    &object_hs_Limb_006194,
    &object_hs_Limb_0061A0,
    &object_hs_Limb_0061AC,
    &object_hs_Limb_0061B8,
    &object_hs_Limb_0061C4,
    &object_hs_Limb_0061D0,
    &object_hs_Limb_0061DC,
    &object_hs_Limb_0061E8,
    &object_hs_Limb_0061F4,
    &object_hs_Limb_006200,
    &object_hs_Limb_00620C,
    &object_hs_Limb_006218,
};

FlexSkeletonHeader object_hs_Skel_006260 = { 
    { object_hs_Skel_006260Limbs, ARRAY_COUNT(object_hs_Skel_006260Limbs) }, 13
};

