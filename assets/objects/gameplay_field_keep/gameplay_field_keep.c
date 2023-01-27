#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "gameplay_field_keep.h"

Gfx gHanaFlower1DL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHanaFlowerTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(gameplay_field_keepVtx_000548, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gHanaFlower2DL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHanaFlowerTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(&gameplay_field_keepVtx_000548[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gHanaFlower3DL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHanaFlowerTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(&gameplay_field_keepVtx_000548[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gHanaLeaf1DL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHanaLeafTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(&gameplay_field_keepVtx_000548[12], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gHanaLeaf2DL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHanaLeafTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(&gameplay_field_keepVtx_000548[16], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gHanaLeaf3DL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHanaLeafTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(&gameplay_field_keepVtx_000548[20], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gHanaLeaf4DL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHanaLeafTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(&gameplay_field_keepVtx_000548[24], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gHanaLeaf5DL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gHanaLeafTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(&gameplay_field_keepVtx_000548[28], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gHanaDL[] = {
    gsSPDisplayList(gHanaLeaf5DL),
    gsSPDisplayList(gHanaLeaf4DL),
    gsSPDisplayList(gHanaLeaf3DL),
    gsSPDisplayList(gHanaLeaf2DL),
    gsSPDisplayList(gHanaLeaf1DL),
    gsSPDisplayList(gHanaFlower3DL),
    gsSPDisplayList(gHanaFlower2DL),
    gsSPDisplayList(gHanaFlower1DL),
    gsSPEndDisplayList(),
};

Vtx gameplay_field_keepVtx_000548[] = {
#include "assets/objects/gameplay_field_keep/gameplay_field_keepVtx_000548.vtx.inc"
};

u8 gameplay_field_keep_possiblePadding_000748[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gHanaFlowerTex[] = {
#include "assets/objects/gameplay_field_keep/hana_flower.rgba16.inc.c"
};

u64 gHanaLeafTex[] = {
#include "assets/objects/gameplay_field_keep/hana_leaf.rgba16.inc.c"
};

Vtx gameplay_field_keepVtx_001350[] = {
#include "assets/objects/gameplay_field_keep/gameplay_field_keepVtx_001350.vtx.inc"
};

Gfx gGrottoDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gGrottoTex, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_DECAL2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_field_keepVtx_001350, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u64 gGrottoTex[] = {
#include "assets/objects/gameplay_field_keep/grotto_tex.ia16.inc.c"
};

s16 sButterflyAnimFrameData[] = {
    0x0000, 0x4000, 0xC000, 0x8000, 0x5C72, 0x61FA, 0x6C3F, 0x71C7, 0x6C3F, 0x61FA, 0x5C72, 0x61FA, 0x6C3F, 0x71C7, 
    0x6C3F, 0x61FA, 
};

JointIndex sButterflyAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0004 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0002, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x000A },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gButterflyAnim = { 
    { 6 }, sButterflyAnimFrameData,
    sButterflyAnimJointIndices, 4
};

Gfx gButterflyDL_002480[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gButterflyWingTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(gameplay_field_keepVtx_002540, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gButterflyDL_002520[] = {
    gsSPDisplayList(gButterflyDL_002480),
    gsSPEndDisplayList(),
};

Gfx gButterflySkelLimbsLimb_0036A4DL_002530[] = {
    gsSPDisplayList(gButterflyDL_002520),
    gsSPEndDisplayList(),
};

Vtx gameplay_field_keepVtx_002540[] = {
#include "assets/objects/gameplay_field_keep/gameplay_field_keepVtx_002540.vtx.inc"
};

Gfx gButterflyDL_002580[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gButterflyWingTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(gameplay_field_keepVtx_002640, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gButterflyDL_002620[] = {
    gsSPDisplayList(gButterflyDL_002580),
    gsSPEndDisplayList(),
};

Gfx gButterflySkelLimbsLimb_0036C8DL_002630[] = {
    gsSPDisplayList(gButterflyDL_002620),
    gsSPEndDisplayList(),
};

Vtx gameplay_field_keepVtx_002640[] = {
#include "assets/objects/gameplay_field_keep/gameplay_field_keepVtx_002640.vtx.inc"
};

u64 gButterflyWingTex[] = {
#include "assets/objects/gameplay_field_keep/butterfly_wing.rgba16.inc.c"
};

StandardLimb gButterflySkelLimbsLimb_003680 = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gButterflySkelLimbsLimb_00368C = { 
    { 0, 0, 0 }, 0x02, 0x04,
    NULL
};

StandardLimb gButterflySkelLimbsLimb_003698 = { 
    { 0, 0, 0 }, 0x03, LIMB_DONE,
    NULL
};

StandardLimb gButterflySkelLimbsLimb_0036A4 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gButterflySkelLimbsLimb_0036A4DL_002530
};

StandardLimb gButterflySkelLimbsLimb_0036B0 = { 
    { 0, 0, 0 }, 0x05, LIMB_DONE,
    NULL
};

StandardLimb gButterflySkelLimbsLimb_0036BC = { 
    { 0, 0, 0 }, 0x06, LIMB_DONE,
    NULL
};

StandardLimb gButterflySkelLimbsLimb_0036C8 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gButterflySkelLimbsLimb_0036C8DL_002630
};

void* gButterflySkelLimbs[] = {
    &gButterflySkelLimbsLimb_003680,
    &gButterflySkelLimbsLimb_00368C,
    &gButterflySkelLimbsLimb_003698,
    &gButterflySkelLimbsLimb_0036A4,
    &gButterflySkelLimbsLimb_0036B0,
    &gButterflySkelLimbsLimb_0036BC,
    &gButterflySkelLimbsLimb_0036C8,
};

SkeletonHeader gButterflySkel = { 
    gButterflySkelLimbs, ARRAY_COUNT(gButterflySkelLimbs)
};

u8 gameplay_field_keep_possiblePadding_0036F8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gBgBombwallTLUT[] = {
#include "assets/objects/gameplay_field_keep/bombwall_tlut.rgba16.inc.c"
};

u64 gBgBombwallNormalTex[] = {
#include "assets/objects/gameplay_field_keep/bombwall_normal.ci4.inc.c"
};

u64 gBgBombWallBrokenTex[] = {
#include "assets/objects/gameplay_field_keep/bombwall_broken.ci4.inc.c"
};

Vtx gameplay_field_keepVtx_003F20[] = {
#include "assets/objects/gameplay_field_keep/gameplay_field_keepVtx_003F20.vtx.inc"
};

Gfx gBgBombwallNormalDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gBgBombwallNormalTex, G_IM_FMT_CI, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gBgBombwallTLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 205, 190, 183, 255),
    gsSPVertex(gameplay_field_keepVtx_003F20, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP1Triangle(4, 3, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gBgBombwallBrokenDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gBgBombWallBrokenTex, G_IM_FMT_CI, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gBgBombwallTLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 205, 190, 183, 255),
    gsSPVertex(&gameplay_field_keepVtx_003F20[5], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP1Triangle(4, 3, 2, 0),
    gsSPEndDisplayList(),
};

CamData gBgBombwallColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gBgBombwallColSurfaceType[] = {
    { 0x00000000, 0x000007CB },
};

CollisionPoly gBgBombwallColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0xCD94, 0x0000, 0x75A6, 0xFEEC},
    {0x0000, 0x0003, 0x0000, 0x0002, 0x0000, 0x150B, 0x7E41, 0xFEDF},
    {0x0000, 0x0004, 0x0003, 0x0002, 0x326C, 0x0000, 0x75A6, 0xFEEC},
};

Vec3s gBgBombwallColVertices[] = {
    {   -700,   1760,      0 },
    {   -700,    -40,      0 },
    {      0,    -40,    300 },
    {    700,   1760,      0 },
    {    700,    -40,      0 },
};

CollisionHeader gBgBombwallCol = { 
    { -700, -40, 0 },
    { 700, 1760, 300 },
    5, gBgBombwallColVertices,
    3, gBgBombwallColPolygons,
    gBgBombwallColSurfaceType,
    gBgBombwallColCamDataList,
    0, NULL
};

Vtx gameplay_field_keepVtx_0041E0[] = {
#include "assets/objects/gameplay_field_keep/gameplay_field_keepVtx_0041E0.vtx.inc"
};

Gfx gFieldDoorDL_004720[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gFieldDoor1Tex, G_IM_FMT_I, 64, 128, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP,
                            6, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetPrimColor(0, 0, 235, 200, 145, 255),
    gsSPVertex(&gameplay_field_keepVtx_0041E0[68], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSPEndDisplayList(),
};

Gfx gFieldDoor1DL[] = {
    gsDPLoadTextureBlock_4b(gFieldDoor1Tex, G_IM_FMT_I, 64, 128, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP,
                            6, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 235, 200, 145, 255),
    gsSPVertex(gameplay_field_keepVtx_0041E0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gFieldDoorKnobTopHalfTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetPrimColor(0, 0, 140, 140, 140, 255),
    gsSPVertex(&gameplay_field_keepVtx_0041E0[4], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&gameplay_field_keepVtx_0041E0[12], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gFieldDoorKnobTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gameplay_field_keepVtx_0041E0[16], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gFieldDoorKnobTopHalfTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 102, 102, 102, 255),
    gsSPVertex(&gameplay_field_keepVtx_0041E0[22], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 204, 204, 204, 255),
    gsSPVertex(&gameplay_field_keepVtx_0041E0[26], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPDisplayList(gFieldDoorDL_004720),
    gsSPEndDisplayList(),
};

Gfx gFieldDoor2DL[] = {
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPLoadTextureBlock_4b(gFieldDoor1Tex, G_IM_FMT_I, 64, 128, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP,
                            6, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetPrimColor(0, 0, 235, 200, 145, 255),
    gsSPVertex(&gameplay_field_keepVtx_0041E0[34], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gFieldDoorKnobTopHalfTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetPrimColor(0, 0, 140, 140, 140, 255),
    gsSPVertex(&gameplay_field_keepVtx_0041E0[38], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&gameplay_field_keepVtx_0041E0[46], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gFieldDoorKnobTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gameplay_field_keepVtx_0041E0[50], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gFieldDoorKnobTopHalfTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 102, 102, 102, 255),
    gsSPVertex(&gameplay_field_keepVtx_0041E0[56], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 204, 204, 204, 255),
    gsSPVertex(&gameplay_field_keepVtx_0041E0[60], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPDisplayList(gFieldDoorDL_004720),
    gsSPEndDisplayList(),
};

u8 gameplay_field_keep_possiblePadding_004B48[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gFieldDoorKnobTopHalfTex[] = {
#include "assets/objects/gameplay_field_keep/field_door_knob_upper.rgba16.inc.c"
};

u64 gFieldDoorKnobTex[] = {
#include "assets/objects/gameplay_field_keep/field_door_knob.rgba16.inc.c"
};

u64 gFieldDoor1Tex[] = {
#include "assets/objects/gameplay_field_keep/field_door1.i8.inc.c"
};

s16 sFieldUnusedFishAnimFrameData[] = {
    0x0000, 0x4000, 0xFFC0, 0xFF2D, 0xFE8D, 0xFDEE, 0xFD5B, 0xFCE2, 0xFC90, 0xFC72, 0xFC90, 0xFCE2, 0xFD5B, 0xFDEE, 
    0xFE8D, 0xFF2D, 0xFFC0, 0x0040, 0x00D3, 0x0173, 0x0212, 0x02A5, 0x031E, 0x0370, 0x038E, 0x0370, 0x031E, 0x02A5, 
    0x0212, 0x0173, 0x00D3, 0x0040, 0xFDBC, 0xFEF1, 0x0000, 0x010F, 0x0244, 0x0387, 0x04BD, 0x05CB, 0x0699, 0x070D, 
    0x070D, 0x0699, 0x05CB, 0x04BD, 0x0387, 0x0244, 0x010F, 0x0000, 0xFEF1, 0xFDBC, 0xFC79, 0xFB43, 0xFA35, 0xF967, 
    0xF8F3, 0xF8F3, 0xF967, 0xFA35, 0xFB43, 0xFC79, 
};

JointIndex sFieldUnusedFishAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0020, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gFieldUnusedFishAnim = { 
    { 30 }, sFieldUnusedFishAnimFrameData,
    sFieldUnusedFishAnimJointIndices, 2
};

Gfx gFieldUnusedFishDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gFieldUnusedFishTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(gameplay_field_keepVtx_006208, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(2, 1, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 8, 5, 0, 6, 5, 9, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gFieldUnusedFishBottomTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gameplay_field_keepVtx_006208[10], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 8, 5, 0, 6, 5, 9, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gFieldUnusedFishTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&gameplay_field_keepVtx_006208[20], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gFieldUnusedFishBottomTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gameplay_field_keepVtx_006208[23], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gFieldSkelUnusedFishDL_0061E8[] = {
    gsSPDisplayList(gFieldUnusedFishDL),
    gsSPEndDisplayList(),
};

Gfx gFieldUnusedFishSkelLimbsLimb_0088D8DL_0061F8[] = {
    gsSPDisplayList(gFieldSkelUnusedFishDL_0061E8),
    gsSPEndDisplayList(),
};

Vtx gameplay_field_keepVtx_006208[] = {
#include "assets/objects/gameplay_field_keep/gameplay_field_keepVtx_006208.vtx.inc"
};

Gfx gFieldSkelUnusedFishDL_0063A8[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gFieldUnusedFishFinTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(gameplay_field_keepVtx_006468, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gFieldSkelUnusedFishDL_006448[] = {
    gsSPDisplayList(gFieldSkelUnusedFishDL_0063A8),
    gsSPEndDisplayList(),
};

Gfx gFieldUnusedFishSkelLimbsLimb_0088CCDL_006458[] = {
    gsSPDisplayList(gFieldSkelUnusedFishDL_006448),
    gsSPEndDisplayList(),
};

Vtx gameplay_field_keepVtx_006468[] = {
#include "assets/objects/gameplay_field_keep/gameplay_field_keepVtx_006468.vtx.inc"
};

u64 gFieldUnusedFishTex[] = {
#include "assets/objects/gameplay_field_keep/unused_fish.rgba16.inc.c"
};

u64 gFieldUnusedFishBottomTex[] = {
#include "assets/objects/gameplay_field_keep/unused_fish_bottom.rgba16.inc.c"
};

u64 gFieldUnusedFishFinTex[] = {
#include "assets/objects/gameplay_field_keep/unused_fish_fin.rgba16.inc.c"
};

StandardLimb gFieldUnusedFishSkelLimbsLimb_0088A8 = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gFieldUnusedFishSkelLimbsLimb_0088B4 = { 
    { 0, 0, 0 }, 0x02, LIMB_DONE,
    NULL
};

StandardLimb gFieldUnusedFishSkelLimbsLimb_0088C0 = { 
    { 700, 0, 0 }, 0x03, 0x04,
    NULL
};

StandardLimb gFieldUnusedFishSkelLimbsLimb_0088CC = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gFieldUnusedFishSkelLimbsLimb_0088CCDL_006458
};

StandardLimb gFieldUnusedFishSkelLimbsLimb_0088D8 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gFieldUnusedFishSkelLimbsLimb_0088D8DL_0061F8
};

void* gFieldUnusedFishSkelLimbs[] = {
    &gFieldUnusedFishSkelLimbsLimb_0088A8,
    &gFieldUnusedFishSkelLimbsLimb_0088B4,
    &gFieldUnusedFishSkelLimbsLimb_0088C0,
    &gFieldUnusedFishSkelLimbsLimb_0088CC,
    &gFieldUnusedFishSkelLimbsLimb_0088D8,
};

SkeletonHeader gFieldUnusedFishSkel = { 
    gFieldUnusedFishSkelLimbs, ARRAY_COUNT(gFieldUnusedFishSkelLimbs)
};

u64 gFieldBeehiveTex[] = {
#include "assets/objects/gameplay_field_keep/beehive.rgba16.inc.c"
};

Vtx gameplay_field_keepVtx_009100[] = {
#include "assets/objects/gameplay_field_keep/gameplay_field_keepVtx_009100.vtx.inc"
};

Gfx gFieldBeehiveDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFieldBeehiveTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_field_keepVtx_009100, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&gameplay_field_keepVtx_009100[20], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(11, 14, 15, 0, 11, 15, 12, 0),
    gsSP2Triangles(14, 16, 17, 0, 14, 17, 15, 0),
    gsSP2Triangles(7, 18, 19, 0, 7, 19, 8, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(21, 24, 25, 0, 21, 25, 22, 0),
    gsSP2Triangles(24, 26, 27, 0, 24, 27, 25, 0),
    gsSP2Triangles(28, 6, 9, 0, 28, 9, 29, 0),
    gsSPVertex(&gameplay_field_keepVtx_009100[50], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 0, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0),
    gsSP1Triangle(23, 15, 24, 0),
    gsSPEndDisplayList(),
};

u64 gFieldBeehiveFragmentTex[] = {
#include "assets/objects/gameplay_field_keep/beehive_fragment.rgba16.inc.c"
};

Vtx gameplay_field_keepVtx_009910[] = {
#include "assets/objects/gameplay_field_keep/gameplay_field_keepVtx_009910.vtx.inc"
};

Gfx gFieldBeehiveFragmentDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFieldBeehiveFragmentTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_field_keepVtx_009910, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u64 gFieldSilverRockTLUT[] = {
#include "assets/objects/gameplay_field_keep/silver_rock_tlut.rgba16.inc.c"
};

u8 gameplay_field_keep_possiblePadding_0099F0[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gFieldSilverRockTex[] = {
#include "assets/objects/gameplay_field_keep/silver_rock.ci4.inc.c"
};

Vtx gameplay_field_keepVtx_00A1F8[] = {
#include "assets/objects/gameplay_field_keep/gameplay_field_keepVtx_00A1F8.vtx.inc"
};

Gfx gSilverRockDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gFieldSilverRockTex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gFieldSilverRockTLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPVertex(gameplay_field_keepVtx_00A1F8, 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 5, 4, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(12, 14, 15, 0, 15, 6, 16, 0),
    gsSP2Triangles(15, 13, 17, 0, 18, 10, 19, 0),
    gsSP2Triangles(10, 12, 19, 0, 12, 15, 19, 0),
    gsSP2Triangles(19, 15, 20, 0, 3, 20, 15, 0),
    gsSP2Triangles(5, 21, 3, 0, 21, 20, 3, 0),
    gsSP2Triangles(10, 18, 8, 0, 22, 23, 24, 0),
    gsSP2Triangles(23, 25, 24, 0, 25, 26, 24, 0),
    gsSP2Triangles(26, 27, 24, 0, 27, 22, 24, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_field_keepVtx_00A4C8[] = {
#include "assets/objects/gameplay_field_keep/gameplay_field_keepVtx_00A4C8.vtx.inc"
};

Gfx gSilverRockFragmentsDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gFieldSilverRockTex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gFieldSilverRockTLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPVertex(gameplay_field_keepVtx_00A4C8, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(10, 9, 14, 0, 13, 15, 16, 0),
    gsSP2Triangles(13, 12, 15, 0, 16, 17, 8, 0),
    gsSP2Triangles(16, 15, 17, 0, 8, 17, 9, 0),
    gsSPEndDisplayList(),
};

u8 gameplay_field_keep_possiblePadding_00A6C8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx gameplay_field_keepVtx_00A6D0[] = {
#include "assets/objects/gameplay_field_keep/gameplay_field_keepVtx_00A6D0.vtx.inc"
};

Gfx gFieldKakeraDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFieldKakeraTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_field_keepVtx_00A6D0, 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 0, 8, 9, 0),
    gsSP2Triangles(10, 11, 6, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 7, 6, 0, 16, 1, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 16, 0),
    gsSP2Triangles(23, 24, 16, 0, 25, 26, 13, 0),
    gsSPEndDisplayList(),
};

u8 gameplay_field_keep_possiblePadding_00A938[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gFieldKakeraTex[] = {
#include "assets/objects/gameplay_field_keep/kakera.rgba16.inc.c"
};

u64 gFieldBushTex[] = {
#include "assets/objects/gameplay_field_keep/bush.rgba16.inc.c"
};

Vtx gameplay_field_keepVtx_00B940[] = {
#include "assets/objects/gameplay_field_keep/gameplay_field_keepVtx_00B940.vtx.inc"
};

Gfx gFieldBushDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFieldBushTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_field_keepVtx_00B940, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsSPEndDisplayList(),
};

u8 gameplay_field_keep_possiblePadding_00BA68[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gFieldSandstorm1Tex[] = {
#include "assets/objects/gameplay_field_keep/sandstorm_1.i8.inc.c"
};

u64 gFieldSandstorm2Tex[] = {
#include "assets/objects/gameplay_field_keep/sandstorm_2.ia8.inc.c"
};

Gfx gFieldSandstormDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetRenderMode(G_RM_PASS, G_RM_CLD_SURF2),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPLoadTextureBlock(gFieldSandstorm1Tex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 1, G_TX_NOLOD),
    gsDPLoadMultiBlock(gFieldSandstorm2Tex, 0x0100, 1, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 2, 1),
    gsSPDisplayList(0x08000000),
    gsSPTextureRectangle(0, 0, 0x0500, 0x03C0, G_TX_RENDERTILE, 0, 0, 0x008C, -0x008C),
    gsSPEndDisplayList(),
};

u64 gFieldKeepTex_00CB30[] = {
#include "assets/objects/gameplay_field_keep/gFieldKeep_00CB30.rgba16.inc.c"
};

