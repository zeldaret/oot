#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_oF1s.h"

StandardLimb object_oF1s_Limb_000000 = { 
    { 0, 1394, -2050 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb object_oF1s_Limb_00000C = { 
    { 0, 0, 0 }, 0x02, 0x09,
    object_oF1s_DL_008488
};

StandardLimb object_oF1s_Limb_000018 = { 
    { 550, 0, 0 }, 0x03, LIMB_DONE,
    NULL
};

StandardLimb object_oF1s_Limb_000024 = { 
    { -450, 250, 800 }, 0x04, 0x06,
    object_oF1s_DL_0082C8
};

StandardLimb object_oF1s_Limb_000030 = { 
    { 1150, 0, 0 }, 0x05, LIMB_DONE,
    object_oF1s_DL_008190
};

StandardLimb object_oF1s_Limb_00003C = { 
    { 1050, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_oF1s_DL_007F90
};

StandardLimb object_oF1s_Limb_000048 = { 
    { -450, 250, -800 }, 0x07, LIMB_DONE,
    object_oF1s_DL_007880
};

StandardLimb object_oF1s_Limb_000054 = { 
    { 1150, 0, 0 }, 0x08, LIMB_DONE,
    object_oF1s_DL_007748
};

StandardLimb object_oF1s_Limb_000060 = { 
    { 1050, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_oF1s_DL_007548
};

StandardLimb object_oF1s_Limb_00006C = { 
    { 0, 0, 0 }, 0x0A, LIMB_DONE,
    object_oF1s_DL_006DE8
};

StandardLimb object_oF1s_Limb_000078 = { 
    { 2400, -100, 950 }, 0x0B, 0x0D,
    object_oF1s_DL_007D70
};

StandardLimb object_oF1s_Limb_000084 = { 
    { 2001, 0, 0 }, 0x0C, LIMB_DONE,
    object_oF1s_DL_007C10
};

StandardLimb object_oF1s_Limb_000090 = { 
    { 1599, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_oF1s_DL_007A40
};

StandardLimb object_oF1s_Limb_00009C = { 
    { 2400, -100, -950 }, 0x0E, 0x10,
    object_oF1s_DL_007328
};

StandardLimb object_oF1s_Limb_0000A8 = { 
    { 2000, 0, 0 }, 0x0F, LIMB_DONE,
    object_oF1s_DL_0071C8
};

StandardLimb object_oF1s_Limb_0000B4 = { 
    { 1600, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_oF1s_DL_006FF8
};

StandardLimb object_oF1s_Limb_0000C0 = { 
    { 2700, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_oF1s_DL_006A40
};

void* object_oF1s_Skel_000110Limbs[] = {
    &object_oF1s_Limb_000000,
    &object_oF1s_Limb_00000C,
    &object_oF1s_Limb_000018,
    &object_oF1s_Limb_000024,
    &object_oF1s_Limb_000030,
    &object_oF1s_Limb_00003C,
    &object_oF1s_Limb_000048,
    &object_oF1s_Limb_000054,
    &object_oF1s_Limb_000060,
    &object_oF1s_Limb_00006C,
    &object_oF1s_Limb_000078,
    &object_oF1s_Limb_000084,
    &object_oF1s_Limb_000090,
    &object_oF1s_Limb_00009C,
    &object_oF1s_Limb_0000A8,
    &object_oF1s_Limb_0000B4,
    &object_oF1s_Limb_0000C0,
};

FlexSkeletonHeader object_oF1s_Skel_000110 = { 
    { object_oF1s_Skel_000110Limbs, ARRAY_COUNT(object_oF1s_Skel_000110Limbs) }, 15
};

u32 object_oF1s_TLUT_00011C[] = {
#include "assets/objects/object_oF1s/tlut_0000011C.u32.rgba16.inc.c"
};

u32 object_oF1sTLUT_0002CC[] = {
#include "assets/objects/object_oF1s/object_oF1sTLUT_0002CC.u32.rgba16.inc.c"
};

u32 object_oF1s_Tex_0004BC[] = {
#include "assets/objects/object_oF1s/tex_000004BC.u32.ci8.inc.c"
};

u32 object_oF1s_Tex_0008BC[] = {
#include "assets/objects/object_oF1s/tex_000008BC.u32.rgba16.inc.c"
};

u32 object_oF1s_Tex_0018BC[] = {
#include "assets/objects/object_oF1s/tex_000018BC.u32.ci8.inc.c"
};

u32 object_oF1s_Tex_0018FC[] = {
#include "assets/objects/object_oF1s/tex_000018FC.u32.ci8.inc.c"
};

u32 object_oF1s_Tex_0019FC[] = {
#include "assets/objects/object_oF1s/tex_000019FC.u32.ci8.inc.c"
};

u32 object_oF1s_Tex_001AFC[] = {
#include "assets/objects/object_oF1s/tex_00001AFC.u32.ci8.inc.c"
};

u32 object_oF1s_Tex_001B7C[] = {
#include "assets/objects/object_oF1s/tex_00001B7C.u32.ci8.inc.c"
};

u32 object_oF1s_Tex_001F7C[] = {
#include "assets/objects/object_oF1s/tex_00001F7C.u32.ci8.inc.c"
};

u8 object_oF1s_Blob_00217C[] = {
#include "assets/objects/object_oF1s/object_oF1s_Blob_00217C.bin.inc.c"
};

u32 object_oF1s_Tex_00257C[] = {
#include "assets/objects/object_oF1s/tex_0000257C.u32.ci8.inc.c"
};

u32 object_oF1s_Tex_0025BC[] = {
#include "assets/objects/object_oF1s/tex_000025BC.u32.ci8.inc.c"
};

u8 object_oF1s_Blob_0029BC[] = {
#include "assets/objects/object_oF1s/object_oF1s_Blob_0029BC.bin.inc.c"
};

u32 object_oF1s_Tex_002DBC[] = {
#include "assets/objects/object_oF1s/tex_00002DBC.u32.ci8.inc.c"
};

Vtx object_oF1sVtx_0035C0[] = {
#include "assets/objects/object_oF1s/object_oF1sVtx_0035C0.vtx.inc"
};

Gfx object_oF1s_DL_006A40[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oF1s_Tex_0008BC, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_oF1sVtx_0035C0, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(2, 4, 5, 0, 5, 0, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 0, 6, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(object_oF1s_Tex_0004BC, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1s_TLUT_00011C),
    gsSPVertex(&object_oF1sVtx_0035C0[9], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 0, 7, 0, 8, 9, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_0018BC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1sTLUT_0002CC),
    gsSPVertex(&object_oF1sVtx_0035C0[20], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 13, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_0018FC, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oF1sVtx_0035C0[37], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_001AFC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oF1sVtx_0035C0[55], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 5, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 7, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 17, 20, 0, 21, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_002DBC, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oF1sVtx_0035C0[77], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(2, 1, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 20, 17, 18, 0),
    gsSP2Triangles(17, 21, 15, 0, 17, 16, 18, 0),
    gsSP2Triangles(20, 21, 17, 0, 22, 23, 24, 0),
    gsSP2Triangles(24, 23, 25, 0, 25, 26, 24, 0),
    gsSP2Triangles(24, 27, 22, 0, 2, 28, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1s_TLUT_00011C),
    gsSPVertex(&object_oF1sVtx_0035C0[106], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 6, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_oF1s_DL_006DE8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oF1s_Tex_001AFC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1sTLUT_0002CC),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oF1sVtx_0035C0[114], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_oF1sVtx_0035C0[144], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_00257C, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oF1sVtx_0035C0[168], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_002DBC, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oF1sVtx_0035C0[174], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 9, 10, 0, 11, 6, 8, 0),
    gsSP2Triangles(12, 11, 8, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 1, 0, 0, 15, 9, 16, 0),
    gsSP2Triangles(6, 16, 9, 0, 6, 11, 16, 0),
    gsSP2Triangles(11, 17, 16, 0, 18, 19, 14, 0),
    gsSP2Triangles(16, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(25, 19, 18, 0, 15, 16, 26, 0),
    gsSP2Triangles(16, 21, 26, 0, 14, 27, 18, 0),
    gsSP2Triangles(10, 9, 28, 0, 29, 17, 13, 0),
    gsSP2Triangles(14, 0, 27, 0, 1, 14, 3, 0),
    gsSP2Triangles(14, 4, 3, 0, 10, 7, 6, 0),
    gsSP2Triangles(13, 17, 11, 0, 9, 15, 28, 0),
    gsSPEndDisplayList(),
};

Gfx object_oF1s_DL_006FF8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oF1s_Tex_0004BC, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1s_TLUT_00011C),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oF1sVtx_0035C0[204], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 4, 7, 0, 4, 0, 5, 0),
    gsSP2Triangles(7, 8, 6, 0, 9, 8, 7, 0),
    gsSP2Triangles(10, 9, 7, 0, 2, 5, 0, 0),
    gsSP2Triangles(3, 7, 4, 0, 9, 10, 11, 0),
    gsSP2Triangles(2, 1, 12, 0, 8, 13, 6, 0),
    gsSP2Triangles(14, 12, 1, 0, 1, 13, 14, 0),
    gsSP1Triangle(1, 6, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_0019FC, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1sTLUT_0002CC),
    gsSPVertex(&object_oF1sVtx_0035C0[219], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 6, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(0, 2, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 4, 23, 5, 0),
    gsSP2Triangles(24, 12, 11, 0, 22, 25, 20, 0),
    gsSP2Triangles(15, 26, 13, 0, 27, 28, 29, 0),
    gsSPVertex(&object_oF1sVtx_0035C0[249], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 12, 10, 0, 13, 14, 15, 0),
    gsSP1Triangle(15, 16, 13, 0),
    gsSPEndDisplayList(),
};

Gfx object_oF1s_DL_0071C8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oF1s_Tex_0004BC, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1s_TLUT_00011C),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oF1sVtx_0035C0[266], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 7, 0, 6, 1, 7, 0),
    gsSP2Triangles(6, 2, 1, 0, 5, 0, 3, 0),
    gsSP2Triangles(2, 3, 0, 0, 7, 5, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_0019FC, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1sTLUT_0002CC),
    gsSPVertex(&object_oF1sVtx_0035C0[274], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_oF1s_DL_007328[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oF1s_Tex_0004BC, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1s_TLUT_00011C),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oF1sVtx_0035C0[282], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(0, 5, 1, 0, 5, 0, 3, 0),
    gsSP1Triangle(0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_0019FC, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1sTLUT_0002CC),
    gsSPVertex(&object_oF1sVtx_0035C0[288], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP1Triangle(2, 1, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_001AFC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oF1sVtx_0035C0[293], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 3, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 12, 19, 10, 0),
    gsSP2Triangles(9, 20, 7, 0, 21, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_0025BC, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oF1sVtx_0035C0[317], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_oF1s_DL_007548[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oF1s_Tex_0004BC, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1s_TLUT_00011C),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oF1sVtx_0035C0[325], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_001AFC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1sTLUT_0002CC),
    gsSPVertex(&object_oF1sVtx_0035C0[328], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 2, 1, 0),
    gsSP2Triangles(3, 10, 4, 0, 11, 12, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_001B7C, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oF1sVtx_0035C0[342], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(3, 1, 0, 0, 1, 5, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_001F7C, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oF1sVtx_0035C0[348], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP1Triangle(2, 3, 4, 0),
    gsSPEndDisplayList(),
};

Gfx object_oF1s_DL_007748[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oF1s_Tex_0018BC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1sTLUT_0002CC),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oF1sVtx_0035C0[353], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 28, 4, 0, 29, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_001AFC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oF1sVtx_0035C0[385], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_oF1s_DL_007880[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oF1s_Tex_0004BC, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1s_TLUT_00011C),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oF1sVtx_0035C0[391], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 3, 5, 6, 0),
    gsSP2Triangles(6, 5, 7, 0, 8, 6, 7, 0),
    gsSP2Triangles(9, 7, 5, 0, 8, 7, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_0018BC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1sTLUT_0002CC),
    gsSPVertex(&object_oF1sVtx_0035C0[401], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_001AFC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oF1sVtx_0035C0[404], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 2, 13, 0, 0),
    gsSP1Triangle(9, 14, 7, 0),
    gsSPEndDisplayList(),
};

Gfx object_oF1s_DL_007A40[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oF1s_Tex_0004BC, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1s_TLUT_00011C),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oF1sVtx_0035C0[419], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(2, 4, 3, 0, 1, 0, 5, 0),
    gsSP2Triangles(4, 2, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 6, 0),
    gsSP2Triangles(11, 9, 8, 0, 11, 5, 9, 0),
    gsSP2Triangles(1, 5, 11, 0, 14, 13, 10, 0),
    gsSP2Triangles(11, 10, 1, 0, 14, 10, 12, 0),
    gsSP1Triangle(6, 2, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_0019FC, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1sTLUT_0002CC),
    gsSPVertex(&object_oF1sVtx_0035C0[434], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(4, 3, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_oF1sVtx_0035C0[466], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 10, 12, 0),
    gsSP1Triangle(20, 21, 22, 0),
    gsSPEndDisplayList(),
};

Gfx object_oF1s_DL_007C10[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oF1s_Tex_0004BC, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1s_TLUT_00011C),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oF1sVtx_0035C0[489], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 3, 1, 0, 6, 5, 7, 0),
    gsSP2Triangles(2, 6, 7, 0, 2, 7, 0, 0),
    gsSP2Triangles(1, 0, 4, 0, 5, 6, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_0019FC, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1sTLUT_0002CC),
    gsSPVertex(&object_oF1sVtx_0035C0[497], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 5, 4, 0, 7, 0, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_oF1s_DL_007D70[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oF1s_Tex_0004BC, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1s_TLUT_00011C),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oF1sVtx_0035C0[505], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 1, 0, 0),
    gsSP1Triangle(1, 4, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_0019FC, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1sTLUT_0002CC),
    gsSPVertex(&object_oF1sVtx_0035C0[511], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP1Triangle(2, 3, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_001AFC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oF1sVtx_0035C0[516], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(2, 12, 0, 0, 13, 14, 15, 0),
    gsSP2Triangles(5, 16, 3, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 15, 14, 0, 21, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_0025BC, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oF1sVtx_0035C0[540], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 6, 0, 0, 7, 3, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_oF1s_DL_007F90[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oF1s_Tex_0004BC, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1s_TLUT_00011C),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oF1sVtx_0035C0[548], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_001AFC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1sTLUT_0002CC),
    gsSPVertex(&object_oF1sVtx_0035C0[551], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 0, 2, 0),
    gsSP2Triangles(4, 3, 10, 0, 11, 12, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_001B7C, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oF1sVtx_0035C0[565], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(2, 1, 4, 0, 1, 5, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_001F7C, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oF1sVtx_0035C0[571], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP1Triangle(4, 1, 0, 0),
    gsSPEndDisplayList(),
};

Gfx object_oF1s_DL_008190[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oF1s_Tex_0018BC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1sTLUT_0002CC),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oF1sVtx_0035C0[576], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 3, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 28, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_001AFC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oF1sVtx_0035C0[608], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPEndDisplayList(),
};

Gfx object_oF1s_DL_0082C8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oF1s_Tex_0004BC, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1s_TLUT_00011C),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oF1sVtx_0035C0[614], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(1, 4, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(4, 3, 5, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 5, 7, 0, 9, 8, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_0018BC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1sTLUT_0002CC),
    gsSPVertex(&object_oF1sVtx_0035C0[624], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_001AFC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oF1sVtx_0035C0[627], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 12, 9, 0, 0, 2, 13, 0),
    gsSP1Triangle(5, 14, 3, 0),
    gsSPEndDisplayList(),
};

Gfx object_oF1s_DL_008488[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oF1sVtx_0035C0[642], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_oF1s_DL_0084E0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oF1s_Tex_0004BC, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1s_TLUT_00011C),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oF1sVtx_0035C0[645], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_0018BC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oF1sTLUT_0002CC),
    gsSPVertex(&object_oF1sVtx_0035C0[656], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_0018FC, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oF1sVtx_0035C0[668], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_001AFC, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oF1sVtx_0035C0[686], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 6, 9, 0),
    gsSP2Triangles(10, 5, 4, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_oF1sVtx_0035C0[718], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_oF1sVtx_0035C0[748], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_00257C, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oF1sVtx_0035C0[754], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oF1s_Tex_002DBC, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oF1sVtx_0035C0[760], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(1, 8, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 6, 5, 0, 14, 1, 15, 0),
    gsSP2Triangles(1, 9, 15, 0, 7, 16, 5, 0),
    gsSP2Triangles(7, 17, 16, 0, 18, 7, 19, 0),
    gsSP2Triangles(7, 20, 19, 0, 21, 22, 23, 0),
    gsSP2Triangles(22, 24, 23, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 28, 29, 0, 0, 30, 31, 0),
    gsSPVertex(&object_oF1sVtx_0035C0[792], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 3, 4, 0, 3, 5, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(12, 19, 10, 0, 20, 21, 9, 0),
    gsSP2Triangles(22, 23, 7, 0, 7, 9, 22, 0),
    gsSP2Triangles(24, 25, 26, 0, 26, 27, 24, 0),
    gsSP1Triangle(1, 28, 29, 0),
    gsSPVertex(&object_oF1sVtx_0035C0[822], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 2, 1, 9, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 1, 0, 0),
    gsSP2Triangles(3, 13, 14, 0, 8, 7, 15, 0),
    gsSP1Triangle(16, 4, 17, 0),
    gsSPEndDisplayList(),
};

