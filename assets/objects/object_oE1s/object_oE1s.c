#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_oE1s.h"

s16 object_oE1s_Anim_00007CFrameData[] = {
    0x0000, 0x0834, 0xFEA2, 0xC000, 0xFFCF, 0x0051, 0x4000, 0x00C7, 0x3FF1, 0x8000, 
};

JointIndex object_oE1s_Anim_00007CJointIndices[] = {
    { 0x0000, 0x0001, 0x0002 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0003, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x0004 },
    { 0x0000, 0x0000, 0x0005 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0006, 0x0007, 0x0008 },
    { 0x0000, 0x0000, 0x0009 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0009 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0005 },
};

AnimationHeader object_oE1s_Anim_00007C = { 
    { 2 }, object_oE1s_Anim_00007CFrameData,
    object_oE1s_Anim_00007CJointIndices, 10
};

u8 object_oE1s_possiblePadding_00008C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

StandardLimb object_oE1s_Limb_000090 = { 
    { 0, 2100, -350 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb object_oE1s_Limb_00009C = { 
    { 0, 0, 0 }, 0x02, 0x08,
    object_oE1s_DL_005010
};

StandardLimb object_oE1s_Limb_0000A8 = { 
    { 250, 0, 200 }, 0x03, 0x05,
    object_oE1s_DL_006490
};

StandardLimb object_oE1s_Limb_0000B4 = { 
    { 759, 0, 0 }, 0x04, LIMB_DONE,
    object_oE1s_DL_006340
};

StandardLimb object_oE1s_Limb_0000C0 = { 
    { 850, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_oE1s_DL_006288
};

StandardLimb object_oE1s_Limb_0000CC = { 
    { 250, 0, -200 }, 0x06, LIMB_DONE,
    object_oE1s_DL_005CF0
};

StandardLimb object_oE1s_Limb_0000D8 = { 
    { 756, 0, 0 }, 0x07, LIMB_DONE,
    object_oE1s_DL_005BA0
};

StandardLimb object_oE1s_Limb_0000E4 = { 
    { 850, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_oE1s_DL_005AE8
};

StandardLimb object_oE1s_Limb_0000F0 = { 
    { 0, 0, 0 }, 0x09, LIMB_DONE,
    object_oE1s_DL_004D98
};

StandardLimb object_oE1s_Limb_0000FC = { 
    { 800, 0, 450 }, 0x0A, 0x0C,
    object_oE1s_DL_006110
};

StandardLimb object_oE1s_Limb_000108 = { 
    { 600, 0, 0 }, 0x0B, LIMB_DONE,
    object_oE1s_DL_005FA8
};

StandardLimb object_oE1s_Limb_000114 = { 
    { 550, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_oE1s_DL_005DC0
};

StandardLimb object_oE1s_Limb_000120 = { 
    { 800, 0, -450 }, 0x0D, 0x0F,
    object_oE1s_DL_005970
};

StandardLimb object_oE1s_Limb_00012C = { 
    { 600, 0, 0 }, 0x0E, LIMB_DONE,
    object_oE1s_DL_005808
};

StandardLimb object_oE1s_Limb_000138 = { 
    { 550, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_oE1s_DL_005620
};

StandardLimb object_oE1s_Limb_000144 = { 
    { 1016, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_oE1s_DL_005150
};

void* object_oE1s_Skel_000190Limbs[] = {
    &object_oE1s_Limb_000090,
    &object_oE1s_Limb_00009C,
    &object_oE1s_Limb_0000A8,
    &object_oE1s_Limb_0000B4,
    &object_oE1s_Limb_0000C0,
    &object_oE1s_Limb_0000CC,
    &object_oE1s_Limb_0000D8,
    &object_oE1s_Limb_0000E4,
    &object_oE1s_Limb_0000F0,
    &object_oE1s_Limb_0000FC,
    &object_oE1s_Limb_000108,
    &object_oE1s_Limb_000114,
    &object_oE1s_Limb_000120,
    &object_oE1s_Limb_00012C,
    &object_oE1s_Limb_000138,
    &object_oE1s_Limb_000144,
};

FlexSkeletonHeader object_oE1s_Skel_000190 = { 
    { object_oE1s_Skel_000190Limbs, ARRAY_COUNT(object_oE1s_Skel_000190Limbs) }, 15
};

u8 object_oE1s_possiblePadding_00019C[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_oE1sTLUT_0001A8[] = {
#include "assets/objects/object_oE1s/object_oE1sTLUT_0001A8.rgba16.inc.c"
};

u64 object_oE1s_TLUT_0003A0[] = {
#include "assets/objects/object_oE1s/tlut_000003A0.rgba16.inc.c"
};

u64 object_oE1sTex_000478[] = {
#include "assets/objects/object_oE1s/object_oE1sTex_000478.ci8.inc.c"
};

u64 object_oE1s_Tex_000878[] = {
#include "assets/objects/object_oE1s/tex_00000878.ci8.inc.c"
};

u64 object_oE1s_Tex_0008B8[] = {
#include "assets/objects/object_oE1s/tex_000008B8.rgba16.inc.c"
};

u64 object_oE1s_Tex_000CB8[] = {
#include "assets/objects/object_oE1s/tex_00000CB8.rgba16.inc.c"
};

u64 object_oE1s_Tex_0014B8[] = {
#include "assets/objects/object_oE1s/tex_000014B8.ci8.inc.c"
};

u64 object_oE1s_Tex_0015B8[] = {
#include "assets/objects/object_oE1s/tex_000015B8.i4.inc.c"
};

u8 object_oE1s_Blob_0015F8[] = {
#include "assets/objects/object_oE1s/object_oE1s_Blob_0015F8.bin.inc.c"
};

u64 object_oE1s_Tex_0019F8[] = {
#include "assets/objects/object_oE1s/tex_000019F8.i4.inc.c"
};

u64 object_oE1s_Tex_001A78[] = {
#include "assets/objects/object_oE1s/tex_00001A78.rgba16.inc.c"
};

u64 object_oE1s_Tex_001B78[] = {
#include "assets/objects/object_oE1s/tex_00001B78.ci8.inc.c"
};

u8 object_oE1s_Blob_001C78[] = {
#include "assets/objects/object_oE1s/object_oE1s_Blob_001C78.bin.inc.c"
};

Vtx object_oE1sVtx_002078[] = {
#include "assets/objects/object_oE1s/object_oE1sVtx_002078.vtx.inc"
};

Gfx object_oE1s_DL_004D98[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE1s_Tex_000878, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE1s_TLUT_0003A0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(object_oE1sVtx_002078, 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP1Triangle(16, 17, 18, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock_4b(object_oE1s_Tex_0019F8, G_IM_FMT_I, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE1sVtx_002078[19], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_oE1sVtx_002078[49], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE1sVtx_002078[55], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 5, 27, 3, 0),
    gsSP2Triangles(14, 28, 12, 0, 0, 29, 1, 0),
    gsSP1Triangle(30, 9, 31, 0),
    gsSPVertex(&object_oE1sVtx_002078[87], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 8, 13, 6, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 16, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 15, 14, 26, 0),
    gsSP2Triangles(27, 28, 18, 0, 29, 30, 31, 0),
    gsSPVertex(&object_oE1sVtx_002078[119], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 7, 0, 3, 7, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(19, 20, 18, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 21, 24, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 29, 27, 0),
    gsSP1Triangle(30, 10, 31, 0),
    gsSPVertex(&object_oE1sVtx_002078[151], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE1s_DL_005010[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_oE1s_Tex_0015B8, G_IM_FMT_I, 16, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE1sVtx_002078[154], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 1, 6, 0, 2, 1, 5, 0),
    gsSP2Triangles(0, 7, 6, 0, 4, 7, 0, 0),
    gsSP2Triangles(6, 1, 0, 0, 2, 3, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_oE1s_Tex_0019F8, G_IM_FMT_I, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE1sVtx_002078[162], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(4, 0, 2, 0, 5, 4, 2, 0),
    gsSP2Triangles(6, 0, 3, 0, 1, 6, 7, 0),
    gsSP2Triangles(2, 8, 5, 0, 0, 6, 1, 0),
    gsSP2Triangles(5, 8, 9, 0, 10, 7, 9, 0),
    gsSP2Triangles(7, 10, 1, 0, 10, 9, 8, 0),
    gsSP2Triangles(1, 10, 8, 0, 8, 2, 1, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE1s_DL_005150[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE1s_Tex_0008B8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE1sVtx_002078[173], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_oE1sVtx_002078[203], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 20, 19, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 8, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 30, 23, 31, 0),
    gsSPVertex(&object_oE1sVtx_002078[235], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE1s_Tex_000CB8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oE1sVtx_002078[245], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 17, 18, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(object_oE1sTex_000478, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE1sTLUT_0001A8),
    gsSPVertex(&object_oE1sVtx_002078[264], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 3, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 2, 14, 0, 0),
    gsSP2Triangles(15, 6, 16, 0, 15, 7, 6, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 16, 0),
    gsSP2Triangles(4, 3, 10, 0, 22, 23, 24, 0),
    gsSP2Triangles(16, 21, 15, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 28, 26, 0, 28, 29, 26, 0),
    gsSPVertex(&object_oE1sVtx_002078[294], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 0, 11, 0, 3, 11, 0, 0),
    gsSP2Triangles(1, 12, 13, 0, 1, 13, 2, 0),
    gsSP2Triangles(13, 12, 10, 0, 10, 11, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0),
    gsSP1Triangle(22, 24, 20, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE1s_Tex_000878, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE1s_TLUT_0003A0),
    gsSPVertex(&object_oE1sVtx_002078[319], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP1Triangle(23, 24, 25, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE1s_Tex_0014B8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oE1sVtx_002078[345], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock_4b(object_oE1s_Tex_0019F8, G_IM_FMT_I, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE1sVtx_002078[351], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 1, 0, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&object_oE1sVtx_002078[382], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 9, 11, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 15, 0, 17, 13, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE1sTLUT_0001A8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE1sVtx_002078[400], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE1s_DL_005620[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE1sTex_000478, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE1sTLUT_0001A8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE1sVtx_002078[408], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 3, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 0, 7, 3, 0),
    gsSP2Triangles(9, 8, 11, 0, 10, 6, 8, 0),
    gsSP2Triangles(2, 12, 0, 0, 2, 1, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE1s_Tex_000878, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE1s_TLUT_0003A0),
    gsSPVertex(&object_oE1sVtx_002078[421], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE1s_Tex_001B78, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oE1sVtx_002078[439], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 3, 5, 0),
    gsSP2Triangles(1, 0, 10, 0, 7, 11, 8, 0),
    gsSP2Triangles(12, 13, 3, 0, 3, 14, 12, 0),
    gsSP2Triangles(3, 13, 4, 0, 15, 16, 17, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE1s_DL_005808[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE1sTex_000478, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE1sTLUT_0001A8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE1sVtx_002078[457], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 7, 0, 4, 0, 2, 0),
    gsSP2Triangles(7, 1, 6, 0, 1, 0, 6, 0),
    gsSP1Triangle(8, 7, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE1s_Tex_000878, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE1s_TLUT_0003A0),
    gsSPVertex(&object_oE1sVtx_002078[467], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 3, 6, 0, 1, 7, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE1s_DL_005970[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE1sTex_000478, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE1sTLUT_0001A8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE1sVtx_002078[475], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 2, 1, 0, 3, 2, 5, 0),
    gsSP2Triangles(1, 6, 5, 0, 2, 4, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE1s_Tex_000878, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE1s_TLUT_0003A0),
    gsSPVertex(&object_oE1sVtx_002078[482], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(10, 9, 12, 0, 0, 2, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE1s_DL_005AE8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE1s_Tex_001A78, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE1sVtx_002078[508], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 3, 7, 1, 0),
    gsSP2Triangles(2, 8, 0, 0, 7, 2, 1, 0),
    gsSP2Triangles(0, 8, 9, 0, 5, 10, 6, 0),
    gsSP2Triangles(6, 11, 4, 0, 3, 12, 7, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE1s_DL_005BA0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE1s_Tex_001A78, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE1sVtx_002078[521], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 0, 8, 0),
    gsSP2Triangles(8, 9, 7, 0, 6, 4, 3, 0),
    gsSP2Triangles(4, 2, 1, 0, 2, 8, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(object_oE1s_Tex_000878, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE1s_TLUT_0003A0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE1sVtx_002078[531], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(3, 0, 2, 0, 5, 3, 4, 0),
    gsSP2Triangles(5, 4, 1, 0, 0, 5, 1, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE1s_DL_005CF0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_oE1s_Tex_0019F8, G_IM_FMT_I, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE1sVtx_002078[537], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 0, 13, 1, 0),
    gsSP2Triangles(14, 11, 10, 0, 12, 15, 10, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(14, 26, 11, 0, 12, 11, 26, 0),
    gsSP1Triangle(27, 4, 6, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE1s_DL_005DC0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE1sTex_000478, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE1sTLUT_0001A8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE1sVtx_002078[565], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 5, 9, 0),
    gsSP2Triangles(10, 11, 3, 0, 7, 9, 5, 0),
    gsSP2Triangles(11, 10, 12, 0, 6, 12, 0, 0),
    gsSP2Triangles(3, 1, 10, 0, 2, 1, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE1s_Tex_000878, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE1s_TLUT_0003A0),
    gsSPVertex(&object_oE1sVtx_002078[578], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE1s_Tex_001B78, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oE1sVtx_002078[596], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 2, 1, 0),
    gsSP2Triangles(10, 11, 5, 0, 5, 12, 3, 0),
    gsSP2Triangles(13, 14, 15, 0, 10, 5, 16, 0),
    gsSP2Triangles(6, 8, 17, 0, 11, 12, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE1s_DL_005FA8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE1sTex_000478, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE1sTLUT_0001A8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE1sVtx_002078[614], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 1, 0, 6, 4, 7, 0),
    gsSP2Triangles(1, 8, 3, 0, 9, 7, 8, 0),
    gsSP1Triangle(6, 5, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE1s_Tex_000878, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE1s_TLUT_0003A0),
    gsSPVertex(&object_oE1sVtx_002078[624], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 6, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE1s_DL_006110[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE1sTex_000478, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE1sTLUT_0001A8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE1sVtx_002078[632], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 2, 6, 0, 5, 2, 3, 0),
    gsSP2Triangles(2, 1, 6, 0, 2, 5, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE1s_Tex_000878, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE1s_TLUT_0003A0),
    gsSPVertex(&object_oE1sVtx_002078[639], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 2, 1, 0, 22, 25, 23, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE1s_DL_006288[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE1s_Tex_001A78, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE1sVtx_002078[665], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 0, 0, 10, 9, 12, 0),
    gsSP2Triangles(11, 0, 2, 0, 5, 7, 3, 0),
    gsSP2Triangles(2, 10, 11, 0, 12, 11, 10, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE1s_DL_006340[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE1s_Tex_001A78, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE1sVtx_002078[678], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 8, 1, 0),
    gsSP2Triangles(1, 0, 7, 0, 6, 9, 5, 0),
    gsSP2Triangles(4, 5, 3, 0, 2, 3, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(object_oE1s_Tex_000878, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE1s_TLUT_0003A0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE1sVtx_002078[688], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(0, 3, 1, 0, 3, 5, 4, 0),
    gsSP2Triangles(5, 2, 4, 0, 5, 0, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE1s_DL_006490[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_oE1s_Tex_0019F8, G_IM_FMT_I, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE1sVtx_002078[694], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 3, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 5, 0),
    gsSP2Triangles(17, 4, 6, 0, 19, 20, 21, 0),
    gsSP2Triangles(5, 4, 17, 0, 22, 23, 24, 0),
    gsSP2Triangles(0, 25, 1, 0, 26, 21, 27, 0),
    gsSP1Triangle(26, 19, 21, 0),
    gsSPEndDisplayList(),
};

