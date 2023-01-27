#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_aob.h"

StandardLimb gDogLadyRootLimb = { 
    { 0, 3377, 50 }, 0x01, LIMB_DONE,
    gDogLadyDressDL
};

StandardLimb gDogLadyLimb_00C = { 
    { 359, 0, 350 }, 0x02, 0x04,
    gDogLadyDL_54B8
};

StandardLimb gDogLadyLimb_018 = { 
    { 1200, 0, 0 }, 0x03, LIMB_DONE,
    gDogLadyDL_53E8
};

StandardLimb gDogLadyLimb_024 = { 
    { 1400, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gDogLadyDL_5318
};

StandardLimb gDogLadyLimb_030 = { 
    { 359, 0, -350 }, 0x05, 0x07,
    gDogLadyDL_5248
};

StandardLimb gDogLadyLimb_03C = { 
    { 1200, 0, 0 }, 0x06, LIMB_DONE,
    gDogLadyDL_5178
};

StandardLimb gDogLadyLimb_048 = { 
    { 1400, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gDogLadyDL_50A8
};

StandardLimb gDogLadyTorsoLimb = { 
    { 0, 0, 0 }, 0x08, LIMB_DONE,
    gDogLadyTorsoDL
};

StandardLimb gDogLadyLimb_060 = { 
    { 1200, -100, 800 }, 0x09, 0x0B,
    gDogLadyDL_4C60
};

StandardLimb gDogLadyLimb_06C = { 
    { 1150, 0, 0 }, 0x0A, LIMB_DONE,
    gDogLadyDL_4B30
};

StandardLimb gDogLadyLimb_078 = { 
    { 901, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gDogLadyDL_4928
};

StandardLimb gDogLadyLimb_084 = { 
    { 1200, -100, -800 }, 0x0C, 0x0E,
    gDogLadyDL_4780
};

StandardLimb gDogLadyLimb_090 = { 
    { 1150, 0, 0 }, 0x0D, LIMB_DONE,
    gDogLadyDL_4650
};

StandardLimb gDogLadyLimb_09C = { 
    { 900, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gDogLadyDL_4448
};

StandardLimb gDogLadyHeadLimb = { 
    { 1754, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gDogLadyHeadDL
};

void* gDogLadySkelLimbs[] = {
    &gDogLadyRootLimb,
    &gDogLadyLimb_00C,
    &gDogLadyLimb_018,
    &gDogLadyLimb_024,
    &gDogLadyLimb_030,
    &gDogLadyLimb_03C,
    &gDogLadyLimb_048,
    &gDogLadyTorsoLimb,
    &gDogLadyLimb_060,
    &gDogLadyLimb_06C,
    &gDogLadyLimb_078,
    &gDogLadyLimb_084,
    &gDogLadyLimb_090,
    &gDogLadyLimb_09C,
    &gDogLadyHeadLimb,
};

FlexSkeletonHeader gDogLadySkel = { 
    { gDogLadySkelLimbs, ARRAY_COUNT(gDogLadySkelLimbs) }, 15
};

u8 object_aob_possiblePadding_0000FC[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gDogLadyTLUT[] = {
#include "assets/objects/object_aob/tlut.rgba16.inc.c"
};

u64 gDogLadyHairTex[] = {
#include "assets/objects/object_aob/hair.ci8.inc.c"
};

u64 gDogLadySkinGradientTex[] = {
#include "assets/objects/object_aob/skin_gradient.ci8.inc.c"
};

u64 gDogLadyEarTex[] = {
#include "assets/objects/object_aob/ear.ci8.inc.c"
};

u64 gDogLadyLipGradientTex[] = {
#include "assets/objects/object_aob/lip_gradient.ci8.inc.c"
};

u64 gDogLadyNostrilTex[] = {
#include "assets/objects/object_aob/nostril.ci8.inc.c"
};

u64 gDogLadyEyeOpenTex[] = {
#include "assets/objects/object_aob/dog_lady_eye_open.rgba16.inc.c"
};

u64 gDogLadyEyeHalfTex[] = {
#include "assets/objects/object_aob/dog_lady_eye_half.rgba16.inc.c"
};

u64 gDogLadyEyeClosedTex[] = {
#include "assets/objects/object_aob/dog_lady_eye_closed.rgba16.inc.c"
};

u64 gDogLadyBackOfHandTex[] = {
#include "assets/objects/object_aob/back_of_hand.ci8.inc.c"
};

u64 gDogLadyDressShoulderPatternTex[] = {
#include "assets/objects/object_aob/dress_shoulder_pattern.ci8.inc.c"
};

u64 gDogLadyDressTex[] = {
#include "assets/objects/object_aob/dress.ci8.inc.c"
};

Vtx object_aobVtx_001F48[] = {
#include "assets/objects/object_aob/object_aobVtx_001F48.vtx.inc"
};

Gfx gDogLadyHeadDL[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(object_aobVtx_001F48, 6, 0),
    gsSPMatrix(0x0D000380, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadySkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aobVtx_001F48[6], 18, 6),
    gsSP2Triangles(6, 0, 7, 0, 1, 0, 8, 0),
    gsSP2Triangles(9, 10, 1, 0, 2, 11, 12, 0),
    gsSP2Triangles(13, 3, 2, 0, 14, 3, 15, 0),
    gsSP2Triangles(16, 17, 4, 0, 18, 5, 1, 0),
    gsSP2Triangles(4, 5, 19, 0, 20, 0, 3, 0),
    gsSP2Triangles(3, 21, 22, 0, 2, 4, 23, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadyHairTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_aobVtx_001F48[24], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 5, 21, 22, 0),
    gsSP2Triangles(11, 23, 24, 0, 18, 25, 26, 0),
    gsSP1Triangle(27, 28, 29, 0),
    gsSPVertex(&object_aobVtx_001F48[54], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(5, 6, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadySkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(7, 8, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(7, 13, 8, 0, 14, 15, 16, 0),
    gsSP2Triangles(16, 17, 14, 0, 15, 18, 16, 0),
    gsSP2Triangles(17, 19, 14, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 11, 10, 0, 22, 24, 25, 0),
    gsSP2Triangles(25, 20, 22, 0, 9, 26, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadyEarTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP1Triangle(27, 28, 29, 0),
    gsSPVertex(&object_aobVtx_001F48[84], 24, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadySkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(9, 10, 11, 0, 11, 12, 9, 0),
    gsSP2Triangles(13, 14, 15, 0, 15, 16, 13, 0),
    gsSP2Triangles(11, 13, 16, 0, 16, 12, 11, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadyLipGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(17, 18, 19, 0, 20, 19, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 21, 20, 0),
    gsSP1Triangle(21, 22, 23, 0),
    gsSPVertex(&object_aobVtx_001F48[108], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(1, 4, 3, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 6, 1, 0, 1, 7, 4, 0),
    gsSP2Triangles(1, 6, 7, 0, 4, 7, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadyNostrilTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(8, 9, 10, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadySkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(11, 12, 13, 0),
    gsSP1Triangle(14, 15, 16, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadyHairTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(17, 18, 19, 0, 18, 17, 20, 0),
    gsSP2Triangles(21, 19, 18, 0, 22, 21, 18, 0),
    gsSP2Triangles(18, 23, 22, 0, 24, 23, 18, 0),
    gsSP1Triangle(20, 24, 18, 0),
    gsSPVertex(&object_aobVtx_001F48[133], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(1, 0, 4, 0, 1, 4, 5, 0),
    gsSP2Triangles(5, 6, 1, 0, 1, 6, 7, 0),
    gsSP1Triangle(1, 7, 3, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 9, 8, 0, 10, 9, 13, 0),
    gsSP1Triangle(13, 14, 10, 0),
    gsSP2Triangles(15, 16, 17, 0, 17, 18, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadySkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(19, 20, 21, 0),
    gsSP1Triangle(22, 23, 24, 0),
    gsSP1Triangle(25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(0x0A000000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSPVertex(&object_aobVtx_001F48[164], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(2, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 6, 0),
    gsSP1Triangle(9, 8, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gDogLadyDL_4448[] = {
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_aobVtx_001F48[268], 4, 0),
    gsSPMatrix(0x0D000340, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadySkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aobVtx_001F48[272], 12, 4),
    gsSP2Triangles(4, 5, 3, 0, 6, 7, 1, 0),
    gsSP2Triangles(8, 9, 0, 0, 0, 3, 10, 0),
    gsSP2Triangles(1, 0, 11, 0, 12, 2, 1, 0),
    gsSP2Triangles(13, 2, 14, 0, 3, 2, 15, 0),
    gsSPVertex(&object_aobVtx_001F48[284], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 2, 7, 3, 0),
    gsSP2Triangles(8, 3, 7, 0, 8, 9, 4, 0),
    gsSP2Triangles(4, 3, 8, 0, 7, 2, 10, 0),
    gsSP2Triangles(3, 6, 2, 0, 7, 0, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 0, 13, 1, 0),
    gsSP2Triangles(12, 11, 13, 0, 10, 12, 7, 0),
    gsSP2Triangles(4, 9, 5, 0, 0, 6, 8, 0),
    gsSP2Triangles(13, 11, 1, 0, 2, 6, 0, 0),
    gsSP1Triangle(1, 14, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadyBackOfHandTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(15, 16, 17, 0, 16, 15, 18, 0),
    gsSP2Triangles(19, 18, 15, 0, 17, 19, 15, 0),
    gsSP1Triangle(17, 20, 19, 0),
    gsSP2Triangles(21, 22, 23, 0, 23, 24, 21, 0),
    gsSP2Triangles(25, 26, 27, 0, 27, 28, 25, 0),
    gsSPEndDisplayList(),
};

Gfx gDogLadyDL_4650[] = {
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_aobVtx_001F48[313], 4, 0),
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadySkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aobVtx_001F48[317], 12, 4),
    gsSP2Triangles(1, 2, 4, 0, 3, 5, 6, 0),
    gsSP2Triangles(7, 8, 2, 0, 9, 10, 3, 0),
    gsSP2Triangles(11, 3, 1, 0, 12, 0, 3, 0),
    gsSP2Triangles(2, 13, 14, 0, 2, 0, 15, 0),
    gsSPVertex(&object_aobVtx_001F48[329], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(0, 5, 1, 0, 1, 5, 6, 0),
    gsSP2Triangles(6, 7, 1, 0, 3, 7, 6, 0),
    gsSP2Triangles(2, 4, 0, 0, 4, 7, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gDogLadyDL_4780[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_aobVtx_001F48[337], 5, 0),
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadyDressShoulderPatternTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aobVtx_001F48[342], 20, 5),
    gsSP2Triangles(0, 5, 6, 0, 7, 1, 0, 0),
    gsSP2Triangles(8, 0, 2, 0, 2, 9, 10, 0),
    gsSP2Triangles(3, 1, 11, 0, 12, 13, 3, 0),
    gsSP2Triangles(4, 14, 15, 0, 16, 2, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadySkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(17, 18, 19, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 18, 17, 0, 21, 20, 22, 0),
    gsSP2Triangles(22, 23, 21, 0, 19, 24, 17, 0),
    gsSP2Triangles(21, 24, 19, 0, 17, 23, 22, 0),
    gsSPEndDisplayList(),
};

Gfx gDogLadyDL_4928[] = {
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_aobVtx_001F48[174], 4, 0),
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadySkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aobVtx_001F48[178], 12, 4),
    gsSP2Triangles(3, 4, 5, 0, 0, 6, 7, 0),
    gsSP2Triangles(1, 8, 9, 0, 10, 3, 1, 0),
    gsSP2Triangles(11, 1, 0, 0, 0, 2, 12, 0),
    gsSP2Triangles(13, 2, 14, 0, 15, 2, 3, 0),
    gsSPVertex(&object_aobVtx_001F48[190], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 5, 7, 0, 0),
    gsSP2Triangles(7, 5, 8, 0, 4, 9, 8, 0),
    gsSP2Triangles(8, 5, 4, 0, 10, 0, 7, 0),
    gsSP2Triangles(0, 6, 5, 0, 8, 2, 7, 0),
    gsSP2Triangles(11, 12, 10, 0, 1, 13, 2, 0),
    gsSP2Triangles(13, 12, 11, 0, 7, 11, 10, 0),
    gsSP2Triangles(3, 9, 4, 0, 8, 6, 2, 0),
    gsSP2Triangles(1, 12, 13, 0, 2, 6, 0, 0),
    gsSP1Triangle(0, 14, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadyBackOfHandTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(15, 16, 17, 0, 18, 17, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 15, 0),
    gsSP1Triangle(19, 20, 15, 0),
    gsSP2Triangles(21, 22, 23, 0, 23, 24, 21, 0),
    gsSP2Triangles(25, 26, 27, 0, 27, 28, 25, 0),
    gsSPEndDisplayList(),
};

Gfx gDogLadyDL_4B30[] = {
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_aobVtx_001F48[219], 4, 0),
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadySkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aobVtx_001F48[223], 12, 4),
    gsSP2Triangles(4, 2, 1, 0, 5, 6, 3, 0),
    gsSP2Triangles(2, 7, 8, 0, 3, 9, 10, 0),
    gsSP2Triangles(1, 3, 11, 0, 3, 0, 12, 0),
    gsSP2Triangles(13, 14, 2, 0, 15, 0, 2, 0),
    gsSPVertex(&object_aobVtx_001F48[235], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(1, 5, 2, 0, 6, 5, 1, 0),
    gsSP2Triangles(1, 7, 6, 0, 6, 7, 4, 0),
    gsSP2Triangles(2, 3, 0, 0, 4, 7, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gDogLadyDL_4C60[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_aobVtx_001F48[243], 5, 0),
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadyDressShoulderPatternTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aobVtx_001F48[248], 20, 5),
    gsSP2Triangles(5, 6, 0, 0, 0, 1, 7, 0),
    gsSP2Triangles(2, 0, 8, 0, 9, 10, 2, 0),
    gsSP2Triangles(11, 1, 3, 0, 3, 12, 13, 0),
    gsSP2Triangles(14, 15, 4, 0, 4, 2, 16, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadySkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 17, 0),
    gsSP2Triangles(19, 18, 22, 0, 22, 21, 20, 0),
    gsSP2Triangles(20, 23, 22, 0, 19, 24, 17, 0),
    gsSP2Triangles(17, 24, 20, 0, 22, 23, 19, 0),
    gsSPEndDisplayList(),
};

Gfx gDogLadyTorsoDL[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_aobVtx_001F48[362], 8, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadyDressTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aobVtx_001F48[370], 24, 8),
    gsSP2Triangles(8, 0, 1, 0, 9, 10, 1, 0),
    gsSP2Triangles(11, 1, 2, 0, 0, 12, 13, 0),
    gsSP2Triangles(14, 6, 15, 0, 16, 7, 17, 0),
    gsSP2Triangles(3, 18, 19, 0, 6, 3, 20, 0),
    gsSP2Triangles(21, 0, 22, 0, 23, 3, 0, 0),
    gsSP2Triangles(2, 4, 24, 0, 25, 2, 26, 0),
    gsSP2Triangles(4, 5, 27, 0, 28, 4, 29, 0),
    gsSP1Triangle(30, 5, 31, 0),
    gsSPVertex(&object_aobVtx_001F48[394], 8, 8),
    gsSP2Triangles(7, 8, 5, 0, 9, 5, 10, 0),
    gsSP1Triangle(11, 12, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadySkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(13, 14, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadyDressTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_aobVtx_001F48[402], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 10, 6, 0, 10, 4, 6, 0),
    gsSP2Triangles(6, 9, 8, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 9, 15, 7, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 13, 0),
    gsSP2Triangles(13, 20, 21, 0, 22, 18, 23, 0),
    gsSP2Triangles(23, 20, 19, 0, 23, 19, 22, 0),
    gsSP2Triangles(18, 22, 16, 0, 20, 23, 24, 0),
    gsSP2Triangles(21, 20, 24, 0, 25, 26, 27, 0),
    gsSPEndDisplayList(),
};

Gfx gDogLadyDL_50A8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadySkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aobVtx_001F48[439], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gDogLadyDL_5178[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadySkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aobVtx_001F48[442], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gDogLadyDL_5248[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadySkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aobVtx_001F48[445], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gDogLadyDL_5318[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadySkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aobVtx_001F48[430], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gDogLadyDL_53E8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadySkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aobVtx_001F48[433], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gDogLadyDL_54B8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadySkinGradientTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aobVtx_001F48[436], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gDogLadyDressDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gDogLadyTLUT),
    gsDPLoadTextureBlock(gDogLadyDressTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_aobVtx_001F48[448], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 0, 6, 0),
    gsSP2Triangles(7, 0, 5, 0, 5, 8, 7, 0),
    gsSP2Triangles(0, 7, 9, 0, 5, 4, 8, 0),
    gsSP2Triangles(2, 6, 0, 0, 9, 1, 0, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 12, 18, 10, 0),
    gsSP2Triangles(18, 15, 17, 0, 17, 10, 18, 0),
    gsSP2Triangles(13, 10, 17, 0, 13, 17, 16, 0),
    gsSP2Triangles(14, 11, 10, 0, 4, 19, 8, 0),
    gsSP2Triangles(19, 15, 8, 0, 19, 16, 15, 0),
    gsSPEndDisplayList(),
};

