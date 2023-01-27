#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_bw.h"

s16 object_bw_Anim_000228FrameData[] = {
    0x0000, 0x5555, 0x2AAB, 0x592F, 0x597B, 0x59C5, 0x5A0E, 0x5A55, 0x5A9A, 0x5ADC, 0x5B1A, 0x5B55, 0x5B8C, 0x5BBE, 
    0x5BEB, 0x5C12, 0x5C33, 0x5C4E, 0x5C62, 0x5C6E, 0x5C72, 0x5C69, 0x5C4E, 0x5C24, 0x5BEB, 0x5BA6, 0x5B55, 0x5AFC, 
    0x5A9A, 0x5A32, 0x59C5, 0x5955, 0x58E4, 0x5872, 0x5802, 0x5795, 0x572D, 0x56CC, 0x5672, 0x5621, 0x55DC, 0x55A4, 
    0x5579, 0x555F, 0x5555, 0x555A, 0x5566, 0x557B, 0x5597, 0x55BA, 0x55E3, 0x5613, 0x5647, 0x5681, 0x56BE, 0x5700, 
    0x5745, 0x578C, 0x57D6, 0x5822, 0x586F, 0x58BD, 0x0EF6, 0x0EA6, 0x0E6A, 0x0E46, 0x0E39, 0x0E49, 0x0E77, 0x0EC1, 
    0x0F25, 0x0FA0, 0x1031, 0x10D4, 0x1189, 0x124C, 0x131B, 0x13F5, 0x14D6, 0x15BD, 0x16A7, 0x1792, 0x187C, 0x1963, 
    0x1A44, 0x1B1E, 0x1BED, 0x1CB0, 0x1D65, 0x1E08, 0x1E99, 0x1F14, 0x1F78, 0x1FC2, 0x1FF0, 0x2000, 0x1FF1, 0x1FC6, 
    0x1F81, 0x1F23, 0x1EAF, 0x1E27, 0x1D8C, 0x1CE2, 0x1C29, 0x1B64, 0x1A95, 0x19BE, 0x18E1, 0x1800, 0x171C, 0x1639, 
    0x1558, 0x147B, 0x13A4, 0x12D5, 0x1210, 0x1157, 0x10AD, 0x1012, 0x0F8A, 0x594A, 0x5995, 0x59DF, 0x5A27, 0x5A6E, 
    0x5AB2, 0x5AF2, 0x5B30, 0x5B69, 0x5B9E, 0x5BCF, 0x5BF9, 0x5C1F, 0x5C3E, 0x5C56, 0x5C67, 0x5C70, 0x5C71, 0x5C61, 
    0x5C41, 0x5C11, 0x5BD4, 0x5B8A, 0x5B37, 0x5ADA, 0x5A76, 0x5A0C, 0x599E, 0x592D, 0x58BB, 0x584A, 0x57DB, 0x5770, 
    0x570A, 0x56AB, 0x5654, 0x5608, 0x55C7, 0x5593, 0x556E, 0x5559, 0x5556, 0x555D, 0x556D, 0x5584, 0x55A3, 0x55C8, 
    0x55F4, 0x5625, 0x565B, 0x5696, 0x56D5, 0x5718, 0x575E, 0x57A6, 0x57F1, 0x583D, 0x588A, 0x58D8, 0x0F09, 0x0EB1, 
    0x0E6F, 0x0E47, 0x0E39, 0x0E49, 0x0E77, 0x0EC1, 0x0F25, 0x0FA0, 0x1031, 0x10D4, 0x1189, 0x124C, 0x131B, 0x13F5, 
    0x14D6, 0x15BD, 0x16A7, 0x1792, 0x187C, 0x1963, 0x1A44, 0x1B1E, 0x1BED, 0x1CB0, 0x1D65, 0x1E08, 0x1E99, 0x1F14, 
    0x1F78, 0x1FC2, 0x1FF0, 0x2000, 0x1FF1, 0x1FC6, 0x1F81, 0x1F23, 0x1EAF, 0x1E27, 0x1D8C, 0x1CE2, 0x1C29, 0x1B64, 
    0x1A95, 0x19BE, 0x18E1, 0x1800, 0x171C, 0x1639, 0x1558, 0x147B, 0x13A4, 0x12D5, 0x1210, 0x1157, 0x10AD, 0x1012, 
    0x0F8A, 0x0000, 
};

JointIndex object_bw_Anim_000228JointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x003E },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0079 },
    { 0x0000, 0x0000, 0x00B4 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader object_bw_Anim_000228 = { 
    { 59 }, object_bw_Anim_000228FrameData,
    object_bw_Anim_000228JointIndices, 3
};

u8 object_bw_possiblePadding_000238[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_bwVtx_000240[] = {
#include "assets/objects/object_bw/object_bwVtx_000240.vtx.inc"
};

Gfx object_bw_DL_0002C0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bw_Tex_001240, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bwVtx_000240, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSPEndDisplayList(),
};

Vtx object_bwVtx_000358[] = {
#include "assets/objects/object_bw/object_bwVtx_000358.vtx.inc"
};

Gfx object_bw_DL_0003E8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bw_Tex_001440, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bwVtx_000358, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_bw_Tex_001240, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_bwVtx_000358[4], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSPEndDisplayList(),
};

Vtx object_bwVtx_0004D8[] = {
#include "assets/objects/object_bw/object_bwVtx_0004D8.vtx.inc"
};

Gfx object_bw_DL_000558[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bw_Tex_001240, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bwVtx_0004D8, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSPEndDisplayList(),
};

Vtx object_bwVtx_0005F0[] = {
#include "assets/objects/object_bw/object_bwVtx_0005F0.vtx.inc"
};

Gfx object_bw_DL_000680[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bw_Tex_001440, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bwVtx_0005F0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_bw_Tex_001240, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_bwVtx_0005F0[4], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSPEndDisplayList(),
};

Vtx object_bwVtx_000770[] = {
#include "assets/objects/object_bw/object_bwVtx_000770.vtx.inc"
};

Gfx object_bw_DL_001050[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bw_Tex_001C40, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_bw_Tex_001840, 0x0100, 1, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_bw_TLUT_001640),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, PRIMITIVE, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0,
                       COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsSPDisplayList(0x08000000),
    gsSPDisplayList(0x09000000),
    gsSPVertex(object_bwVtx_000770, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(2, 12, 0, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(18, 22, 16, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_bwVtx_000770[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(7, 6, 24, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&object_bwVtx_000770[63], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 11, 21, 9, 0),
    gsSP2Triangles(8, 22, 6, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_bwVtx_000770[95], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 3, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0),
    gsSP2Triangles(5, 13, 3, 0, 29, 30, 31, 0),
    gsSPVertex(&object_bwVtx_000770[127], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP1Triangle(12, 13, 14, 0),
    gsSPEndDisplayList(),
};

u64 object_bw_Tex_001240[] = {
#include "assets/objects/object_bw/tex_00001240.rgba16.inc.c"
};

u64 object_bw_Tex_001440[] = {
#include "assets/objects/object_bw/tex_00001440.rgba16.inc.c"
};

u64 object_bw_TLUT_001640[] = {
#include "assets/objects/object_bw/tlut_00001640.rgba16.inc.c"
};

u64 object_bw_Tex_001840[] = {
#include "assets/objects/object_bw/tex_00001840.ci8.inc.c"
};

u64 object_bw_Tex_001C40[] = {
#include "assets/objects/object_bw/tex_00001C40.ci8.inc.c"
};

StandardLimb object_bw_Limb_002040 = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    object_bw_DL_001050
};

StandardLimb object_bw_Limb_00204C = { 
    { 300, 400, 1200 }, 0x02, 0x06,
    NULL
};

StandardLimb object_bw_Limb_002058 = { 
    { 0, 0, 0 }, 0x03, LIMB_DONE,
    NULL
};

StandardLimb object_bw_Limb_002064 = { 
    { 700, 0, 0 }, 0x04, 0x05,
    NULL
};

StandardLimb object_bw_Limb_002070 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_bw_DL_0003E8
};

StandardLimb object_bw_Limb_00207C = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_bw_DL_0002C0
};

StandardLimb object_bw_Limb_002088 = { 
    { -300, 400, 1200 }, 0x07, LIMB_DONE,
    NULL
};

StandardLimb object_bw_Limb_002094 = { 
    { 0, 0, 0 }, 0x08, LIMB_DONE,
    NULL
};

StandardLimb object_bw_Limb_0020A0 = { 
    { 700, 0, 0 }, 0x09, 0x0A,
    NULL
};

StandardLimb object_bw_Limb_0020AC = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_bw_DL_000680
};

StandardLimb object_bw_Limb_0020B8 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_bw_DL_000558
};

void* object_bw_Skel_0020F0Limbs[] = {
    &object_bw_Limb_002040,
    &object_bw_Limb_00204C,
    &object_bw_Limb_002058,
    &object_bw_Limb_002064,
    &object_bw_Limb_002070,
    &object_bw_Limb_00207C,
    &object_bw_Limb_002088,
    &object_bw_Limb_002094,
    &object_bw_Limb_0020A0,
    &object_bw_Limb_0020AC,
    &object_bw_Limb_0020B8,
};

SkeletonHeader object_bw_Skel_0020F0 = { 
    object_bw_Skel_0020F0Limbs, ARRAY_COUNT(object_bw_Skel_0020F0Limbs)
};

u8 object_bw_possiblePadding_0020F8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 object_bw_Anim_0021A0FrameData[] = {
    0x0000, 0x551A, 0x5212, 0x4CBE, 0x46A6, 0x4155, 0x3F68, 0x4000, 0x5F00, 0x8000, 0x5C00, 0x53DB, 0x4E39, 0x4897, 
    0x471C, 0x08BC, 0xEAAB, 0x2F00, 0x4ABF, 0x4620, 0x18E4, 0xF8E4, 0x2AE6, 0x2DEE, 0x3342, 0x395A, 0x3EAB, 0x4098, 
    0x4000, 0x5F00, 0x8000, 0x5C00, 0x53DB, 0x4E39, 0x4897, 0x471C, 0x08BC, 0xEAAB, 0x2F00, 0x4ABF, 0x4620, 0x18E4, 
    0xF8E4, 0x0000, 
};

JointIndex object_bw_Anim_0021A0JointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0000, 0x0008 },
    { 0x0000, 0x0000, 0x000F },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0016, 0x0000 },
    { 0x0000, 0x0000, 0x001D },
    { 0x0000, 0x0000, 0x0024 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader object_bw_Anim_0021A0 = { 
    { 7 }, object_bw_Anim_0021A0FrameData,
    object_bw_Anim_0021A0JointIndices, 1
};

s16 object_bw_Anim_002250FrameData[] = {
    0x0000, 0x551A, 0x5212, 0x4CBE, 0x46A6, 0x4155, 0x3F68, 0x4000, 0x5A44, 0x67FB, 0x71C7, 0x69FD, 0x598B, 0x4AD4, 
    0x78E4, 0x1002, 0x15CC, 0x238E, 0x3777, 0x4311, 0x1DDE, 0x0AAB, 0x2AE6, 0x2DEE, 0x3342, 0x395A, 0x3EAB, 0x4098, 
    0x4000, 0x5A44, 0x67FB, 0x71C7, 0x69FD, 0x598B, 0x4AD4, 0x78E4, 0x1002, 0x15CC, 0x238E, 0x3777, 0x4311, 0x1DDE, 
    0x0AAB, 0x0000, 
};

JointIndex object_bw_Anim_002250JointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0000, 0x0008 },
    { 0x0000, 0x0000, 0x000F },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0016, 0x0000 },
    { 0x0000, 0x0000, 0x001D },
    { 0x0000, 0x0000, 0x0024 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader object_bw_Anim_002250 = { 
    { 7 }, object_bw_Anim_002250FrameData,
    object_bw_Anim_002250JointIndices, 1
};

