#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_boj.h"

StandardLimb object_boj_Limb_000000 = { 
    { 0, 3665, 0 }, 0x01, LIMB_DONE,
    object_boj_DL_0039B0
};

StandardLimb object_boj_Limb_00000C = { 
    { 459, 0, 350 }, 0x02, 0x04,
    object_boj_DL_0038A8
};

StandardLimb object_boj_Limb_000018 = { 
    { 1401, 0, 0 }, 0x03, LIMB_DONE,
    object_boj_DL_003798
};

StandardLimb object_boj_Limb_000024 = { 
    { 1451, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_boj_DL_003680
};

StandardLimb object_boj_Limb_000030 = { 
    { 459, 0, -350 }, 0x05, 0x07,
    object_boj_DL_003578
};

StandardLimb object_boj_Limb_00003C = { 
    { 1400, 0, 0 }, 0x06, LIMB_DONE,
    object_boj_DL_003468
};

StandardLimb object_boj_Limb_000048 = { 
    { 1450, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_boj_DL_003350
};

StandardLimb object_boj_Limb_000054 = { 
    { 0, 0, 0 }, 0x08, LIMB_DONE,
    object_boj_DL_003178
};

StandardLimb object_boj_Limb_000060 = { 
    { 1200, 0, 600 }, 0x09, 0x0B,
    object_boj_DL_003070
};

StandardLimb object_boj_Limb_00006C = { 
    { 1000, 0, 0 }, 0x0A, LIMB_DONE,
    object_boj_DL_002F68
};

StandardLimb object_boj_Limb_000078 = { 
    { 855, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_boj_DL_002E20
};

StandardLimb object_boj_Limb_000084 = { 
    { 1200, 0, -600 }, 0x0C, 0x0E,
    object_boj_DL_002D18
};

StandardLimb object_boj_Limb_000090 = { 
    { 1001, 0, 0 }, 0x0D, LIMB_DONE,
    object_boj_DL_002C10
};

StandardLimb object_boj_Limb_00009C = { 
    { 850, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_boj_DL_002AC8
};

StandardLimb object_boj_Limb_0000A8 = { 
    { 1855, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_boj_DL_0026F0
};

void* object_boj_Skel_0000F0Limbs[] = {
    &object_boj_Limb_000000,
    &object_boj_Limb_00000C,
    &object_boj_Limb_000018,
    &object_boj_Limb_000024,
    &object_boj_Limb_000030,
    &object_boj_Limb_00003C,
    &object_boj_Limb_000048,
    &object_boj_Limb_000054,
    &object_boj_Limb_000060,
    &object_boj_Limb_00006C,
    &object_boj_Limb_000078,
    &object_boj_Limb_000084,
    &object_boj_Limb_000090,
    &object_boj_Limb_00009C,
    &object_boj_Limb_0000A8,
};

FlexSkeletonHeader object_boj_Skel_0000F0 = { 
    { object_boj_Skel_0000F0Limbs, ARRAY_COUNT(object_boj_Skel_0000F0Limbs) }, 15
};

u32 object_boj_TLUT_0000FC[] = {
#include "assets/objects/object_boj/tlut_000000FC.u32.rgba16.inc.c"
};

u32 object_boj_Tex_0002FC[] = {
#include "assets/objects/object_boj/tex_000002FC.u32.ci8.inc.c"
};

u32 object_boj_Tex_00037C[] = {
#include "assets/objects/object_boj/tex_0000037C.u32.ci8.inc.c"
};

u32 object_boj_Tex_0003BC[] = {
#include "assets/objects/object_boj/tex_000003BC.u32.ci8.inc.c"
};

u32 object_boj_Tex_0005BC[] = {
#include "assets/objects/object_boj/tex_000005BC.u32.ci8.inc.c"
};

u32 object_boj_Tex_0005FC[] = {
#include "assets/objects/object_boj/tex_000005FC.u32.ci8.inc.c"
};

u32 object_boj_Tex_0006FC[] = {
#include "assets/objects/object_boj/tex_000006FC.u32.ci8.inc.c"
};

u32 object_boj_Tex_0007FC[] = {
#include "assets/objects/object_boj/tex_000007FC.u32.ci8.inc.c"
};

u32 object_boj_Tex_0008FC[] = {
#include "assets/objects/object_boj/tex_000008FC.u32.ci8.inc.c"
};

u32 object_boj_Tex_00093C[] = {
#include "assets/objects/object_boj/tex_0000093C.u32.i8.inc.c"
};

u32 object_boj_Tex_000A3C[] = {
#include "assets/objects/object_boj/tex_00000A3C.u32.ci8.inc.c"
};

u32 object_boj_Tex_000A7C[] = {
#include "assets/objects/object_boj/tex_00000A7C.u32.i8.inc.c"
};

Vtx object_bojVtx_000AC0[] = {
#include "assets/objects/object_boj/object_bojVtx_000AC0.vtx.inc"
};

Gfx object_boj_DL_0026F0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_boj_TLUT_0000FC),
    gsDPLoadTextureBlock(object_boj_Tex_0002FC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_bojVtx_000AC0, 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 3, 6, 0, 6, 3, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(5, 20, 21, 0, 22, 21, 20, 0),
    gsSP2Triangles(23, 21, 22, 0, 19, 24, 25, 0),
    gsSP2Triangles(26, 27, 14, 0, 2, 28, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_boj_TLUT_0000FC),
    gsDPLoadTextureBlock(object_boj_Tex_00037C, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bojVtx_000AC0[29], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 7, 5, 8, 0),
    gsSP1Triangle(9, 1, 0, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP1Triangle(10, 11, 12, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(18, 17, 19, 0, 20, 14, 21, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP1Triangle(26, 27, 28, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_boj_TLUT_0000FC),
    gsDPLoadTextureBlock(object_boj_Tex_0003BC, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x003C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bojVtx_000AC0[58], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(1, 3, 2, 0, 2, 5, 0, 0),
    gsSP1Triangle(6, 5, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_boj_TLUT_0000FC),
    gsDPLoadTextureBlock(object_boj_Tex_0005BC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP2Triangles(7, 8, 9, 0, 10, 11, 12, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_boj_TLUT_0000FC),
    gsDPLoadTextureBlock(0x0A000000, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 14, 13, 0, 18, 14, 17, 0),
    gsSP2Triangles(17, 13, 19, 0, 19, 13, 16, 0),
    gsSP2Triangles(20, 14, 21, 0, 22, 20, 21, 0),
    gsSP2Triangles(21, 14, 23, 0, 23, 14, 18, 0),
    gsSP2Triangles(24, 21, 23, 0, 22, 21, 24, 0),
    gsSPEndDisplayList(),
};

Gfx object_boj_DL_002AC8[] = {
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bojVtx_000AC0[161], 3, 0),
    gsSPMatrix(0x0D000340, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_boj_TLUT_0000FC),
    gsDPLoadTextureBlock(object_boj_Tex_0008FC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bojVtx_000AC0[164], 15, 3),
    gsSP2Triangles(3, 4, 0, 0, 5, 1, 6, 0),
    gsSP2Triangles(1, 2, 7, 0, 0, 8, 2, 0),
    gsSP2Triangles(9, 2, 10, 0, 11, 2, 12, 0),
    gsSP2Triangles(0, 13, 14, 0, 15, 16, 0, 0),
    gsSP1Triangle(0, 1, 17, 0),
    gsSPVertex(&object_bojVtx_000AC0[179], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 4, 8, 6, 0),
    gsSP2Triangles(3, 8, 4, 0, 6, 5, 4, 0),
    gsSP2Triangles(1, 0, 3, 0, 3, 0, 9, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 4, 5, 0),
    gsSP2Triangles(2, 9, 0, 0, 2, 1, 4, 0),
    gsSPEndDisplayList(),
};

Gfx object_boj_DL_002C10[] = {
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bojVtx_000AC0[189], 4, 0),
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_boj_Tex_00093C, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bojVtx_000AC0[193], 11, 4),
    gsSP2Triangles(0, 4, 5, 0, 6, 7, 2, 0),
    gsSP2Triangles(3, 8, 9, 0, 10, 11, 0, 0),
    gsSP2Triangles(12, 1, 0, 0, 0, 3, 13, 0),
    gsSP1Triangle(2, 1, 14, 0),
    gsSPVertex(&object_bojVtx_000AC0[204], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 1, 0, 1, 4, 3, 0),
    gsSP2Triangles(7, 8, 5, 0, 1, 6, 2, 0),
    gsSP1Triangle(5, 8, 3, 0),
    gsSPEndDisplayList(),
};

Gfx object_boj_DL_002D18[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bojVtx_000AC0[213], 5, 0),
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_boj_Tex_00093C, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bojVtx_000AC0[218], 12, 5),
    gsSP2Triangles(5, 6, 3, 0, 0, 7, 8, 0),
    gsSP2Triangles(9, 10, 0, 0, 4, 11, 12, 0),
    gsSP2Triangles(13, 1, 0, 0, 0, 2, 14, 0),
    gsSP2Triangles(15, 2, 4, 0, 3, 1, 16, 0),
    gsSPVertex(&object_bojVtx_000AC0[230], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 3, 0, 2, 1, 7, 0),
    gsSP2Triangles(2, 8, 0, 0, 5, 6, 3, 0),
    gsSP1Triangle(7, 6, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_boj_DL_002E20[] = {
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bojVtx_000AC0[83], 3, 0),
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_boj_TLUT_0000FC),
    gsDPLoadTextureBlock(object_boj_Tex_0008FC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bojVtx_000AC0[86], 15, 3),
    gsSP2Triangles(0, 3, 4, 0, 5, 1, 6, 0),
    gsSP2Triangles(7, 2, 1, 0, 2, 8, 0, 0),
    gsSP2Triangles(9, 2, 10, 0, 11, 2, 12, 0),
    gsSP2Triangles(13, 14, 0, 0, 0, 15, 16, 0),
    gsSP1Triangle(17, 1, 0, 0),
    gsSPVertex(&object_bojVtx_000AC0[101], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 3, 0),
    gsSP2Triangles(3, 8, 4, 0, 3, 7, 6, 0),
    gsSP2Triangles(4, 2, 1, 0, 9, 2, 4, 0),
    gsSP2Triangles(8, 6, 5, 0, 7, 3, 5, 0),
    gsSP2Triangles(2, 9, 0, 0, 3, 1, 0, 0),
    gsSPEndDisplayList(),
};

Gfx object_boj_DL_002F68[] = {
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bojVtx_000AC0[111], 4, 0),
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_boj_Tex_00093C, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bojVtx_000AC0[115], 11, 4),
    gsSP2Triangles(4, 5, 0, 0, 2, 6, 7, 0),
    gsSP2Triangles(8, 9, 3, 0, 0, 10, 11, 0),
    gsSP2Triangles(0, 1, 12, 0, 13, 3, 0, 0),
    gsSP1Triangle(14, 1, 2, 0),
    gsSPVertex(&object_bojVtx_000AC0[126], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 6, 5, 0, 5, 4, 1, 0),
    gsSP2Triangles(3, 7, 8, 0, 0, 6, 1, 0),
    gsSP1Triangle(5, 7, 3, 0),
    gsSPEndDisplayList(),
};

Gfx object_boj_DL_003070[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bojVtx_000AC0[135], 5, 0),
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_boj_Tex_00093C, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bojVtx_000AC0[140], 12, 5),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 0, 0),
    gsSP2Triangles(0, 9, 10, 0, 11, 12, 4, 0),
    gsSP2Triangles(0, 1, 13, 0, 14, 2, 0, 0),
    gsSP2Triangles(4, 2, 15, 0, 16, 1, 3, 0),
    gsSPVertex(&object_bojVtx_000AC0[152], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 1, 0, 0),
    gsSP2Triangles(2, 8, 0, 0, 5, 7, 3, 0),
    gsSP1Triangle(0, 7, 6, 0),
    gsSPEndDisplayList(),
};

Gfx object_boj_DL_003178[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bojVtx_000AC0[239], 5, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_boj_Tex_00093C, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bojVtx_000AC0[244], 12, 5),
    gsSP2Triangles(5, 6, 2, 0, 2, 0, 7, 0),
    gsSP2Triangles(8, 0, 3, 0, 3, 9, 10, 0),
    gsSP2Triangles(11, 12, 4, 0, 4, 1, 13, 0),
    gsSP2Triangles(14, 1, 2, 0, 2, 15, 16, 0),
    gsSPVertex(&object_bojVtx_000AC0[256], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(5, 3, 6, 0, 7, 8, 5, 0),
    gsSP2Triangles(4, 6, 3, 0, 1, 8, 2, 0),
    gsSP2Triangles(1, 0, 4, 0, 7, 2, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 4, 12, 13, 0),
    gsSP2Triangles(10, 9, 13, 0, 14, 6, 4, 0),
    gsSP2Triangles(15, 9, 11, 0, 6, 14, 15, 0),
    gsSP2Triangles(4, 13, 14, 0, 10, 13, 12, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_boj_TLUT_0000FC),
    gsDPLoadTextureBlock(object_boj_Tex_00037C, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 16, 0),
    gsSP2Triangles(16, 21, 19, 0, 18, 21, 16, 0),
    gsSP2Triangles(22, 23, 18, 0, 19, 23, 22, 0),
    gsSP2Triangles(22, 20, 19, 0, 18, 17, 22, 0),
    gsSP2Triangles(23, 19, 24, 0, 24, 19, 21, 0),
    gsSPEndDisplayList(),
};

Gfx object_boj_DL_003350[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bojVtx_000AC0[349], 3, 0),
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_boj_TLUT_0000FC),
    gsDPLoadTextureBlock(object_boj_Tex_000A3C, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bojVtx_000AC0[352], 11, 3),
    gsSP2Triangles(0, 3, 1, 0, 0, 4, 5, 0),
    gsSP2Triangles(6, 7, 1, 0, 8, 2, 1, 0),
    gsSP2Triangles(2, 9, 0, 0, 0, 10, 11, 0),
    gsSP1Triangle(1, 12, 13, 0),
    gsSPVertex(&object_bojVtx_000AC0[363], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_boj_DL_003468[] = {
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bojVtx_000AC0[367], 5, 0),
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x09000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_boj_Tex_000A7C, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bojVtx_000AC0[372], 11, 5),
    gsSP2Triangles(1, 3, 5, 0, 6, 0, 2, 0),
    gsSP2Triangles(7, 8, 4, 0, 4, 0, 9, 0),
    gsSP2Triangles(10, 11, 1, 0, 3, 12, 13, 0),
    gsSP1Triangle(2, 14, 15, 0),
    gsSPVertex(&object_bojVtx_000AC0[383], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(3, 4, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(5, 9, 3, 0, 0, 9, 5, 0),
    gsSP2Triangles(10, 7, 6, 0, 5, 1, 0, 0),
    gsSP1Triangle(2, 4, 3, 0),
    gsSPEndDisplayList(),
};

Gfx object_boj_DL_003578[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bojVtx_000AC0[394], 4, 0),
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x09000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_boj_Tex_000A7C, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bojVtx_000AC0[398], 12, 4),
    gsSP2Triangles(4, 0, 1, 0, 2, 5, 6, 0),
    gsSP2Triangles(3, 7, 8, 0, 0, 9, 10, 0),
    gsSP2Triangles(11, 2, 0, 0, 12, 3, 2, 0),
    gsSP2Triangles(1, 13, 14, 0, 15, 1, 3, 0),
    gsSPVertex(&object_bojVtx_000AC0[410], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 0, 4, 0, 2, 5, 6, 0),
    gsSP2Triangles(5, 2, 3, 0, 4, 3, 1, 0),
    gsSP1Triangle(2, 6, 0, 0),
    gsSPEndDisplayList(),
};

Gfx object_boj_DL_003680[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bojVtx_000AC0[281], 3, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_boj_TLUT_0000FC),
    gsDPLoadTextureBlock(object_boj_Tex_000A3C, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bojVtx_000AC0[284], 11, 3),
    gsSP2Triangles(0, 3, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(0, 6, 7, 0, 0, 2, 8, 0),
    gsSP2Triangles(1, 9, 2, 0, 10, 11, 1, 0),
    gsSP1Triangle(12, 13, 0, 0),
    gsSPVertex(&object_bojVtx_000AC0[295], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSPEndDisplayList(),
};

Gfx object_boj_DL_003798[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bojVtx_000AC0[299], 5, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x09000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_boj_Tex_000A7C, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bojVtx_000AC0[304], 11, 5),
    gsSP2Triangles(5, 1, 3, 0, 4, 0, 6, 0),
    gsSP2Triangles(2, 7, 8, 0, 9, 0, 2, 0),
    gsSP2Triangles(3, 10, 11, 0, 12, 13, 1, 0),
    gsSP1Triangle(14, 15, 4, 0),
    gsSPVertex(&object_bojVtx_000AC0[315], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 3, 0, 6, 7, 8, 0),
    gsSP2Triangles(3, 9, 4, 0, 4, 9, 2, 0),
    gsSP2Triangles(8, 7, 10, 0, 2, 1, 4, 0),
    gsSP1Triangle(3, 5, 0, 0),
    gsSPEndDisplayList(),
};

Gfx object_boj_DL_0038A8[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bojVtx_000AC0[326], 4, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x09000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_boj_Tex_000A7C, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bojVtx_000AC0[330], 12, 4),
    gsSP2Triangles(0, 1, 4, 0, 5, 6, 2, 0),
    gsSP2Triangles(7, 8, 3, 0, 9, 10, 1, 0),
    gsSP2Triangles(1, 2, 11, 0, 2, 3, 12, 0),
    gsSP2Triangles(13, 14, 0, 0, 3, 0, 15, 0),
    gsSPVertex(&object_bojVtx_000AC0[342], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 2, 1, 0, 6, 3, 0, 0),
    gsSP2Triangles(5, 0, 3, 0, 1, 5, 4, 0),
    gsSP1Triangle(2, 6, 0, 0),
    gsSPEndDisplayList(),
};

Gfx object_boj_DL_0039B0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_boj_Tex_00093C, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_bojVtx_000AC0[417], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 4, 0, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 1, 0, 0, 8, 7, 9, 0),
    gsSP2Triangles(0, 10, 9, 0, 9, 10, 8, 0),
    gsDPPipeSync(),
    gsSPDisplayList(0x09000000),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_boj_Tex_000A7C, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(11, 12, 13, 0, 14, 12, 11, 0),
    gsSP2Triangles(11, 15, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(12, 18, 13, 0, 17, 19, 14, 0),
    gsSP2Triangles(14, 15, 17, 0, 16, 20, 17, 0),
    gsSP2Triangles(17, 20, 19, 0, 13, 21, 11, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_boj_TLUT_0000FC),
    gsDPLoadTextureBlock(object_boj_Tex_000A3C, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_bojVtx_000AC0[439], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 6, 0, 0, 3, 5, 7, 0),
    gsSP2Triangles(7, 5, 8, 0, 5, 9, 8, 0),
    gsSP2Triangles(10, 1, 0, 0, 0, 11, 10, 0),
    gsSPEndDisplayList(),
};

u64 object_bojTLUT_003B98[] = {
#include "assets/objects/object_boj/object_bojTLUT_003B98.rgba16.inc.c"
};

u64 object_boj_Tex_003D90[] = {
#include "assets/objects/object_boj/tex_00003D90.ci8.inc.c"
};

u64 object_boj_Tex_003DD0[] = {
#include "assets/objects/object_boj/tex_00003DD0.ci8.inc.c"
};

u64 object_boj_Tex_003ED0[] = {
#include "assets/objects/object_boj/tex_00003ED0.ci8.inc.c"
};

u64 object_boj_Tex_003FD0[] = {
#include "assets/objects/object_boj/tex_00003FD0.ci8.inc.c"
};

u64 object_boj_Tex_004050[] = {
#include "assets/objects/object_boj/tex_00004050.ci8.inc.c"
};

u64 object_boj_Tex_004150[] = {
#include "assets/objects/object_boj/tex_00004150.ci8.inc.c"
};

u64 object_boj_Tex_004250[] = {
#include "assets/objects/object_boj/tex_00004250.ci8.inc.c"
};

Vtx object_bojVtx_004350[] = {
#include "assets/objects/object_boj/object_bojVtx_004350.vtx.inc"
};

Gfx object_boj_DL_0052E0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_boj_Tex_003D90, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_bojTLUT_003B98),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bojVtx_004350, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 5, 7, 0),
    gsSP2Triangles(6, 8, 9, 0, 7, 8, 6, 0),
    gsSP2Triangles(5, 4, 10, 0, 9, 11, 6, 0),
    gsSP2Triangles(6, 11, 4, 0, 12, 13, 14, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(11, 16, 15, 0, 20, 1, 21, 0),
    gsSP2Triangles(22, 1, 20, 0, 23, 24, 25, 0),
    gsSP2Triangles(3, 10, 2, 0, 13, 12, 8, 0),
    gsSP2Triangles(14, 16, 12, 0, 16, 9, 12, 0),
    gsSP2Triangles(2, 10, 0, 0, 11, 9, 16, 0),
    gsSP2Triangles(10, 4, 0, 0, 12, 9, 8, 0),
    gsSP2Triangles(10, 7, 5, 0, 8, 7, 3, 0),
    gsSP2Triangles(3, 7, 10, 0, 0, 4, 11, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_boj_Tex_003DD0, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_bojVtx_004350[32], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(0, 2, 4, 0, 4, 2, 5, 0),
    gsSP2Triangles(2, 3, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 8, 9, 0, 9, 8, 10, 0),
    gsSP2Triangles(7, 11, 8, 0, 8, 11, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_boj_Tex_003ED0, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_bojVtx_004350[44], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(2, 4, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_boj_Tex_004150, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_bojVtx_004350[49], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_boj_DL_005528[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_boj_Tex_003FD0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_bojTLUT_003B98),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_bojVtx_004350[52], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 10, 9, 0, 8, 7, 13, 0),
    gsSP2Triangles(7, 14, 15, 0, 7, 6, 14, 0),
    gsSP2Triangles(10, 16, 17, 0, 10, 17, 11, 0),
    gsSP2Triangles(14, 18, 19, 0, 19, 18, 17, 0),
    gsSP2Triangles(9, 20, 12, 0, 17, 16, 19, 0),
    gsSP2Triangles(18, 14, 21, 0, 13, 7, 22, 0),
    gsSP2Triangles(19, 15, 14, 0, 11, 2, 9, 0),
    gsSP2Triangles(16, 10, 20, 0, 11, 23, 0, 0),
    gsSP2Triangles(13, 22, 8, 0, 11, 21, 23, 0),
    gsSP2Triangles(20, 10, 12, 0, 24, 21, 6, 0),
    gsSP2Triangles(15, 25, 22, 0, 22, 7, 15, 0),
    gsSP2Triangles(21, 14, 6, 0, 20, 25, 16, 0),
    gsSP2Triangles(8, 3, 6, 0, 5, 24, 6, 0),
    gsSP2Triangles(21, 17, 18, 0, 2, 11, 0, 0),
    gsSP2Triangles(11, 17, 21, 0, 5, 6, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_boj_Tex_004050, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_bojVtx_004350[78], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP1Triangle(2, 4, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_boj_Tex_004150, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_bojVtx_004350[83], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 1, 12, 0, 2, 1, 11, 0),
    gsSP2Triangles(3, 6, 4, 0, 6, 13, 4, 0),
    gsSP2Triangles(7, 12, 14, 0, 12, 1, 14, 0),
    gsSP1Triangle(0, 2, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_boj_DL_005738[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_boj_Tex_003D90, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_bojTLUT_003B98),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_bojVtx_004350[98], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_boj_Tex_003FD0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_bojVtx_004350[104], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 2, 5, 3, 0),
    gsSP2Triangles(2, 4, 0, 0, 6, 1, 0, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 9, 11, 0),
    gsSP2Triangles(10, 12, 13, 0, 11, 12, 10, 0),
    gsSP2Triangles(9, 8, 14, 0, 15, 16, 10, 0),
    gsSP2Triangles(10, 16, 8, 0, 7, 0, 3, 0),
    gsSP2Triangles(3, 0, 4, 0, 16, 17, 18, 0),
    gsSP2Triangles(14, 8, 18, 0, 19, 20, 12, 0),
    gsSP2Triangles(14, 11, 9, 0, 12, 11, 19, 0),
    gsSP2Triangles(19, 11, 14, 0, 18, 8, 16, 0),
    gsSP2Triangles(7, 3, 5, 0, 0, 7, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_boj_Tex_004150, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_bojVtx_004350[125], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 0, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(1, 0, 9, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 17, 16, 0, 20, 21, 22, 0),
    gsSP2Triangles(6, 5, 4, 0, 7, 0, 5, 0),
    gsSP2Triangles(2, 23, 0, 0, 5, 23, 3, 0),
    gsSP2Triangles(0, 23, 5, 0, 8, 0, 7, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(27, 28, 24, 0, 27, 29, 28, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_boj_Tex_004250, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_bojVtx_004350[155], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(0, 4, 3, 0, 4, 0, 5, 0),
    gsSP2Triangles(5, 0, 6, 0, 0, 2, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(11, 9, 10, 0, 11, 12, 9, 0),
    gsSP2Triangles(12, 13, 9, 0, 9, 13, 7, 0),
    gsSPEndDisplayList(),
};

Gfx object_boj_DL_0059B0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_boj_Tex_003D90, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_bojTLUT_003B98),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_bojVtx_004350[169], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_boj_Tex_003FD0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_bojVtx_004350[175], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 1, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 5, 9, 10, 0),
    gsSP2Triangles(1, 10, 9, 0, 9, 2, 1, 0),
    gsSP2Triangles(8, 11, 2, 0, 12, 5, 7, 0),
    gsSP2Triangles(8, 5, 12, 0, 10, 6, 5, 0),
    gsSP2Triangles(7, 6, 4, 0, 1, 4, 6, 0),
    gsSP2Triangles(6, 10, 1, 0, 4, 13, 7, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 18, 17, 0, 21, 20, 17, 0),
    gsSP2Triangles(17, 22, 21, 0, 23, 22, 17, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 19, 18, 0),
    gsSP2Triangles(2, 9, 8, 0, 0, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_boj_Tex_004250, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_bojVtx_004350[203], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 1, 10, 0),
    gsSP2Triangles(11, 7, 6, 0, 8, 7, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 15, 14, 16, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 15, 17, 0),
    gsSP2Triangles(13, 15, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 20, 19, 0, 22, 23, 20, 0),
    gsSP2Triangles(23, 24, 20, 0, 20, 24, 21, 0),
    gsSP2Triangles(6, 25, 11, 0, 12, 26, 8, 0),
    gsSP2Triangles(10, 1, 27, 0, 28, 29, 30, 0),
    gsSPVertex(&object_bojVtx_004350[234], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_boj_DL_005BC8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_boj_Tex_003FD0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_bojTLUT_003B98),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_bojVtx_004350[240], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 4, 3, 0, 5, 6, 4, 0),
    gsSP2Triangles(0, 7, 5, 0, 5, 8, 0, 0),
    gsSP2Triangles(8, 3, 1, 0, 6, 7, 2, 0),
    gsSP2Triangles(7, 6, 5, 0, 2, 1, 3, 0),
    gsSP2Triangles(3, 8, 5, 0, 2, 4, 6, 0),
    gsSP2Triangles(2, 7, 0, 0, 1, 0, 8, 0),
    gsSPEndDisplayList(),
};

