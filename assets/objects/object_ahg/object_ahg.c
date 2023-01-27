#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_ahg.h"

StandardLimb object_ahg_Limb_000000 = { 
    { 0, 3616, 373 }, 0x01, LIMB_DONE,
    object_ahg_DL_004628
};

StandardLimb object_ahg_Limb_00000C = { 
    { 409, 0, 350 }, 0x02, 0x04,
    object_ahg_DL_0044F0
};

StandardLimb object_ahg_Limb_000018 = { 
    { 1500, 0, 0 }, 0x03, LIMB_DONE,
    object_ahg_DL_0043C0
};

StandardLimb object_ahg_Limb_000024 = { 
    { 1400, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_ahg_DL_004280
};

StandardLimb object_ahg_Limb_000030 = { 
    { 409, 0, -350 }, 0x05, 0x07,
    object_ahg_DL_004148
};

StandardLimb object_ahg_Limb_00003C = { 
    { 1500, 0, 0 }, 0x06, LIMB_DONE,
    object_ahg_DL_004018
};

StandardLimb object_ahg_Limb_000048 = { 
    { 1400, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_ahg_DL_003ED8
};

StandardLimb object_ahg_Limb_000054 = { 
    { 0, 0, 0 }, 0x08, LIMB_DONE,
    object_ahg_DL_003CB0
};

StandardLimb object_ahg_Limb_000060 = { 
    { 1250, -100, 850 }, 0x09, 0x0B,
    object_ahg_DL_003B78
};

StandardLimb object_ahg_Limb_00006C = { 
    { 1000, 0, 0 }, 0x0A, LIMB_DONE,
    object_ahg_DL_003A48
};

StandardLimb object_ahg_Limb_000078 = { 
    { 1051, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_ahg_DL_0038D8
};

StandardLimb object_ahg_Limb_000084 = { 
    { 1250, -100, -850 }, 0x0C, 0x0E,
    object_ahg_DL_0037A0
};

StandardLimb object_ahg_Limb_000090 = { 
    { 1002, 0, 0 }, 0x0D, LIMB_DONE,
    object_ahg_DL_003670
};

StandardLimb object_ahg_Limb_00009C = { 
    { 1050, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_ahg_DL_003500
};

StandardLimb object_ahg_Limb_0000A8 = { 
    { 1804, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_ahg_DL_0030F0
};

void* object_ahg_Skel_0000F0Limbs[] = {
    &object_ahg_Limb_000000,
    &object_ahg_Limb_00000C,
    &object_ahg_Limb_000018,
    &object_ahg_Limb_000024,
    &object_ahg_Limb_000030,
    &object_ahg_Limb_00003C,
    &object_ahg_Limb_000048,
    &object_ahg_Limb_000054,
    &object_ahg_Limb_000060,
    &object_ahg_Limb_00006C,
    &object_ahg_Limb_000078,
    &object_ahg_Limb_000084,
    &object_ahg_Limb_000090,
    &object_ahg_Limb_00009C,
    &object_ahg_Limb_0000A8,
};

FlexSkeletonHeader object_ahg_Skel_0000F0 = { 
    { object_ahg_Skel_0000F0Limbs, ARRAY_COUNT(object_ahg_Skel_0000F0Limbs) }, 15
};

u32 object_ahg_TLUT_0000FC[] = {
#include "assets/objects/object_ahg/tlut_000000FC.u32.rgba16.inc.c"
};

u32 object_ahg_Tex_0002FC[] = {
#include "assets/objects/object_ahg/tex_000002FC.u32.ci8.inc.c"
};

u32 object_ahg_Tex_0003FC[] = {
#include "assets/objects/object_ahg/tex_000003FC.u32.ci8.inc.c"
};

u32 object_ahg_Tex_0004FC[] = {
#include "assets/objects/object_ahg/tex_000004FC.u32.ci8.inc.c"
};

u32 object_ahg_Tex_00053C[] = {
#include "assets/objects/object_ahg/tex_0000053C.u32.ci8.inc.c"
};

u32 object_ahg_Tex_00057C[] = {
#include "assets/objects/object_ahg/tex_0000057C.u32.ci8.inc.c"
};

u32 object_ahg_Tex_00067C[] = {
#include "assets/objects/object_ahg/tex_0000067C.u32.ci8.inc.c"
};

u32 object_ahg_Tex_00077C[] = {
#include "assets/objects/object_ahg/tex_0000077C.u32.ci8.inc.c"
};

u32 object_ahg_Tex_00087C[] = {
#include "assets/objects/object_ahg/tex_0000087C.u32.ci8.inc.c"
};

u32 object_ahg_Tex_00097C[] = {
#include "assets/objects/object_ahg/tex_0000097C.u32.i8.inc.c"
};

u32 object_ahg_Tex_0009BC[] = {
#include "assets/objects/object_ahg/tex_000009BC.u32.i8.inc.c"
};

u32 object_ahg_Tex_0009FC[] = {
#include "assets/objects/object_ahg/tex_000009FC.u32.ci8.inc.c"
};

u32 object_ahg_Tex_000BFC[] = {
#include "assets/objects/object_ahg/tex_00000BFC.u32.ci8.inc.c"
};

Vtx object_ahgVtx_000D00[] = {
#include "assets/objects/object_ahg/object_ahgVtx_000D00.vtx.inc"
};

Gfx object_ahg_DL_0030F0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ahg_TLUT_0000FC),
    gsDPLoadTextureBlock(object_ahg_Tex_0002FC, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_ahgVtx_000D00, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 0, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(23, 22, 24, 0, 21, 23, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 28, 29, 26, 0),
    gsSP2Triangles(26, 29, 30, 0, 28, 27, 31, 0),
    gsSPVertex(&object_ahgVtx_000D00[32], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ahg_TLUT_0000FC),
    gsDPLoadTextureBlock(object_ahg_Tex_0003FC, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_ahgVtx_000D00[36], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 11, 10, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(19, 18, 13, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 22, 21, 0, 24, 25, 26, 0),
    gsSP2Triangles(25, 24, 23, 0, 27, 28, 29, 0),
    gsSPVertex(&object_ahgVtx_000D00[66], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 5, 8, 0),
    gsSP2Triangles(3, 9, 4, 0, 8, 5, 6, 0),
    gsSP2Triangles(10, 5, 11, 0, 3, 5, 10, 0),
    gsSP2Triangles(12, 7, 8, 0, 13, 14, 15, 0),
    gsSP2Triangles(12, 13, 7, 0, 7, 13, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 18, 19, 16, 0),
    gsSP2Triangles(20, 21, 22, 0, 22, 23, 20, 0),
    gsSP1Triangle(21, 24, 22, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ahg_TLUT_0000FC),
    gsDPLoadTextureBlock(object_ahg_Tex_0004FC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP2Triangles(25, 26, 27, 0, 28, 29, 30, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ahg_TLUT_0000FC),
    gsDPLoadTextureBlock(object_ahg_Tex_00053C, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ahgVtx_000D00[97], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP1Triangle(18, 16, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ahg_TLUT_0000FC),
    gsDPLoadTextureBlock(0x0A000000, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(19, 20, 21, 0, 22, 23, 19, 0),
    gsSP2Triangles(23, 24, 19, 0, 24, 20, 19, 0),
    gsSP2Triangles(21, 25, 19, 0, 19, 26, 27, 0),
    gsSP2Triangles(19, 28, 26, 0, 19, 25, 28, 0),
    gsSPEndDisplayList(),
};

Gfx object_ahg_DL_003500[] = {
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ahgVtx_000D00[222], 4, 0),
    gsSPMatrix(0x0D000340, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ahg_TLUT_0000FC),
    gsDPLoadTextureBlock(object_ahg_Tex_00087C, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ahgVtx_000D00[226], 16, 4),
    gsSP2Triangles(4, 0, 5, 0, 0, 6, 7, 0),
    gsSP2Triangles(8, 0, 1, 0, 9, 10, 2, 0),
    gsSP2Triangles(11, 12, 3, 0, 13, 14, 1, 0),
    gsSP2Triangles(2, 3, 15, 0, 1, 2, 16, 0),
    gsSP2Triangles(17, 2, 18, 0, 3, 0, 19, 0),
    gsSPVertex(&object_ahgVtx_000D00[242], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 0, 5, 0, 4, 5, 6, 0),
    gsSP2Triangles(7, 5, 0, 0, 3, 8, 2, 0),
    gsSP2Triangles(8, 3, 9, 0, 3, 1, 9, 0),
    gsSP2Triangles(4, 1, 0, 0, 7, 0, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 13, 14, 11, 0),
    gsSP2Triangles(11, 14, 15, 0, 15, 16, 11, 0),
    gsSP2Triangles(11, 16, 17, 0, 17, 12, 11, 0),
    gsSP2Triangles(18, 17, 16, 0, 16, 15, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 19, 21, 0),
    gsSP2Triangles(23, 24, 25, 0, 25, 26, 23, 0),
    gsSPEndDisplayList(),
};

Gfx object_ahg_DL_003670[] = {
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ahgVtx_000D00[269], 4, 0),
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ahg_TLUT_0000FC),
    gsDPLoadTextureBlock(object_ahg_Tex_00053C, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ahgVtx_000D00[273], 12, 4),
    gsSP2Triangles(0, 4, 5, 0, 6, 7, 1, 0),
    gsSP2Triangles(8, 9, 0, 0, 1, 10, 11, 0),
    gsSP2Triangles(0, 2, 12, 0, 1, 3, 13, 0),
    gsSP2Triangles(14, 2, 1, 0, 15, 3, 0, 0),
    gsSPVertex(&object_ahgVtx_000D00[285], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(5, 6, 4, 0, 1, 6, 5, 0),
    gsSP2Triangles(5, 2, 1, 0, 2, 7, 0, 0),
    gsSP2Triangles(4, 3, 5, 0, 0, 7, 3, 0),
    gsSPEndDisplayList(),
};

Gfx object_ahg_DL_0037A0[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ahgVtx_000D00[293], 4, 0),
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ahg_TLUT_0000FC),
    gsDPLoadTextureBlock(object_ahg_Tex_00053C, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ahgVtx_000D00[297], 12, 4),
    gsSP2Triangles(4, 5, 0, 0, 6, 1, 0, 0),
    gsSP2Triangles(7, 8, 2, 0, 9, 3, 1, 0),
    gsSP2Triangles(2, 3, 10, 0, 0, 11, 12, 0),
    gsSP2Triangles(0, 2, 13, 0, 1, 14, 15, 0),
    gsSPVertex(&object_ahgVtx_000D00[309], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 0, 5, 0, 3, 4, 6, 0),
    gsSP2Triangles(3, 7, 4, 0, 1, 7, 3, 0),
    gsSP2Triangles(5, 6, 4, 0, 3, 8, 2, 0),
    gsSP2Triangles(2, 5, 0, 0, 6, 8, 3, 0),
    gsSPEndDisplayList(),
};

Gfx object_ahg_DL_0038D8[] = {
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ahgVtx_000D00[126], 4, 0),
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ahg_TLUT_0000FC),
    gsDPLoadTextureBlock(object_ahg_Tex_00087C, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ahgVtx_000D00[130], 16, 4),
    gsSP2Triangles(4, 0, 5, 0, 6, 7, 0, 0),
    gsSP2Triangles(1, 0, 8, 0, 2, 9, 10, 0),
    gsSP2Triangles(3, 11, 12, 0, 1, 13, 14, 0),
    gsSP2Triangles(15, 3, 2, 0, 16, 2, 1, 0),
    gsSP2Triangles(17, 2, 18, 0, 19, 0, 3, 0),
    gsSPVertex(&object_ahgVtx_000D00[146], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 2, 5, 0, 6, 4, 5, 0),
    gsSP2Triangles(2, 4, 7, 0, 0, 8, 3, 0),
    gsSP2Triangles(9, 3, 8, 0, 9, 1, 3, 0),
    gsSP2Triangles(2, 1, 5, 0, 10, 2, 7, 0),
    gsSP2Triangles(11, 12, 13, 0, 13, 14, 11, 0),
    gsSP2Triangles(15, 14, 13, 0, 13, 16, 15, 0),
    gsSP2Triangles(17, 16, 13, 0, 13, 12, 17, 0),
    gsSP2Triangles(16, 17, 18, 0, 18, 15, 16, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 25, 26, 23, 0),
    gsSPEndDisplayList(),
};

Gfx object_ahg_DL_003A48[] = {
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ahgVtx_000D00[173], 4, 0),
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ahg_TLUT_0000FC),
    gsDPLoadTextureBlock(object_ahg_Tex_00053C, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ahgVtx_000D00[177], 12, 4),
    gsSP2Triangles(4, 5, 0, 0, 1, 6, 7, 0),
    gsSP2Triangles(0, 8, 9, 0, 10, 11, 1, 0),
    gsSP2Triangles(12, 2, 0, 0, 13, 3, 1, 0),
    gsSP2Triangles(1, 2, 14, 0, 0, 3, 15, 0),
    gsSPVertex(&object_ahgVtx_000D00[189], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 6, 5, 1, 0),
    gsSP2Triangles(1, 0, 6, 0, 2, 7, 0, 0),
    gsSP2Triangles(6, 4, 3, 0, 4, 7, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_ahg_DL_003B78[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ahgVtx_000D00[197], 4, 0),
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ahg_TLUT_0000FC),
    gsDPLoadTextureBlock(object_ahg_Tex_00053C, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ahgVtx_000D00[201], 12, 4),
    gsSP2Triangles(0, 4, 5, 0, 0, 1, 6, 0),
    gsSP2Triangles(2, 7, 8, 0, 1, 3, 9, 0),
    gsSP2Triangles(10, 3, 2, 0, 11, 12, 0, 0),
    gsSP2Triangles(13, 2, 0, 0, 14, 15, 1, 0),
    gsSPVertex(&object_ahgVtx_000D00[213], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 2, 5, 0, 6, 5, 3, 0),
    gsSP2Triangles(5, 7, 3, 0, 3, 7, 1, 0),
    gsSP2Triangles(5, 6, 4, 0, 0, 8, 3, 0),
    gsSP2Triangles(2, 4, 0, 0, 3, 8, 6, 0),
    gsSPEndDisplayList(),
};

Gfx object_ahg_DL_003CB0[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ahgVtx_000D00[318], 5, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_ahg_Tex_00097C, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ahgVtx_000D00[323], 16, 5),
    gsSP2Triangles(3, 4, 5, 0, 6, 7, 1, 0),
    gsSP2Triangles(1, 8, 9, 0, 1, 3, 10, 0),
    gsSP2Triangles(11, 0, 2, 0, 12, 13, 3, 0),
    gsSP2Triangles(4, 14, 15, 0, 16, 4, 0, 0),
    gsSP2Triangles(17, 18, 0, 0, 0, 19, 20, 0),
    gsSPVertex(&object_ahgVtx_000D00[339], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 5, 4, 0, 1, 0, 7, 0),
    gsSP2Triangles(3, 8, 9, 0, 10, 8, 11, 0),
    gsSP2Triangles(12, 8, 10, 0, 9, 8, 12, 0),
    gsSP2Triangles(9, 4, 3, 0, 6, 13, 14, 0),
    gsSP2Triangles(15, 13, 6, 0, 4, 15, 6, 0),
    gsSP2Triangles(15, 12, 16, 0, 12, 10, 16, 0),
    gsSP2Triangles(16, 17, 14, 0, 16, 13, 15, 0),
    gsSP2Triangles(14, 13, 16, 0, 17, 16, 18, 0),
    gsSP2Triangles(14, 7, 6, 0, 19, 14, 17, 0),
    gsSP2Triangles(17, 20, 21, 0, 17, 21, 19, 0),
    gsSP2Triangles(7, 19, 1, 0, 7, 14, 19, 0),
    gsSP2Triangles(2, 1, 22, 0, 21, 23, 22, 0),
    gsSP2Triangles(20, 23, 21, 0, 24, 23, 20, 0),
    gsSP2Triangles(22, 23, 2, 0, 23, 24, 2, 0),
    gsSP1Triangle(8, 3, 11, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ahg_TLUT_0000FC),
    gsDPLoadTextureBlock(object_ahg_Tex_00053C, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_ahgVtx_000D00[364], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(4, 5, 1, 0, 2, 1, 5, 0),
    gsSP2Triangles(3, 1, 0, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 7, 6, 0, 10, 11, 12, 0),
    gsSP1Triangle(13, 14, 10, 0),
    gsSPEndDisplayList(),
};

Gfx object_ahg_DL_003ED8[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ahgVtx_000D00[379], 4, 0),
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x09000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_ahg_Tex_0009BC, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ahgVtx_000D00[383], 12, 4),
    gsSP2Triangles(4, 5, 0, 0, 1, 0, 6, 0),
    gsSP2Triangles(0, 2, 7, 0, 8, 9, 1, 0),
    gsSP2Triangles(3, 10, 11, 0, 12, 2, 3, 0),
    gsSP2Triangles(13, 3, 1, 0, 1, 14, 15, 0),
    gsSPVertex(&object_ahgVtx_000D00[395], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 2, 5, 0, 5, 1, 6, 0),
    gsSP2Triangles(7, 6, 3, 0, 6, 8, 5, 0),
    gsSP2Triangles(5, 8, 4, 0, 3, 0, 7, 0),
    gsSP2Triangles(1, 3, 6, 0, 9, 2, 1, 0),
    gsSP2Triangles(7, 0, 4, 0, 5, 9, 1, 0),
    gsSP2Triangles(2, 9, 5, 0, 4, 0, 2, 0),
    gsSP2Triangles(10, 11, 12, 0, 12, 13, 10, 0),
    gsSP2Triangles(12, 11, 14, 0, 14, 15, 12, 0),
    gsSP2Triangles(10, 13, 16, 0, 16, 17, 10, 0),
    gsSP2Triangles(14, 17, 16, 0, 16, 15, 14, 0),
    gsSPEndDisplayList(),
};

Gfx object_ahg_DL_004018[] = {
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ahgVtx_000D00[413], 4, 0),
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ahg_TLUT_0000FC),
    gsDPLoadTextureBlock(object_ahg_Tex_0009FC, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ahgVtx_000D00[417], 12, 4),
    gsSP2Triangles(0, 4, 5, 0, 6, 7, 1, 0),
    gsSP2Triangles(1, 2, 8, 0, 9, 0, 10, 0),
    gsSP2Triangles(11, 1, 12, 0, 1, 13, 3, 0),
    gsSP2Triangles(0, 3, 14, 0, 15, 2, 0, 0),
    gsSPVertex(&object_ahgVtx_000D00[429], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(4, 5, 0, 0, 6, 7, 4, 0),
    gsSP2Triangles(1, 7, 6, 0, 4, 3, 6, 0),
    gsSP2Triangles(0, 5, 1, 0, 2, 1, 6, 0),
    gsSPEndDisplayList(),
};

Gfx object_ahg_DL_004148[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ahgVtx_000D00[437], 5, 0),
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ahg_TLUT_0000FC),
    gsDPLoadTextureBlock(object_ahg_Tex_0009FC, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ahgVtx_000D00[442], 13, 5),
    gsSP2Triangles(5, 6, 0, 0, 7, 4, 1, 0),
    gsSP2Triangles(8, 9, 2, 0, 2, 0, 10, 0),
    gsSP2Triangles(1, 11, 12, 0, 3, 2, 13, 0),
    gsSP2Triangles(3, 14, 15, 0, 3, 16, 1, 0),
    gsSP1Triangle(0, 4, 17, 0),
    gsSPVertex(&object_ahgVtx_000D00[455], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 4, 3, 0, 1, 0, 3, 0),
    gsSP2Triangles(2, 6, 0, 0, 5, 7, 6, 0),
    gsSP2Triangles(6, 2, 5, 0, 3, 7, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_ahg_DL_004280[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ahgVtx_000D00[463], 4, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x09000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_ahg_Tex_0009BC, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ahgVtx_000D00[467], 12, 4),
    gsSP2Triangles(0, 4, 5, 0, 6, 0, 1, 0),
    gsSP2Triangles(7, 2, 0, 0, 1, 8, 9, 0),
    gsSP2Triangles(10, 11, 3, 0, 3, 2, 12, 0),
    gsSP2Triangles(1, 3, 13, 0, 14, 15, 1, 0),
    gsSPVertex(&object_ahgVtx_000D00[479], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 0, 5, 0, 6, 1, 4, 0),
    gsSP2Triangles(3, 6, 7, 0, 4, 8, 6, 0),
    gsSP2Triangles(5, 8, 4, 0, 7, 2, 3, 0),
    gsSP2Triangles(6, 3, 1, 0, 1, 0, 9, 0),
    gsSP2Triangles(5, 2, 7, 0, 1, 9, 4, 0),
    gsSP2Triangles(4, 9, 0, 0, 0, 2, 5, 0),
    gsSP2Triangles(10, 11, 12, 0, 12, 13, 10, 0),
    gsSP2Triangles(14, 11, 10, 0, 10, 15, 14, 0),
    gsSP2Triangles(16, 13, 12, 0, 12, 17, 16, 0),
    gsSP2Triangles(16, 17, 14, 0, 14, 15, 16, 0),
    gsSPEndDisplayList(),
};

Gfx object_ahg_DL_0043C0[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ahgVtx_000D00[497], 4, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ahg_TLUT_0000FC),
    gsDPLoadTextureBlock(object_ahg_Tex_0009FC, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ahgVtx_000D00[501], 12, 4),
    gsSP2Triangles(4, 5, 0, 0, 1, 6, 7, 0),
    gsSP2Triangles(8, 2, 1, 0, 9, 0, 10, 0),
    gsSP2Triangles(11, 1, 12, 0, 3, 13, 1, 0),
    gsSP2Triangles(14, 3, 0, 0, 0, 2, 15, 0),
    gsSPVertex(&object_ahgVtx_000D00[513], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(2, 5, 3, 0, 3, 6, 7, 0),
    gsSP2Triangles(7, 6, 1, 0, 7, 4, 3, 0),
    gsSP2Triangles(1, 5, 2, 0, 7, 1, 0, 0),
    gsSPEndDisplayList(),
};

Gfx object_ahg_DL_0044F0[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ahgVtx_000D00[521], 5, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ahg_TLUT_0000FC),
    gsDPLoadTextureBlock(object_ahg_Tex_0009FC, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ahgVtx_000D00[526], 13, 5),
    gsSP2Triangles(0, 5, 6, 0, 1, 4, 7, 0),
    gsSP2Triangles(2, 8, 9, 0, 10, 0, 2, 0),
    gsSP2Triangles(11, 12, 1, 0, 13, 2, 3, 0),
    gsSP2Triangles(14, 15, 3, 0, 1, 16, 3, 0),
    gsSP1Triangle(17, 4, 0, 0),
    gsSPVertex(&object_ahgVtx_000D00[539], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(4, 3, 5, 0, 4, 2, 1, 0),
    gsSP2Triangles(2, 6, 0, 0, 6, 7, 5, 0),
    gsSP2Triangles(5, 0, 6, 0, 5, 7, 4, 0),
    gsSPEndDisplayList(),
};

Gfx object_ahg_DL_004628[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ahg_TLUT_0000FC),
    gsDPLoadTextureBlock(object_ahg_Tex_0009FC, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_ahgVtx_000D00[547], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 5, 4, 7, 0),
    gsSP2Triangles(3, 8, 6, 0, 7, 9, 10, 0),
    gsSP2Triangles(7, 10, 5, 0, 0, 6, 1, 0),
    gsSP2Triangles(2, 11, 0, 0, 5, 10, 3, 0),
    gsSP2Triangles(8, 1, 6, 0, 12, 10, 9, 0),
    gsSP2Triangles(9, 13, 12, 0, 13, 8, 3, 0),
    gsSP2Triangles(12, 13, 3, 0, 3, 10, 12, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_ahg_TLUT_0000FC),
    gsDPLoadTextureBlock(object_ahg_Tex_000BFC, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(14, 15, 16, 0, 17, 15, 14, 0),
    gsSP2Triangles(14, 18, 17, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(25, 24, 26, 0, 26, 27, 25, 0),
    gsSPEndDisplayList(),
};

u64 object_ahgTLUT_0047C8[] = {
#include "assets/objects/object_ahg/object_ahgTLUT_0047C8.rgba16.inc.c"
};

u64 object_ahg_Tex_004948[] = {
#include "assets/objects/object_ahg/tex_00004948.ci8.inc.c"
};

u64 object_ahg_Tex_004988[] = {
#include "assets/objects/object_ahg/tex_00004988.ci8.inc.c"
};

u64 object_ahg_Tex_004B88[] = {
#include "assets/objects/object_ahg/tex_00004B88.ci8.inc.c"
};

u64 object_ahg_Tex_004C88[] = {
#include "assets/objects/object_ahg/tex_00004C88.ci8.inc.c"
};

Vtx object_ahgVtx_004D08[] = {
#include "assets/objects/object_ahg/object_ahgVtx_004D08.vtx.inc"
};

Gfx object_ahg_DL_005508[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_ahg_Tex_004948, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_ahgTLUT_0047C8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_ahgVtx_004D08, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 0, 6, 0, 6, 7, 1, 0),
    gsSP2Triangles(8, 9, 10, 0, 6, 9, 8, 0),
    gsSP2Triangles(6, 8, 7, 0, 11, 12, 10, 0),
    gsSP2Triangles(10, 12, 8, 0, 7, 12, 13, 0),
    gsSP2Triangles(8, 12, 7, 0, 12, 14, 13, 0),
    gsSP2Triangles(11, 14, 12, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 17, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 17, 16, 26, 0),
    gsSP2Triangles(13, 2, 1, 0, 1, 7, 13, 0),
    gsSP2Triangles(27, 9, 6, 0, 9, 28, 18, 0),
    gsSP2Triangles(27, 28, 9, 0, 27, 6, 0, 0),
    gsSP2Triangles(2, 13, 29, 0, 13, 14, 29, 0),
    gsSP2Triangles(19, 30, 14, 0, 14, 30, 29, 0),
    gsSPVertex(&object_ahgVtx_004D08[31], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_ahg_Tex_004988, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ahgVtx_004D08[34], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 4, 2, 1, 0),
    gsSP1Triangle(4, 3, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_ahg_Tex_004B88, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ahgVtx_004D08[43], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 4, 3, 0, 2, 3, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 2, 0),
    gsSP2Triangles(7, 11, 8, 0, 10, 4, 2, 0),
    gsSP2Triangles(5, 4, 10, 0, 9, 1, 12, 0),
    gsSP2Triangles(2, 1, 9, 0, 13, 6, 8, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 17, 18, 0),
    gsSP2Triangles(14, 16, 17, 0, 12, 1, 0, 0),
    gsSPEndDisplayList(),
};

Gfx object_ahg_DL_005728[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_ahg_Tex_004948, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_ahgTLUT_0047C8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_ahgVtx_004D08[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 0, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(1, 0, 10, 0, 10, 11, 1, 0),
    gsSP2Triangles(12, 13, 14, 0, 10, 13, 12, 0),
    gsSP2Triangles(10, 12, 11, 0, 15, 16, 14, 0),
    gsSP2Triangles(14, 16, 12, 0, 11, 16, 17, 0),
    gsSP2Triangles(12, 16, 11, 0, 16, 18, 17, 0),
    gsSP2Triangles(15, 18, 16, 0, 6, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(20, 19, 3, 0, 17, 2, 1, 0),
    gsSP2Triangles(1, 11, 17, 0, 5, 13, 10, 0),
    gsSP2Triangles(5, 27, 13, 0, 5, 10, 0, 0),
    gsSP2Triangles(2, 17, 4, 0, 17, 18, 4, 0),
    gsSP2Triangles(18, 28, 4, 0, 29, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_ahg_Tex_004988, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ahgVtx_004D08[94], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_ahg_Tex_004B88, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ahgVtx_004D08[101], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_ahg_Tex_004C88, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ahgVtx_004D08[109], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(0, 10, 3, 0, 10, 0, 11, 0),
    gsSP2Triangles(12, 6, 5, 0, 13, 14, 12, 0),
    gsSP2Triangles(14, 13, 15, 0, 8, 7, 11, 0),
    gsSP2Triangles(15, 8, 16, 0, 15, 16, 2, 0),
    gsSP2Triangles(11, 16, 8, 0, 0, 16, 11, 0),
    gsSP2Triangles(17, 13, 18, 0, 12, 18, 13, 0),
    gsSP2Triangles(12, 14, 6, 0, 9, 8, 15, 0),
    gsSP2Triangles(5, 18, 12, 0, 15, 13, 17, 0),
    gsSP2Triangles(17, 9, 15, 0, 2, 16, 0, 0),
    gsSP1Triangle(11, 7, 10, 0),
    gsSPEndDisplayList(),
};

