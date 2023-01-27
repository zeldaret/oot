#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ovl_Boss_Ganon.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"
static Vtx ovl_Boss_GanonVtx_00E6B8[4];
static u64 ovl_Boss_GanonTex_00E748[512];
static Vtx ovl_Boss_GanonVtx_00F748[4];
static u64 ovl_Boss_GanonTLUT_00F808[8];
static u64 ovl_Boss_GanonTex_00F848[128];
static Vtx ovl_Boss_GanonVtx_00FC48[3];
static u64 ovl_Boss_GanonTex_010538[512];
static Vtx ovl_Boss_GanonVtx_011538[4];
static Vtx ovl_Boss_GanonVtx_01A600[4];
static Vtx ovl_Boss_GanonVtx_01A6C0[3];
static Vtx ovl_Boss_GanonVtx_01A738[3];
static u64 ovl_Boss_GanonTex_01A7B0[256];
static u64 ovl_Boss_GanonTex_01AFB0[256];
static u64 ovl_Boss_GanonTex_01B7B0[256];
static Vtx ovl_Boss_GanonVtx_01BFB0[33];
static u64 ovl_Boss_GanonTex_01C420[256];
static Vtx ovl_Boss_GanonVtx_01CC20[26];
static u64 ovl_Boss_GanonTex_01CEB8[256];
static u64 ovl_Boss_GanonTex_01D6B8[128];
static Vtx ovl_Boss_GanonVtx_01DAB8[26];
static u64 ovl_Boss_GanonTex_01DE88[256];
static u64 ovl_Boss_GanonTex_01E688[256];
static Vtx ovl_Boss_GanonVtx_01EE88[4];
static u64 ovl_Boss_GanonTex_01EF90[192];
static Vtx ovl_Boss_GanonVtx_01F590[118];
static u64 ovl_Boss_GanonTex_01FFF8[64];
static Vtx ovl_Boss_GanonVtx_0201F8[3];
static Vtx ovl_Boss_GanonVtx_0202B0[4];
static u64 ovl_Boss_GanonTex_020370[128];
static u64 ovl_Boss_GanonTex_020770[256];
static Vtx ovl_Boss_GanonVtx_020F70[22];

static Vtx ovl_Boss_GanonVtx_00E6B8[4] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonVtx_00E6B8.vtx.inc"
};

Gfx gDorfShadowSetupDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPEndDisplayList(),
};

Gfx gDorfShadowModelDL[] = {
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                       COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_OVL_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(ovl_Boss_GanonVtx_00E6B8, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

static u64 ovl_Boss_GanonTex_00E748[512] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonTex_00E748.i8.inc.c"
};

static Vtx ovl_Boss_GanonVtx_00F748[4] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonVtx_00F748.vtx.inc"
};

Gfx gDorfTriforceDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ovl_Boss_GanonTex_00E748, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, ENV_ALPHA, TEXEL0, 0, 0, 0, TEXEL0, PRIMITIVE, ENVIRONMENT, COMBINED,
                       ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(ovl_Boss_GanonVtx_00F748, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

static u64 ovl_Boss_GanonTLUT_00F808[8] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonTLUT_00F808.rgba16.inc.c"
};

static u64 ovl_Boss_GanonTex_00F848[128] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonTex_00F848.ci8.inc.c"
};

static Vtx ovl_Boss_GanonVtx_00FC48[3] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonVtx_00FC48.vtx.inc"
};

Gfx gDorfWindowShardMaterialDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ovl_Boss_GanonTex_00F848, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ovl_Boss_GanonTLUT_00F808),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsSPEndDisplayList(),
};

Gfx gDorfWindowShardModelDL[] = {
    gsSPVertex(ovl_Boss_GanonVtx_00FC48, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u64 gDorfWindowShatterTemplateTex[] = {
#include "assets/overlays/ovl_Boss_Ganon/window_shatter_template.ci8.inc.c"
};

static u64 ovl_Boss_GanonTex_010538[512] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonTex_010538.i8.inc.c"
};

static Vtx ovl_Boss_GanonVtx_011538[4] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonVtx_011538.vtx.inc"
};

Gfx gDorfLightBallMaterialDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ovl_Boss_GanonTex_010538, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                       COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPEndDisplayList(),
};

Gfx gDorfSquareDL[] = {
    gsSPVertex(ovl_Boss_GanonVtx_011538, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u64 gDorfLightning1Tex[] = {
#include "assets/overlays/ovl_Boss_Ganon/lightning_1.i8.inc.c"
};

u64 gDorfLightning2Tex[] = {
#include "assets/overlays/ovl_Boss_Ganon/lightning_2.i8.inc.c"
};

u64 gDorfLightning3Tex[] = {
#include "assets/overlays/ovl_Boss_Ganon/lightning_3.i8.inc.c"
};

u64 gDorfLightning4Tex[] = {
#include "assets/overlays/ovl_Boss_Ganon/lightning_4.i8.inc.c"
};

u64 gDorfLightning5Tex[] = {
#include "assets/overlays/ovl_Boss_Ganon/lightning_5.i8.inc.c"
};

u64 gDorfLightning6Tex[] = {
#include "assets/overlays/ovl_Boss_Ganon/lightning_6.i8.inc.c"
};

u64 gDorfLightning7Tex[] = {
#include "assets/overlays/ovl_Boss_Ganon/lightning_7.i8.inc.c"
};

u64 gDorfLightning8Tex[] = {
#include "assets/overlays/ovl_Boss_Ganon/lightning_8.i8.inc.c"
};

u64 gDorfLightning9Tex[] = {
#include "assets/overlays/ovl_Boss_Ganon/lightning_9.i8.inc.c"
};

u64 gDorfLightning10Tex[] = {
#include "assets/overlays/ovl_Boss_Ganon/lightning_10.i8.inc.c"
};

u64 gDorfLightning11Tex[] = {
#include "assets/overlays/ovl_Boss_Ganon/lightning_11.i8.inc.c"
};

u64 gDorfLightning12Tex[] = {
#include "assets/overlays/ovl_Boss_Ganon/lightning_12.i8.inc.c"
};

static Vtx ovl_Boss_GanonVtx_01A600[4] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonVtx_01A600.vtx.inc"
};

Gfx gDorfLightningDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_I, G_IM_SIZ_8b, 32, 96, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_BLENDPEDECALA, G_CC_PASS2),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(ovl_Boss_GanonVtx_01A600, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

static Vtx ovl_Boss_GanonVtx_01A6C0[3] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonVtx_01A6C0.vtx.inc"
};

Gfx gDorfUnusedDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, SHADE_ALPHA, ENVIRONMENT, SHADE, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0,
                       0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(ovl_Boss_GanonVtx_01A6C0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

static Vtx ovl_Boss_GanonVtx_01A738[3] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonVtx_01A738.vtx.inc"
};

Gfx gDorfLightRayTriDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, SHADE_ALPHA, ENVIRONMENT, SHADE, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0,
                       0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(ovl_Boss_GanonVtx_01A738, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

static u64 ovl_Boss_GanonTex_01A7B0[256] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonTex_01A7B0.ia16.inc.c"
};

static u64 ovl_Boss_GanonTex_01AFB0[256] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonTex_01AFB0.i4.inc.c"
};

static u64 ovl_Boss_GanonTex_01B7B0[256] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonTex_01B7B0.i4.inc.c"
};

static Vtx ovl_Boss_GanonVtx_01BFB0[33] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonVtx_01BFB0.vtx.inc"
};

Gfx gDorfLightFlecksDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(ovl_Boss_GanonTex_01B7B0, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 6, 6, 15, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(gEffFleckTex, 0x0100, 1, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                          G_TX_WRAP, 6, 6, 14, 14),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, ENV_ALPHA, TEXEL0, TEXEL1, 1, ENVIRONMENT, TEXEL0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPDisplayList(0x08000000),
    gsSPVertex(ovl_Boss_GanonVtx_01BFB0, 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 5, 7, 8, 0),
    gsSP2Triangles(7, 9, 10, 0, 9, 11, 12, 0),
    gsSP2Triangles(11, 13, 14, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 18, 20, 21, 0),
    gsSP2Triangles(20, 22, 23, 0, 22, 0, 24, 0),
    gsSPEndDisplayList(),
};

Gfx gDorfBigMagicBGCircleDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ovl_Boss_GanonTex_01A7B0, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, 14, G_TX_NOMIRROR |
                G_TX_CLAMP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(NOISE, TEXEL0, ENV_ALPHA, PRIMITIVE, TEXEL1, 1, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, COMBINED, 1,
                       COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPDisplayList(0x09000000),
    gsSPVertex(&ovl_Boss_GanonVtx_01BFB0[25], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gDorfDotDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ovl_Boss_GanonTex_01A7B0, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(ovl_Boss_GanonTex_01AFB0, 0x0100, 1, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 6, 15, 14),
    gsDPSetCombineLERP(TEXEL1, 0, TEXEL1, TEXEL0, TEXEL1, 1, ENVIRONMENT, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED,
                       0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(&ovl_Boss_GanonVtx_01BFB0[29], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

static u64 ovl_Boss_GanonTex_01C420[256] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonTex_01C420.i8.inc.c"
};

static Vtx ovl_Boss_GanonVtx_01CC20[26] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonVtx_01CC20.vtx.inc"
};

Gfx gDorfShockwaveDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ovl_Boss_GanonTex_01C420, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, 15, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_WRAP, 6, 14),
    gsDPSetTileSize(1, 0, 0, 0x00FC, 0x007C),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(ovl_Boss_GanonVtx_01CC20, 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 11, 0, 12, 11, 10, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 15, 0, 18, 15, 14, 0),
    gsSP2Triangles(20, 21, 19, 0, 20, 19, 18, 0),
    gsSP2Triangles(22, 23, 21, 0, 22, 21, 20, 0),
    gsSP2Triangles(24, 25, 23, 0, 24, 23, 22, 0),
    gsSP2Triangles(3, 2, 25, 0, 3, 25, 24, 0),
    gsSPEndDisplayList(),
};

static u64 ovl_Boss_GanonTex_01CEB8[256] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonTex_01CEB8.i8.inc.c"
};

static u64 ovl_Boss_GanonTex_01D6B8[128] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonTex_01D6B8.i8.inc.c"
};

static Vtx ovl_Boss_GanonVtx_01DAB8[26] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonVtx_01DAB8.vtx.inc"
};

Gfx gDorfImpactDarkDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ovl_Boss_GanonTex_01CEB8, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, 2, 1),
    gsDPLoadMultiBlock(ovl_Boss_GanonTex_01D6B8, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, G_TX_NOLOD),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL1, 1, ENVIRONMENT, TEXEL0, 0, 0, 0, COMBINED,
                       COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(ovl_Boss_GanonVtx_01DAB8, 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 9, 0, 12, 9, 8, 0),
    gsSP2Triangles(14, 15, 13, 0, 14, 13, 12, 0),
    gsSP2Triangles(16, 17, 15, 0, 16, 15, 14, 0),
    gsSP2Triangles(18, 19, 17, 0, 18, 17, 16, 0),
    gsSP2Triangles(20, 21, 19, 0, 20, 19, 18, 0),
    gsSP2Triangles(22, 23, 21, 0, 22, 21, 20, 0),
    gsSP2Triangles(24, 25, 23, 0, 24, 23, 22, 0),
    gsSP2Triangles(3, 2, 25, 0, 3, 25, 24, 0),
    gsSPEndDisplayList(),
};

Gfx gDorfImpactLightDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ovl_Boss_GanonTex_01CEB8, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, 1, 1),
    gsDPLoadMultiBlock(ovl_Boss_GanonTex_01D6B8, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, G_TX_NOLOD),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL1, 1, ENVIRONMENT, TEXEL0, 0, 0, 0, COMBINED,
                       COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(ovl_Boss_GanonVtx_01DAB8, 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 9, 0, 12, 9, 8, 0),
    gsSP2Triangles(14, 15, 13, 0, 14, 13, 12, 0),
    gsSP2Triangles(16, 17, 15, 0, 16, 15, 14, 0),
    gsSP2Triangles(18, 19, 17, 0, 18, 17, 16, 0),
    gsSP2Triangles(20, 21, 19, 0, 20, 19, 18, 0),
    gsSP2Triangles(22, 23, 21, 0, 22, 21, 20, 0),
    gsSP2Triangles(24, 25, 23, 0, 24, 23, 22, 0),
    gsSP2Triangles(3, 2, 25, 0, 3, 25, 24, 0),
    gsSPEndDisplayList(),
};

static u64 ovl_Boss_GanonTex_01DE88[256] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonTex_01DE88.i8.inc.c"
};

static u64 ovl_Boss_GanonTex_01E688[256] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonTex_01E688.i8.inc.c"
};

static Vtx ovl_Boss_GanonVtx_01EE88[4] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonVtx_01EE88.vtx.inc"
};

Gfx gDorfShockGlowDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ovl_Boss_GanonTex_01DE88, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(ovl_Boss_GanonTex_01E688, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, 15),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, ENV_ALPHA, TEXEL0, TEXEL1, 1, ENVIRONMENT, TEXEL0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPDisplayList(0x08000000),
    gsSPVertex(ovl_Boss_GanonVtx_01EE88, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

static u64 ovl_Boss_GanonTex_01EF90[192] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonTex_01EF90.i8.inc.c"
};

static Vtx ovl_Boss_GanonVtx_01F590[118] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonVtx_01F590.vtx.inc"
};

Gfx gDorfLightStreak1DL[] = {
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(ovl_Boss_GanonVtx_01F590, 4, 0),
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&ovl_Boss_GanonVtx_01F590[4], 6, 4),
    gsSP2Triangles(1, 4, 5, 0, 1, 6, 0, 0),
    gsSP2Triangles(2, 7, 3, 0, 2, 8, 9, 0),
    gsSPEndDisplayList(),
};

Gfx gDorfLightStreak2DL[] = {
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&ovl_Boss_GanonVtx_01F590[10], 4, 0),
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&ovl_Boss_GanonVtx_01F590[14], 6, 4),
    gsSP2Triangles(1, 4, 0, 0, 1, 5, 6, 0),
    gsSP2Triangles(2, 7, 8, 0, 2, 9, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gDorfLightStreak3DL[] = {
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&ovl_Boss_GanonVtx_01F590[20], 4, 0),
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&ovl_Boss_GanonVtx_01F590[24], 6, 4),
    gsSP2Triangles(1, 4, 0, 0, 1, 5, 6, 0),
    gsSP2Triangles(2, 7, 8, 0, 2, 9, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gDorfLightStreak4DL[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&ovl_Boss_GanonVtx_01F590[30], 4, 0),
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&ovl_Boss_GanonVtx_01F590[34], 6, 4),
    gsSP2Triangles(1, 4, 0, 0, 1, 5, 6, 0),
    gsSP2Triangles(2, 7, 8, 0, 2, 9, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gDorfLightStreak5DL[] = {
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&ovl_Boss_GanonVtx_01F590[40], 4, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&ovl_Boss_GanonVtx_01F590[44], 6, 4),
    gsSP2Triangles(1, 4, 0, 0, 1, 5, 6, 0),
    gsSP2Triangles(2, 7, 8, 0, 2, 9, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gDorfLightStreak6DL[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&ovl_Boss_GanonVtx_01F590[50], 4, 0),
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&ovl_Boss_GanonVtx_01F590[54], 6, 4),
    gsSP2Triangles(1, 4, 0, 0, 1, 5, 6, 0),
    gsSP2Triangles(2, 7, 8, 0, 2, 9, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gDorfLightStreak7DL[] = {
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&ovl_Boss_GanonVtx_01F590[60], 4, 0),
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&ovl_Boss_GanonVtx_01F590[64], 6, 4),
    gsSP2Triangles(0, 4, 1, 0, 0, 5, 6, 0),
    gsSP2Triangles(3, 7, 8, 0, 3, 9, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gDorfLightStreak8DL[] = {
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&ovl_Boss_GanonVtx_01F590[70], 4, 0),
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&ovl_Boss_GanonVtx_01F590[74], 6, 4),
    gsSP2Triangles(1, 4, 5, 0, 1, 6, 0, 0),
    gsSP2Triangles(2, 7, 3, 0, 2, 8, 9, 0),
    gsSPEndDisplayList(),
};

Gfx gDorfLightStreak9DL[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&ovl_Boss_GanonVtx_01F590[80], 4, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&ovl_Boss_GanonVtx_01F590[84], 6, 4),
    gsSP2Triangles(0, 4, 1, 0, 0, 5, 6, 0),
    gsSP2Triangles(3, 7, 8, 0, 3, 9, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gDorfLightStreak10DL[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&ovl_Boss_GanonVtx_01F590[90], 4, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&ovl_Boss_GanonVtx_01F590[94], 6, 4),
    gsSP2Triangles(0, 4, 5, 0, 0, 6, 1, 0),
    gsSP2Triangles(3, 7, 2, 0, 3, 8, 9, 0),
    gsSPEndDisplayList(),
};

Gfx gDorfLightStreak11DL[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&ovl_Boss_GanonVtx_01F590[100], 4, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&ovl_Boss_GanonVtx_01F590[104], 6, 4),
    gsSP2Triangles(0, 4, 5, 0, 0, 6, 1, 0),
    gsSP2Triangles(2, 7, 3, 0, 2, 8, 9, 0),
    gsSPEndDisplayList(),
};

Gfx gDorfLightStreak12DL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                       COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(ovl_Boss_GanonTex_01EF90, G_IM_FMT_I, G_IM_SIZ_8b, 96, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 7, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x017C, 0x003C),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&ovl_Boss_GanonVtx_01F590[110], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

static u64 ovl_Boss_GanonTex_01FFF8[64] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonTex_01FFF8.i4.inc.c"
};

static Vtx ovl_Boss_GanonVtx_0201F8[3] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonVtx_0201F8.vtx.inc"
};

Gfx gDorfLightCoreDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(ovl_Boss_GanonTex_01FFF8, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIA_PRIM, G_CC_PASS2),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_OVL_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(ovl_Boss_GanonVtx_0201F8, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

static Vtx ovl_Boss_GanonVtx_0202B0[4] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonVtx_0202B0.vtx.inc"
};

Gfx gDorfShockDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ovl_Boss_GanonTex_020370, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                       COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_OVL_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(ovl_Boss_GanonVtx_0202B0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

static u64 ovl_Boss_GanonTex_020370[128] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonTex_020370.i8.inc.c"
};

static u64 ovl_Boss_GanonTex_020770[256] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonTex_020770.i8.inc.c"
};

static Vtx ovl_Boss_GanonVtx_020F70[22] = {
#include "assets/overlays/ovl_Boss_Ganon/ovl_Boss_GanonVtx_020F70.vtx.inc"
};

Gfx gDorfVortexDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ovl_Boss_GanonTex_020770, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, 15, G_TX_NOLOD),
    gsDPLoadMultiBlock(gEffUnknown12Tex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, ENV_ALPHA, TEXEL0, TEXEL1, 1, ENVIRONMENT, TEXEL0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(ovl_Boss_GanonVtx_020F70, 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 0, 0, 5, 1, 0, 0),
    gsSP2Triangles(6, 7, 4, 0, 7, 5, 4, 0),
    gsSP2Triangles(8, 9, 6, 0, 9, 7, 6, 0),
    gsSP2Triangles(10, 11, 8, 0, 11, 9, 8, 0),
    gsSP2Triangles(12, 13, 10, 0, 13, 11, 10, 0),
    gsSP2Triangles(14, 15, 12, 0, 15, 13, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 15, 14, 0),
    gsSP2Triangles(20, 21, 16, 0, 21, 17, 16, 0),
    gsSP2Triangles(2, 3, 20, 0, 3, 21, 20, 0),
    gsSPEndDisplayList(),
};

