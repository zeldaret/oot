#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_bob.h"

StandardLimb object_bob_Limb_000000 = { 
    { 0, 3377, 50 }, 0x01, LIMB_DONE,
    object_bob_DL_004E28
};

StandardLimb object_bob_Limb_00000C = { 
    { 359, 0, 350 }, 0x02, 0x04,
    object_bob_DL_004DD8
};

StandardLimb object_bob_Limb_000018 = { 
    { 1200, 0, 0 }, 0x03, LIMB_DONE,
    object_bob_DL_004D08
};

StandardLimb object_bob_Limb_000024 = { 
    { 1400, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_bob_DL_004C38
};

StandardLimb object_bob_Limb_000030 = { 
    { 359, 0, -350 }, 0x05, 0x07,
    object_bob_DL_004BE8
};

StandardLimb object_bob_Limb_00003C = { 
    { 1200, 0, 0 }, 0x06, LIMB_DONE,
    object_bob_DL_004B18
};

StandardLimb object_bob_Limb_000048 = { 
    { 1400, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_bob_DL_004A48
};

StandardLimb object_bob_Limb_000054 = { 
    { 0, 0, 0 }, 0x08, LIMB_DONE,
    object_bob_DL_0046B8
};

StandardLimb object_bob_Limb_000060 = { 
    { 1200, -100, 800 }, 0x09, 0x0B,
    object_bob_DL_004588
};

StandardLimb object_bob_Limb_00006C = { 
    { 1150, 0, 0 }, 0x0A, LIMB_DONE,
    object_bob_DL_004458
};

StandardLimb object_bob_Limb_000078 = { 
    { 901, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_bob_DL_004310
};

StandardLimb object_bob_Limb_000084 = { 
    { 1200, -100, -800 }, 0x0C, 0x0E,
    object_bob_DL_0041E0
};

StandardLimb object_bob_Limb_000090 = { 
    { 1150, 0, 0 }, 0x0D, LIMB_DONE,
    object_bob_DL_0040B0
};

StandardLimb object_bob_Limb_00009C = { 
    { 900, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_bob_DL_003F68
};

StandardLimb object_bob_Limb_0000A8 = { 
    { 1754, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_bob_DL_003B78
};

void* object_bob_Skel_0000F0Limbs[] = {
    &object_bob_Limb_000000,
    &object_bob_Limb_00000C,
    &object_bob_Limb_000018,
    &object_bob_Limb_000024,
    &object_bob_Limb_000030,
    &object_bob_Limb_00003C,
    &object_bob_Limb_000048,
    &object_bob_Limb_000054,
    &object_bob_Limb_000060,
    &object_bob_Limb_00006C,
    &object_bob_Limb_000078,
    &object_bob_Limb_000084,
    &object_bob_Limb_000090,
    &object_bob_Limb_00009C,
    &object_bob_Limb_0000A8,
};

FlexSkeletonHeader object_bob_Skel_0000F0 = { 
    { object_bob_Skel_0000F0Limbs, ARRAY_COUNT(object_bob_Skel_0000F0Limbs) }, 15
};

u8 object_bob_possiblePadding_0000FC[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_bob_TLUT_000108[] = {
#include "assets/objects/object_bob/tlut_00000108.rgba16.inc.c"
};

u64 object_bob_Tex_000308[] = {
#include "assets/objects/object_bob/tex_00000308.ci8.inc.c"
};

u64 object_bob_Tex_000348[] = {
#include "assets/objects/object_bob/tex_00000348.ci8.inc.c"
};

u64 object_bob_Tex_000388[] = {
#include "assets/objects/object_bob/tex_00000388.ci8.inc.c"
};

u64 object_bob_Tex_000788[] = {
#include "assets/objects/object_bob/tex_00000788.ci8.inc.c"
};

u64 object_bob_Tex_0007C8[] = {
#include "assets/objects/object_bob/tex_000007C8.rgba16.inc.c"
};

u64 object_bob_Tex_000FC8[] = {
#include "assets/objects/object_bob/tex_00000FC8.rgba16.inc.c"
};

u64 object_bob_Tex_0017C8[] = {
#include "assets/objects/object_bob/tex_000017C8.rgba16.inc.c"
};

u64 object_bob_Tex_001FC8[] = {
#include "assets/objects/object_bob/tex_00001FC8.ci8.inc.c"
};

u64 object_bob_Tex_0020C8[] = {
#include "assets/objects/object_bob/tex_000020C8.ci8.inc.c"
};

u64 object_bob_Tex_0021C8[] = {
#include "assets/objects/object_bob/tex_000021C8.ci8.inc.c"
};

u64 object_bob_Tex_002208[] = {
#include "assets/objects/object_bob/tex_00002208.ci8.inc.c"
};

Vtx object_bobVtx_002308[] = {
#include "assets/objects/object_bob/object_bobVtx_002308.vtx.inc"
};

Gfx object_bob_DL_003B78[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(object_bobVtx_002308, 6, 0),
    gsSPMatrix(0x0D000380, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bob_TLUT_000108),
    gsDPLoadTextureBlock(object_bob_Tex_000308, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bobVtx_002308[6], 18, 6),
    gsSP2Triangles(0, 1, 6, 0, 7, 8, 0, 0),
    gsSP2Triangles(9, 2, 10, 0, 11, 2, 3, 0),
    gsSP2Triangles(4, 2, 12, 0, 13, 3, 5, 0),
    gsSP2Triangles(14, 3, 15, 0, 16, 17, 4, 0),
    gsSP2Triangles(3, 18, 19, 0, 20, 1, 4, 0),
    gsSP2Triangles(5, 21, 22, 0, 5, 0, 23, 0),
    gsSPVertex(&object_bobVtx_002308[24], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 4, 0),
    gsSP2Triangles(11, 12, 2, 0, 7, 13, 14, 0),
    gsSP2Triangles(15, 16, 2, 0, 17, 4, 10, 0),
    gsSP1Triangle(7, 14, 18, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bob_TLUT_000108),
    gsDPLoadTextureBlock(object_bob_Tex_000348, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_bobVtx_002308[43], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 5, 9, 3, 0),
    gsSP2Triangles(4, 10, 5, 0, 5, 10, 11, 0),
    gsSP2Triangles(3, 12, 4, 0, 6, 13, 7, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(16, 20, 14, 0, 15, 21, 16, 0),
    gsSP2Triangles(18, 22, 19, 0, 2, 23, 0, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(28, 30, 29, 0, 31, 29, 30, 0),
    gsSP1Triangle(31, 27, 29, 0),
    gsSPVertex(&object_bobVtx_002308[75], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 11, 10, 0),
    gsSP2Triangles(14, 7, 9, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 25, 23, 0),
    gsSP1Triangle(26, 27, 28, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bob_TLUT_000108),
    gsDPLoadTextureBlock(object_bob_Tex_000388, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSPVertex(&object_bobVtx_002308[104], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 0, 3, 0, 5, 2, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bob_TLUT_000108),
    gsDPLoadTextureBlock(object_bob_Tex_000788, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(0x0A000000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSP2Triangles(9, 10, 11, 0, 11, 12, 9, 0),
    gsSP2Triangles(10, 9, 13, 0, 14, 11, 10, 0),
    gsSP2Triangles(15, 16, 17, 0, 17, 18, 15, 0),
    gsSP2Triangles(19, 17, 16, 0, 16, 15, 20, 0),
    gsSPEndDisplayList(),
};

Gfx object_bob_DL_003F68[] = {
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_bobVtx_002308[209], 5, 0),
    gsSPMatrix(0x0D000340, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bob_TLUT_000108),
    gsDPLoadTextureBlock(object_bob_Tex_001FC8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bobVtx_002308[214], 19, 5),
    gsSP2Triangles(5, 1, 0, 0, 6, 7, 1, 0),
    gsSP2Triangles(1, 8, 9, 0, 10, 11, 3, 0),
    gsSP2Triangles(3, 12, 13, 0, 14, 3, 15, 0),
    gsSP2Triangles(3, 2, 16, 0, 17, 18, 0, 0),
    gsSP2Triangles(19, 0, 4, 0, 0, 20, 21, 0),
    gsSP1Triangle(1, 22, 23, 0),
    gsSPVertex(&object_bobVtx_002308[233], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 12, 9, 0, 2, 13, 14, 0),
    gsSP2Triangles(3, 15, 4, 0, 1, 0, 5, 0),
    gsSP2Triangles(5, 4, 15, 0, 2, 14, 0, 0),
    gsSPEndDisplayList(),
};

Gfx object_bob_DL_0040B0[] = {
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_bobVtx_002308[249], 3, 0),
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bob_TLUT_000108),
    gsDPLoadTextureBlock(object_bob_Tex_001FC8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bobVtx_002308[252], 11, 3),
    gsSP2Triangles(2, 3, 4, 0, 5, 6, 0, 0),
    gsSP2Triangles(7, 8, 2, 0, 2, 0, 9, 0),
    gsSP2Triangles(10, 1, 2, 0, 0, 11, 12, 0),
    gsSP1Triangle(0, 1, 13, 0),
    gsSPVertex(&object_bobVtx_002308[263], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 6, 3, 0, 1, 6, 2, 0),
    gsSP2Triangles(3, 4, 5, 0, 5, 2, 6, 0),
    gsSP1Triangle(2, 4, 0, 0),
    gsSPEndDisplayList(),
};

Gfx object_bob_DL_0041E0[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_bobVtx_002308[270], 4, 0),
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bob_TLUT_000108),
    gsDPLoadTextureBlock(object_bob_Tex_001FC8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bobVtx_002308[274], 12, 4),
    gsSP2Triangles(0, 4, 5, 0, 6, 7, 0, 0),
    gsSP2Triangles(8, 1, 2, 0, 3, 9, 10, 0),
    gsSP2Triangles(11, 3, 0, 0, 2, 12, 13, 0),
    gsSP2Triangles(14, 2, 3, 0, 0, 1, 15, 0),
    gsSPVertex(&object_bobVtx_002308[286], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 0, 6, 0, 1, 4, 3, 0),
    gsSP2Triangles(2, 6, 0, 0, 5, 6, 3, 0),
    gsSP1Triangle(3, 2, 1, 0),
    gsSPEndDisplayList(),
};

Gfx object_bob_DL_004310[] = {
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_bobVtx_002308[125], 5, 0),
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bob_TLUT_000108),
    gsDPLoadTextureBlock(object_bob_Tex_001FC8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bobVtx_002308[130], 19, 5),
    gsSP2Triangles(0, 1, 5, 0, 1, 6, 7, 0),
    gsSP2Triangles(8, 9, 1, 0, 3, 10, 11, 0),
    gsSP2Triangles(12, 13, 3, 0, 14, 3, 15, 0),
    gsSP2Triangles(16, 2, 3, 0, 0, 17, 18, 0),
    gsSP2Triangles(4, 0, 19, 0, 20, 21, 0, 0),
    gsSP1Triangle(22, 23, 1, 0),
    gsSPVertex(&object_bobVtx_002308[149], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 12, 9, 0, 13, 14, 0, 0),
    gsSP2Triangles(4, 15, 5, 0, 3, 2, 1, 0),
    gsSP2Triangles(15, 4, 3, 0, 2, 13, 0, 0),
    gsSPEndDisplayList(),
};

Gfx object_bob_DL_004458[] = {
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_bobVtx_002308[165], 3, 0),
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bob_TLUT_000108),
    gsDPLoadTextureBlock(object_bob_Tex_001FC8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bobVtx_002308[168], 11, 3),
    gsSP2Triangles(3, 4, 2, 0, 0, 5, 6, 0),
    gsSP2Triangles(2, 7, 8, 0, 9, 0, 2, 0),
    gsSP2Triangles(2, 1, 10, 0, 11, 12, 0, 0),
    gsSP1Triangle(13, 1, 0, 0),
    gsSPVertex(&object_bobVtx_002308[179], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(4, 5, 6, 0, 0, 5, 1, 0),
    gsSP2Triangles(6, 3, 4, 0, 5, 0, 6, 0),
    gsSP1Triangle(2, 3, 0, 0),
    gsSPEndDisplayList(),
};

Gfx object_bob_DL_004588[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_bobVtx_002308[186], 4, 0),
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bob_TLUT_000108),
    gsDPLoadTextureBlock(object_bob_Tex_001FC8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bobVtx_002308[190], 12, 4),
    gsSP2Triangles(4, 5, 0, 0, 0, 6, 7, 0),
    gsSP2Triangles(1, 2, 8, 0, 9, 10, 3, 0),
    gsSP2Triangles(0, 3, 11, 0, 12, 13, 1, 0),
    gsSP2Triangles(3, 1, 14, 0, 15, 2, 0, 0),
    gsSPVertex(&object_bobVtx_002308[202], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 2, 3, 0, 5, 4, 1, 0),
    gsSP2Triangles(2, 6, 0, 0, 5, 6, 3, 0),
    gsSP1Triangle(1, 0, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_bob_DL_0046B8[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_bobVtx_002308[293], 12, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bob_TLUT_000108),
    gsDPLoadTextureBlock(object_bob_Tex_0020C8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bobVtx_002308[305], 18, 12),
    gsSP2Triangles(0, 12, 13, 0, 2, 4, 14, 0),
    gsSP2Triangles(15, 16, 5, 0, 17, 0, 18, 0),
    gsSP2Triangles(0, 6, 19, 0, 20, 5, 21, 0),
    gsSP2Triangles(5, 8, 22, 0, 23, 24, 2, 0),
    gsSP2Triangles(25, 9, 10, 0, 26, 10, 27, 0),
    gsSP1Triangle(28, 29, 10, 0),
    gsSPVertex(&object_bobVtx_002308[323], 6, 12),
    gsSP2Triangles(12, 7, 3, 0, 3, 13, 14, 0),
    gsSP1Triangle(15, 3, 16, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bob_TLUT_000108),
    gsDPLoadTextureBlock(object_bob_Tex_0021C8, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(17, 11, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bob_TLUT_000108),
    gsDPLoadTextureBlock(object_bob_Tex_0020C8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_bobVtx_002308[329], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(4, 1, 0, 0, 3, 5, 1, 0),
    gsSP2Triangles(6, 7, 8, 0, 5, 9, 10, 0),
    gsSP2Triangles(8, 11, 6, 0, 10, 9, 12, 0),
    gsSP2Triangles(12, 9, 13, 0, 2, 1, 5, 0),
    gsSP2Triangles(0, 14, 15, 0, 15, 14, 16, 0),
    gsSP2Triangles(14, 17, 16, 0, 18, 14, 0, 0),
    gsSP2Triangles(17, 14, 18, 0, 19, 20, 17, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bob_TLUT_000108),
    gsDPLoadTextureBlock(object_bob_Tex_0021C8, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bob_TLUT_000108),
    gsDPLoadTextureBlock(object_bob_Tex_000308, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(27, 28, 29, 0),
    gsSPEndDisplayList(),
};

Gfx object_bob_DL_004A48[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bob_TLUT_000108),
    gsDPLoadTextureBlock(object_bob_Tex_002208, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bobVtx_002308[368], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_bob_DL_004B18[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bob_TLUT_000108),
    gsDPLoadTextureBlock(object_bob_Tex_002208, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bobVtx_002308[371], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_bob_DL_004BE8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(PRIMITIVE, 0, SHADE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bobVtx_002308[374], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_bob_DL_004C38[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bob_TLUT_000108),
    gsDPLoadTextureBlock(object_bob_Tex_002208, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bobVtx_002308[359], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_bob_DL_004D08[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bob_TLUT_000108),
    gsDPLoadTextureBlock(object_bob_Tex_002208, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bobVtx_002308[362], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_bob_DL_004DD8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(PRIMITIVE, 0, SHADE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bobVtx_002308[365], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_bob_DL_004E28[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_bob_TLUT_000108),
    gsDPLoadTextureBlock(object_bob_Tex_002208, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bobVtx_002308[377], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 7, 0, 8, 9, 0, 0),
    gsSP2Triangles(8, 10, 11, 0, 11, 9, 8, 0),
    gsSP2Triangles(7, 4, 3, 0, 2, 12, 0, 0),
    gsSP2Triangles(0, 12, 8, 0, 1, 13, 5, 0),
    gsSP2Triangles(5, 2, 1, 0, 5, 13, 3, 0),
    gsSPEndDisplayList(),
};

