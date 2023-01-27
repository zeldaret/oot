#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_bji.h"

StandardLimb object_bji_Limb_000000 = { 
    { 0, 2827, 50 }, 0x01, LIMB_DONE,
    object_bji_DL_0037D8
};

StandardLimb object_bji_Limb_00000C = { 
    { 359, 0, 350 }, 0x02, 0x04,
    object_bji_DL_003710
};

StandardLimb object_bji_Limb_000018 = { 
    { 1200, 0, 0 }, 0x03, LIMB_DONE,
    object_bji_DL_003648
};

StandardLimb object_bji_Limb_000024 = { 
    { 1000, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_bji_DL_003580
};

StandardLimb object_bji_Limb_000030 = { 
    { 359, 0, -350 }, 0x05, 0x07,
    object_bji_DL_0034B8
};

StandardLimb object_bji_Limb_00003C = { 
    { 1200, 0, 0 }, 0x06, LIMB_DONE,
    object_bji_DL_0033F0
};

StandardLimb object_bji_Limb_000048 = { 
    { 1000, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_bji_DL_003328
};

StandardLimb object_bji_Limb_000054 = { 
    { 0, 0, 0 }, 0x08, LIMB_DONE,
    object_bji_DL_0030F8
};

StandardLimb object_bji_Limb_000060 = { 
    { 1500, -100, 800 }, 0x09, 0x0B,
    object_bji_DL_002FF8
};

StandardLimb object_bji_Limb_00006C = { 
    { 901, 0, 0 }, 0x0A, LIMB_DONE,
    object_bji_DL_002F08
};

StandardLimb object_bji_Limb_000078 = { 
    { 901, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_bji_DL_002E40
};

StandardLimb object_bji_Limb_000084 = { 
    { 1500, -100, -800 }, 0x0C, 0x0E,
    object_bji_DL_002D40
};

StandardLimb object_bji_Limb_000090 = { 
    { 900, 0, 0 }, 0x0D, LIMB_DONE,
    object_bji_DL_002C50
};

StandardLimb object_bji_Limb_00009C = { 
    { 900, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_bji_DL_002B88
};

StandardLimb object_bji_Limb_0000A8 = { 
    { 2054, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_bji_DL_002560
};

void* object_bji_Skel_0000F0Limbs[] = {
    &object_bji_Limb_000000,
    &object_bji_Limb_00000C,
    &object_bji_Limb_000018,
    &object_bji_Limb_000024,
    &object_bji_Limb_000030,
    &object_bji_Limb_00003C,
    &object_bji_Limb_000048,
    &object_bji_Limb_000054,
    &object_bji_Limb_000060,
    &object_bji_Limb_00006C,
    &object_bji_Limb_000078,
    &object_bji_Limb_000084,
    &object_bji_Limb_000090,
    &object_bji_Limb_00009C,
    &object_bji_Limb_0000A8,
};

FlexSkeletonHeader object_bji_Skel_0000F0 = { 
    { object_bji_Skel_0000F0Limbs, ARRAY_COUNT(object_bji_Skel_0000F0Limbs) }, 15
};

u32 object_bji_TLUT_0000FC[] = {
#include "assets/objects/object_bji/tlut_000000FC.u32.rgba16.inc.c"
};

u32 object_bji_Tex_0002FC[] = {
#include "assets/objects/object_bji/tex_000002FC.u32.ci8.inc.c"
};

u32 object_bji_Tex_00033C[] = {
#include "assets/objects/object_bji/tex_0000033C.u32.ci8.inc.c"
};

u32 object_bji_Tex_00037C[] = {
#include "assets/objects/object_bji/tex_0000037C.u32.ci8.inc.c"
};

u32 object_bji_Tex_00047C[] = {
#include "assets/objects/object_bji/tex_0000047C.u32.ci8.inc.c"
};

u32 object_bji_Tex_0004BC[] = {
#include "assets/objects/object_bji/tex_000004BC.u32.ci8.inc.c"
};

u32 object_bji_Tex_0004FC[] = {
#include "assets/objects/object_bji/tex_000004FC.u32.i8.inc.c"
};

u32 object_bji_Tex_0005FC[] = {
#include "assets/objects/object_bji/tex_000005FC.u32.ci8.inc.c"
};

u32 object_bji_Tex_0009FC[] = {
#include "assets/objects/object_bji/tex_000009FC.u32.ci8.inc.c"
};

u32 object_bji_Tex_000DFC[] = {
#include "assets/objects/object_bji/tex_00000DFC.u32.ci8.inc.c"
};

u32 object_bji_Tex_0011FC[] = {
#include "assets/objects/object_bji/tex_000011FC.u32.i8.inc.c"
};

Vtx object_bjiVtx_001240[] = {
#include "assets/objects/object_bji/object_bjiVtx_001240.vtx.inc"
};

Gfx object_bji_DL_002560[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bji_TLUT_0000FC),
    gsDPLoadTextureBlock(object_bji_Tex_00033C, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bjiVtx_001240[18], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 10, 7, 0, 8, 5, 11, 0),
    gsSP2Triangles(5, 8, 3, 0, 12, 9, 11, 0),
    gsSP2Triangles(11, 9, 8, 0, 7, 10, 13, 0),
    gsSP2Triangles(13, 10, 14, 0, 15, 7, 16, 0),
    gsSP2Triangles(13, 16, 7, 0, 16, 17, 18, 0),
    gsSP1Triangle(16, 18, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bji_TLUT_0000FC),
    gsDPLoadTextureBlock(object_bji_Tex_0002FC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(19, 20, 21, 0, 21, 22, 19, 0),
    gsSP2Triangles(23, 24, 25, 0, 25, 26, 23, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bji_TLUT_0000FC),
    gsDPLoadTextureBlock(object_bji_Tex_00037C, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_bjiVtx_001240[45], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(4, 3, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 6, 0),
    gsSP1Triangle(6, 8, 9, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bji_TLUT_0000FC),
    gsDPLoadTextureBlock(object_bji_Tex_00047C, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(10, 11, 12, 0, 12, 13, 10, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bji_TLUT_0000FC),
    gsDPLoadTextureBlock(object_bji_Tex_0004BC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(14, 15, 16, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bji_TLUT_0000FC),
    gsDPLoadTextureBlock(object_bji_Tex_0002FC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_bjiVtx_001240[62], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0),
    gsSP2Triangles(2, 5, 6, 0, 6, 5, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 9, 11, 0),
    gsSP2Triangles(9, 12, 11, 0, 12, 13, 11, 0),
    gsSP2Triangles(11, 13, 14, 0, 14, 15, 11, 0),
    gsSP2Triangles(16, 3, 2, 0, 6, 17, 2, 0),
    gsSP2Triangles(18, 17, 7, 0, 2, 17, 16, 0),
    gsSP2Triangles(15, 3, 16, 0, 16, 17, 19, 0),
    gsSP2Triangles(7, 17, 6, 0, 10, 19, 8, 0),
    gsSP2Triangles(16, 19, 11, 0, 8, 19, 20, 0),
    gsSP2Triangles(11, 19, 10, 0, 11, 15, 16, 0),
    gsSP1Triangle(21, 22, 23, 0),
    gsSPVertex(&object_bjiVtx_001240[86], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 4, 3, 0, 7, 1, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 11, 12, 9, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bji_TLUT_0000FC),
    gsDPLoadTextureBlock(object_bji_Tex_0004BC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(13, 14, 15, 0),
    gsSP1Triangle(16, 17, 18, 0),
    gsDPPipeSync(),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bji_Tex_0004FC, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_bjiVtx_001240[105], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 2, 1, 8, 0),
    gsSP2Triangles(8, 9, 2, 0, 3, 2, 9, 0),
    gsSP2Triangles(9, 10, 3, 0, 1, 11, 8, 0),
    gsSP2Triangles(7, 12, 5, 0, 4, 6, 5, 0),
    gsSP2Triangles(6, 13, 7, 0, 14, 13, 6, 0),
    gsSP2Triangles(3, 10, 14, 0, 14, 6, 3, 0),
    gsSP2Triangles(15, 16, 17, 0, 3, 6, 4, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bji_TLUT_0000FC),
    gsDPLoadTextureBlock(0x0A000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSP2Triangles(18, 19, 20, 0, 21, 18, 20, 0),
    gsSP2Triangles(22, 23, 18, 0, 22, 18, 24, 0),
    gsSPEndDisplayList(),
};

Gfx object_bji_DL_002B88[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bji_TLUT_0000FC),
    gsDPLoadTextureBlock(object_bji_Tex_0002FC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bjiVtx_001240[176], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_bji_DL_002C50[] = {
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bjiVtx_001240[179], 4, 0),
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bji_Tex_0004FC, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bjiVtx_001240[183], 9, 4),
    gsSP2Triangles(4, 0, 5, 0, 6, 2, 7, 0),
    gsSP2Triangles(0, 1, 8, 0, 9, 10, 3, 0),
    gsSP2Triangles(3, 0, 11, 0, 12, 1, 2, 0),
    gsSPVertex(&object_bjiVtx_001240[192], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(2, 1, 3, 0),
    gsSPEndDisplayList(),
};

Gfx object_bji_DL_002D40[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bjiVtx_001240[198], 4, 0),
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bji_Tex_0004FC, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bjiVtx_001240[202], 14, 4),
    gsSP2Triangles(4, 0, 5, 0, 6, 7, 1, 0),
    gsSP2Triangles(8, 2, 3, 0, 1, 9, 10, 0),
    gsSP2Triangles(1, 2, 11, 0, 2, 12, 13, 0),
    gsSP2Triangles(14, 3, 15, 0, 16, 0, 1, 0),
    gsSP1Triangle(17, 3, 0, 0),
    gsSPVertex(&object_bjiVtx_001240[216], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(1, 3, 4, 0, 4, 5, 1, 0),
    gsSPEndDisplayList(),
};

Gfx object_bji_DL_002E40[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bji_TLUT_0000FC),
    gsDPLoadTextureBlock(object_bji_Tex_0002FC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bjiVtx_001240[130], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_bji_DL_002F08[] = {
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bjiVtx_001240[133], 4, 0),
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bji_Tex_0004FC, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bjiVtx_001240[137], 9, 4),
    gsSP2Triangles(4, 0, 5, 0, 6, 2, 7, 0),
    gsSP2Triangles(8, 1, 0, 0, 3, 9, 10, 0),
    gsSP2Triangles(11, 0, 3, 0, 2, 1, 12, 0),
    gsSPVertex(&object_bjiVtx_001240[146], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(5, 1, 0, 0),
    gsSPEndDisplayList(),
};

Gfx object_bji_DL_002FF8[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bjiVtx_001240[152], 4, 0),
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bji_Tex_0004FC, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bjiVtx_001240[156], 14, 4),
    gsSP2Triangles(4, 0, 5, 0, 1, 6, 7, 0),
    gsSP2Triangles(2, 3, 8, 0, 9, 10, 1, 0),
    gsSP2Triangles(11, 3, 1, 0, 12, 13, 3, 0),
    gsSP2Triangles(14, 2, 15, 0, 1, 0, 16, 0),
    gsSP1Triangle(0, 2, 17, 0),
    gsSPVertex(&object_bjiVtx_001240[170], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 3, 1, 0, 1, 5, 4, 0),
    gsSPEndDisplayList(),
};

Gfx object_bji_DL_0030F8[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bjiVtx_001240[222], 7, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bji_Tex_0004FC, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bjiVtx_001240[229], 21, 7),
    gsSP2Triangles(7, 0, 8, 0, 1, 0, 9, 0),
    gsSP2Triangles(10, 11, 1, 0, 3, 12, 13, 0),
    gsSP2Triangles(14, 0, 3, 0, 15, 3, 16, 0),
    gsSP2Triangles(4, 5, 17, 0, 1, 18, 19, 0),
    gsSP2Triangles(20, 2, 21, 0, 22, 2, 1, 0),
    gsSP2Triangles(23, 24, 6, 0, 6, 2, 25, 0),
    gsSP1Triangle(26, 6, 27, 0),
    gsSPVertex(&object_bjiVtx_001240[250], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 5, 2, 0, 2, 6, 4, 0),
    gsSP2Triangles(7, 4, 6, 0, 8, 4, 7, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 0, 0),
    gsSP2Triangles(13, 12, 14, 0, 12, 15, 16, 0),
    gsSP2Triangles(16, 17, 12, 0, 17, 16, 18, 0),
    gsSP1Triangle(18, 16, 8, 0),
    gsDPPipeSync(),
    gsSPDisplayList(0x09000000),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bji_Tex_0011FC, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(19, 20, 21, 0, 21, 22, 23, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bji_TLUT_0000FC),
    gsDPLoadTextureBlock(object_bji_Tex_00033C, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(24, 25, 26, 0, 26, 25, 27, 0),
    gsSP1Triangle(26, 27, 28, 0),
    gsSPEndDisplayList(),
};

Gfx object_bji_DL_003328[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bji_TLUT_0000FC),
    gsDPLoadTextureBlock(object_bji_Tex_0002FC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bjiVtx_001240[9], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_bji_DL_0033F0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bji_TLUT_0000FC),
    gsDPLoadTextureBlock(object_bji_Tex_0002FC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bjiVtx_001240[12], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_bji_DL_0034B8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bji_TLUT_0000FC),
    gsDPLoadTextureBlock(object_bji_Tex_0002FC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bjiVtx_001240[15], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_bji_DL_003580[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bji_TLUT_0000FC),
    gsDPLoadTextureBlock(object_bji_Tex_0002FC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_bjiVtx_001240, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_bji_DL_003648[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bji_TLUT_0000FC),
    gsDPLoadTextureBlock(object_bji_Tex_0002FC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bjiVtx_001240[3], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_bji_DL_003710[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bji_TLUT_0000FC),
    gsDPLoadTextureBlock(object_bji_Tex_0002FC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bjiVtx_001240[6], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_bji_DL_0037D8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bji_Tex_0004FC, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bjiVtx_001240[279], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(1, 0, 3, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 6, 7, 3, 0),
    gsSP2Triangles(3, 7, 1, 0, 8, 1, 7, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 17, 18, 15, 0),
    gsDPPipeSync(),
    gsSPDisplayList(0x09000000),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bji_Tex_0011FC, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(19, 20, 21, 0, 22, 19, 21, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSPEndDisplayList(),
};

u64 object_bji_Tex_003908[] = {
#include "assets/objects/object_bji/tex_00003908.rgba16.inc.c"
};

u64 object_bji_Tex_003988[] = {
#include "assets/objects/object_bji/tex_00003988.rgba16.inc.c"
};

u64 object_bji_Tex_003A08[] = {
#include "assets/objects/object_bji/tex_00003A08.rgba16.inc.c"
};

Vtx object_bjiVtx_003A88[] = {
#include "assets/objects/object_bji/object_bjiVtx_003A88.vtx.inc"
};

Gfx object_bji_DL_003F68[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bji_Tex_003908, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bjiVtx_003A88, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bjiVtx_003A88[18], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 2, 1, 0, 7, 8, 3, 0),
    gsSP2Triangles(1, 9, 10, 0, 8, 4, 3, 0),
    gsSP2Triangles(9, 1, 0, 0, 5, 4, 11, 0),
    gsSP2Triangles(12, 10, 9, 0, 13, 8, 7, 0),
    gsSP2Triangles(14, 15, 2, 0, 16, 10, 12, 0),
    gsSP2Triangles(16, 12, 17, 0, 18, 6, 16, 0),
    gsSP2Triangles(17, 18, 16, 0, 9, 19, 20, 0),
    gsSP2Triangles(13, 4, 8, 0, 13, 11, 4, 0),
    gsSP2Triangles(1, 16, 6, 0, 10, 16, 1, 0),
    gsSP1Triangle(2, 6, 18, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_bji_Tex_003988, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_bjiVtx_003A88[39], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 2, 1, 0, 0, 2, 12, 0),
    gsSP2Triangles(13, 10, 9, 0, 11, 13, 14, 0),
    gsSP2Triangles(8, 15, 6, 0, 16, 17, 18, 0),
    gsSP2Triangles(14, 13, 9, 0, 18, 11, 16, 0),
    gsSP2Triangles(19, 13, 20, 0, 21, 8, 7, 0),
    gsSP2Triangles(20, 22, 19, 0, 13, 11, 18, 0),
    gsSP2Triangles(18, 20, 13, 0, 14, 23, 11, 0),
    gsSP2Triangles(11, 23, 9, 0, 15, 8, 21, 0),
    gsSP2Triangles(10, 13, 19, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 28, 25, 0, 26, 25, 28, 0),
    gsSP2Triangles(25, 24, 27, 0, 16, 11, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_bji_Tex_003A08, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_bjiVtx_003A88[68], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 9, 0),
    gsSP2Triangles(5, 9, 6, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

