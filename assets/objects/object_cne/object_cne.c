#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_cne.h"

StandardLimb object_cne_Limb_000000 = { 
    { 0, 3927, -50 }, 0x01, LIMB_DONE,
    object_cne_DL_002300
};

StandardLimb object_cne_Limb_00000C = { 
    { 359, 0, 350 }, 0x02, 0x04,
    object_cne_DL_002238
};

StandardLimb object_cne_Limb_000018 = { 
    { 1200, 0, 0 }, 0x03, LIMB_DONE,
    object_cne_DL_002170
};

StandardLimb object_cne_Limb_000024 = { 
    { 1400, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_cne_DL_0020A8
};

StandardLimb object_cne_Limb_000030 = { 
    { 359, 0, -350 }, 0x05, 0x07,
    object_cne_DL_001FE0
};

StandardLimb object_cne_Limb_00003C = { 
    { 1200, 0, 0 }, 0x06, LIMB_DONE,
    object_cne_DL_001F18
};

StandardLimb object_cne_Limb_000048 = { 
    { 1400, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_cne_DL_001E50
};

StandardLimb object_cne_Limb_000054 = { 
    { 0, 0, 0 }, 0x08, LIMB_DONE,
    object_cne_DL_001B88
};

StandardLimb object_cne_Limb_000060 = { 
    { 1250, -50, 650 }, 0x09, 0x0B,
    object_cne_DL_001AC8
};

StandardLimb object_cne_Limb_00006C = { 
    { 850, 0, 0 }, 0x0A, LIMB_DONE,
    object_cne_DL_0019A8
};

StandardLimb object_cne_Limb_000078 = { 
    { 1001, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_cne_DL_0018C8
};

StandardLimb object_cne_Limb_000084 = { 
    { 1250, -50, -650 }, 0x0C, 0x0E,
    object_cne_DL_001808
};

StandardLimb object_cne_Limb_000090 = { 
    { 851, 0, 0 }, 0x0D, LIMB_DONE,
    object_cne_DL_0016E8
};

StandardLimb object_cne_Limb_00009C = { 
    { 1000, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_cne_DL_001608
};

StandardLimb object_cne_Limb_0000A8 = { 
    { 1905, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_cne_DL_001300
};

void* object_cne_Skel_0000F0Limbs[] = {
    &object_cne_Limb_000000,
    &object_cne_Limb_00000C,
    &object_cne_Limb_000018,
    &object_cne_Limb_000024,
    &object_cne_Limb_000030,
    &object_cne_Limb_00003C,
    &object_cne_Limb_000048,
    &object_cne_Limb_000054,
    &object_cne_Limb_000060,
    &object_cne_Limb_00006C,
    &object_cne_Limb_000078,
    &object_cne_Limb_000084,
    &object_cne_Limb_000090,
    &object_cne_Limb_00009C,
    &object_cne_Limb_0000A8,
};

FlexSkeletonHeader object_cne_Skel_0000F0 = { 
    { object_cne_Skel_0000F0Limbs, ARRAY_COUNT(object_cne_Skel_0000F0Limbs) }, 15
};

u32 object_cne_TLUT_0000FC[] = {
#include "assets/objects/object_cne/tlut_000000FC.u32.rgba16.inc.c"
};

u32 object_cne_Tex_0002FC[] = {
#include "assets/objects/object_cne/tex_000002FC.u32.ci8.inc.c"
};

u32 object_cne_Tex_00033C[] = {
#include "assets/objects/object_cne/tex_0000033C.u32.ci8.inc.c"
};

u32 object_cne_Tex_00037C[] = {
#include "assets/objects/object_cne/tex_0000037C.u32.ci8.inc.c"
};

u32 object_cne_Tex_0003BC[] = {
#include "assets/objects/object_cne/tex_000003BC.u32.ci8.inc.c"
};

u32 object_cne_Tex_0003FC[] = {
#include "assets/objects/object_cne/tex_000003FC.u32.ci8.inc.c"
};

u32 object_cne_Tex_00047C[] = {
#include "assets/objects/object_cne/tex_0000047C.u32.i8.inc.c"
};

u32 object_cne_Tex_0004BC[] = {
#include "assets/objects/object_cne/tex_000004BC.u32.ci8.inc.c"
};

Vtx object_cneVtx_000500[] = {
#include "assets/objects/object_cne/object_cneVtx_000500.vtx.inc"
};

Gfx object_cne_DL_001300[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cne_TLUT_0000FC),
    gsDPLoadTextureBlock(object_cne_Tex_00033C, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cneVtx_000500[18], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 0, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 9, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 25, 26, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cne_TLUT_0000FC),
    gsDPLoadTextureBlock(object_cne_Tex_00037C, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_cneVtx_000500[45], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cne_TLUT_0000FC),
    gsDPLoadTextureBlock(object_cne_Tex_0003BC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(10, 8, 11, 0, 8, 10, 6, 0),
    gsSP2Triangles(11, 12, 10, 0, 13, 12, 14, 0),
    gsSP2Triangles(15, 13, 16, 0, 14, 16, 13, 0),
    gsSP2Triangles(17, 9, 15, 0, 16, 17, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 18, 21, 0),
    gsSP2Triangles(18, 22, 21, 0, 22, 23, 21, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cne_TLUT_0000FC),
    gsDPLoadTextureBlock(object_cne_Tex_0003FC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsSPVertex(&object_cneVtx_000500[69], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 5, 2, 1, 0),
    gsSP2Triangles(2, 6, 0, 0, 7, 6, 2, 0),
    gsSP2Triangles(8, 6, 9, 0, 2, 10, 7, 0),
    gsSP2Triangles(10, 2, 11, 0, 1, 12, 13, 0),
    gsSP2Triangles(1, 14, 15, 0, 1, 4, 14, 0),
    gsSP2Triangles(16, 1, 15, 0, 15, 17, 16, 0),
    gsSP2Triangles(16, 17, 7, 0, 9, 17, 8, 0),
    gsSPEndDisplayList(),
};

Gfx object_cne_DL_001608[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cne_TLUT_0000FC),
    gsDPLoadTextureBlock(object_cne_Tex_00037C, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cneVtx_000500[121], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 2, 5, 0, 2, 1, 5, 0),
    gsSP1Triangle(4, 3, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_cne_DL_0016E8[] = {
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cneVtx_000500[127], 3, 0),
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cne_TLUT_0000FC),
    gsDPLoadTextureBlock(object_cne_Tex_0002FC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_cneVtx_000500[130], 9, 3),
    gsSP2Triangles(0, 3, 4, 0, 1, 5, 6, 0),
    gsSP2Triangles(7, 8, 0, 0, 9, 1, 0, 0),
    gsSP2Triangles(0, 2, 10, 0, 11, 2, 1, 0),
    gsSPVertex(&object_cneVtx_000500[139], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(2, 4, 0, 0, 3, 2, 1, 0),
    gsSP1Triangle(4, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx object_cne_DL_001808[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0A000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_cne_Tex_00047C, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cneVtx_000500[144], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 2, 4, 0, 4, 3, 6, 0),
    gsSP2Triangles(5, 4, 7, 0, 8, 2, 1, 0),
    gsSP2Triangles(2, 9, 4, 0, 5, 10, 3, 0),
    gsSP1Triangle(2, 6, 0, 0),
    gsSPEndDisplayList(),
};

Gfx object_cne_DL_0018C8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cne_TLUT_0000FC),
    gsDPLoadTextureBlock(object_cne_Tex_00037C, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cneVtx_000500[87], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 0, 5, 0, 4, 1, 0, 0),
    gsSP1Triangle(0, 3, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_cne_DL_0019A8[] = {
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cneVtx_000500[93], 3, 0),
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cne_TLUT_0000FC),
    gsDPLoadTextureBlock(object_cne_Tex_0002FC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_cneVtx_000500[96], 9, 3),
    gsSP2Triangles(3, 4, 0, 0, 5, 6, 1, 0),
    gsSP2Triangles(0, 7, 8, 0, 0, 1, 9, 0),
    gsSP2Triangles(10, 2, 0, 0, 1, 2, 11, 0),
    gsSPVertex(&object_cneVtx_000500[105], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(2, 3, 0, 0, 1, 0, 4, 0),
    gsSP1Triangle(4, 0, 3, 0),
    gsSPEndDisplayList(),
};

Gfx object_cne_DL_001AC8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0A000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_cne_Tex_00047C, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cneVtx_000500[110], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 0, 6, 0, 6, 5, 4, 0),
    gsSP2Triangles(7, 4, 3, 0, 1, 0, 8, 0),
    gsSP2Triangles(4, 9, 0, 0, 5, 10, 3, 0),
    gsSP1Triangle(2, 6, 0, 0),
    gsSPEndDisplayList(),
};

Gfx object_cne_DL_001B88[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cneVtx_000500[155], 5, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_cne_Tex_00047C, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_cneVtx_000500[160], 16, 5),
    gsSP2Triangles(0, 3, 5, 0, 6, 4, 1, 0),
    gsSP2Triangles(7, 8, 0, 0, 1, 9, 10, 0),
    gsSP2Triangles(11, 1, 2, 0, 2, 12, 13, 0),
    gsSP2Triangles(2, 0, 14, 0, 15, 16, 2, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cne_TLUT_0000FC),
    gsDPLoadTextureBlock(object_cne_Tex_0002FC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(17, 18, 19, 0, 20, 18, 17, 0),
    gsSP1Triangle(20, 19, 18, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cne_TLUT_0000FC),
    gsDPLoadTextureBlock(object_cne_Tex_0004BC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_cneVtx_000500[176], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 12, 13, 14, 0),
    gsSP2Triangles(8, 15, 16, 0, 17, 4, 3, 0),
    gsSP1Triangle(18, 8, 16, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_cne_Tex_00047C, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_cneVtx_000500[195], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 8, 9, 7, 0),
    gsSP2Triangles(10, 1, 0, 0, 1, 10, 11, 0),
    gsSP2Triangles(9, 8, 12, 0, 13, 12, 8, 0),
    gsSP2Triangles(14, 10, 0, 0, 15, 10, 14, 0),
    gsSP2Triangles(14, 12, 15, 0, 9, 12, 14, 0),
    gsSP2Triangles(3, 1, 11, 0, 13, 8, 6, 0),
    gsSPEndDisplayList(),
};

Gfx object_cne_DL_001E50[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cne_TLUT_0000FC),
    gsDPLoadTextureBlock(object_cne_Tex_0002FC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cneVtx_000500[9], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_cne_DL_001F18[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cne_TLUT_0000FC),
    gsDPLoadTextureBlock(object_cne_Tex_0002FC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cneVtx_000500[12], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_cne_DL_001FE0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cne_TLUT_0000FC),
    gsDPLoadTextureBlock(object_cne_Tex_0002FC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cneVtx_000500[15], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_cne_DL_0020A8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cne_TLUT_0000FC),
    gsDPLoadTextureBlock(object_cne_Tex_0002FC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_cneVtx_000500, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_cne_DL_002170[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cne_TLUT_0000FC),
    gsDPLoadTextureBlock(object_cne_Tex_0002FC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cneVtx_000500[3], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_cne_DL_002238[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cne_TLUT_0000FC),
    gsDPLoadTextureBlock(object_cne_Tex_0002FC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cneVtx_000500[6], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_cne_DL_002300[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x09000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_cne_Tex_00047C, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cneVtx_000500[211], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(3, 5, 2, 0, 2, 6, 0, 0),
    gsSP2Triangles(5, 6, 2, 0, 7, 8, 5, 0),
    gsSP2Triangles(9, 8, 7, 0, 7, 5, 3, 0),
    gsSP2Triangles(10, 7, 3, 0, 7, 11, 9, 0),
    gsSP2Triangles(1, 4, 2, 0, 4, 12, 3, 0),
    gsSP2Triangles(3, 12, 10, 0, 7, 10, 11, 0),
    gsSPEndDisplayList(),
};

u64 object_cne_Tex_0023D0[] = {
#include "assets/objects/object_cne/tex_000023D0.rgba16.inc.c"
};

u64 object_cne_Tex_0024D0[] = {
#include "assets/objects/object_cne/tex_000024D0.rgba16.inc.c"
};

Vtx object_cneVtx_002550[] = {
#include "assets/objects/object_cne/object_cneVtx_002550.vtx.inc"
};

Gfx object_cne_DL_002860[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_cne_Tex_0023D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_cneVtx_002550, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_cneVtx_002550[6], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(4, 5, 2, 0, 4, 6, 5, 0),
    gsSP2Triangles(6, 7, 5, 0, 5, 8, 9, 0),
    gsSP2Triangles(5, 9, 10, 0, 11, 5, 10, 0),
    gsSP2Triangles(10, 12, 13, 0, 11, 12, 0, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 14, 17, 0),
    gsSP2Triangles(18, 3, 5, 0, 5, 13, 18, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_cne_Tex_0024D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_cneVtx_002550[25], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 2, 5, 0, 2, 4, 0, 0),
    gsSP2Triangles(5, 6, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 7, 10, 0, 7, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(17, 6, 15, 0, 18, 17, 16, 0),
    gsSP2Triangles(19, 20, 18, 0, 16, 19, 18, 0),
    gsSP2Triangles(21, 22, 11, 0, 14, 23, 12, 0),
    gsSPEndDisplayList(),
};

