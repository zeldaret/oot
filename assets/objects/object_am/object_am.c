#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_am.h"

CamData gArmosColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gArmosColSurfaceType[] = {
    { 0x00E00000, 0x000007C0 },
};

u8 object_am_unaccounted_000010[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0xC2, 
};

CollisionPoly gArmosColPolygons[] = {
    {0x0000, 0x2001, 0x0004, 0x0005, 0x7FFF, 0x0000, 0x0000, 0xF830},
    {0x0000, 0x2001, 0x0005, 0x0002, 0x7FFF, 0x0000, 0x0000, 0xF830},
    {0x0000, 0x2002, 0x0005, 0x0006, 0x0000, 0x0000, 0x7FFF, 0xF95C},
    {0x0000, 0x2002, 0x0006, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xF95C},
    {0x0000, 0x2003, 0x0006, 0x0007, 0x8001, 0x0000, 0x0000, 0xF830},
    {0x0000, 0x2003, 0x0007, 0x0000, 0x8001, 0x0000, 0x0000, 0xF830},
    {0x0000, 0x2000, 0x0007, 0x0004, 0x0000, 0x0000, 0x8001, 0xF95C},
    {0x0000, 0x2000, 0x0004, 0x0001, 0x0000, 0x0000, 0x8001, 0xF95C},
    {0x0000, 0x2006, 0x0005, 0x0008, 0x0000, 0x0000, 0xE000, 0xFA24},
    {0x0000, 0x2006, 0x0008, 0x0007, 0x2000, 0x0000, 0x0000, 0xFA24},
    {0x0000, 0x2004, 0x0007, 0x0008, 0x0000, 0x0000, 0x2000, 0xF63C},
    {0x0000, 0x2004, 0x0008, 0x0005, 0xE000, 0x0000, 0x0000, 0xF63C},
};

Vec3s gArmosColVertices[] = {
    {  -1700,  -2000,  -2000 },
    {   1700,  -2000,  -2000 },
    {   1700,  -2000,   2500 },
    {  -1700,  -2000,   2500 },
    {   1700,   4500,  -2000 },
    {   1700,   4500,   2500 },
    {  -1700,   4500,   2500 },
    {  -1700,   4500,  -2000 },
    {      0,   6500,   -500 },
};

CollisionHeader gArmosCol = { 
    { -1700, 0, -2000 },
    { 1700, 6500, 2500 },
    9, gArmosColVertices,
    12, gArmosColPolygons,
    gArmosColSurfaceType,
    gArmosColCamDataList,
    0, NULL
};

u8 object_am_possiblePadding_000144[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sArmosHopAnimFrameData[] = {
    0x0000, 0x0640, 0x4000, 0xC000, 0x4000, 0x40F8, 0x4362, 0x4680, 0x4993, 0x4BDD, 0x4CA1, 0x4A7A, 0x45DF, 0x40E1, 
    0x3D8E, 0x3D22, 0x3E75, 0x4000, 0x41EA, 0x4342, 0x4314, 0x429D, 0x41FA, 0x4148, 0x40A5, 0x402E, 0x4000, 0x8000, 
    0x7EB8, 0x7BA3, 0x77E2, 0x7496, 0x72E3, 0x73E9, 0x7E64, 0x8F3F, 0x98E4, 0x9793, 0x9223, 0x8ADD, 0x840E, 0x8000, 
    0x7E89, 0x7DD9, 0x7DC2, 0x7E16, 0x7EA7, 0x7F48, 0x7FCA, 0x8000, 0x8000, 0x7EB8, 0x7BA3, 0x77E2, 0x7496, 0x72E3, 
    0x73E9, 0x7E64, 0x8F3F, 0x98E4, 0x9793, 0x9223, 0x8ADD, 0x840E, 0x8000, 0x7E89, 0x7DD9, 0x7DC2, 0x7E16, 0x7EA7, 
    0x7F48, 0x7FCA, 0x8000, 0x0000, 
};

JointIndex sArmosHopAnimJointIndices[] = {
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0004 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x001B },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x0032 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gArmosHopAnim = { 
    { 23 }, sArmosHopAnimFrameData,
    sArmosHopAnimJointIndices, 4
};

u8 object_am_possiblePadding_000248[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sArmosRicochetAnimFrameData[] = {
    0x0000, 0x0640, 0x4000, 0xC000, 0x4000, 0x3B76, 0x3BB6, 0x3C5C, 0x3D3F, 0x3E37, 0x3F1A, 0x3FC0, 0x4000, 0xEE39, 
    0xEDCE, 0xED1C, 0xECF9, 0xEE39, 0xF240, 0xF839, 0xFDA4, 0x0000, 0xE38E, 0xE2E4, 0xE1C7, 0xE18E, 0xE38E, 0xEA00, 
    0xF38E, 0xFC39, 0x0000, 0x78E4, 0x78B9, 0x7872, 0x7864, 0x78E4, 0x7A80, 0x7CE4, 0x7F0E, 0x8000, 0x11C7, 0x1232, 
    0x12E4, 0x1307, 0x11C7, 0x0DC0, 0x07C7, 0x025C, 0x0000, 0x1C72, 0x1D1C, 0x1E39, 0x1E72, 0x1C72, 0x1600, 0x0C72, 
    0x03C7, 0x0000, 0x78E4, 0x78B9, 0x7872, 0x7864, 0x78E4, 0x7A80, 0x7CE4, 0x7F0E, 0x8000, 0xB8E4, 0xB680, 0xB155, 
    0xAC64, 0xAAAB, 0xAE80, 0xB5C7, 0xBCD5, 0xC000, 
};

JointIndex sArmosRicochetAnimJointIndices[] = {
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0004 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x000D, 0x0016, 0x001F },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0028, 0x0031, 0x003A },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0043 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gArmosRicochetAnim = { 
    { 9 }, sArmosRicochetAnimFrameData,
    sArmosRicochetAnimJointIndices, 4
};

Vtx object_amVtx_000350[] = {
#include "assets/objects/object_am/object_amVtx_000350.vtx.inc"
};

Gfx gArmosSkelLimbsLimb_005908DL_0005D0[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_amTex_002838, G_IM_FMT_I, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_amVtx_000350, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_amTex_002638, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_amVtx_000350[20], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSPEndDisplayList(),
};

u8 object_am_unaccounted_0006E8[] = {
    0x01, 0xF4, 0x02, 0xBC, 0xFE, 0x0C, 0x00, 0x00, 0x03, 0xFD, 0xFF, 0xF7, 0xF1, 0x70, 0x26, 0xFF, 
    0xFE, 0x0C, 0x01, 0x90, 0x00, 0x00, 0x00, 0x00, 0x04, 0x03, 0x03, 0xFB, 0xF1, 0x70, 0x26, 0xFF, 
    0x00, 0x32, 0x00, 0xFA, 0x02, 0x9A, 0x00, 0x00, 0x00, 0x04, 0x04, 0x02, 0xF1, 0x70, 0x26, 0xFF, 
    0xFE, 0x0C, 0x01, 0x90, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x88, 0x00, 0x55, 0xA6, 0xD3, 0x40, 0xFF, 
    0x00, 0x00, 0xFD, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x02, 0x57, 0x03, 0xF0, 0xA6, 0xD3, 0x40, 0xFF, 
    0x00, 0x32, 0x00, 0xFA, 0x02, 0x9A, 0x00, 0x00, 0x04, 0x33, 0x00, 0x2F, 0xA6, 0xD3, 0x40, 0xFF, 
    0x00, 0x00, 0xFD, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x04, 0x1E, 0x00, 0x2A, 0x6F, 0xE1, 0x1F, 0xFF, 
    0x01, 0xF4, 0x02, 0xBC, 0xFE, 0x0C, 0x00, 0x00, 0x00, 0x0D, 0x03, 0xB7, 0x6F, 0xE1, 0x1F, 0xFF, 
    0x00, 0x32, 0x00, 0xFA, 0x02, 0x9A, 0x00, 0x00, 0x04, 0xA7, 0x03, 0xCA, 0x6F, 0xE1, 0x1F, 0xFF, 
    0x00, 0x00, 0xFD, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x06, 0x3B, 0x03, 0x2B, 0xD1, 0xE9, 0x95, 0xFF, 
    0xFE, 0x0C, 0x01, 0x90, 0x00, 0x00, 0x00, 0x00, 0x02, 0x2B, 0xFF, 0xF7, 0xD1, 0xE9, 0x95, 0xFF, 
    0x01, 0xF4, 0x02, 0xBC, 0xFE, 0x0C, 0x00, 0x00, 0xFF, 0xFE, 0x03, 0xF2, 0xD1, 0xE9, 0x95, 0xFF, 
    0xE7, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xD7, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 
    0xFD, 0x10, 0x00, 0x00, 0x06, 0x00, 0x32, 0x38, 0xF5, 0x10, 0x00, 0x00, 0x07, 0x01, 0x40, 0x50, 
    0xE6, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF3, 0x00, 0x00, 0x00, 0x07, 0x3F, 0xF1, 0x00, 
    0xE7, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF5, 0x10, 0x10, 0x00, 0x00, 0x01, 0x40, 0x50, 
    0xF2, 0x00, 0x00, 0x00, 0x00, 0x07, 0xC0, 0x7C, 0xFC, 0x12, 0x7E, 0x03, 0xFF, 0x0F, 0xF3, 0xFF, 
    0xE2, 0x00, 0x00, 0x1C, 0xC8, 0x11, 0x20, 0x78, 0xD9, 0xF3, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 
    0xD9, 0xFF, 0xFF, 0xFF, 0x00, 0x02, 0x04, 0x00, 0xFA, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 
    0x01, 0x00, 0xC0, 0x18, 0x06, 0x00, 0x06, 0xE8, 0x06, 0x00, 0x02, 0x04, 0x00, 0x06, 0x08, 0x0A, 
    0x06, 0x0C, 0x0E, 0x10, 0x00, 0x12, 0x14, 0x16, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_amVtx_000838[] = {
#include "assets/objects/object_am/object_amVtx_000838.vtx.inc"
};

Gfx gArmosSkelLimbsLimb_00589CDL_0016C8[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_amTex_002638, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, 1, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_amTex_003C38, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0, 0,
                       0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_amVtx_000838, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_amVtx_000838[3], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_amTex_002638, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_amTex_003238, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_amVtx_000838[6], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_amVtx_000838[36], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_amVtx_000838[39], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_amTex_002838, G_IM_FMT_I, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_amTex_004C38, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_amVtx_000838[42], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_amVtx_000838[45], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_amTex_002838, G_IM_FMT_I, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_amTex_003C38, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_amVtx_000838[48], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 9, 8, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 20, 23, 0),
    gsSP1Triangle(24, 25, 26, 0),
    gsSPVertex(&object_amVtx_000838[75], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_amTex_002638, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, 14, 15),
    gsDPLoadMultiBlock(object_amTex_003A38, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_amVtx_000838[78], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 18, 19, 16, 0),
    gsSP2Triangles(3, 20, 4, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 23, 22, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 25, 27, 0, 29, 30, 31, 0),
    gsSP1Triangle(31, 19, 29, 0),
    gsSPVertex(&object_amVtx_000838[110], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_amVtx_000838[113], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_amTex_003038, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_amTex_004438, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_amVtx_000838[116], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_amVtx_000838[119], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_amTex_002638, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_amTex_002938, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_amVtx_000838[122], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_amVtx_000838[125], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_amVtx_000838[155], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP1Triangle(18, 19, 20, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_amTex_002638, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_amTex_003C38, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_amVtx_000838[176], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(3, 4, 0, 0, 5, 6, 7, 0),
    gsSPVertex(&object_amVtx_000838[184], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_amTex_002838, G_IM_FMT_I, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsSPVertex(&object_amVtx_000838[187], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_amTex_002638, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_amVtx_000838[197], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_amTex_002D38, G_IM_FMT_I, 16, 32, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR |
                            G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_amVtx_000838[201], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_amTex_002E38, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_amVtx_000838[205], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_amTex_002D38, G_IM_FMT_I, 16, 32, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR |
                            G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 119, 119, 119, 255),
    gsSPVertex(&object_amVtx_000838[209], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx object_amVtx_001EA8[] = {
#include "assets/objects/object_am/object_amVtx_001EA8.vtx.inc"
};

Gfx gArmosSkelLimbsLimb_0058E4DL_002278[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_amTex_002638, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, 5, 1),
    gsDPLoadMultiBlock_4b(object_amTex_005438, 0x0100, 1, G_IM_FMT_I, 16, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                          G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0, 0,
                       0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_amVtx_001EA8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_amVtx_001EA8[30], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_amVtx_001EA8[33], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_amTex_002638, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_amTex_003A38, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_amVtx_001EA8[36], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 8, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 17, 0, 18, 19, 20, 0),
    gsSP1Triangle(18, 20, 21, 0),
    gsSPVertex(&object_amVtx_001EA8[58], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx object_amVtx_002440[] = {
#include "assets/objects/object_am/object_amVtx_002440.vtx.inc"
};

Gfx gArmosSkelLimbsLimb_0058C0DL_002550[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_amTex_002D38, G_IM_FMT_I, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 4, 5, 1, 2),
    gsDPLoadMultiBlock(object_amTex_005478, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                       G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0, 0,
                       0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_amVtx_002440, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 2, 9, 0, 0),
    gsSP2Triangles(8, 10, 6, 0, 11, 12, 13, 0),
    gsSP1Triangle(13, 4, 11, 0),
    gsSPVertex(&object_amVtx_002440[14], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u64 object_amTex_002638[] = {
#include "assets/objects/object_am/object_amTex_002638.i4.inc.c"
};

u64 object_amTex_002838[] = {
#include "assets/objects/object_am/object_amTex_002838.i4.inc.c"
};

u64 object_amTex_002938[] = {
#include "assets/objects/object_am/object_amTex_002938.rgba16.inc.c"
};

u64 object_amTex_002D38[] = {
#include "assets/objects/object_am/object_amTex_002D38.i4.inc.c"
};

u64 object_amTex_002E38[] = {
#include "assets/objects/object_am/object_amTex_002E38.i4.inc.c"
};

u64 object_amTex_003038[] = {
#include "assets/objects/object_am/object_amTex_003038.i4.inc.c"
};

u64 object_amTex_003238[] = {
#include "assets/objects/object_am/object_amTex_003238.rgba16.inc.c"
};

u64 object_amTex_003A38[] = {
#include "assets/objects/object_am/object_amTex_003A38.rgba16.inc.c"
};

u64 object_amTex_003C38[] = {
#include "assets/objects/object_am/object_amTex_003C38.rgba16.inc.c"
};

u64 object_amTex_004438[] = {
#include "assets/objects/object_am/object_amTex_004438.rgba16.inc.c"
};

u64 object_amTex_004C38[] = {
#include "assets/objects/object_am/object_amTex_004C38.rgba16.inc.c"
};

u64 object_amTex_005438[] = {
#include "assets/objects/object_am/object_amTex_005438.i4.inc.c"
};

u64 object_amTex_005478[] = {
#include "assets/objects/object_am/object_amTex_005478.rgba16.inc.c"
};

StandardLimb gArmosSkelLimbsLimb_005878 = { 
    { 0, 1600, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gArmosSkelLimbsLimb_005884 = { 
    { 0, 0, 0 }, 0x02, 0x0A,
    NULL
};

StandardLimb gArmosSkelLimbsLimb_005890 = { 
    { 0, 0, 0 }, 0x03, LIMB_DONE,
    NULL
};

StandardLimb gArmosSkelLimbsLimb_00589C = { 
    { 0, 0, 0 }, LIMB_DONE, 0x04,
    gArmosSkelLimbsLimb_00589CDL_0016C8
};

StandardLimb gArmosSkelLimbsLimb_0058A8 = { 
    { 500, 1600, 900 }, 0x05, 0x07,
    NULL
};

StandardLimb gArmosSkelLimbsLimb_0058B4 = { 
    { 0, 0, 0 }, 0x06, LIMB_DONE,
    NULL
};

StandardLimb gArmosSkelLimbsLimb_0058C0 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gArmosSkelLimbsLimb_0058C0DL_002550
};

StandardLimb gArmosSkelLimbsLimb_0058CC = { 
    { 500, 1600, -900 }, 0x08, LIMB_DONE,
    NULL
};

StandardLimb gArmosSkelLimbsLimb_0058D8 = { 
    { 0, 0, 0 }, 0x09, LIMB_DONE,
    NULL
};

StandardLimb gArmosSkelLimbsLimb_0058E4 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gArmosSkelLimbsLimb_0058E4DL_002278
};

StandardLimb gArmosSkelLimbsLimb_0058F0 = { 
    { 0, 0, 0 }, 0x0B, LIMB_DONE,
    NULL
};

StandardLimb gArmosSkelLimbsLimb_0058FC = { 
    { 0, 0, 0 }, 0x0C, LIMB_DONE,
    NULL
};

StandardLimb gArmosSkelLimbsLimb_005908 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gArmosSkelLimbsLimb_005908DL_0005D0
};

void* gArmosSkelLimbs[] = {
    &gArmosSkelLimbsLimb_005878,
    &gArmosSkelLimbsLimb_005884,
    &gArmosSkelLimbsLimb_005890,
    &gArmosSkelLimbsLimb_00589C,
    &gArmosSkelLimbsLimb_0058A8,
    &gArmosSkelLimbsLimb_0058B4,
    &gArmosSkelLimbsLimb_0058C0,
    &gArmosSkelLimbsLimb_0058CC,
    &gArmosSkelLimbsLimb_0058D8,
    &gArmosSkelLimbsLimb_0058E4,
    &gArmosSkelLimbsLimb_0058F0,
    &gArmosSkelLimbsLimb_0058FC,
    &gArmosSkelLimbsLimb_005908,
};

SkeletonHeader gArmosSkel = { 
    gArmosSkelLimbs, ARRAY_COUNT(gArmosSkelLimbs)
};

s16 sArmosDamagedAnimFrameData[] = {
    0x0000, 0x4000, 0xC000, 0x0640, 0x0706, 0x07CC, 0x07C8, 0x07BD, 0x07AC, 0x0795, 0x077A, 0x075B, 0x073A, 0x0718, 
    0x06F5, 0x06D2, 0x06B1, 0x0693, 0x0677, 0x0661, 0x064F, 0x0644, 0x0640, 0x0000, 0x03E1, 0x07C1, 0x07AD, 0x0775, 
    0x071E, 0x06AB, 0x0623, 0x058A, 0x04E5, 0x0438, 0x0389, 0x02DD, 0x0237, 0x019E, 0x0116, 0x00A4, 0x004C, 0x0014, 
    0x0000, 0x4000, 0x3555, 0x2AAB, 0x2AE1, 0x2B7C, 0x2C6D, 0x2DA7, 0x2F1E, 0x30C3, 0x328A, 0x3465, 0x3646, 0x3821, 
    0x39E7, 0x3B8D, 0x3D03, 0x3E3E, 0x3F2F, 0x3FCA, 0x4000, 0x0000, 0xFB86, 0xF24E, 0xEAAB, 0xE65A, 0xE39E, 0xE38E, 
    0xE57C, 0xE7EA, 0xEABC, 0xEDD5, 0xF118, 0xF46A, 0xF7AC, 0xFAC4, 0xFD94, 0x0000, 0x00F9, 0x007C, 0x0000, 0x0000, 
    0xF9BB, 0xED4D, 0xE444, 0xE2B0, 0xE481, 0xE71C, 0xE95D, 0xEBD1, 0xEE6B, 0xF11B, 0xF3D4, 0xF688, 0xF927, 0xFBA5, 
    0xFDF2, 0x0000, 0x00DA, 0x006D, 0x0000, 0x8000, 0x87E0, 0x97F8, 0xA4FA, 0xAB6E, 0xAECD, 0xAE39, 0xAAF2, 0xA6E9, 
    0xA24C, 0x9D45, 0x9800, 0x92A9, 0x8D6B, 0x8873, 0x83EB, 0x8000, 0x7E6B, 0x7F36, 0x8000, 0x0000, 0x047A, 0x0DB2, 
    0x1555, 0x19A6, 0x1C62, 0x1C72, 0x1A84, 0x1816, 0x1544, 0x122B, 0x0EE8, 0x0B96, 0x0854, 0x053C, 0x026C, 0x0000, 
    0xFF07, 0xFF84, 0x0000, 0x0000, 0x0645, 0x12B3, 0x1BBC, 0x1D50, 0x1B7F, 0x18E4, 0x16A3, 0x142F, 0x1195, 0x0EE5, 
    0x0C2C, 0x0978, 0x06D9, 0x045B, 0x020E, 0x0000, 0xFF26, 0xFF93, 0x0000, 0x8000, 0x87E5, 0x9802, 0xA4FA, 0xAB41, 
    0xAE65, 0xADB2, 0xAA6E, 0xA66E, 0xA1DC, 0x9CE4, 0x97B0, 0x926B, 0x8D3F, 0x8857, 0x83DF, 0x8000, 0x7E70, 0x7F38, 
    0x8000, 0xC000, 0xC99A, 0xD333, 0xD302, 0xD277, 0xD19E, 0xD083, 0xCF32, 0xCDB7, 0xCC1D, 0xCA72, 0xC8C1, 0xC716, 
    0xC57D, 0xC401, 0xC2B0, 0xC195, 0xC0BC, 0xC031, 0xC000, 0x0000, 
};

JointIndex sArmosDamagedAnimJointIndices[] = {
    { 0x0000, 0x0003, 0x0017 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0000, 0x002B },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0002 },
    { 0x003F, 0x0053, 0x0067 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0002 },
    { 0x007B, 0x008F, 0x00A3 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0000, 0x00B7 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gArmosDamagedAnim = { 
    { 20 }, sArmosDamagedAnimFrameData,
    sArmosDamagedAnimJointIndices, 3
};

