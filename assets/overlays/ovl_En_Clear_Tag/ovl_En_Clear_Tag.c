#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ovl_En_Clear_Tag.h"
static Gfx gArwingDL[91];
static Vtx ovl_En_Clear_TagVtx_0029C8[148];
static u64 ovl_En_Clear_TagTex_003308[16];
static u64 ovl_En_Clear_TagTex_003388[256];
static u64 ovl_En_Clear_TagTex_003B88[512];
static u64 ovl_En_Clear_TagTex_004B88[256];
static u64 ovl_En_Clear_TagTex_005388[256];
static u64 ovl_En_Clear_TagTex_005B88[256];
static Gfx gArwingLaserDL[14];
static Vtx ovl_En_Clear_TagVtx_0063F8[6];
static u64 ovl_En_Clear_TagTex_006458[64];
static Vtx ovl_En_Clear_TagVtx_006658[3];
static Gfx gArwingBackfireDL[16];
static u64 ovl_En_Clear_TagTex_006708[32];
static u64 ovl_En_Clear_TagTex_006808[64];
static Vtx ovl_En_Clear_TagVtx_006A08[3];
static Gfx gArwingDebrisEffectMaterialDL[16];
static Gfx gArwingDebrisEffectDL[3];
static u64 ovl_En_Clear_TagTex_006AD0[128];
static u64 ovl_En_Clear_TagTex_006ED0[64];
static Vtx ovl_En_Clear_TagVtx_0070D0[3];
static Gfx gArwingFireEffectMaterialDL[21];
static Gfx gArwingFireEffectDL[4];
static u64 ovl_En_Clear_TagTex_0071C8[512];
static Vtx ovl_En_Clear_TagVtx_0081C8[4];
static Gfx gArwingFlashEffectDL[16];
static u64 ovl_En_Clear_TagTex_008288[64];
static Vtx ovl_En_Clear_TagVtx_008488[3];
static Gfx gArwingFlashEffectGroundDL[17];
static u64 ovl_En_Clear_TagTex_008540[128];
static Vtx ovl_En_Clear_TagVtx_008940[3];
static Gfx gArwingShadowDL[16];

static Gfx gArwingDL[91] = {
    gsDPLoadTextureBlock(ovl_En_Clear_TagTex_003B88, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(ovl_En_Clear_TagVtx_0029C8, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsDPLoadTextureBlock(ovl_En_Clear_TagTex_004B88, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ovl_En_Clear_TagVtx_0029C8[5], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Quadrangle(6, 7, 8, 4, 0),
    gsDPLoadTextureBlock(ovl_En_Clear_TagTex_003388, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ovl_En_Clear_TagVtx_0029C8[14], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(0, 2, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 5, 7, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 16, 13, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 9, 20, 0, 20, 9, 12, 0),
    gsSP2Triangles(12, 21, 20, 0, 4, 22, 23, 0),
    gsSP2Triangles(4, 23, 24, 0, 23, 25, 3, 0),
    gsSP2Triangles(3, 24, 23, 0, 26, 27, 28, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 26, 0),
    gsSPVertex(&ovl_En_Clear_TagVtx_0029C8[45], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(2, 4, 3, 0, 5, 4, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 5, 0),
    gsSP2Triangles(5, 8, 9, 0, 4, 5, 9, 0),
    gsSP2Triangles(9, 10, 4, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 22, 23, 0),
    gsSP2Triangles(23, 20, 19, 0, 24, 25, 26, 0),
    gsSP1Triangle(27, 28, 29, 0),
    gsSPVertex(&ovl_En_Clear_TagVtx_0029C8[75], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 10, 0, 15, 14, 13, 0),
    gsSP1Triangle(16, 17, 18, 0),
    gsDPLoadTextureBlock(ovl_En_Clear_TagTex_005388, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ovl_En_Clear_TagVtx_0029C8[94], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 0, 7, 8, 0),
    gsSP2Triangles(8, 9, 0, 0, 10, 11, 12, 0),
    gsSP2Triangles(11, 10, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(5, 17, 18, 0, 17, 5, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 22, 23, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 26, 25, 0),
    gsSP2Triangles(28, 29, 30, 0, 31, 30, 29, 0),
    gsSPVertex(&ovl_En_Clear_TagVtx_0029C8[126], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 8, 9, 0),
    gsDPLoadTextureBlock(ovl_En_Clear_TagTex_005B88, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ovl_En_Clear_TagVtx_0029C8[136], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPLoadTextureBlock(ovl_En_Clear_TagTex_003308, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ovl_En_Clear_TagVtx_0029C8[142], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPEndDisplayList(),
};

static Vtx ovl_En_Clear_TagVtx_0029C8[148] = {
#include "assets/overlays/ovl_En_Clear_Tag/ovl_En_Clear_TagVtx_0029C8.vtx.inc"
};

static u64 ovl_En_Clear_TagTex_003308[16] = {
#include "assets/overlays/ovl_En_Clear_Tag/ovl_En_Clear_TagTex_003308.rgba16.inc.c"
};

static u64 ovl_En_Clear_TagTex_003388[256] = {
#include "assets/overlays/ovl_En_Clear_Tag/ovl_En_Clear_TagTex_003388.rgba16.inc.c"
};

static u64 ovl_En_Clear_TagTex_003B88[512] = {
#include "assets/overlays/ovl_En_Clear_Tag/ovl_En_Clear_TagTex_003B88.rgba16.inc.c"
};

static u64 ovl_En_Clear_TagTex_004B88[256] = {
#include "assets/overlays/ovl_En_Clear_Tag/ovl_En_Clear_TagTex_004B88.rgba16.inc.c"
};

static u64 ovl_En_Clear_TagTex_005388[256] = {
#include "assets/overlays/ovl_En_Clear_Tag/ovl_En_Clear_TagTex_005388.rgba16.inc.c"
};

static u64 ovl_En_Clear_TagTex_005B88[256] = {
#include "assets/overlays/ovl_En_Clear_Tag/ovl_En_Clear_TagTex_005B88.rgba16.inc.c"
};

static Gfx gArwingLaserDL[14] = {
    gsDPLoadTextureBlock(ovl_En_Clear_TagTex_006458, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIA_PRIM, G_CC_PASS2),
    gsSPVertex(ovl_En_Clear_TagVtx_0063F8, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(1, 4, 2, 0, 4, 1, 3, 0),
    gsSP2Triangles(4, 5, 2, 0, 5, 4, 3, 0),
    gsSP2Triangles(5, 0, 2, 0, 0, 5, 3, 0),
    gsSPEndDisplayList(),
};

static Vtx ovl_En_Clear_TagVtx_0063F8[6] = {
#include "assets/overlays/ovl_En_Clear_Tag/ovl_En_Clear_TagVtx_0063F8.vtx.inc"
};

static u64 ovl_En_Clear_TagTex_006458[64] = {
#include "assets/overlays/ovl_En_Clear_Tag/ovl_En_Clear_TagTex_006458.rgba16.inc.c"
};

static Vtx ovl_En_Clear_TagVtx_006658[3] = {
#include "assets/overlays/ovl_En_Clear_Tag/ovl_En_Clear_TagVtx_006658.vtx.inc"
};

static Gfx gArwingBackfireDL[16] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ovl_En_Clear_TagTex_006708, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0,
                       0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(ovl_En_Clear_TagVtx_006658, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

static u64 ovl_En_Clear_TagTex_006708[32] = {
#include "assets/overlays/ovl_En_Clear_Tag/ovl_En_Clear_TagTex_006708.i8.inc.c"
};

static u64 ovl_En_Clear_TagTex_006808[64] = {
#include "assets/overlays/ovl_En_Clear_Tag/ovl_En_Clear_TagTex_006808.rgba16.inc.c"
};

static Vtx ovl_En_Clear_TagVtx_006A08[3] = {
#include "assets/overlays/ovl_En_Clear_Tag/ovl_En_Clear_TagVtx_006A08.vtx.inc"
};

static Gfx gArwingDebrisEffectMaterialDL[16] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ovl_En_Clear_TagTex_006808, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPEndDisplayList(),
};

static Gfx gArwingDebrisEffectDL[3] = {
    gsSPVertex(ovl_En_Clear_TagVtx_006A08, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

static u64 ovl_En_Clear_TagTex_006AD0[128] = {
#include "assets/overlays/ovl_En_Clear_Tag/ovl_En_Clear_TagTex_006AD0.i4.inc.c"
};

static u64 ovl_En_Clear_TagTex_006ED0[64] = {
#include "assets/overlays/ovl_En_Clear_Tag/ovl_En_Clear_TagTex_006ED0.i4.inc.c"
};

static Vtx ovl_En_Clear_TagVtx_0070D0[3] = {
#include "assets/overlays/ovl_En_Clear_Tag/ovl_En_Clear_TagVtx_0070D0.vtx.inc"
};

static Gfx gArwingFireEffectMaterialDL[21] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(ovl_En_Clear_TagTex_006AD0, G_IM_FMT_I, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 5, 6, G_TX_NOLOD, 15),
    gsDPLoadMultiBlock_4b(ovl_En_Clear_TagTex_006ED0, 0x0100, 1, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                          G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, ENV_ALPHA, TEXEL1, TEXEL0, 1, ENVIRONMENT, TEXEL1, PRIMITIVE, ENVIRONMENT, COMBINED,
                       ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPEndDisplayList(),
};

static Gfx gArwingFireEffectDL[4] = {
    gsSPDisplayList(0x08000000),
    gsSPVertex(ovl_En_Clear_TagVtx_0070D0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

static u64 ovl_En_Clear_TagTex_0071C8[512] = {
#include "assets/overlays/ovl_En_Clear_Tag/ovl_En_Clear_TagTex_0071C8.i8.inc.c"
};

static Vtx ovl_En_Clear_TagVtx_0081C8[4] = {
#include "assets/overlays/ovl_En_Clear_Tag/ovl_En_Clear_TagVtx_0081C8.vtx.inc"
};

static Gfx gArwingFlashEffectDL[16] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ovl_En_Clear_TagTex_0071C8, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                       COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(ovl_En_Clear_TagVtx_0081C8, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

static u64 ovl_En_Clear_TagTex_008288[64] = {
#include "assets/overlays/ovl_En_Clear_Tag/ovl_En_Clear_TagTex_008288.i4.inc.c"
};

static Vtx ovl_En_Clear_TagVtx_008488[3] = {
#include "assets/overlays/ovl_En_Clear_Tag/ovl_En_Clear_TagVtx_008488.vtx.inc"
};

static Gfx gArwingFlashEffectGroundDL[17] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(ovl_En_Clear_TagTex_008288, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                            | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIA_PRIM, G_CC_PASS2),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_OVL_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(ovl_En_Clear_TagVtx_008488, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

static u64 ovl_En_Clear_TagTex_008540[128] = {
#include "assets/overlays/ovl_En_Clear_Tag/ovl_En_Clear_TagTex_008540.i8.inc.c"
};

static Vtx ovl_En_Clear_TagVtx_008940[3] = {
#include "assets/overlays/ovl_En_Clear_Tag/ovl_En_Clear_TagVtx_008940.vtx.inc"
};

static Gfx gArwingShadowDL[16] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ovl_En_Clear_TagTex_008540, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(PRIMITIVE, 0, TEXEL0, 0, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_OVL_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(ovl_En_Clear_TagVtx_008940, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

