#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_horse_ganon.h"

Vtx object_horse_ganonVtx_000000[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonVtx_000000.vtx.inc"
};

Gfx gHorseGanonSkelLimbsLimb_008394DL_0001C0[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_horse_ganonTex_00A570, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_horse_ganonVtx_000000, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP1Triangle(4, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gHorseGanonLegTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_horse_ganonVtx_000000[5], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 9, 6, 0),
    gsSP2Triangles(10, 11, 3, 0, 12, 13, 2, 0),
    gsSP2Triangles(14, 15, 16, 0, 16, 17, 14, 0),
    gsSP1Triangle(6, 18, 7, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 51, 51, 51, 255),
    gsSPVertex(&object_horse_ganonVtx_000000[24], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx object_horse_ganonVtx_0002F0[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonVtx_0002F0.vtx.inc"
};

Gfx gHorseGanonSkelLimbsLimb_0083A4DL_000430[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gHorseGanonLegTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_horse_ganonVtx_0002F0, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 3, 0),
    gsSP1Triangle(6, 8, 19, 0),
    gsSPEndDisplayList(),
};

u8 object_horse_ganon_possiblePadding_0004D8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_horse_ganonVtx_0004E0[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonVtx_0004E0.vtx.inc"
};

Gfx gHorseGanonSkelLimbsLimb_0083B4DL_0007E0[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_horse_ganonTex_00A7F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 4, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 2, 2, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_horse_ganonVtx_0004E0, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 5, 6, 4, 0),
    gsSP2Triangles(7, 8, 9, 0, 8, 10, 9, 0),
    gsSP2Triangles(11, 12, 5, 0, 12, 6, 5, 0),
    gsSP1Triangle(9, 10, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_ganonTex_00A5F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_horse_ganonVtx_0004E0[13], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 1, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(11, 21, 9, 0, 14, 22, 12, 0),
    gsSP2Triangles(8, 2, 1, 0, 23, 24, 19, 0),
    gsSP2Triangles(24, 20, 19, 0, 25, 26, 27, 0),
    gsSP2Triangles(26, 28, 27, 0, 29, 30, 31, 0),
    gsSPVertex(&object_horse_ganonVtx_0004E0[45], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx object_horse_ganonVtx_000920[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonVtx_000920.vtx.inc"
};

Gfx gHorseGanonSkelLimbsLimb_008434DL_000AE0[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_horse_ganonTex_00A570, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_horse_ganonVtx_000920, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gHorseGanonLegTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_horse_ganonVtx_000920[5], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 9, 6, 0),
    gsSP2Triangles(5, 10, 11, 0, 0, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 16, 17, 14, 0),
    gsSP1Triangle(7, 18, 8, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 51, 51, 51, 255),
    gsSPVertex(&object_horse_ganonVtx_000920[24], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSPEndDisplayList(),
};

Vtx object_horse_ganonVtx_000C10[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonVtx_000C10.vtx.inc"
};

Gfx gHorseGanonSkelLimbsLimb_008444DL_000D50[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gHorseGanonLegTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_horse_ganonVtx_000C10, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 9, 11, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 13, 15, 0, 5, 17, 18, 0),
    gsSP1Triangle(19, 6, 8, 0),
    gsSPEndDisplayList(),
};

u8 object_horse_ganon_possiblePadding_000DF8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_horse_ganonVtx_000E00[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonVtx_000E00.vtx.inc"
};

Gfx gHorseGanonSkelLimbsLimb_008454DL_001100[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_horse_ganonTex_00A7F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 4, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 2, 2, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_horse_ganonVtx_000E00, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 2, 0, 4, 5, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 10, 8, 0),
    gsSP2Triangles(6, 11, 12, 0, 6, 5, 11, 0),
    gsSP1Triangle(4, 10, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_ganonTex_00A5F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_horse_ganonVtx_000E00[13], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 1, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(11, 21, 9, 0, 14, 22, 12, 0),
    gsSP2Triangles(1, 0, 7, 0, 19, 23, 24, 0),
    gsSP2Triangles(19, 18, 23, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 28, 26, 0, 29, 30, 31, 0),
    gsSPVertex(&object_horse_ganonVtx_000E00[45], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx object_horse_ganonVtx_001240[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonVtx_001240.vtx.inc"
};

Gfx gHorseGanonSkelLimbsLimb_0083C4DL_0013D0[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_horse_ganonTex_00A810, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_horse_ganonVtx_001240, 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 4, 2, 0),
    gsSP2Triangles(6, 5, 2, 0, 6, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_ganonTex_00A5F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_horse_ganonVtx_001240[7], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSPEndDisplayList(),
};

u8 object_horse_ganon_possiblePadding_0014C8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_horse_ganonVtx_0014D0[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonVtx_0014D0.vtx.inc"
};

Gfx gHorseGanonSkelLimbsLimb_0084F4DL_001630[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_horse_ganonTex_00A570, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_horse_ganonVtx_0014D0, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP1Triangle(4, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gHorseGanonLegTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_horse_ganonVtx_0014D0[5], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(6, 10, 4, 0, 3, 1, 11, 0),
    gsSP2Triangles(3, 11, 12, 0, 13, 0, 2, 0),
    gsSP2Triangles(12, 14, 3, 0, 15, 16, 7, 0),
    gsSP1Triangle(7, 9, 15, 0),
    gsSPEndDisplayList(),
};

u8 object_horse_ganon_possiblePadding_001738[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_horse_ganonVtx_001740[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonVtx_001740.vtx.inc"
};

Gfx gHorseGanonSkelLimbsLimb_008504DL_001880[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gHorseGanonLegTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_horse_ganonVtx_001740, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(0, 10, 1, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 17, 15, 0),
    gsSP1Triangle(4, 18, 19, 0),
    gsSPEndDisplayList(),
};

u8 object_horse_ganon_possiblePadding_001928[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_horse_ganonVtx_001930[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonVtx_001930.vtx.inc"
};

Gfx gHorseGanonSkelLimbsLimb_008574DL_001A90[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_horse_ganonTex_00A570, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_horse_ganonVtx_001930, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gHorseGanonLegTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_horse_ganonVtx_001930[5], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(6, 10, 4, 0, 11, 1, 3, 0),
    gsSP2Triangles(12, 11, 3, 0, 0, 2, 13, 0),
    gsSP2Triangles(3, 14, 12, 0, 9, 15, 16, 0),
    gsSP1Triangle(16, 7, 9, 0),
    gsSPEndDisplayList(),
};

u8 object_horse_ganon_possiblePadding_001B98[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_horse_ganonVtx_001BA0[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonVtx_001BA0.vtx.inc"
};

Gfx gHorseGanonSkelLimbsLimb_008584DL_001CE0[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gHorseGanonLegTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_horse_ganonVtx_001BA0, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(1, 10, 2, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 16, 0),
    gsSP1Triangle(18, 19, 4, 0),
    gsSPEndDisplayList(),
};

u8 object_horse_ganon_possiblePadding_001D88[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_horse_ganonVtx_001D90[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonVtx_001D90.vtx.inc"
};

Gfx gHorseGanonSkelLimbsLimb_008464DL_001F20[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_horse_ganonTex_00A810, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_horse_ganonVtx_001D90, 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 1, 0, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_ganonTex_00A5F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_horse_ganonVtx_001D90[7], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSPEndDisplayList(),
};

u8 object_horse_ganon_possiblePadding_002018[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sHorseGanonGallopingAnimFrameData[] = {
    0x0000, 0xF853, 0x4000, 0x8507, 0x8C17, 0x01A1, 0x01C6, 0x0225, 0x02A6, 0x0334, 0x03B6, 0x0416, 0x042A, 0x03EE, 
    0x038B, 0x0317, 0x029F, 0x022C, 0x01C9, 0x0177, 0x0132, 0x00FD, 0x00D9, 0x00CB, 0x00D8, 0x00FD, 0x012F, 0x0163, 
    0x018C, 0x155E, 0x156A, 0x1593, 0x15E0, 0x166B, 0x1717, 0x1792, 0x17A8, 0x1785, 0x1747, 0x16F8, 0x16B5, 0x168C, 
    0x1670, 0x165A, 0x1650, 0x164C, 0x1633, 0x15A8, 0x1579, 0x1558, 0x15AA, 0x15F1, 0x15B0, 0xEAE8, 0xEA95, 0xEA43, 
    0xEAE8, 0xED21, 0xF03B, 0xF337, 0xF518, 0xF59F, 0xF553, 0xF45B, 0xF2DE, 0xEEF6, 0xEAE8, 0xE9E6, 0xEAE8, 0xEE3B, 
    0xF276, 0xF518, 0xF5C3, 0xF5D1, 0xF550, 0xF44F, 0xF2DE, 0x0948, 0x06A1, 0x004B, 0xF8B8, 0xF258, 0xEF9D, 0xF19A, 
    0xF6B0, 0xFD3F, 0x03A8, 0x084B, 0x0AC2, 0x0B4E, 0x0948, 0x034F, 0xFABD, 0xF306, 0xEF9D, 0xF189, 0xF680, 0xFCF9, 
    0x036B, 0x084B, 0x09C5, 0xF153, 0xF101, 0xF02C, 0xEF08, 0xEDC9, 0xECA2, 0xEBC7, 0xEB53, 0xEB24, 0xEB0F, 0xEAED, 
    0xEAA2, 0xEA3C, 0xE9CB, 0xE95F, 0xE909, 0xE8D8, 0xE8DD, 0xE929, 0xEA0D, 0xEB97, 0xED6F, 0xEF3C, 0xF0A4, 0xEBF8, 
    0xECEE, 0xEF78, 0xF30F, 0xF72C, 0xFB49, 0xFEE0, 0x016A, 0x0260, 0x0221, 0x016F, 0x0059, 0xFEF1, 0xFD46, 0xFB68, 
    0xF969, 0xF758, 0xF546, 0xF343, 0xF15F, 0xEFAA, 0xEE36, 0xED11, 0xEC4D, 0xF983, 0xF948, 0xF8AF, 0xF7D6, 0xF6DD, 
    0xF5E4, 0xF50B, 0xF471, 0xF437, 0xF446, 0xF470, 0xF4B2, 0xF507, 0xF56C, 0xF5DC, 0xF655, 0xF6D2, 0xF750, 0xF7C9, 
    0xF83C, 0xF8A3, 0xF8FB, 0xF940, 0xF96F, 0x41A3, 0x409B, 0x3DDF, 0x39FF, 0x3586, 0x3104, 0x2D05, 0x2A18, 0x28C9, 
    0x28EE, 0x29E3, 0x2B80, 0x2D9E, 0x3012, 0x32B6, 0x3561, 0x37EC, 0x3A2D, 0x3BFC, 0x3D77, 0x3ECA, 0x3FEA, 0x40CB, 
    0x4162, 0xA052, 0x9BA3, 0x968B, 0x98A1, 0x9D10, 0xA10F, 0xA606, 0xAE2C, 0xB449, 0xB256, 0xACF4, 0xA729, 0xA0B8, 
    0x9A9E, 0x968B, 0x9910, 0x9BD7, 0x9B47, 0x9A36, 0x9AA7, 0x9B77, 0x9C04, 0x9C94, 0x9D78, 0xF592, 0xFF9E, 0x0D70, 
    0x114E, 0x13B8, 0x1A39, 0x1FF1, 0x2012, 0x1FF1, 0x2544, 0x2A21, 0x2AD2, 0x29FA, 0x2817, 0x212A, 0x0F96, 0xFF59, 
    0xF8A5, 0xF592, 0xF292, 0xF0C8, 0xEFA4, 0xEF05, 0xEF75, 0x0F33, 0x08F5, 0x00F0, 0x0046, 0x00F0, 0xFEE0, 0xFD45, 
    0xFEA5, 0x00F0, 0x00B4, 0x049B, 0x11DF, 0x22D0, 0x3376, 0x4150, 0x43BD, 0x43C2, 0x449E, 0x43C2, 0x3EBE, 0x3873, 
    0x3438, 0x301D, 0x28DE, 0x1B48, 0x1A94, 0x184B, 0x1462, 0x0EA7, 0x05AC, 0xFD22, 0xF65C, 0xF705, 0x0C25, 0x20FD, 
    0x2466, 0x2238, 0x20FD, 0x26B1, 0x2DF1, 0x3423, 0x36A4, 0x37CE, 0x398B, 0x3A7C, 0x3B74, 0x3BD4, 0x37CE, 0x9348, 
    0x91DB, 0x9006, 0x8F1B, 0x9006, 0x94E3, 0x9B6F, 0xA30C, 0xA8E1, 0xA7CA, 0xA606, 0xA7DB, 0xAAE7, 0xAF65, 0xBB36, 
    0xB328, 0xA8E1, 0xA40A, 0xA0BA, 0x9D7F, 0x9A9E, 0x97A1, 0x94BB, 0x9278, 0x03D4, 0x01AA, 0xFFC1, 0x02AF, 0x05DE, 
    0x053B, 0x03D4, 0x0295, 0x03D4, 0x0C97, 0x15C2, 0x1A26, 0x1CE9, 0x1E50, 0x1904, 0x2037, 0x2676, 0x22AB, 0x1C46, 
    0x188D, 0x14F1, 0x1085, 0x0BE2, 0x077F, 0x3517, 0x2E6B, 0x22C1, 0x1793, 0x0D29, 0x05E1, 0x00F0, 0xFEF3, 0xFE16, 
    0xFC61, 0xFAD3, 0xF99C, 0xF894, 0xF7F9, 0xF99A, 0x0B35, 0x1E46, 0x2C88, 0x3859, 0x42E4, 0x4976, 0x4B13, 0x4A28, 
    0x469C, 0x23D7, 0x266A, 0x2BB0, 0x2FFE, 0x2FA8, 0x27DB, 0x1B2B, 0x0E01, 0x04C5, 0x02C6, 0x0526, 0x0713, 0x0772, 
    0x0535, 0xF821, 0xF282, 0x072E, 0x245A, 0x3618, 0x3896, 0x367E, 0x3198, 0x2BAC, 0x2684, 0xA65D, 0xAA36, 0xB024, 
    0xB4BA, 0xB712, 0xB387, 0xAEEC, 0xAE21, 0xAD4A, 0xA994, 0xA4BC, 0x9FA6, 0x9A53, 0x9540, 0x9196, 0x8F93, 0x8DEB, 
    0x8B93, 0x8AA9, 0x8D4B, 0x9266, 0x99E3, 0xA25A, 0xA8FE, 0x40C1, 0x40F6, 0x412A, 0x40A1, 0x40C1, 0x43C3, 0x4676, 
    0x453D, 0x439C, 0x44ED, 0x460D, 0x451C, 0x4369, 0x412A, 0x3C46, 0x371F, 0x3216, 0x2C3B, 0x2920, 0x2E9C, 0x34F1, 
    0x356D, 0x3459, 0x3520, 0xD786, 0xDAA1, 0xE19B, 0xE8F1, 0xED1E, 0xE82D, 0xE014, 0xDCE5, 0xD98F, 0xD226, 0xCB4C, 
    0xC7E1, 0xC5D2, 0xC530, 0xCBB5, 0xD083, 0xD5E4, 0xDF57, 0xE699, 0xE3A8, 0xDF43, 0xE096, 0xE348, 0xE3BF, 0x03AB, 
    0x09EE, 0x1530, 0x2121, 0x2B99, 0x2F8B, 0x314D, 0x341A, 0x3630, 0x367F, 0x3630, 0x36C7, 0x375E, 0x3630, 0x2B99, 
    0x263B, 0x230A, 0x236C, 0x2372, 0x1EBA, 0x180A, 0x1074, 0x086E, 0x020A, 0x9BC5, 0x9DC2, 0xA17A, 0xA54B, 0xA9A0, 
    0xAF06, 0xB367, 0xB465, 0xB367, 0xB074, 0xAD4A, 0xAC20, 0xAB74, 0xA9A0, 0xA17A, 0x9C8D, 0x9953, 0x98F2, 0x9953, 
    0x984D, 0x974A, 0x96BA, 0x9666, 0x96E2, 0x31B5, 0x315A, 0x321D, 0x36D3, 0x3AAC, 0x36D3, 0x3427, 0x3CCF, 0x4614, 
    0x4672, 0x4473, 0x43F7, 0x438D, 0x42D2, 0x4060, 0x3E93, 0x3BE5, 0x369F, 0x3014, 0x2856, 0x2169, 0x1D77, 0x1C1D, 
    0x21FB, 0xD397, 0xD1A7, 0xD125, 0xD6E6, 0xDEFF, 0xE9D2, 0xEF4C, 0xE1CC, 0xD25E, 0xD24D, 0xD32F, 0xCBCD, 0xC1F4, 
    0xB8B3, 0xB367, 0xB4C7, 0xB77A, 0xB95C, 0xBC5E, 0xC285, 0xC967, 0xCFD6, 0xD603, 0xDA1C, 0xFC55, 0xFC48, 0xFC57, 
    0xFCD5, 0xFD37, 0xFCC0, 0xFC57, 0xFCF6, 0xFDB0, 0xFDC6, 0xFDB0, 0xFDB0, 0xFDB0, 0xFDB0, 0xFDB0, 0xFDBA, 0xFDB0, 
    0xFD5F, 0xFD0E, 0xFD04, 0xFD0E, 0xFD18, 0xFD22, 0xFD0E, 0x0000, 0x000A, 0xFFC8, 0xFE8C, 0xFD9D, 0xFE5E, 0xFFC8, 
    0x0173, 0x02D9, 0x030A, 0x02D9, 0x02D9, 0x02D9, 0x02D9, 0x02D9, 0x02E4, 0x02D9, 0x0285, 0x0230, 0x0226, 0x0230, 
    0x024E, 0x026C, 0x0230, 0x1C1D, 0x1CB3, 0x19AE, 0x0AAB, 0xFF44, 0x0869, 0x19AE, 0x2EA3, 0x404B, 0x42B5, 0x404B, 
    0x404B, 0x404B, 0x404B, 0x404B, 0x40EE, 0x404B, 0x3B34, 0x361C, 0x3579, 0x361C, 0x377F, 0x38E2, 0x361C, 0x0000, 
    
};

JointIndex sHorseGanonGallopingAnimJointIndices[] = {
    { 0x0000, 0x001D, 0x0001 },
    { 0x0005, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0035 },
    { 0x0000, 0x0000, 0x004D },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x0065 },
    { 0x0000, 0x0000, 0x007D },
    { 0x0000, 0x0000, 0x0095 },
    { 0x0000, 0x0000, 0x00AD },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0004 },
    { 0x0000, 0x0000, 0x00C5 },
    { 0x0000, 0x0000, 0x00DD },
    { 0x0000, 0x0000, 0x00F5 },
    { 0x0000, 0x0000, 0x010D },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0004 },
    { 0x0000, 0x0000, 0x0125 },
    { 0x0000, 0x0000, 0x013D },
    { 0x0000, 0x0000, 0x0155 },
    { 0x0000, 0x0000, 0x016D },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0185 },
    { 0x0000, 0x0000, 0x019D },
    { 0x0000, 0x0000, 0x01B5 },
    { 0x0000, 0x0000, 0x01CD },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x01E5 },
    { 0x0000, 0x0000, 0x01FD },
    { 0x0000, 0x0000, 0x0215 },
    { 0x022D, 0x0245, 0x025D },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gHorseGanonGallopingAnim = { 
    { 24 }, sHorseGanonGallopingAnimFrameData,
    sHorseGanonGallopingAnimJointIndices, 5
};

s16 sHorseGanonTrottingAnimFrameData[] = {
    0x0000, 0xF853, 0x4000, 0x8507, 0x8C17, 0x15C2, 0x15F9, 0x1640, 0x165C, 0x1674, 0x1687, 0x1692, 0x1694, 0x165C, 
    0x162E, 0x1644, 0x1657, 0x1647, 0x162D, 0x1615, 0x160B, 0x162E, 0x1658, 0x1669, 0x1679, 0x1688, 0x1693, 0x1699, 
    0x168F, 0x1674, 0x1651, 0x162F, 0x1605, 0x15D7, 0xDCA6, 0xDD64, 0xDF50, 0xE1F0, 0xE4CD, 0xE76D, 0xE959, 0xEA18, 
    0xE984, 0xE7FE, 0xE5D6, 0xE35F, 0xE0E7, 0xDEBF, 0xDD39, 0xDCA6, 0xDD64, 0xDF50, 0xE1F0, 0xE4CD, 0xE76D, 0xE959, 
    0xEA18, 0xE959, 0xE76D, 0xE4CD, 0xE1F0, 0xDF50, 0xDD64, 0xEF5E, 0xEBFD, 0xE872, 0xE55F, 0xE362, 0xE31A, 0xE4E0, 
    0xE832, 0xEC65, 0xF0D0, 0xF4C9, 0xF7A8, 0xF8C3, 0xF7D5, 0xF560, 0xF1E8, 0xEDEE, 0xE9F4, 0xE67C, 0xE408, 0xE31A, 
    0xE44D, 0xE765, 0xEBA0, 0xF03C, 0xF478, 0xF790, 0xF8C3, 0xF790, 0xEEE2, 0xEEBB, 0xEE5A, 0xEDDD, 0xED5F, 0xECFF, 
    0xECD8, 0xED0E, 0xED90, 0xEE2A, 0xEEAB, 0xEEE2, 0xEECB, 0xEE90, 0xEE3D, 0xEDDD, 0xED7D, 0xED2A, 0xECEE, 0xECD8, 
    0xECE7, 0xED0E, 0xED49, 0xED90, 0xEDDD, 0xEE2A, 0xEE71, 0xEEAB, 0xEED3, 0xEE01, 0xEE4D, 0xEF16, 0xF032, 0xF178, 
    0xF2BD, 0xF3D9, 0xF4A2, 0xF4EE, 0xF48C, 0xF38F, 0xF234, 0xF0BB, 0xEF61, 0xEE63, 0xEE01, 0xEE4D, 0xEF16, 0xF032, 
    0xF178, 0xF2BD, 0xF3D9, 0xF4A2, 0xF4EE, 0xF46B, 0xF323, 0xF178, 0xEFCD, 0xEE84, 0xF8B2, 0xF881, 0xF7FF, 0xF747, 
    0xF674, 0xF5A2, 0xF4EA, 0xF468, 0xF437, 0xF475, 0xF517, 0xF5F5, 0xF6E8, 0xF7C8, 0xF86D, 0xF8B2, 0xF88B, 0xF817, 
    0xF770, 0xF6B0, 0xF5EE, 0xF545, 0xF4CD, 0xF49F, 0xF4EC, 0xF5AE, 0xF6A9, 0xF7A4, 0xF865, 0x3F9A, 0x3F60, 0x3EC6, 
    0x3DED, 0x3CF4, 0x3BFB, 0x3B22, 0x3A88, 0x3A4E, 0x3A99, 0x3B5B, 0x3C64, 0x3D84, 0x3E8D, 0x3F4F, 0x3F9A, 0x3F60, 
    0x3EC6, 0x3DED, 0x3CF4, 0x3BFB, 0x3B22, 0x3A88, 0x3A4E, 0x3AB2, 0x3BAD, 0x3CF4, 0x3E3A, 0x3F35, 0xABBB, 0xABCB, 
    0xABD5, 0xABA4, 0xAB00, 0xA9B1, 0xA725, 0xA381, 0x9FA1, 0x9C61, 0x9A9E, 0x9AB9, 0x9C1E, 0x9E3D, 0xA082, 0xA25C, 
    0xA421, 0xA612, 0xA77B, 0xA7A8, 0xA5F8, 0xA2F4, 0x9FA5, 0x9D10, 0x9C3F, 0x9E1E, 0xA1FD, 0xA67A, 0xAA2F, 0xE67E, 
    0xE85B, 0xED2B, 0xF3C8, 0xFB0B, 0x01CB, 0x0891, 0x1024, 0x17B5, 0x1E76, 0x239C, 0x26CB, 0x288C, 0x2967, 0x29E3, 
    0x2A89, 0x2BA7, 0x2CB5, 0x2CFC, 0x2BC2, 0x293E, 0x2607, 0x21F3, 0x1CDA, 0x1692, 0x0D23, 0x00A9, 0xF418, 0xEA63, 
    0x3A63, 0x3587, 0x2993, 0x1A78, 0x0C27, 0x0291, 0xFE88, 0xFD6C, 0xFE00, 0xFF0A, 0xFF4F, 0xFEB5, 0xFE0F, 0xFD81, 
    0xFD32, 0xFD45, 0xFD22, 0xFD00, 0xFE39, 0x0229, 0x09D0, 0x1418, 0x1F3C, 0x2977, 0x3104, 0x3596, 0x385D, 0x39C9, 
    0x3A50, 0x37CE, 0x3391, 0x2923, 0x1BEF, 0x0F63, 0x06E9, 0x035F, 0x027C, 0x02F6, 0x0382, 0x02D6, 0x0032, 0xFC73, 
    0xF8B8, 0xF621, 0xF5CC, 0xF8D4, 0xFEAC, 0x05FC, 0x0D6E, 0x156D, 0x1E89, 0x27A5, 0x2FA0, 0x355C, 0x3853, 0x3945, 
    0x38FA, 0x383A, 0x9348, 0x93F6, 0x958C, 0x975C, 0x98BC, 0x98FD, 0x9786, 0x94CB, 0x91B1, 0x8F20, 0x8DFC, 0x8E9F, 
    0x906D, 0x92E5, 0x9583, 0x97C4, 0x99AB, 0x9B8B, 0x9D5E, 0x9F19, 0xA12A, 0xA399, 0xA5C5, 0xA70F, 0xA6D7, 0xA40D, 
    0x9F1B, 0x999A, 0x9521, 0x365A, 0x3666, 0x3662, 0x360F, 0x352D, 0x3380, 0x3104, 0x2DE4, 0x2A22, 0x25C0, 0x20C2, 
    0x1A28, 0x11F0, 0x099A, 0x02A2, 0xFE88, 0xFF20, 0x0383, 0x0913, 0x0D33, 0x0F03, 0x0FEB, 0x10BC, 0x1246, 0x1559, 
    0x1B6A, 0x23EE, 0x2CB6, 0x3394, 0xF658, 0xF97E, 0x0174, 0x0BFE, 0x16E3, 0x1FE7, 0x2792, 0x2F5F, 0x3685, 0x3C39, 
    0x3FAF, 0x410B, 0x40D4, 0x3ED5, 0x3ADA, 0x34AE, 0x291C, 0x1891, 0x0856, 0xFDAD, 0xF9E2, 0xF9A1, 0xFB46, 0xFD2B, 
    0xFDAD, 0xFC72, 0xFA91, 0xF893, 0xF6FD, 0xFFFC, 0x031F, 0x0B10, 0x159B, 0x208D, 0x29B2, 0x2ED7, 0x30DD, 0x322B, 
    0x32D1, 0x32E3, 0x3271, 0x318F, 0x304C, 0x2EBC, 0x2CF1, 0x2AFC, 0x28EF, 0x264F, 0x22C2, 0x1E83, 0x19D2, 0x14EC, 
    0x1010, 0x0B7A, 0x076A, 0x03D6, 0x0115, 0xFFFC, 0xA524, 0xA611, 0xA84F, 0xAB11, 0xAD8A, 0xAEEC, 0xAF2D, 0xAED6, 
    0xADF6, 0xAC9D, 0xAAD9, 0xA837, 0xA4B0, 0xA0EC, 0x9D97, 0x9B5D, 0x99FA, 0x98BF, 0x97B1, 0x96D7, 0x9637, 0x95D7, 
    0x95BE, 0x95F2, 0x9679, 0x9872, 0x9C24, 0xA050, 0xA3BA, 0x38A2, 0x3951, 0x3B03, 0x3D2E, 0x3F48, 0x40C8, 0x4191, 
    0x4200, 0x423D, 0x4275, 0x42D2, 0x438F, 0x4491, 0x457D, 0x45FA, 0x45AC, 0x44A1, 0x4335, 0x4182, 0x3FA4, 0x3DB4, 
    0x3BCF, 0x3A0E, 0x388E, 0x3769, 0x36F1, 0x372C, 0x37C2, 0x385C, 0xE725, 0xE63D, 0xE3F2, 0xE0ED, 0xDDD6, 0xDB55, 
    0xD9CC, 0xD8CE, 0xD7C3, 0xD615, 0xD32F, 0xCE52, 0xC7E5, 0xC101, 0xBAC1, 0xB641, 0xB3EF, 0xB34A, 0xB407, 0xB5D9, 
    0xB8AB, 0xBC6D, 0xC0D9, 0xC5AC, 0xCAA0, 0xD0BF, 0xD837, 0xDF79, 0xE4F8, 0xF97B, 0xFE5B, 0x0A53, 0x1966, 0x2795, 
    0x30E4, 0x3443, 0x345B, 0x32C3, 0x3113, 0x30E4, 0x3268, 0x348F, 0x370D, 0x3998, 0x3BE5, 0x3E8E, 0x418D, 0x43A8, 
    0x43A2, 0x41A9, 0x3EA9, 0x3A87, 0x3528, 0x2E73, 0x2432, 0x1677, 0x0891, 0xFDCE, 0x9DBA, 0x9B5D, 0x9A8E, 0x99A1, 
    0x98AA, 0x97BD, 0x96EF, 0x9654, 0x95FF, 0x9605, 0x9679, 0x980E, 0x9AF7, 0x9E8E, 0xA22A, 0xA524, 0xA7A2, 0xAA12, 
    0xAC3E, 0xADEE, 0xAEEC, 0xAF2D, 0xAED6, 0xADF6, 0xAC9D, 0xAAD9, 0xA837, 0xA4B0, 0xA0EC, 0x45AC, 0x44A1, 0x4335, 
    0x4182, 0x3FA4, 0x3DB4, 0x3BCF, 0x3A0E, 0x388E, 0x3769, 0x36CB, 0x36B9, 0x3715, 0x37C2, 0x38A2, 0x39EB, 0x3BB0, 
    0x3DA1, 0x3F6F, 0x40C8, 0x4191, 0x4200, 0x423D, 0x4275, 0x42D2, 0x438F, 0x4491, 0x457D, 0x45FA, 0xB641, 0xB3EF, 
    0xB34A, 0xB407, 0xB5D9, 0xB8AB, 0xBC6D, 0xC0D9, 0xC5AC, 0xCAA0, 0xD07B, 0xD76A, 0xDE45, 0xE3E6, 0xE725, 0xE74E, 
    0xE526, 0xE1BB, 0xDE1B, 0xDB55, 0xD9CC, 0xD8CE, 0xD7C3, 0xD615, 0xD32F, 0xCE52, 0xC7E5, 0xC101, 0xBAC1, 0x3BE5, 
    0x3E8E, 0x418D, 0x43A8, 0x43A2, 0x41A9, 0x3EA9, 0x3A87, 0x3528, 0x2E73, 0x2427, 0x1659, 0x0864, 0xFDA6, 0xF97B, 
    0xFE84, 0x0A81, 0x1984, 0x279F, 0x30E4, 0x3443, 0x345B, 0x32C3, 0x3113, 0x30E4, 0x3268, 0x348F, 0x370D, 0x3998, 
    
};

JointIndex sHorseGanonTrottingAnimJointIndices[] = {
    { 0x0000, 0x0005, 0x0001 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0022 },
    { 0x0000, 0x0000, 0x003F },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x005C },
    { 0x0000, 0x0000, 0x0079 },
    { 0x0000, 0x0000, 0x0096 },
    { 0x0000, 0x0000, 0x00B3 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0004 },
    { 0x0000, 0x0000, 0x00D0 },
    { 0x0000, 0x0000, 0x00ED },
    { 0x0000, 0x0000, 0x010A },
    { 0x0000, 0x0000, 0x0127 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0004 },
    { 0x0000, 0x0000, 0x0144 },
    { 0x0000, 0x0000, 0x0161 },
    { 0x0000, 0x0000, 0x017E },
    { 0x0000, 0x0000, 0x019B },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x01B8 },
    { 0x0000, 0x0000, 0x01D5 },
    { 0x0000, 0x0000, 0x01F2 },
    { 0x0000, 0x0000, 0x020F },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x022C },
    { 0x0000, 0x0000, 0x0249 },
    { 0x0000, 0x0000, 0x0266 },
    { 0x0000, 0x0000, 0x0283 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gHorseGanonTrottingAnim = { 
    { 29 }, sHorseGanonTrottingAnimFrameData,
    sHorseGanonTrottingAnimJointIndices, 5
};

u8 object_horse_ganon_possiblePadding_002CF4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sHorseGanonRearingAnimFrameData[] = {
    0x0000, 0x4000, 0x8C17, 0x0000, 0x0029, 0x004C, 0xFFE6, 0xFE77, 0xFB70, 0xF73B, 0xF2C6, 0xEF01, 0xECDA, 0xEBE4, 
    0xEB16, 0xEA71, 0xE9F6, 0xE9A8, 0xE988, 0xE997, 0xE9D6, 0xEA48, 0xEAEE, 0xEBC8, 0xECDA, 0xEEBF, 0xF1CC, 0xF590, 
    0xF99F, 0xFD89, 0x00E0, 0x0336, 0x03C8, 0x02C8, 0x0138, 0x001A, 0x15B3, 0x159E, 0x156C, 0x152F, 0x14FA, 0x14D2, 
    0x14AF, 0x1489, 0x1465, 0x1452, 0x144B, 0x1446, 0x1442, 0x143F, 0x143D, 0x143C, 0x143C, 0x143D, 0x143F, 0x1443, 
    0x1447, 0x144E, 0x145D, 0x1479, 0x149C, 0x14BF, 0x14E3, 0x150C, 0x1531, 0x154F, 0x156A, 0x1590, 0x15B0, 0xF853, 
    0xF85C, 0xF86E, 0xF882, 0xF88E, 0xF882, 0xF873, 0xF876, 0xF87E, 0xF882, 0xF880, 0xF87E, 0xF87A, 0xF876, 0xF872, 
    0xF86D, 0xF869, 0xF866, 0xF863, 0xF862, 0xF861, 0xF863, 0xF86F, 0xF886, 0xF89D, 0xF8A6, 0xF894, 0xF872, 0xF853, 
    0xF841, 0xF839, 0xF843, 0xF852, 0xD20E, 0xD6C5, 0xDC1F, 0xE1CB, 0xE77A, 0xECDC, 0xF1A2, 0xF57B, 0xF819, 0xF92B, 
    0xF8C9, 0xF75F, 0xF519, 0xF221, 0xEEA4, 0xEACF, 0xE6CD, 0xE2C9, 0xDEF1, 0xDB6F, 0xD871, 0xD621, 0xD585, 0xD6B2, 
    0xD86E, 0xD97C, 0xD8A3, 0xCF5D, 0xC6A5, 0xC7CF, 0xCBCD, 0xD011, 0xD20E, 0xEF9D, 0xF1F4, 0xF48E, 0xF756, 0xFA39, 
    0xFD24, 0x0003, 0x02C4, 0x0553, 0x079D, 0x098D, 0x0B12, 0x0C17, 0x0C8A, 0x0BBF, 0x0959, 0x05B7, 0x0139, 0xFC3F, 
    0xF728, 0xF254, 0xEAA2, 0xE1A7, 0xDEC9, 0xE454, 0xEDD8, 0xF8AD, 0x022B, 0x07A7, 0xFE75, 0xF0F6, 0xEEC2, 0xEF9D, 
    0x8507, 0x8507, 0x8507, 0x8507, 0x8507, 0x8507, 0x8507, 0x8507, 0x8507, 0x8507, 0x8509, 0x850D, 0x8514, 0x851B, 
    0x8522, 0x8528, 0x852D, 0x852E, 0x852C, 0x8526, 0x851A, 0x8507, 0x84E0, 0x849E, 0x844E, 0x83FA, 0x83B0, 0x837B, 
    0x8366, 0x83A6, 0x8434, 0x84C3, 0x8507, 0xEEE2, 0xEF1B, 0xEF5A, 0xEFCD, 0xF153, 0xEF46, 0xECA1, 0xE9E8, 0xE7A1, 
    0xE653, 0xE5C3, 0xE55C, 0xE51A, 0xE4F7, 0xE4F0, 0xE500, 0xE523, 0xE555, 0xE590, 0xE5D1, 0xE614, 0xE653, 0xE6B8, 
    0xE75D, 0xE827, 0xE8FE, 0xE9C9, 0xEA6C, 0xEACF, 0xE963, 0xE85D, 0xEBDB, 0xEEE2, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0xFFC6, 0xFF53, 0xFEFD, 0xFF19, 0x0000, 0x0220, 0x0544, 0x08CC, 0x0C18, 0x0E88, 0x0F7C, 0x0E80, 0x0BFF, 
    0x08A2, 0x0513, 0x01F9, 0x0000, 0xFF20, 0xFEC9, 0xFED5, 0xFF20, 0xFF84, 0xFFDB, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0015, 0x0040, 0x0060, 0x0055, 0x0000, 0xFF38, 0xFE0F, 0xFCC2, 
    0xFB8B, 0xFAA5, 0xFA4C, 0xFAA8, 0xFB94, 0xFCD2, 0xFE22, 0xFF46, 0x0000, 0x0053, 0x0073, 0x006E, 0x0053, 0x002E, 
    0x000E, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xE3D2, 0xE9C3, 0xF09B, 0xF640, 0xF899, 0xF6C7, 0xF24F, 0xECAB, 
    0xE759, 0xE3D2, 0xE223, 0xE138, 0xE0DE, 0xE0DE, 0xE105, 0xE11E, 0xE12C, 0xE159, 0xE1AD, 0xE22E, 0xE2E3, 0xE3D2, 
    0xE534, 0xE713, 0xE92E, 0xEB44, 0xED12, 0xEE57, 0xEED2, 0xED21, 0xE965, 0xE59F, 0xE3D2, 0x0000, 0xFFB6, 0xFF3B, 
    0xFF22, 0x0000, 0x0227, 0x052B, 0x087D, 0x0B91, 0x0DDA, 0x0FBD, 0x11B9, 0x1369, 0x1468, 0x1451, 0x12BE, 0x0EB4, 
    0x0853, 0x00DC, 0xF98F, 0xF3AF, 0xF07C, 0xF01C, 0xF183, 0xF424, 0xF774, 0xFAE5, 0xFDED, 0x0000, 0x00CB, 0x00B5, 
    0x0044, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0012, 0x0037, 0x0052, 0x0049, 0x0000, 0xFF4C, 0xFE3D, 
    0xFD0E, 0xFBFC, 0xFB42, 0xFB1C, 0xFBC5, 0xFD18, 0xFEC3, 0x0075, 0x01DC, 0x02A6, 0x02CF, 0x029B, 0x0227, 0x018E, 
    0x00ED, 0x005F, 0x0000, 0xFFDD, 0xFFE1, 0xFFF4, 0x0000, 0xF15D, 0xF4A0, 0xF862, 0xFB7B, 0xFCC5, 0xFBC5, 0xF951, 
    0xF638, 0xF34C, 0xF15D, 0xF075, 0xEFFF, 0xEFD7, 0xEFDE, 0xEFF1, 0xEFF0, 0xEFD5, 0xEFB9, 0xEFAA, 0xEFB6, 0xEFE7, 
    0xF04D, 0xF106, 0xF20D, 0xF33D, 0xF471, 0xF583, 0xF64D, 0xF6A9, 0xF5E6, 0xF418, 0xF23F, 0xF15D, 0x4274, 0x3C2C, 
    0x34E6, 0x2FB8, 0x2FB6, 0x3D05, 0x51B3, 0x5BB7, 0x57D1, 0x4FD8, 0x4562, 0x3A05, 0x2F57, 0x26ED, 0x225E, 0x2AC8, 
    0x3CAA, 0x46AA, 0x4244, 0x37CC, 0x2C2C, 0x244D, 0x2282, 0x247B, 0x2836, 0x2D69, 0x345D, 0x3BEF, 0x4649, 0x4DB4, 
    0x4886, 0x4274, 0x424D, 0x9348, 0x9390, 0x93C9, 0x942A, 0x94EA, 0x984B, 0x97F6, 0x9714, 0x960F, 0x9552, 0x950D, 
    0x9507, 0x950D, 0x9513, 0x9524, 0x9532, 0x955E, 0x95B4, 0x9609, 0x9632, 0x9604, 0x9552, 0x93DC, 0x91B2, 0x8F24, 
    0x8C84, 0x8A20, 0x87C9, 0x862F, 0x881C, 0x9348, 0x9437, 0x9348, 0x0000, 0x0027, 0x0068, 0x0075, 0x0000, 0xFBED, 
    0xFC3C, 0xFD2F, 0xFE51, 0xFF2F, 0xFFC3, 0x0021, 0x0000, 0xFEEB, 0xFD57, 0xFC55, 0xFC11, 0xFBF8, 0xFC04, 0xFC2D, 
    0xFC6E, 0xFCBE, 0xFD38, 0xFDE6, 0xFEAC, 0xFF69, 0x0000, 0x0027, 0x0011, 0xFFFE, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xFF3C, 0xFE4A, 0xFD7D, 0xFD26, 0xFDC8, 0xFF0D, 0x0000, 0x0036, 0x001B, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xFFFF, 0xFFFE, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x365A, 0x384D, 0x3ABD, 0x3C1A, 0x3AD5, 0x26D0, 0x1615, 0x04D9, 0xF65A, 0xEDD4, 
    0xF083, 0xFBE7, 0x079B, 0x1375, 0x1FA1, 0x2440, 0x1F73, 0x1644, 0x0B32, 0x00BC, 0xF95F, 0xF79B, 0xFDD6, 0x0AAC, 
    0x1AE7, 0x2B54, 0x38C0, 0x408E, 0x438C, 0x3C6E, 0x3863, 0x36DF, 0x365A, 0xF658, 0xF086, 0xE947, 0xE498, 0xE674, 
    0x16A8, 0x2521, 0x2F7C, 0x3643, 0x39FA, 0x35E6, 0x2C13, 0x2736, 0x2DC2, 0x3945, 0x411C, 0x4415, 0x4682, 0x4805, 
    0x483E, 0x46CF, 0x4359, 0x3C74, 0x320F, 0x25D7, 0x1975, 0x0E95, 0x055C, 0x0064, 0x0B65, 0xFDAD, 0xF848, 0xF658, 
    0xFFFC, 0x0637, 0x0B16, 0x09AA, 0x0822, 0x1087, 0x1C15, 0x2877, 0x3405, 0x3D1A, 0x41C3, 0x4300, 0x4396, 0x446E, 
    0x449F, 0x4433, 0x43F6, 0x443D, 0x445D, 0x43A9, 0x4177, 0x3D1A, 0x3545, 0x2A33, 0x1D84, 0x10D9, 0x05D1, 0xFEBA, 
    0xF969, 0xF376, 0xFD8A, 0xFFCC, 0xFFFC, 0x9348, 0x9446, 0x9543, 0x9662, 0x97C4, 0x9B11, 0x9B1D, 0x9AAF, 0x9A21, 
    0x99CD, 0x99C0, 0x99C6, 0x99D7, 0x99F0, 0x9A09, 0x9A1C, 0x9A34, 0x9A3F, 0x9A6A, 0x9AB5, 0x9AA9, 0x99CD, 0x97FE, 
    0x9595, 0x92D8, 0x900F, 0x8D7F, 0x8B11, 0x894E, 0x8A72, 0x9348, 0x9405, 0x9348, 0x0000, 0xFFA6, 0xFF10, 0xFEF2, 
    0x0000, 0x095F, 0x09A0, 0x08A5, 0x0703, 0x054C, 0x0239, 0x0000, 0x0108, 0x0320, 0x052F, 0x061D, 0x0320, 0x0000, 
    0x008C, 0x021B, 0x03BB, 0x047B, 0x041F, 0x0338, 0x020C, 0x00E2, 0x0000, 0xFFCA, 0xFFE9, 0x0003, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0001, 0x0002, 0x0000, 0x0000, 0x0000, 0x0000, 0x365A, 0x3780, 0x3906, 0x399E, 0x37FB, 0x2669, 0x1D59, 0x1551, 
    0x0E35, 0x07E7, 0x048D, 0x02C8, 0xFED5, 0xFA12, 0xF6C6, 0xF738, 0x05A2, 0x1542, 0x1803, 0x1759, 0x1660, 0x1833, 
    0x1DB4, 0x2503, 0x2D1B, 0x34F8, 0x3B95, 0x3F26, 0x3FBA, 0x3A9A, 0x3863, 0x3706, 0x365A, 0xF658, 0xF073, 0xE944, 
    0xE457, 0xE53B, 0x0F43, 0x20E5, 0x2FCC, 0x3B74, 0x4359, 0x3D2F, 0x3256, 0x2FE2, 0x2EFA, 0x2EB9, 0x2E39, 0x2C6B, 
    0x2CD4, 0x332E, 0x3C1F, 0x430B, 0x4359, 0x3B5A, 0x2E45, 0x1ED9, 0x0FD6, 0x03FB, 0x0009, 0x01D5, 0x0A57, 0xFDAD, 
    0xF85F, 0xF658, 0xFFFC, 0x0422, 0x07E8, 0x095B, 0x0A94, 0x0E7D, 0x18EC, 0x24CD, 0x2FA7, 0x36FD, 0x3AB4, 0x3CB0, 
    0x3D7B, 0x3D9D, 0x3DA0, 0x3E0A, 0x3E34, 0x3D61, 0x3CFE, 0x3CFE, 0x3B96, 0x36FD, 0x2E62, 0x2321, 0x16B5, 0x0A99, 
    0x0049, 0xFB76, 0xF886, 0xF0DD, 0xFDF2, 0x0038, 0xFFFC, 0x0000, 0xFFC6, 0xFF8F, 0xFF4B, 0xFEF0, 0xFE68, 0xFDBE, 
    0xFD11, 0xFC82, 0xFC2F, 0xFC09, 0xFBE8, 0xFBCD, 0xFBB8, 0xFBAA, 0xFBA4, 0xFBA6, 0xFBAF, 0xFBC1, 0xFBDD, 0xFC01, 
    0xFC2F, 0xFC80, 0xFD01, 0xFDA1, 0xFE4E, 0xFEF9, 0xFF8F, 0x0000, 0x0032, 0x002C, 0x0011, 0x0000, 0x0000, 0xFFB4, 
    0xFF69, 0xFF12, 0xFEA2, 0xFE04, 0xFD41, 0xFC7D, 0xFBDA, 0xFB7D, 0xFB50, 0xFB2A, 0xFB0A, 0xFAF2, 0xFAE2, 0xFADA, 
    0xFADC, 0xFAE6, 0xFAFB, 0xFB1B, 0xFB46, 0xFB7D, 0xFBDC, 0xFC75, 0xFD32, 0xFDFF, 0xFEC9, 0xFF7A, 0x0000, 0x003B, 
    0x0035, 0x0014, 0x0000, 0x9C2E, 0x9B98, 0x9B05, 0x9AF3, 0x9BE2, 0x9E4C, 0xA1CA, 0xA58B, 0xA8BE, 0xAA91, 0xAB5D, 
    0xAC09, 0xAC92, 0xACF7, 0xAD37, 0xAD51, 0xAD45, 0xAD0F, 0xACB1, 0xAC28, 0xAB73, 0xAA91, 0xA8FD, 0xA673, 0xA34F, 
    0x9FF0, 0x9CB4, 0x99F8, 0x981B, 0x9801, 0x997D, 0x9B4C, 0x9C2E, 0x3DEE, 0x3F6E, 0x40E6, 0x4261, 0x43E7, 0x4585, 
    0x478D, 0x49E1, 0x4BE7, 0x4D01, 0x4D6D, 0x4DCC, 0x4E1C, 0x4E5A, 0x4E84, 0x4E97, 0x4E91, 0x4E6E, 0x4E2D, 0x4DCB, 
    0x4D45, 0x4C99, 0x4B71, 0x49A1, 0x4764, 0x44F4, 0x428C, 0x4066, 0x3EBF, 0x3DDB, 0x3DA3, 0x3DC5, 0x3DEE, 0xD8E3, 
    0xD6EC, 0xD4E1, 0xD2D0, 0xD0CA, 0xCEDE, 0xCD1B, 0xCB91, 0xCA50, 0xC967, 0xC8C0, 0xC83A, 0xC7D5, 0xC791, 0xC76C, 
    0xC768, 0xC782, 0xC7BC, 0xC814, 0xC88A, 0xC91E, 0xC9D0, 0xCAF6, 0xCCC4, 0xCEFE, 0xD16C, 0xD3D3, 0xD5FB, 0xD7AA, 
    0xD8A0, 0xD8F6, 0xD8F4, 0xD8E3, 0x0BD1, 0x0CF1, 0x0E0E, 0x0F21, 0x1026, 0x1115, 0x11EA, 0x129E, 0x132C, 0x138F, 
    0x13CD, 0x13F4, 0x1406, 0x1404, 0x13EF, 0x13CA, 0x1396, 0x1355, 0x1308, 0x12B2, 0x1253, 0x11ED, 0x115B, 0x1087, 
    0x0F88, 0x0E77, 0x0D6E, 0x0C83, 0x0BD1, 0x0B81, 0x0B8A, 0x0BB6, 0x0BD1, 0x0000, 0x0027, 0x004C, 0x007A, 0x00BC, 
    0x0120, 0x019E, 0x021F, 0x028A, 0x02C7, 0x02E4, 0x02FD, 0x0310, 0x031F, 0x0329, 0x032E, 0x032D, 0x0325, 0x0318, 
    0x0304, 0x02E9, 0x02C7, 0x028C, 0x022F, 0x01BA, 0x013C, 0x00C0, 0x0052, 0x0000, 0xFFDC, 0xFFE0, 0xFFF4, 0x0000, 
    0x0000, 0x0070, 0x00DD, 0x015D, 0x0204, 0x02F3, 0x0419, 0x0542, 0x0639, 0x06C6, 0x070A, 0x0743, 0x0773, 0x0797, 
    0x07AF, 0x07BB, 0x07B9, 0x07A8, 0x0789, 0x0759, 0x0719, 0x06C6, 0x0636, 0x0552, 0x0436, 0x0302, 0x01D3, 0x00C9, 
    0x0000, 0xFFA7, 0xFFB1, 0xFFE2, 0x0000, 0x9D66, 0x9CAD, 0x9BBF, 0x9B4B, 0x9BFF, 0x9E60, 0xA1ED, 0xA5C8, 0xA915, 
    0xAAF5, 0xABC6, 0xAC75, 0xAD00, 0xAD68, 0xADA9, 0xADC4, 0xADB7, 0xAD81, 0xAD21, 0xAC95, 0xABDC, 0xAAF5, 0xA956, 
    0xA6B6, 0xA379, 0xA001, 0x9CB2, 0x99EF, 0x981B, 0x983D, 0x9A23, 0x9C57, 0x9D66, 0x3D86, 0x3F04, 0x4086, 0x4211, 
    0x43A7, 0x454B, 0x474B, 0x498E, 0x4B84, 0x4C99, 0x4D0A, 0x4D6F, 0x4DC7, 0x4E0F, 0x4E43, 0x4E60, 0x4E65, 0x4E4D, 
    0x4E16, 0x4DBD, 0x4D3F, 0x4C99, 0x4B76, 0x49AB, 0x4770, 0x4501, 0x4298, 0x406E, 0x3EBF, 0x3DC5, 0x3D6A, 0x3D6B, 
    0x3D86, 0xD87B, 0xD687, 0xD486, 0xD283, 0xD08D, 0xCEB2, 0xCD00, 0xCB84, 0xCA4D, 0xC967, 0xC8BE, 0xC833, 0xC7C5, 
    0xC776, 0xC745, 0xC733, 0xC741, 0xC76E, 0xC7BC, 0xC829, 0xC8B8, 0xC967, 0xCA94, 0xCC70, 0xCEBF, 0xD143, 0xD3BF, 
    0xD5F5, 0xD7AA, 0xD890, 0xD8C2, 0xD89C, 0xD87B, 0x0000, 0x004F, 0x007A, 0x0086, 0x007C, 0x0063, 0x0043, 0x0023, 
    0x000A, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0BD1, 0x0CF1, 0x0E0C, 
    0x0F1E, 0x1021, 0x110F, 0x11E3, 0x1298, 0x1328, 0x138F, 0x13D3, 0x1403, 0x141E, 0x1427, 0x141F, 0x1406, 0x13DD, 
    0x13A7, 0x1363, 0x1314, 0x12BA, 0x1256, 0x11BF, 0x10DE, 0x0FCE, 0x0EAA, 0x0D8C, 0x0C90, 0x0BD1, 0x0B7B, 0x0B85, 
    0x0BB4, 0x0BD1, 
};

JointIndex sHorseGanonRearingAnimJointIndices[] = {
    { 0x0000, 0x0024, 0x0045 },
    { 0x0003, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0000, 0x0066 },
    { 0x0000, 0x0000, 0x0087 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0000, 0x00A8 },
    { 0x0000, 0x0000, 0x00C9 },
    { 0x00EA, 0x010B, 0x012C },
    { 0x014D, 0x016E, 0x018F },
    { 0x0000, 0x0000, 0x01B0 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0002 },
    { 0x0000, 0x0000, 0x01D1 },
    { 0x01F2, 0x0213, 0x0234 },
    { 0x0000, 0x0000, 0x0255 },
    { 0x0000, 0x0000, 0x0276 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0002 },
    { 0x0000, 0x0000, 0x0297 },
    { 0x02B8, 0x02D9, 0x02FA },
    { 0x0000, 0x0000, 0x031B },
    { 0x0000, 0x0000, 0x033C },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x035D, 0x037E, 0x039F },
    { 0x0000, 0x0000, 0x03C0 },
    { 0x0000, 0x0000, 0x03E1 },
    { 0x0000, 0x0000, 0x0402 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0423, 0x0444, 0x0465 },
    { 0x0000, 0x0000, 0x0486 },
    { 0x0000, 0x0000, 0x04A7 },
    { 0x04C8, 0x0000, 0x04E9 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gHorseGanonRearingAnim = { 
    { 33 }, sHorseGanonRearingAnimFrameData,
    sHorseGanonRearingAnimJointIndices, 3
};

u8 object_horse_ganon_possiblePadding_003868[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sHorseGanonIdleAnimFrameData[] = {
    0x0000, 0x15B8, 0xF853, 0x4000, 0x8507, 0x8C17, 0x0BD1, 0xD20E, 0xD221, 0xD259, 0xD2B3, 0xD32C, 0xD3BF, 0xD46A, 
    0xD52A, 0xD5FC, 0xD6DB, 0xD7C6, 0xD8B8, 0xD9AF, 0xDAA7, 0xDB9D, 0xDC8E, 0xDD76, 0xDE96, 0xE018, 0xE1D8, 0xE3B2, 
    0xE583, 0xE725, 0xE877, 0xE953, 0xE996, 0xE91C, 0xE63A, 0xE087, 0xD9C4, 0xD3B3, 0xD015, 0xCF90, 0xD0F8, 0xD354, 
    0xD5AE, 0xD70D, 0xD788, 0xD7DE, 0xD815, 0xD832, 0xD839, 0xD830, 0xD81A, 0xD7FE, 0xD7E0, 0xD7C0, 0xD79D, 0xD776, 
    0xD74C, 0xD71F, 0xD6EF, 0xD6BC, 0xD688, 0xD652, 0xD61A, 0xD5E1, 0xD5A7, 0xD56D, 0xD532, 0xD4F7, 0xD4BC, 0xD482, 
    0xD448, 0xD410, 0xD3D9, 0xD3A4, 0xD371, 0xD340, 0xD311, 0xD2E6, 0xD2BD, 0xD298, 0xD277, 0xD25A, 0xD241, 0xD22C, 
    0xD21D, 0xD213, 0xD20E, 0xEF9D, 0xEF91, 0xEF6E, 0xEF35, 0xEEE8, 0xEE86, 0xEE11, 0xED89, 0xECF1, 0xEC49, 0xEB91, 
    0xEACC, 0xE9F9, 0xE91A, 0xE830, 0xE73C, 0xE63E, 0xE4BB, 0xE268, 0xDF8F, 0xDC7A, 0xD975, 0xD6C9, 0xD4C1, 0xD3A8, 
    0xD3C8, 0xD56B, 0xDC80, 0xE9D8, 0xF910, 0x05C6, 0x0B98, 0x07C0, 0xFD2B, 0xF001, 0xE468, 0xDE88, 0xDDF9, 0xDF3E, 
    0xE1E1, 0xE56F, 0xE970, 0xED6F, 0xF0F8, 0xF395, 0xF4CF, 0xF4B6, 0xF3C7, 0xF235, 0xF032, 0xEDF1, 0xEBA2, 0xE979, 
    0xE7A8, 0xE661, 0xE5D6, 0xE645, 0xE799, 0xE98B, 0xEBD5, 0xEE2F, 0xF053, 0xF1F9, 0xF2DA, 0xF32B, 0xF356, 0xF35E, 
    0xF347, 0xF318, 0xF2D3, 0xF27F, 0xF21E, 0xF1B7, 0xF14D, 0xF0E5, 0xF084, 0xF02E, 0xEFE8, 0xEFB7, 0xEF9F, 0xEEE2, 
    0xEEF3, 0xEF21, 0xEF65, 0xEFB8, 0xF011, 0xF06A, 0xF0BA, 0xF0FA, 0xF123, 0xF12D, 0xF111, 0xF0D1, 0xF075, 0xF003, 
    0xEF7E, 0xEEEC, 0xEE4F, 0xEDAD, 0xED0A, 0xEC69, 0xEBD0, 0xEB42, 0xEAC3, 0xEA59, 0xEA07, 0xE9D1, 0xE9ED, 0xEA70, 
    0xEB35, 0xEC15, 0xECE8, 0xED87, 0xEDCD, 0xEDD0, 0xEDC4, 0xEDAA, 0xED86, 0xED58, 0xED22, 0xECE7, 0xECA7, 0xEC66, 
    0xEC24, 0xEBE3, 0xEBA6, 0xEB6F, 0xEB3E, 0xEB16, 0xEAF9, 0xEAE9, 0xEAE7, 0xEAF1, 0xEB01, 0xEB16, 0xEB31, 0xEB51, 
    0xEB76, 0xEB9E, 0xEBCA, 0xEBF8, 0xEC29, 0xEC5C, 0xEC90, 0xECC4, 0xECFA, 0xED2E, 0xED62, 0xED95, 0xEDC7, 0xEDF5, 
    0xEE22, 0xEE4A, 0xEE6F, 0xEE90, 0xEEAC, 0xEEC3, 0xEED3, 0xEEDE, 0xEEE2, 0x0000, 0x000B, 0x002C, 0x0060, 0x00A3, 
    0x00F5, 0x0153, 0x01B9, 0x0226, 0x0297, 0x030A, 0x037C, 0x03EC, 0x0455, 0x04B7, 0x050E, 0x0558, 0x0593, 0x05BD, 
    0x05D2, 0x05DB, 0x05E2, 0x05E6, 0x05E8, 0x05E7, 0x05E3, 0x05DC, 0x05D2, 0x05C5, 0x05B6, 0x05A4, 0x0591, 0x057C, 
    0x0564, 0x054B, 0x0531, 0x0514, 0x04F7, 0x04D7, 0x04B7, 0x0495, 0x0473, 0x044F, 0x042B, 0x0405, 0x03DF, 0x03B9, 
    0x0392, 0x036A, 0x0342, 0x031B, 0x02F2, 0x02CB, 0x02A3, 0x027B, 0x0254, 0x022D, 0x0206, 0x01E0, 0x01BB, 0x0197, 
    0x0173, 0x0151, 0x0130, 0x010F, 0x00F1, 0x00D3, 0x00B7, 0x009D, 0x0084, 0x006D, 0x0058, 0x0045, 0x0034, 0x0026, 
    0x0019, 0x000F, 0x0007, 0x0002, 0x0000, 0x0000, 0xFFD7, 0xFF61, 0xFEA8, 0xFDB4, 0xFC8E, 0xFB3E, 0xF9CD, 0xF844, 
    0xF6AC, 0xF50E, 0xF371, 0xF1E0, 0xF062, 0xEF00, 0xEDC3, 0xECB5, 0xEBDC, 0xEB43, 0xEAF2, 0xEACC, 0xEAAF, 0xEA9C, 
    0xEA94, 0xEA97, 0xEAA7, 0xEAC6, 0xEAF2, 0xEB2B, 0xEB6B, 0xEBB2, 0xEC00, 0xEC54, 0xECAE, 0xED0E, 0xED74, 0xEDDE, 
    0xEE4E, 0xEEC2, 0xEF3A, 0xEFB5, 0xF034, 0xF0B7, 0xF13B, 0xF1C3, 0xF24C, 0xF2D7, 0xF364, 0xF3F1, 0xF480, 0xF50F, 
    0xF59D, 0xF62C, 0xF6BA, 0xF747, 0xF7D2, 0xF85C, 0xF8E4, 0xF96A, 0xF9ED, 0xFA6E, 0xFAEB, 0xFB64, 0xFBD9, 0xFC4A, 
    0xFCB6, 0xFD1E, 0xFD80, 0xFDDC, 0xFE33, 0xFE83, 0xFECC, 0xFF0F, 0xFF4A, 0xFF7D, 0xFFA8, 0xFFCC, 0xFFE6, 0xFFF7, 
    0xFFFF, 0xE3D2, 0xE3E6, 0xE41F, 0xE479, 0xE4F0, 0xE580, 0xE625, 0xE6D9, 0xE79A, 0xE862, 0xE92E, 0xE9FA, 0xEAC0, 
    0xEB7E, 0xEC2F, 0xECCE, 0xED57, 0xEDC7, 0xEE19, 0xEE49, 0xEE64, 0xEE7A, 0xEE8A, 0xEE92, 0xEE91, 0xEE85, 0xEE6E, 
    0xEE49, 0xEE1B, 0xEDEB, 0xEDB9, 0xED85, 0xED4E, 0xED16, 0xECDC, 0xECA1, 0xEC64, 0xEC26, 0xEBE7, 0xEBA6, 0xEB65, 
    0xEB22, 0xEAE0, 0xEA9C, 0xEA58, 0xEA14, 0xE9CF, 0xE98B, 0xE946, 0xE902, 0xE8BE, 0xE87B, 0xE838, 0xE7F6, 0xE7B4, 
    0xE774, 0xE734, 0xE6F6, 0xE6BA, 0xE67E, 0xE644, 0xE60C, 0xE5D6, 0xE5A2, 0xE570, 0xE540, 0xE512, 0xE4E7, 0xE4BF, 
    0xE499, 0xE476, 0xE456, 0xE439, 0xE420, 0xE40A, 0xE3F7, 0xE3E8, 0xE3DD, 0xE3D5, 0xE3D2, 0x0000, 0x0011, 0x0042, 
    0x008E, 0x00F3, 0x016C, 0x01F7, 0x028F, 0x0330, 0x03D8, 0x0482, 0x052B, 0x05CF, 0x066A, 0x06FA, 0x0779, 0x07E5, 
    0x083B, 0x0875, 0x0891, 0x089B, 0x08A2, 0x08A6, 0x08A7, 0x08A6, 0x08A2, 0x089B, 0x0891, 0x0884, 0x0873, 0x085F, 
    0x0847, 0x082C, 0x080D, 0x07EC, 0x07C8, 0x07A1, 0x0778, 0x074C, 0x071E, 0x06EE, 0x06BC, 0x0688, 0x0653, 0x061C, 
    0x05E4, 0x05AB, 0x0571, 0x0536, 0x04FB, 0x04BF, 0x0483, 0x0447, 0x040B, 0x03CF, 0x0393, 0x0358, 0x031D, 0x02E4, 
    0x02AB, 0x0273, 0x023D, 0x0208, 0x01D5, 0x01A4, 0x0174, 0x0147, 0x011C, 0x00F3, 0x00CD, 0x00A9, 0x0089, 0x006B, 
    0x0051, 0x003A, 0x0027, 0x0017, 0x000C, 0x0004, 0x0000, 0x0000, 0xFFE5, 0xFF97, 0xFF1C, 0xFE79, 0xFDB5, 0xFCD5, 
    0xFBDF, 0xFAD8, 0xF9C6, 0xF8AF, 0xF799, 0xF689, 0xF584, 0xF491, 0xF3B6, 0xF2F7, 0xF25B, 0xF1E7, 0xF1A1, 0xF17D, 
    0xF16A, 0xF164, 0xF168, 0xF174, 0xF183, 0xF193, 0xF1A1, 0xF1B0, 0xF1C7, 0xF1E3, 0xF206, 0xF22F, 0xF25E, 0xF293, 
    0xF2CC, 0xF30A, 0xF34D, 0xF395, 0xF3E0, 0xF42F, 0xF482, 0xF4D8, 0xF531, 0xF58C, 0xF5EA, 0xF64A, 0xF6AC, 0xF70F, 
    0xF774, 0xF7D9, 0xF83F, 0xF8A5, 0xF90C, 0xF972, 0xF9D8, 0xFA3E, 0xFAA2, 0xFB05, 0xFB66, 0xFBC5, 0xFC23, 0xFC7D, 
    0xFCD6, 0xFD2B, 0xFD7D, 0xFDCB, 0xFE15, 0xFE5C, 0xFE9D, 0xFEDB, 0xFF13, 0xFF46, 0xFF73, 0xFF9B, 0xFFBC, 0xFFD7, 
    0xFFEC, 0xFFF9, 0x0000, 0xF15D, 0xF161, 0xF16D, 0xF17F, 0xF198, 0xF1B6, 0xF1D9, 0xF200, 0xF22A, 0xF257, 0xF285, 
    0xF2B4, 0xF2E3, 0xF311, 0xF33F, 0xF36A, 0xF392, 0xF3B7, 0xF3D7, 0xF3F3, 0xF407, 0xF412, 0xF417, 0xF416, 0xF411, 
    0xF408, 0xF3FE, 0xF3F3, 0xF3E7, 0xF3DB, 0xF3CF, 0xF3C2, 0xF3B5, 0xF3A7, 0xF399, 0xF38A, 0xF37B, 0xF36C, 0xF35C, 
    0xF34C, 0xF33C, 0xF32B, 0xF31B, 0xF30A, 0xF2F9, 0xF2E9, 0xF2D8, 0xF2C7, 0xF2B6, 0xF2A5, 0xF294, 0xF283, 0xF273, 
    0xF263, 0xF252, 0xF243, 0xF233, 0xF224, 0xF214, 0xF206, 0xF1F8, 0xF1EA, 0xF1DC, 0xF1CF, 0xF1C3, 0xF1B7, 0xF1AC, 
    0xF1A1, 0xF197, 0xF18E, 0xF185, 0xF17D, 0xF176, 0xF170, 0xF16B, 0xF166, 0xF162, 0xF15F, 0xF15E, 0xF15D, 0x0000, 
    0xFFE4, 0xFF94, 0xFF16, 0xFE6F, 0xFDA3, 0xFCB9, 0xFBB7, 0xFAA0, 0xF97C, 0xF84E, 0xF71E, 0xF5EF, 0xF4C7, 0xF3AD, 
    0xF2A4, 0xF1B3, 0xF0DF, 0xF02E, 0xEFA4, 0xEF46, 0xEF12, 0xEEFF, 0xEF07, 0xEF22, 0xEF4A, 0xEF78, 0xEFA4, 0xEFC6, 
    0xEFDC, 0xEFE9, 0xEFEF, 0xEFF3, 0xEFF5, 0xEFFA, 0xF003, 0xF014, 0xF02F, 0xF057, 0xF08F, 0xF0DA, 0xF13A, 0xF1B2, 
    0xF245, 0xF2F6, 0xF3C7, 0xF52E, 0xF76E, 0xFA3C, 0xFD50, 0x0061, 0x0326, 0x0555, 0x06A5, 0x06EF, 0x0665, 0x0542, 
    0x03C5, 0x0229, 0x00AC, 0xFF8A, 0xFFA8, 0x0143, 0x0345, 0x0536, 0x069F, 0x070A, 0x0585, 0x026E, 0xFF44, 0xFD84, 
    0xFD2D, 0xFD2D, 0xFD70, 0xFDE2, 0xFE6E, 0xFEFF, 0xFF80, 0xFFDD, 0x0000, 0x0000, 0xFFC7, 0xFF25, 0xFE26, 0xFCD6, 
    0xFB41, 0xF972, 0xF777, 0xF55A, 0xF329, 0xF0EF, 0xEEB8, 0xEC90, 0xEA84, 0xE89F, 0xE6ED, 0xE57A, 0xE454, 0xE384, 
    0xE318, 0xE2E7, 0xE2BE, 0xE2A2, 0xE294, 0xE297, 0xE2AC, 0xE2D7, 0xE318, 0xE351, 0xE362, 0xE350, 0xE321, 0xE2DB, 
    0xE282, 0xE21C, 0xE1AE, 0xE13E, 0xE0D0, 0xE06B, 0xE014, 0xDFCF, 0xDFA2, 0xDF94, 0xDFA8, 0xDFE4, 0xE04E, 0xE123, 
    0xE289, 0xE463, 0xE692, 0xE8FA, 0xEB7C, 0xEDFB, 0xF058, 0xF2B8, 0xF545, 0xF7EE, 0xFAA0, 0xFD4A, 0xFFD9, 0x023C, 
    0x028E, 0x07D3, 0x0E7A, 0x14E3, 0x196E, 0x1A7B, 0x14B1, 0x095B, 0xFDD3, 0xF76F, 0xF61E, 0xF60D, 0xF6F0, 0xF87E, 
    0xFA6A, 0xFC6C, 0xFE37, 0xFF81, 0x0000, 0x4274, 0x429D, 0x4313, 0x43CE, 0x44C4, 0x45EE, 0x4741, 0x48B7, 0x4A47, 
    0x4BE7, 0x4D8F, 0x4F37, 0x50D6, 0x5263, 0x53D7, 0x5527, 0x564D, 0x573E, 0x57F3, 0x5863, 0x58A8, 0x58DF, 0x5906, 
    0x5919, 0x5915, 0x58F7, 0x58BD, 0x5863, 0x57F8, 0x578D, 0x5720, 0x56B3, 0x5643, 0x55D0, 0x555B, 0x54E2, 0x5465, 
    0x53E4, 0x535D, 0x52D1, 0x523F, 0x51A6, 0x5105, 0x505D, 0x4FAD, 0x4EF4, 0x4E1B, 0x4D13, 0x4BE4, 0x4A9A, 0x493E, 
    0x47D9, 0x4677, 0x451F, 0x43C7, 0x425E, 0x40ED, 0x3F7A, 0x3E0D, 0x3CAD, 0x3B61, 0x3B25, 0x3DDB, 0x4101, 0x443F, 
    0x473F, 0x49A9, 0x4B75, 0x4CBE, 0x4D62, 0x4D41, 0x4C72, 0x4B39, 0x49B7, 0x4811, 0x4669, 0x44E2, 0x43A0, 0x42C5, 
    0x4274, 0x9348, 0x9348, 0x925E, 0x919E, 0x90B5, 0x8FBA, 0x8EC3, 0x8DE5, 0x8D38, 0x8D0E, 0x8D05, 0x8D64, 0x8DF5, 
    0x8F0E, 0x9066, 0x91F0, 0x9388, 0x953E, 0x9706, 0x98D4, 0x9AE2, 0x9CBE, 0x9E81, 0xA04A, 0xA1B2, 0xA2CC, 0xA386, 
    0xA326, 0xA15C, 0x9E98, 0x9BC5, 0x98FC, 0x971E, 0x964A, 0x9694, 0x96B5, 0x96FA, 0x975F, 0x97DE, 0x9873, 0x9917, 
    0x9A0F, 0x9AD6, 0x9B9F, 0x9C65, 0x9D23, 0x9DD2, 0x9E6C, 0x9EEA, 0x9F7D, 0x9FB3, 0x9FB9, 0x9F9A, 0x9F65, 0x9EEA, 
    0x9E93, 0x9E2E, 0x9DBB, 0x9D3C, 0x9CB4, 0x9C24, 0x9B8D, 0x9AB7, 0x998A, 0x988B, 0x97A2, 0x9724, 0x9745, 0x9762, 
    0x97AF, 0x97B0, 0x976F, 0x96BC, 0x9579, 0x93FB, 0x929F, 0x91AB, 0x91C6, 0x92CB, 0x9348, 0x365A, 0x3653, 0x36F3, 
    0x37A1, 0x3873, 0x3955, 0x3A35, 0x3B00, 0x3BA1, 0x3BD1, 0x3BE5, 0x3B9F, 0x3B2E, 0x3A44, 0x3921, 0x37D1, 0x3661, 
    0x34D8, 0x3340, 0x31A5, 0x2FD5, 0x2E31, 0x2CA6, 0x2B13, 0x29D8, 0x28E1, 0x283E, 0x2890, 0x2A1B, 0x2C7F, 0x2EE9, 
    0x3148, 0x32DE, 0x338E, 0x33A5, 0x3387, 0x3349, 0x32EF, 0x327D, 0x31F9, 0x3166, 0x308C, 0x2FDB, 0x2F29, 0x2E79, 
    0x2DD2, 0x2D37, 0x2CB0, 0x2C41, 0x2BBE, 0x2B8F, 0x2B89, 0x2BA5, 0x2BD3, 0x2C40, 0x2C8C, 0x2CE6, 0x2D4B, 0x2DBB, 
    0x2E33, 0x2EB2, 0x2F38, 0x2FAA, 0x3016, 0x301E, 0x2F91, 0x2E94, 0x2D0F, 0x2BD2, 0x2AA3, 0x29FC, 0x29D6, 0x2A74, 
    0x2C01, 0x2E39, 0x30D4, 0x334F, 0x3596, 0x3642, 0x364E, 0xF658, 0xF643, 0xF5F4, 0xF59E, 0xF539, 0xF4CA, 0xF45A, 
    0xF3EF, 0xF391, 0xF32E, 0xF303, 0xF302, 0xF33F, 0xF381, 0xF3DD, 0xF451, 0xF502, 0xF5BB, 0xF675, 0xF72E, 0xF7B9, 
    0xF846, 0xF8C1, 0xF912, 0xF95F, 0xF999, 0xF9BE, 0xF9B3, 0xF969, 0xF901, 0xF868, 0xF7E8, 0xF768, 0xF73A, 0xF77D, 
    0xF789, 0xF7A4, 0xF7CA, 0xF7FA, 0xF832, 0xF871, 0xF88F, 0xF8C9, 0xF903, 0xF939, 0xF96B, 0xF998, 0xF9BE, 0xF9DC, 
    0xF9D8, 0xF9E3, 0xF9E4, 0xF9DE, 0xF9D3, 0xF9DD, 0xF9C9, 0xF9B0, 0xF994, 0xF974, 0xF951, 0xF92A, 0xF901, 0xF9A0, 
    0xFB20, 0xFD5E, 0x00C7, 0x0433, 0x074B, 0x09D6, 0x0BB3, 0x0D00, 0x0DA7, 0x0D67, 0x0C2E, 0x09DC, 0x0650, 0x0235, 
    0xFC4F, 0xF853, 0xF67E, 0xFFFC, 0x0018, 0x0204, 0x01FC, 0x01F3, 0x01E8, 0x01DC, 0x01D1, 0x01C6, 0x01AC, 0x01A7, 
    0x01A8, 0x01C0, 0x01CA, 0x01D9, 0x01EC, 0x0203, 0x021B, 0x0232, 0x0248, 0x0244, 0x0248, 0x0246, 0x0234, 0x022A, 
    0x0220, 0x0218, 0x0217, 0x021F, 0x0231, 0x0231, 0x0238, 0x0228, 0x0221, 0xFE83, 0xFE89, 0xFE95, 0xFEA8, 0xFEBF, 
    0xFED9, 0xFEF7, 0xFF03, 0xFF1E, 0xFF38, 0xFF52, 0xFF69, 0xFF7D, 0xFF8E, 0xFF9C, 0xFF96, 0xFF9B, 0xFF9C, 0xFF99, 
    0xFF94, 0xFF9C, 0xFF92, 0xFF87, 0xFF7A, 0xFF6B, 0xFF5B, 0xFF49, 0xFF36, 0xFEE6, 0xFE7D, 0xFCDB, 0xFADE, 0xF8D8, 
    0xF6F9, 0xF535, 0xF3D7, 0xF2E0, 0xF284, 0xF30B, 0xF46F, 0xF678, 0xF8DC, 0xFB3B, 0xFD4F, 0xFDE0, 0xFFEC, 0x9348, 
    0x935A, 0x938C, 0x93DC, 0x9448, 0x94CD, 0x9569, 0x9618, 0x96D9, 0x97A8, 0x9884, 0x9968, 0x9A54, 0x9B44, 0x9C35, 
    0x9D26, 0x9E13, 0x9EF9, 0x9FD7, 0xA0AA, 0xA16F, 0xA223, 0xA2C4, 0xA35C, 0xA3DA, 0xA417, 0xA3EA, 0xA329, 0xA185, 
    0x9F19, 0x9C5A, 0x99BC, 0x97B5, 0x96B9, 0x96FC, 0x9827, 0x99DF, 0x9BC9, 0x9D88, 0x9EC2, 0x9F1C, 0x9ED2, 0x9E61, 
    0x9DCE, 0x9D1E, 0x9C55, 0x9B77, 0x9A89, 0x9990, 0x9890, 0x978E, 0x968E, 0x9594, 0x94A6, 0x93C8, 0x92FE, 0x924D, 
    0x91B9, 0x9178, 0x91A1, 0x920D, 0x9292, 0x9309, 0x9348, 0x9348, 0x9348, 0x9348, 0x9348, 0x9348, 0x9348, 0x9348, 
    0x9348, 0x9348, 0x9348, 0x9348, 0x9348, 0x9348, 0x9348, 0x9348, 0x9348, 0x365A, 0x35CC, 0x3441, 0x31E6, 0x2EE8, 
    0x2B72, 0x27B3, 0x23D7, 0x200B, 0x1C7D, 0x1957, 0x16C9, 0x14A0, 0x128E, 0x1097, 0x0EBD, 0x0D03, 0x0B6C, 0x09FA, 
    0x08B0, 0x0791, 0x069F, 0x05DE, 0x0557, 0x0554, 0x0639, 0x0867, 0x0C42, 0x130E, 0x1C9D, 0x2727, 0x30E7, 0x3814, 
    0x3AE9, 0x3887, 0x3242, 0x2999, 0x200C, 0x171C, 0x1048, 0x0D10, 0x0C64, 0x0C2E, 0x0C63, 0x0CF9, 0x0DE7, 0x0F21, 
    0x109E, 0x1252, 0x1435, 0x163C, 0x185B, 0x1A8B, 0x1CBE, 0x1EED, 0x210C, 0x2311, 0x24F2, 0x2760, 0x2AB5, 0x2E69, 
    0x31F2, 0x34C5, 0x365A, 0x365A, 0x365A, 0x365A, 0x365A, 0x365A, 0x365A, 0x365A, 0x365A, 0x365A, 0x365A, 0x365A, 
    0x365A, 0x365A, 0x365A, 0x365A, 0x365A, 0xF658, 0xF733, 0xF997, 0xFD42, 0x01F0, 0x0760, 0x0D4F, 0x137A, 0x199E, 
    0x1F79, 0x24C8, 0x2948, 0x2CB8, 0x2F75, 0x31FE, 0x343B, 0x3616, 0x3779, 0x384D, 0x387B, 0x37EE, 0x368F, 0x3446, 
    0x2DE9, 0x228B, 0x1574, 0x09EA, 0x0338, 0x0167, 0x01F8, 0x0461, 0x0815, 0x0C8C, 0x1139, 0x170B, 0x1EAE, 0x272E, 
    0x2F9D, 0x3707, 0x3C7E, 0x3F0F, 0x3FAF, 0x3FF4, 0x3FE4, 0x3F81, 0x3ED0, 0x3DD6, 0x3C95, 0x3B13, 0x3953, 0x375A, 
    0x352A, 0x32C9, 0x303B, 0x2D83, 0x2AA6, 0x27A7, 0x248B, 0x1F36, 0x16AD, 0x0CA0, 0x02C1, 0xFAC3, 0xF658, 0xF658, 
    0xF658, 0xF658, 0xF658, 0xF658, 0xF658, 0xF658, 0xF658, 0xF658, 0xF658, 0xF658, 0xF658, 0xF658, 0xF658, 0xF658, 
    0xF658, 0xFFFC, 0x0031, 0x00CA, 0x01BF, 0x0308, 0x049C, 0x0674, 0x0887, 0x0ACD, 0x0D3D, 0x0FD0, 0x127E, 0x153D, 
    0x1807, 0x1AD2, 0x1D96, 0x204C, 0x22EB, 0x256B, 0x27C3, 0x29EC, 0x2BDD, 0x2D8E, 0x2EF7, 0x3010, 0x2766, 0x181D, 
    0x09B2, 0xFECB, 0xFA87, 0xF98C, 0xFDB8, 0x10A3, 0x23AA, 0x294C, 0x2BBB, 0x2C05, 0x2B3A, 0x2A2A, 0x28F7, 0x27A5, 
    0x2636, 0x24AE, 0x2312, 0x2165, 0x1FAA, 0x1DE6, 0x1C1C, 0x1A4F, 0x1884, 0x16BE, 0x1501, 0x1351, 0x11B0, 0x1024, 
    0x0EAF, 0x0D55, 0x0C1A, 0x0B02, 0x0A03, 0x090F, 0x0827, 0x074B, 0x067B, 0x05B8, 0x0500, 0x0454, 0x03B5, 0x0321, 
    0x029A, 0x021F, 0x01B1, 0x014F, 0x00F9, 0x00B0, 0x0073, 0x0042, 0x001F, 0x0007, 0xFFFD, 0x9C2E, 0x9C25, 0x9C0B, 
    0x9BE2, 0x9BAC, 0x9B6B, 0x9B21, 0x9ACF, 0x9A78, 0x9A1D, 0x99C1, 0x9964, 0x990A, 0x98B4, 0x9863, 0x981B, 0x97CB, 
    0x976B, 0x9700, 0x9690, 0x9623, 0x95C0, 0x956C, 0x952F, 0x950F, 0x9512, 0x9540, 0x9676, 0x98C9, 0x9B13, 0x9C2E, 
    0x9C4D, 0x9C6B, 0x9C86, 0x9C9E, 0x9CB4, 0x9CC7, 0x9CD9, 0x9CE8, 0x9CF6, 0x9D01, 0x9D0A, 0x9D12, 0x9D18, 0x9D1C, 
    0x9D1F, 0x9D20, 0x9D20, 0x9D1F, 0x9D1C, 0x9D19, 0x9D14, 0x9D0E, 0x9D07, 0x9D00, 0x9CF8, 0x9CEF, 0x9CE6, 0x9CDC, 
    0x9CD1, 0x9CC7, 0x9CBC, 0x9CB1, 0x9CA6, 0x9C9B, 0x9C90, 0x9C85, 0x9C7A, 0x9C70, 0x9C66, 0x9C5D, 0x9C54, 0x9C4C, 
    0x9C45, 0x9C3F, 0x9C39, 0x9C35, 0x9C31, 0x9C2F, 0x9C2E, 0x3DEE, 0x3DF7, 0x3E10, 0x3E38, 0x3E6E, 0x3EB1, 0x3EFE, 
    0x3F56, 0x3FB6, 0x401D, 0x4089, 0x40FB, 0x416F, 0x41E5, 0x425C, 0x42D2, 0x4363, 0x4423, 0x4503, 0x45F6, 0x46EC, 
    0x47D7, 0x48A8, 0x4952, 0x49C5, 0x49F3, 0x49CE, 0x47CF, 0x43D1, 0x3FDA, 0x3DEE, 0x3DB7, 0x3D85, 0x3D57, 0x3D2E, 
    0x3D08, 0x3CE6, 0x3CC8, 0x3CAE, 0x3C97, 0x3C84, 0x3C74, 0x3C66, 0x3C5C, 0x3C55, 0x3C50, 0x3C4E, 0x3C4E, 0x3C50, 
    0x3C55, 0x3C5B, 0x3C63, 0x3C6D, 0x3C79, 0x3C85, 0x3C93, 0x3CA3, 0x3CB3, 0x3CC4, 0x3CD5, 0x3CE8, 0x3CFA, 0x3D0D, 
    0x3D20, 0x3D33, 0x3D46, 0x3D58, 0x3D6A, 0x3D7C, 0x3D8D, 0x3D9D, 0x3DAB, 0x3DB9, 0x3DC6, 0x3DD1, 0x3DDA, 0x3DE2, 
    0x3DE8, 0x3DEC, 0x3DEE, 0xD8E3, 0xD8E3, 0xD8E2, 0xD8DF, 0xD8DB, 0xD8D5, 0xD8CB, 0xD8BF, 0xD8AF, 0xD89A, 0xD881, 
    0xD862, 0xD83E, 0xD814, 0xD7E2, 0xD7AA, 0xD759, 0xD6E6, 0xD65A, 0xD5BD, 0xD51A, 0xD479, 0xD3E5, 0xD366, 0xD306, 
    0xD2CD, 0xD2C6, 0xD3C1, 0xD5D0, 0xD7E2, 0xD8E3, 0xD8FF, 0xD919, 0xD930, 0xD946, 0xD959, 0xD96B, 0xD97A, 0xD988, 
    0xD993, 0xD99D, 0xD9A6, 0xD9AC, 0xD9B2, 0xD9B6, 0xD9B8, 0xD9B9, 0xD9B9, 0xD9B8, 0xD9B6, 0xD9B2, 0xD9AE, 0xD9A9, 
    0xD9A3, 0xD99D, 0xD995, 0xD98D, 0xD985, 0xD97C, 0xD973, 0xD96A, 0xD960, 0xD957, 0xD94D, 0xD943, 0xD93A, 0xD930, 
    0xD927, 0xD91E, 0xD915, 0xD90D, 0xD905, 0xD8FE, 0xD8F8, 0xD8F2, 0xD8ED, 0xD8E9, 0xD8E6, 0xD8E4, 0xD8E3, 0x0BD1, 
    0x0BCC, 0x0BC0, 0x0BAE, 0x0B98, 0x0B81, 0x0B69, 0x0B53, 0x0B41, 0x0B35, 0x0B30, 0x0B35, 0x0B46, 0x0B64, 0x0B92, 
    0x0BD1, 0x0C38, 0x0CD5, 0x0D9A, 0x0E7A, 0x0F67, 0x1055, 0x1135, 0x11FA, 0x1298, 0x1301, 0x1326, 0x1208, 0x0F8D, 
    0x0D0A, 0x0BD1, 0x0BAF, 0x0B90, 0x0B74, 0x0B5A, 0x0B43, 0x0B2E, 0x0B1B, 0x0B0B, 0x0AFD, 0x0AF1, 0x0AE7, 0x0ADF, 
    0x0AD9, 0x0AD4, 0x0AD1, 0x0AD0, 0x0AD0, 0x0AD1, 0x0AD4, 0x0AD8, 0x0ADD, 0x0AE3, 0x0AEA, 0x0AF2, 0x0AFB, 0x0B04, 
    0x0B0E, 0x0B18, 0x0B23, 0x0B2F, 0x0B3A, 0x0B46, 0x0B51, 0x0B5D, 0x0B69, 0x0B74, 0x0B7F, 0x0B8A, 0x0B95, 0x0B9E, 
    0x0BA8, 0x0BB0, 0x0BB8, 0x0BBF, 0x0BC5, 0x0BC9, 0x0BCD, 0x0BD0, 0x0BD1, 0x9D66, 0x9D61, 0x9D52, 0x9D3B, 0x9D1D, 
    0x9CFA, 0x9CD4, 0x9CAB, 0x9C81, 0x9C58, 0x9C31, 0x9C0E, 0x9BF1, 0x9BDA, 0x9BCB, 0x9BC5, 0x9BC6, 0x9BC6, 0x9BC8, 
    0x9BCA, 0x9BCC, 0x9BCF, 0x9BD3, 0x9BD7, 0x9BDB, 0x9BE0, 0x9BE6, 0x9BEB, 0x9BF1, 0x9BF8, 0x9BFF, 0x9C06, 0x9C0D, 
    0x9C15, 0x9C1D, 0x9C25, 0x9C2E, 0x9C36, 0x9C3F, 0x9C48, 0x9C51, 0x9C5B, 0x9C64, 0x9C6E, 0x9C77, 0x9C81, 0x9C8B, 
    0x9C94, 0x9C9E, 0x9CA8, 0x9CB1, 0x9CBB, 0x9CC5, 0x9CCE, 0x9CD7, 0x9CE1, 0x9CEA, 0x9CF3, 0x9CFB, 0x9D04, 0x9D0C, 
    0x9D14, 0x9D1C, 0x9D23, 0x9D2B, 0x9D32, 0x9D38, 0x9D3E, 0x9D44, 0x9D4A, 0x9D4F, 0x9D53, 0x9D57, 0x9D5B, 0x9D5E, 
    0x9D61, 0x9D63, 0x9D65, 0x9D66, 0x9D66, 0x3D86, 0x3D83, 0x3D7C, 0x3D70, 0x3D61, 0x3D50, 0x3D3C, 0x3D28, 0x3D13, 
    0x3CFF, 0x3CEB, 0x3CDA, 0x3CCB, 0x3CBF, 0x3CB8, 0x3CB5, 0x3CB5, 0x3CB6, 0x3CB7, 0x3CB8, 0x3CB9, 0x3CBA, 0x3CBC, 
    0x3CBE, 0x3CC0, 0x3CC3, 0x3CC5, 0x3CC8, 0x3CCB, 0x3CCF, 0x3CD2, 0x3CD6, 0x3CD9, 0x3CDD, 0x3CE1, 0x3CE5, 0x3CE9, 
    0x3CEE, 0x3CF2, 0x3CF7, 0x3CFB, 0x3D00, 0x3D05, 0x3D09, 0x3D0E, 0x3D13, 0x3D18, 0x3D1D, 0x3D22, 0x3D26, 0x3D2B, 
    0x3D30, 0x3D35, 0x3D3A, 0x3D3E, 0x3D43, 0x3D47, 0x3D4C, 0x3D50, 0x3D55, 0x3D59, 0x3D5D, 0x3D61, 0x3D64, 0x3D68, 
    0x3D6B, 0x3D6F, 0x3D72, 0x3D75, 0x3D77, 0x3D7A, 0x3D7C, 0x3D7E, 0x3D80, 0x3D82, 0x3D83, 0x3D84, 0x3D85, 0x3D86, 
    0x3D86, 0xD87B, 0xD885, 0xD8A3, 0xD8D1, 0xD90D, 0xD953, 0xD9A0, 0xD9F2, 0xDA45, 0xDA97, 0xDAE5, 0xDB2B, 0xDB66, 
    0xDB94, 0xDBB2, 0xDBBD, 0xDBBC, 0xDBBB, 0xDBB8, 0xDBB4, 0xDBAF, 0xDBA9, 0xDBA1, 0xDB99, 0xDB91, 0xDB87, 0xDB7C, 
    0xDB71, 0xDB65, 0xDB58, 0xDB4A, 0xDB3C, 0xDB2D, 0xDB1E, 0xDB0E, 0xDAFD, 0xDAEC, 0xDADB, 0xDAC9, 0xDAB7, 0xDAA5, 
    0xDA92, 0xDA7F, 0xDA6C, 0xDA59, 0xDA46, 0xDA32, 0xDA1F, 0xDA0C, 0xD9F8, 0xD9E5, 0xD9D2, 0xD9BE, 0xD9AC, 0xD999, 
    0xD986, 0xD974, 0xD962, 0xD951, 0xD940, 0xD92F, 0xD91F, 0xD910, 0xD901, 0xD8F2, 0xD8E4, 0xD8D7, 0xD8CB, 0xD8BF, 
    0xD8B4, 0xD8AA, 0xD8A1, 0xD899, 0xD891, 0xD88B, 0xD885, 0xD881, 0xD87E, 0xD87C, 0xD87B, 0x0000, 
};

JointIndex sHorseGanonIdleAnimJointIndices[] = {
    { 0x0000, 0x0001, 0x0002 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x0007 },
    { 0x0000, 0x0000, 0x0057 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x0004 },
    { 0x0000, 0x0000, 0x00A7 },
    { 0x00F7, 0x0147, 0x0197 },
    { 0x01E7, 0x0237, 0x0287 },
    { 0x02D7, 0x0327, 0x0377 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0005 },
    { 0x0000, 0x0000, 0x03C7 },
    { 0x0000, 0x0000, 0x0417 },
    { 0x0000, 0x0000, 0x0467 },
    { 0x0000, 0x0000, 0x04B7 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0005 },
    { 0x0000, 0x0000, 0x0507 },
    { 0x0000, 0x0000, 0x0557 },
    { 0x0000, 0x0000, 0x05A7 },
    { 0x0000, 0x0000, 0x05F7 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x0647 },
    { 0x0000, 0x0000, 0x0697 },
    { 0x0000, 0x0000, 0x06E7 },
    { 0x0000, 0x0000, 0x0737 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x0787 },
    { 0x0000, 0x0000, 0x07D7 },
    { 0x0000, 0x0000, 0x0827 },
    { 0x0000, 0x0000, 0x0006 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gHorseGanonIdleAnim = { 
    { 80 }, sHorseGanonIdleAnimFrameData,
    sHorseGanonIdleAnimJointIndices, 7
};

u8 object_horse_ganon_possiblePadding_004AB4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sHorseGanonWhinnyAnimFrameData[] = {
    0x0000, 0x15B8, 0xF853, 0x4000, 0x8507, 0x8C17, 0xD113, 0xD37A, 0xD660, 0xD950, 0xDBD3, 0xDD71, 0xDDB5, 0xDC71, 
    0xDA0B, 0xD6E4, 0xD35C, 0xCFD6, 0xCCB3, 0xCA54, 0xC91A, 0xC8BA, 0xC8A3, 0xC8CC, 0xC92A, 0xC9B5, 0xCA64, 0xCB2E, 
    0xCC09, 0xCCED, 0xCDD0, 0xCEA9, 0xCF6F, 0xD019, 0xD09E, 0xD0F4, 0xEF5E, 0xF45A, 0xFA24, 0x005A, 0x0699, 0x0C7F, 
    0x11AA, 0x15B7, 0x1843, 0x18ED, 0x13E2, 0x0865, 0xFAB3, 0xEF0B, 0xE9AA, 0xEBDF, 0xF2AD, 0xFBE0, 0x0546, 0x0CAB, 
    0x0FDC, 0x0F3D, 0x0CF0, 0x095D, 0x04F0, 0x000F, 0xFB26, 0xF69C, 0xF2DD, 0xF04F, 0xEEE2, 0xEE84, 0xEE1C, 0xEDAD, 
    0xED39, 0xECC2, 0xEC49, 0xEBD2, 0xEB5F, 0xEAF1, 0xEA8A, 0xEA2D, 0xE9DD, 0xE99A, 0xE968, 0xE949, 0xE93D, 0xE955, 
    0xE998, 0xE9FD, 0xEA7D, 0xEB11, 0xEBB1, 0xEC55, 0xECF7, 0xED8D, 0xEE11, 0xEE7A, 0xEEC2, 0xEEE1, 0x0000, 0x011F, 
    0x0271, 0x03C8, 0x04F5, 0x05CB, 0x061D, 0x0614, 0x05FB, 0x05D4, 0x059F, 0x055F, 0x0515, 0x04C2, 0x0468, 0x0409, 
    0x03A6, 0x0341, 0x02DB, 0x0276, 0x0213, 0x01B4, 0x015B, 0x0108, 0x00BE, 0x007E, 0x0049, 0x0021, 0x0009, 0x0000, 
    0xE3D2, 0xE441, 0xE4C1, 0xE549, 0xE5D1, 0xE653, 0xE6C7, 0xE726, 0xE767, 0xE785, 0xE77D, 0xE75A, 0xE720, 0xE6D4, 
    0xE67C, 0xE61C, 0xE5B9, 0xE559, 0xE501, 0xE4B5, 0xE47B, 0xE450, 0xE42D, 0xE412, 0xE3FD, 0xE3ED, 0xE3E2, 0xE3DA, 
    0xE3D5, 0xE3D2, 0xF15D, 0xF313, 0xF4EF, 0xF6DD, 0xF8C8, 0xFA9D, 0xFC48, 0xFDB4, 0xFECF, 0xFFAB, 0x0068, 0x0102, 
    0x0175, 0x01BE, 0x01D9, 0x01C2, 0x0175, 0x00EF, 0x0019, 0xFEEB, 0xFD79, 0xFBD7, 0xFA1A, 0xF854, 0xF699, 0xF4FF, 
    0xF397, 0xF277, 0xF1B2, 0xF15D, 0x0000, 0xFF51, 0xFE6E, 0xFD76, 0xFC86, 0xFBBD, 0xFB39, 0xFB17, 0xFB76, 0x0184, 
    0x0699, 0xFE8C, 0xF656, 0xF793, 0xFBB5, 0xFE8C, 0xFC90, 0xFA4C, 0xFBB5, 0xFE2A, 0xFFB6, 0x0016, 0x0057, 0x007E, 
    0x008E, 0x008C, 0x007C, 0x0062, 0x0042, 0x0020, 0x0000, 0xFEF3, 0xFD5E, 0xFB90, 0xF9DC, 0xF892, 0xF803, 0xF881, 
    0xFA5D, 0x0BCE, 0x1A77, 0x04B0, 0xEEAD, 0xF3B0, 0x00ED, 0x0985, 0x0227, 0xF895, 0xF89D, 0xFB55, 0xFD5E, 0xFDEC, 
    0xFE70, 0xFEE7, 0xFF50, 0xFFA7, 0xFFEB, 0x0018, 0x002C, 0x0025, 0x4274, 0x411B, 0x3F99, 0x3E0E, 0x3C98, 0x3B5A, 
    0x3A71, 0x39FF, 0x3A24, 0x3C89, 0x4137, 0x45E0, 0x4831, 0x487F, 0x48A9, 0x48B3, 0x489F, 0x4871, 0x482C, 0x47D3, 
    0x476A, 0x46F3, 0x4672, 0x45EA, 0x455E, 0x44D1, 0x4446, 0x43C1, 0x4345, 0x42D5, 0x9348, 0x94CF, 0x961D, 0x9782, 
    0x98F8, 0x9A7A, 0x9C01, 0x9D89, 0x9F0A, 0xA019, 0xA1A7, 0xA32A, 0xA496, 0xA5D3, 0xA6D3, 0xA77D, 0xA79E, 0xA717, 
    0xA5FD, 0xA473, 0xA299, 0xA08F, 0x9E61, 0x9C18, 0x99DA, 0x97C4, 0x95F0, 0x947A, 0x937A, 0x9352, 0x365A, 0x3558, 
    0x344C, 0x332B, 0x31F7, 0x30B6, 0x2F6D, 0x2E22, 0x2CD9, 0x2B97, 0x2A69, 0x2950, 0x2852, 0x2773, 0x26C1, 0x264A, 
    0x2622, 0x2676, 0x2754, 0x289A, 0x2A29, 0x2BE6, 0x2DB9, 0x2F8A, 0x3147, 0x32DB, 0x3436, 0x3548, 0x3601, 0x3651, 
    0xF658, 0xF67E, 0xF6A9, 0xF6DD, 0xF718, 0xF758, 0xF79B, 0xF7DE, 0xF820, 0xF810, 0xF7DD, 0xF781, 0xF704, 0xF676, 
    0xF5E9, 0xF586, 0xF599, 0xF5EB, 0xF61B, 0xF62C, 0xF622, 0xF5FD, 0xF5D9, 0xF5D1, 0xF5DC, 0xF5F3, 0xF610, 0xF62D, 
    0xF647, 0xF658, 0xFFFC, 0xFDF0, 0xFDEB, 0xFDEB, 0xFDEE, 0xFDF4, 0xFDFB, 0xFE03, 0xFE0B, 0x020A, 0x020B, 0x0209, 
    0x0204, 0x024E, 0x02BF, 0x0311, 0x033A, 0x033B, 0x031E, 0x02EB, 0x02A4, 0x024C, 0x01FE, 0x01FD, 0x01FE, 0x0201, 
    0x0203, 0x0206, 0x0208, 0xFFFE, 0x9348, 0x94A2, 0x95C1, 0x96F3, 0x9834, 0x99C0, 0x9B2C, 0x9C9A, 0x9E04, 0x9F9C, 
    0xA0F3, 0xA22E, 0xA344, 0xA42C, 0xA4DE, 0xA54E, 0xA576, 0xA521, 0xA436, 0xA2D6, 0xA11E, 0x9EFB, 0x9D02, 0x9B07, 
    0x98EB, 0x974D, 0x95E0, 0x94BB, 0x93F3, 0x9348, 0x365A, 0x3561, 0x3462, 0x3351, 0x3233, 0x30D4, 0x2F91, 0x2E4C, 
    0x2D0C, 0x2BA5, 0x2A77, 0x2962, 0x286E, 0x27A2, 0x2707, 0x26A4, 0x2681, 0x26CC, 0x2799, 0x28CE, 0x2A50, 0x2C32, 
    0x2DF0, 0x2FB0, 0x318E, 0x3300, 0x3445, 0x354A, 0x35FC, 0x365A, 0xF658, 0xF6C0, 0xF72B, 0xF79E, 0xF817, 0xF872, 
    0xF8DD, 0xF943, 0xF9A0, 0xF9D9, 0xFA1E, 0xFA59, 0xFA88, 0xFAAE, 0xFAC8, 0xFAD9, 0xFADF, 0xFAD3, 0xFAB0, 0xFA77, 
    0xFA28, 0xF9DE, 0xF960, 0xF8D5, 0xF85E, 0xF7C2, 0xF739, 0xF6CB, 0xF680, 0xF658, 0xFFFC, 0xFE2A, 0xFE5F, 0xFE97, 
    0xFED2, 0xFEFC, 0xFF2E, 0xFF5D, 0xFF88, 0xFF9E, 0xFFBC, 0xFFD4, 0xFFE8, 0xFFF7, 0x0001, 0x0007, 0x0009, 0x0004, 
    0xFFF6, 0xFFDE, 0xFFBD, 0xFFA0, 0xFF67, 0xFF26, 0xFEF0, 0xFEA5, 0xFE63, 0xFE2E, 0xFE0A, 0xFFFC, 0x0000, 0x0007, 
    0x0018, 0x002F, 0x0047, 0x005D, 0x006B, 0x006D, 0x005F, 0x003C, 0x0000, 0xFF8A, 0xFED0, 0xFDEE, 0xFD01, 0xFC25, 
    0xFB78, 0xFB15, 0xFB26, 0xFBA0, 0xFC50, 0xFD06, 0xFD8E, 0xFDF3, 0xFE5D, 0xFEC6, 0xFF28, 0xFF7E, 0xFFC3, 0xFFF0, 
    0x9C2E, 0x9939, 0x95E7, 0x929F, 0x8FC7, 0x8DC7, 0x8D06, 0x901C, 0x9691, 0x9C2E, 0x9C2E, 0x9780, 0x921F, 0x8F8C, 
    0x8FB0, 0x9017, 0x90B7, 0x9185, 0x927A, 0x938B, 0x94AF, 0x95DD, 0x970A, 0x982F, 0x9940, 0x9A34, 0x9B03, 0x9BA3, 
    0x9C09, 0x9C2E, 0x3DEE, 0x4257, 0x4777, 0x4CA1, 0x5128, 0x545F, 0x5597, 0x50C6, 0x46B2, 0x3DEE, 0x3DEE, 0x40A6, 
    0x43C5, 0x4544, 0x452F, 0x44F3, 0x4496, 0x441E, 0x4390, 0x42F2, 0x4248, 0x4199, 0x40EA, 0x4040, 0x3FA2, 0x3F14, 
    0x3E9B, 0x3E3F, 0x3E03, 0x3DEE, 0xD8E3, 0xD2B3, 0xCBA8, 0xC4A3, 0xBE87, 0xBA37, 0xB894, 0xBF29, 0xCCEC, 0xD8E3, 
    0xD8E3, 0xDF39, 0xE683, 0xEA00, 0xE9CE, 0xE943, 0xE86B, 0xE753, 0xE608, 0xE495, 0xE30A, 0xE171, 0xDFD9, 0xDE4D, 
    0xDCDB, 0xDB8F, 0xDA77, 0xD99F, 0xD914, 0xD8E3, 0x0BD1, 0x14D4, 0x1F26, 0x2976, 0x3274, 0x38D0, 0x3B39, 0x3191, 
    0x1D60, 0x0BD1, 0x0BD1, 0x07BE, 0x030E, 0x00D1, 0x00F0, 0x014A, 0x01D5, 0x0289, 0x035E, 0x044C, 0x054A, 0x0651, 
    0x0757, 0x0856, 0x0944, 0x0A19, 0x0ACD, 0x0B58, 0x0BB1, 0x0BD1, 0x9D66, 0x9D53, 0x9D46, 0x9D40, 0x9D3E, 0x9D3E, 
    0x9D40, 0x9D41, 0x9D40, 0x9D3C, 0x9D32, 0x9D21, 0x9D08, 0x9CE5, 0x9CB5, 0x9C79, 0x9C2E, 0x9B26, 0x9952, 0x9799, 
    0x96E2, 0x972A, 0x97C3, 0x9898, 0x9990, 0x9A96, 0x9B91, 0x9C6B, 0x9D0D, 0x9D60, 0x3D86, 0x3D8C, 0x3D8F, 0x3D8E, 
    0x3D8B, 0x3D86, 0x3D81, 0x3D7C, 0x3D78, 0x3D77, 0x3D78, 0x3D7D, 0x3D87, 0x3D96, 0x3DAC, 0x3DC9, 0x3DEE, 0x3E79, 
    0x3F74, 0x4062, 0x40C8, 0x40A7, 0x405C, 0x3FF3, 0x3F76, 0x3EF3, 0x3E74, 0x3E05, 0x3DB3, 0x3D89, 0xD87B, 0xD84F, 
    0xD822, 0xD7F5, 0xD7CA, 0xD7A1, 0xD77E, 0xD761, 0xD74B, 0xD73F, 0xD73F, 0xD74A, 0xD765, 0xD78E, 0xD7CA, 0xD818, 
    0xD87B, 0xDA0E, 0xDCF8, 0xDFC7, 0xE109, 0xE0C3, 0xE007, 0xDEF4, 0xDDAC, 0xDC4E, 0xDAFB, 0xD9D2, 0xD8F5, 0xD883, 
    0x0000, 0x0033, 0x0058, 0x0072, 0x0081, 0x0088, 0x0087, 0x007F, 0x0073, 0x0063, 0x0051, 0x003E, 0x002B, 0x001A, 
    0x000D, 0x0003, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0BD1, 0x0BFB, 0x0C22, 0x0C46, 0x0C65, 0x0C80, 0x0C96, 0x0CA6, 0x0CAF, 0x0CB2, 0x0CAD, 0x0CA0, 
    0x0C8A, 0x0C6B, 0x0C42, 0x0C0F, 0x0BD1, 0x0AD7, 0x0909, 0x074C, 0x0685, 0x06B0, 0x0725, 0x07CF, 0x089A, 0x0972, 
    0x0A45, 0x0AFC, 0x0B85, 0x0BCC, 
};

JointIndex sHorseGanonWhinnyAnimJointIndices[] = {
    { 0x0000, 0x0001, 0x0002 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x0006 },
    { 0x0000, 0x0000, 0x0024 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x0004 },
    { 0x0000, 0x0000, 0x0042 },
    { 0x0000, 0x0060, 0x007E },
    { 0x0000, 0x0000, 0x009C },
    { 0x00BA, 0x00D8, 0x00F6 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0005 },
    { 0x0000, 0x0000, 0x0114 },
    { 0x0000, 0x0000, 0x0132 },
    { 0x0000, 0x0000, 0x0150 },
    { 0x0000, 0x0000, 0x016E },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0005 },
    { 0x0000, 0x0000, 0x018C },
    { 0x0000, 0x0000, 0x01AA },
    { 0x0000, 0x0000, 0x01C8 },
    { 0x0000, 0x0000, 0x01E6 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0204 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x0222 },
    { 0x0000, 0x0000, 0x0240 },
    { 0x0000, 0x0000, 0x025E },
    { 0x0000, 0x0000, 0x027C },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x029A },
    { 0x0000, 0x0000, 0x02B8 },
    { 0x0000, 0x0000, 0x02D6 },
    { 0x02F4, 0x0000, 0x0312 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gHorseGanonWhinnyAnim = { 
    { 30 }, sHorseGanonWhinnyAnimFrameData,
    sHorseGanonWhinnyAnimJointIndices, 6
};

u8 object_horse_ganon_possiblePadding_005274[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sHorseGanonWalkingAnimFrameData[] = {
    0x0000, 0xF853, 0x4000, 0x8507, 0xEEE2, 0x8C17, 0x1487, 0x1499, 0x14C7, 0x1509, 0x1554, 0x159F, 0x15E0, 0x160E, 
    0x161F, 0x1619, 0x1606, 0x15EB, 0x15C9, 0x15A4, 0x157D, 0x1558, 0x1537, 0x151C, 0x150B, 0x1505, 0x1517, 0x1544, 
    0x1581, 0x15C2, 0x15FC, 0x1625, 0x1630, 0x1621, 0x1602, 0x15D8, 0x15A7, 0x1570, 0x1539, 0x1503, 0x14D4, 0xDACC, 
    0xDA70, 0xD981, 0xD83B, 0xD6D8, 0xD592, 0xD4A4, 0xD447, 0xD46E, 0xD4D9, 0xD578, 0xD63D, 0xD718, 0xD7FB, 0xD8D7, 
    0xD99C, 0xDA3B, 0xDAA5, 0xDACC, 0xDA70, 0xD981, 0xD83B, 0xD6D8, 0xD592, 0xD4A4, 0xD447, 0xD476, 0xD4F5, 0xD5B0, 
    0xD693, 0xD78A, 0xD881, 0xD964, 0xDA1F, 0xDA9E, 0x0000, 0x00FA, 0x01F3, 0x02E6, 0x03D0, 0x04AA, 0x0572, 0x0622, 
    0x06B5, 0x0729, 0x0777, 0x079B, 0x0792, 0x0755, 0x06DC, 0x0623, 0x0533, 0x0416, 0x02D5, 0x0179, 0x000C, 0xFE96, 
    0xFD20, 0xFBB4, 0xFA5B, 0xF91E, 0xF806, 0xF71C, 0xF66A, 0xF5F8, 0xF5D0, 0xF5F8, 0xF66A, 0xF71D, 0xF806, 0x0000, 
    0xFDCB, 0xFA61, 0xF754, 0xF639, 0xF6BB, 0xF777, 0xF864, 0xF97A, 0xFAB2, 0xFC03, 0xFD66, 0xFED4, 0x0044, 0x01AE, 
    0x030B, 0x0452, 0x057D, 0x0683, 0x075C, 0x0801, 0x086A, 0x088E, 0x0860, 0x07DB, 0x070B, 0x05FD, 0x04BB, 0x0351, 
    0x01CA, 0x0032, 0xFE95, 0xFCFD, 0xFB76, 0xFA0C, 0xEF5E, 0xF0B6, 0xF1FB, 0xF2F9, 0xF379, 0xF348, 0xF24E, 0xF0C0, 
    0xEED4, 0xECC4, 0xEAC6, 0xE915, 0xE7E8, 0xE777, 0xE7CC, 0xE8B1, 0xEA04, 0xEBA0, 0xED5F, 0xEF1F, 0xF0BA, 0xF20D, 
    0xF2F3, 0xF348, 0xF2C6, 0xF16F, 0xEF8B, 0xED5F, 0xEB34, 0xE94F, 0xE7F9, 0xE777, 0xE7DF, 0xE8F5, 0xEA87, 0x0000, 
    0x0007, 0x001A, 0x0036, 0x0057, 0x007A, 0x009B, 0x00B6, 0x00C9, 0x00D1, 0x00CD, 0x00C2, 0x00B1, 0x009C, 0x0084, 
    0x0069, 0x004D, 0x0032, 0x0018, 0x0000, 0xFFE7, 0xFFCB, 0xFFAD, 0xFF8E, 0xFF71, 0xFF57, 0xFF42, 0xFF34, 0xFF2F, 
    0xFF40, 0xFF69, 0xFF9E, 0xFFD1, 0xFFF6, 0x0000, 0xEAC7, 0xEAA3, 0xEA42, 0xE9B7, 0xE911, 0xE862, 0xE7BD, 0xE731, 
    0xE6D0, 0xE6AC, 0xE6CA, 0xE71B, 0xE793, 0xE823, 0xE8C1, 0xE95D, 0xE9EC, 0xEA61, 0xEAAE, 0xEAC7, 0xEA9B, 0xEA2F, 
    0xE994, 0xE8DF, 0xE820, 0xE76C, 0xE6D4, 0xE66B, 0xE644, 0xE6A0, 0xE783, 0xE8A6, 0xE9C1, 0xEA8D, 0xEAC7, 0xFDFE, 
    0xFDF7, 0xFDE4, 0xFDC8, 0xFDA7, 0xFD84, 0xFD64, 0xFD48, 0xFD35, 0xFD2D, 0xFD33, 0xFD43, 0xFD5B, 0xFD77, 0xFD96, 
    0xFDB5, 0xFDD1, 0xFDE8, 0xFDF8, 0xFDFE, 0xFDF7, 0xFDE4, 0xFDC8, 0xFDA7, 0xFD84, 0xFD64, 0xFD48, 0xFD35, 0xFD2D, 
    0xFD3E, 0xFD67, 0xFD9C, 0xFDCF, 0xFDF4, 0xFDFE, 0x0000, 0x0003, 0x000C, 0x0019, 0x0028, 0x0038, 0x0047, 0x0053, 
    0x005C, 0x005F, 0x005D, 0x0056, 0x004B, 0x003E, 0x0030, 0x0022, 0x0015, 0x000A, 0x0003, 0x0000, 0x0004, 0x000F, 
    0x001E, 0x0030, 0x0041, 0x0051, 0x005B, 0x005F, 0x005B, 0x0051, 0x0041, 0x0030, 0x001E, 0x000F, 0x0004, 0x0000, 
    0x000A, 0x0026, 0x004D, 0x007C, 0x00AE, 0x00DD, 0x0104, 0x0120, 0x012A, 0x0122, 0x010B, 0x00EA, 0x00C1, 0x0095, 
    0x0069, 0x0040, 0x001F, 0x0008, 0x0000, 0x000D, 0x002F, 0x005E, 0x0095, 0x00CC, 0x00FB, 0x011D, 0x012A, 0x011D, 
    0x00FB, 0x00CC, 0x0095, 0x005E, 0x002F, 0x000D, 0x4617, 0x463B, 0x469B, 0x4726, 0x47CB, 0x4878, 0x491D, 0x49A8, 
    0x4A08, 0x4A2C, 0x4A0F, 0x49BF, 0x494A, 0x48BC, 0x4822, 0x4787, 0x46F9, 0x4684, 0x4635, 0x4617, 0x4644, 0x46BB, 
    0x4762, 0x4822, 0x48E1, 0x4989, 0x49FF, 0x4A2C, 0x49FF, 0x4989, 0x48E1, 0x4822, 0x4762, 0x46BB, 0x4644, 0x8C17, 
    0x8C17, 0x8C17, 0x8C17, 0x8C17, 0x8BA3, 0x8B2F, 0x8C17, 0x8F77, 0x943D, 0x9881, 0x9A5A, 0x971B, 0x90B1, 0x8C17, 
    0x8AF2, 0x8B12, 0x8BB5, 0x8C17, 0x8C17, 0x8C17, 0x8C17, 0x8C17, 0x8C17, 0x8C17, 0x8C17, 0x8C17, 0x8C17, 0x8C17, 
    0x8C17, 0x8C17, 0x8C17, 0x8C17, 0x8C17, 0x8C17, 0x8848, 0x8842, 0x8871, 0x8935, 0x8AEE, 0x8F4A, 0x9522, 0x9894, 
    0x97C7, 0x94E6, 0x9221, 0x91A7, 0x9610, 0x9D40, 0xA25C, 0xA40D, 0xA476, 0xA3EC, 0xA2C4, 0x9E8E, 0x9A3C, 0x9958, 
    0x995C, 0x9995, 0x994E, 0x985C, 0x971F, 0x95AF, 0x9429, 0x9266, 0x906A, 0x8E97, 0x8D07, 0x8B9F, 0x8A72, 0x303D, 
    0x3075, 0x30D6, 0x30F8, 0x3071, 0x2E5E, 0x2B5E, 0x2950, 0x28C5, 0x28DD, 0x2948, 0x29B8, 0x2A36, 0x2AEB, 0x2BC2, 
    0x2CB2, 0x2DB9, 0x2EC9, 0x2FD5, 0x31A8, 0x31DF, 0x2ED4, 0x2AB2, 0x2654, 0x2295, 0x1F57, 0x1C43, 0x19DD, 0x18AD, 
    0x19A1, 0x1C6A, 0x1FB8, 0x2388, 0x27DD, 0x2B67, 0xF932, 0xF955, 0xF9AD, 0xFA23, 0xFA9F, 0xFB3F, 0xFBF8, 0xFC75, 
    0xFC9A, 0xFC96, 0xFC81, 0xFC75, 0xFC75, 0xFC75, 0xFC75, 0xFBD4, 0xFAC8, 0xFA92, 0xFC75, 0x05C6, 0x108F, 0x165F, 
    0x1B3D, 0x1F29, 0x2222, 0x248A, 0x2642, 0x2682, 0x2485, 0x1D99, 0x1327, 0x0A95, 0x0648, 0x03DC, 0x018A, 0x0C9D, 
    0x0C64, 0x0BB6, 0x0A92, 0x08F3, 0x062F, 0x0293, 0xFF94, 0xFDB7, 0xFC51, 0xFB05, 0xF977, 0xF74F, 0xF4E8, 0xF2F2, 
    0xF08B, 0xEDB5, 0xEC79, 0xEEDF, 0xF552, 0xFE2A, 0x0853, 0x12B6, 0x1C3F, 0x23D9, 0x28F5, 0x2C05, 0x2D6D, 0x2D97, 
    0x2BC5, 0x277E, 0x218B, 0x1864, 0x0D92, 0x0672, 0x9894, 0x98DE, 0x9910, 0x982C, 0x9520, 0x90FD, 0x8DFC, 0x8D27, 
    0x8D73, 0x8DFC, 0x8E81, 0x8F3A, 0x8FF9, 0x9092, 0x90D7, 0x903F, 0x8F02, 0x8E13, 0x8E65, 0x9020, 0x9296, 0x9577, 
    0x9872, 0x9B38, 0x9D78, 0x9DC5, 0x9D78, 0x9E61, 0x9F8E, 0xA0B5, 0xA18B, 0xA216, 0xA23E, 0xA18B, 0x9F6C, 0x37FB, 
    0x372E, 0x354B, 0x3317, 0x30F3, 0x2E7D, 0x2B5A, 0x269D, 0x2132, 0x1D7F, 0x1BB9, 0x1A85, 0x19F5, 0x1A1D, 0x1B0D, 
    0x1E12, 0x22F7, 0x2792, 0x29B8, 0x2905, 0x26EC, 0x240E, 0x210B, 0x1E83, 0x1D17, 0x2011, 0x246C, 0x262A, 0x2766, 
    0x2878, 0x29B8, 0x2B2F, 0x2CC3, 0x2E9C, 0x3138, 0xF862, 0xFB1E, 0x0224, 0x0BAE, 0x15F4, 0x1F30, 0x259B, 0x287F, 
    0x28D0, 0x2743, 0x2491, 0x20BB, 0x1BA5, 0x15DA, 0x0FE5, 0x0A4F, 0x0449, 0xFE4E, 0xFAD3, 0xFA0E, 0xFA4B, 0xFB29, 
    0xFC45, 0xFD3C, 0xFDAD, 0xFC85, 0xFB3C, 0xFB63, 0xFBF2, 0xFC75, 0xFC75, 0xFB38, 0xF959, 0xF862, 0xF862, 0xF5CC, 
    0xFA9C, 0x0644, 0x149D, 0x217C, 0x28BA, 0x2A91, 0x2A50, 0x2872, 0x256F, 0x21C2, 0x1DE2, 0x1A4A, 0x1571, 0x0ED8, 
    0x0883, 0x0477, 0x07F5, 0x0CE4, 0x0D22, 0x0CB1, 0x0BBC, 0x0A71, 0x08FB, 0x0721, 0x04BC, 0x021A, 0xFF86, 0xFCC0, 
    0xF9E8, 0xF7D7, 0xF6BD, 0xF620, 0xF5DB, 0xF5CC, 0x92CF, 0x91FC, 0x9045, 0x8ED0, 0x8EBE, 0x91BD, 0x9689, 0x99DB, 
    0x9A57, 0x9998, 0x98D2, 0x9938, 0x9C03, 0xA02E, 0xA392, 0xA597, 0xA724, 0xA852, 0xA93B, 0xAA0B, 0xAADC, 0xABA8, 
    0xAC69, 0xAD19, 0xADB5, 0xAE35, 0xAE94, 0xAECD, 0xAEDB, 0xADEE, 0xABAA, 0xA8B5, 0xA4F9, 0xA062, 0x9B9C, 0x47B5, 
    0x46CB, 0x4479, 0x4168, 0x3E3D, 0x3A34, 0x359B, 0x32B0, 0x3227, 0x32C8, 0x33EA, 0x34E7, 0x35BF, 0x36B7, 0x378A, 
    0x3854, 0x3925, 0x39A7, 0x3984, 0x38BC, 0x379F, 0x3647, 0x34D0, 0x3356, 0x31F3, 0x30C4, 0x2FE2, 0x2F6B, 0x2F79, 
    0x32D2, 0x392E, 0x3E12, 0x40A1, 0x42EA, 0x44D8, 0xC625, 0xC6AB, 0xC81B, 0xCA42, 0xCCED, 0xD10B, 0xD632, 0xDA2F, 
    0xDCB8, 0xDEBB, 0xDFD4, 0xDFA2, 0xDC69, 0xD71C, 0xD35C, 0xD214, 0xD1B4, 0xD224, 0xD34F, 0xD52A, 0xD799, 0xDA6A, 
    0xDD6B, 0xE069, 0xE333, 0xE597, 0xE762, 0xE862, 0xE865, 0xE1AF, 0xD513, 0xCC37, 0xC925, 0xC748, 0xC656, 0x4302, 
    0x4426, 0x460B, 0x466C, 0x4302, 0x36EE, 0x2575, 0x1887, 0x1345, 0x111C, 0x106E, 0x0FA1, 0x0F0C, 0x0F34, 0x0EC0, 
    0x0D53, 0x0B87, 0x0974, 0x0733, 0x03ED, 0x00E4, 0xFF4C, 0xFE17, 0xFD18, 0xFC23, 0xF925, 0xF4E2, 0xF372, 0xF8EC, 
    0x0F34, 0x2F59, 0x4434, 0x49CF, 0x4B40, 0x49E9, 0x9CFE, 0x9D6B, 0x9E7F, 0x9FEF, 0xA16F, 0xA350, 0xA579, 0xA704, 
    0xA7DE, 0xA871, 0xA888, 0xA7F3, 0xA627, 0xA345, 0xA01B, 0x9CB6, 0x98F8, 0x9572, 0x92B5, 0x922B, 0x9329, 0x943E, 
    0x958F, 0x96EB, 0x9821, 0x993C, 0x9A4C, 0x9B30, 0x9BC3, 0x9C19, 0x9C5E, 0x9C94, 0x9CBC, 0x9CD9, 0x9CEC, 0x42D2, 
    0x4247, 0x40E5, 0x3F09, 0x3D0E, 0x3A7B, 0x377C, 0x3565, 0x3419, 0x3313, 0x3309, 0x34B2, 0x3A2A, 0x423B, 0x48A6, 
    0x4C5F, 0x4F2E, 0x510A, 0x51EB, 0x4FAC, 0x4AEC, 0x45A9, 0x3FC8, 0x3A48, 0x3623, 0x3384, 0x31EE, 0x315E, 0x31D4, 
    0x332B, 0x351D, 0x3777, 0x3A06, 0x3C95, 0x3EF1, 0xD538, 0xD62C, 0xD88E, 0xDBAC, 0xDED0, 0xE25C, 0xE65E, 0xE9A9, 
    0xECA8, 0xEFB0, 0xF170, 0xF096, 0xE9FA, 0xDF87, 0xD786, 0xD418, 0xD26A, 0xD15B, 0xCFC7, 0xCC66, 0xCA40, 0xCB09, 
    0xCCAF, 0xCEDE, 0xD144, 0xD475, 0xD864, 0xDBCC, 0xDD6B, 0xDD61, 0xDCC5, 0xDBBC, 0xDA6E, 0xD902, 0xD7A0, 0x0A98, 
    0x0998, 0x0722, 0x040A, 0x0121, 0xFE3C, 0xFB2E, 0xF8C8, 0xF5D5, 0xF25B, 0xF109, 0xF48B, 0xFCFC, 0x0805, 0x14AC, 
    0x21F3, 0x2EE0, 0x3A76, 0x43BA, 0x41BA, 0x3A85, 0x38F4, 0x386D, 0x374C, 0x33EC, 0x2C67, 0x221A, 0x1846, 0x122B, 
    0x0F69, 0x0D63, 0x0BFC, 0x0B19, 0x0A9E, 0x0A6F, 
};

JointIndex sHorseGanonWalkingAnimJointIndices[] = {
    { 0x0000, 0x0006, 0x0001 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0029 },
    { 0x004C, 0x006F, 0x0092 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x0004 },
    { 0x0000, 0x00B5, 0x00D8 },
    { 0x0000, 0x0000, 0x00FB },
    { 0x011E, 0x0141, 0x0164 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0187 },
    { 0x0000, 0x0000, 0x01AA },
    { 0x0000, 0x0000, 0x01CD },
    { 0x0000, 0x0000, 0x01F0 },
    { 0x0000, 0x0000, 0x0213 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0005 },
    { 0x0000, 0x0000, 0x0236 },
    { 0x0000, 0x0000, 0x0259 },
    { 0x0000, 0x0000, 0x027C },
    { 0x0000, 0x0000, 0x029F },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x02C2 },
    { 0x0000, 0x0000, 0x02E5 },
    { 0x0000, 0x0000, 0x0308 },
    { 0x0000, 0x0000, 0x032B },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x034E },
    { 0x0000, 0x0000, 0x0371 },
    { 0x0000, 0x0000, 0x0394 },
    { 0x0000, 0x0000, 0x03B7 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gHorseGanonWalkingAnim = { 
    { 35 }, sHorseGanonWalkingAnimFrameData,
    sHorseGanonWalkingAnimJointIndices, 6
};

u8 object_horse_ganon_possiblePadding_005B88[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_horse_ganonVtx_005B90[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonVtx_005B90.vtx.inc"
};

Gfx gHorseGanonSkelLimbsLimb_008474DL_0060F0[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_horse_ganonTex_00B010, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_horse_ganonVtx_005B90, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 0, 2, 0, 1, 3, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_ganonTex_00B690, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_horse_ganonVtx_005B90[6], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(6, 12, 13, 0, 6, 5, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_ganonTex_00B610, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_horse_ganonVtx_005B90[20], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP1Triangle(0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_ganonTex_00A5F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_horse_ganonVtx_005B90[25], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 1, 0, 9, 0),
    gsSP2Triangles(8, 10, 6, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 16, 15, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 136, 136, 136, 255),
    gsSPVertex(&object_horse_ganonVtx_005B90[43], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP1Triangle(4, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_ganonTex_00AA10, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_horse_ganonVtx_005B90[54], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 5, 2, 0, 2, 5, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gHorseGanonLegTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_horse_ganonVtx_005B90[60], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 4, 9, 5, 0),
    gsSP2Triangles(10, 11, 12, 0, 0, 13, 1, 0),
    gsSP1Triangle(14, 15, 16, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 136, 136, 136, 255),
    gsSPVertex(&object_horse_ganonVtx_005B90[77], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_horse_ganonVtx_005B90[80], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 136, 136, 136, 255),
    gsSPVertex(&object_horse_ganonVtx_005B90[83], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006400[] = {
    { 0x27, 2647, 484, -263, 0x14 },
    { 0x28, -400, 274, -263, 0x50 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006414[] = {
    { 0x27, 2232, 430, 77, 0x32 },
    { 0x28, -615, -86, 77, 0x32 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006428[] = {
    { 0x27, 2647, 480, 404, 0x14 },
    { 0x28, -397, 271, 404, 0x50 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_00643C[] = {
    { 0x27, 2234, -234, 245, 0x46 },
    { 0x28, -92, -495, 245, 0x1E },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006450[] = {
    { 0x27, 2597, -347, 270, 0x14 },
    { 0x28, 222, -280, 270, 0x50 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006464[] = {
    { 0x28, 170, 160, 192, 0x64 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006470[] = {
    { 0x07, -1739, 92, 1277, 0x3C },
    { 0x26, -430, -118, 524, 0x14 },
    { 0x27, -230, 1710, 524, 0x14 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006490[] = {
    { 0x07, -2206, -173, 721, 0x32 },
    { 0x26, -959, -75, -32, 0x1E },
    { 0x27, -220, 2241, -32, 0x14 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0064B0[] = {
    { 0x07, -1430, -325, 1183, 0x0A },
    { 0x26, -404, -645, 430, 0x50 },
    { 0x27, -753, 1650, 430, 0x0A },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0064D0[] = {
    { 0x07, -353, -479, 1029, 0x3C },
    { 0x26, 398, -1387, 276, 0x1E },
    { 0x27, -1442, 802, 276, 0x0A },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0064F0[] = {
    { 0x26, 420, -874, 740, 0x46 },
    { 0x27, -928, 813, 740, 0x1E },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006504[] = {
    { 0x28, 170, 160, -50, 0x64 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006510[] = {
    { 0x27, 2234, -234, -127, 0x46 },
    { 0x28, -92, -495, -127, 0x1E },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006524[] = {
    { 0x27, 2597, -347, -161, 0x14 },
    { 0x28, 222, -280, -161, 0x50 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006538[] = {
    { 0x26, 2125, 1126, -172, 0x0A },
    { 0x27, 1177, -759, -172, 0x50 },
    { 0x28, -333, -1650, -172, 0x0A },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006558[] = {
    { 0x26, 2123, 1123, 434, 0x14 },
    { 0x27, 1174, -757, 434, 0x46 },
    { 0x28, -336, -1651, 434, 0x0A },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006578[] = {
    { 0x27, 1883, 422, 379, 0x46 },
    { 0x28, -824, -365, 379, 0x1E },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_00658C[] = {
    { 0x07, 125, 448, 1060, 0x14 },
    { 0x26, 1297, -882, 307, 0x3C },
    { 0x27, -880, -62, 307, 0x14 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0065AC[] = {
    { 0x26, 1651, -6, 572, 0x28 },
    { 0x27, 17, -359, 572, 0x3C },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0065C0[] = {
    { 0x26, 1215, -449, 758, 0x32 },
    { 0x27, -453, 47, 758, 0x32 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0065D4[] = {
    { 0x07, -980, 535, 1649, 0x0A },
    { 0x27, -235, 842, 896, 0x5A },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0065E8[] = {
    { 0x26, 1040, 909, 766, 0x11 },
    { 0x27, 891, 310, 766, 0x53 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0065FC[] = {
    { 0x27, 1884, 422, -116, 0x46 },
    { 0x28, -824, -365, -116, 0x1E },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006610[] = {
    { 0x26, 407, 1340, 353, 0x28 },
    { 0x27, 1280, 970, 353, 0x3C },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006624[] = {
    { 0x26, 411, 1340, -329, 0x28 },
    { 0x27, 1280, 966, -329, 0x3C },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006638[] = {
    { 0x07, -2424, 1174, 507, 0x28 },
    { 0x26, -402, 1179, -246, 0x28 },
    { 0x27, 1066, 1766, -246, 0x14 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006658[] = {
    { 0x07, -2090, 1290, 1203, 0x0A },
    { 0x26, -64, 1086, 450, 0x1E },
    { 0x27, 995, 1423, 450, 0x3C },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006678[] = {
    { 0x2F, 2647, 480, -411, 0x14 },
    { 0x30, -397, 271, -411, 0x50 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_00668C[] = {
    { 0x2F, 2232, 430, -84, 0x32 },
    { 0x30, -615, -86, -84, 0x32 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0066A0[] = {
    { 0x2F, 2647, 484, 256, 0x14 },
    { 0x30, -400, 274, 256, 0x50 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0066B4[] = {
    { 0x30, 170, 160, 44, 0x64 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0066C0[] = {
    { 0x2F, 2234, -234, -252, 0x46 },
    { 0x30, -92, -495, -252, 0x1E },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0066D4[] = {
    { 0x2F, 2598, -345, -286, 0x14 },
    { 0x30, 221, -277, -286, 0x50 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0066E8[] = {
    { 0x30, 170, 160, -206, 0x64 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0066F4[] = {
    { 0x2E, 1215, -449, -765, 0x32 },
    { 0x2F, -453, 47, -765, 0x32 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006708[] = {
    { 0x2E, 420, -874, -747, 0x46 },
    { 0x2F, -928, 813, -747, 0x1E },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_00671C[] = {
    { 0x07, -980, 535, -1656, 0x0A },
    { 0x2F, -235, 842, -903, 0x5A },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006730[] = {
    { 0x07, -1739, 92, -1284, 0x3C },
    { 0x2E, -430, -118, -531, 0x14 },
    { 0x2F, -230, 1710, -531, 0x14 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006750[] = {
    { 0x07, -2096, 1292, -1213, 0x0A },
    { 0x2E, -68, 1090, -460, 0x1E },
    { 0x2F, 1000, 1428, -460, 0x3C },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006770[] = {
    { 0x2F, 2598, -345, 163, 0x14 },
    { 0x30, 221, -277, 163, 0x50 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006784[] = {
    { 0x2F, 2234, -234, 120, 0x46 },
    { 0x30, -92, -495, 120, 0x1E },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006798[] = {
    { 0x2E, 2125, 1126, 164, 0x0A },
    { 0x2F, 1177, -759, 164, 0x50 },
    { 0x30, -333, -1650, 164, 0x0A },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0067B8[] = {
    { 0x2F, 1883, 422, -386, 0x46 },
    { 0x30, -824, -365, -386, 0x1E },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0067CC[] = {
    { 0x2E, 2123, 1123, -441, 0x14 },
    { 0x2F, 1174, -757, -441, 0x46 },
    { 0x30, -336, -1651, -441, 0x0A },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0067EC[] = {
    { 0x2E, 1651, -6, -579, 0x28 },
    { 0x2F, 17, -359, -579, 0x3C },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006800[] = {
    { 0x2E, 1040, 909, -773, 0x11 },
    { 0x2F, 891, 310, -773, 0x53 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006814[] = {
    { 0x2F, 1884, 422, 109, 0x46 },
    { 0x30, -824, -365, 109, 0x1E },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006828[] = {
    { 0x2E, 407, 1340, -360, 0x28 },
    { 0x2F, 1280, 970, -360, 0x3C },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_00683C[] = {
    { 0x07, 142, 442, -1075, 0x14 },
    { 0x2E, 1307, -897, -322, 0x28 },
    { 0x2F, -894, -73, -322, 0x14 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_00685C[] = {
    { 0x07, -352, -479, -1058, 0x3C },
    { 0x2E, 398, -1387, -306, 0x1E },
    { 0x2F, -1442, 802, -306, 0x0A },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_00687C[] = {
    { 0x07, -1430, -325, -1190, 0x0A },
    { 0x2E, -404, -645, -437, 0x50 },
    { 0x2F, -753, 1650, -437, 0x0A },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_00689C[] = {
    { 0x2E, 404, 1338, 306, 0x28 },
    { 0x2F, 1278, 972, 306, 0x3C },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0068B0[] = {
    { 0x07, -2424, 1174, -514, 0x28 },
    { 0x2E, -402, 1179, 239, 0x28 },
    { 0x2F, 1066, 1766, 239, 0x14 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0068D0[] = {
    { 0x07, -2206, -173, -728, 0x32 },
    { 0x2E, -959, -75, 25, 0x1E },
    { 0x2F, -220, 2241, 25, 0x14 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0068F0[] = {
    { 0x07, 447, 1079, -571, 0x1E },
    { 0x2E, 1906, -536, 181, 0x28 },
    { 0x2F, -495, -648, 181, 0x1E },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006910[] = {
    { 0x2E, 2119, 342, 265, 0x1E },
    { 0x2F, 395, -804, 265, 0x46 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006924[] = {
    { 0x26, 2119, 342, -272, 0x1E },
    { 0x27, 395, -804, -272, 0x46 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006938[] = {
    { 0x08, -648, 900, -1049, 0x64 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006944[] = {
    { 0x07, 876, 1434, -1, 0x3C },
    { 0x26, 2453, -484, -754, 0x0F },
    { 0x27, -408, -1190, -754, 0x05 },
    { 0x2E, 2453, -484, 752, 0x0F },
    { 0x2F, -408, -1190, 752, 0x05 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006978[] = {
    { 0x07, -1013, 1752, 0, 0x28 },
    { 0x27, 843, 273, -753, 0x1E },
    { 0x2F, 843, 273, 753, 0x1E },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006998[] = {
    { 0x08, -91, -627, -1022, 0x64 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0069A4[] = {
    { 0x08, -648, 902, 1014, 0x64 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0069B0[] = {
    { 0x07, 448, 1080, 567, 0x1E },
    { 0x26, 1907, -537, -186, 0x28 },
    { 0x27, -496, -649, -186, 0x1E },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0069D0[] = {
    { 0x08, -91, -628, 988, 0x64 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0069DC[] = {
    { 0x09, 1702, -23, 725, 0x1E },
    { 0x0A, 88, 8, 725, 0x46 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0069F0[] = {
    { 0x09, 1556, -834, 398, 0x32 },
    { 0x0A, 232, -801, 398, 0x32 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006A04[] = {
    { 0x0A, 997, 31, 525, 0x46 },
    { 0x0B, 85, 497, 525, 0x1E },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006A18[] = {
    { 0x0A, 2139, -48, 211, 0x46 },
    { 0x0B, -116, -631, 211, 0x1E },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006A2C[] = {
    { 0x0A, 2140, -47, -217, 0x46 },
    { 0x0B, -115, -631, -217, 0x1E },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006A40[] = {
    { 0x0A, 1788, 593, 1, 0x28 },
    { 0x0B, 560, -347, 1, 0x3C },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006A54[] = {
    { 0x0A, 835, 896, 5, 0x32 },
    { 0x0B, 962, 569, 5, 0x32 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006A68[] = {
    { 0x02, 2853, -756, -361, 0x1E },
    { 0x03, 1634, -118, -361, 0x46 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006A7C[] = {
    { 0x0A, 1006, -670, 320, 0x50 },
    { 0x0B, -615, 561, 320, 0x14 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006A90[] = {
    { 0x02, 4073, -599, -4, 0x0A },
    { 0x03, 2691, 512, -4, 0x5A },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006AA4[] = {
    { 0x09, 1554, -835, -405, 0x32 },
    { 0x0A, 231, -803, -405, 0x32 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006AB8[] = {
    { 0x08, 1735, -1120, -2, 0x64 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006AC4[] = {
    { 0x02, 1352, 12, -4, 0x32 },
    { 0x03, -48, -8, -4, 0x32 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006AD8[] = {
    { 0x02, 2858, -771, 365, 0x1E },
    { 0x03, 1644, -129, 365, 0x3B },
    { 0x27, 2400, 941, -388, 0x0B },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006AF8[] = {
    { 0x09, 1701, -23, -716, 0x1E },
    { 0x0A, 87, 8, -716, 0x46 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B0C[] = {
    { 0x0A, 988, 32, -523, 0x46 },
    { 0x0B, 86, 506, -523, 0x1E },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B20[] = {
    { 0x08, 1996, -869, -845, 0x64 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B2C[] = {
    { 0x08, 2657, -66, -909, 0x64 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B38[] = {
    { 0x09, 1739, 1058, -61, 0x32 },
    { 0x0A, -253, 1032, -61, 0x32 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B4C[] = {
    { 0x08, 2659, -71, 905, 0x64 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B58[] = {
    { 0x08, 1994, -872, 761, 0x64 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B64[] = {
    { 0x07, -1794, -731, 540, 0x50 },
    { 0x26, -925, -777, -213, 0x0A },
    { 0x27, -919, 2162, -213, 0x0A },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B84[] = {
    { 0x08, -125, -1432, -30, 0x64 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B90[] = {
    { 0x08, 3451, 1165, -464, 0x64 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B9C[] = {
    { 0x07, -625, -889, 677, 0x42 },
    { 0x26, -50, -1576, -76, 0x22 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006BB0[] = {
    { 0x07, -776, -1150, -3, 0x46 },
    { 0x26, -317, -1708, -756, 0x0F },
    { 0x2E, -317, -1708, 750, 0x0F },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006BD0[] = {
    { 0x0A, 1005, -671, -326, 0x50 },
    { 0x0B, -615, 561, -326, 0x14 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006BE4[] = {
    { 0x07, -1794, -730, -607, 0x50 },
    { 0x2E, -924, -777, 146, 0x0A },
    { 0x2F, -919, 2161, 146, 0x0A },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006C04[] = {
    { 0x07, -595, -901, -719, 0x42 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006C10[] = {
    { 0x08, 3470, 1155, 416, 0x64 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006C1C[] = {
    { 0x07, -2464, -57, -5, 0x50 },
    { 0x26, -1107, 170, -758, 0x0A },
    { 0x2E, -1107, 170, 748, 0x0A },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006C3C[] = {
    { 0x07, -2143, 941, -2, 0x50 },
    { 0x26, -298, 823, -755, 0x0A },
    { 0x2E, -298, 823, 751, 0x0A },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006C5C[] = {
    { 0x07, -2219, -90, 0, 0x64 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006C68[] = {
    { 0x02, 1443, 497, 296, 0x32 },
    { 0x03, -157, 473, 296, 0x32 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006C7C[] = {
    { 0x02, 1443, 497, -303, 0x32 },
    { 0x03, -157, 473, -303, 0x32 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006C90[] = {
    { 0x08, 2584, -1219, -497, 0x28 },
    { 0x09, 890, -848, -497, 0x32 },
    { 0x0A, -387, -1048, -497, 0x0A },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006CB0[] = {
    { 0x0A, 976, -852, -4, 0x46 },
    { 0x0B, -793, 609, -4, 0x1E },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006CC4[] = {
    { 0x08, 2584, -1221, 459, 0x28 },
    { 0x09, 891, -849, 459, 0x32 },
    { 0x0A, -386, -1049, 459, 0x0A },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006CE4[] = {
    { 0x08, 2363, -1494, -3, 0x14 },
    { 0x09, 895, -1201, -3, 0x32 },
    { 0x0A, -259, -1376, -3, 0x1E },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006D04[] = {
    { 0x08, 1747, -1323, -3, 0x3C },
    { 0x09, 311, -1463, -3, 0x28 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006D18[] = {
    { 0x09, 1561, -1161, -4, 0x28 },
    { 0x0A, 351, -1105, -4, 0x3C },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006D2C[] = {
    { 0x0A, 1606, -1228, -4, 0x3C },
    { 0x0B, -1234, 21, -4, 0x28 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006D40[] = {
    { 0x08, -528, 1815, 450, 0x64 },
};

Struct_800A598C_2 gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006D4C[] = {
    { 0x08, -530, 1816, -511, 0x64 },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006D58[] = {
    { 0x55, 80, 81, -109, 66, 1, 0xFF },
    { 0x43, 80, 81, 25, 125, 0, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006D6C[] = {
    { 0x42, 15, 81, -16, 126, 1, 0xFF },
    { 0xF3, 1177, 2560, 81, 24, 94, 0xFF },
    { 0xDF, 1177, 2560, 59, 33, -108, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006D8C[] = {
    { 0x53, 80, 81, -109, 66, 1, 0xFF },
    { 0x51, 80, 81, -5, -17, 126, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006DA0[] = {
    { 0x54, 22, 42, -49, 3, 117, 0xFF },
    { 0x95, 914, 2344, 27, -124, 0, 0xFF },
    { 0x33, 438, 592, 27, -124, 0, 0xFF },
    { 0xF2, 914, 2344, 57, 7, 113, 0xFF },
    { 0x31, 438, 592, 57, 7, 113, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006DD4[] = {
    { 0x52, 88, 38, 28, 1, 124, 0xFF },
    { 0x94, 1064, 2162, 116, -52, 0, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006DE8[] = {
    { 0x50, 135, 53, 25, 125, 0, 0xFF },
    { 0x97, 1313, 2134, 126, 15, 0, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006DFC[] = {
    { 0x8F, 127, -85, -52, -42, 108, 0xFF },
    { 0x9E, 676, -49, -52, -42, 108, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006E10[] = {
    { 0x8E, 515, -12, -95, -45, 71, 0xFF },
    { 0x8A, 251, -18, -95, -45, 71, 0xFF },
    { 0xF0, 251, -18, -95, -45, 71, 0xFF },
    { 0xEC, 515, -12, -95, -45, 71, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006E38[] = {
    { 0xA2, 113, -346, -71, -50, 92, 0xFF },
    { 0x9F, 793, -372, -71, -50, 92, 0xFF },
    { 0x9C, 538, -283, -71, -50, 92, 0xFF },
    { 0xEE, 113, -346, -71, -50, 92, 0xFF },
    { 0xA5, 170, -190, -71, -50, 92, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006E6C[] = {
    { 0xA0, 238, -109, 8, -73, 104, 0xFF },
    { 0xB8, 238, -109, 8, -73, 104, 0xFF },
    { 0x158, 360, 99, 8, -73, 104, 0xFF },
    { 0xA4, -161, -826, 8, -73, 104, 0xFF },
    { 0xDC, 675, 16, 8, -73, 104, 0xFF },
    { 0x154, -239, 90, 8, -73, 104, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006EA8[] = {
    { 0xA1, 377, 2, -9, -61, 111, 0xFF },
    { 0x9D, 175, -240, -9, -61, 111, 0xFF },
    { 0xE9, 377, 2, -9, -61, 111, 0xFF },
    { 0xB7, 377, 2, -9, -61, 111, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006ED0[] = {
    { 0x4E, 135, 53, 25, 125, 0, 0xFF },
    { 0x96, 1312, 2134, 126, 15, 0, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006EE4[] = {
    { 0x93, 914, 2343, -7, -127, 0, 0xFF },
    { 0x34, 438, 592, -7, -127, 0, 0xFF },
    { 0x44, 22, 42, -51, 8, -116, 0xFF },
    { 0xE2, 914, 2343, 32, 19, -121, 0xFF },
    { 0x59, 22, 42, -51, 8, -116, 0xFF },
    { 0x12, 438, 592, 32, 19, -121, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006F20[] = {
    { 0x98, 1064, 2162, 116, -52, 0, 0xFF },
    { 0x4F, 88, 38, 26, 7, -124, 0xFF },
    { 0x5A, 88, 38, 26, 7, -124, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006F40[] = {
    { 0x32, 185, 464, 39, -99, -70, 0xFF },
    { 0x13, 185, 464, 39, -99, -70, 0xFF },
    { 0x10, 185, 464, 39, -99, -70, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006F60[] = {
    { 0x26, 185, 463, 11, -126, 16, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006F6C[] = {
    { 0xF4, 1036, 2700, 60, 56, 97, 0xFF },
    { 0x27, 503, 407, 60, 56, 97, 0xFF },
    { 0xE1, 1036, 2700, 60, 56, 97, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006F8C[] = {
    { 0x30, 10, -82, 48, -35, 112, 0xFF },
    { 0xEA, 66, 424, 48, -35, 112, 0xFF },
    { 0xB6, 66, 424, 48, -35, 112, 0xFF },
    { 0xDE, 564, 392, 48, -35, 112, 0xFF },
    { 0x02, 10, -82, 48, -35, 112, 0xFF },
    { 0x62, 431, 74, 48, -35, 112, 0xFF },
    { 0xBB, 564, 392, 48, -35, 112, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006FD4[] = {
    { 0x29, 83, 154, -27, -90, 85, 0xFF },
    { 0x01, 83, 154, -27, -90, 85, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006FE8[] = {
    { 0x2F, 85, -14, 47, -36, 113, 0xFF },
    { 0xE8, 255, 457, 47, -36, 113, 0xFF },
    { 0x91, 255, 457, 47, -36, 113, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007008[] = {
    { 0xEB, 671, 112, 0, 15, 126, 0xFF },
    { 0x99, 297, 54, 0, 15, 126, 0xFF },
    { 0x90, 671, 112, 0, 15, 126, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007028[] = {
    { 0x28, 334, 220, 31, -5, 123, 0xFF },
    { 0x9A, 247, 603, 31, -5, 123, 0xFF },
    { 0x92, 887, 577, 31, -5, 123, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007048[] = {
    { 0xE3, 1036, 2700, 27, 4, -124, 0xFF },
    { 0xE0, 1036, 2700, 60, 112, 0, 0xFF },
    { 0x2E, 503, 407, 60, 112, 0, 0xFF },
    { 0x11, 503, 407, 27, 4, -124, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007070[] = {
    { 0x2A, 511, 187, 98, 63, 50, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00707C[] = {
    { 0x2D, 510, 188, 106, 18, -67, 0xFF },
    { 0x05, 510, 188, 106, 18, -67, 0xFF },
    { 0x3B, 511, 186, 106, 18, -67, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00709C[] = {
    { 0x2C, 640, 8, -114, 54, -15, 0xFF },
    { 0xA3, 588, 648, -114, 54, -15, 0xFF },
    { 0x8B, 54, 688, -114, 54, -15, 0xFF },
    { 0x4D, 65, 55, -114, 54, -15, 0xFF },
    { 0x3A, 640, 8, -114, 54, -15, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0070D0[] = {
    { 0x2B, 554, 51, 58, 59, 96, 0xFF },
    { 0x9B, 708, 490, 58, 59, 96, 0xFF },
    { 0x8D, 181, 498, 58, 59, 96, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0070F0[] = {
    { 0x3C, 80, 81, -109, 66, -1, 0xFF },
    { 0x40, 80, 81, -7, -17, -126, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007104[] = {
    { 0x47, 15, 81, -16, 126, -1, 0xFF },
    { 0x45, 15, 81, -79, 24, -97, 0xFF },
    { 0xA7, 1177, 2560, 81, 24, -94, 0xFF },
    { 0xE5, 1177, 2560, 59, 33, 108, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00712C[] = {
    { 0x46, 80, 81, -109, 66, -1, 0xFF },
    { 0x48, 80, 81, -10, -12, 126, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007140[] = {
    { 0x3D, 135, 53, 25, 125, 0, 0xFF },
    { 0xAF, 1312, 2134, 126, 15, 0, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007154[] = {
    { 0x3F, 22, 42, -51, 3, -116, 0xFF },
    { 0xB9, 914, 2344, 27, -124, 0, 0xFF },
    { 0x23, 438, 592, 27, -124, 0, 0xFF },
    { 0xA8, 914, 2344, 57, 7, -113, 0xFF },
    { 0x21, 438, 592, 57, 7, -113, 0xFF },
    { 0x1F, 438, 592, 27, -124, 0, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007190[] = {
    { 0x41, 89, 38, 26, 1, -124, 0xFF },
    { 0xB0, 1066, 2162, 103, -74, 0, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0071A4[] = {
    { 0x3E, 135, 53, 25, 125, 0, 0xFF },
    { 0xAE, 1312, 2134, 126, 15, 0, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0071B8[] = {
    { 0xCA, 255, 457, 46, -35, -113, 0xFF },
    { 0x1B, 85, -14, 46, -35, -113, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0071CC[] = {
    { 0xCD, 377, 2, -10, -60, -112, 0xFF },
    { 0xD6, 175, -240, -10, -60, -112, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0071E0[] = {
    { 0xCB, 671, 112, 0, 15, -126, 0xFF },
    { 0xD3, 297, 54, 0, 15, -126, 0xFF },
    { 0xC8, 297, 54, 0, 15, -126, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007200[] = {
    { 0xD4, 676, -49, -52, -42, -108, 0xFF },
    { 0xD8, 127, -85, -52, -42, -108, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007214[] = {
    { 0xD5, 708, 490, 58, 59, -96, 0xFF },
    { 0x1C, 556, 51, 58, 59, -96, 0xFF },
    { 0xBF, 181, 498, 58, 59, -96, 0xFF },
    { 0xC6, 708, 490, 58, 59, -96, 0xFF },
    { 0xDA, 181, 498, 58, 59, -96, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007248[] = {
    { 0x57, 89, 38, 25, 7, 124, 0xFF },
    { 0xAD, 1066, 2162, 124, -28, 0, 0xFF },
    { 0x4A, 89, 38, 25, 7, 124, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007268[] = {
    { 0xB1, 914, 2343, -6, -127, 0, 0xFF },
    { 0x24, 438, 592, -6, -127, 0, 0xFF },
    { 0x49, 22, 42, -52, 8, 115, 0xFF },
    { 0xE7, 914, 2343, 32, 19, 121, 0xFF },
    { 0x14, 438, 592, 32, 19, 121, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00729C[] = {
    { 0x25, 185, 464, 39, -99, 70, 0xFF },
    { 0x0F, 185, 464, 39, -99, 70, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0072B0[] = {
    { 0xA9, 1036, 2700, 60, 56, -97, 0xFF },
    { 0x20, 503, 407, 60, 56, -97, 0xFF },
    { 0xE6, 1036, 2700, 60, 56, -97, 0xFF },
    { 0x1E, 503, 407, 60, 56, -97, 0xFF },
    { 0x18, 503, 407, 60, 56, -97, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0072E4[] = {
    { 0x22, 185, 463, 26, -24, -122, 0xFF },
    { 0x19, 185, 463, 11, -126, -16, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0072F8[] = {
    { 0x36, 83, 154, -27, -90, -85, 0xFF },
    { 0x16, 83, 154, -27, -90, -85, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00730C[] = {
    { 0x1A, 334, 220, 31, -5, -123, 0xFF },
    { 0xC9, 887, 577, 31, -5, -123, 0xFF },
    { 0xC7, 247, 603, 31, -5, -123, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00732C[] = {
    { 0xE4, 1036, 2700, 27, 4, 124, 0xFF },
    { 0x09, 503, 407, 60, 112, 0, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007340[] = {
    { 0x1D, 511, 187, 99, 62, -49, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00734C[] = {
    { 0xCC, 66, 424, 48, -33, -113, 0xFF },
    { 0x17, 10, -82, 48, -33, -113, 0xFF },
    { 0xB2, 564, 392, 48, -33, -113, 0xFF },
    { 0x61, 431, 74, 48, -33, -113, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007374[] = {
    { 0xCE, 238, -109, 7, -68, -107, 0xFF },
    { 0xB4, 675, 16, 7, -68, -107, 0xFF },
    { 0xD2, -161, -826, 7, -68, -107, 0xFF },
    { 0x14F, -239, 90, 7, -68, -107, 0xFF },
    { 0x144, 360, 99, 7, -68, -107, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0073A8[] = {
    { 0xCF, 793, -372, -70, -47, -95, 0xFF },
    { 0xDB, 113, -346, -70, -47, -95, 0xFF },
    { 0xD7, 538, -283, -70, -47, -95, 0xFF },
    { 0xD1, 170, -190, -70, -47, -95, 0xFF },
    { 0xC0, 113, -346, -70, -47, -95, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0073DC[] = {
    { 0x0A, 511, 186, 107, 18, 66, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0073E8[] = {
    { 0x0C, 640, 8, -113, 55, 15, 0xFF },
    { 0xBE, 588, 648, -113, 55, 15, 0xFF },
    { 0xC5, 54, 688, -113, 55, 15, 0xFF },
    { 0x58, 65, 55, -113, 55, 15, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007410[] = {
    { 0xD9, 515, -12, -95, -43, -72, 0xFF },
    { 0xBD, 515, -12, -95, -43, -72, 0xFF },
    { 0xC3, 251, -18, -95, -43, -72, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007430[] = {
    { 0x15, -33, 100, 104, -43, -59, 0xFF },
    { 0x0E, -33, 100, 30, -25, 121, 0xFF },
    { 0x60, 358, 279, 40, 93, -76, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007450[] = {
    { 0x35, 60, 309, 20, -106, 67, 0xFF },
    { 0x0B, 60, 309, 20, -106, 67, 0xFF },
    { 0x08, 60, 309, 20, -106, 67, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007470[] = {
    { 0x38, 60, 309, 20, -106, -67, 0xFF },
    { 0x06, 60, 309, 20, -106, -67, 0xFF },
    { 0x03, 60, 309, 20, -106, -67, 0xFF },
    { 0x37, 60, 309, 20, -106, -67, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007498[] = {
    { 0x5C, -147, 335, -47, 84, -83, 0xFF },
    { 0xB5, 171, 521, -47, 84, -83, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0074AC[] = {
    { 0x5D, 237, 406, 22, 125, 0, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0074B8[] = {
    { 0x0D, 339, 219, -23, 77, 98, 0xFF },
    { 0x04, 339, 219, -23, 77, 98, 0xFF },
    { 0x6C, 1000, 428, 24, 125, 0, 0xFF },
    { 0x56, 113, 96, -23, 75, -100, 0xFF },
    { 0x39, 339, 219, -23, 75, -100, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0074EC[] = {
    { 0x145, -264, 84, 21, -44, -117, 0xFF },
    { 0xB3, 148, -257, 21, -44, -117, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007500[] = {
    { 0x5F, -148, 335, -46, 84, 84, 0xFF },
    { 0xBA, 171, 521, -46, 84, 84, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007514[] = {
    { 0x5E, 357, 279, 40, 92, 78, 0xFF },
    { 0x07, -33, 100, 29, -25, -121, 0xFF },
    { 0x00, -33, 100, 103, -44, 60, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007534[] = {
    { 0x157, -264, 84, 22, -47, 116, 0xFF },
    { 0x12C, -264, 84, 22, -47, 116, 0xFF },
    { 0xDD, 148, -257, 22, -47, 116, 0xFF },
    { 0xBC, 148, -257, 22, -47, 116, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00755C[] = {
    { 0x15B, 478, -179, -12, 69, 106, 0xFF },
    { 0xF8, 512, 512, 45, -23, 117, 0xFF },
    { 0x68, 403, -15, -12, 69, 106, 0xFF },
    { 0x132, 478, -179, -12, 69, 106, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007584[] = {
    { 0x105, 512, 448, 28, -80, 94, 0xFF },
    { 0xF5, 512, 0, 28, -80, 94, 0xFF },
    { 0x116, -3, 419, 28, -80, 94, 0xFF },
    { 0x119, 512, 448, 28, -80, 94, 0xFF },
    { 0x11F, -3, 419, 28, -80, 94, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0075B8[] = {
    { 0xF7, 0, 512, 17, 26, 123, 0xFF },
    { 0x142, 1226, -2587, 17, 26, 123, 0xFF },
    { 0x13E, 2514, -6248, 17, 26, 123, 0xFF },
    { 0x69, -179, -139, 17, 26, 123, 0xFF },
    { 0x120, 500, 504, 17, 26, 123, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0075EC[] = {
    { 0x6E, -1058, 397, 76, 41, 93, 0xFF },
    { 0x13F, 1302, -6979, 76, 41, 93, 0xFF },
    { 0x122, -238, 12, 76, 41, 93, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00760C[] = {
    { 0x6D, -1059, 398, 76, 41, -93, 0xFF },
    { 0x148, 1300, -6978, 76, 41, -93, 0xFF },
    { 0x12D, 1300, -6978, 76, 41, -93, 0xFF },
    { 0x10D, -238, 12, 76, 41, -93, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007634[] = {
    { 0x126, 340, -2858, 68, -1, -108, 0xFF },
    { 0x149, 1137, -6041, 100, -78, 0, 0xFF },
    { 0x140, 340, -2858, 67, -2, 108, 0xFF },
    { 0x13D, 1137, -6041, 67, -2, 108, 0xFF },
    { 0x12F, 1137, -6041, 68, -1, -108, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007668[] = {
    { 0x128, 759, -1782, -16, 69, -105, 0xFF },
    { 0x141, 759, -1782, -20, 70, 104, 0xFF },
    { 0x6A, -247, 425, -20, 70, 104, 0xFF },
    { 0x64, -247, 425, -16, 69, -105, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007690[] = {
    { 0x81, -102, 113, 12, -120, -40, 0xFF },
    { 0x77, -381, 91, 12, -120, -40, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0076A4[] = {
    { 0x72, -512, 512, 50, -57, 102, 0xFF },
    { 0x104, 13, 362, 50, -57, 102, 0xFF },
    { 0xF6, 0, 0, 50, -57, 102, 0xFF },
    { 0x73, 407, 533, 50, -57, 102, 0xFF },
    { 0x121, 505, -30, 50, -57, 102, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0076D8[] = {
    { 0x87, 167, -104, -2, 127, 0, 0xFF },
    { 0x80, 393, -110, 12, 47, -117, 0xFF },
    { 0x7C, 393, -110, 12, 47, 117, 0xFF },
    { 0x78, -62, -120, 65, -109, 0, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007700[] = {
    { 0x109, 512, 0, 29, -80, -95, 0xFF },
    { 0xFD, 512, -447, 29, -80, -95, 0xFF },
    { 0x11E, -2, -423, 29, -80, -95, 0xFF },
    { 0x11A, 512, -447, 29, -80, -95, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007728[] = {
    { 0x152, 256, 151, -112, -60, 2, 0xFF },
    { 0x14B, 256, 151, -112, -60, 2, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00773C[] = {
    { 0x79, -66, 470, -57, -114, 0, 0xFF },
    { 0x89, -62, 423, -57, -114, 0, 0xFF },
    { 0x83, -66, 470, -57, -114, 0, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00775C[] = {
    { 0x76, 257, 91, 12, -120, 40, 0xFF },
    { 0x88, -102, 113, 12, -120, 40, 0xFF },
    { 0x7E, -102, 113, 12, 47, 117, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00777C[] = {
    { 0x106, 512, 512, 45, -19, -117, 0xFF },
    { 0x123, 478, -178, -8, 66, -108, 0xFF },
    { 0x66, 403, -15, -8, 66, -108, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00779C[] = {
    { 0x10B, 0, 512, 16, 26, -123, 0xFF },
    { 0x127, 1231, -2579, 16, 26, -123, 0xFF },
    { 0x12E, 2523, -6243, 16, 26, -123, 0xFF },
    { 0x10F, 500, 504, 16, 26, -123, 0xFF },
    { 0x65, -173, -138, 16, 26, -123, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0077D0[] = {
    { 0x107, 1536, 0, -28, -73, -100, 0xFF },
    { 0x14C, 741, 199, -28, -73, -100, 0xFF },
    { 0x100, 528, 479, -28, -73, -100, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0077F0[] = {
    { 0x108, 1536, 444, 10, -18, -125, 0xFF },
    { 0x124, 491, 443, 29, 25, -121, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007804[] = {
    { 0x15C, 102, -173, 16, 105, 69, 0xFF },
    { 0x13A, 512, -202, 16, 105, 69, 0xFF },
    { 0x6B, 416, 677, 16, 105, 69, 0xFF },
    { 0x67, 416, 677, 22, 73, -101, 0xFF },
    { 0x136, 102, -173, 22, 73, -101, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007838[] = {
    { 0xFB, 1536, 444, 4, -26, 124, 0xFF },
    { 0x131, 491, 441, 30, 28, 120, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00784C[] = {
    { 0x151, -182, 199, -30, -72, 100, 0xFF },
    { 0x112, 529, 477, -30, -72, 100, 0xFF },
    { 0xFA, 1536, 0, -30, -72, 100, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00786C[] = {
    { 0xEF, 393, -129, -56, -100, 54, 0xFF },
    { 0xED, 522, -302, -56, -100, 54, 0xFF },
    { 0xA6, 418, -816, -56, -100, 54, 0xFF },
    { 0x155, 394, 96, -56, -100, 54, 0xFF },
    { 0xAA, -79, -28, -56, -100, 54, 0xFF },
    { 0x135, 283, 97, -56, -100, 54, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0078A8[] = {
    { 0x146, -173, 485, 53, -116, 1, 0xFF },
    { 0x129, -173, 485, 53, -116, 1, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0078BC[] = {
    { 0x125, -8, 544, 54, 30, -111, 0xFF },
    { 0x13B, 376, 615, 87, 92, -1, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0078D0[] = {
    { 0x159, 434, 267, -11, -101, 76, 0xFF },
    { 0x12A, 434, 267, -11, -101, 76, 0xFF },
    { 0x156, -74, 217, -11, -101, 76, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0078F0[] = {
    { 0x12B, 471, 485, -25, -124, 2, 0xFF },
    { 0x150, 69, 404, -25, -124, 2, 0xFF },
    { 0x147, 471, 485, -25, -124, 2, 0xFF },
    { 0x15A, 69, 404, -25, -124, 2, 0xFF },
    { 0x134, 514, 477, -25, -124, 2, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007924[] = {
    { 0x10C, 0, 0, 50, -56, -102, 0xFF },
    { 0x75, 926, 512, 50, -56, -102, 0xFF },
    { 0xFE, 13, -357, 50, -56, -102, 0xFF },
    { 0x74, 408, 533, 50, -56, -102, 0xFF },
    { 0x10E, 505, -30, 50, -56, -102, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007958[] = {
    { 0xC4, 393, -129, -57, -98, -57, 0xFF },
    { 0xD0, 418, -816, -57, -98, -57, 0xFF },
    { 0xC1, 522, -302, -57, -98, -57, 0xFF },
    { 0x14E, 394, 96, -57, -98, -57, 0xFF },
    { 0xAC, 301, -28, -57, -98, -57, 0xFF },
    { 0x133, 753, 97, -57, -98, -57, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007994[] = {
    { 0x143, 434, 267, -12, -100, -78, 0xFF },
    { 0x14D, -74, 217, -12, -100, -78, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0079A8[] = {
    { 0x15D, -11, 535, 77, 61, 80, 0xFF },
    { 0x13C, 672, 607, 77, 61, 80, 0xFF },
    { 0x130, -11, 535, 77, 61, 80, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0079C8[] = {
    { 0xC2, 426, 467, -119, -44, -12, 0xFF },
    { 0x8C, 426, 467, -119, -44, -12, 0xFF },
    { 0xF1, 426, 467, -119, -44, -12, 0xFF },
    { 0x4C, 151, 43, -119, -44, -12, 0xFF },
    { 0xAB, 101, 448, -119, -44, -12, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0079FC[] = {
    { 0x4B, 106, 61, -85, 63, -70, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007A08[] = {
    { 0x84, -364, 714, -108, -67, 0, 0xFF },
    { 0x82, -364, 714, 65, 13, 108, 0xFF },
    { 0x7A, -364, 714, 65, 12, -108, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007A28[] = {
    { 0x7D, 287, 494, -30, -61, 107, 0xFF },
    { 0x86, 0, 500, 8, 127, 0, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007A3C[] = {
    { 0x7B, 287, 494, -30, -61, -107, 0xFF },
    { 0x85, 333, 500, 8, 127, 0, 0xFF },
    { 0x7F, 287, 494, 8, 127, 0, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007A5C[] = {
    { 0x10A, 1024, 0, 40, -91, -80, 0xFF },
    { 0x101, 3, 482, 40, -91, -80, 0xFF },
    { 0x11D, 512, -520, 40, -91, -80, 0xFF },
    { 0x138, 532, 199, 40, -91, -80, 0xFF },
    { 0x115, 33, -491, 40, -91, -80, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007A90[] = {
    { 0x70, 195, 412, 53, -115, 0, 0xFF },
    { 0x103, 50, 2, 53, -115, 0, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007AA4[] = {
    { 0x111, 2, 493, 37, -91, 81, 0xFF },
    { 0xF9, 1024, 0, 37, -91, 81, 0xFF },
    { 0x117, 512, 482, 37, -91, 81, 0xFF },
    { 0x137, 0, 199, 37, -91, 81, 0xFF },
    { 0x113, 33, 455, 37, -91, 81, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007AD8[] = {
    { 0x118, 514, -2, 31, -123, 1, 0xFF },
    { 0x11C, 514, -2, 31, -123, 1, 0xFF },
    { 0x139, 257, 198, 31, -123, 1, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007AF8[] = {
    { 0x153, 256, 208, -55, -114, 2, 0xFF },
    { 0x110, 502, 3, -55, -114, 2, 0xFF },
    { 0x14A, 256, 208, -55, -114, 2, 0xFF },
    { 0xFF, 502, 5, -55, -114, 2, 0xFF },
    { 0x114, 518, -2, -55, -114, 2, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007B2C[] = {
    { 0xFC, 469, 0, 65, -109, 0, 0xFF },
    { 0x102, 469, 0, 65, -109, 0, 0xFF },
    { 0x11B, 469, 0, 65, -109, 0, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007B4C[] = {
    { 0x71, 141, -17, 82, -97, 0, 0xFF },
    { 0x6F, 42, -35, 82, -97, 0, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007B60[] = {
    { 0x63, -290, 593, -4, 127, 0, 0xFF },
};

Struct_800A57C0 gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007B6C[] = {
    { 0x5B, -290, 593, -4, 127, 0, 0xFF },
};

Struct_800A598C gHorseGanonSkelLimbsLimb_008294Struct_800A598C_007B78[] = {
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006D58),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006400),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006D58,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006400
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006D6C),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006414),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006D6C,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006414
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006D8C),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006428),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006D8C,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006428
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006DA0),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_00643C),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006DA0,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_00643C
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006DD4),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006450),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006DD4,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006450
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006DE8),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006464),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006DE8,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006464
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006DFC),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006470),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006DFC,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006470
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006E10),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006490),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006E10,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006490
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006E38),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0064B0),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006E38,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0064B0
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006E6C),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0064D0),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006E6C,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0064D0
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006EA8),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0064F0),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006EA8,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0064F0
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006ED0),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006504),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006ED0,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006504
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006EE4),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006510),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006EE4,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006510
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006F20),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006524),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006F20,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006524
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006F40),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006538),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006F40,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006538
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006F60),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006558),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006F60,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006558
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006F6C),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006578),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006F6C,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006578
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006F8C),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_00658C),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006F8C,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_00658C
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006FD4),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0065AC),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006FD4,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0065AC
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006FE8),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0065C0),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_006FE8,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0065C0
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007008),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0065D4),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007008,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0065D4
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007028),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0065E8),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007028,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0065E8
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007048),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0065FC),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007048,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0065FC
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007070),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006610),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007070,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006610
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00707C),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006624),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00707C,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006624
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00709C),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006638),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00709C,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006638
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0070D0),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006658),
        2, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0070D0,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006658
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0070F0),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006678),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0070F0,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006678
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007104),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_00668C),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007104,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_00668C
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00712C),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0066A0),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00712C,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0066A0
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007140),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0066B4),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007140,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0066B4
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007154),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0066C0),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007154,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0066C0
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007190),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0066D4),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007190,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0066D4
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0071A4),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0066E8),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0071A4,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0066E8
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0071B8),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0066F4),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0071B8,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0066F4
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0071CC),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006708),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0071CC,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006708
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0071E0),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_00671C),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0071E0,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_00671C
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007200),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006730),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007200,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006730
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007214),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006750),
        2, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007214,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006750
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007248),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006770),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007248,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006770
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007268),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006784),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007268,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006784
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00729C),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006798),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00729C,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006798
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0072B0),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0067B8),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0072B0,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0067B8
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0072E4),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0067CC),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0072E4,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0067CC
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0072F8),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0067EC),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0072F8,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0067EC
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00730C),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006800),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00730C,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006800
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00732C),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006814),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00732C,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006814
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007340),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006828),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007340,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006828
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00734C),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_00683C),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00734C,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_00683C
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007374),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_00685C),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007374,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_00685C
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0073A8),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_00687C),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0073A8,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_00687C
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0073DC),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_00689C),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0073DC,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_00689C
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0073E8),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0068B0),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0073E8,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0068B0
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007410),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0068D0),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007410,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0068D0
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007430),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0068F0),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007430,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0068F0
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007450),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006910),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007450,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006910
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007470),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006924),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007470,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006924
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007498),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006938),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007498,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006938
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0074AC),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006944),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0074AC,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006944
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0074B8),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006978),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0074B8,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006978
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0074EC),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006998),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0074EC,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006998
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007500),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0069A4),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007500,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0069A4
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007514),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0069B0),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007514,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0069B0
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007534),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0069D0),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007534,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0069D0
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00755C),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0069DC),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00755C,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0069DC
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007584),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0069F0),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007584,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_0069F0
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0075B8),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006A04),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0075B8,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006A04
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0075EC),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006A18),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0075EC,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006A18
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00760C),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006A2C),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00760C,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006A2C
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007634),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006A40),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007634,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006A40
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007668),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006A54),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007668,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006A54
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007690),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006A68),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007690,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006A68
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0076A4),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006A7C),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0076A4,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006A7C
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0076D8),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006A90),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0076D8,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006A90
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007700),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006AA4),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007700,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006AA4
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007728),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006AB8),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007728,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006AB8
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00773C),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006AC4),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00773C,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006AC4
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00775C),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006AD8),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00775C,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006AD8
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00777C),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006AF8),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00777C,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006AF8
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00779C),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B0C),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00779C,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B0C
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0077D0),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B20),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0077D0,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B20
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0077F0),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B2C),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0077F0,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B2C
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007804),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B38),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007804,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B38
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007838),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B4C),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007838,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B4C
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00784C),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B58),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00784C,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B58
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00786C),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B64),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_00786C,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B64
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0078A8),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B84),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0078A8,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B84
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0078BC),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B90),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0078BC,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B90
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0078D0),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B9C),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0078D0,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006B9C
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0078F0),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006BB0),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0078F0,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006BB0
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007924),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006BD0),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007924,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006BD0
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007958),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006BE4),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007958,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006BE4
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007994),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006C04),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007994,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006C04
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0079A8),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006C10),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0079A8,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006C10
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0079C8),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006C1C),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0079C8,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006C1C
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0079FC),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006C3C),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_0079FC,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006C3C
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007A08),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006C5C),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007A08,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006C5C
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007A28),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006C68),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007A28,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006C68
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007A3C),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006C7C),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007A3C,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006C7C
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007A5C),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006C90),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007A5C,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006C90
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007A90),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006CB0),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007A90,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006CB0
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007AA4),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006CC4),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007AA4,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006CC4
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007AD8),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006CE4),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007AD8,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006CE4
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007AF8),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006D04),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007AF8,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006D04
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007B2C),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006D18),
        1, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007B2C,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006D18
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007B4C),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006D2C),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007B4C,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006D2C
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007B60),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006D40),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007B60,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006D40
     },
    { 
        ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007B6C),
    ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006D4C),
        0, gHorseGanonSkelLimbsLimb_008294Struct_800A57C0_007B6C,
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_2_006D4C
     },
};

Struct_800A5E28 gHorseGanonSkelLimbsLimb_008294Struct_800A5E28_008238 = { 
    350, ARRAY_COUNTU(gHorseGanonSkelLimbsLimb_008294Struct_800A598C_007B78),
    gHorseGanonSkelLimbsLimb_008294Struct_800A598C_007B78, gHorseGanonSkelLimbsLimb_008294SkinLimbDL_009D20
};

SkinLimb gHorseGanonSkelLimbsLimb_008244 = { 
    { 0, 5560, -1965 }, 0x01, LIMB_DONE,
    0x00, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_008254 = { 
    { 0, 581, -1482 }, 0x02, 0x05,
    0x00, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_008264 = { 
    { 0, 0, 0 }, 0x03, LIMB_DONE,
    0x05, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_008274 = { 
    { 1400, 0, 0 }, 0x04, LIMB_DONE,
    0x05, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_008284 = { 
    { 2746, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x00, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_008294 = { 
    { -4, 197, 2282 }, LIMB_DONE, 0x06,
    0x04, &gHorseGanonSkelLimbsLimb_008294Struct_800A5E28_008238
};

SkinLimb gHorseGanonSkelLimbsLimb_0082A4 = { 
    { 0, 78, 816 }, 0x07, 0x25,
    0x00, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_0082B4 = { 
    { 0, 0, 0 }, 0x08, LIMB_DONE,
    0x05, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_0082C4 = { 
    { 1933, 0, 0 }, 0x09, 0x24,
    0x05, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_0082D4 = { 
    { 2440, 0, 0 }, 0x0A, 0x0F,
    0x05, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_0082E4 = { 
    { 1617, 0, 0 }, 0x0B, LIMB_DONE,
    0x05, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_0082F4 = { 
    { 1500, 0, 0 }, 0x0C, LIMB_DONE,
    0x05, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_008304 = { 
    { 2276, 0, 0 }, LIMB_DONE, 0x0D,
    0x00, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_008314 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x0E,
    0x0B, gHorseGanonSkelLimbsLimb_008314DL_0090F0
};

SkinLimb gHorseGanonSkelLimbsLimb_008324 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gHorseGanonSkelLimbsLimb_008324DL_009BE0
};

SkinLimb gHorseGanonSkelLimbsLimb_008334 = { 
    { 1538, 392, 939 }, 0x10, 0x19,
    0x00, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_008344 = { 
    { 0, 0, 0 }, 0x11, LIMB_DONE,
    0x05, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_008354 = { 
    { 696, 0, 0 }, 0x12, 0x18,
    0x05, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_008364 = { 
    { 2782, 0, 0 }, 0x13, 0x17,
    0x05, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_008374 = { 
    { 1678, 0, 0 }, 0x14, 0x16,
    0x05, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_008384 = { 
    { 760, 0, 0 }, LIMB_DONE, 0x15,
    0x00, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_008394 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gHorseGanonSkelLimbsLimb_008394DL_0001C0
};

SkinLimb gHorseGanonSkelLimbsLimb_0083A4 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gHorseGanonSkelLimbsLimb_0083A4DL_000430
};

SkinLimb gHorseGanonSkelLimbsLimb_0083B4 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gHorseGanonSkelLimbsLimb_0083B4DL_0007E0
};

SkinLimb gHorseGanonSkelLimbsLimb_0083C4 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gHorseGanonSkelLimbsLimb_0083C4DL_0013D0
};

SkinLimb gHorseGanonSkelLimbsLimb_0083D4 = { 
    { 1538, 392, -939 }, 0x1A, 0x23,
    0x00, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_0083E4 = { 
    { 0, 0, 0 }, 0x1B, LIMB_DONE,
    0x05, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_0083F4 = { 
    { 696, 0, 0 }, 0x1C, 0x22,
    0x05, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_008404 = { 
    { 2782, 0, 0 }, 0x1D, 0x21,
    0x05, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_008414 = { 
    { 1678, 0, 0 }, 0x1E, 0x20,
    0x05, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_008424 = { 
    { 760, 0, 0 }, LIMB_DONE, 0x1F,
    0x00, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_008434 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gHorseGanonSkelLimbsLimb_008434DL_000AE0
};

SkinLimb gHorseGanonSkelLimbsLimb_008444 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gHorseGanonSkelLimbsLimb_008444DL_000D50
};

SkinLimb gHorseGanonSkelLimbsLimb_008454 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gHorseGanonSkelLimbsLimb_008454DL_001100
};

SkinLimb gHorseGanonSkelLimbsLimb_008464 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gHorseGanonSkelLimbsLimb_008464DL_001F20
};

SkinLimb gHorseGanonSkelLimbsLimb_008474 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gHorseGanonSkelLimbsLimb_008474DL_0060F0
};

SkinLimb gHorseGanonSkelLimbsLimb_008484 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gHorseGanonSkelLimbsLimb_008484DL_009790
};

SkinLimb gHorseGanonSkelLimbsLimb_008494 = { 
    { 753, -174, -682 }, 0x26, 0x2D,
    0x00, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_0084A4 = { 
    { 0, 0, 0 }, 0x27, LIMB_DONE,
    0x05, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_0084B4 = { 
    { 1292, 0, 0 }, 0x28, LIMB_DONE,
    0x05, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_0084C4 = { 
    { 2680, 0, 0 }, 0x29, LIMB_DONE,
    0x05, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_0084D4 = { 
    { 1809, 0, 0 }, 0x2A, 0x2C,
    0x05, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_0084E4 = { 
    { 687, 0, 0 }, LIMB_DONE, 0x2B,
    0x00, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_0084F4 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gHorseGanonSkelLimbsLimb_0084F4DL_001630
};

SkinLimb gHorseGanonSkelLimbsLimb_008504 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gHorseGanonSkelLimbsLimb_008504DL_001880
};

SkinLimb gHorseGanonSkelLimbsLimb_008514 = { 
    { -753, -174, -682 }, 0x2E, LIMB_DONE,
    0x00, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_008524 = { 
    { 0, 0, 0 }, 0x2F, LIMB_DONE,
    0x05, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_008534 = { 
    { 1292, 0, 0 }, 0x30, LIMB_DONE,
    0x05, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_008544 = { 
    { 2680, 0, 0 }, 0x31, LIMB_DONE,
    0x05, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_008554 = { 
    { 1809, 0, 0 }, 0x32, 0x34,
    0x05, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_008564 = { 
    { 687, 0, 0 }, LIMB_DONE, 0x33,
    0x00, NULL
};

SkinLimb gHorseGanonSkelLimbsLimb_008574 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gHorseGanonSkelLimbsLimb_008574DL_001A90
};

SkinLimb gHorseGanonSkelLimbsLimb_008584 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gHorseGanonSkelLimbsLimb_008584DL_001CE0
};

void* gHorseGanonSkelLimbs[] = {
    &gHorseGanonSkelLimbsLimb_008244,
    &gHorseGanonSkelLimbsLimb_008254,
    &gHorseGanonSkelLimbsLimb_008264,
    &gHorseGanonSkelLimbsLimb_008274,
    &gHorseGanonSkelLimbsLimb_008284,
    &gHorseGanonSkelLimbsLimb_008294,
    &gHorseGanonSkelLimbsLimb_0082A4,
    &gHorseGanonSkelLimbsLimb_0082B4,
    &gHorseGanonSkelLimbsLimb_0082C4,
    &gHorseGanonSkelLimbsLimb_0082D4,
    &gHorseGanonSkelLimbsLimb_0082E4,
    &gHorseGanonSkelLimbsLimb_0082F4,
    &gHorseGanonSkelLimbsLimb_008304,
    &gHorseGanonSkelLimbsLimb_008314,
    &gHorseGanonSkelLimbsLimb_008324,
    &gHorseGanonSkelLimbsLimb_008334,
    &gHorseGanonSkelLimbsLimb_008344,
    &gHorseGanonSkelLimbsLimb_008354,
    &gHorseGanonSkelLimbsLimb_008364,
    &gHorseGanonSkelLimbsLimb_008374,
    &gHorseGanonSkelLimbsLimb_008384,
    &gHorseGanonSkelLimbsLimb_008394,
    &gHorseGanonSkelLimbsLimb_0083A4,
    &gHorseGanonSkelLimbsLimb_0083B4,
    &gHorseGanonSkelLimbsLimb_0083C4,
    &gHorseGanonSkelLimbsLimb_0083D4,
    &gHorseGanonSkelLimbsLimb_0083E4,
    &gHorseGanonSkelLimbsLimb_0083F4,
    &gHorseGanonSkelLimbsLimb_008404,
    &gHorseGanonSkelLimbsLimb_008414,
    &gHorseGanonSkelLimbsLimb_008424,
    &gHorseGanonSkelLimbsLimb_008434,
    &gHorseGanonSkelLimbsLimb_008444,
    &gHorseGanonSkelLimbsLimb_008454,
    &gHorseGanonSkelLimbsLimb_008464,
    &gHorseGanonSkelLimbsLimb_008474,
    &gHorseGanonSkelLimbsLimb_008484,
    &gHorseGanonSkelLimbsLimb_008494,
    &gHorseGanonSkelLimbsLimb_0084A4,
    &gHorseGanonSkelLimbsLimb_0084B4,
    &gHorseGanonSkelLimbsLimb_0084C4,
    &gHorseGanonSkelLimbsLimb_0084D4,
    &gHorseGanonSkelLimbsLimb_0084E4,
    &gHorseGanonSkelLimbsLimb_0084F4,
    &gHorseGanonSkelLimbsLimb_008504,
    &gHorseGanonSkelLimbsLimb_008514,
    &gHorseGanonSkelLimbsLimb_008524,
    &gHorseGanonSkelLimbsLimb_008534,
    &gHorseGanonSkelLimbsLimb_008544,
    &gHorseGanonSkelLimbsLimb_008554,
    &gHorseGanonSkelLimbsLimb_008564,
    &gHorseGanonSkelLimbsLimb_008574,
    &gHorseGanonSkelLimbsLimb_008584,
};

SkeletonHeader gHorseGanonSkel = { 
    gHorseGanonSkelLimbs, ARRAY_COUNT(gHorseGanonSkelLimbs)
};

Vtx object_horse_ganonVtx_008670[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonVtx_008670.vtx.inc"
};

Gfx gHorseGanonSkelLimbsLimb_008314DL_0090F0[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_horse_ganonTex_00B010, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_horse_ganonVtx_008670, 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 5, 0, 6, 0),
    gsSP2Triangles(6, 0, 2, 0, 7, 5, 8, 0),
    gsSP2Triangles(5, 7, 0, 0, 9, 1, 4, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 16, 17, 0, 2, 1, 9, 0),
    gsSP2Triangles(11, 10, 18, 0, 17, 16, 19, 0),
    gsSP2Triangles(5, 20, 8, 0, 15, 14, 21, 0),
    gsSP1Triangle(20, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gHorseGanonHeadHairTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_horse_ganonVtx_008670[22], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(7, 30, 8, 0, 31, 12, 14, 0),
    gsSPVertex(&object_horse_ganonVtx_008670[54], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 8, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 2, 0, 18, 19, 20, 0),
    gsSP2Triangles(3, 5, 10, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(24, 30, 25, 0, 31, 19, 18, 0),
    gsSPVertex(&object_horse_ganonVtx_008670[86], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gHorseGanonEyeTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_horse_ganonVtx_008670[92], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(10, 9, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 15, 0, 5, 16, 17, 0),
    gsSP2Triangles(18, 13, 12, 0, 8, 18, 9, 0),
    gsSP2Triangles(19, 20, 21, 0, 9, 18, 15, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(18, 12, 15, 0, 15, 14, 11, 0),
    gsSP2Triangles(28, 2, 21, 0, 13, 29, 14, 0),
    gsSPVertex(&object_horse_ganonVtx_008670[122], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_MODULATEI_PRIM, G_CC_PASS2),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(&object_horse_ganonVtx_008670[131], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_horse_ganonVtx_008670[137], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 6, 4, 7, 0),
    gsSP2Triangles(8, 1, 9, 0, 8, 9, 10, 0),
    gsSP1Triangle(7, 4, 11, 0),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_MODULATEI_PRIM, G_CC_PASS2),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(&object_horse_ganonVtx_008670[149], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_horse_ganonVtx_008670[152], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_MODULATEI_PRIM, G_CC_PASS2),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(&object_horse_ganonVtx_008670[158], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_horse_ganonVtx_008670[161], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_ganonTex_00AA10, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_horse_ganonVtx_008670[164], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSPEndDisplayList(),
};

Vtx object_horse_ganonVtx_009480[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonVtx_009480.vtx.inc"
};

Gfx gHorseGanonSkelLimbsLimb_008484DL_009790[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_horse_ganonTex_00B690, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_horse_ganonVtx_009480, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_ganonTex_00B610, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 51, 51, 51, 255),
    gsSPVertex(&object_horse_ganonVtx_009480[16], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 34, 34, 34, 255),
    gsSPVertex(&object_horse_ganonVtx_009480[20], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 0, 7, 0, 6, 1, 0, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 4, 8, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 51, 51, 51, 255),
    gsSPVertex(&object_horse_ganonVtx_009480[30], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_ganonTex_00A810, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_horse_ganonVtx_009480[34], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 6, 0),
    gsSP2Triangles(1, 9, 4, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 10, 12, 0, 0, 14, 1, 0),
    gsSPEndDisplayList(),
};

u8 object_horse_ganon_possiblePadding_009948[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_horse_ganonVtx_009950[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonVtx_009950.vtx.inc"
};

Gfx gHorseGanonSkelLimbsLimb_008324DL_009BE0[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_horse_ganonTex_00B510, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_horse_ganonVtx_009950, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_ganonTex_00B110, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_horse_ganonVtx_009950[12], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 2, 0),
    gsSP2Triangles(11, 12, 13, 0, 7, 0, 8, 0),
    gsSP2Triangles(6, 10, 9, 0, 14, 15, 5, 0),
    gsSP2Triangles(4, 16, 5, 0, 17, 15, 18, 0),
    gsSP2Triangles(18, 19, 17, 0, 0, 7, 1, 0),
    gsSP2Triangles(3, 5, 15, 0, 20, 6, 9, 0),
    gsSP2Triangles(17, 21, 4, 0, 4, 3, 17, 0),
    gsSP2Triangles(8, 10, 6, 0, 13, 22, 11, 0),
    gsSP2Triangles(0, 2, 10, 0, 5, 23, 14, 0),
    gsSP2Triangles(9, 2, 24, 0, 17, 3, 15, 0),
    gsSP2Triangles(8, 0, 10, 0, 25, 26, 27, 0),
    gsSP1Triangle(27, 28, 25, 0),
    gsSPEndDisplayList(),
};

Gfx gHorseGanonSkelLimbsLimb_008294SkinLimbDL_009D20[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_horse_ganonTex_00BE90, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(0x08000000, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 4, 11, 0),
    gsSP2Triangles(10, 12, 13, 0, 14, 11, 13, 0),
    gsSP2Triangles(15, 9, 8, 0, 16, 6, 17, 0),
    gsSP2Triangles(18, 19, 17, 0, 15, 20, 9, 0),
    gsSP2Triangles(5, 17, 6, 0, 21, 22, 11, 0),
    gsSP2Triangles(23, 22, 21, 0, 24, 25, 26, 0),
    gsSP2Triangles(22, 27, 26, 0, 28, 29, 26, 0),
    gsSP2Triangles(12, 29, 28, 0, 10, 29, 12, 0),
    gsSP2Triangles(22, 23, 27, 0, 9, 29, 10, 0),
    gsSP2Triangles(30, 26, 29, 0, 9, 30, 29, 0),
    gsSP2Triangles(25, 22, 26, 0, 25, 31, 15, 0),
    gsSPVertex(0x08000200, 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 6, 8, 0),
    gsSP2Triangles(8, 10, 11, 0, 10, 12, 11, 0),
    gsSP2Triangles(10, 13, 12, 0, 10, 14, 13, 0),
    gsSP2Triangles(7, 10, 8, 0, 7, 14, 10, 0),
    gsSP2Triangles(15, 9, 8, 0, 16, 9, 15, 0),
    gsSP2Triangles(17, 7, 6, 0, 18, 19, 6, 0),
    gsSP2Triangles(20, 19, 18, 0, 2, 5, 21, 0),
    gsSP2Triangles(2, 21, 22, 0, 23, 18, 6, 0),
    gsSP2Triangles(24, 6, 9, 0, 25, 26, 27, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_ganonTex_00A7F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 4, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 2, 2, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(0x080003C0, 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 4, 3, 0),
    gsSP2Triangles(0, 10, 1, 0, 0, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 7, 0, 7, 20, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 7, 23, 20, 0),
    gsSP2Triangles(24, 23, 6, 0, 24, 22, 21, 0),
    gsSP2Triangles(25, 6, 23, 0, 15, 17, 26, 0),
    gsSP2Triangles(12, 11, 13, 0, 1, 10, 27, 0),
    gsSP2Triangles(0, 2, 5, 0, 26, 28, 15, 0),
    gsSP2Triangles(28, 16, 15, 0, 29, 7, 30, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_ganonTex_00B010, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(0x080005B0, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(1, 5, 2, 0, 1, 6, 5, 0),
    gsSP2Triangles(4, 3, 7, 0, 2, 8, 0, 0),
    gsSP2Triangles(2, 4, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 12, 9, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 16, 13, 0, 17, 3, 2, 0),
    gsSP1Triangle(17, 2, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gHorseGanonHeadHairTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(0x080006D0, 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 6, 2, 0, 2, 7, 0, 0),
    gsSP2Triangles(4, 3, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 16, 21, 22, 0),
    gsSP2Triangles(23, 16, 18, 0, 24, 25, 26, 0),
    gsSP2Triangles(22, 27, 16, 0, 28, 10, 9, 0),
    gsSP1Triangle(20, 12, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_ganonTex_00A5F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(0x080008A0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 14, 12, 0),
    gsSP2Triangles(9, 14, 10, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(5, 4, 24, 0, 20, 19, 15, 0),
    gsSP2Triangles(3, 25, 4, 0, 26, 27, 28, 0),
    gsSP2Triangles(17, 20, 15, 0, 29, 30, 31, 0),
    gsSPVertex(0x08000AA0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 6, 3, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 8, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 7, 15, 6, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 19, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 27, 25, 0, 28, 29, 30, 0),
    gsSPVertex(0x08000C90, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 4, 3, 0, 4, 5, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(11, 13, 14, 0, 10, 13, 11, 0),
    gsSP2Triangles(1, 4, 2, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 16, 15, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 30, 28, 27, 0),
    gsSPVertex(0x08000E80, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP1Triangle(10, 11, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_ganonTex_00AA10, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(0x08000F50, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 5, 4, 3, 0),
    gsSP2Triangles(6, 5, 3, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 16, 7, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 20, 21, 0, 17, 21, 18, 0),
    gsSP2Triangles(17, 22, 20, 0, 22, 23, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(9, 14, 13, 0),
    gsSPVertex(0x08001130, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 119, 119, 119, 255),
    gsSPVertex(0x08001190, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(0x080011C0, 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gHorseGanonLegTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(0x08001230, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 7, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 2, 19, 0, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 119, 119, 119, 255),
    gsSPVertex(0x08001370, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(0x080013A0, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 9, 11, 0, 13, 9, 12, 0),
    gsSP1Triangle(5, 14, 15, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 119, 119, 119, 255),
    gsSPVertex(0x080014A0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(0x080014D0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 119, 119, 119, 255),
    gsSPVertex(0x08001510, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(0x08001540, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 1, 6, 0, 7, 8, 9, 0),
    gsSPEndDisplayList(),
};

u8 object_horse_ganon_possiblePadding_00A368[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gHorseGanonLegTex[] = {
#include "assets/objects/object_horse_ganon/horse_ganon_leg.rgba16.inc.c"
};

u64 object_horse_ganonTex_00A570[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonTex_00A570.rgba16.inc.c"
};

u64 object_horse_ganonTex_00A5F0[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonTex_00A5F0.rgba16.inc.c"
};

u64 object_horse_ganonTex_00A7F0[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonTex_00A7F0.rgba16.inc.c"
};

u64 object_horse_ganonTex_00A810[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonTex_00A810.rgba16.inc.c"
};

u64 object_horse_ganonTex_00AA10[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonTex_00AA10.rgba16.inc.c"
};

u64 gHorseGanonEyeTex[] = {
#include "assets/objects/object_horse_ganon/horse_ganon_eye.rgba16.inc.c"
};

u64 gHorseGanonHeadHairTex[] = {
#include "assets/objects/object_horse_ganon/horse_ganon_head_hair.rgba16.inc.c"
};

u64 object_horse_ganonTex_00B010[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonTex_00B010.rgba16.inc.c"
};

u64 object_horse_ganonTex_00B110[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonTex_00B110.rgba16.inc.c"
};

u64 object_horse_ganonTex_00B510[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonTex_00B510.rgba16.inc.c"
};

u64 object_horse_ganonTex_00B610[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonTex_00B610.rgba16.inc.c"
};

u64 object_horse_ganonTex_00B690[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonTex_00B690.rgba16.inc.c"
};

u64 object_horse_ganonTex_00BE90[] = {
#include "assets/objects/object_horse_ganon/object_horse_ganonTex_00BE90.rgba16.inc.c"
};

