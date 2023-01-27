#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_oE4s.h"

s16 object_oE4s_Anim_00007CFrameData[] = {
    0x0000, 0x0834, 0xFEA2, 0xC000, 0xFFCF, 0x0051, 0x4000, 0x00C7, 0x3FF1, 0x8000, 
};

JointIndex object_oE4s_Anim_00007CJointIndices[] = {
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

AnimationHeader object_oE4s_Anim_00007C = { 
    { 2 }, object_oE4s_Anim_00007CFrameData,
    object_oE4s_Anim_00007CJointIndices, 10
};

u8 object_oE4s_possiblePadding_00008C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

StandardLimb object_oE4s_Limb_000090 = { 
    { 0, 2100, -350 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb object_oE4s_Limb_00009C = { 
    { 0, 0, 0 }, 0x02, 0x08,
    object_oE4s_DL_003B28
};

StandardLimb object_oE4s_Limb_0000A8 = { 
    { 250, 0, 200 }, 0x03, 0x05,
    object_oE4s_DL_004D00
};

StandardLimb object_oE4s_Limb_0000B4 = { 
    { 759, 0, 0 }, 0x04, LIMB_DONE,
    object_oE4s_DL_004C48
};

StandardLimb object_oE4s_Limb_0000C0 = { 
    { 850, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_oE4s_DL_004B90
};

StandardLimb object_oE4s_Limb_0000CC = { 
    { 250, 0, -200 }, 0x06, LIMB_DONE,
    object_oE4s_DL_004708
};

StandardLimb object_oE4s_Limb_0000D8 = { 
    { 756, 0, 0 }, 0x07, LIMB_DONE,
    object_oE4s_DL_004650
};

StandardLimb object_oE4s_Limb_0000E4 = { 
    { 850, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_oE4s_DL_004598
};

StandardLimb object_oE4s_Limb_0000F0 = { 
    { 0, 0, 0 }, 0x09, LIMB_DONE,
    object_oE4s_DL_003970
};

StandardLimb object_oE4s_Limb_0000FC = { 
    { 800, 0, 450 }, 0x0A, 0x0C,
    object_oE4s_DL_004A90
};

StandardLimb object_oE4s_Limb_000108 = { 
    { 600, 0, 0 }, 0x0B, LIMB_DONE,
    object_oE4s_DL_0049A0
};

StandardLimb object_oE4s_Limb_000114 = { 
    { 550, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_oE4s_DL_004828
};

StandardLimb object_oE4s_Limb_000120 = { 
    { 800, 0, -450 }, 0x0D, 0x0F,
    object_oE4s_DL_004498
};

StandardLimb object_oE4s_Limb_00012C = { 
    { 600, 0, 0 }, 0x0E, LIMB_DONE,
    object_oE4s_DL_0043A8
};

StandardLimb object_oE4s_Limb_000138 = { 
    { 550, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_oE4s_DL_004230
};

StandardLimb object_oE4s_Limb_000144 = { 
    { 1016, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_oE4s_DL_003C40
};

void* object_oE4s_Skel_000190Limbs[] = {
    &object_oE4s_Limb_000090,
    &object_oE4s_Limb_00009C,
    &object_oE4s_Limb_0000A8,
    &object_oE4s_Limb_0000B4,
    &object_oE4s_Limb_0000C0,
    &object_oE4s_Limb_0000CC,
    &object_oE4s_Limb_0000D8,
    &object_oE4s_Limb_0000E4,
    &object_oE4s_Limb_0000F0,
    &object_oE4s_Limb_0000FC,
    &object_oE4s_Limb_000108,
    &object_oE4s_Limb_000114,
    &object_oE4s_Limb_000120,
    &object_oE4s_Limb_00012C,
    &object_oE4s_Limb_000138,
    &object_oE4s_Limb_000144,
};

FlexSkeletonHeader object_oE4s_Skel_000190 = { 
    { object_oE4s_Skel_000190Limbs, ARRAY_COUNT(object_oE4s_Skel_000190Limbs) }, 15
};

u8 object_oE4s_possiblePadding_00019C[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_oE4s_TLUT_0001A8[] = {
#include "assets/objects/object_oE4s/tlut_000001A8.rgba16.inc.c"
};

u64 object_oE4sTex_0002A0[] = {
#include "assets/objects/object_oE4s/object_oE4sTex_0002A0.ci8.inc.c"
};

u64 object_oE4sTex_0003A0[] = {
#include "assets/objects/object_oE4s/object_oE4sTex_0003A0.ci8.inc.c"
};

u64 object_oE4s_Tex_0004A0[] = {
#include "assets/objects/object_oE4s/tex_000004A0.ci8.inc.c"
};

u64 object_oE4s_Tex_0004E0[] = {
#include "assets/objects/object_oE4s/tex_000004E0.rgba16.inc.c"
};

u64 object_oE4s_Tex_0008E0[] = {
#include "assets/objects/object_oE4s/tex_000008E0.rgba16.inc.c"
};

u64 object_oE4s_Tex_0009E0[] = {
#include "assets/objects/object_oE4s/tex_000009E0.ci8.inc.c"
};

u64 object_oE4s_Tex_000AE0[] = {
#include "assets/objects/object_oE4s/tex_00000AE0.i4.inc.c"
};

u64 object_oE4s_Tex_000B60[] = {
#include "assets/objects/object_oE4s/tex_00000B60.i4.inc.c"
};

u64 object_oE4s_Tex_000BE0[] = {
#include "assets/objects/object_oE4s/tex_00000BE0.ci8.inc.c"
};

u64 object_oE4s_Tex_000CE0[] = {
#include "assets/objects/object_oE4s/tex_00000CE0.rgba16.inc.c"
};

Vtx object_oE4sVtx_000EE0[] = {
#include "assets/objects/object_oE4s/object_oE4sVtx_000EE0.vtx.inc"
};

Gfx object_oE4s_DL_003970[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, ENVIRONMENT, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(object_oE4sVtx_000EE0, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 1, 4, 0),
    gsSP2Triangles(10, 11, 12, 0, 8, 10, 6, 0),
    gsSP2Triangles(12, 6, 10, 0, 4, 13, 9, 0),
    gsSP2Triangles(3, 13, 4, 0, 1, 9, 2, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_oE4s_Tex_000AE0, G_IM_FMT_I, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE4sVtx_000EE0[14], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(1, 0, 4, 0, 5, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_oE4s_Tex_000B60, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oE4sVtx_000EE0[20], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 8, 10, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 2, 18, 3, 0),
    gsSP2Triangles(2, 19, 0, 0, 20, 21, 22, 0),
    gsSP2Triangles(17, 23, 15, 0, 24, 25, 26, 0),
    gsSP2Triangles(2, 1, 18, 0, 2, 4, 19, 0),
    gsSP2Triangles(22, 27, 20, 0, 14, 13, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_oE4sVtx_000EE0[52], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 15, 19, 13, 0),
    gsSP1Triangle(18, 20, 16, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE4s_DL_003B28[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, ENVIRONMENT, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE4sVtx_000EE0[73], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 7, 0, 5, 6, 3, 0),
    gsSP2Triangles(7, 4, 3, 0, 8, 9, 10, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_oE4s_Tex_000B60, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE4sVtx_000EE0[84], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 10, 9, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 15, 19, 13, 0),
    gsSP2Triangles(20, 21, 22, 0, 2, 23, 0, 0),
    gsSP2Triangles(24, 25, 13, 0, 13, 19, 24, 0),
    gsSP2Triangles(18, 26, 16, 0, 27, 28, 12, 0),
    gsSP2Triangles(29, 28, 27, 0, 5, 30, 31, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE4s_DL_003C40[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE4s_Tex_0004A0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE4s_TLUT_0001A8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE4sVtx_000EE0[116], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, ENVIRONMENT, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&object_oE4sVtx_000EE0[119], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 3, 0, 8, 4, 7, 0),
    gsSP2Triangles(3, 7, 4, 0, 4, 9, 5, 0),
    gsSP2Triangles(9, 1, 0, 0, 0, 5, 9, 0),
    gsSP1Triangle(1, 9, 10, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_oE4s_Tex_000AE0, G_IM_FMT_I, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE4sVtx_000EE0[130], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 0, 0),
    gsSP2Triangles(9, 5, 4, 0, 6, 10, 4, 0),
    gsSP2Triangles(0, 3, 7, 0, 4, 11, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_oE4s_Tex_000B60, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oE4sVtx_000EE0[142], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 0, 0),
    gsSP2Triangles(2, 11, 0, 0, 13, 9, 14, 0),
    gsSP1Triangle(10, 9, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE4s_Tex_0004E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE4sVtx_000EE0[157], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 3, 5, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&object_oE4sVtx_000EE0[188], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_oE4sVtx_000EE0[218], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&object_oE4sVtx_000EE0[249], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE4s_Tex_0008E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oE4sVtx_000EE0[267], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(object_oE4s_Tex_0004A0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE4s_TLUT_0001A8),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE4sVtx_000EE0[285], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE4s_Tex_0009E0, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oE4sVtx_000EE0[291], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE4sTex_0002A0, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE4sVtx_000EE0[297], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE4sTex_0003A0, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oE4sVtx_000EE0[301], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE4s_Tex_0004A0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oE4sVtx_000EE0[309], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(30, 29, 28, 0),
    gsSPVertex(&object_oE4sVtx_000EE0[340], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 6, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 15, 0, 16, 17, 18, 0),
    gsSP1Triangle(19, 20, 21, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, ENVIRONMENT, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&object_oE4sVtx_000EE0[362], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE4s_DL_004230[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE4s_Tex_0004A0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE4s_TLUT_0001A8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE4sVtx_000EE0[366], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP1Triangle(18, 19, 20, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE4s_Tex_000BE0, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oE4sVtx_000EE0[387], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 1, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 3, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 10, 9, 0),
    gsSP2Triangles(3, 20, 21, 0, 19, 22, 23, 0),
    gsSP2Triangles(17, 16, 24, 0, 5, 20, 3, 0),
    gsSP2Triangles(3, 21, 15, 0, 7, 6, 25, 0),
    gsSP2Triangles(12, 26, 13, 0, 18, 2, 16, 0),
    gsSP2Triangles(23, 27, 19, 0, 23, 22, 0, 0),
    gsSP1Triangle(9, 22, 19, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE4s_DL_0043A8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE4s_Tex_0004A0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE4s_TLUT_0001A8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE4sVtx_000EE0[415], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 6, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 4, 3, 0),
    gsSP2Triangles(14, 15, 16, 0, 5, 2, 1, 0),
    gsSP2Triangles(2, 13, 0, 0, 17, 18, 19, 0),
    gsSP2Triangles(5, 6, 3, 0, 3, 0, 13, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE4s_DL_004498[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, ENVIRONMENT, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE4sVtx_000EE0[435], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 5, 0, 7, 0, 5, 0),
    gsSP2Triangles(5, 0, 3, 0, 1, 7, 6, 0),
    gsSP2Triangles(7, 1, 0, 0, 2, 3, 0, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_oE4s_Tex_000B60, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE4sVtx_000EE0[443], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 2, 7, 0, 0),
    gsSP2Triangles(2, 8, 9, 0, 3, 6, 10, 0),
    gsSP2Triangles(9, 7, 2, 0, 3, 10, 4, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE4s_DL_004598[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE4s_Tex_000CE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE4sVtx_000EE0[454], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 5, 9, 3, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(7, 16, 8, 0, 17, 18, 19, 0),
    gsSP1Triangle(20, 21, 22, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE4s_DL_004650[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_oE4s_Tex_000B60, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE4sVtx_000EE0[477], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 8, 13, 9, 0),
    gsSP2Triangles(11, 14, 12, 0, 2, 1, 15, 0),
    gsSP1Triangle(1, 16, 15, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE4s_DL_004708[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, ENVIRONMENT, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE4sVtx_000EE0[494], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(3, 6, 4, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_oE4s_Tex_000B60, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE4sVtx_000EE0[501], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE4sVtx_000EE0[504], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(9, 11, 10, 0, 12, 13, 14, 0),
    gsSP2Triangles(13, 15, 14, 0, 16, 17, 18, 0),
    gsSP2Triangles(8, 19, 9, 0, 20, 18, 17, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE4s_DL_004828[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE4s_Tex_0004A0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE4s_TLUT_0001A8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE4sVtx_000EE0[525], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP1Triangle(18, 19, 20, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE4s_Tex_000BE0, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oE4sVtx_000EE0[546], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 0, 0, 7, 5, 4, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(12, 11, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 10, 0, 6, 17, 23, 0),
    gsSP2Triangles(24, 20, 19, 0, 25, 8, 10, 0),
    gsSP2Triangles(10, 9, 21, 0, 23, 26, 2, 0),
    gsSP2Triangles(25, 10, 27, 0, 0, 26, 11, 0),
    gsSP1Triangle(2, 26, 0, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE4s_DL_0049A0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE4s_Tex_0004A0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE4s_TLUT_0001A8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE4sVtx_000EE0[574], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 1, 0, 8, 0),
    gsSP2Triangles(9, 8, 4, 0, 10, 11, 12, 0),
    gsSP2Triangles(2, 13, 0, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 4, 3, 9, 0),
    gsSP2Triangles(4, 13, 2, 0, 8, 9, 1, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE4s_DL_004A90[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, ENVIRONMENT, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE4sVtx_000EE0[594], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 4, 3, 0, 1, 0, 6, 0),
    gsSP2Triangles(6, 0, 4, 0, 6, 4, 5, 0),
    gsSP2Triangles(6, 7, 1, 0, 2, 3, 0, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_oE4s_Tex_000B60, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE4sVtx_000EE0[602], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 2, 3, 0, 4, 0, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 7, 8, 5, 0),
    gsSP2Triangles(9, 8, 7, 0, 7, 10, 9, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE4s_DL_004B90[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE4s_Tex_000CE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE4sVtx_000EE0[613], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(6, 8, 18, 0, 17, 19, 15, 0),
    gsSP1Triangle(20, 21, 22, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE4s_DL_004C48[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_oE4s_Tex_000B60, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE4sVtx_000EE0[636], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(4, 6, 10, 0, 7, 9, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 13, 15, 0),
    gsSP1Triangle(3, 2, 16, 0),
    gsSPEndDisplayList(),
};

Gfx object_oE4s_DL_004D00[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, ENVIRONMENT, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE4sVtx_000EE0[653], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_oE4s_Tex_000B60, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&object_oE4sVtx_000EE0[660], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 6, 11, 7, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 9, 8, 0, 18, 19, 9, 0),
    gsSP1Triangle(16, 15, 20, 0),
    gsSPEndDisplayList(),
};

