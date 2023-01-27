#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_dekubaba.h"

s16 sDekuBabaPauseChompAnimFrameData[] = {
    0x0000, 0x4000, 0xF9DC, 0x2E13, 0x2D0A, 0x2A67, 0x26DC, 0x2319, 0x1FD0, 0x1C99, 0x1921, 0x163C, 0x14BF, 0x148E, 
    0x14E6, 0x15A0, 0x1696, 0x179F, 0x1897, 0x1955, 0x19B3, 0x19D4, 0x19F3, 0x1A10, 0x1A2B, 0x1A45, 0x1A5D, 0x1A72, 
    0x1A86, 0x1A97, 0x1AA7, 0x1AB4, 0x1ABF, 0x1AC7, 0x1ACD, 0x1AD1, 0x1AD2, 0x1AD0, 0x1ACC, 0x1AC5, 0x1ABB, 0x1AAF, 
    0x1A9F, 0x1A8D, 0x1A77, 0x1A5F, 0x1A43, 0x1A24, 0x1A02, 0x19DC, 0x19B3, 0x1957, 0x18A8, 0x17BF, 0x16B4, 0x159F, 
    0x149A, 0x13BD, 0x1320, 0x12DC, 0x1309, 0x1381, 0x140C, 0x14A8, 0x1554, 0x160F, 0x16D7, 0x17AB, 0x188A, 0x1971, 
    0x1A60, 0x1B55, 0x1C4F, 0x1D4D, 0x1E4C, 0x1F4C, 0x204B, 0x2148, 0x2242, 0x2336, 0x2424, 0x250A, 0x25E7, 0x26B9, 
    0x277F, 0x2838, 0x28E2, 0x297B, 0x2A03, 0x2A78, 0x2ABD, 0x2ABE, 0x2A87, 0x2A20, 0x2994, 0x28EF, 0x283A, 0x277F, 
    0x26C9, 0x2623, 0x2597, 0x252F, 0x24F6, 0x24F6, 0x252F, 0x2597, 0x2625, 0x26D3, 0x2799, 0x2870, 0x294F, 0x2A30, 
    0x2B0B, 0x2BD9, 0x2C92, 0x2D2F, 0x2DA9, 0x2DF7, 0x2E13, 0x3A4C, 0x3A35, 0x39F7, 0x399D, 0x3930, 0x38BA, 0x3845, 
    0x37DC, 0x3789, 0x3755, 0x374A, 0x3773, 0x37DA, 0x39D4, 0x3D82, 0x411C, 0x42DA, 0x4297, 0x418D, 0x4000, 0x3E3A, 
    0x3C80, 0x3B19, 0x3A4C, 0x3A00, 0x39E7, 0x39F7, 0x3A25, 0x3A6A, 0x3ABA, 0x3B0B, 0x3B55, 0x3B8E, 0x3BAB, 0x3BA3, 
    0x3B6C, 0x3AFD, 0x3A4C, 0x388E, 0x3578, 0x31BB, 0x2E0A, 0x2B18, 0x2997, 0x291C, 0x28C2, 0x2887, 0x2869, 0x2864, 
    0x2875, 0x289B, 0x28D1, 0x2916, 0x2967, 0x29C0, 0x2A20, 0x2A83, 0x2AE7, 0x2B48, 0x2BA5, 0x2BFA, 0x2C44, 0x2C82, 
    0x2CC6, 0x2D21, 0x2D8B, 0x2DFB, 0x2E68, 0x2EC9, 0x2F17, 0x2F48, 0x2F65, 0x2F7C, 0x2F8D, 0x2F9B, 0x2FA4, 0x2FA9, 
    0x2FAC, 0x2FAC, 0x2FAB, 0x2FA9, 0x2FA5, 0x2FA2, 0x2FA0, 0x2F9F, 0x2F9F, 0x2FA2, 0x2FA8, 0x2FB1, 0x2FBF, 0x2FD1, 
    0x2FE8, 0x3005, 0x3029, 0x3053, 0x3086, 0x30C0, 0x310C, 0x3170, 0x31E9, 0x3274, 0x330D, 0x33B1, 0x345E, 0x350F, 
    0x35C2, 0x3673, 0x371F, 0x37C3, 0x385C, 0x38E6, 0x395E, 0x39C1, 0x3A0C, 0x3A3B, 0x3A4C, 0x0000, 
};

JointIndex sDekuBabaPauseChompAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0002, 0x0001 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0002, 0x0001 },
    { 0x0000, 0x0000, 0x0077 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gDekuBabaPauseChompAnim = { 
    { 116 }, sDekuBabaPauseChompAnimFrameData,
    sDekuBabaPauseChompAnimJointIndices, 3
};

u8 object_dekubaba_possiblePadding_000218[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sDekuBabaFastChompAnimFrameData[] = {
    0x0000, 0x4000, 0xF9DC, 0x37DA, 0x35BC, 0x308B, 0x2A01, 0x23DA, 0x1FD0, 0x1DD8, 0x1CCC, 0x1CBB, 0x1DB7, 0x1FD0, 
    0x2A12, 0x328E, 0x2F7A, 0x2960, 0x2253, 0x1C68, 0x19B3, 0x1AED, 0x1E9F, 0x2395, 0x289C, 0x2C82, 0x2E13, 0x37DA, 
    0x37CC, 0x37A9, 0x3777, 0x373D, 0x3704, 0x36D2, 0x36AE, 0x36A1, 0x36B1, 0x36E5, 0x3746, 0x37DA, 0x39EA, 0x3D96, 
    0x4123, 0x42DA, 0x428B, 0x4162, 0x3FB4, 0x3DD4, 0x3C15, 0x3ACC, 0x3A4C, 0x0000, 
};

JointIndex sDekuBabaFastChompAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0002, 0x0001 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0002, 0x0001 },
    { 0x0000, 0x0000, 0x001B },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gDekuBabaFastChompAnim = { 
    { 24 }, sDekuBabaFastChompAnimFrameData,
    sDekuBabaFastChompAnimJointIndices, 3
};

u8 object_dekubaba_possiblePadding_0002C8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_dekubabaVtx_0002D0[] = {
#include "assets/objects/object_dekubaba/object_dekubabaVtx_0002D0.vtx.inc"
};

Gfx gDekuBabaLowerJawDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gDekuBabaJawInnerTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_dekubabaVtx_0002D0, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 4, 5, 3, 0),
    gsSP2Triangles(4, 6, 5, 0, 7, 6, 4, 0),
    gsSP2Triangles(8, 7, 4, 0, 8, 4, 1, 0),
    gsSP2Triangles(9, 1, 10, 0, 9, 8, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gDekuBabaJawOuterTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_dekubabaVtx_0002D0[11], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 4, 3, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 1, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 14, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPEndDisplayList(),
};

Vtx object_dekubabaVtx_0006A8[] = {
#include "assets/objects/object_dekubaba/object_dekubabaVtx_0006A8.vtx.inc"
};

Gfx gDekuBabaUpperJawDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gDekuBabaJawInnerTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_dekubabaVtx_0006A8, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gDekuBabaJawOuterTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_dekubabaVtx_0006A8[18], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 12, 9, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 2, 25, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gDekuBabaLeafTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_dekubabaVtx_0006A8[44], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 0, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 6, 0, 19, 20, 6, 0),
    gsSP2Triangles(21, 22, 23, 0, 0, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPEndDisplayList(),
};

Vtx object_dekubabaVtx_000D00[] = {
#include "assets/objects/object_dekubaba/object_dekubabaVtx_000D00.vtx.inc"
};

Gfx gDekuBabaBaseLeavesDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gDekuBabaBulbTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_dekubabaVtx_000D00, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gDekuBabaLeafTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_dekubabaVtx_000D00[9], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_dekubabaVtx_000D00[39], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx object_dekubabaVtx_001230[] = {
#include "assets/objects/object_dekubaba/object_dekubabaVtx_001230.vtx.inc"
};

Gfx gDekuBabaStemTopDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gDekuBabaStemTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_dekubabaVtx_001230, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_dekubabaVtx_001230[12], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Vtx object_dekubabaVtx_0013E8[] = {
#include "assets/objects/object_dekubaba/object_dekubabaVtx_0013E8.vtx.inc"
};

Gfx gDekuBabaStemMiddleDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gDekuBabaStemTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_dekubabaVtx_0013E8, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 3, 5, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(7, 10, 8, 0, 7, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(13, 16, 14, 0, 13, 17, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(21, 22, 20, 0, 22, 23, 20, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_dekubabaVtx_0013E8[24], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 3, 5, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(7, 10, 8, 0, 7, 11, 10, 0),
    gsSPEndDisplayList(),
};

Vtx object_dekubabaVtx_001728[] = {
#include "assets/objects/object_dekubaba/object_dekubabaVtx_001728.vtx.inc"
};

Gfx gDekuBabaStemBaseDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gDekuBabaStemTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_dekubabaVtx_001728, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSPEndDisplayList(),
};

u64 gDekuBabaJawOuterTex[] = {
#include "assets/objects/object_dekubaba/deku_baba_jaw_outer.rgba16.inc.c"
};

u64 gDekuBabaJawInnerTex[] = {
#include "assets/objects/object_dekubaba/deku_baba_jaw_inner.rgba16.inc.c"
};

u64 gDekuBabaLeafTex[] = {
#include "assets/objects/object_dekubaba/deku_baba_leaf.rgba16.inc.c"
};

u64 gDekuBabaBulbTex[] = {
#include "assets/objects/object_dekubaba/deku_baba_bulb.rgba16.inc.c"
};

u64 gDekuBabaStemTex[] = {
#include "assets/objects/object_dekubaba/deku_baba_stem.rgba16.inc.c"
};

StandardLimb object_dekubaba_Limb_0029D0 = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb object_dekubaba_Limb_0029DC = { 
    { 0, 43, -114 }, 0x02, 0x04,
    NULL
};

StandardLimb object_dekubaba_Limb_0029E8 = { 
    { 0, 0, 0 }, 0x03, LIMB_DONE,
    NULL
};

StandardLimb object_dekubaba_Limb_0029F4 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gDekuBabaUpperJawDL
};

StandardLimb object_dekubaba_Limb_002A00 = { 
    { 0, -155, -144 }, 0x05, LIMB_DONE,
    NULL
};

StandardLimb object_dekubaba_Limb_002A0C = { 
    { 0, 0, 0 }, 0x06, LIMB_DONE,
    NULL
};

StandardLimb object_dekubaba_Limb_002A18 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gDekuBabaLowerJawDL
};

void* gDekuBabaSkelLimbs[] = {
    &object_dekubaba_Limb_0029D0,
    &object_dekubaba_Limb_0029DC,
    &object_dekubaba_Limb_0029E8,
    &object_dekubaba_Limb_0029F4,
    &object_dekubaba_Limb_002A00,
    &object_dekubaba_Limb_002A0C,
    &object_dekubaba_Limb_002A18,
};

SkeletonHeader gDekuBabaSkel = { 
    gDekuBabaSkelLimbs, ARRAY_COUNT(gDekuBabaSkelLimbs)
};

u8 object_dekubaba_possiblePadding_002A48[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_dekubabaVtx_002A50[] = {
#include "assets/objects/object_dekubaba/object_dekubabaVtx_002A50.vtx.inc"
};

Gfx gDekuBabaStickDropDL[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gDekuBabaStickDropTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 247, 164, 109, 255),
    gsSPVertex(object_dekubabaVtx_002A50, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_dekubabaVtx_002A50[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_dekubabaVtx_002A50[60], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 12, 10, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 255, 255, 127, 255),
    gsSPVertex(&object_dekubabaVtx_002A50[82], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 10, 9, 0, 13, 14, 15, 0),
    gsSPEndDisplayList(),
};

u8 object_dekubaba_possiblePadding_0031B8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gDekuBabaStickDropTex[] = {
#include "assets/objects/object_dekubaba/deku_baba_stick_drop.rgba16.inc.c"
};

