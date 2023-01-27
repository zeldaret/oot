#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_km1.h"

StandardLimb gKm1SkelLimb_000000 = { 
    { 0, 1730, -555 }, 0x01, LIMB_DONE,
    gKm1SkelLimb_000000DL_004D90
};

StandardLimb gKm1SkelLimb_00000C = { 
    { 600, 0, 300 }, 0x02, 0x04,
    gKm1SkelLimb_00000CDL_005428
};

StandardLimb gKm1SkelLimb_000018 = { 
    { 650, 0, 0 }, 0x03, LIMB_DONE,
    gKm1SkelLimb_000018DL_005668
};

StandardLimb gKm1SkelLimb_000024 = { 
    { 600, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gKm1SkelLimb_000024DL_0058B0
};

StandardLimb gKm1SkelLimb_000030 = { 
    { 600, 0, -300 }, 0x05, 0x07,
    gKm1SkelLimb_000030DL_004E98
};

StandardLimb gKm1SkelLimb_00003C = { 
    { 650, 0, 0 }, 0x06, LIMB_DONE,
    gKm1SkelLimb_00003CDL_0050D8
};

StandardLimb gKm1SkelLimb_000048 = { 
    { 600, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gKm1SkelLimb_000048DL_005320
};

StandardLimb gKm1SkelLimb_000054 = { 
    { 0, 0, 0 }, 0x08, LIMB_DONE,
    gKm1SkelLimb_000054DL_003F08
};

StandardLimb gKm1SkelLimb_000060 = { 
    { 850, -50, 350 }, 0x09, 0x0B,
    gKm1SkelLimb_000060DL_0047A0
};

StandardLimb gKm1SkelLimb_00006C = { 
    { 800, 0, 0 }, 0x0A, LIMB_DONE,
    gKm1SkelLimb_00006CDL_0049D8
};

StandardLimb gKm1SkelLimb_000078 = { 
    { 500, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gKm1SkelLimb_000078DL_004B10
};

StandardLimb gKm1SkelLimb_000084 = { 
    { 850, -50, -350 }, 0x0C, 0x0E,
    gKm1SkelLimb_000084DL_004138
};

StandardLimb gKm1SkelLimb_000090 = { 
    { 800, 0, 0 }, 0x0D, LIMB_DONE,
    gKm1SkelLimb_000090DL_004370
};

StandardLimb gKm1SkelLimb_00009C = { 
    { 500, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gKm1SkelLimb_00009CDL_0044A8
};

StandardLimb gKm1SkelLimb_0000A8 = { 
    { 1350, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gKm1DL
};

void* gKm1SkelLimbs[] = {
    &gKm1SkelLimb_000000,
    &gKm1SkelLimb_00000C,
    &gKm1SkelLimb_000018,
    &gKm1SkelLimb_000024,
    &gKm1SkelLimb_000030,
    &gKm1SkelLimb_00003C,
    &gKm1SkelLimb_000048,
    &gKm1SkelLimb_000054,
    &gKm1SkelLimb_000060,
    &gKm1SkelLimb_00006C,
    &gKm1SkelLimb_000078,
    &gKm1SkelLimb_000084,
    &gKm1SkelLimb_000090,
    &gKm1SkelLimb_00009C,
    &gKm1SkelLimb_0000A8,
};

FlexSkeletonHeader gKm1Skel = { 
    { gKm1SkelLimbs, ARRAY_COUNT(gKm1SkelLimbs) }, 15
};

u32 gKm1TLUT_0000FC[] = {
#include "assets/objects/object_km1/tlut_0000FC.u32.rgba16.inc.c"
};

u32 gKm1TunicTex[] = {
#include "assets/objects/object_km1/tunic.u32.i8.inc.c"
};

u32 gKm1BootWrinkleTex[] = {
#include "assets/objects/object_km1/boot_wrinkle.u32.i8.inc.c"
};

u32 gKm1Skin1Tex[] = {
#include "assets/objects/object_km1/skin1.u32.ci8.inc.c"
};

u32 gKm1TunicFringeTex[] = {
#include "assets/objects/object_km1/tunic_fringe.u32.rgba16.inc.c"
};

u32 gKm1UnusedHairTex[] = {
#include "assets/objects/object_km1/unused_hair.u32.ci8.inc.c"
};

u32 gKm1Ear1Tex[] = {
#include "assets/objects/object_km1/ear1.u32.ci8.inc.c"
};

u32 gKm1HandTex[] = {
#include "assets/objects/object_km1/hand.u32.ci8.inc.c"
};

u32 gKm1TLUT_00083C[] = {
#include "assets/objects/object_km1/tlut_00083C.u32.rgba16.inc.c"
};

u32 gKm1Ear2Tex[] = {
#include "assets/objects/object_km1/ear2.u32.ci8.inc.c"
};

u32 gKm1Skin2Tex[] = {
#include "assets/objects/object_km1/skin2.u32.ci8.inc.c"
};

u32 gKm1HairTex[] = {
#include "assets/objects/object_km1/hair.u32.ci8.inc.c"
};

Vtx object_km1Vtx_000B80[] = {
#include "assets/objects/object_km1/object_km1Vtx_000B80.vtx.inc"
};

Gfx gKm1DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gKm1TunicTex, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(object_km1Vtx_000B80, 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 5, 7, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 10, 9, 0),
    gsSP2Triangles(13, 8, 14, 0, 11, 13, 9, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(3, 19, 4, 0, 15, 20, 16, 0),
    gsSP2Triangles(6, 5, 20, 0, 16, 20, 5, 0),
    gsSP2Triangles(7, 14, 8, 0, 21, 22, 1, 0),
    gsSP2Triangles(8, 13, 11, 0, 2, 1, 22, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(gKm1HairTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gKm1TLUT_00083C),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_000B80[23], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_000B80[32], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(1, 0, 18, 0, 1, 18, 19, 0),
    gsSP2Triangles(4, 3, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 16, 15, 27, 0),
    gsSP1Triangle(13, 12, 28, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_000B80[61], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_000B80[67], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_000B80[70], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 4, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 11, 12, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_000B80[83], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 2, 1, 0, 19, 18, 1, 0),
    gsSP2Triangles(20, 5, 4, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 17, 16, 0),
    gsSP1Triangle(28, 14, 13, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_000B80[112], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_000B80[118], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_000B80[121], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 4, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKm1Skin2Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_km1Vtx_000B80[126], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(1, 0, 4, 0, 5, 1, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 5, 4, 13, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_000B80[140], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_000B80[143], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 4, 3, 0, 11, 12, 13, 0),
    gsSP1Triangle(7, 14, 8, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_000B80[158], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_000B80[161], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 6, 2, 0, 7, 8, 6, 0),
    gsSP1Triangle(7, 6, 1, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_000B80[170], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(3, 4, 2, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_000B80[175], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_000B80[178], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_000B80[181], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_000B80[189], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_000B80[192], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKm1Ear2Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_km1Vtx_000B80[195], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(10, 7, 6, 0, 11, 12, 13, 0),
    gsSP2Triangles(8, 12, 11, 0, 8, 9, 12, 0),
    gsSPEndDisplayList(),
};

Vtx object_km1Vtx_001DC8[] = {
#include "assets/objects/object_km1/object_km1Vtx_001DC8.vtx.inc"
};

Gfx gKm1SkelLimb_000054DL_003F08[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gKm1TunicTex, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_km1Vtx_001DC8[434], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 5, 9, 3, 0),
    gsSP2Triangles(6, 10, 7, 0, 4, 11, 5, 0),
    gsSP2Triangles(12, 13, 11, 0, 3, 9, 1, 0),
    gsSP2Triangles(2, 14, 8, 0, 15, 12, 4, 0),
    gsSP2Triangles(1, 0, 3, 0, 8, 0, 2, 0),
    gsSP2Triangles(8, 14, 6, 0, 4, 3, 15, 0),
    gsSP2Triangles(0, 8, 15, 0, 11, 4, 12, 0),
    gsSP2Triangles(15, 3, 0, 0, 16, 8, 7, 0),
    gsSP2Triangles(17, 18, 19, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 17, 0, 22, 23, 24, 0),
    gsSP2Triangles(25, 26, 22, 0, 24, 25, 22, 0),
    gsSP2Triangles(27, 28, 29, 0, 19, 27, 29, 0),
    gsSP2Triangles(18, 27, 19, 0, 28, 22, 29, 0),
    gsSP2Triangles(22, 28, 23, 0, 30, 29, 22, 0),
    gsSP1Triangle(20, 19, 31, 0),
    gsSPVertex(&object_km1Vtx_001DC8[466], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 1, 0, 6, 7, 8, 0),
    gsSP2Triangles(8, 7, 9, 0, 10, 11, 7, 0),
    gsSP2Triangles(7, 11, 9, 0, 10, 12, 13, 0),
    gsSP2Triangles(13, 11, 10, 0, 14, 15, 16, 0),
    gsSP2Triangles(16, 3, 14, 0, 17, 14, 3, 0),
    gsSP2Triangles(18, 0, 3, 0, 18, 3, 16, 0),
    gsSP2Triangles(16, 19, 18, 0, 20, 9, 11, 0),
    gsSP1Triangle(3, 2, 17, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gKm1TLUT_0000FC),
    gsDPLoadTextureBlock(gKm1Skin1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_km1Vtx_001DC8[487], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 8, 0),
    gsSP2Triangles(7, 9, 8, 0, 6, 10, 4, 0),
    gsSP2Triangles(8, 10, 6, 0, 11, 5, 9, 0),
    gsSP2Triangles(9, 7, 11, 0, 4, 9, 5, 0),
    gsSP2Triangles(12, 1, 13, 0, 3, 1, 12, 0),
    gsSPEndDisplayList(),
};

Gfx gKm1SkelLimb_000084DL_004138[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_km1Vtx_001DC8[393], 5, 0),
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gKm1TunicTex, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_001DC8[398], 12, 5),
    gsSP2Triangles(5, 6, 3, 0, 3, 7, 8, 0),
    gsSP2Triangles(9, 0, 10, 0, 11, 0, 3, 0),
    gsSP2Triangles(0, 12, 1, 0, 1, 13, 2, 0),
    gsSP2Triangles(14, 2, 15, 0, 4, 2, 16, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(0x0C000000),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gKm1TunicFringeTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_001DC8[410], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gKm1TLUT_0000FC),
    gsDPLoadTextureBlock(gKm1Skin1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 16, 0),
    gsSP2Triangles(21, 22, 20, 0, 17, 22, 21, 0),
    gsSP2Triangles(16, 23, 19, 0, 20, 19, 21, 0),
    gsSP2Triangles(21, 18, 17, 0, 18, 23, 16, 0),
    gsSPEndDisplayList(),
};

Gfx gKm1SkelLimb_000090DL_004370[] = {
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_km1Vtx_001DC8[369], 4, 0),
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gKm1TLUT_0000FC),
    gsDPLoadTextureBlock(gKm1Skin1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_001DC8[373], 12, 4),
    gsSP2Triangles(4, 5, 3, 0, 2, 6, 7, 0),
    gsSP2Triangles(8, 9, 3, 0, 2, 10, 11, 0),
    gsSP2Triangles(12, 0, 2, 0, 1, 3, 13, 0),
    gsSP2Triangles(14, 2, 1, 0, 3, 0, 15, 0),
    gsSPVertex(&object_km1Vtx_001DC8[385], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(2, 4, 5, 0, 5, 4, 3, 0),
    gsSP2Triangles(2, 6, 0, 0, 0, 7, 3, 0),
    gsSP2Triangles(5, 6, 2, 0, 3, 7, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gKm1SkelLimb_00009CDL_0044A8[] = {
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_km1Vtx_001DC8[319], 4, 0),
    gsSPMatrix(0x0D000340, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gKm1TLUT_0000FC),
    gsDPLoadTextureBlock(gKm1HandTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_001DC8[323], 25, 4),
    gsSP2Triangles(4, 0, 1, 0, 5, 2, 0, 0),
    gsSP2Triangles(6, 3, 2, 0, 7, 1, 3, 0),
    gsSP2Triangles(0, 8, 9, 0, 3, 10, 11, 0),
    gsSP2Triangles(1, 12, 13, 0, 2, 14, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gKm1TLUT_0000FC),
    gsDPLoadTextureBlock(gKm1Ear1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gKm1TLUT_0000FC),
    gsDPLoadTextureBlock(gKm1Skin1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(20, 21, 22, 0, 22, 23, 20, 0),
    gsSP2Triangles(20, 23, 24, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 27, 26, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gKm1TLUT_0000FC),
    gsDPLoadTextureBlock(gKm1HandTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_km1Vtx_001DC8[348], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 5, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 7, 11, 0),
    gsSP2Triangles(10, 2, 8, 0, 4, 11, 7, 0),
    gsSP2Triangles(2, 10, 0, 0, 6, 12, 4, 0),
    gsSP2Triangles(6, 5, 8, 0, 13, 14, 15, 0),
    gsSP2Triangles(14, 16, 15, 0, 17, 18, 19, 0),
    gsSP1Triangle(18, 17, 20, 0),
    gsSPEndDisplayList(),
};

Gfx gKm1SkelLimb_000060DL_0047A0[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_km1Vtx_001DC8[278], 5, 0),
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gKm1TunicTex, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_001DC8[283], 12, 5),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 3, 0),
    gsSP2Triangles(9, 0, 10, 0, 3, 0, 11, 0),
    gsSP2Triangles(1, 12, 0, 0, 2, 13, 1, 0),
    gsSP2Triangles(14, 2, 15, 0, 16, 2, 4, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(0x0C000000),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gKm1TunicFringeTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_001DC8[295], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gKm1TLUT_0000FC),
    gsDPLoadTextureBlock(gKm1Skin1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(16, 17, 18, 0, 18, 19, 20, 0),
    gsSP2Triangles(19, 21, 22, 0, 22, 21, 17, 0),
    gsSP2Triangles(20, 23, 18, 0, 22, 20, 19, 0),
    gsSP2Triangles(17, 16, 22, 0, 18, 23, 16, 0),
    gsSPEndDisplayList(),
};

Gfx gKm1SkelLimb_00006CDL_0049D8[] = {
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_km1Vtx_001DC8[254], 4, 0),
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gKm1TLUT_0000FC),
    gsDPLoadTextureBlock(gKm1Skin1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_001DC8[258], 12, 4),
    gsSP2Triangles(3, 4, 5, 0, 6, 7, 2, 0),
    gsSP2Triangles(3, 8, 9, 0, 10, 11, 2, 0),
    gsSP2Triangles(2, 0, 12, 0, 13, 3, 1, 0),
    gsSP2Triangles(1, 2, 14, 0, 15, 0, 3, 0),
    gsSPVertex(&object_km1Vtx_001DC8[270], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 3, 5, 4, 0),
    gsSP2Triangles(2, 6, 0, 0, 3, 7, 2, 0),
    gsSP2Triangles(0, 6, 4, 0, 4, 7, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gKm1SkelLimb_000078DL_004B10[] = {
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_km1Vtx_001DC8[204], 4, 0),
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gKm1TLUT_0000FC),
    gsDPLoadTextureBlock(gKm1HandTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_001DC8[208], 12, 4),
    gsSP2Triangles(0, 1, 4, 0, 1, 2, 5, 0),
    gsSP2Triangles(2, 3, 6, 0, 3, 0, 7, 0),
    gsSP2Triangles(8, 9, 1, 0, 10, 11, 3, 0),
    gsSP2Triangles(12, 13, 0, 0, 14, 15, 2, 0),
    gsSPVertex(&object_km1Vtx_001DC8[220], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 5, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 7, 9, 0),
    gsSP2Triangles(10, 0, 8, 0, 7, 11, 6, 0),
    gsSP2Triangles(2, 8, 0, 0, 6, 12, 4, 0),
    gsSP2Triangles(10, 5, 4, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 16, 14, 0, 17, 18, 19, 0),
    gsSP1Triangle(20, 19, 18, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gKm1TLUT_0000FC),
    gsDPLoadTextureBlock(gKm1Ear1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(21, 22, 23, 0, 21, 24, 22, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gKm1TLUT_0000FC),
    gsDPLoadTextureBlock(gKm1Skin1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_km1Vtx_001DC8[245], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 6, 7, 0),
    gsSP1Triangle(6, 5, 8, 0),
    gsSPEndDisplayList(),
};

Gfx gKm1SkelLimb_000000DL_004D90[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gKm1TunicTex, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_km1Vtx_001DC8[501], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 3, 5, 0, 2, 6, 0, 0),
    gsSP2Triangles(7, 8, 9, 0, 9, 10, 7, 0),
    gsSP2Triangles(11, 10, 9, 0, 8, 7, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 13, 20, 0, 14, 13, 21, 0),
    gsSP2Triangles(21, 22, 14, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 23, 19, 0, 20, 27, 26, 0),
    gsSP2Triangles(24, 28, 25, 0, 24, 29, 28, 0),
    gsSP2Triangles(20, 26, 19, 0, 25, 18, 23, 0),
    gsSP2Triangles(18, 25, 16, 0, 26, 24, 23, 0),
    gsSP2Triangles(15, 20, 13, 0, 17, 30, 18, 0),
    gsSP1Triangle(24, 26, 29, 0),
    gsSPEndDisplayList(),
};

Gfx gKm1SkelLimb_000030DL_004E98[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_km1Vtx_001DC8[162], 6, 0),
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gKm1TunicTex, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_001DC8[168], 15, 6),
    gsSP2Triangles(6, 0, 7, 0, 1, 8, 9, 0),
    gsSP2Triangles(10, 2, 11, 0, 3, 12, 13, 0),
    gsSP2Triangles(4, 14, 15, 0, 16, 2, 1, 0),
    gsSP2Triangles(3, 0, 17, 0, 18, 0, 2, 0),
    gsSP2Triangles(19, 5, 3, 0, 20, 1, 4, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(0x0C000000),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gKm1TunicFringeTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_km1Vtx_001DC8[183], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 3, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 12, 9, 0, 11, 1, 12, 0),
    gsSP2Triangles(0, 12, 1, 0, 7, 8, 0, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gKm1TLUT_0000FC),
    gsDPLoadTextureBlock(gKm1Skin1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(13, 14, 15, 0, 13, 16, 17, 0),
    gsSP2Triangles(16, 13, 15, 0, 18, 19, 14, 0),
    gsSP2Triangles(19, 15, 14, 0, 13, 17, 20, 0),
    gsSP2Triangles(18, 20, 19, 0, 20, 17, 19, 0),
    gsSPEndDisplayList(),
};

Gfx gKm1SkelLimb_00003CDL_0050D8[] = {
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_km1Vtx_001DC8[128], 4, 0),
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gKm1TLUT_0000FC),
    gsDPLoadTextureBlock(gKm1Skin1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_001DC8[132], 24, 4),
    gsSP2Triangles(0, 1, 4, 0, 0, 5, 6, 0),
    gsSP2Triangles(7, 2, 0, 0, 8, 3, 2, 0),
    gsSP2Triangles(1, 3, 9, 0, 0, 10, 11, 0),
    gsSP1Triangle(12, 13, 1, 0),
    gsDPPipeSync(),
    gsSPDisplayList(0x09000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gKm1BootWrinkleTex, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP2Triangles(14, 15, 16, 0, 16, 17, 14, 0),
    gsSP2Triangles(18, 14, 17, 0, 17, 19, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 22, 23, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 26, 27, 24, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gKm1TLUT_0000FC),
    gsDPLoadTextureBlock(gKm1Skin1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_001DC8[156], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(2, 5, 0, 0, 0, 4, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gKm1SkelLimb_000048DL_005320[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_km1Vtx_001DC8[102], 4, 0),
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsSPDisplayList(0x09000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gKm1TunicTex, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_001DC8[106], 16, 4),
    gsSP2Triangles(0, 4, 1, 0, 5, 1, 6, 0),
    gsSP2Triangles(7, 8, 1, 0, 0, 9, 10, 0),
    gsSP2Triangles(11, 0, 2, 0, 12, 2, 3, 0),
    gsSP2Triangles(13, 14, 3, 0, 2, 15, 16, 0),
    gsSP2Triangles(3, 17, 18, 0, 1, 19, 3, 0),
    gsSPVertex(&object_km1Vtx_001DC8[122], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(0, 2, 3, 0, 4, 3, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gKm1SkelLimb_00000CDL_005428[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_km1Vtx_001DC8[60], 6, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gKm1TunicTex, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_001DC8[66], 15, 6),
    gsSP2Triangles(6, 0, 7, 0, 8, 9, 1, 0),
    gsSP2Triangles(10, 2, 11, 0, 12, 13, 3, 0),
    gsSP2Triangles(14, 15, 4, 0, 1, 2, 16, 0),
    gsSP2Triangles(17, 0, 3, 0, 2, 0, 18, 0),
    gsSP2Triangles(3, 5, 19, 0, 4, 1, 20, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(0x0C000000),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gKm1TunicFringeTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_km1Vtx_001DC8[81], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 6, 5, 0),
    gsSP2Triangles(7, 8, 6, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 12, 9, 0, 12, 1, 9, 0),
    gsSP2Triangles(1, 12, 2, 0, 2, 8, 7, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gKm1TLUT_0000FC),
    gsDPLoadTextureBlock(gKm1Skin1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 15, 0),
    gsSP2Triangles(13, 15, 17, 0, 14, 18, 19, 0),
    gsSP2Triangles(14, 13, 18, 0, 20, 16, 15, 0),
    gsSP2Triangles(18, 20, 19, 0, 18, 16, 20, 0),
    gsSPEndDisplayList(),
};

Gfx gKm1SkelLimb_000018DL_005668[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_km1Vtx_001DC8[26], 4, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gKm1TLUT_0000FC),
    gsDPLoadTextureBlock(gKm1Skin1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_001DC8[30], 24, 4),
    gsSP2Triangles(4, 0, 1, 0, 5, 6, 1, 0),
    gsSP2Triangles(1, 2, 7, 0, 2, 3, 8, 0),
    gsSP2Triangles(9, 3, 0, 0, 10, 11, 1, 0),
    gsSP1Triangle(0, 12, 13, 0),
    gsDPPipeSync(),
    gsSPDisplayList(0x09000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gKm1BootWrinkleTex, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP2Triangles(14, 15, 16, 0, 16, 17, 14, 0),
    gsSP2Triangles(17, 16, 18, 0, 18, 19, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 22, 23, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 26, 27, 24, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gKm1TLUT_0000FC),
    gsDPLoadTextureBlock(gKm1Skin1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_001DC8[54], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 5, 3, 0, 0),
    gsSP2Triangles(2, 4, 0, 0, 3, 5, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gKm1SkelLimb_000024DL_0058B0[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_km1Vtx_001DC8, 4, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsSPDisplayList(0x09000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gKm1TunicTex, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_km1Vtx_001DC8[4], 16, 4),
    gsSP2Triangles(0, 4, 1, 0, 5, 0, 6, 0),
    gsSP2Triangles(0, 7, 8, 0, 9, 10, 1, 0),
    gsSP2Triangles(2, 1, 11, 0, 3, 2, 12, 0),
    gsSP2Triangles(3, 13, 14, 0, 15, 16, 2, 0),
    gsSP2Triangles(17, 18, 3, 0, 3, 19, 0, 0),
    gsSPVertex(&object_km1Vtx_001DC8[20], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(4, 0, 2, 0, 5, 4, 3, 0),
    gsSPEndDisplayList(),
};

