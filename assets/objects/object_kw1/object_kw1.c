#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_kw1.h"

StandardLimb gKw1SkelLimb_000000 = { 
    { 20, 2140, -5 }, 0x01, LIMB_DONE,
    object_kw1_DL_005E58
};

StandardLimb gKw1SkelLimb_00000C = { 
    { 300, 0, 200 }, 0x02, 0x04,
    object_kw1_DL_006478
};

StandardLimb gKw1SkelLimb_000018 = { 
    { 800, 0, 0 }, 0x03, LIMB_DONE,
    object_kw1_DL_006620
};

StandardLimb gKw1SkelLimb_000024 = { 
    { 750, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_kw1_DL_0067C0
};

StandardLimb gKw1SkelLimb_000030 = { 
    { 300, 0, -200 }, 0x05, 0x07,
    object_kw1_DL_006018
};

StandardLimb gKw1SkelLimb_00003C = { 
    { 800, 0, 0 }, 0x06, LIMB_DONE,
    object_kw1_DL_0061C0
};

StandardLimb gKw1SkelLimb_000048 = { 
    { 750, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_kw1_DL_006360
};

StandardLimb gKw1SkelLimb_000054 = { 
    { 0, 0, 0 }, 0x08, LIMB_DONE,
    object_kw1_DL_0053F8
};

StandardLimb gKw1SkelLimb_000060 = { 
    { 800, -50, 350 }, 0x09, 0x0B,
    object_kw1_DL_005A60
};

StandardLimb gKw1SkelLimb_00006C = { 
    { 700, 0, 0 }, 0x0A, LIMB_DONE,
    object_kw1_DL_005BA0
};

StandardLimb gKw1SkelLimb_000078 = { 
    { 600, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_kw1_DL_005CD0
};

StandardLimb gKw1SkelLimb_000084 = { 
    { 800, -50, -350 }, 0x0C, 0x0E,
    object_kw1_DL_005668
};

StandardLimb gKw1SkelLimb_000090 = { 
    { 700, 0, 0 }, 0x0D, LIMB_DONE,
    object_kw1_DL_0057A8
};

StandardLimb gKw1SkelLimb_00009C = { 
    { 602, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_kw1_DL_0058D8
};

StandardLimb gKw1SkelLimb_0000A8 = { 
    { 1350, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_kw1_DL_002C10
};

void* gKw1SkelLimbs[] = {
    &gKw1SkelLimb_000000,
    &gKw1SkelLimb_00000C,
    &gKw1SkelLimb_000018,
    &gKw1SkelLimb_000024,
    &gKw1SkelLimb_000030,
    &gKw1SkelLimb_00003C,
    &gKw1SkelLimb_000048,
    &gKw1SkelLimb_000054,
    &gKw1SkelLimb_000060,
    &gKw1SkelLimb_00006C,
    &gKw1SkelLimb_000078,
    &gKw1SkelLimb_000084,
    &gKw1SkelLimb_000090,
    &gKw1SkelLimb_00009C,
    &gKw1SkelLimb_0000A8,
};

FlexSkeletonHeader gKw1Skel = { 
    { gKw1SkelLimbs, ARRAY_COUNT(gKw1SkelLimbs) }, 15
};

u32 object_kw1_TLUT_0000FC[] = {
#include "assets/objects/object_kw1/tlut_000000FC.u32.rgba16.inc.c"
};

u32 gKw1BootsTex[] = {
#include "assets/objects/object_kw1/boots.u32.i8.inc.c"
};

u32 gKw1Skin1Tex[] = {
#include "assets/objects/object_kw1/skin1.u32.ci8.inc.c"
};

u32 gKw1TunicTex[] = {
#include "assets/objects/object_kw1/tunic.u32.i8.inc.c"
};

u32 object_kw1_Tex_00047C[] = {
#include "assets/objects/object_kw1/tex_00047C.u32.ci8.inc.c"
};

u32 gKw1UnusedEyeOpenTex[] = {
#include "assets/objects/object_kw1/unused_eye_open.u32.rgba16.inc.c"
};

u32 gKw1HandTex[] = {
#include "assets/objects/object_kw1/hand.u32.ci8.inc.c"
};

u32 gKw1BeltBuckleTex[] = {
#include "assets/objects/object_kw1/belt_buckle.u32.ci8.inc.c"
};

u32 object_kw1_TLUT_000D3C[] = {
#include "assets/objects/object_kw1/tlut_00000D3C.u32.rgba16.inc.c"
};

u32 gKw1EarTex[] = {
#include "assets/objects/object_kw1/ear.u32.ci8.inc.c"
};

u32 gKw1EyeOpenTex[] = {
#include "assets/objects/object_kw1/eye_open.u32.ci8.inc.c"
};

u32 gKw1HairTex[] = {
#include "assets/objects/object_kw1/hair.u32.ci8.inc.c"
};

u32 gKw1Skin2Tex[] = {
#include "assets/objects/object_kw1/skin2.u32.ci8.inc.c"
};

u32 gKw1HairlineTex[] = {
#include "assets/objects/object_kw1/hairline.u32.ci8.inc.c"
};

u32 gKw1MouthTex[] = {
#include "assets/objects/object_kw1/mouth.u32.ci8.inc.c"
};

u32 gKw1EyeHalfTex[] = {
#include "assets/objects/object_kw1/eye_half.u32.ci8.inc.c"
};

u32 gKw1EyeClosedTex[] = {
#include "assets/objects/object_kw1/eye_closed.u32.ci8.inc.c"
};

Vtx object_kw1Vtx_002210[] = {
#include "assets/objects/object_kw1/object_kw1Vtx_002210.vtx.inc"
};

Gfx object_kw1_DL_002C10[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gKw1HairTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_kw1_TLUT_000D3C),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(object_kw1Vtx_002210, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKw1Skin2Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_kw1Vtx_002210[4], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP1Triangle(2, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKw1MouthTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_kw1Vtx_002210[10], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKw1Skin2Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_kw1Vtx_002210[14], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 2, 7, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKw1MouthTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_kw1Vtx_002210[23], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKw1Skin2Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_kw1Vtx_002210[27], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKw1HairlineTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_kw1Vtx_002210[30], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKw1Skin2Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_kw1Vtx_002210[34], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKw1HairlineTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_kw1Vtx_002210[40], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKw1Skin2Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_kw1Vtx_002210[43], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKw1MouthTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_kw1Vtx_002210[46], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKw1Skin2Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_kw1Vtx_002210[49], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_kw1Vtx_002210[52], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKw1EarTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_kw1Vtx_002210[55], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKw1HairTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_kw1Vtx_002210[58], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(3, 1, 4, 0, 5, 2, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 7, 0, 7, 13, 8, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 19, 18, 23, 0),
    gsSP1Triangle(24, 25, 26, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKw1Skin2Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_kw1Vtx_002210[85], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_kw1Vtx_002210[88], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKw1HairTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_kw1Vtx_002210[91], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(5, 4, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(21, 20, 22, 0, 19, 21, 23, 0),
    gsSP2Triangles(24, 0, 25, 0, 26, 1, 24, 0),
    gsSP1Triangle(24, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKw1Skin2Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_kw1Vtx_002210[118], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKw1HairlineTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_kw1Vtx_002210[122], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP1Triangle(2, 3, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKw1EarTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_kw1Vtx_002210[127], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(0x0A000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_kw1Vtx_002210[130], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 0, 3, 0, 5, 3, 2, 0),
    gsSP2Triangles(2, 6, 5, 0, 7, 8, 2, 0),
    gsSP2Triangles(2, 9, 7, 0, 9, 10, 11, 0),
    gsSP2Triangles(2, 10, 9, 0, 2, 1, 10, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gKw1TunicTex, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&object_kw1Vtx_002210[142], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 7, 6, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 11, 10, 0, 12, 13, 11, 0),
    gsSP2Triangles(12, 14, 13, 0, 15, 16, 17, 0),
    gsSPEndDisplayList(),
};

Vtx object_kw1Vtx_003448[] = {
#include "assets/objects/object_kw1/object_kw1Vtx_003448.vtx.inc"
};

Gfx object_kw1_DL_0053F8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_kw1_TLUT_0000FC),
    gsDPLoadTextureBlock(gKw1Skin1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_kw1Vtx_003448[362], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(3, 5, 6, 0, 6, 1, 0, 0),
    gsSP2Triangles(2, 4, 0, 0, 2, 5, 3, 0),
    gsSP2Triangles(0, 7, 6, 0, 6, 7, 3, 0),
    gsDPPipeSync(),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gKw1TunicTex, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_kw1Vtx_003448[370], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 2, 1, 9, 0),
    gsSP2Triangles(10, 11, 5, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 9, 18, 2, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP1Triangle(27, 28, 29, 0),
    gsSPVertex(&object_kw1Vtx_003448[400], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP2Triangles(8, 9, 10, 0, 11, 9, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 10, 13, 12, 0),
    gsSP2Triangles(8, 15, 11, 0, 14, 16, 12, 0),
    gsSP2Triangles(10, 17, 8, 0, 12, 17, 10, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_kw1Vtx_003448[418], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(6, 2, 3, 0, 6, 0, 2, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 9, 4, 0),
    gsSP2Triangles(4, 7, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(4, 9, 5, 0, 11, 14, 12, 0),
    gsSP2Triangles(1, 0, 12, 0, 1, 12, 14, 0),
    gsSP2Triangles(1, 14, 3, 0, 0, 15, 12, 0),
    gsSP2Triangles(15, 16, 13, 0, 15, 13, 12, 0),
    gsSP2Triangles(8, 17, 9, 0, 3, 7, 6, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 26, 28, 0),
    gsSPVertex(&object_kw1Vtx_003448[448], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 7, 8, 9, 0),
    gsSP1Triangle(7, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx object_kw1_DL_005668[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_kw1Vtx_003448[337], 4, 0),
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_kw1_TLUT_0000FC),
    gsDPLoadTextureBlock(gKw1Skin1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_kw1Vtx_003448[341], 12, 4),
    gsSP2Triangles(4, 0, 5, 0, 1, 0, 6, 0),
    gsSP2Triangles(1, 7, 8, 0, 9, 2, 1, 0),
    gsSP2Triangles(0, 3, 10, 0, 11, 3, 2, 0),
    gsSP2Triangles(2, 12, 13, 0, 14, 15, 0, 0),
    gsSPVertex(&object_kw1Vtx_003448[353], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(3, 4, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 8, 5, 0, 2, 1, 5, 0),
    gsSP2Triangles(1, 4, 6, 0, 6, 5, 1, 0),
    gsSP2Triangles(0, 8, 7, 0, 7, 3, 0, 0),
    gsSPEndDisplayList(),
};

Gfx object_kw1_DL_0057A8[] = {
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_kw1Vtx_003448[314], 4, 0),
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_kw1_TLUT_0000FC),
    gsDPLoadTextureBlock(gKw1Skin1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_kw1Vtx_003448[318], 12, 4),
    gsSP2Triangles(1, 0, 4, 0, 3, 5, 6, 0),
    gsSP2Triangles(7, 2, 8, 0, 2, 1, 9, 0),
    gsSP2Triangles(10, 3, 2, 0, 11, 2, 12, 0),
    gsSP2Triangles(13, 14, 1, 0, 15, 0, 3, 0),
    gsSPVertex(&object_kw1Vtx_003448[330], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 1, 0, 0, 0, 6, 5, 0),
    gsSP2Triangles(4, 3, 5, 0, 5, 6, 4, 0),
    gsSPEndDisplayList(),
};

Gfx object_kw1_DL_0058D8[] = {
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_kw1Vtx_003448[275], 4, 0),
    gsSPMatrix(0x0D000340, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_kw1_TLUT_0000FC),
    gsDPLoadTextureBlock(gKw1HandTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_kw1Vtx_003448[279], 12, 4),
    gsSP2Triangles(4, 5, 0, 0, 6, 7, 1, 0),
    gsSP2Triangles(8, 9, 2, 0, 10, 11, 3, 0),
    gsSP2Triangles(3, 2, 12, 0, 2, 1, 13, 0),
    gsSP2Triangles(0, 3, 14, 0, 1, 0, 15, 0),
    gsSPVertex(&object_kw1Vtx_003448[291], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 0, 5, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 8, 5, 0, 9, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 2, 10, 9, 0),
    gsSP2Triangles(3, 9, 6, 0, 8, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 15, 14, 0),
    gsSP2Triangles(17, 12, 11, 0, 12, 17, 4, 0),
    gsSP2Triangles(17, 1, 4, 0, 2, 1, 8, 0),
    gsSP2Triangles(5, 8, 4, 0, 6, 9, 7, 0),
    gsSP2Triangles(12, 4, 8, 0, 18, 8, 7, 0),
    gsSP2Triangles(8, 1, 17, 0, 17, 11, 8, 0),
    gsSP2Triangles(19, 20, 7, 0, 7, 9, 19, 0),
    gsSP2Triangles(7, 20, 18, 0, 9, 10, 19, 0),
    gsSP2Triangles(21, 15, 16, 0, 16, 22, 21, 0),
    gsSPEndDisplayList(),
};

Gfx object_kw1_DL_005A60[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_kw1Vtx_003448[250], 4, 0),
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_kw1_TLUT_0000FC),
    gsDPLoadTextureBlock(gKw1Skin1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_kw1Vtx_003448[254], 12, 4),
    gsSP2Triangles(4, 0, 5, 0, 6, 0, 1, 0),
    gsSP2Triangles(7, 8, 1, 0, 1, 2, 9, 0),
    gsSP2Triangles(10, 3, 0, 0, 2, 3, 11, 0),
    gsSP2Triangles(12, 13, 2, 0, 0, 14, 15, 0),
    gsSPVertex(&object_kw1Vtx_003448[266], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(1, 4, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 8, 5, 0, 7, 1, 0, 0),
    gsSP2Triangles(6, 4, 1, 0, 1, 7, 6, 0),
    gsSP2Triangles(5, 8, 2, 0, 2, 3, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_kw1_DL_005BA0[] = {
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_kw1Vtx_003448[227], 4, 0),
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_kw1_TLUT_0000FC),
    gsDPLoadTextureBlock(gKw1Skin1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_kw1Vtx_003448[231], 12, 4),
    gsSP2Triangles(4, 0, 1, 0, 5, 6, 2, 0),
    gsSP2Triangles(7, 3, 8, 0, 9, 1, 3, 0),
    gsSP2Triangles(3, 2, 10, 0, 11, 3, 12, 0),
    gsSP2Triangles(1, 13, 14, 0, 2, 0, 15, 0),
    gsSPVertex(&object_kw1Vtx_003448[243], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(2, 1, 5, 0, 5, 6, 2, 0),
    gsSP2Triangles(5, 4, 3, 0, 3, 6, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_kw1_DL_005CD0[] = {
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_kw1Vtx_003448[188], 4, 0),
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_kw1_TLUT_0000FC),
    gsDPLoadTextureBlock(gKw1HandTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_kw1Vtx_003448[192], 12, 4),
    gsSP2Triangles(0, 4, 5, 0, 1, 6, 7, 0),
    gsSP2Triangles(2, 8, 9, 0, 3, 10, 11, 0),
    gsSP2Triangles(12, 2, 3, 0, 13, 1, 2, 0),
    gsSP2Triangles(14, 3, 0, 0, 15, 0, 1, 0),
    gsSPVertex(&object_kw1Vtx_003448[204], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 2, 5, 0, 6, 7, 4, 0),
    gsSP2Triangles(4, 8, 6, 0, 0, 3, 9, 0),
    gsSP2Triangles(1, 5, 2, 0, 9, 10, 0, 0),
    gsSP2Triangles(7, 9, 3, 0, 11, 12, 8, 0),
    gsSP2Triangles(13, 14, 15, 0, 14, 13, 16, 0),
    gsSP2Triangles(12, 11, 17, 0, 5, 17, 11, 0),
    gsSP2Triangles(5, 1, 17, 0, 8, 1, 0, 0),
    gsSP2Triangles(5, 8, 4, 0, 6, 9, 7, 0),
    gsSP2Triangles(8, 5, 11, 0, 6, 8, 18, 0),
    gsSP2Triangles(17, 1, 8, 0, 8, 12, 17, 0),
    gsSP2Triangles(6, 19, 20, 0, 20, 9, 6, 0),
    gsSP2Triangles(18, 19, 6, 0, 20, 10, 9, 0),
    gsSP2Triangles(16, 13, 21, 0, 21, 22, 16, 0),
    gsSPEndDisplayList(),
};

Gfx object_kw1_DL_005E58[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gKw1TunicTex, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_kw1Vtx_003448[460], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 0, 6, 0, 7, 3, 5, 0),
    gsSP2Triangles(8, 9, 7, 0, 6, 10, 1, 0),
    gsSP2Triangles(11, 9, 8, 0, 8, 7, 12, 0),
    gsSP2Triangles(11, 13, 9, 0, 6, 14, 10, 0),
    gsSP2Triangles(12, 7, 5, 0, 15, 4, 3, 0),
    gsSP2Triangles(2, 16, 0, 0, 17, 18, 19, 0),
    gsSP2Triangles(19, 20, 17, 0, 21, 17, 20, 0),
    gsSP2Triangles(22, 21, 20, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 26, 24, 0, 26, 23, 27, 0),
    gsSP1Triangle(27, 28, 26, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_kw1_TLUT_0000FC),
    gsDPLoadTextureBlock(gKw1BeltBuckleTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_kw1Vtx_003448[489], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 10, 8, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 0, 2, 0, 12, 11, 15, 0),
    gsSP2Triangles(16, 17, 3, 0, 6, 16, 3, 0),
    gsSPEndDisplayList(),
};

Gfx object_kw1_DL_006018[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_kw1Vtx_003448[159], 6, 0),
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gKw1TunicTex, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_kw1Vtx_003448[165], 11, 6),
    gsSP2Triangles(6, 1, 2, 0, 7, 8, 0, 0),
    gsSP2Triangles(3, 4, 9, 0, 10, 4, 11, 0),
    gsSP2Triangles(5, 1, 12, 0, 0, 5, 13, 0),
    gsSP2Triangles(2, 3, 14, 0, 15, 16, 3, 0),
    gsSPVertex(&object_kw1Vtx_003448[176], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_kw1_TLUT_0000FC),
    gsDPLoadTextureBlock(gKw1Skin1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 4, 0),
    gsSP2Triangles(9, 6, 5, 0, 7, 9, 10, 0),
    gsSP2Triangles(6, 11, 4, 0, 4, 11, 7, 0),
    gsSP2Triangles(5, 10, 9, 0, 10, 8, 7, 0),
    gsSPEndDisplayList(),
};

Gfx object_kw1_DL_0061C0[] = {
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_kw1Vtx_003448[127], 4, 0),
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_kw1_TLUT_0000FC),
    gsDPLoadTextureBlock(gKw1Skin1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_kw1Vtx_003448[131], 12, 4),
    gsSP2Triangles(0, 1, 4, 0, 5, 1, 2, 0),
    gsSP2Triangles(6, 7, 0, 0, 2, 8, 9, 0),
    gsSP2Triangles(10, 11, 2, 0, 2, 3, 12, 0),
    gsSP2Triangles(13, 3, 0, 0, 0, 14, 15, 0),
    gsSPVertex(&object_kw1Vtx_003448[143], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsDPPipeSync(),
    gsSPDisplayList(0x09000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gKw1BootsTex, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 9, 7, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 11, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 11, 14, 0),
    gsSPEndDisplayList(),
};

Gfx object_kw1_DL_006360[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_kw1Vtx_003448[94], 6, 0),
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsSPDisplayList(0x09000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gKw1BootsTex, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_kw1Vtx_003448[100], 14, 6),
    gsSP2Triangles(6, 7, 0, 0, 0, 2, 8, 0),
    gsSP2Triangles(9, 0, 10, 0, 4, 11, 12, 0),
    gsSP2Triangles(13, 4, 0, 0, 14, 1, 15, 0),
    gsSP2Triangles(16, 3, 1, 0, 17, 18, 1, 0),
    gsSP1Triangle(1, 5, 19, 0),
    gsSPVertex(&object_kw1Vtx_003448[114], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 8, 7, 0),
    gsSP1Triangle(7, 12, 11, 0),
    gsSPEndDisplayList(),
};

Gfx object_kw1_DL_006478[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_kw1Vtx_003448[65], 6, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsSPDisplayList(0x08000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gKw1TunicTex, G_IM_FMT_I, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_kw1Vtx_003448[71], 11, 6),
    gsSP2Triangles(2, 3, 6, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 1, 0, 0, 10, 1, 11, 0),
    gsSP2Triangles(12, 3, 4, 0, 13, 4, 5, 0),
    gsSP2Triangles(14, 0, 2, 0, 0, 15, 16, 0),
    gsSPVertex(&object_kw1Vtx_003448[82], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_kw1_TLUT_0000FC),
    gsDPLoadTextureBlock(gKw1Skin1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 8, 0),
    gsSP2Triangles(5, 4, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(6, 11, 4, 0, 8, 11, 6, 0),
    gsSP2Triangles(9, 10, 5, 0, 8, 7, 10, 0),
    gsSPEndDisplayList(),
};

Gfx object_kw1_DL_006620[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_kw1Vtx_003448[33], 4, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_kw1_TLUT_0000FC),
    gsDPLoadTextureBlock(gKw1Skin1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_kw1Vtx_003448[37], 12, 4),
    gsSP2Triangles(4, 0, 1, 0, 2, 0, 5, 0),
    gsSP2Triangles(1, 6, 7, 0, 8, 9, 2, 0),
    gsSP2Triangles(2, 10, 11, 0, 12, 3, 2, 0),
    gsSP2Triangles(1, 3, 13, 0, 14, 15, 1, 0),
    gsSPVertex(&object_kw1Vtx_003448[49], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsDPPipeSync(),
    gsSPDisplayList(0x09000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gKw1BootsTex, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 4, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(14, 13, 11, 0, 14, 11, 15, 0),
    gsSPEndDisplayList(),
};

Gfx object_kw1_DL_0067C0[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_kw1Vtx_003448, 6, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsSPDisplayList(0x09000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gKw1BootsTex, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_kw1Vtx_003448[6], 14, 6),
    gsSP2Triangles(0, 6, 7, 0, 8, 2, 0, 0),
    gsSP2Triangles(9, 0, 10, 0, 11, 12, 4, 0),
    gsSP2Triangles(0, 4, 13, 0, 14, 1, 15, 0),
    gsSP2Triangles(1, 3, 16, 0, 1, 17, 18, 0),
    gsSP1Triangle(19, 5, 1, 0),
    gsSPVertex(&object_kw1Vtx_003448[20], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 7, 9, 0, 9, 8, 11, 0),
    gsSP1Triangle(11, 12, 9, 0),
    gsSPEndDisplayList(),
};

