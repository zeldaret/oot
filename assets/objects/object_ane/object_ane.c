#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_ane.h"

StandardLimb gCuccoLadyRootLimb = { 
    { 0, 3727, -100 }, 0x01, LIMB_DONE,
    gCuccoLadyDressDL
};

StandardLimb gCuccoLadyLimb_00C = { 
    { 459, 200, 350 }, 0x02, 0x04,
    gCuccoLadyDL_6D20
};

StandardLimb gCuccoLadyLimb_018 = { 
    { 1200, 0, 0 }, 0x03, LIMB_DONE,
    gCuccoLadyDL_6C38
};

StandardLimb gCuccoLadyLimb_024 = { 
    { 1500, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gCuccoLadyShoe1DL
};

StandardLimb gCuccoLadyLimb_030 = { 
    { 459, 200, -350 }, 0x05, 0x07,
    gCuccoLadyDL_68E0
};

StandardLimb gCuccoLadyLimb_03C = { 
    { 1200, 0, 0 }, 0x06, LIMB_DONE,
    gCuccoLadyDL_67F8
};

StandardLimb gCuccoLadyLimb_048 = { 
    { 1500, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gCuccoLadyShoe2DL
};

StandardLimb gCuccoLadyTorsoLimb = { 
    { 0, 0, 0 }, 0x08, LIMB_DONE,
    gCuccoLadyTorsoDL
};

StandardLimb gCuccoLadyLimb_060 = { 
    { 950, 0, 550 }, 0x09, 0x0B,
    gCuccoLadyDL_6148
};

StandardLimb gCuccoLadyLimb_06C = { 
    { 950, 0, 0 }, 0x0A, LIMB_DONE,
    gCuccoLadyDL_6018
};

StandardLimb gCuccoLadyLimb_078 = { 
    { 801, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gCuccoLadyDL_5E28
};

StandardLimb gCuccoLadyLimb_084 = { 
    { 950, 0, -550 }, 0x0C, 0x0E,
    gCuccoLadyDL_5CF0
};

StandardLimb gCuccoLadyLimb_090 = { 
    { 951, 0, 0 }, 0x0D, LIMB_DONE,
    gCuccoLadyDL_5BC0
};

StandardLimb gCuccoLadyLimb_09C = { 
    { 800, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gCuccoLadyDL_59D0
};

StandardLimb gCuccoLadyHeadLimb = { 
    { 1555, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gCuccoLadyHeadDL
};

void* gCuccoLadySkelLimbs[] = {
    &gCuccoLadyRootLimb,
    &gCuccoLadyLimb_00C,
    &gCuccoLadyLimb_018,
    &gCuccoLadyLimb_024,
    &gCuccoLadyLimb_030,
    &gCuccoLadyLimb_03C,
    &gCuccoLadyLimb_048,
    &gCuccoLadyTorsoLimb,
    &gCuccoLadyLimb_060,
    &gCuccoLadyLimb_06C,
    &gCuccoLadyLimb_078,
    &gCuccoLadyLimb_084,
    &gCuccoLadyLimb_090,
    &gCuccoLadyLimb_09C,
    &gCuccoLadyHeadLimb,
};

FlexSkeletonHeader gCuccoLadySkel = { 
    { gCuccoLadySkelLimbs, ARRAY_COUNT(gCuccoLadySkelLimbs) }, 15
};

u8 object_ane_possiblePadding_0000FC[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gCuccoLadyTLUT[] = {
#include "assets/objects/object_ane/tlut.rgba16.inc.c"
};

u64 gCuccoLadyHairTex[] = {
#include "assets/objects/object_ane/hair.ci8.inc.c"
};

u64 gCuccoLadyTex_0388[] = {
#include "assets/objects/object_ane/tex_0388.ci8.inc.c"
};

u64 gCuccoLadyEarTex[] = {
#include "assets/objects/object_ane/ear.ci8.inc.c"
};

u64 gCuccoLadyMouthTex[] = {
#include "assets/objects/object_ane/mouth.rgba16.inc.c"
};

u64 gCuccoLadyEyeOpenTex[] = {
#include "assets/objects/object_ane/cucco_lady_eye_open.rgba16.inc.c"
};

u64 gCuccoLadyEyeHalfTex[] = {
#include "assets/objects/object_ane/cucco_lady_eye_half.rgba16.inc.c"
};

u64 gCuccoLadyEyeClosedTex[] = {
#include "assets/objects/object_ane/cucco_lady_eye_closed.rgba16.inc.c"
};

u64 gCuccoLadyBackOfHandTex[] = {
#include "assets/objects/object_ane/back_of_hand.ci8.inc.c"
};

u64 gCuccoLadySleeveTex[] = {
#include "assets/objects/object_ane/sleeve.ci8.inc.c"
};

u64 gCuccoLadyShirtButtonTex[] = {
#include "assets/objects/object_ane/shirt_button.ci8.inc.c"
};

u64 gCuccoLadyWaistTex[] = {
#include "assets/objects/object_ane/waist.ci8.inc.c"
};

u64 gCuccoLadySkirtTex[] = {
#include "assets/objects/object_ane/skirt.ci8.inc.c"
};

Vtx object_aneVtx_002788[] = {
#include "assets/objects/object_ane/object_aneVtx_002788.vtx.inc"
};

Gfx gCuccoLadyHeadDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCuccoLadyTLUT),
    gsDPLoadTextureBlock(gCuccoLadyHairTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(object_aneVtx_002788, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(1, 12, 2, 0, 1, 13, 12, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(8, 7, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 24, 25, 0, 26, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_aneVtx_002788[32], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(6, 12, 7, 0, 13, 14, 15, 0),
    gsSPVertex(&object_aneVtx_002788[48], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPVertex(&object_aneVtx_002788[54], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_aneVtx_002788[57], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 10, 9, 0, 13, 7, 6, 0),
    gsSP2Triangles(14, 0, 2, 0, 15, 16, 17, 0),
    gsSP2Triangles(3, 5, 18, 0, 17, 19, 15, 0),
    gsSPVertex(&object_aneVtx_002788[77], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_aneVtx_002788[80], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_aneVtx_002788[83], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSPVertex(&object_aneVtx_002788[87], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_aneVtx_002788[90], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_aneVtx_002788[93], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_aneVtx_002788[96], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(3, 6, 4, 0),
    gsSPVertex(&object_aneVtx_002788[103], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_aneVtx_002788[106], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_aneVtx_002788[109], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSPVertex(&object_aneVtx_002788[113], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 6, 8, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 13, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 28, 26, 0, 29, 30, 31, 0),
    gsSPVertex(&object_aneVtx_002788[145], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 6, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 9, 8, 19, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCuccoLadyTLUT),
    gsDPLoadTextureBlock(gCuccoLadyTex_0388, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_aneVtx_002788[165], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 10, 7, 0, 11, 10, 12, 0),
    gsSP2Triangles(10, 9, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 9, 8, 0),
    gsSP2Triangles(8, 7, 20, 0, 20, 7, 21, 0),
    gsSP2Triangles(21, 22, 23, 0, 18, 24, 25, 0),
    gsSP2Triangles(22, 10, 26, 0, 7, 10, 22, 0),
    gsSP2Triangles(22, 21, 7, 0, 27, 28, 4, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_aneVtx_002788[197], 27, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCuccoLadyTLUT),
    gsDPLoadTextureBlock(gCuccoLadyEarTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(3, 4, 5, 0, 6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gCuccoLadyMouthTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x003C),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 12, 11, 0, 13, 11, 14, 0),
    gsSP2Triangles(15, 13, 14, 0, 14, 16, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSP2Triangles(17, 18, 19, 0, 20, 19, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 18, 22, 20, 0),
    gsSP2Triangles(21, 23, 19, 0, 22, 24, 20, 0),
    gsSP2Triangles(24, 25, 20, 0, 26, 20, 25, 0),
    gsSP1Triangle(21, 20, 26, 0),
    gsSPVertex(&object_aneVtx_002788[224], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 3, 0, 0, 3, 5, 1, 0),
    gsSP2Triangles(0, 6, 4, 0, 3, 7, 5, 0),
    gsSP2Triangles(3, 8, 7, 0, 8, 3, 9, 0),
    gsSP1Triangle(9, 3, 4, 0),
    gsSPEndDisplayList(),
};

Gfx gCuccoLadyDL_59D0[] = {
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_aneVtx_002788[328], 4, 0),
    gsSPMatrix(0x0D000340, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCuccoLadyTLUT),
    gsDPLoadTextureBlock(gCuccoLadyTex_0388, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aneVtx_002788[332], 18, 4),
    gsSP2Triangles(0, 1, 4, 0, 2, 3, 5, 0),
    gsSP2Triangles(0, 6, 7, 0, 8, 9, 0, 0),
    gsSP2Triangles(2, 10, 1, 0, 11, 1, 12, 0),
    gsSP2Triangles(13, 1, 14, 0, 2, 15, 16, 0),
    gsSP2Triangles(3, 17, 18, 0, 19, 20, 2, 0),
    gsSP1Triangle(21, 3, 0, 0),
    gsSPVertex(&object_aneVtx_002788[350], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 2, 3, 0, 3, 5, 4, 0),
    gsSP2Triangles(1, 6, 3, 0, 7, 0, 3, 0),
    gsSP2Triangles(8, 5, 3, 0, 1, 7, 6, 0),
    gsSP2Triangles(7, 1, 0, 0, 3, 6, 7, 0),
    gsSP1Triangle(9, 3, 10, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCuccoLadyTLUT),
    gsDPLoadTextureBlock(gCuccoLadyBackOfHandTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(11, 12, 13, 0, 14, 11, 13, 0),
    gsSP2Triangles(15, 11, 16, 0, 11, 15, 12, 0),
    gsSP2Triangles(12, 15, 17, 0, 16, 17, 15, 0),
    gsSP2Triangles(17, 13, 12, 0, 16, 11, 18, 0),
    gsSPEndDisplayList(),
};

Gfx gCuccoLadyDL_5BC0[] = {
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_aneVtx_002788[369], 4, 0),
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCuccoLadyTLUT),
    gsDPLoadTextureBlock(gCuccoLadyTex_0388, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aneVtx_002788[373], 12, 4),
    gsSP2Triangles(4, 5, 0, 0, 6, 1, 2, 0),
    gsSP2Triangles(7, 3, 0, 0, 8, 9, 2, 0),
    gsSP2Triangles(2, 3, 10, 0, 0, 11, 12, 0),
    gsSP2Triangles(0, 1, 13, 0, 2, 14, 15, 0),
    gsSPVertex(&object_aneVtx_002788[385], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(1, 5, 6, 0, 6, 5, 4, 0),
    gsSP2Triangles(4, 3, 6, 0, 2, 7, 0, 0),
    gsSP2Triangles(6, 2, 1, 0, 0, 7, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gCuccoLadyDL_5CF0[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_aneVtx_002788[393], 5, 0),
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCuccoLadyTLUT),
    gsDPLoadTextureBlock(gCuccoLadySleeveTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aneVtx_002788[398], 12, 5),
    gsSP2Triangles(5, 0, 1, 0, 0, 6, 7, 0),
    gsSP2Triangles(8, 3, 2, 0, 2, 9, 10, 0),
    gsSP2Triangles(1, 11, 12, 0, 1, 4, 13, 0),
    gsSP2Triangles(14, 15, 1, 0, 2, 0, 16, 0),
    gsSPVertex(&object_aneVtx_002788[410], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 6, 0, 7, 0),
    gsSP2Triangles(7, 8, 9, 0, 1, 10, 3, 0),
    gsSP2Triangles(0, 6, 1, 0, 9, 11, 7, 0),
    gsSP2Triangles(7, 11, 6, 0, 3, 5, 4, 0),
    gsSPEndDisplayList(),
};

Gfx gCuccoLadyDL_5E28[] = {
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_aneVtx_002788[234], 4, 0),
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCuccoLadyTLUT),
    gsDPLoadTextureBlock(gCuccoLadyTex_0388, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aneVtx_002788[238], 18, 4),
    gsSP2Triangles(4, 0, 1, 0, 5, 2, 3, 0),
    gsSP2Triangles(6, 7, 1, 0, 1, 8, 9, 0),
    gsSP2Triangles(0, 10, 3, 0, 11, 0, 12, 0),
    gsSP2Triangles(13, 0, 14, 0, 15, 16, 3, 0),
    gsSP2Triangles(17, 18, 2, 0, 3, 19, 20, 0),
    gsSP1Triangle(1, 2, 21, 0),
    gsSPVertex(&object_aneVtx_002788[256], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(3, 0, 4, 0, 4, 5, 3, 0),
    gsSP2Triangles(3, 6, 1, 0, 3, 2, 7, 0),
    gsSP2Triangles(3, 5, 8, 0, 6, 7, 1, 0),
    gsSP2Triangles(2, 1, 7, 0, 7, 6, 3, 0),
    gsSP1Triangle(9, 3, 10, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCuccoLadyTLUT),
    gsDPLoadTextureBlock(gCuccoLadyBackOfHandTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(15, 13, 16, 0, 12, 16, 13, 0),
    gsSP2Triangles(17, 16, 12, 0, 16, 17, 15, 0),
    gsSP2Triangles(12, 11, 17, 0, 18, 13, 15, 0),
    gsSPEndDisplayList(),
};

Gfx gCuccoLadyDL_6018[] = {
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_aneVtx_002788[275], 4, 0),
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCuccoLadyTLUT),
    gsDPLoadTextureBlock(gCuccoLadyTex_0388, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aneVtx_002788[279], 12, 4),
    gsSP2Triangles(0, 4, 5, 0, 1, 2, 6, 0),
    gsSP2Triangles(0, 3, 7, 0, 1, 8, 9, 0),
    gsSP2Triangles(10, 3, 1, 0, 11, 12, 0, 0),
    gsSP2Triangles(13, 2, 0, 0, 14, 15, 1, 0),
    gsSPVertex(&object_aneVtx_002788[291], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 6, 1, 0, 3, 6, 5, 0),
    gsSP2Triangles(5, 4, 3, 0, 2, 7, 0, 0),
    gsSP2Triangles(1, 0, 5, 0, 4, 7, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gCuccoLadyDL_6148[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_aneVtx_002788[299], 5, 0),
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCuccoLadyTLUT),
    gsDPLoadTextureBlock(gCuccoLadySleeveTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aneVtx_002788[304], 12, 5),
    gsSP2Triangles(0, 1, 5, 0, 6, 7, 1, 0),
    gsSP2Triangles(2, 3, 8, 0, 9, 10, 2, 0),
    gsSP2Triangles(11, 12, 0, 0, 13, 4, 0, 0),
    gsSP2Triangles(0, 14, 15, 0, 16, 1, 2, 0),
    gsSPVertex(&object_aneVtx_002788[316], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(2, 4, 5, 0, 6, 2, 7, 0),
    gsSP2Triangles(8, 9, 6, 0, 3, 10, 1, 0),
    gsSP2Triangles(1, 7, 2, 0, 6, 11, 8, 0),
    gsSP2Triangles(7, 11, 6, 0, 5, 4, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gCuccoLadyTorsoDL[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_aneVtx_002788[422], 8, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCuccoLadyTLUT),
    gsDPLoadTextureBlock(gCuccoLadyWaistTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aneVtx_002788[430], 20, 8),
    gsSP2Triangles(8, 9, 4, 0, 4, 0, 10, 0),
    gsSP2Triangles(11, 0, 12, 0, 1, 13, 14, 0),
    gsSP2Triangles(1, 2, 15, 0, 5, 16, 17, 0),
    gsSP2Triangles(18, 2, 5, 0, 6, 3, 19, 0),
    gsSP2Triangles(20, 21, 6, 0, 22, 3, 1, 0),
    gsSP2Triangles(23, 24, 1, 0, 25, 0, 7, 0),
    gsSP1Triangle(7, 26, 27, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCuccoLadyTLUT),
    gsDPLoadTextureBlock(gCuccoLadyShirtButtonTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_aneVtx_002788[450], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 7, 0),
    gsSP2Triangles(7, 6, 9, 0, 5, 11, 3, 0),
    gsSP2Triangles(0, 12, 1, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 14, 13, 0),
    gsSP2Triangles(19, 13, 20, 0, 21, 15, 14, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 17, 31, 18, 0),
    gsSPVertex(&object_aneVtx_002788[482], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(15, 11, 16, 0, 3, 2, 17, 0),
    gsSP2Triangles(12, 11, 15, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 23, 24, 21, 0),
    gsSP1Triangle(25, 23, 22, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCuccoLadyTLUT),
    gsDPLoadTextureBlock(gCuccoLadyTex_0388, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_aneVtx_002788[508], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(2, 4, 3, 0, 4, 2, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 9, 6, 0),
    gsSP2Triangles(9, 10, 6, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 11, 0, 6, 16, 17, 0),
    gsSP2Triangles(6, 17, 18, 0, 18, 7, 6, 0),
    gsSP2Triangles(5, 19, 4, 0, 20, 4, 19, 0),
    gsSP2Triangles(0, 20, 19, 0, 19, 1, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gCuccoLadyShoe2DL[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_aneVtx_002788[529], 6, 0),
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCuccoLadyTLUT),
    gsDPLoadTextureBlock(gCuccoLadyShirtButtonTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aneVtx_002788[535], 18, 6),
    gsSP2Triangles(2, 6, 7, 0, 8, 9, 4, 0),
    gsSP2Triangles(4, 10, 11, 0, 12, 13, 2, 0),
    gsSP2Triangles(14, 15, 0, 0, 0, 4, 16, 0),
    gsSP1Triangle(17, 2, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCuccoLadyTLUT),
    gsDPLoadTextureBlock(gCuccoLadyTex_0388, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(18, 5, 19, 0, 5, 1, 20, 0),
    gsSP2Triangles(21, 3, 22, 0, 23, 1, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCuccoLadyTLUT),
    gsDPLoadTextureBlock(gCuccoLadyShirtButtonTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_aneVtx_002788[553], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 2, 1, 15, 0),
    gsSP2Triangles(16, 0, 14, 0, 17, 8, 18, 0),
    gsSP2Triangles(19, 7, 6, 0, 18, 8, 20, 0),
    gsSP2Triangles(21, 7, 19, 0, 15, 22, 2, 0),
    gsSP2Triangles(6, 23, 19, 0, 5, 24, 3, 0),
    gsSP2Triangles(11, 25, 9, 0, 8, 17, 6, 0),
    gsSP2Triangles(26, 27, 18, 0, 19, 23, 26, 0),
    gsSP2Triangles(2, 14, 0, 0, 23, 27, 26, 0),
    gsSP2Triangles(14, 28, 16, 0, 23, 6, 17, 0),
    gsSP2Triangles(18, 27, 17, 0, 17, 27, 23, 0),
    gsSP1Triangle(14, 2, 12, 0),
    gsSPEndDisplayList(),
};

Gfx gCuccoLadyDL_67F8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCuccoLadyTLUT),
    gsDPLoadTextureBlock(gCuccoLadyTex_0388, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aneVtx_002788[582], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(2, 4, 0, 0, 0, 5, 3, 0),
    gsSP2Triangles(6, 3, 7, 0, 6, 7, 2, 0),
    gsSP2Triangles(4, 2, 7, 0, 5, 7, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gCuccoLadyDL_68E0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCuccoLadyTLUT),
    gsDPLoadTextureBlock(gCuccoLadyShirtButtonTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aneVtx_002788[590], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gCuccoLadyShoe1DL[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_aneVtx_002788[593], 6, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCuccoLadyTLUT),
    gsDPLoadTextureBlock(gCuccoLadyShirtButtonTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aneVtx_002788[599], 18, 6),
    gsSP2Triangles(6, 7, 2, 0, 4, 8, 9, 0),
    gsSP2Triangles(10, 11, 4, 0, 2, 12, 13, 0),
    gsSP2Triangles(0, 14, 15, 0, 16, 4, 0, 0),
    gsSP1Triangle(0, 2, 17, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCuccoLadyTLUT),
    gsDPLoadTextureBlock(gCuccoLadyTex_0388, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(18, 5, 19, 0, 20, 1, 5, 0),
    gsSP2Triangles(21, 3, 22, 0, 3, 1, 23, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCuccoLadyTLUT),
    gsDPLoadTextureBlock(gCuccoLadyShirtButtonTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_aneVtx_002788[617], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 1, 0, 0),
    gsSP2Triangles(12, 2, 16, 0, 17, 6, 18, 0),
    gsSP2Triangles(8, 7, 19, 0, 20, 6, 17, 0),
    gsSP2Triangles(19, 7, 21, 0, 0, 22, 15, 0),
    gsSP2Triangles(19, 23, 8, 0, 5, 24, 3, 0),
    gsSP2Triangles(11, 25, 9, 0, 8, 18, 6, 0),
    gsSP2Triangles(17, 26, 27, 0, 27, 23, 19, 0),
    gsSP2Triangles(2, 12, 0, 0, 27, 26, 23, 0),
    gsSP2Triangles(16, 28, 12, 0, 18, 8, 23, 0),
    gsSP2Triangles(18, 26, 17, 0, 23, 26, 18, 0),
    gsSP1Triangle(14, 0, 12, 0),
    gsSPEndDisplayList(),
};

Gfx gCuccoLadyDL_6C38[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCuccoLadyTLUT),
    gsDPLoadTextureBlock(gCuccoLadyTex_0388, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aneVtx_002788[646], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(2, 4, 0, 0, 3, 5, 2, 0),
    gsSP2Triangles(6, 3, 7, 0, 0, 6, 7, 0),
    gsSP2Triangles(6, 0, 4, 0, 3, 6, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gCuccoLadyDL_6D20[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCuccoLadyTLUT),
    gsDPLoadTextureBlock(gCuccoLadyShirtButtonTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aneVtx_002788[654], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gCuccoLadyDressDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gCuccoLadyTLUT),
    gsDPLoadTextureBlock(gCuccoLadySkirtTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aneVtx_002788[657], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_aneVtx_002788[660], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP1Triangle(5, 6, 7, 0),
    gsSPVertex(&object_aneVtx_002788[668], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_aneVtx_002788[671], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(5, 4, 3, 0, 1, 6, 7, 0),
    gsSPVertex(&object_aneVtx_002788[679], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSPVertex(&object_aneVtx_002788[684], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_aneVtx_002788[687], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSPVertex(&object_aneVtx_002788[692], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_aneVtx_002788[695], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_aneVtx_002788[698], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsSPVertex(&object_aneVtx_002788[707], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSPVertex(&object_aneVtx_002788[712], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_aneVtx_002788[715], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 7, 0, 8, 9, 1, 0),
    gsSP1Triangle(7, 6, 9, 0),
    gsSPEndDisplayList(),
};

