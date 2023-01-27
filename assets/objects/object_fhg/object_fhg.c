#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_fhg.h"

Vtx object_fhgVtx_000000[] = {
#include "assets/objects/object_fhg/object_fhgVtx_000000.vtx.inc"
};

Gfx gPhantomHorseSkelLimbsLimb_00AD54DL_001F50[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fhgTex_0043A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_fhgVtx_000000, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fhgTex_003FA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_fhgVtx_000000[12], 29, 0),
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

Gfx gPhantomHorseSkelLimbsLimb_00AD44DL_002098[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fhgTex_004CA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_fhgVtx_000000[41], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(6, 2, 1, 0, 9, 11, 12, 0),
    gsSP2Triangles(10, 13, 8, 0, 14, 3, 15, 0),
    gsSP2Triangles(16, 11, 9, 0, 16, 9, 8, 0),
    gsSP2Triangles(13, 10, 17, 0, 15, 18, 19, 0),
    gsSP2Triangles(15, 3, 18, 0, 5, 6, 1, 0),
    gsSP2Triangles(3, 5, 18, 0, 7, 4, 14, 0),
    gsSP2Triangles(6, 4, 7, 0, 5, 4, 6, 0),
    gsSP2Triangles(4, 3, 14, 0, 20, 21, 22, 0),
    gsSP1Triangle(23, 24, 25, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fhgTex_003DA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_fhgVtx_000000[67], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(4, 5, 3, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 5, 2, 0),
    gsSP2Triangles(13, 10, 9, 0, 14, 13, 15, 0),
    gsSP2Triangles(16, 11, 14, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 20, 19, 0, 17, 20, 18, 0),
    gsSP2Triangles(3, 5, 12, 0, 13, 14, 10, 0),
    gsSP2Triangles(21, 7, 6, 0, 4, 0, 2, 0),
    gsSP2Triangles(22, 21, 6, 0, 7, 22, 8, 0),
    gsSP2Triangles(2, 5, 4, 0, 14, 11, 10, 0),
    gsSP2Triangles(22, 6, 8, 0, 23, 17, 19, 0),
    gsSP2Triangles(20, 23, 19, 0, 24, 16, 14, 0),
    gsSP2Triangles(1, 0, 3, 0, 14, 15, 24, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fhgTex_003BA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_fhgVtx_000000[92], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(&object_fhgVtx_000000[95], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_fhgVtx_000000[98], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(&object_fhgVtx_000000[105], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_fhgVtx_000000[108], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(&object_fhgVtx_000000[111], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_fhgVtx_000000[114], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 4, 3, 0, 0, 7, 8, 0),
    gsSP2Triangles(0, 8, 1, 0, 9, 2, 1, 0),
    gsSP2Triangles(0, 2, 10, 0, 11, 0, 10, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(&object_fhgVtx_000000[126], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_fhgVtx_000000[129], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fhgTex_003520, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_fhgVtx_000000[133], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(4, 1, 0, 0, 3, 5, 4, 0),
    gsSP2Triangles(2, 6, 7, 0, 0, 2, 7, 0),
    gsSPEndDisplayList(),
};

Gfx gPhantomHorseSkelLimbsLimb_00ADE4DL_002438[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fhgTex_003720, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_fhgVtx_000000[141], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 11, 10, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 15, 14, 0),
    gsSP2Triangles(24, 21, 20, 0, 24, 25, 21, 0),
    gsSP2Triangles(26, 3, 2, 0, 5, 17, 16, 0),
    gsSP2Triangles(9, 8, 27, 0, 5, 4, 17, 0),
    gsSP2Triangles(28, 20, 22, 0, 7, 6, 29, 0),
    gsSPEndDisplayList(),
};

Gfx gPhantomHorseSkelLimbsLimb_00ADF4DL_002510[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fhgTex_003920, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_fhgVtx_000000[171], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 4, 2, 0),
    gsSP2Triangles(6, 5, 2, 0, 6, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fhgTex_003720, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_fhgVtx_000000[178], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSPEndDisplayList(),
};

Gfx gPhantomHorseSkelLimbsLimb_00AF24DL_002610[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fhgTex_004DA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_fhgVtx_000000[196], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fhgTex_003320, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_fhgVtx_000000[200], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 6, 0, 0, 2, 7, 6, 0),
    gsSP2Triangles(8, 0, 6, 0, 4, 9, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 2, 5, 7, 0),
    gsSP2Triangles(1, 3, 5, 0, 1, 5, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gPhantomHorseSkelLimbsLimb_00ADC4DL_002710[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fhgTex_004DA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_fhgVtx_000000[210], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fhgTex_003320, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_fhgVtx_000000[214], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 2, 1, 0),
    gsSP2Triangles(6, 3, 2, 0, 7, 6, 2, 0),
    gsSP2Triangles(1, 8, 7, 0, 9, 4, 6, 0),
    gsSP2Triangles(8, 9, 6, 0, 8, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx gPhantomHorseSkelLimbsLimb_00AF34DL_002810[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fhgTex_003320, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_fhgVtx_000000[224], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 6, 0),
    gsSP2Triangles(0, 9, 1, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 16, 14, 0),
    gsSP1Triangle(3, 17, 4, 0),
    gsSPEndDisplayList(),
};

Gfx gPhantomHorseSkelLimbsLimb_00ADD4DL_0028C0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fhgTex_003320, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_fhgVtx_000000[242], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 5, 17, 3, 0),
    gsSP1Triangle(6, 8, 4, 0),
    gsSPEndDisplayList(),
};

Gfx gPhantomHorseSkelLimbsLimb_00AEA4DL_002970[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fhgTex_004CA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_fhgVtx_000000[260], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fhgTex_0044A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_fhgVtx_000000[266], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(6, 12, 13, 0, 6, 5, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fhgTex_003B20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_fhgVtx_000000[280], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP1Triangle(0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fhgTex_003720, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 136, 136, 136, 255),
    gsSPVertex(&object_fhgVtx_000000[285], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(2, 1, 4, 0, 5, 6, 7, 0),
    gsSP1Triangle(8, 9, 10, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_fhgVtx_000000[296], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(4, 3, 12, 0, 13, 14, 15, 0),
    gsSP1Triangle(5, 15, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fhgTex_003520, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_fhgVtx_000000[312], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 0, 0, 0, 5, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fhgTex_003320, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 136, 136, 136, 255),
    gsSPVertex(&object_fhgVtx_000000[318], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_fhgVtx_000000[324], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 0, 2, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(9, 14, 10, 0, 15, 16, 17, 0),
    gsSPEndDisplayList(),
};

Gfx gPhantomHorseSkelLimbsLimb_00AEB4DL_002C48[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fhgTex_0044A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_fhgVtx_000000[342], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fhgTex_003B20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 34, 34, 34, 255),
    gsSPVertex(&object_fhgVtx_000000[358], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(1, 3, 8, 0, 9, 7, 4, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 51, 51, 51, 255),
    gsSPVertex(&object_fhgVtx_000000[368], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 0, 5, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fhgTex_003920, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_fhgVtx_000000[374], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 2, 5, 6, 0),
    gsSP2Triangles(3, 2, 6, 0, 3, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx gPhantomHorseSkelLimbsLimb_00AE94DL_002DE8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fhgTex_003920, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_fhgVtx_000000[382], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 1, 0, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fhgTex_003720, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_fhgVtx_000000[389], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSPEndDisplayList(),
};

Gfx gPhantomHorseSkelLimbsLimb_00AE74DL_002EE8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fhgTex_003320, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_fhgVtx_000000[407], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 9, 11, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 13, 15, 0, 5, 17, 3, 0),
    gsSP1Triangle(4, 6, 8, 0),
    gsSPEndDisplayList(),
};

Gfx gPhantomHorseSkelLimbsLimb_00AE64DL_002F98[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fhgTex_004DA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_fhgVtx_000000[425], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fhgTex_003320, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_fhgVtx_000000[429], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 1, 0, 7, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 7, 0),
    gsSP2Triangles(7, 8, 1, 0, 4, 6, 9, 0),
    gsSP2Triangles(4, 9, 8, 0, 7, 4, 8, 0),
    gsSPEndDisplayList(),
};

Gfx gPhantomHorseSkelLimbsLimb_00AE84DL_003098[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fhgTex_003720, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_fhgVtx_000000[439], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 8, 11, 0),
    gsSP2Triangles(20, 21, 22, 0, 12, 15, 23, 0),
    gsSP2Triangles(22, 21, 24, 0, 21, 25, 24, 0),
    gsSP2Triangles(0, 3, 26, 0, 18, 17, 5, 0),
    gsSP2Triangles(27, 10, 9, 0, 17, 6, 5, 0),
    gsSP2Triangles(20, 22, 28, 0, 29, 4, 7, 0),
    gsSPEndDisplayList(),
};

Gfx gPhantomHorseSkelLimbsLimb_00AFB4DL_003170[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fhgTex_003320, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_fhgVtx_000000[469], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 7, 0),
    gsSP2Triangles(1, 9, 2, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 14, 16, 15, 0),
    gsSP1Triangle(3, 17, 4, 0),
    gsSPEndDisplayList(),
};

Gfx gPhantomHorseSkelLimbsLimb_00AFA4DL_003220[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fhgTex_004DA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_fhgVtx_000000[487], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fhgTex_003320, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_fhgVtx_000000[491], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 6, 0, 0, 6, 7, 0, 0),
    gsSP2Triangles(6, 2, 8, 0, 3, 9, 4, 0),
    gsSP2Triangles(8, 7, 6, 0, 7, 3, 0, 0),
    gsSP2Triangles(3, 5, 1, 0, 0, 3, 1, 0),
    gsSPEndDisplayList(),
};

u64 object_fhgTex_003320[] = {
#include "assets/objects/object_fhg/object_fhgTex_003320.rgba16.inc.c"
};

u64 object_fhgTex_003520[] = {
#include "assets/objects/object_fhg/object_fhgTex_003520.rgba16.inc.c"
};

u64 object_fhgTex_003720[] = {
#include "assets/objects/object_fhg/object_fhgTex_003720.rgba16.inc.c"
};

u64 object_fhgTex_003920[] = {
#include "assets/objects/object_fhg/object_fhgTex_003920.rgba16.inc.c"
};

u64 object_fhgTex_003B20[] = {
#include "assets/objects/object_fhg/object_fhgTex_003B20.rgba16.inc.c"
};

u64 object_fhgTex_003BA0[] = {
#include "assets/objects/object_fhg/object_fhgTex_003BA0.rgba16.inc.c"
};

u64 object_fhgTex_003DA0[] = {
#include "assets/objects/object_fhg/object_fhgTex_003DA0.rgba16.inc.c"
};

u64 object_fhgTex_003FA0[] = {
#include "assets/objects/object_fhg/object_fhgTex_003FA0.rgba16.inc.c"
};

u64 object_fhgTex_0043A0[] = {
#include "assets/objects/object_fhg/object_fhgTex_0043A0.rgba16.inc.c"
};

u64 object_fhgTex_0044A0[] = {
#include "assets/objects/object_fhg/object_fhgTex_0044A0.rgba16.inc.c"
};

u64 object_fhgTex_004CA0[] = {
#include "assets/objects/object_fhg/object_fhgTex_004CA0.rgba16.inc.c"
};

u64 object_fhgTex_004DA0[] = {
#include "assets/objects/object_fhg/object_fhgTex_004DA0.rgba16.inc.c"
};

s16 sPhantomHorseUnusedRearingAnimFrameData[] = {
    0x0000, 0x4000, 0x8C17, 0xF150, 0xEE79, 0xECDA, 0xEC0F, 0xEB5E, 0xEAC6, 0xEA49, 0xE9E8, 0xE9A4, 0xE97D, 0xE974, 
    0xE98B, 0xE9C2, 0xEA1A, 0xEA95, 0xEB32, 0xEBF4, 0xECDA, 0xEE62, 0xF0D7, 0x148C, 0x1466, 0x1452, 0x144C, 0x1448, 
    0x1444, 0x1441, 0x143E, 0x143D, 0x143B, 0x143B, 0x143B, 0x143C, 0x143E, 0x1441, 0x1444, 0x1449, 0x144E, 0x1458, 
    0x146C, 0xF876, 0xF87E, 0xF882, 0xF881, 0xF87F, 0xF87C, 0xF879, 0xF876, 0xF873, 0xF86F, 0xF86C, 0xF869, 0xF866, 
    0xF864, 0xF862, 0xF861, 0xF861, 0xF863, 0xF86B, 0xF87C, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xFFBA, 
    0xFF47, 0xFF2F, 0x0000, 0x035B, 0x07FF, 0x0A24, 0x0846, 0x0478, 0x0054, 0xFD77, 0xFE33, 0x0000, 0x0042, 0xFC86, 
    0xFCF8, 0x0000, 0x09B7, 0x1605, 0x1A7C, 0x11BF, 0x0231, 0xF30B, 0xEB83, 0xF4D5, 0x076C, 0x1143, 0x0B01, 0xFDA7, 
    0xEFB8, 0xE7B5, 0xF217, 0x0000, 0x0278, 0xF495, 0xF8AB, 0xF92B, 0xF2C2, 0xE8C4, 0xE223, 0xE066, 0xE085, 0xE298, 
    0xE6B8, 0xF130, 0xFF3F, 0x0666, 0x022F, 0xF871, 0xEE1A, 0xE816, 0xF055, 0xF92B, 0xF631, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x021F, 0x049B, 0x0709, 0x08FF, 0x08B9, 0x0984, 0x1425, 0x1360, 0x106E, 0x0CE1, 
    0x0871, 0x0386, 0x0000, 0xFBE1, 0xFC69, 0x0000, 0x0906, 0x151C, 0x1F5F, 0x1EE5, 0x122C, 0x036C, 0xF4C4, 0xE850, 
    0xDDA9, 0xDF02, 0x1063, 0x1712, 0x1577, 0x0F5D, 0xFDAC, 0xECF5, 0x0000, 0x0369, 0x0615, 0x079D, 0x0760, 0x0600, 
    0x0446, 0x0112, 0x002A, 0xFFBA, 0xFF05, 0xFD4B, 0xF576, 0xF224, 0x10E8, 0x0F2E, 0x073D, 0xFD63, 0xEFE8, 0xE203, 
    0xDEC9, 0x855C, 0x8514, 0x83AE, 0x81C6, 0x8050, 0x803F, 0x859E, 0x8ABE, 0x8910, 0x8540, 0x8282, 0x8376, 0x8507, 
    0x8509, 0x84EA, 0x84B4, 0x846E, 0x8423, 0x83DA, 0x839C, 0x0000, 0x0000, 0x0000, 0xFFD1, 0xFF82, 0xFF72, 0x0000, 
    0x0257, 0x058D, 0x06E1, 0x01BC, 0xFD5B, 0x0442, 0x0AE2, 0x09A8, 0x0644, 0x0277, 0x0000, 0xFF3A, 0xFF21, 0x0000, 
    0x0000, 0x0000, 0x000F, 0x0028, 0x002D, 0x0000, 0xFF66, 0xFE85, 0xFDCF, 0xFDD3, 0xFD9F, 0xFB95, 0xFA30, 0xFB33, 
    0xFCF8, 0xFECE, 0x0000, 0x006A, 0x0077, 0xFC0E, 0xEF66, 0xE653, 0xE364, 0xE2BE, 0xE393, 0xE51A, 0xE913, 0xEEC0, 
    0xF194, 0xEAF0, 0xE482, 0xEBA4, 0xF2C7, 0xF0A8, 0xEBC7, 0xE749, 0xE653, 0xEA74, 0xF1A5, 0xFF2C, 0xFF2C, 0x0000, 
    0x01CA, 0x0412, 0x069F, 0x0936, 0x0B9E, 0x0D9D, 0x0EFA, 0x0F7C, 0x0ECA, 0x0CF6, 0x0A61, 0x076A, 0x0472, 0x01D9, 
    0x0000, 0xFF11, 0xFECB, 0x004E, 0x004E, 0x0000, 0xFF57, 0xFE80, 0xFD90, 0xFC9B, 0xFBB8, 0xFAFC, 0xFA7B, 0xFA4C, 
    0xFA8D, 0xFB39, 0xFC2D, 0xFD45, 0xFE5D, 0xFF52, 0x0000, 0x0058, 0x0072, 0xED5C, 0xE780, 0xE3D2, 0xE282, 0xE1A3, 
    0xE122, 0xE0E8, 0xE0DF, 0xE0F4, 0xE110, 0xE11E, 0xE117, 0xE111, 0xE121, 0xE15A, 0xE1D2, 0xE29E, 0xE3D2, 0xE606, 
    0xE94A, 0x082C, 0x0B91, 0x0DDA, 0x0F39, 0x10BD, 0x1239, 0x137D, 0x145B, 0x14A5, 0x142B, 0x12BE, 0x0F8B, 0x0A6A, 
    0x042C, 0xFDA3, 0xF7A1, 0xF2F9, 0xF07C, 0xF19A, 0xF605, 0x0043, 0x0043, 0x0000, 0xFF6A, 0xFEA6, 0xFDC9, 0xFCEA, 
    0xFC20, 0xFB81, 0xFB23, 0xFB1C, 0xFB9B, 0xFC9D, 0xFDF0, 0xFF65, 0x00CB, 0x01F1, 0x02A6, 0x02B8, 0x0242, 0xF699, 
    0xF361, 0xF15D, 0xF0A8, 0xF035, 0xEFF6, 0xEFDE, 0xEFDF, 0xEFEB, 0xEFF6, 0xEFF0, 0xEFCF, 0xEF9E, 0xEF70, 0xEF57, 
    0xEF67, 0xEFB3, 0xF04D, 0xF19D, 0xF3A8, 0x0000, 0xFF77, 0xFE82, 0xFD57, 0xFC2B, 0xFB34, 0xFAA6, 0xFAB8, 0xFB9E, 
    0xFD8E, 0x059B, 0x1370, 0x1F27, 0x20DA, 0x1466, 0xFF13, 0xE719, 0xD2B1, 0xC815, 0xCD0B, 0x5BB7, 0x5632, 0x4F69, 
    0x47D0, 0x3FD9, 0x37F8, 0x30A2, 0x2A49, 0x2561, 0x225E, 0x33EB, 0x46AA, 0x376B, 0x244D, 0x1F0C, 0x1E34, 0x225E, 
    0x3623, 0x46AB, 0x3D51, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xFFC5, 0xFF64, 0xFF50, 0x0000, 
    0x0442, 0x0755, 0x03C6, 0xFE13, 0xFA4C, 0xFC94, 0x0000, 0x0086, 0x0096, 0x9711, 0x960F, 0x9552, 0x950A, 0x9506, 
    0x950D, 0x951B, 0x9532, 0x9540, 0x954B, 0x9552, 0x954D, 0x953E, 0x952B, 0x951D, 0x9519, 0x9529, 0x9552, 0x9609, 
    0x974F, 0xFD35, 0xFE51, 0xFF2F, 0xFFCE, 0x002F, 0x0000, 0xFE30, 0xFC55, 0xFC24, 0xFC79, 0xFCBE, 0xFCC2, 0xFCBE, 
    0xFCB6, 0xFCAE, 0xFCAA, 0xFCB8, 0xFCBE, 0xFC8F, 0xFC40, 0xFE59, 0xFD79, 0xFD26, 0xFDD1, 0xFF09, 0x0000, 0x0025, 
    0x0000, 0xFFFE, 0xFFFC, 0x0000, 0x000D, 0x001E, 0x0030, 0x003F, 0x0044, 0x002C, 0x0000, 0xFFD3, 0xFFA0, 0x05F5, 
    0xF637, 0xEDD4, 0xF102, 0xFB8B, 0x079B, 0x1973, 0x2440, 0x189D, 0x0531, 0xF79B, 0xF33C, 0xF1AB, 0xF1DA, 0xF2BC, 
    0xF343, 0xF42F, 0xF79B, 0xFC40, 0x00C4, 0x2F81, 0x3829, 0x3C04, 0x3684, 0x2C37, 0x2736, 0x33F8, 0x411C, 0x421C, 
    0x41C9, 0x4083, 0x3EAB, 0x3CA1, 0x3AC5, 0x3978, 0x391A, 0x3EFA, 0x4359, 0x3FE1, 0x3B18, 0x27F4, 0x3404, 0x3D1A, 
    0x4169, 0x42BF, 0x4396, 0x44D1, 0x4433, 0x4253, 0x3F4E, 0x3836, 0x1BC3, 0x4C66, 0x4B9F, 0x496A, 0x45F8, 0x417C, 
    0x3C28, 0x3631, 0x2FC7, 0x0080, 0x00B0, 0x0000, 0xFD0F, 0xF93E, 0xF7DA, 0xFE77, 0x049E, 0x0183, 0xFB92, 0xF7DA, 
    0xFB67, 0x0000, 0x00BE, 0x00D3, 0x008A, 0x002C, 0x0000, 0x000B, 0x001C, 0x9AAA, 0x9A21, 0x99CD, 0x99BE, 0x99CB, 
    0x99E6, 0x9A05, 0x9A1C, 0x9A2F, 0x9A40, 0x9A3F, 0x9A06, 0x99CD, 0x99BE, 0x99B1, 0x99AD, 0x99B5, 0x99CD, 0x9A5A, 
    0x9B58, 0x0868, 0x06E8, 0x054C, 0x0333, 0x00FE, 0x0000, 0x02CF, 0x0597, 0x0431, 0x018C, 0x0000, 0x01C9, 0x047B, 
    0x04D1, 0x0499, 0x045C, 0x0436, 0x047B, 0x059E, 0x0731, 0x0000, 0x0000, 0x0000, 0xFFDF, 0xFFBE, 0x0000, 0x0197, 
    0x02E3, 0x0244, 0x0101, 0x0000, 0xFFF7, 0x0000, 0xFEAC, 0x0071, 0x020A, 0x012D, 0x0000, 0xFFD0, 0xFFCA, 0x1562, 
    0x0DBC, 0x07E7, 0x0619, 0x061C, 0x02C8, 0xF1F4, 0xE655, 0xF1ED, 0x057B, 0x1542, 0x181B, 0x1833, 0x22A9, 0x12D9, 
    0x04F0, 0x0D0B, 0x1833, 0x1A06, 0x19B1, 0x2EF8, 0x3C05, 0x4359, 0x41EE, 0x3ACA, 0x3256, 0x2616, 0x1D1C, 0x2110, 
    0x293D, 0x2CD4, 0x2155, 0x14E7, 0x224A, 0x2952, 0x2FF8, 0x3C44, 0x4359, 0x4014, 0x3ABD, 0x2403, 0x2F50, 0x36FD, 
    0x3A95, 0x3C73, 0x3D39, 0x3D8B, 0x3E0A, 0x3E03, 0x3D4E, 0x3D61, 0x43D6, 0x42CE, 0x134C, 0x259E, 0x3D50, 0x3DB0, 
    0x36FD, 0x31F3, 0x2CF0, 0x0046, 0x0000, 0xFE5F, 0xFC32, 0xFA4C, 0xF97B, 0xFCB9, 0x0000, 0xFF15, 0xFCFA, 0xFADB, 
    0xF9E3, 0xFAC0, 0xFCB3, 0xFEC5, 0x0000, 0xFC55, 0xFC55, 0xFC55, 0xFC55, 0x0000, 0x0000, 0x0000, 0x01E7, 0x03CE, 
    0x0000, 0xE875, 0xD531, 0xE393, 0x0000, 0x2970, 0x182C, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x4104, 0x40E3, 0x4000, 0x3DAA, 0x3A92, 0x3842, 0x37E6, 0x38F9, 0x3BE4, 0x3E20, 0x394E, 0x37CD, 0x3843, 
    0x3F36, 0x402B, 0x4048, 0x400F, 0x4000, 0x4038, 0x4078, 0x0000, 0x0000, 0x0000, 0x01EA, 0x03D4, 0x0000, 0xE850, 
    0xD4EE, 0xE367, 0x0000, 0x29B2, 0x1853, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xFD27, 
    0xFC86, 0xFC2F, 0xFC1B, 0xFC0A, 0xFBFB, 0xFBF0, 0xFBE8, 0xFBE3, 0xFBE1, 0xFBE1, 0xFBE5, 0xFBEB, 0xFBF3, 0xFBFF, 
    0xFC0C, 0xFC1D, 0xFC2F, 0xFC52, 0xFC8F, 0xFC96, 0xFBDF, 0xFB7D, 0xFB65, 0xFB52, 0xFB42, 0xFB35, 0xFB2C, 0xFB26, 
    0xFB23, 0xFB24, 0xFB28, 0xFB2E, 0xFB38, 0xFB45, 0xFB55, 0xFB67, 0xFB7D, 0xFBA3, 0xFBE7, 0xA50B, 0xA89E, 0xAA91, 
    0xAB04, 0xAB66, 0xABB6, 0xABF5, 0xAC23, 0xAC40, 0xAC4D, 0xAC4A, 0xAC37, 0xAC15, 0xABE4, 0xABA4, 0xAB56, 0xAAFA, 
    0xAA91, 0xA9BE, 0xA844, 0x49BC, 0x4BE2, 0x4D01, 0x4D43, 0x4D78, 0x4DA2, 0x4DC0, 0x4DD4, 0x4DDC, 0x4DDB, 0x4DD0, 
    0x4DBC, 0x4D9F, 0x4D7A, 0x4D4D, 0x4D18, 0x4CDC, 0x4C99, 0x4C2D, 0x4B75, 0xCB80, 0xCA1A, 0xC967, 0xC93D, 0xC91B, 
    0xC901, 0xC8F0, 0xC8E6, 0xC8E3, 0xC8E6, 0xC8F1, 0xC901, 0xC917, 0xC933, 0xC953, 0xC979, 0xC9A2, 0xC9D0, 0xC9FF, 
    0xCA46, 0x12AF, 0x134D, 0x138F, 0x138B, 0x137F, 0x136E, 0x1356, 0x133A, 0x131A, 0x12F8, 0x12D3, 0x12AE, 0x1289, 
    0x1264, 0x1241, 0x1221, 0x1205, 0x11ED, 0x11FF, 0x123B, 0xF87F, 0xF932, 0x0000, 0x1C01, 0x324E, 0x0000, 0xC3D3, 
    0x0000, 0xF877, 0xFC3B, 0x0000, 0x0000, 0x0016, 0x0045, 0x0075, 0x008B, 0x006C, 0x0000, 0xFEEA, 0xFD33, 0x3EF5, 
    0x3F0E, 0x4000, 0x439F, 0x46FD, 0x4342, 0x475E, 0x3E80, 0x40B5, 0x424A, 0x44D9, 0x4CD2, 0x4B90, 0x4970, 0x46D4, 
    0x4421, 0x41B9, 0x4000, 0x3F1A, 0x3EC6, 0xF878, 0xF92B, 0x0000, 0x1C1D, 0x3281, 0x0000, 0xC3C3, 0x0000, 0xF878, 
    0xFC3C, 0x0000, 0x0000, 0x0016, 0x0046, 0x0076, 0x008B, 0x006D, 0x0000, 0xFEE8, 0xFD30, 0x020E, 0x0286, 0x02C7, 
    0x02D7, 0x02E4, 0x02EE, 0x02F7, 0x02FD, 0x0300, 0x0302, 0x0302, 0x02FF, 0x02FB, 0x02F4, 0x02EC, 0x02E2, 0x02D5, 
    0x02C7, 0x02AD, 0x027F, 0x051D, 0x0631, 0x06C6, 0x06EA, 0x0707, 0x0720, 0x0733, 0x0741, 0x074A, 0x074E, 0x074D, 
    0x0747, 0x073D, 0x072E, 0x071A, 0x0703, 0x06E7, 0x06C6, 0x068C, 0x0625, 0xA544, 0xA8F3, 0xAAF5, 0xAB6C, 0xABD1, 
    0xAC23, 0xAC64, 0xAC93, 0xACB1, 0xACBF, 0xACBB, 0xACA8, 0xAC85, 0xAC53, 0xAC11, 0xABC1, 0xAB62, 0xAAF5, 0xAA1B, 
    0xA896, 0x496A, 0x4B7F, 0x4C99, 0x4CDF, 0x4D1A, 0x4D4B, 0x4D71, 0x4D8C, 0x4D9E, 0x4DA6, 0x4DA4, 0x4D99, 0x4D84, 
    0x4D66, 0x4D40, 0x4D11, 0x4CD9, 0x4C99, 0x4C27, 0x4B5F, 0xCB71, 0xCA17, 0xC967, 0xC938, 0xC910, 0xC8EF, 0xC8D5, 
    0xC8C2, 0xC8B7, 0xC8B1, 0xC8B3, 0xC8BA, 0xC8C8, 0xC8DC, 0xC8F6, 0xC916, 0xC93C, 0xC967, 0xC99C, 0xC9F2, 0x0032, 
    0x0013, 0x0000, 0xFFFD, 0xFFFA, 0xFFF7, 0xFFF5, 0xFFF4, 0xFFF3, 0xFFF3, 0xFFF3, 0xFFF3, 0xFFF4, 0xFFF6, 0xFFF8, 
    0xFFFA, 0xFFFD, 0x0000, 0x0009, 0x001A, 0x12A9, 0x1349, 0x138F, 0x1391, 0x138E, 0x1385, 0x1376, 0x1363, 0x134D, 
    0x1334, 0x1318, 0x12FB, 0x12DD, 0x12C0, 0x12A2, 0x1286, 0x126D, 0x1256, 0x125D, 0x1282, 0x0000, 
};

JointIndex sPhantomHorseUnusedRearingAnimJointIndices[] = {
    { 0x0000, 0x0017, 0x002B },
    { 0x0003, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x003F, 0x0053, 0x0067 },
    { 0x007B, 0x008F, 0x00A3 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0000, 0x00B7 },
    { 0x00CB, 0x00DF, 0x00F3 },
    { 0x0107, 0x011B, 0x012F },
    { 0x0143, 0x0157, 0x016B },
    { 0x0000, 0x017F, 0x0193 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x01A7, 0x0002 },
    { 0x0000, 0x0000, 0x01BB },
    { 0x01CF, 0x01E3, 0x01F7 },
    { 0x0000, 0x0000, 0x020B },
    { 0x0000, 0x0000, 0x021F },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0233, 0x0002 },
    { 0x0000, 0x0000, 0x0247 },
    { 0x025B, 0x026F, 0x0283 },
    { 0x0000, 0x0000, 0x0297 },
    { 0x0000, 0x0000, 0x02AB },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x02BF },
    { 0x02D3, 0x02E7, 0x02FB },
    { 0x030F, 0x0323, 0x0337 },
    { 0x0000, 0x0000, 0x034B },
    { 0x0000, 0x0000, 0x035F },
    { 0x0000, 0x0000, 0x0373 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0387, 0x039B, 0x03AF },
    { 0x03C3, 0x03D7, 0x03EB },
    { 0x0000, 0x0000, 0x03FF },
    { 0x0000, 0x0000, 0x0413 },
    { 0x0427, 0x0000, 0x043B },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gPhantomHorseUnusedRearingAnim = { 
    { 20 }, sPhantomHorseUnusedRearingAnimFrameData,
    sPhantomHorseUnusedRearingAnimJointIndices, 3
};

u8 object_fhg_possiblePadding_005814[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sPhantomHorseStillAnimFrameData[] = {
    0x0000, 0x15B8, 0xF853, 0x4000, 0xD113, 0xEF5E, 0x8507, 0xEEE2, 0xE3D2, 0xF15D, 0x4454, 0x8C17, 0x9348, 0x35B3, 
    0xF6D5, 0xFFFC, 0x8C1B, 0x9DBA, 0x3D5C, 0xDB2B, 0x090C, 0xFC55, 
};

JointIndex sPhantomHorseStillAnimJointIndices[] = {
    { 0x0000, 0x0001, 0x0002 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x0004 },
    { 0x0000, 0x0000, 0x0005 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x0006 },
    { 0x0000, 0x0000, 0x0007 },
    { 0x0000, 0x0000, 0x0008 },
    { 0x0000, 0x0000, 0x0009 },
    { 0x0000, 0x0000, 0x000A },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x000B },
    { 0x0000, 0x0000, 0x000C },
    { 0x0000, 0x0000, 0x000D },
    { 0x0000, 0x0000, 0x000E },
    { 0x0000, 0x0000, 0x000F },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0010 },
    { 0x0000, 0x0000, 0x000C },
    { 0x0000, 0x0000, 0x000D },
    { 0x0000, 0x0000, 0x000E },
    { 0x0000, 0x0000, 0x000F },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x0011 },
    { 0x0000, 0x0000, 0x0012 },
    { 0x0000, 0x0000, 0x0013 },
    { 0x0000, 0x0000, 0x0014 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x0011 },
    { 0x0000, 0x0000, 0x0012 },
    { 0x0000, 0x0000, 0x0013 },
    { 0x0015, 0x0000, 0x0014 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gPhantomHorseStillAnim = { 
    { 2 }, sPhantomHorseStillAnimFrameData,
    sPhantomHorseStillAnimJointIndices, 22
};

u64 gPhantomGanonTitleCardTex[] = {
#include "assets/objects/object_fhg/phantom_ganon_title_card.i8.inc.c"
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0095A0[] = {
    { 0x27, 2647, 484, -263, 0x14 },
    { 0x28, -400, 274, -263, 0x50 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0095B4[] = {
    { 0x08, 2585, -1221, 459, 0x28 },
    { 0x09, 890, -848, 459, 0x32 },
    { 0x0A, -382, -1050, 459, 0x0A },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0095D4[] = {
    { 0x27, 2647, 480, 404, 0x14 },
    { 0x28, -397, 271, 404, 0x50 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0095E8[] = {
    { 0x27, 2234, -234, 245, 0x46 },
    { 0x28, -92, -495, 245, 0x1E },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0095FC[] = {
    { 0x02, 1443, 497, 296, 0x32 },
    { 0x03, -157, 473, 296, 0x32 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009610[] = {
    { 0x08, 2585, -1219, -497, 0x28 },
    { 0x09, 889, -847, -497, 0x32 },
    { 0x0A, -384, -1049, -497, 0x0A },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009630[] = {
    { 0x07, -1760, -56, 1277, 0x3C },
    { 0x26, -529, -230, 524, 0x14 },
    { 0x27, -347, 1803, 524, 0x14 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009650[] = {
    { 0x07, -2201, -173, 721, 0x32 },
    { 0x26, -959, -75, -32, 0x1E },
    { 0x27, -220, 2241, -32, 0x14 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009670[] = {
    { 0x0A, 1007, -671, -326, 0x50 },
    { 0x0B, -615, 561, -326, 0x14 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009684[] = {
    { 0x07, -339, -479, 1029, 0x3C },
    { 0x26, 398, -1387, 276, 0x1E },
    { 0x27, -1442, 802, 276, 0x0A },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0096A4[] = {
    { 0x26, 277, -846, 740, 0x46 },
    { 0x27, -910, 957, 740, 0x1E },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0096B8[] = {
    { 0x02, 1443, 497, -303, 0x32 },
    { 0x03, -157, 473, -303, 0x32 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0096CC[] = {
    { 0x27, 2234, -234, -127, 0x46 },
    { 0x28, -92, -495, -127, 0x1E },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0096E0[] = {
    { 0x27, 2955, -387, 68, 0x14 },
    { 0x28, 474, -23, 68, 0x50 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0096F4[] = {
    { 0x26, 2125, 1126, -172, 0x0A },
    { 0x27, 1177, -759, -172, 0x50 },
    { 0x28, -333, -1650, -172, 0x0A },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009714[] = {
    { 0x26, 2123, 1123, 434, 0x14 },
    { 0x27, 1174, -757, 434, 0x46 },
    { 0x28, -336, -1651, 434, 0x0A },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009734[] = {
    { 0x27, 1883, 422, 379, 0x46 },
    { 0x28, -824, -365, 379, 0x1E },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009748[] = {
    { 0x07, 112, 449, 1060, 0x14 },
    { 0x26, 1297, -882, 307, 0x3C },
    { 0x27, -880, -62, 307, 0x14 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009768[] = {
    { 0x26, 1651, -6, 572, 0x28 },
    { 0x27, 17, -359, 572, 0x3C },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_00977C[] = {
    { 0x08, -530, 1816, -13, 0x64 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009788[] = {
    { 0x07, -1091, 1390, 1649, 0x0A },
    { 0x27, 547, 484, 896, 0x5A },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_00979C[] = {
    { 0x08, 1747, -1323, -3, 0x3C },
    { 0x09, 310, -1461, -3, 0x28 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0097B0[] = {
    { 0x27, 1884, 422, -116, 0x46 },
    { 0x28, -824, -365, -116, 0x1E },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0097C4[] = {
    { 0x26, 407, 1340, 353, 0x28 },
    { 0x27, 1280, 970, 353, 0x3C },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0097D8[] = {
    { 0x26, 411, 1340, -329, 0x28 },
    { 0x27, 1280, 966, -329, 0x3C },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0097EC[] = {
    { 0x07, -2458, 1174, 507, 0x28 },
    { 0x26, -402, 1179, -246, 0x28 },
    { 0x27, 1066, 1766, -246, 0x14 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_00980C[] = {
    { 0x07, -2127, 1290, 1203, 0x0A },
    { 0x26, -64, 1086, 450, 0x1E },
    { 0x27, 995, 1423, 450, 0x3C },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_00982C[] = {
    { 0x2F, 2647, 480, -411, 0x14 },
    { 0x30, -397, 271, -411, 0x50 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009840[] = {
    { 0x0A, 979, -853, -4, 0x46 },
    { 0x0B, -793, 609, -4, 0x1E },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009854[] = {
    { 0x2F, 2647, 484, 256, 0x14 },
    { 0x30, -400, 274, 256, 0x50 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009868[] = {
    { 0x07, -2216, -90, 0, 0x64 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009874[] = {
    { 0x2F, 2234, -234, -252, 0x46 },
    { 0x30, -92, -495, -252, 0x1E },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009888[] = {
    { 0x2F, 2956, -385, -107, 0x14 },
    { 0x30, 474, -21, -107, 0x50 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_00989C[] = {
    { 0x07, -2170, 942, -2, 0x50 },
    { 0x26, -298, 823, -755, 0x0A },
    { 0x2E, -298, 823, 751, 0x0A },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0098BC[] = {
    { 0x07, -744, -1185, -7, 0x64 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0098C8[] = {
    { 0x2E, 277, -846, -747, 0x46 },
    { 0x2F, -910, 957, -747, 0x1E },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0098DC[] = {
    { 0x07, -1091, 1390, -1656, 0x0A },
    { 0x2F, 547, 484, -903, 0x5A },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0098F0[] = {
    { 0x07, -1760, -56, -1284, 0x3C },
    { 0x2E, -529, -230, -531, 0x14 },
    { 0x2F, -347, 1803, -531, 0x14 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009910[] = {
    { 0x07, -2133, 1292, -1213, 0x0A },
    { 0x2E, -68, 1090, -460, 0x1E },
    { 0x2F, 1000, 1428, -460, 0x3C },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009930[] = {
    { 0x07, -2463, -57, -5, 0x50 },
    { 0x26, -1107, 170, -758, 0x0A },
    { 0x2E, -1107, 170, 748, 0x0A },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009950[] = {
    { 0x2F, 2234, -234, 120, 0x46 },
    { 0x30, -92, -495, 120, 0x1E },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009964[] = {
    { 0x2E, 2125, 1126, 164, 0x0A },
    { 0x2F, 1177, -759, 164, 0x50 },
    { 0x30, -333, -1650, 164, 0x0A },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009984[] = {
    { 0x2F, 1883, 422, -386, 0x46 },
    { 0x30, -824, -365, -386, 0x1E },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009998[] = {
    { 0x2E, 2123, 1123, -441, 0x14 },
    { 0x2F, 1174, -757, -441, 0x46 },
    { 0x30, -336, -1651, -441, 0x0A },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0099B8[] = {
    { 0x2E, 1651, -6, -579, 0x28 },
    { 0x2F, 17, -359, -579, 0x3C },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0099CC[] = {
    { 0x08, 2363, -1494, -3, 0x14 },
    { 0x09, 894, -1200, -3, 0x32 },
    { 0x0A, -255, -1378, -3, 0x1E },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0099EC[] = {
    { 0x2F, 1884, 422, 109, 0x46 },
    { 0x30, -824, -365, 109, 0x1E },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009A00[] = {
    { 0x2E, 407, 1340, -360, 0x28 },
    { 0x2F, 1280, 970, -360, 0x3C },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009A14[] = {
    { 0x07, 129, 442, -1075, 0x14 },
    { 0x2E, 1307, -897, -322, 0x28 },
    { 0x2F, -894, -73, -322, 0x14 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009A34[] = {
    { 0x07, -339, -479, -1058, 0x3C },
    { 0x2E, 398, -1387, -306, 0x1E },
    { 0x2F, -1442, 802, -306, 0x0A },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009A54[] = {
    { 0x07, -1773, -731, -607, 0x50 },
    { 0x2E, -924, -777, 146, 0x0A },
    { 0x2F, -919, 2161, 146, 0x0A },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009A74[] = {
    { 0x2E, 404, 1338, 306, 0x28 },
    { 0x2F, 1278, 972, 306, 0x3C },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009A88[] = {
    { 0x07, -2458, 1174, -514, 0x28 },
    { 0x2E, -402, 1179, 239, 0x28 },
    { 0x2F, 1066, 1766, 239, 0x14 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009AA8[] = {
    { 0x07, -2201, -173, -728, 0x32 },
    { 0x2E, -959, -75, 25, 0x1E },
    { 0x2F, -220, 2241, 25, 0x14 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009AC8[] = {
    { 0x07, 416, 1080, -571, 0x1E },
    { 0x2E, 1906, -536, 181, 0x28 },
    { 0x2F, -495, -648, 181, 0x1E },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009AE8[] = {
    { 0x09, 1559, -1160, -4, 0x28 },
    { 0x0A, 354, -1106, -4, 0x3C },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009AFC[] = {
    { 0x0A, 1610, -1229, -4, 0x3C },
    { 0x0B, -1234, 21, -4, 0x28 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009B10[] = {
    { 0x08, -644, 1058, -1049, 0x64 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009B1C[] = {
    { 0x07, 835, 1434, -1, 0x3C },
    { 0x26, 2453, -484, -754, 0x0F },
    { 0x27, -408, -1190, -754, 0x05 },
    { 0x2E, 2453, -484, 752, 0x0F },
    { 0x2F, -408, -1190, 752, 0x05 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009B50[] = {
    { 0x08, 3470, 1155, 416, 0x64 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009B5C[] = {
    { 0x08, -91, -628, -1022, 0x64 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009B68[] = {
    { 0x08, -644, 1060, 1014, 0x64 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009B74[] = {
    { 0x07, 417, 1080, 567, 0x1E },
    { 0x26, 1907, -537, -186, 0x28 },
    { 0x27, -496, -649, -186, 0x1E },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009B94[] = {
    { 0x08, -91, -628, 988, 0x64 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009BA0[] = {
    { 0x09, 1702, -23, 725, 0x1E },
    { 0x0A, 88, 8, 725, 0x46 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009BB4[] = {
    { 0x09, 1555, -833, 398, 0x32 },
    { 0x0A, 235, -802, 398, 0x32 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009BC8[] = {
    { 0x0A, 997, 31, 525, 0x46 },
    { 0x0B, 85, 497, 525, 0x1E },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009BDC[] = {
    { 0x0A, 2139, -48, 211, 0x46 },
    { 0x0B, -116, -631, 211, 0x1E },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009BF0[] = {
    { 0x0A, 2140, -47, -217, 0x46 },
    { 0x0B, -115, -631, -217, 0x1E },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C04[] = {
    { 0x0A, 1786, 594, 1, 0x28 },
    { 0x0B, 560, -347, 1, 0x3C },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C18[] = {
    { 0x0A, 832, 896, 5, 0x32 },
    { 0x0B, 962, 569, 5, 0x32 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C2C[] = {
    { 0x02, 2853, -756, -361, 0x1E },
    { 0x03, 1634, -118, -361, 0x46 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C40[] = {
    { 0x0A, 1008, -671, 320, 0x50 },
    { 0x0B, -615, 561, 320, 0x14 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C54[] = {
    { 0x02, 4073, -599, -4, 0x0A },
    { 0x03, 2691, 512, -4, 0x5A },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C68[] = {
    { 0x09, 1553, -835, -405, 0x32 },
    { 0x0A, 233, -804, -405, 0x32 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C7C[] = {
    { 0x08, 1735, -1120, -2, 0x64 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C88[] = {
    { 0x02, 1352, 12, -4, 0x32 },
    { 0x03, -48, -8, -4, 0x32 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C9C[] = {
    { 0x02, 2858, -771, 365, 0x1E },
    { 0x03, 1644, -129, 365, 0x3B },
    { 0x27, 2400, 941, -388, 0x0B },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009CBC[] = {
    { 0x09, 1701, -23, -716, 0x1E },
    { 0x0A, 87, 8, -716, 0x46 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009CD0[] = {
    { 0x0A, 988, 32, -523, 0x46 },
    { 0x0B, 86, 506, -523, 0x1E },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009CE4[] = {
    { 0x08, 1997, -869, -845, 0x64 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009CF0[] = {
    { 0x08, 2657, -66, -909, 0x64 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009CFC[] = {
    { 0x09, 1740, 1057, -61, 0x32 },
    { 0x0A, -256, 1033, -61, 0x32 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009D10[] = {
    { 0x08, 2659, -71, 905, 0x64 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009D1C[] = {
    { 0x08, 1995, -873, 761, 0x64 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009D28[] = {
    { 0x07, -1774, -731, 540, 0x50 },
    { 0x26, -925, -777, -213, 0x0A },
    { 0x27, -919, 2162, -213, 0x0A },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009D48[] = {
    { 0x08, -125, -1433, -30, 0x64 },
};

Struct_800A598C_2 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009D54[] = {
    { 0x08, 3451, 1165, -464, 0x64 },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009D60[] = {
    { 0x26, 176, 346, -12, 70, -105, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009D6C[] = {
    { 0x90, 512, 482, 37, -91, 81, 0xFF },
    { 0xB7, 0, 199, 37, -91, 81, 0xFF },
    { 0x99, 33, 455, 37, -91, 81, 0xFF },
    { 0xAA, 1024, 0, 37, -91, 81, 0xFF },
    { 0x97, 2, 493, 37, -91, 81, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009DA0[] = {
    { 0x25, 176, 345, -38, 84, 87, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009DAC[] = {
    { 0x2A, 81, 86, 29, -94, 81, 0xFF },
    { 0x07, 114, 150, 29, -94, 81, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009DC0[] = {
    { 0x52, 287, 494, -22, 62, 109, 0xFF },
    { 0x54, 0, 500, -22, 62, 109, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009DD4[] = {
    { 0xA2, 3, 482, 40, -91, -80, 0xFF },
    { 0xB8, 532, 199, 40, -91, -80, 0xFF },
    { 0x9B, 33, -491, 40, -91, -80, 0xFF },
    { 0x9C, 512, -520, 40, -91, -80, 0xFF },
    { 0xB1, 1024, 0, 40, -91, -80, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009E08[] = {
    { 0x63, 664, -53, -58, -43, 105, 0xFF },
    { 0x65, 521, -34, -58, -43, 105, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009E1C[] = {
    { 0x14, 163, -76, -104, -38, 62, 0xFF },
    { 0x66, 775, 455, -104, -38, 62, 0xFF },
    { 0x5D, 153, 450, -104, -38, 62, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009E3C[] = {
    { 0xB5, 505, -30, 50, -56, -102, 0xFF },
    { 0x92, 13, -357, 50, -56, -102, 0xFF },
    { 0x43, 408, 533, 50, -56, -102, 0xFF },
    { 0xB3, 0, 0, 50, -56, -102, 0xFF },
    { 0x49, 926, 512, 50, -56, -102, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009E70[] = {
    { 0x5B, 248, 95, 13, -78, 99, 0xFF },
    { 0xDC, 132, 112, 13, -78, 99, 0xFF },
    { 0xD3, 438, 83, 13, -78, 99, 0xFF },
    { 0x71, 779, 105, 13, -78, 99, 0xFF },
    { 0x73, 244, -254, 13, -78, 99, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009EA4[] = {
    { 0x5A, 419, -58, -8, -56, 114, 0xFF },
    { 0x6C, 202, -59, -8, -56, 114, 0xFF },
    { 0x68, 286, -95, -8, -56, 114, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009EC4[] = {
    { 0x4D, 287, 494, -23, 62, -109, 0xFF },
    { 0x53, 333, 500, -23, 62, -109, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009ED8[] = {
    { 0x28, 82, 86, 10, -77, -101, 0xFF },
    { 0x06, 114, 150, 10, -77, -101, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009EEC[] = {
    { 0x29, 214, -47, 127, 7, 0, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009EF8[] = {
    { 0x08, 43, 125, 31, -87, -87, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009F04[] = {
    { 0x01, 43, 125, 18, -90, 88, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009F10[] = {
    { 0x2D, 30, 394, 44, 50, 108, 0xFF },
    { 0x0C, 139, 104, 44, 50, 108, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009F24[] = {
    { 0x59, 381, 417, 36, -19, 120, 0xFF },
    { 0x0F, 3, -2, 36, -19, 120, 0xFF },
    { 0x3B, 1139, -138, 36, -19, 120, 0xFF },
    { 0x6E, 609, 411, 36, -19, 120, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009F4C[] = {
    { 0x00, 21, 53, -34, -70, 100, 0xFF },
    { 0x70, 616, 468, -34, -70, 100, 0xFF },
    { 0x6A, -17, 458, -34, -70, 100, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009F6C[] = {
    { 0x34, -529, 454, -99, 80, -6, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009F78[] = {
    { 0x02, 90, 39, 24, 6, 125, 0xFF },
    { 0x6B, 340, 471, 24, 6, 125, 0xFF },
    { 0x64, 269, 483, 24, 6, 125, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009F98[] = {
    { 0xA0, 502, 5, -55, -114, 2, 0xFF },
    { 0x9A, 518, -2, -55, -114, 2, 0xFF },
    { 0xBA, 256, 208, -55, -114, 2, 0xFF },
    { 0x96, 502, 3, -55, -114, 2, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009FC0[] = {
    { 0x27, 30, 394, 35, 91, -81, 0xFF },
    { 0x10, 139, 104, 35, 91, -81, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009FD4[] = {
    { 0x0D, 147, 51, 99, 63, 49, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009FE0[] = {
    { 0x11, 147, 52, 118, 8, -45, 0xFF },
    { 0x2F, 309, -2823, 118, 8, -45, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009FF4[] = {
    { 0x12, 185, 5, -117, 49, 6, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A000[] = {
    { 0x13, 162, 18, 63, 65, 89, 0xFF },
    { 0x62, 700, 467, 63, 65, 89, 0xFF },
    { 0x72, 57, 455, 63, 65, 89, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A020[] = {
    { 0x22, 176, 345, -40, 83, -87, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A02C[] = {
    { 0x93, 50, 2, 53, -115, 0, 0xFF },
    { 0x48, 195, 412, 53, -115, 0, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A040[] = {
    { 0x21, 176, 346, -10, 71, 104, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A04C[] = {
    { 0x56, -364, 714, 59, -113, 0, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A058[] = {
    { 0x23, 81, 86, 14, -25, -124, 0xFF },
    { 0x1C, 114, 150, 30, -123, 0, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A06C[] = {
    { 0x2C, 215, -46, 127, 7, -2, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A078[] = {
    { 0x0B, 164, -5, -110, 63, 0, 0xFF },
    { 0x33, 400, -3527, -110, 63, 0, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A08C[] = {
    { 0xDE, 346, 414, -13, -126, 0, 0xFF },
    { 0xD8, -15, 450, -13, -126, 0, 0xFF },
    { 0xC5, 498, 517, -13, -126, 0, 0xFF },
    { 0xE3, 498, 517, -13, -126, 0, 0xFF },
    { 0xD4, 498, 517, -13, -126, 0, 0xFF },
    { 0xC8, 346, 414, -13, -126, 0, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A0C8[] = {
    { 0x7F, 202, -59, -8, -54, -115, 0xFF },
    { 0x78, 419, -58, -8, -54, -115, 0xFF },
    { 0x7D, 286, -95, -8, -54, -115, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A0E8[] = {
    { 0x05, 90, 39, 24, 6, -125, 0xFF },
    { 0x80, 340, 471, 24, 6, -125, 0xFF },
    { 0x82, 269, 483, 24, 6, -125, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A108[] = {
    { 0x83, 664, -53, -58, -41, -105, 0xFF },
    { 0x85, 521, -34, -58, -41, -105, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A11C[] = {
    { 0x16, 163, 18, 64, 65, -89, 0xFF },
    { 0x84, 700, 467, 64, 65, -89, 0xFF },
    { 0x87, 57, 455, 64, 65, -89, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A13C[] = {
    { 0x0A, 181, -72, -106, 31, 64, 0xFF },
    { 0x60, 193, 559, -118, -44, -12, 0xFF },
    { 0x89, 591, 481, -118, -44, -12, 0xFF },
    { 0x5E, 591, 481, -118, -44, -12, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A164[] = {
    { 0x2B, 82, 86, 11, -77, 100, 0xFF },
    { 0x1D, 114, 150, 11, -77, 100, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A178[] = {
    { 0x1A, 43, 125, 31, -87, 88, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A184[] = {
    { 0x24, 30, 394, 44, 50, -108, 0xFF },
    { 0x19, 139, 104, 44, 50, -108, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A198[] = {
    { 0x03, 43, 125, 18, -90, -88, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A1A4[] = {
    { 0x04, 21, 53, -33, -70, -101, 0xFF },
    { 0x81, -17, 458, -33, -70, -101, 0xFF },
    { 0x79, 616, 468, -33, -70, -101, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A1C4[] = {
    { 0x91, 514, -2, 31, -123, 1, 0xFF },
    { 0xB9, 257, 198, 31, -123, 1, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A1D8[] = {
    { 0x20, 30, 394, 35, 92, 81, 0xFF },
    { 0x1B, 139, 104, 35, 92, 81, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A1EC[] = {
    { 0x17, 147, 51, 99, 63, -49, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A1F8[] = {
    { 0x7A, 381, 417, 36, -17, -121, 0xFF },
    { 0x1F, 2, -2, 36, -17, -121, 0xFF },
    { 0x75, 609, 411, 36, -17, -121, 0xFF },
    { 0x37, 1128, -148, 36, -17, -121, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A220[] = {
    { 0x7B, 248, 95, 13, -78, -100, 0xFF },
    { 0x77, 779, 105, 13, -78, -100, 0xFF },
    { 0xCA, 132, 112, 13, -78, -100, 0xFF },
    { 0xC7, 438, 83, 13, -78, -100, 0xFF },
    { 0x7E, 244, -254, 13, -78, -100, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A254[] = {
    { 0x61, 486, -146, -55, -100, -55, 0xFF },
    { 0x88, 920, -63, -55, -100, -55, 0xFF },
    { 0xD7, 184, 53, -55, -100, -55, 0xFF },
    { 0x8B, 206, -68, -55, -100, -55, 0xFF },
    { 0xC9, 547, 60, -55, -100, -55, 0xFF },
    { 0x7C, 831, -318, -55, -100, -55, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A290[] = {
    { 0x15, 147, 51, 119, 8, 45, 0xFF },
    { 0x2E, 310, -2828, 119, 8, 45, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A2A4[] = {
    { 0x09, 185, 5, -117, 49, -6, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A2B0[] = {
    { 0x86, 775, 455, -105, -36, -62, 0xFF },
    { 0x1E, 163, -76, -105, -36, -62, 0xFF },
    { 0x8A, 153, 450, -105, -36, -62, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A2D0[] = {
    { 0x18, -16, 42, 110, 36, -53, 0xFF },
    { 0x38, 835, 276, 110, 36, -53, 0xFF },
    { 0x32, -358, -2935, 110, 36, -53, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A2F0[] = {
    { 0x94, 469, 0, 65, -109, 0, 0xFF },
    { 0x8E, 469, 0, 65, -109, 0, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A304[] = {
    { 0x42, 42, -35, 82, -97, 0, 0xFF },
    { 0x47, 141, -17, 82, -97, 0, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A318[] = {
    { 0x35, -146, 55, -66, 55, -94, 0xFF },
    { 0x76, 46, 504, -66, 55, -94, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A32C[] = {
    { 0x36, 489, 448, -18, 126, -2, 0xFF },
    { 0x30, -484, -2578, -18, 126, -2, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A340[] = {
    { 0xDB, 672, 607, 77, 61, 80, 0xFF },
    { 0xE5, -11, 535, 77, 61, 80, 0xFF },
    { 0xCD, -11, 535, 77, 61, 80, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A360[] = {
    { 0xC6, -56, 66, 22, -54, -113, 0xFF },
    { 0x74, 152, -162, 22, -54, -113, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A374[] = {
    { 0x39, -147, 56, -61, 62, 92, 0xFF },
    { 0x6D, 46, 504, -61, 62, 92, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A388[] = {
    { 0x0E, -16, 42, 109, 34, 55, 0xFF },
    { 0x3A, 835, 276, 109, 34, 55, 0xFF },
    { 0x31, -358, -2934, 109, 34, 55, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A3A8[] = {
    { 0x6F, 152, -162, 22, -54, 113, 0xFF },
    { 0xE2, -56, 66, 22, -54, 113, 0xFF },
    { 0xD5, -56, 66, 22, -54, 113, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A3C8[] = {
    { 0xA9, 512, 512, 45, -23, 117, 0xFF },
    { 0xE7, 478, -179, -12, 69, 106, 0xFF },
    { 0x40, 805, -15, -12, 69, 106, 0xFF },
    { 0xCB, 478, -179, -12, 69, 106, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A3F0[] = {
    { 0x8F, -3, 419, 28, -80, 94, 0xFF },
    { 0xA6, 512, 0, 28, -80, 94, 0xFF },
    { 0x8C, 512, 448, 28, -80, 94, 0xFF },
    { 0x9F, 512, 448, 28, -80, 94, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A418[] = {
    { 0xC3, 1226, -2587, 17, 26, 123, 0xFF },
    { 0xA8, 0, 512, 17, 26, 123, 0xFF },
    { 0xBF, 2514, -6248, 17, 26, 123, 0xFF },
    { 0xA3, 500, 504, 17, 26, 123, 0xFF },
    { 0x41, -358, -139, 17, 26, 123, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A44C[] = {
    { 0xC0, 1302, -6979, 76, 41, 93, 0xFF },
    { 0xA5, -238, 12, 76, 41, 93, 0xFF },
    { 0x45, -1058, 397, 76, 41, 93, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A46C[] = {
    { 0xD1, 1300, -6978, 76, 41, -93, 0xFF },
    { 0xDF, 1300, -6978, 76, 41, -93, 0xFF },
    { 0xB4, -238, 12, 76, 41, -93, 0xFF },
    { 0x44, -1059, 398, 76, 41, -93, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A494[] = {
    { 0xBE, 1137, -6041, 100, -78, 0, 0xFF },
    { 0xE1, 1137, -6041, 127, -2, 0, 0xFF },
    { 0xC1, 340, -2858, 127, -2, 0, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A4B4[] = {
    { 0x3C, -495, 425, -32, 123, -1, 0xFF },
    { 0xC2, 759, -1782, -32, 123, -1, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A4C8[] = {
    { 0x4B, -102, 113, 12, -120, -40, 0xFF },
    { 0x4F, -381, 91, 12, -120, -40, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A4DC[] = {
    { 0x95, 13, 362, 50, -57, 102, 0xFF },
    { 0xA4, 505, -30, 50, -57, 102, 0xFF },
    { 0x4A, -512, 512, 50, -57, 102, 0xFF },
    { 0xA7, 0, 0, 50, -57, 102, 0xFF },
    { 0x46, 407, 533, 50, -57, 102, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A510[] = {
    { 0x55, 167, -104, -2, 127, 0, 0xFF },
    { 0x57, 393, -110, 12, 47, -117, 0xFF },
    { 0x58, -62, -120, 64, -51, 97, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A530[] = {
    { 0xB0, 512, 0, 29, -80, -95, 0xFF },
    { 0x8D, 512, -447, 29, -80, -95, 0xFF },
    { 0x9D, -2, -423, 29, -80, -95, 0xFF },
    { 0x9E, 512, -447, 29, -80, -95, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A558[] = {
    { 0xBB, 256, 151, -112, -61, 2, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A564[] = {
    { 0x4C, -66, 470, -57, -114, 0, 0xFF },
    { 0x4E, -62, 423, -57, -114, 0, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A578[] = {
    { 0x50, 257, 91, 16, -96, 82, 0xFF },
    { 0x51, -102, 113, 16, -96, 82, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A58C[] = {
    { 0xEA, 478, -178, -8, 66, -108, 0xFF },
    { 0x3E, 805, -15, -8, 66, -108, 0xFF },
    { 0xAD, 512, 512, 45, -19, -117, 0xFF },
    { 0xCE, 478, -178, -8, 66, -108, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A5B4[] = {
    { 0xB2, 0, 512, 16, 26, -123, 0xFF },
    { 0xE0, 2523, -6243, 16, 26, -123, 0xFF },
    { 0xB6, 500, 504, 16, 26, -123, 0xFF },
    { 0xD2, 1231, -2579, 16, 26, -123, 0xFF },
    { 0x3D, -347, -138, 16, 26, -123, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A5E8[] = {
    { 0xA1, 528, 479, -28, -73, -100, 0xFF },
    { 0xAE, 1536, 0, -28, -73, -100, 0xFF },
    { 0xBC, 741, 199, -28, -73, -100, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A608[] = {
    { 0xAF, 1536, 444, 10, -18, -125, 0xFF },
    { 0xCF, 491, 443, 29, 25, -121, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A61C[] = {
    { 0xD9, 512, -202, 25, 124, -4, 0xFF },
    { 0xE9, 102, -173, 25, 124, -4, 0xFF },
    { 0x3F, 831, 677, 25, 124, -4, 0xFF },
    { 0xCC, 102, -173, 25, 124, -4, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A644[] = {
    { 0xE6, 491, 441, 30, 28, 120, 0xFF },
    { 0xAC, 1536, 444, 4, -26, 124, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A658[] = {
    { 0xAB, 1536, 0, -30, -72, 100, 0xFF },
    { 0xBD, -182, 199, -30, -72, 100, 0xFF },
    { 0x98, 529, 477, -30, -72, 100, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A678[] = {
    { 0x5F, -73, -146, -54, -102, 53, 0xFF },
    { 0xDD, 547, 60, -54, -102, 53, 0xFF },
    { 0xD6, -172, 53, -54, -102, 53, 0xFF },
    { 0x5C, 206, -68, -54, -102, 53, 0xFF },
    { 0x67, 920, -63, -54, -102, 53, 0xFF },
    { 0x69, 831, -318, -54, -102, 53, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A6B4[] = {
    { 0xC4, -8, 498, 48, -118, -1, 0xFF },
    { 0xE4, -8, 498, 48, -118, -1, 0xFF },
};

Struct_800A57C0 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A6C8[] = {
    { 0xDA, 376, 615, 87, 92, -1, 0xFF },
    { 0xE8, -8, 544, 54, 30, -111, 0xFF },
    { 0xD0, -8, 544, 54, 30, -111, 0xFF },
};

Struct_800A598C gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_00A6E8[] = {
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009D60),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0095A0),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009D60,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0095A0
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009D6C),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0095B4),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009D6C,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0095B4
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009DA0),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0095D4),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009DA0,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0095D4
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009DAC),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0095E8),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009DAC,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0095E8
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009DC0),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0095FC),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009DC0,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0095FC
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009DD4),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009610),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009DD4,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009610
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009E08),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009630),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009E08,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009630
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009E1C),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009650),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009E1C,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009650
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009E3C),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009670),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009E3C,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009670
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009E70),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009684),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009E70,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009684
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009EA4),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0096A4),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009EA4,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0096A4
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009EC4),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0096B8),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009EC4,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0096B8
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009ED8),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0096CC),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009ED8,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0096CC
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009EEC),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0096E0),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009EEC,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0096E0
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009EF8),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0096F4),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009EF8,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0096F4
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009F04),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009714),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009F04,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009714
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009F10),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009734),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009F10,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009734
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009F24),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009748),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009F24,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009748
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009F4C),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009768),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009F4C,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009768
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009F6C),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_00977C),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009F6C,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_00977C
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009F78),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009788),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009F78,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009788
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009F98),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_00979C),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009F98,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_00979C
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009FC0),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0097B0),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009FC0,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0097B0
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009FD4),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0097C4),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009FD4,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0097C4
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009FE0),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0097D8),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009FE0,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0097D8
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009FF4),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0097EC),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_009FF4,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0097EC
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A000),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_00980C),
        2, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A000,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_00980C
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A020),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_00982C),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A020,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_00982C
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A02C),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009840),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A02C,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009840
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A040),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009854),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A040,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009854
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A04C),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009868),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A04C,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009868
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A058),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009874),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A058,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009874
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A06C),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009888),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A06C,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009888
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A078),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_00989C),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A078,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_00989C
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A08C),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0098BC),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A08C,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0098BC
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A0C8),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0098C8),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A0C8,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0098C8
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A0E8),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0098DC),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A0E8,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0098DC
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A108),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0098F0),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A108,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0098F0
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A11C),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009910),
        2, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A11C,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009910
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A13C),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009930),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A13C,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009930
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A164),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009950),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A164,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009950
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A178),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009964),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A178,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009964
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A184),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009984),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A184,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009984
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A198),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009998),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A198,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009998
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A1A4),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0099B8),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A1A4,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0099B8
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A1C4),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0099CC),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A1C4,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0099CC
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A1D8),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0099EC),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A1D8,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_0099EC
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A1EC),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009A00),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A1EC,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009A00
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A1F8),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009A14),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A1F8,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009A14
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A220),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009A34),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A220,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009A34
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A254),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009A54),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A254,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009A54
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A290),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009A74),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A290,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009A74
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A2A4),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009A88),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A2A4,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009A88
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A2B0),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009AA8),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A2B0,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009AA8
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A2D0),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009AC8),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A2D0,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009AC8
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A2F0),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009AE8),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A2F0,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009AE8
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A304),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009AFC),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A304,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009AFC
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A318),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009B10),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A318,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009B10
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A32C),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009B1C),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A32C,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009B1C
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A340),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009B50),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A340,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009B50
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A360),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009B5C),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A360,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009B5C
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A374),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009B68),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A374,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009B68
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A388),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009B74),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A388,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009B74
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A3A8),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009B94),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A3A8,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009B94
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A3C8),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009BA0),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A3C8,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009BA0
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A3F0),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009BB4),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A3F0,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009BB4
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A418),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009BC8),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A418,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009BC8
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A44C),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009BDC),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A44C,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009BDC
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A46C),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009BF0),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A46C,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009BF0
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A494),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C04),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A494,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C04
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A4B4),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C18),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A4B4,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C18
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A4C8),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C2C),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A4C8,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C2C
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A4DC),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C40),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A4DC,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C40
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A510),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C54),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A510,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C54
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A530),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C68),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A530,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C68
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A558),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C7C),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A558,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C7C
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A564),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C88),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A564,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C88
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A578),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C9C),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A578,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009C9C
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A58C),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009CBC),
        1, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A58C,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009CBC
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A5B4),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009CD0),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A5B4,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009CD0
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A5E8),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009CE4),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A5E8,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009CE4
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A608),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009CF0),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A608,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009CF0
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A61C),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009CFC),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A61C,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009CFC
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A644),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009D10),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A644,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009D10
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A658),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009D1C),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A658,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009D1C
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A678),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009D28),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A678,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009D28
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A6B4),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009D48),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A6B4,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009D48
     },
    { 
        ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A6C8),
    ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009D54),
        0, gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A57C0_00A6C8,
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_2_009D54
     },
};

Struct_800A5E28 gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A5E28_00AC68 = { 
    235, ARRAY_COUNTU(gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_00A6E8),
    gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A598C_00A6E8, gPhantomHorseSkelLimbsLimb_00ACC4SkinLimbDL_00CB30
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AC74 = { 
    { 0, 5560, -1965 }, 0x01, LIMB_DONE,
    0x00, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AC84 = { 
    { 0, 581, -1482 }, 0x02, 0x05,
    0x00, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AC94 = { 
    { 0, 0, 0 }, 0x03, LIMB_DONE,
    0x05, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00ACA4 = { 
    { 1400, 0, 0 }, 0x04, LIMB_DONE,
    0x05, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00ACB4 = { 
    { 2746, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x00, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00ACC4 = { 
    { -4, 197, 2282 }, LIMB_DONE, 0x06,
    0x04, &gPhantomHorseSkelLimbsLimb_00ACC4Struct_800A5E28_00AC68
};

SkinLimb gPhantomHorseSkelLimbsLimb_00ACD4 = { 
    { 0, 78, 816 }, 0x07, 0x25,
    0x00, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00ACE4 = { 
    { 0, 0, 0 }, 0x08, LIMB_DONE,
    0x05, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00ACF4 = { 
    { 1933, 0, 0 }, 0x09, 0x24,
    0x05, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AD04 = { 
    { 2440, 0, 0 }, 0x0A, 0x0F,
    0x05, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AD14 = { 
    { 1617, 0, 0 }, 0x0B, LIMB_DONE,
    0x05, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AD24 = { 
    { 1500, 0, 0 }, 0x0C, LIMB_DONE,
    0x05, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AD34 = { 
    { 2276, 0, 0 }, LIMB_DONE, 0x0D,
    0x00, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AD44 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x0E,
    0x0B, gPhantomHorseSkelLimbsLimb_00AD44DL_002098
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AD54 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gPhantomHorseSkelLimbsLimb_00AD54DL_001F50
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AD64 = { 
    { 1538, 392, 939 }, 0x10, 0x19,
    0x00, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AD74 = { 
    { 0, 0, 0 }, 0x11, LIMB_DONE,
    0x05, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AD84 = { 
    { 696, 0, 0 }, 0x12, 0x18,
    0x05, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AD94 = { 
    { 2782, 0, 0 }, 0x13, 0x17,
    0x05, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00ADA4 = { 
    { 1678, 0, 0 }, 0x14, 0x16,
    0x05, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00ADB4 = { 
    { 760, 0, 0 }, LIMB_DONE, 0x15,
    0x00, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00ADC4 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gPhantomHorseSkelLimbsLimb_00ADC4DL_002710
};

SkinLimb gPhantomHorseSkelLimbsLimb_00ADD4 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gPhantomHorseSkelLimbsLimb_00ADD4DL_0028C0
};

SkinLimb gPhantomHorseSkelLimbsLimb_00ADE4 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gPhantomHorseSkelLimbsLimb_00ADE4DL_002438
};

SkinLimb gPhantomHorseSkelLimbsLimb_00ADF4 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gPhantomHorseSkelLimbsLimb_00ADF4DL_002510
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AE04 = { 
    { 1538, 392, -939 }, 0x1A, 0x23,
    0x00, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AE14 = { 
    { 0, 0, 0 }, 0x1B, LIMB_DONE,
    0x05, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AE24 = { 
    { 696, 0, 0 }, 0x1C, 0x22,
    0x05, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AE34 = { 
    { 2782, 0, 0 }, 0x1D, 0x21,
    0x05, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AE44 = { 
    { 1678, 0, 0 }, 0x1E, 0x20,
    0x05, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AE54 = { 
    { 760, 0, 0 }, LIMB_DONE, 0x1F,
    0x00, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AE64 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gPhantomHorseSkelLimbsLimb_00AE64DL_002F98
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AE74 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gPhantomHorseSkelLimbsLimb_00AE74DL_002EE8
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AE84 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gPhantomHorseSkelLimbsLimb_00AE84DL_003098
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AE94 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gPhantomHorseSkelLimbsLimb_00AE94DL_002DE8
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AEA4 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gPhantomHorseSkelLimbsLimb_00AEA4DL_002970
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AEB4 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gPhantomHorseSkelLimbsLimb_00AEB4DL_002C48
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AEC4 = { 
    { 753, -174, -682 }, 0x26, 0x2D,
    0x00, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AED4 = { 
    { 0, 0, 0 }, 0x27, LIMB_DONE,
    0x05, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AEE4 = { 
    { 1292, 0, 0 }, 0x28, LIMB_DONE,
    0x05, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AEF4 = { 
    { 2680, 0, 0 }, 0x29, LIMB_DONE,
    0x05, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AF04 = { 
    { 1809, 0, 0 }, 0x2A, 0x2C,
    0x05, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AF14 = { 
    { 687, 0, 0 }, LIMB_DONE, 0x2B,
    0x00, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AF24 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gPhantomHorseSkelLimbsLimb_00AF24DL_002610
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AF34 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gPhantomHorseSkelLimbsLimb_00AF34DL_002810
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AF44 = { 
    { -753, -174, -682 }, 0x2E, LIMB_DONE,
    0x00, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AF54 = { 
    { 0, 0, 0 }, 0x2F, LIMB_DONE,
    0x05, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AF64 = { 
    { 1292, 0, 0 }, 0x30, LIMB_DONE,
    0x05, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AF74 = { 
    { 2680, 0, 0 }, 0x31, LIMB_DONE,
    0x05, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AF84 = { 
    { 1809, 0, 0 }, 0x32, 0x34,
    0x05, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AF94 = { 
    { 687, 0, 0 }, LIMB_DONE, 0x33,
    0x00, NULL
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AFA4 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gPhantomHorseSkelLimbsLimb_00AFA4DL_003220
};

SkinLimb gPhantomHorseSkelLimbsLimb_00AFB4 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gPhantomHorseSkelLimbsLimb_00AFB4DL_003170
};

void* gPhantomHorseSkelLimbs[] = {
    &gPhantomHorseSkelLimbsLimb_00AC74,
    &gPhantomHorseSkelLimbsLimb_00AC84,
    &gPhantomHorseSkelLimbsLimb_00AC94,
    &gPhantomHorseSkelLimbsLimb_00ACA4,
    &gPhantomHorseSkelLimbsLimb_00ACB4,
    &gPhantomHorseSkelLimbsLimb_00ACC4,
    &gPhantomHorseSkelLimbsLimb_00ACD4,
    &gPhantomHorseSkelLimbsLimb_00ACE4,
    &gPhantomHorseSkelLimbsLimb_00ACF4,
    &gPhantomHorseSkelLimbsLimb_00AD04,
    &gPhantomHorseSkelLimbsLimb_00AD14,
    &gPhantomHorseSkelLimbsLimb_00AD24,
    &gPhantomHorseSkelLimbsLimb_00AD34,
    &gPhantomHorseSkelLimbsLimb_00AD44,
    &gPhantomHorseSkelLimbsLimb_00AD54,
    &gPhantomHorseSkelLimbsLimb_00AD64,
    &gPhantomHorseSkelLimbsLimb_00AD74,
    &gPhantomHorseSkelLimbsLimb_00AD84,
    &gPhantomHorseSkelLimbsLimb_00AD94,
    &gPhantomHorseSkelLimbsLimb_00ADA4,
    &gPhantomHorseSkelLimbsLimb_00ADB4,
    &gPhantomHorseSkelLimbsLimb_00ADC4,
    &gPhantomHorseSkelLimbsLimb_00ADD4,
    &gPhantomHorseSkelLimbsLimb_00ADE4,
    &gPhantomHorseSkelLimbsLimb_00ADF4,
    &gPhantomHorseSkelLimbsLimb_00AE04,
    &gPhantomHorseSkelLimbsLimb_00AE14,
    &gPhantomHorseSkelLimbsLimb_00AE24,
    &gPhantomHorseSkelLimbsLimb_00AE34,
    &gPhantomHorseSkelLimbsLimb_00AE44,
    &gPhantomHorseSkelLimbsLimb_00AE54,
    &gPhantomHorseSkelLimbsLimb_00AE64,
    &gPhantomHorseSkelLimbsLimb_00AE74,
    &gPhantomHorseSkelLimbsLimb_00AE84,
    &gPhantomHorseSkelLimbsLimb_00AE94,
    &gPhantomHorseSkelLimbsLimb_00AEA4,
    &gPhantomHorseSkelLimbsLimb_00AEB4,
    &gPhantomHorseSkelLimbsLimb_00AEC4,
    &gPhantomHorseSkelLimbsLimb_00AED4,
    &gPhantomHorseSkelLimbsLimb_00AEE4,
    &gPhantomHorseSkelLimbsLimb_00AEF4,
    &gPhantomHorseSkelLimbsLimb_00AF04,
    &gPhantomHorseSkelLimbsLimb_00AF14,
    &gPhantomHorseSkelLimbsLimb_00AF24,
    &gPhantomHorseSkelLimbsLimb_00AF34,
    &gPhantomHorseSkelLimbsLimb_00AF44,
    &gPhantomHorseSkelLimbsLimb_00AF54,
    &gPhantomHorseSkelLimbsLimb_00AF64,
    &gPhantomHorseSkelLimbsLimb_00AF74,
    &gPhantomHorseSkelLimbsLimb_00AF84,
    &gPhantomHorseSkelLimbsLimb_00AF94,
    &gPhantomHorseSkelLimbsLimb_00AFA4,
    &gPhantomHorseSkelLimbsLimb_00AFB4,
};

SkeletonHeader gPhantomHorseSkel = { 
    gPhantomHorseSkelLimbs, ARRAY_COUNT(gPhantomHorseSkelLimbs)
};

s16 sPhantomHorseRunningAnimFrameData[] = {
    0x0000, 0xF853, 0x4000, 0x8507, 0x8C17, 0x01A1, 0x0228, 0x033B, 0x0416, 0x0447, 0x03EE, 0x02DB, 0x01C9, 0x0147, 
    0x00EF, 0x00CB, 0x00F2, 0x0149, 0x0194, 0x155E, 0x1571, 0x15E0, 0x1792, 0x17BF, 0x1785, 0x16B5, 0x167A, 0x165A, 
    0x1633, 0x15A8, 0x1558, 0x15F1, 0x1587, 0xEAE8, 0xEA41, 0xEAE8, 0xF03A, 0xF518, 0xF539, 0xF2DE, 0xEAE8, 0xE93C, 
    0xEAE8, 0xF518, 0xF5EF, 0xF524, 0xF2DE, 0x0948, 0x02AB, 0xF659, 0xEF9D, 0xFA42, 0x084B, 0x0C06, 0x0948, 0xFAE8, 
    0xEF9D, 0xF493, 0xFF23, 0x084B, 0x09BF, 0xF153, 0xF026, 0xEDBD, 0xEBC7, 0xEB27, 0xEAED, 0xEA60, 0xE9A7, 0xE908, 
    0xE8C7, 0xE929, 0xEB28, 0xEE58, 0xF0E1, 0xEBF8, 0xEE4C, 0xF3DB, 0xFA7D, 0x000C, 0x0260, 0x0186, 0xFF43, 0xFC04, 
    0xF839, 0xF450, 0xF0B8, 0xEDE1, 0xEC38, 0xF983, 0xF8F6, 0xF7A5, 0xF614, 0xF4C4, 0xF437, 0xF46A, 0xF4F3, 0xF5B8, 
    0xF69D, 0xF78A, 0xF863, 0xF90F, 0xF974, 0x41A3, 0x3F24, 0x3928, 0x31EF, 0x2BBA, 0x28C9, 0x29FA, 0x2DCC, 0x32F1, 
    0x381B, 0x3BFC, 0x3E87, 0x406D, 0x417B, 0xA052, 0x968B, 0x9D10, 0xA606, 0xAEE7, 0xB449, 0xA36F, 0x9A9E, 0x968B, 
    0x9BD7, 0x9A36, 0x9B77, 0x9C45, 0x9D78, 0xF592, 0x0D70, 0x13B8, 0x1FF1, 0x2029, 0x1FF1, 0x2AF1, 0x2817, 0x212A, 
    0xFF59, 0xF592, 0xF0C8, 0xEF2D, 0xEF75, 0x0F33, 0x00F0, 0x00F0, 0xFD45, 0xFE51, 0x00F0, 0x1AF1, 0x3376, 0x4150, 
    0x43C2, 0x43C2, 0x3873, 0x3266, 0x28DE, 0x1B48, 0x184B, 0x0EA7, 0xFD22, 0xF3B4, 0xF705, 0x24DF, 0x20FD, 0x26B1, 
    0x3423, 0x37CE, 0x3A7C, 0x3C18, 0x37CE, 0x9348, 0x9006, 0x9006, 0x9B6F, 0xA3AF, 0xA8E1, 0xA924, 0xAF65, 0xBB36, 
    0xA8E1, 0xA0BA, 0x9A9E, 0x9617, 0x9278, 0x03D4, 0xFFC1, 0x05DE, 0x03D4, 0x01B1, 0x03D4, 0x1C86, 0x1E50, 0x1904, 
    0x2676, 0x1C46, 0x14F1, 0x0E2B, 0x077F, 0x3517, 0x22C1, 0x0D29, 0x00F0, 0xFE8D, 0xFE16, 0xF8E0, 0xF7F9, 0xF99A, 
    0x1E46, 0x3859, 0x4976, 0x4B1B, 0x469C, 0x23D7, 0x2B69, 0x2FA8, 0x23E6, 0x130C, 0x04C5, 0x0713, 0x0535, 0xF5BA, 
    0xF282, 0x3618, 0x37A1, 0x2EE7, 0x25A3, 0xA65D, 0xB024, 0xB712, 0xAEEC, 0xAE26, 0xAD4A, 0x9C78, 0x9540, 0x9196, 
    0x8DEB, 0x8AA9, 0x9266, 0x9E3F, 0xA8FE, 0x40C1, 0x412A, 0x40C1, 0x4676, 0x4562, 0x439C, 0x4465, 0x412A, 0x3C46, 
    0x3216, 0x2920, 0x34F1, 0x34E1, 0x3520, 0xD786, 0xE1A2, 0xED1E, 0xE014, 0xDCF3, 0xD98F, 0xC604, 0xC530, 0xCBB5, 
    0xD5E4, 0xE699, 0xDF43, 0xE202, 0xE3BF, 0x03AB, 0x1530, 0x2B99, 0x314D, 0x345B, 0x3630, 0x3753, 0x3630, 0x2B99, 
    0x230A, 0x2372, 0x180A, 0x0C47, 0x020A, 0x9BC5, 0xA17A, 0xA9A0, 0xB367, 0xB51B, 0xB367, 0xABAD, 0xA9A0, 0xA17A, 
    0x9953, 0x9953, 0x974A, 0x9677, 0x96E2, 0x31B5, 0x321D, 0x3AAC, 0x3427, 0x3C97, 0x4614, 0x43B9, 0x42D2, 0x4060, 
    0x3BE5, 0x3014, 0x2169, 0x1C1D, 0x21FB, 0xD397, 0xD125, 0xDEFF, 0xEF4C, 0xE27D, 0xD25E, 0xC698, 0xB8B3, 0xB367, 
    0xB77A, 0xBC5E, 0xC967, 0xD32F, 0xDA1C, 0xFC55, 0xFC57, 0xFD37, 0xFC57, 0xFCEC, 0xFDB0, 0xFDB0, 0xFDB0, 0xFDB0, 
    0xFDB0, 0xFD0E, 0xFD0E, 0xFD20, 0xFD0E, 0x0000, 0xFFC8, 0xFD9D, 0xFFC8, 0x018C, 0x02D9, 0x02D9, 0x02D9, 0x02D9, 
    0x02D9, 0x0230, 0x0230, 0x0265, 0x0230, 0x1C1D, 0x19AE, 0xFF44, 0x19AE, 0x2FD1, 0x404B, 0x404B, 0x404B, 0x404B, 
    0x404B, 0x361C, 0x361C, 0x3891, 0x361C, 0x0000, 
};

JointIndex sPhantomHorseRunningAnimJointIndices[] = {
    { 0x0000, 0x0013, 0x0001 },
    { 0x0005, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0021 },
    { 0x0000, 0x0000, 0x002F },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x003D },
    { 0x0000, 0x0000, 0x004B },
    { 0x0000, 0x0000, 0x0059 },
    { 0x0000, 0x0000, 0x0067 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0004 },
    { 0x0000, 0x0000, 0x0075 },
    { 0x0000, 0x0000, 0x0083 },
    { 0x0000, 0x0000, 0x0091 },
    { 0x0000, 0x0000, 0x009F },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0004 },
    { 0x0000, 0x0000, 0x00AD },
    { 0x0000, 0x0000, 0x00BB },
    { 0x0000, 0x0000, 0x00C9 },
    { 0x0000, 0x0000, 0x00D7 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x00E5 },
    { 0x0000, 0x0000, 0x00F3 },
    { 0x0000, 0x0000, 0x0101 },
    { 0x0000, 0x0000, 0x010F },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x011D },
    { 0x0000, 0x0000, 0x012B },
    { 0x0000, 0x0000, 0x0139 },
    { 0x0147, 0x0155, 0x0163 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gPhantomHorseRunningAnim = { 
    { 14 }, sPhantomHorseRunningAnimFrameData,
    sPhantomHorseRunningAnimJointIndices, 5
};

u8 object_fhg_possiblePadding_00B4D8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sPhantomHorseAirAnimFrameData[] = {
    0x0158, 0x0000, 0x2692, 0x4000, 0x8C17, 0xF853, 0xF857, 0xF85E, 0xF866, 0xF86F, 0xF876, 0xF87C, 0xF87E, 0xF87D, 
    0xF879, 0xF874, 0xF86D, 0xF866, 0xF85F, 0xF859, 0xED0B, 0xEB02, 0xE8AC, 0xE78B, 0xE81B, 0xE977, 0xEB14, 0xEC66, 
    0xECE1, 0xEB2F, 0xE82B, 0xE691, 0xE759, 0xE92B, 0xEB4E, 0x11CC, 0x1A9B, 0x1DE1, 0x17FA, 0x0EA0, 0x093E, 0x0B08, 
    0x1021, 0x154E, 0x1758, 0x1439, 0x0E0B, 0x07C8, 0x046B, 0x09C3, 0x7CEF, 0x7CD6, 0x7CC4, 0x7CB8, 0x7CB1, 0x7CAE, 
    0x7CAF, 0x7CB3, 0x7CB9, 0x7CC1, 0x7CCB, 0x7CD4, 0x7CDD, 0x7CE5, 0x7CEB, 0x053E, 0x04B1, 0x042A, 0x03AD, 0x033E, 
    0x02E0, 0x0298, 0x026B, 0x025A, 0x0281, 0x02E4, 0x036E, 0x0406, 0x0495, 0x0505, 0x0089, 0x0160, 0x014C, 0x00B8, 
    0x000D, 0xFFB6, 0xFFB7, 0xFFCB, 0xFFE8, 0x0008, 0x0022, 0x0023, 0x0010, 0x0007, 0x0025, 0xFD10, 0xFE30, 0xFFC4, 
    0x0177, 0x02F5, 0x03E5, 0x043A, 0x042C, 0x03D3, 0x0346, 0x029E, 0x01C8, 0x00B6, 0xFF80, 0xFE41, 0x16A5, 0x1599, 
    0x1511, 0x14DB, 0x14C7, 0x14A4, 0x1468, 0x142E, 0x13FB, 0x13D4, 0x13C0, 0x13C4, 0x13E7, 0x14B7, 0x1602, 0xBB39, 
    0xBC6A, 0xBD42, 0xBDCC, 0xBE11, 0xBE1E, 0xBDFB, 0xBDB4, 0xBD52, 0xBCE1, 0xBC6B, 0xBBFA, 0xBB98, 0xBB50, 0xBB2D, 
    0xC5C7, 0xC5FC, 0xC661, 0xC6E2, 0xC769, 0xC7E3, 0xC83B, 0xC85D, 0xC847, 0xC80C, 0xC7B5, 0xC74D, 0xC6DD, 0xC670, 
    0xC610, 0x3831, 0x382A, 0x3895, 0x3958, 0x3A58, 0x3B7A, 0x3CA4, 0x3DBA, 0x3EA2, 0x3F40, 0x3F7B, 0x3F1F, 0x3E1D, 
    0x3C8E, 0x3A8C, 0x43BC, 0x42A6, 0x4125, 0x3F78, 0x3DDC, 0x3BF5, 0x39C7, 0x381B, 0x37BB, 0x38AD, 0x3A49, 0x3C50, 
    0x3E83, 0x40A5, 0x4278, 0xAD87, 0xAE21, 0xAE8C, 0xAECF, 0xAEEE, 0xAEEF, 0xAED9, 0xAEB0, 0xAE7B, 0xAE3F, 0xAE02, 
    0xADC9, 0xAD9B, 0xAD7D, 0xAD74, 0xDA96, 0xDA1B, 0xD9C2, 0xD986, 0xD961, 0xD94E, 0xD949, 0xD94B, 0xD951, 0xD953, 
    0xD967, 0xD99A, 0xD9DF, 0xDA29, 0xDA6A, 0x2DAA, 0x2E05, 0x2F31, 0x30E8, 0x32E8, 0x34EC, 0x36B1, 0x37F2, 0x386C, 
    0x381D, 0x3740, 0x35EA, 0x3434, 0x3232, 0x2FFC, 0x4C25, 0x4C32, 0x4B49, 0x49C3, 0x47F9, 0x4644, 0x44FD, 0x447C, 
    0x44B3, 0x454A, 0x462C, 0x4744, 0x487E, 0x49C4, 0x4B03, 0xADE0, 0xADB9, 0xAD9E, 0xAD8E, 0xAD88, 0xAD89, 0xAD90, 
    0xAD9C, 0xADAB, 0xADBB, 0xADCB, 0xADDA, 0xADE4, 0xADEA, 0xADE9, 0x0000, 0x0068, 0x00E0, 0x00A7, 0xFF36, 0xFD18, 
    0xFB2B, 0xFA4C, 0xFA6E, 0xFAE3, 0xFB97, 0xFC76, 0xFD6A, 0xFE60, 0xFF44, 0x4D24, 0x4D9B, 0x4DAD, 0x4DAA, 0x4DAA, 
    0x4D9B, 0x4D87, 0x4D76, 0x4D6B, 0x4D5F, 0x4D53, 0x4D47, 0x4D3C, 0x4D32, 0x4D2A, 0x0000, 0x002F, 0x007F, 0x00D1, 
    0x0107, 0x0103, 0x00A7, 0xFF5A, 0xFD3A, 0xFB39, 0xFA4C, 0xFAB1, 0xFBCC, 0xFD46, 0xFEC9, 0xC402, 0xC3B4, 0xC38E, 
    0xC382, 0xC386, 0xC38E, 0xC38E, 0xC38D, 0xC397, 0xC3A6, 0xC3B5, 0xC3C1, 0xC3CF, 0xC3DE, 0xC3EE, 0x0000, 0x0068, 
    0x00E0, 0x00A7, 0xFF36, 0xFD18, 0xFB2B, 0xFA4C, 0xFA6E, 0xFAE3, 0xFB97, 0xFC76, 0xFD6A, 0xFE60, 0xFF44, 0x43D9, 
    0x441F, 0x442F, 0x4432, 0x4436, 0x4431, 0x4428, 0x441F, 0x441A, 0x4417, 0x4414, 0x4411, 0x440B, 0x4401, 0x43F1, 
    0xAE04, 0xADE2, 0xADCC, 0xADBE, 0xADB9, 0xADBA, 0xADC0, 0xADCA, 0xADD6, 0xADE4, 0xADF1, 0xADFD, 0xAE07, 0xAE0C, 
    0xAE0B, 0x0000, 0xFFAD, 0xFF3C, 0xFEBC, 0xFE3E, 0xFDD1, 0xFD85, 0xFD69, 0xFD8E, 0xFE95, 0x0080, 0x026E, 0x0380, 
    0x02F1, 0x0160, 0x4C23, 0x4C56, 0x4C74, 0x4C82, 0x4C83, 0x4C7C, 0x4C73, 0x4C6C, 0x4C6B, 0x4C6C, 0x4C68, 0x4C60, 
    0x4C56, 0x4C46, 0x4C31, 0x0000, 0xFF76, 0xFEB4, 0xFDF8, 0xFD81, 0xFD8E, 0xFEA8, 0x0099, 0x0282, 0x0380, 0x037B, 
    0x0308, 0x024F, 0x0176, 0x00A4, 0xCA96, 0xCA33, 0xCA0F, 0xCA11, 0xCA21, 0xCA25, 0xCA22, 0xCA29, 0xCA35, 0xCA41, 
    0xCA4D, 0xCA5B, 0xCA69, 0xCA78, 0xCA87, 0xFDA7, 0xFCB6, 0xFB88, 0xFB3A, 0xFC66, 0xFE58, 0x0037, 0x0129, 0x0135, 
    0x00FC, 0x008F, 0xFFFF, 0xFF5B, 0xFEB6, 0xFE1F, 0x02EB, 0x02F6, 0x02F7, 0x02F6, 0x02F6, 0x02F5, 0x02F4, 0x02F2, 
    0x02F1, 0x02F0, 0x02EF, 0x02EE, 0x02ED, 0x02EC, 0x02EB, 0x40EF, 0x4181, 0x4187, 0x4178, 0x4179, 0x416B, 0x4157, 
    0x4146, 0x4139, 0x4129, 0x4118, 0x4107, 0x40F9, 0x40F0, 0x40EC, 
};

JointIndex sPhantomHorseAirAnimJointIndices[] = {
    { 0x0001, 0x0002, 0x0005 },
    { 0x0000, 0x0001, 0x0001 },
    { 0x0001, 0x0003, 0x0001 },
    { 0x0001, 0x0001, 0x0014 },
    { 0x0001, 0x0001, 0x0023 },
    { 0x0001, 0x0001, 0x0001 },
    { 0x0001, 0x0001, 0x0001 },
    { 0x0001, 0x0003, 0x0001 },
    { 0x0001, 0x0001, 0x0032 },
    { 0x0001, 0x0001, 0x0041 },
    { 0x0001, 0x0001, 0x0050 },
    { 0x0001, 0x0001, 0x005F },
    { 0x0001, 0x0001, 0x006E },
    { 0x0001, 0x0001, 0x0001 },
    { 0x0001, 0x0001, 0x0001 },
    { 0x0001, 0x0001, 0x0001 },
    { 0x0001, 0x0001, 0x0004 },
    { 0x0001, 0x0001, 0x007D },
    { 0x0001, 0x0001, 0x008C },
    { 0x0001, 0x0001, 0x009B },
    { 0x0001, 0x0001, 0x00AA },
    { 0x0001, 0x0001, 0x0001 },
    { 0x0001, 0x0001, 0x0001 },
    { 0x0001, 0x0001, 0x0001 },
    { 0x0001, 0x0001, 0x0001 },
    { 0x0001, 0x0001, 0x0001 },
    { 0x0001, 0x0001, 0x0004 },
    { 0x0001, 0x0001, 0x00B9 },
    { 0x0001, 0x0001, 0x00C8 },
    { 0x0001, 0x0001, 0x00D7 },
    { 0x0001, 0x0001, 0x00E6 },
    { 0x0001, 0x0001, 0x0001 },
    { 0x0001, 0x0001, 0x0001 },
    { 0x0001, 0x0001, 0x0001 },
    { 0x0001, 0x0001, 0x0001 },
    { 0x0001, 0x0001, 0x0001 },
    { 0x0001, 0x0001, 0x0001 },
    { 0x0001, 0x0001, 0x0001 },
    { 0x0001, 0x0003, 0x0001 },
    { 0x0001, 0x0001, 0x00F5 },
    { 0x0104, 0x0001, 0x0113 },
    { 0x0122, 0x0001, 0x0131 },
    { 0x0140, 0x0001, 0x014F },
    { 0x0001, 0x0001, 0x0001 },
    { 0x0001, 0x0001, 0x0001 },
    { 0x0001, 0x0001, 0x0001 },
    { 0x0001, 0x0003, 0x0001 },
    { 0x0001, 0x0001, 0x015E },
    { 0x016D, 0x0001, 0x017C },
    { 0x018B, 0x0001, 0x019A },
    { 0x01A9, 0x01B8, 0x01C7 },
    { 0x0001, 0x0001, 0x0001 },
    { 0x0001, 0x0001, 0x0001 },
    { 0x0001, 0x0001, 0x0001 },
};

AnimationHeader gPhantomHorseAirAnim = { 
    { 15 }, sPhantomHorseAirAnimFrameData,
    sPhantomHorseAirAnimJointIndices, 5
};

s16 sPhantomHorseFenceJumpAnimFrameData[] = {
    0x0000, 0xF853, 0x4000, 0x8C17, 0x0272, 0xFE0C, 0xF57D, 0xEFB4, 0xEDF8, 0xECEE, 0xEC96, 0xECF0, 0xEDFA, 0xEFB4, 
    0xF266, 0xF61D, 0xFA86, 0xFF4A, 0x0414, 0x088E, 0x0D5E, 0x12FC, 0x18D1, 0x1E45, 0x22C1, 0x25AE, 0x2675, 0x240E, 
    0x1EA7, 0x177B, 0x0FC3, 0x08BB, 0x039C, 0x01A1, 0x148A, 0x137B, 0x1411, 0x14A7, 0x17E5, 0x1ACC, 0x1D5E, 0x1F9D, 
    0x218A, 0x2327, 0x2475, 0x2575, 0x2629, 0x2692, 0x26B2, 0x2690, 0x2635, 0x25A2, 0x24DA, 0x23E0, 0x22B7, 0x2162, 
    0x1FE2, 0x1E3B, 0x1C6E, 0x1A97, 0x18DF, 0x1771, 0x1677, 0x161A, 0xEAE8, 0xEAD7, 0xEAA8, 0xEA66, 0xEA1B, 0xE9D0, 
    0xE98E, 0xE960, 0xE94E, 0xE963, 0xE9A8, 0xEA26, 0xEAE8, 0xECD0, 0xF035, 0xF44F, 0xF853, 0xFB78, 0xFCF7, 0xFC05, 
    0xF421, 0xE5C2, 0xD791, 0xD037, 0xD101, 0xD59D, 0xDC47, 0xE33A, 0xE8B1, 0xEAE8, 0x0948, 0x0F5B, 0x1A23, 0x1E78, 
    0x1A6D, 0x1418, 0x0C4C, 0x03DE, 0xFBA4, 0xF472, 0xEF1D, 0xEB79, 0xE8D1, 0xE730, 0xE6A1, 0xE72F, 0xE8E3, 0xEC83, 
    0xF247, 0xF95E, 0x00FD, 0x0855, 0x119F, 0x1BA0, 0x205F, 0x1E0B, 0x1854, 0x1177, 0x0BB4, 0x0948, 0x7795, 0x8BCB, 
    0x9235, 0x934A, 0x9135, 0x8E1C, 0x8A72, 0x86A7, 0x832C, 0x8072, 0x7EEB, 0x7E39, 0x7DB1, 0x7D51, 0x7D14, 0x7CF7, 
    0x7CF7, 0x7D10, 0x7D3F, 0x7D80, 0x7DD0, 0x7E2C, 0x7E8F, 0x7EF8, 0x7F61, 0x7FC8, 0x8029, 0x8081, 0x82D9, 0x8507, 
    0xFA4A, 0xEBF5, 0xE60C, 0xE51A, 0xEDB9, 0xF770, 0xFC6E, 0x0109, 0x04D8, 0x0775, 0x0877, 0x081B, 0x06FB, 0x053C, 
    0x0304, 0x0079, 0xFDC1, 0xFB02, 0xF861, 0xF566, 0xF1C1, 0xEDD2, 0xE9F8, 0xE692, 0xE401, 0xE2A3, 0xE492, 0xE9A9, 
    0xEEE9, 0xF153, 0xDF56, 0xDC9D, 0xD7F1, 0xD693, 0xD904, 0xDC2F, 0xDFEB, 0xE410, 0xE878, 0xECF9, 0xF16D, 0xF5AC, 
    0xFAED, 0x0089, 0x038A, 0x03F2, 0x03C8, 0x031E, 0x0205, 0x008E, 0xFECA, 0xFCCC, 0xF888, 0xF285, 0xEEB0, 0xEE0B, 
    0xEE95, 0xEFB5, 0xF0D2, 0xF153, 0xF15D, 0xF270, 0xF4A9, 0xF686, 0xF7BE, 0xF8FE, 0xFA39, 0xFB62, 0xFC6F, 0xFD53, 
    0xFE00, 0xFE6C, 0xFE23, 0xFD10, 0xFBB4, 0xFA8E, 0xFA21, 0xFAD9, 0xFC62, 0xFE16, 0xFF50, 0xFF6B, 0xFC87, 0xF7B7, 
    0xF4C7, 0xF4CC, 0xF5EA, 0xF77E, 0xF8E6, 0xF983, 0x3E61, 0x404F, 0x43A4, 0x44AD, 0x425E, 0x3E8D, 0x39DF, 0x34F6, 
    0x2F7A, 0x293E, 0x2330, 0x1E3A, 0x1A3F, 0x16A5, 0x139D, 0x1156, 0x1000, 0x101B, 0x11AA, 0x1424, 0x16FE, 0x1A32, 
    0x1E00, 0x2247, 0x26E4, 0x2CB4, 0x33B7, 0x3A7F, 0x3F9D, 0x41A3, 0x9C0F, 0x9AAE, 0x9894, 0x98CD, 0x9B77, 0x9E96, 
    0xA210, 0xA5C8, 0xA9A3, 0xAD86, 0xB155, 0xB4F5, 0xB84A, 0xBB39, 0xBDA7, 0xBEE0, 0xBEB2, 0xBDC7, 0xBCC8, 0xBC5D, 
    0xBD2F, 0xC5B8, 0xCAEB, 0xBA48, 0xA91C, 0xA44D, 0xA1A2, 0xA07E, 0xA043, 0xA052, 0xF289, 0xEEDC, 0xE74B, 0xE104, 
    0xDD0D, 0xD911, 0xD52D, 0xD183, 0xCE31, 0xCB57, 0xC916, 0xC78D, 0xC6AA, 0xC642, 0xC64B, 0xC6BC, 0xC78A, 0xC8AD, 
    0xCA1C, 0xCBCD, 0xCDB6, 0xD0A8, 0xDDA9, 0x068F, 0x2638, 0x23A9, 0x184B, 0x0980, 0xFCAC, 0xF733, 0x36B5, 0x3A28, 
    0x40C6, 0x44F7, 0x462C, 0x476C, 0x487C, 0x4920, 0x491F, 0x483E, 0x4641, 0x42EE, 0x3E11, 0x37D3, 0x3084, 0x2874, 
    0x1FF4, 0x1753, 0x0EE1, 0x06EF, 0xFFCD, 0xFB52, 0xFA13, 0xF8F6, 0xFF2D, 0x13E5, 0x2DEC, 0x429A, 0x48A0, 0x476C, 
    0x3B2D, 0x3E9F, 0x4525, 0x4908, 0x49B8, 0x4A69, 0x4AFF, 0x4B61, 0x4B75, 0x4B20, 0x4A4B, 0x48D9, 0x46B2, 0x43BC, 
    0x3EFD, 0x3810, 0x2FB6, 0x26B1, 0x1DC4, 0x15B0, 0x0F36, 0x11B1, 0x12F7, 0xFE70, 0xEFF0, 0xFDCB, 0x1552, 0x2830, 
    0x2C6B, 0x2AC4, 0x9790, 0x97E1, 0x98C0, 0x9A0C, 0x9BA5, 0x9D6A, 0x9F41, 0xA122, 0xA30E, 0xA508, 0xA710, 0xA927, 
    0xAB4E, 0xAD87, 0xAFD2, 0xB230, 0xB4A4, 0xB801, 0xBC83, 0xC141, 0xC551, 0xC7CC, 0xC7CA, 0xB93D, 0xA82E, 0xA27A, 
    0x9E63, 0x9BB5, 0x9A3F, 0x99CD, 0x1542, 0x0013, 0xF664, 0xEDEA, 0xE72F, 0xE2BC, 0xE000, 0xDDFA, 0xDC8C, 0xDB9C, 
    0xDB0E, 0xDAC5, 0xDAA7, 0xDA96, 0xDA1D, 0xD914, 0xD7DD, 0xD6D5, 0xD65C, 0xD6D2, 0xD895, 0xDC06, 0xE183, 0x028F, 
    0x239B, 0x25D4, 0x2183, 0x1A20, 0x1326, 0x100D, 0x2BEE, 0x3B6C, 0x4C2E, 0x48AC, 0x3F1E, 0x388F, 0x37DB, 0x3910, 
    0x3B05, 0x3C90, 0x3C8A, 0x39C8, 0x3470, 0x2DAA, 0x25D3, 0x1D4A, 0x146B, 0x0B95, 0x0326, 0xFB7A, 0xF4F0, 0xF4DA, 
    0xF968, 0xFC02, 0x02AB, 0x1182, 0x2431, 0x369D, 0x44AD, 0x4A47, 0x3173, 0x322F, 0x3407, 0x3671, 0x38E3, 0x3AD2, 
    0x3CA3, 0x3EF2, 0x418C, 0x4441, 0x46DC, 0x492D, 0x4B01, 0x4C25, 0x4C67, 0x4B95, 0x497D, 0x40E3, 0x30A1, 0x1EA4, 
    0x10DB, 0x1009, 0x0F3A, 0xF7A6, 0xEA14, 0x02A0, 0x2802, 0x42D7, 0x3C47, 0x2ED7, 0x8E53, 0x9CA3, 0xBB2D, 0xC989, 
    0xCEF2, 0xCCC7, 0xC8F1, 0xC403, 0xBE91, 0xB931, 0xB475, 0xB0F2, 0xAED3, 0xADA2, 0xAD07, 0xACA5, 0xAC24, 0xAB28, 
    0xA959, 0xA65A, 0x9FA7, 0x955F, 0x8B1E, 0x8483, 0x82A8, 0x8393, 0x8643, 0x89B1, 0x9261, 0x9953, 0x2F3C, 0x4414, 
    0x4108, 0x36F2, 0x2BD0, 0x2EF7, 0x335C, 0x387A, 0x3DCC, 0x42D0, 0x4700, 0x49D9, 0x4B8D, 0x4CAF, 0x4D4B, 0x4D69, 
    0x4D16, 0x4C5B, 0x4B43, 0x49D9, 0x4645, 0x4050, 0x3A6F, 0x3717, 0x3783, 0x3A32, 0x3D83, 0x3FD3, 0x3F97, 0x3EB8, 
    0xDE73, 0xBF72, 0xD103, 0xD0AD, 0xEAD4, 0xE836, 0xE363, 0xDD2C, 0xD661, 0xCFD5, 0xCA58, 0xC6BA, 0xC4EF, 0xC42F, 
    0xC437, 0xC4C3, 0xC58D, 0xC652, 0xC6CD, 0xC6BA, 0xC54C, 0xC2EA, 0xC11E, 0xC174, 0xC4B2, 0xC9E8, 0xD009, 0xD607, 
    0xDDE0, 0xE2EE, 0x1A7C, 0x2741, 0xFACF, 0x076D, 0x24A6, 0x2B77, 0x314E, 0x363A, 0x3A4D, 0x3D95, 0x4023, 0x4207, 
    0x4328, 0x437C, 0x4325, 0x4247, 0x4106, 0x3F85, 0x3DE8, 0x3C53, 0x3AA8, 0x385A, 0x34E3, 0x2FBE, 0x27C4, 0x1D93, 
    0x1349, 0x0B08, 0x0829, 0x088E, 0x8A40, 0x9421, 0xB92F, 0xCB04, 0xCA6E, 0xC60C, 0xC276, 0xBE81, 0xBA74, 0xB699, 
    0xB338, 0xB09A, 0xAEEF, 0xAE04, 0xAD8F, 0xAD46, 0xACDF, 0xAC0F, 0xAA8C, 0xA80C, 0xA2CA, 0x9ABC, 0x9234, 0x8B80, 
    0x868F, 0x8261, 0x7FDC, 0x7FE7, 0x8AFC, 0x9540, 0x28BE, 0x457B, 0x38BC, 0x34BF, 0x2B55, 0x2FCB, 0x3633, 0x3ACE, 
    0x3F90, 0x43FD, 0x479B, 0x49ED, 0x4B3C, 0x4C23, 0x4CA5, 0x4CC8, 0x4C90, 0x4C00, 0x4B1E, 0x49ED, 0x472E, 0x429A, 
    0x3DAC, 0x39E0, 0x37AC, 0x3641, 0x352F, 0x3404, 0x3285, 0x31B5, 0xD18D, 0xC596, 0xC75B, 0xD185, 0xF010, 0xF461, 
    0xF102, 0xEAAB, 0xE271, 0xD9E0, 0xD285, 0xCDED, 0xCBC5, 0xCA96, 0xCA32, 0xCA6B, 0xCB15, 0xCC01, 0xCD03, 0xCDED, 
    0xCFCB, 0xD2E8, 0xD5F2, 0xD799, 0xD727, 0xD56D, 0xD368, 0xD212, 0xD2AA, 0xD397, 0xFC66, 0xFC66, 0xFC9B, 0xFCAB, 
    0xFC7A, 0xFC76, 0xFC8B, 0xFCB9, 0xFCF2, 0xFD2D, 0xFD5F, 0xFD80, 0xFD94, 0xFDA7, 0xFDB9, 0xFDC8, 0xFDD6, 0xFDE2, 
    0xFDEB, 0xFDF1, 0xFDF4, 0xFDF4, 0xFDF0, 0xFDE7, 0xFDC4, 0xFD7E, 0xFD29, 0xFCDC, 0xFC88, 0xFC55, 0x00B1, 0x00A6, 
    0x0076, 0xFE8F, 0x00D8, 0x0031, 0xFF82, 0xFFF5, 0x00AD, 0x017B, 0x022F, 0x0297, 0x02C6, 0x02EB, 0x0309, 0x031E, 
    0x032D, 0x0334, 0x0334, 0x032F, 0x0324, 0x0314, 0x0300, 0x02E7, 0x02A0, 0x021A, 0x017B, 0x00EB, 0x0057, 0x0000, 
    0x23D3, 0x2362, 0x21C0, 0x0B7F, 0x257B, 0x1E17, 0x1682, 0x1C27, 0x2503, 0x2EDA, 0x376F, 0x3C86, 0x3EEC, 0x40EF, 
    0x4293, 0x43DA, 0x44C8, 0x4561, 0x45A7, 0x459F, 0x454B, 0x44AF, 0x43CF, 0x42AD, 0x3F14, 0x3828, 0x2FF0, 0x2876, 
    0x20AE, 0x1C1D, 
};

JointIndex sPhantomHorseFenceJumpAnimJointIndices[] = {
    { 0x0000, 0x0022, 0x0001 },
    { 0x0004, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0040 },
    { 0x0000, 0x0000, 0x005E },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x007C },
    { 0x0000, 0x0000, 0x009A },
    { 0x0000, 0x0000, 0x00B8 },
    { 0x0000, 0x0000, 0x00D6 },
    { 0x0000, 0x0000, 0x00F4 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x0112 },
    { 0x0000, 0x0000, 0x0130 },
    { 0x0000, 0x0000, 0x014E },
    { 0x0000, 0x0000, 0x016C },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x018A },
    { 0x0000, 0x0000, 0x01A8 },
    { 0x0000, 0x0000, 0x01C6 },
    { 0x0000, 0x0000, 0x01E4 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0202 },
    { 0x0000, 0x0000, 0x0220 },
    { 0x0000, 0x0000, 0x023E },
    { 0x0000, 0x0000, 0x025C },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x027A },
    { 0x0000, 0x0000, 0x0298 },
    { 0x0000, 0x0000, 0x02B6 },
    { 0x02D4, 0x02F2, 0x0310 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gPhantomHorseFenceJumpAnim = { 
    { 30 }, sPhantomHorseFenceJumpAnimFrameData,
    sPhantomHorseFenceJumpAnimJointIndices, 4
};

s16 sPhantomHorseLeapAnimFrameData[] = {
    0x0000, 0xF853, 0x4000, 0x8C17, 0x0272, 0xFE2E, 0xF5C0, 0xEFB4, 0xEDDE, 0xED7B, 0xEE35, 0xEFB4, 0xF21E, 0xF578, 
    0xF937, 0xFCCF, 0xFFB3, 0x0158, 0x148A, 0x137B, 0x1411, 0x14A7, 0x17DB, 0x1AA7, 0x1D16, 0x1F2F, 0x20FB, 0x2281, 
    0x23CC, 0x24E2, 0x25CC, 0x2692, 0xEAE8, 0xEAF0, 0xEB05, 0xEB26, 0xEB50, 0xEB83, 0xEBBA, 0xEBF6, 0xEC32, 0xEC6E, 
    0xECA8, 0xECDD, 0xED0B, 0xED0B, 0x0948, 0x0F5B, 0x1A23, 0x1E78, 0x1A14, 0x12ED, 0x0A33, 0x0112, 0xF8BA, 0xF259, 
    0xEF1D, 0xF577, 0x045E, 0x11CC, 0x7795, 0x8BCB, 0x9235, 0x934A, 0x9162, 0x8EB4, 0x8B83, 0x8813, 0x84A7, 0x8183, 
    0x7EEB, 0x7D6F, 0x7D00, 0x7CEF, 0xFA4A, 0xEBF5, 0xE60C, 0xE51A, 0xEDB9, 0xF770, 0xFC2A, 0x003E, 0x03A8, 0x0666, 
    0x0877, 0x0885, 0x06B5, 0x053E, 0xDF56, 0xDC9D, 0xD7F1, 0xD693, 0xD901, 0xDC24, 0xDFD7, 0xE3F5, 0xE857, 0xECDA, 
    0xF158, 0xF5AC, 0xFBCB, 0x0089, 0xF15D, 0xF270, 0xF4A9, 0xF686, 0xF7B4, 0xF8DA, 0xF9F5, 0xFB02, 0xFBFE, 0xFCE6, 
    0xFDB7, 0xFE6C, 0xFDB6, 0xFD10, 0x3E61, 0x404F, 0x43A4, 0x44AD, 0x425E, 0x3E8D, 0x39DF, 0x34F6, 0x2FA7, 0x29B7, 
    0x23B8, 0x1E3A, 0x1984, 0x16A5, 0x9C0F, 0x9AAE, 0x9894, 0x98CD, 0x9B95, 0x9F02, 0xA2E4, 0xA70C, 0xAB4A, 0xAF6D, 
    0xB346, 0xB6A6, 0xB95C, 0xBB39, 0xF289, 0xEEDC, 0xE74B, 0xE104, 0xDD3A, 0xD9A9, 0xD64B, 0xD319, 0xD00D, 0xCD21, 
    0xCA4D, 0xC78D, 0xC5F6, 0xC5C7, 0x36B5, 0x3A28, 0x40C6, 0x44F7, 0x45DE, 0x4660, 0x4685, 0x4656, 0x45DA, 0x451A, 
    0x441E, 0x42EE, 0x3D50, 0x3831, 0x3B2D, 0x3E9F, 0x4525, 0x4908, 0x497D, 0x4994, 0x495B, 0x48E1, 0x4834, 0x4761, 
    0x4677, 0x4584, 0x4496, 0x43BC, 0x9790, 0x97E7, 0x98D0, 0x9A24, 0x9BBA, 0x9D6A, 0x9F53, 0xA192, 0xA400, 0xA676, 
    0xA8CC, 0xAADB, 0xAC7B, 0xAD87, 0x1542, 0x0013, 0xF664, 0xEDEA, 0xE72F, 0xE2BC, 0xE00E, 0xDE28, 0xDCE3, 0xDC17, 
    0xDB9E, 0xDB50, 0xDB05, 0xDA96, 0x2BEE, 0x3B6C, 0x4C2E, 0x48AC, 0x3F1E, 0x388F, 0x376B, 0x37AA, 0x38A9, 0x39C4, 
    0x3A5A, 0x39C8, 0x336A, 0x2DAA, 0x3173, 0x3219, 0x33C3, 0x360B, 0x3888, 0x3AD2, 0x3D11, 0x3F99, 0x4241, 0x44E4, 
    0x475A, 0x497C, 0x4B22, 0x4C25, 0x8E53, 0x9CA3, 0xBB2D, 0xC989, 0xCEF2, 0xCCE6, 0xC956, 0xC4B9, 0xBF84, 0xBA2E, 
    0xB52B, 0xB0F2, 0xAE8A, 0xADE0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0xFFF8, 0x0000, 0x2F3C, 0x4414, 0x4108, 0x36F2, 0x2BD0, 0x2EC2, 0x32AA, 0x373A, 0x3C22, 0x4114, 
    0x45C0, 0x49D9, 0x4C3B, 0x4D24, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0xFFFB, 0x0000, 0xDE73, 0xBF72, 0xD103, 0xD0AD, 0xEAD4, 0xE872, 0xE42A, 0xDE92, 0xD840, 0xD1C7, 
    0xCBBF, 0xC6BA, 0xC464, 0xC402, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0xFFF8, 0x0000, 0x1A7C, 0x2741, 0xFACF, 0x076D, 0x24A6, 0x2B3C, 0x3089, 0x34D7, 0x3873, 0x3BA8, 
    0x3EC0, 0x4207, 0x43B2, 0x43D9, 0x8A40, 0x9421, 0xB92F, 0xCB04, 0xCA6E, 0xC60C, 0xC295, 0xBEE3, 0xBB1A, 0xB75D, 
    0xB3D1, 0xB09A, 0xAE98, 0xAE04, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0010, 0x0000, 0x28BE, 0x457B, 0x38BC, 0x34BF, 0x2B55, 0x2FCB, 0x3633, 0x3A8C, 0x3EC9, 0x42D3, 
    0x4692, 0x49ED, 0x4BC1, 0x4C23, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0016, 0x0000, 0xD18D, 0xC596, 0xC75B, 0xD185, 0xF010, 0xF461, 0xF102, 0xEB1D, 0xE3C8, 0xDBE2, 
    0xD44E, 0xCDED, 0xCB04, 0xCA96, 0xFC66, 0xFC66, 0xFC9B, 0xFCAB, 0xFC7A, 0xFC76, 0xFC8B, 0xFCB6, 0xFCE9, 0xFD1F, 
    0xFD53, 0xFD80, 0xFDBB, 0xFDA7, 0x00B1, 0x00A6, 0x0076, 0xFE8F, 0x00D8, 0x0031, 0xFF82, 0xFFE9, 0x008A, 0x0146, 
    0x01FF, 0x0297, 0x02DC, 0x02EB, 0x23D3, 0x2362, 0x21C0, 0x0B7F, 0x257B, 0x1E17, 0x1682, 0x1B99, 0x235A, 0x2C5C, 
    0x3538, 0x3C86, 0x3FFF, 0x40EF, 
};

JointIndex sPhantomHorseLeapAnimJointIndices[] = {
    { 0x0000, 0x0012, 0x0001 },
    { 0x0004, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0020 },
    { 0x0000, 0x0000, 0x002E },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x003C },
    { 0x0000, 0x0000, 0x004A },
    { 0x0000, 0x0000, 0x0058 },
    { 0x0000, 0x0000, 0x0066 },
    { 0x0000, 0x0000, 0x0074 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x0082 },
    { 0x0000, 0x0000, 0x0090 },
    { 0x0000, 0x0000, 0x009E },
    { 0x0000, 0x0000, 0x00AC },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x00BA },
    { 0x0000, 0x0000, 0x00C8 },
    { 0x0000, 0x0000, 0x00D6 },
    { 0x0000, 0x0000, 0x00E4 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x00F2 },
    { 0x0100, 0x0000, 0x010E },
    { 0x011C, 0x0000, 0x012A },
    { 0x0138, 0x0000, 0x0146 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0154 },
    { 0x0162, 0x0000, 0x0170 },
    { 0x017E, 0x0000, 0x018C },
    { 0x019A, 0x01A8, 0x01B6 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gPhantomHorseLeapAnim = { 
    { 14 }, sPhantomHorseLeapAnimFrameData,
    sPhantomHorseLeapAnimJointIndices, 4
};

u8 object_fhg_possiblePadding_00C66C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 sPhantomHorseLandAnimFrameData[] = {
    0x0000, 0xF853, 0x4000, 0x8C17, 0x04B2, 0x088E, 0x0D60, 0x12FE, 0x18D3, 0x1E46, 0x22C2, 0x25AF, 0x2675, 0x240E, 
    0x1EA7, 0x177B, 0x0FC3, 0x08BB, 0x039C, 0x01A1, 0x26B2, 0x25EB, 0x2537, 0x248A, 0x23D7, 0x2311, 0x222C, 0x2119, 
    0x1FCD, 0x1E3B, 0x1C6E, 0x1A97, 0x18DF, 0x1771, 0x1677, 0x161A, 0xED0B, 0xF0B6, 0xF5A6, 0xFA40, 0xFCE9, 0xFC05, 
    0xF3B2, 0xE55F, 0xD76C, 0xD037, 0xD101, 0xD59D, 0xDC47, 0xE33A, 0xE8B1, 0xEAE8, 0x11CC, 0xF963, 0xE8E3, 0xF48C, 
    0x0A44, 0x1CB2, 0x28A5, 0x314D, 0x32E1, 0x291F, 0x1849, 0x0961, 0x000C, 0xFC2D, 0x02B9, 0x0948, 0x7D14, 0x7D51, 
    0x7D86, 0x7DB6, 0x7DE4, 0x7E10, 0x7E3F, 0x7E72, 0x7EAC, 0x7EEF, 0x7F3D, 0x7F98, 0x8004, 0x8081, 0x82E6, 0x8507, 
    0x0304, 0x0075, 0xFDE2, 0xFB37, 0xF861, 0xF517, 0xF153, 0xED69, 0xE9A9, 0xE666, 0xE3F4, 0xE2A3, 0xE492, 0xE9A9, 
    0xEEE9, 0xF153, 0x038A, 0x0314, 0x0294, 0x01F6, 0x0127, 0x0012, 0xFEA5, 0xFCCC, 0xF888, 0xF285, 0xEEB0, 0xEE0B, 
    0xEE95, 0xEFB5, 0xF0D2, 0xF153, 0xFBDB, 0xFA9F, 0xFA21, 0xFB1D, 0xFCAD, 0xFE48, 0xFF60, 0xFF6B, 0xFC87, 0xF7B7, 
    0xF4C7, 0xF4CC, 0xF5EA, 0xF77E, 0xF8E6, 0xF983, 0x13A6, 0x1121, 0x1000, 0x10DF, 0x1258, 0x1465, 0x16FE, 0x1A32, 
    0x1E00, 0x2247, 0x26E4, 0x2CB4, 0x33B7, 0x3A7F, 0x3F9D, 0x41A3, 0xBDA7, 0xBD95, 0xBD0B, 0xBC62, 0xBBF4, 0xBC1B, 
    0xBD2F, 0xC5B8, 0xCAEB, 0xBA48, 0xA91C, 0xA44D, 0xA1A2, 0xA07E, 0xA043, 0xA052, 0xC64B, 0xC73A, 0xC7ED, 0xC8AA, 
    0xC9B2, 0xCB4A, 0xCDB6, 0xD0E2, 0xDDA9, 0x068F, 0x2638, 0x23A9, 0x184B, 0x0980, 0xFCAC, 0xF733, 0x3084, 0x2842, 
    0x1FC0, 0x1738, 0x0EE6, 0x0704, 0xFFCD, 0xFB46, 0xFA13, 0xF8F6, 0xFF2D, 0x13E5, 0x2DEC, 0x429A, 0x48A0, 0x476C, 
    0x3EFD, 0x3701, 0x2E61, 0x259A, 0x1D28, 0x1588, 0x0F36, 0x11AB, 0x12F7, 0xFE70, 0xEFF0, 0xFDCB, 0x1552, 0x2830, 
    0x2C6B, 0x2AC4, 0xAFA9, 0xB1FD, 0xB4A4, 0xB85E, 0xBCFA, 0xC1A5, 0xC58D, 0xC7DF, 0xC7CA, 0xB93D, 0xA82E, 0xA27A, 
    0x9E63, 0x9BB5, 0x9A3F, 0x99CD, 0xDA1D, 0xDA37, 0xD961, 0xD830, 0xD73C, 0xD71A, 0xD861, 0xDBA7, 0xE183, 0x02BC, 
    0x239B, 0x25D4, 0x2183, 0x1A20, 0x1326, 0x100D, 0x259D, 0x1D25, 0x143F, 0x0B57, 0x02DE, 0xFB41, 0xF4F0, 0xF4EF, 
    0xF968, 0xFC02, 0x02AB, 0x1182, 0x2431, 0x369D, 0x44AD, 0x4A47, 0x4DEE, 0x4E09, 0x497D, 0x3CBC, 0x2CF0, 0x1D42, 
    0x10DB, 0x1009, 0x0F3A, 0xF7A6, 0xEA14, 0x02A0, 0x2802, 0x42D7, 0x3C47, 0x2ED7, 0xAD07, 0xAC40, 0xABEF, 0xAB57, 
    0xA9BA, 0xA65A, 0x9F34, 0x94F9, 0x8AF8, 0x8483, 0x82A8, 0x8393, 0x8643, 0x89B1, 0x9260, 0x9953, 0x4D4B, 0x4CFA, 
    0x4CDE, 0x4C92, 0x4BB2, 0x49D9, 0x45C3, 0x3FDD, 0x3A44, 0x3717, 0x3783, 0x3A32, 0x3D83, 0x3FD3, 0x3F97, 0x3EB8, 
    0xC437, 0xC4D1, 0xC593, 0xC648, 0xC6BC, 0xC6BA, 0xC55F, 0xC2FB, 0xC125, 0xC174, 0xC4B2, 0xC9E8, 0xD009, 0xD607, 
    0xDDE0, 0xE2EE, 0x4325, 0x41FA, 0x40E0, 0x3FAC, 0x3E36, 0x3C53, 0x3A4D, 0x3809, 0x34C5, 0x2FBE, 0x27C4, 0x1D93, 
    0x1349, 0x0B08, 0x0829, 0x088E, 0xAD4F, 0xACBA, 0xAC8B, 0xAC20, 0xAAD7, 0xA80C, 0xA26A, 0x9A67, 0x9214, 0x8B80, 
    0x868F, 0x8261, 0x7FDC, 0x7FE7, 0x8AFC, 0x9540, 0x4C3A, 0x4C14, 0x4C22, 0x4C07, 0x4B6A, 0x49ED, 0x46C9, 0x4240, 
    0x3D8B, 0x39E0, 0x37AC, 0x3641, 0x352F, 0x3404, 0x3285, 0x31B5, 0xCAA7, 0xCB1E, 0xCB84, 0xCC01, 0xCCC1, 0xCDED, 
    0xD026, 0xD339, 0xD611, 0xD799, 0xD727, 0xD56D, 0xD368, 0xD212, 0xD2AA, 0xD397, 0xFDB1, 0xFDBA, 0xFDC5, 0xFDD3, 
    0xFDE0, 0xFDEB, 0xFDF3, 0xFDF7, 0xFDF3, 0xFDE7, 0xFDC1, 0xFD7B, 0xFD28, 0xFCDC, 0xFC88, 0xFC55, 0x02F4, 0x02F7, 
    0x0300, 0x030B, 0x0315, 0x031D, 0x031F, 0x0319, 0x0307, 0x02E7, 0x0298, 0x0213, 0x0179, 0x00EB, 0x0057, 0x0000, 
    0x418F, 0x41EC, 0x4293, 0x435E, 0x4425, 0x44C4, 0x4513, 0x44EE, 0x442E, 0x42AD, 0x3EB3, 0x37D1, 0x2FCF, 0x2876, 
    0x20AE, 0x1C1D, 
};

JointIndex sPhantomHorseLandAnimJointIndices[] = {
    { 0x0000, 0x0014, 0x0001 },
    { 0x0004, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0024 },
    { 0x0000, 0x0000, 0x0034 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0044 },
    { 0x0000, 0x0000, 0x0054 },
    { 0x0000, 0x0000, 0x0064 },
    { 0x0000, 0x0000, 0x0074 },
    { 0x0000, 0x0000, 0x0084 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x0094 },
    { 0x0000, 0x0000, 0x00A4 },
    { 0x0000, 0x0000, 0x00B4 },
    { 0x0000, 0x0000, 0x00C4 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x00D4 },
    { 0x0000, 0x0000, 0x00E4 },
    { 0x0000, 0x0000, 0x00F4 },
    { 0x0000, 0x0000, 0x0104 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0114 },
    { 0x0000, 0x0000, 0x0124 },
    { 0x0000, 0x0000, 0x0134 },
    { 0x0000, 0x0000, 0x0144 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0154 },
    { 0x0000, 0x0000, 0x0164 },
    { 0x0000, 0x0000, 0x0174 },
    { 0x0184, 0x0194, 0x01A4 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gPhantomHorseLandAnim = { 
    { 16 }, sPhantomHorseLandAnimFrameData,
    sPhantomHorseLandAnimJointIndices, 4
};

Gfx gPhantomHorseSkelLimbsLimb_00ACC4SkinLimbDL_00CB30[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fhgTex_00D060, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(0x08000000, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 7, 1, 0),
    gsSP2Triangles(9, 10, 11, 0, 7, 12, 1, 0),
    gsSP2Triangles(12, 13, 2, 0, 14, 0, 15, 0),
    gsSP2Triangles(12, 16, 13, 0, 13, 16, 17, 0),
    gsSP2Triangles(13, 17, 18, 0, 13, 18, 19, 0),
    gsSP2Triangles(19, 18, 20, 0, 11, 21, 9, 0),
    gsSP2Triangles(22, 23, 5, 0, 24, 4, 3, 0),
    gsSP2Triangles(23, 25, 5, 0, 26, 27, 21, 0),
    gsSP2Triangles(25, 3, 5, 0, 28, 29, 26, 0),
    gsSP2Triangles(25, 28, 3, 0, 3, 28, 26, 0),
    gsSP2Triangles(27, 25, 23, 0, 24, 26, 21, 0),
    gsSP2Triangles(27, 23, 21, 0, 21, 23, 9, 0),
    gsSP2Triangles(13, 19, 2, 0, 9, 23, 22, 0),
    gsSP2Triangles(9, 22, 30, 0, 31, 4, 24, 0),
    gsSP2Triangles(8, 14, 17, 0, 26, 29, 27, 0),
    gsSP2Triangles(6, 8, 16, 0, 16, 8, 17, 0),
    gsSP2Triangles(20, 18, 10, 0, 1, 12, 2, 0),
    gsSP2Triangles(3, 26, 24, 0, 11, 10, 18, 0),
    gsSP2Triangles(10, 9, 30, 0, 14, 1, 0, 0),
    gsSP2Triangles(14, 8, 1, 0, 18, 17, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fhgTex_00D040, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 4, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 2, 2, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(0x08000200, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 1, 0, 10, 9, 5, 0),
    gsSP2Triangles(5, 7, 13, 0, 6, 8, 7, 0),
    gsSP2Triangles(9, 6, 5, 0, 0, 2, 4, 0),
    gsSP2Triangles(3, 2, 12, 0, 1, 0, 11, 0),
    gsSP2Triangles(11, 3, 12, 0, 12, 2, 1, 0),
    gsSP2Triangles(8, 6, 9, 0, 14, 15, 16, 0),
    gsSP2Triangles(16, 15, 17, 0, 18, 14, 16, 0),
    gsSP2Triangles(15, 14, 19, 0, 5, 13, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fhgTex_004CA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(0x08000340, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 5, 2, 0, 5, 0, 2, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 11, 8, 0),
    gsSP2Triangles(12, 13, 8, 0, 8, 11, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fhgTex_003DA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(0x08000420, 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(3, 4, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 5, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 10, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 16, 11, 0),
    gsSP2Triangles(16, 20, 10, 0, 11, 21, 9, 0),
    gsSP2Triangles(21, 16, 15, 0, 10, 20, 11, 0),
    gsSP1Triangle(14, 13, 22, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fhgTex_003720, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(0x08000590, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 10, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(10, 15, 11, 0, 0, 23, 1, 0),
    gsSP2Triangles(24, 22, 21, 0, 25, 13, 12, 0),
    gsSP2Triangles(26, 15, 16, 0, 27, 28, 29, 0),
    gsSP1Triangle(28, 27, 30, 0),
    gsSPVertex(0x08000780, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 5, 11, 0, 4, 11, 5, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 14, 13, 0, 17, 18, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fhgTex_003520, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 119, 119, 119, 255),
    gsSPVertex(0x080008C0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(0x080008F0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 2, 13, 14, 0),
    gsSP2Triangles(5, 15, 3, 0, 0, 2, 14, 0),
    gsSP2Triangles(6, 16, 5, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 23, 26, 0),
    gsSP2Triangles(28, 27, 26, 0, 29, 28, 26, 0),
    gsSPVertex(0x08000AD0, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 4, 1, 0, 0, 5, 3, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 8, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fhgTex_003320, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 119, 119, 119, 255),
    gsSPVertex(0x08000B70, 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 4, 3, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(0x08000BE0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 7, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 2, 19, 0, 0),
    gsSP2Triangles(3, 20, 4, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(0x08000DC0, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP1Triangle(12, 13, 14, 0),
    gsSPEndDisplayList(),
};

u64 object_fhgTex_00D040[] = {
#include "assets/objects/object_fhg/object_fhgTex_00D040.rgba16.inc.c"
};

u64 object_fhgTex_00D060[] = {
#include "assets/objects/object_fhg/object_fhgTex_00D060.rgba16.inc.c"
};

s16 sPhantomHorseRearingAnimFrameData[] = {
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

JointIndex sPhantomHorseRearingAnimJointIndices[] = {
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

AnimationHeader gPhantomHorseRearingAnim = { 
    { 33 }, sPhantomHorseRearingAnimFrameData,
    sPhantomHorseRearingAnimJointIndices, 3
};

u8 object_fhg_possiblePadding_00DDC8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sPhantomHorseIdleAnimFrameData[] = {
    0x0000, 0x15B8, 0xF853, 0x4000, 0x8507, 0x8C17, 0x0BD1, 0xD20E, 0xD233, 0xD29B, 0xD33F, 0xD414, 0xD512, 0xD62F, 
    0xD763, 0xD8A4, 0xD9E9, 0xDB29, 0xDC5B, 0xDD76, 0xDEB8, 0xE04D, 0xE215, 0xE3ED, 0xE5B6, 0xE74D, 0xE891, 0xE960, 
    0xE99A, 0xE91C, 0xE63A, 0xE087, 0xD9C4, 0xD3B3, 0xD015, 0xCF8F, 0xD0F6, 0xD352, 0xD5AC, 0xD70D, 0xD792, 0xD7FD, 
    0xD84D, 0xD882, 0xD89C, 0xD899, 0xD879, 0xD83B, 0xD7E0, 0xD62E, 0xD378, 0xD20E, 0xEF9D, 0xEF85, 0xEF40, 0xEED2, 
    0xEE3E, 0xED89, 0xECB7, 0xEBCB, 0xEACA, 0xE9B7, 0xE897, 0xE76D, 0xE63E, 0xE495, 0xE22C, 0xDF4A, 0xDC37, 0xD93A, 
    0xD69C, 0xD4A4, 0xD399, 0xD3C3, 0xD56B, 0xDC80, 0xE9D8, 0xF910, 0x05C6, 0x0B98, 0x07C2, 0xFD30, 0xF008, 0xE46E, 
    0xDE88, 0xDDD6, 0xDED5, 0xE123, 0xE45B, 0xE81D, 0xEC06, 0xEFB3, 0xF2C1, 0xF4CF, 0xF418, 0xF147, 0xEF9D, 0xEEE2, 
    0xEF08, 0xEF69, 0xEFE9, 0xF06F, 0xF0DE, 0xF11D, 0xF111, 0xF0C9, 0xF067, 0xEFF1, 0xEF6B, 0xEED7, 0xEE3B, 0xED9B, 
    0xECFA, 0xEC5C, 0xEBC6, 0xEB3B, 0xEABF, 0xEA57, 0xEA07, 0xE9D1, 0xE9E7, 0xEA5D, 0xEB12, 0xEBE6, 0xECB7, 0xED64, 
    0xEDCD, 0xEE04, 0xEE33, 0xEE5B, 0xEE7C, 0xEE97, 0xEEAD, 0xEEBF, 0xEECC, 0xEED5, 0xEEDB, 0xEEDF, 0xEEE1, 0xEEE2, 
    0xEEE2, 0xEEE2, 0x0000, 0x000D, 0x0033, 0x006D, 0x00B9, 0x0115, 0x017B, 0x01EB, 0x0260, 0x02D7, 0x034D, 0x03BF, 
    0x0429, 0x048A, 0x04DD, 0x051F, 0x0550, 0x0570, 0x0582, 0x0585, 0x057C, 0x0567, 0x0548, 0x051F, 0x04EE, 0x04B4, 
    0x0473, 0x042C, 0x03E0, 0x0391, 0x033F, 0x02EB, 0x0296, 0x0242, 0x01F0, 0x01A0, 0x0155, 0x010E, 0x00CD, 0x0093, 
    0x0061, 0x0038, 0x001A, 0x0007, 0x0000, 0x0000, 0xFFEF, 0xFFC0, 0xFF75, 0xFF14, 0xFEA0, 0xFE1D, 0xFD90, 0xFCFB, 
    0xFC64, 0xFBCE, 0xFB3D, 0xFAB5, 0xFA3A, 0xF9D1, 0xF97C, 0xF93F, 0xF915, 0xF8FF, 0xF8FA, 0xF906, 0xF921, 0xF948, 
    0xF97C, 0xF9BC, 0xFA05, 0xFA58, 0xFAB2, 0xFB12, 0xFB77, 0xFBE0, 0xFC4A, 0xFCB6, 0xFD20, 0xFD89, 0xFDEE, 0xFE4F, 
    0xFEA9, 0xFEFC, 0xFF46, 0xFF85, 0xFFB9, 0xFFDF, 0xFFF8, 0x0000, 0xE3D2, 0xE3F2, 0xE44D, 0xE4DC, 0xE597, 0xE677, 
    0xE772, 0xE883, 0xE9A1, 0xEAC4, 0xEBE5, 0xECFC, 0xEE01, 0xEEED, 0xEFB8, 0xF05B, 0xF0D2, 0xF121, 0xF14C, 0xF155, 
    0xF13E, 0xF10B, 0xF0BF, 0xF05B, 0xEFE1, 0xEF54, 0xEEB5, 0xEE08, 0xED4E, 0xEC8C, 0xEBC2, 0xEAF5, 0xEA26, 0xE959, 
    0xE890, 0xE7CD, 0xE713, 0xE665, 0xE5C6, 0xE538, 0xE4BE, 0xE45B, 0xE410, 0xE3E2, 0xE3D2, 0x0000, 0xFFE6, 0xFF9D, 
    0xFF2B, 0xFE96, 0xFDE4, 0xFD1B, 0xFC41, 0xFB5D, 0xFA75, 0xF98E, 0xF8B0, 0xF7DF, 0xF723, 0xF681, 0xF5FF, 0xF5A0, 
    0xF561, 0xF53E, 0xF537, 0xF549, 0xF572, 0xF5AF, 0xF5FF, 0xF660, 0xF6D1, 0xF750, 0xF7DA, 0xF86E, 0xF909, 0xF9AA, 
    0xFA4E, 0xFAF3, 0xFB96, 0xFC37, 0xFCD3, 0xFD67, 0xFDF1, 0xFE70, 0xFEE2, 0xFF43, 0xFF93, 0xFFCE, 0xFFF3, 0x0000, 
    0x0000, 0xFFEB, 0xFFB0, 0xFF53, 0xFEDA, 0xFE49, 0xFDA6, 0xFCF6, 0xFC3D, 0xFB80, 0xFAC5, 0xFA10, 0xF967, 0xF8CE, 
    0xF84A, 0xF7E1, 0xF794, 0xF760, 0xF745, 0xF73F, 0xF74D, 0xF76F, 0xF7A0, 0xF7E1, 0xF830, 0xF88B, 0xF8F2, 0xF963, 
    0xF9DB, 0xFA59, 0xFADB, 0xFB60, 0xFBE6, 0xFC6B, 0xFCEE, 0xFD6C, 0xFDE4, 0xFE55, 0xFEBC, 0xFF18, 0xFF67, 0xFFA7, 
    0xFFD7, 0xFFF6, 0x0000, 0xF15D, 0xF182, 0xF1EB, 0xF290, 0xF367, 0xF469, 0xF58B, 0xF6C5, 0xF80E, 0xF95D, 0xFAAA, 
    0xFBEB, 0xFD19, 0xFE29, 0xFF12, 0xFFCE, 0x0057, 0x00B2, 0x00E4, 0x00EE, 0x00D4, 0x0099, 0x0041, 0xFFCE, 0xFF42, 
    0xFE9F, 0xFDE8, 0xFD20, 0xFC4B, 0xFB6A, 0xFA83, 0xF996, 0xF8A8, 0xF7BB, 0xF6D3, 0xF5F3, 0xF51D, 0xF455, 0xF39D, 
    0xF2FA, 0xF26D, 0xF1FB, 0xF1A5, 0xF16F, 0xF15D, 0x0000, 0xFFDE, 0xFF7C, 0xFEE2, 0xFE19, 0xFD28, 0xFC17, 0xFAEE, 
    0xF9B5, 0xF874, 0xF732, 0xF5F8, 0xF4CE, 0xF3BB, 0xF2C7, 0xF1FB, 0xF15A, 0xF0DF, 0xF082, 0xF03F, 0xF00D, 0xEFE7, 
    0xEFC6, 0xEFA4, 0xEF71, 0xEF2F, 0xEEEC, 0xEEB7, 0xEEA0, 0xEEB5, 0xEF07, 0xEFA4, 0xF094, 0xF1CC, 0xF33C, 0xF4D4, 
    0xF683, 0xF83C, 0xF9EC, 0xFB86, 0xFCF8, 0xFE34, 0xFF29, 0xFFC8, 0x0000, 0x0000, 0xFFB2, 0xFED6, 0xFD7D, 0xFBBB, 
    0xF9A2, 0xF745, 0xF4B6, 0xF209, 0xEF50, 0xEC9D, 0xEA03, 0xE795, 0xE566, 0xE388, 0xE20E, 0xE11B, 0xE0B1, 0xE0B2, 
    0xE103, 0xE186, 0xE21E, 0xE2AE, 0xE318, 0xE32E, 0xE2EC, 0xE27C, 0xE206, 0xE1B3, 0xE1A9, 0xE213, 0xE318, 0xE4C1, 
    0xE6E9, 0xE972, 0xEC43, 0xEF3D, 0xF247, 0xF544, 0xF817, 0xFAA6, 0xFCD3, 0xFE84, 0xFF9C, 0x0000, 0x4274, 0x42A1, 
    0x4320, 0x43E8, 0x44EF, 0x4629, 0x478E, 0x4912, 0x4AAB, 0x4C50, 0x4DF5, 0x4F92, 0x511A, 0x5285, 0x53C8, 0x54D9, 
    0x55C6, 0x56A1, 0x5761, 0x57FD, 0x586D, 0x58A9, 0x58A9, 0x5863, 0x582E, 0x584F, 0x58A2, 0x5904, 0x5951, 0x5968, 
    0x5924, 0x5863, 0x5721, 0x557E, 0x5391, 0x516F, 0x4F2C, 0x4CDE, 0x4A99, 0x4874, 0x4684, 0x44DD, 0x4394, 0x42BF, 
    0x4274, 0x9348, 0x92A3, 0x9191, 0x9024, 0x8EAB, 0x8D77, 0x8D0E, 0x8D49, 0x8DFA, 0x8F2A, 0x9093, 0x9227, 0x93C1, 
    0x9576, 0x973A, 0x9901, 0x9B0A, 0x9CDE, 0x9E97, 0xA059, 0xA1B9, 0xA2CE, 0xA386, 0xA33A, 0xA19F, 0x9F0B, 0x9C5B, 
    0x998D, 0x9787, 0x964A, 0x9604, 0x9582, 0x9513, 0x94B6, 0x946B, 0x942D, 0x93FE, 0x93DA, 0x93C0, 0x9348, 0x9348, 
    0x9348, 0x9348, 0x9348, 0x9348, 0x365A, 0x36B2, 0x37A9, 0x38F0, 0x3A43, 0x3B5D, 0x3BC7, 0x3BA5, 0x3B1D, 0x3A23, 
    0x38F6, 0x37A0, 0x362F, 0x34A7, 0x3313, 0x317D, 0x2FB1, 0x2E15, 0x2C93, 0x2B06, 0x29D1, 0x28DF, 0x283E, 0x287E, 
    0x29E1, 0x2C1D, 0x2E69, 0x30CC, 0x3284, 0x338E, 0x3425, 0x3499, 0x34FC, 0x354E, 0x3592, 0x35C8, 0x35F2, 0x3613, 
    0x362A, 0x365A, 0x365A, 0x365A, 0x365A, 0x365A, 0x365A, 0xF658, 0xF61A, 0xF5A2, 0xF509, 0xF465, 0xF3D1, 0xF34E, 
    0xF330, 0xF369, 0xF3A4, 0xF3FA, 0xF466, 0xF518, 0xF5D0, 0xF688, 0xF73E, 0xF7C4, 0xF84F, 0xF8C6, 0xF915, 0xF961, 
    0xF999, 0xF9BE, 0xF9B6, 0xF975, 0xF919, 0xF88B, 0xF814, 0xF787, 0xF73A, 0xF747, 0xF716, 0xF6EC, 0xF6C9, 0xF6AD, 
    0xF696, 0xF684, 0xF676, 0xF66C, 0xF658, 0xF658, 0xF658, 0xF658, 0xF658, 0xF658, 0xFFFC, 0x0206, 0x01FC, 0x01EE, 
    0x01DD, 0x01CD, 0x01B0, 0x01AD, 0x01C4, 0x01CE, 0x01DC, 0x01EF, 0x0206, 0x021E, 0x0234, 0x024A, 0x0245, 0x0248, 
    0x0246, 0x0234, 0x022A, 0x0220, 0x0218, 0x0217, 0x021E, 0x0230, 0x0231, 0x023D, 0x022B, 0x0221, 0xFE69, 0xFE51, 
    0xFE3D, 0xFE2D, 0xFE1F, 0xFE14, 0xFE0B, 0xFE05, 0xFE00, 0xFFFC, 0xFFFC, 0xFFFC, 0xFFFC, 0xFFFC, 0xFFFC, 0x9348, 
    0x9363, 0x93AD, 0x9424, 0x94C2, 0x9583, 0x9660, 0x9757, 0x9860, 0x9979, 0x9A9B, 0x9BC2, 0x9CE9, 0x9E0C, 0x9F24, 
    0xA02E, 0xA125, 0xA203, 0xA2C4, 0xA36C, 0xA3ED, 0xA424, 0xA3EE, 0xA329, 0xA185, 0x9F19, 0x9C5A, 0x99BC, 0x97B5, 
    0x96B9, 0x96FC, 0x9829, 0x99E3, 0x9BCE, 0x9D8E, 0x9EC6, 0x9F1C, 0x9E6D, 0x9D01, 0x9B19, 0x98F8, 0x96DD, 0x950B, 
    0x93C4, 0x9348, 0x365A, 0x34EF, 0x3131, 0x2BE8, 0x25D9, 0x1FCB, 0x1A83, 0x16C9, 0x1438, 0x11E6, 0x0FD0, 0x0DF2, 
    0x0C49, 0x0AD0, 0x0986, 0x0865, 0x076B, 0x0695, 0x05DE, 0x0557, 0x0554, 0x0639, 0x0867, 0x0C42, 0x130E, 0x1C9D, 
    0x2727, 0x30E7, 0x3814, 0x3AE9, 0x3874, 0x3202, 0x2926, 0x1F73, 0x167D, 0x0FD5, 0x0D10, 0x0E9B, 0x132C, 0x19C5, 
    0x2167, 0x2913, 0x2FC9, 0x348B, 0x365A, 0xF658, 0xF84E, 0xFD8D, 0x0521, 0x0E17, 0x177B, 0x205A, 0x27BF, 0x2CB8, 
    0x2FF7, 0x32CB, 0x3527, 0x36FD, 0x3841, 0x38E7, 0x38E0, 0x3821, 0x369D, 0x3446, 0x2DE9, 0x228B, 0x1574, 0x09EA, 
    0x0338, 0x0167, 0x01F8, 0x0461, 0x0815, 0x0C8C, 0x1139, 0x175D, 0x1FBD, 0x2917, 0x3228, 0x39AE, 0x3E66, 0x3F0F, 
    0x3A90, 0x31AE, 0x25F4, 0x18E9, 0x0C17, 0x0109, 0xF946, 0xF658, 0xFFFC, 0x0048, 0x0122, 0x027C, 0x0448, 0x0678, 
    0x08FD, 0x0BC9, 0x0ECD, 0x11FC, 0x1548, 0x18A2, 0x1BFB, 0x1F46, 0x2274, 0x2577, 0x2841, 0x2AC4, 0x2CF0, 0x2EB9, 
    0x3010, 0x2771, 0x181D, 0x09B2, 0xFECB, 0xFA87, 0xF98C, 0xFDB8, 0x10A3, 0x23AA, 0x298F, 0x2C6D, 0x2CCE, 0x2B3A, 
    0x2841, 0x2446, 0x1F8F, 0x1A61, 0x1502, 0x0FB7, 0x0AC7, 0x0677, 0x030C, 0x00CC, 0xFFFC, 0x9C2E, 0x9C1C, 0x9BEB, 
    0x9B9F, 0x9B3F, 0x9ACF, 0x9A55, 0x99D7, 0x9959, 0x98E1, 0x9875, 0x981B, 0x97C1, 0x975A, 0x96EC, 0x967C, 0x9611, 
    0x95B0, 0x9561, 0x9527, 0x950B, 0x9511, 0x9540, 0x966D, 0x98B1, 0x9AF8, 0x9C2E, 0x9C75, 0x9CAD, 0x9CD5, 0x9CF1, 
    0x9D00, 0x9D05, 0x9D00, 0x9CF5, 0x9CE3, 0x9CCD, 0x9CB4, 0x9C99, 0x9C7E, 0x9C65, 0x9C4F, 0x9C3D, 0x9C32, 0x9C2E, 
    0x3DEE, 0x3E00, 0x3E32, 0x3E80, 0x3EE6, 0x3F60, 0x3FE8, 0x407A, 0x4112, 0x41AC, 0x4242, 0x42D2, 0x4375, 0x4440, 
    0x4525, 0x4618, 0x470B, 0x47F1, 0x48BC, 0x495E, 0x49CB, 0x49F5, 0x49CE, 0x47DE, 0x43FA, 0x4007, 0x3DEE, 0x3D73, 
    0x3D14, 0x3CCE, 0x3CA0, 0x3C86, 0x3C7E, 0x3C85, 0x3C99, 0x3CB7, 0x3CDD, 0x3D08, 0x3D36, 0x3D64, 0x3D8F, 0x3DB5, 
    0x3DD3, 0x3DE7, 0x3DEE, 0xD8E3, 0xD8E1, 0xD8DD, 0xD8D4, 0xD8C7, 0xD8B4, 0xD89B, 0xD87B, 0xD854, 0xD824, 0xD7EC, 
    0xD7AA, 0xD750, 0xD6D7, 0xD648, 0xD5AB, 0xD50A, 0xD46C, 0xD3DB, 0xD35F, 0xD302, 0xD2CC, 0xD2C6, 0xD3B9, 0xD5BB, 
    0xD7CA, 0xD8E3, 0xD922, 0xD953, 0xD977, 0xD98F, 0xD99C, 0xD9A0, 0xD99D, 0xD992, 0xD983, 0xD96F, 0xD959, 0xD942, 
    0xD92A, 0xD914, 0xD900, 0xD8F1, 0xD8E7, 0xD8E3, 0x0BD1, 0x0BCA, 0x0BB7, 0x0B9E, 0x0B82, 0x0B67, 0x0B52, 0x0B47, 
    0x0B49, 0x0B5F, 0x0B8A, 0x0BD1, 0x0C43, 0x0CE7, 0x0DAF, 0x0E8F, 0x0F7B, 0x1065, 0x1141, 0x1202, 0x129C, 0x1302, 
    0x1326, 0x1211, 0x0FA6, 0x0D26, 0x0BD1, 0x0B85, 0x0B4A, 0x0B1F, 0x0B02, 0x0AF2, 0x0AED, 0x0AF2, 0x0AFE, 0x0B11, 
    0x0B28, 0x0B43, 0x0B5F, 0x0B7B, 0x0B96, 0x0BAD, 0x0BC0, 0x0BCC, 0x0BD1, 0x9D66, 0x9D5D, 0x9D42, 0x9D1A, 0x9CE9, 
    0x9CB2, 0x9C7A, 0x9C43, 0x9C11, 0x9BEA, 0x9BCF, 0x9BC5, 0x9BC6, 0x9BCA, 0x9BCF, 0x9BD6, 0x9BDF, 0x9BEA, 0x9BF6, 
    0x9C03, 0x9C11, 0x9C21, 0x9C31, 0x9C43, 0x9C55, 0x9C67, 0x9C7A, 0x9C8C, 0x9C9F, 0x9CB2, 0x9CC5, 0x9CD7, 0x9CE9, 
    0x9CFA, 0x9D0B, 0x9D1A, 0x9D29, 0x9D36, 0x9D42, 0x9D4D, 0x9D56, 0x9D5D, 0x9D62, 0x9D65, 0x9D66, 0x3D86, 0x3D81, 
    0x3D74, 0x3D60, 0x3D47, 0x3D2C, 0x3D0F, 0x3CF4, 0x3CDB, 0x3CC7, 0x3CBA, 0x3CB5, 0x3CB6, 0x3CB7, 0x3CBA, 0x3CBE, 
    0x3CC2, 0x3CC7, 0x3CCD, 0x3CD4, 0x3CDB, 0x3CE3, 0x3CEB, 0x3CF4, 0x3CFD, 0x3D06, 0x3D0F, 0x3D19, 0x3D22, 0x3D2C, 
    0x3D35, 0x3D3E, 0x3D47, 0x3D50, 0x3D58, 0x3D60, 0x3D67, 0x3D6E, 0x3D74, 0x3D79, 0x3D7D, 0x3D81, 0x3D84, 0x3D85, 
    0x3D86, 0xD87B, 0xD88E, 0xD8C3, 0xD913, 0xD975, 0xD9E3, 0xDA54, 0xDAC2, 0xDB25, 0xDB74, 0xDBAA, 0xDBBD, 0xDBBB, 
    0xDBB4, 0xDBAA, 0xDB9B, 0xDB89, 0xDB74, 0xDB5C, 0xDB42, 0xDB25, 0xDB06, 0xDAE5, 0xDAC2, 0xDA9F, 0xDA7A, 0xDA54, 
    0xDA2F, 0xDA09, 0xD9E3, 0xD9BE, 0xD999, 0xD975, 0xD953, 0xD932, 0xD913, 0xD8F6, 0xD8DB, 0xD8C3, 0xD8AE, 0xD89C, 
    0xD88E, 0xD883, 0xD87D, 0xD87B, 
};

JointIndex sPhantomHorseIdleAnimJointIndices[] = {
    { 0x0000, 0x0001, 0x0002 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x0007 },
    { 0x0000, 0x0000, 0x0034 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x0004 },
    { 0x0000, 0x0000, 0x0061 },
    { 0x008E, 0x00BB, 0x00E8 },
    { 0x0115, 0x0142, 0x016F },
    { 0x019C, 0x01C9, 0x01F6 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0005 },
    { 0x0000, 0x0000, 0x0223 },
    { 0x0000, 0x0000, 0x0250 },
    { 0x0000, 0x0000, 0x027D },
    { 0x0000, 0x0000, 0x02AA },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0005 },
    { 0x0000, 0x0000, 0x02D7 },
    { 0x0000, 0x0000, 0x0304 },
    { 0x0000, 0x0000, 0x0331 },
    { 0x0000, 0x0000, 0x035E },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x038B },
    { 0x0000, 0x0000, 0x03B8 },
    { 0x0000, 0x0000, 0x03E5 },
    { 0x0000, 0x0000, 0x0412 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x043F },
    { 0x0000, 0x0000, 0x046C },
    { 0x0000, 0x0000, 0x0499 },
    { 0x0000, 0x0000, 0x0006 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gPhantomHorseIdleAnim = { 
    { 45 }, sPhantomHorseIdleAnimFrameData,
    sPhantomHorseIdleAnimJointIndices, 7
};

u64 object_fhgTex_00E8B0[] = {
#include "assets/objects/object_fhg/object_fhgTex_00E8B0.i4.inc.c"
};

u64 object_fhgTex_00F0B0[] = {
#include "assets/objects/object_fhg/object_fhgTex_00F0B0.i4.inc.c"
};

Vtx object_fhgVtx_00F8B0[] = {
#include "assets/objects/object_fhg/object_fhgVtx_00F8B0.vtx.inc"
};

Gfx gPhantomWarpDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_fhgTex_00E8B0, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 6, 6, 14, 14),
    gsDPLoadMultiBlock_4b(object_fhgTex_00F0B0, 0x0100, 1, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR
                          | G_TX_WRAP, 6, 6, 13, 14),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, PRIMITIVE, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_fhgVtx_00F8B0, 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 3, 0, 0, 5, 3, 4, 0),
    gsSP2Triangles(3, 6, 1, 0, 5, 7, 3, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 9, 8, 0),
    gsSP2Triangles(12, 11, 8, 0, 13, 11, 12, 0),
    gsSP2Triangles(13, 14, 11, 0, 15, 13, 12, 0),
    gsSP2Triangles(16, 13, 15, 0, 17, 16, 15, 0),
    gsSP2Triangles(18, 16, 17, 0, 18, 19, 16, 0),
    gsSP2Triangles(20, 18, 17, 0, 21, 18, 20, 0),
    gsSP2Triangles(1, 21, 22, 0, 21, 23, 18, 0),
    gsSP2Triangles(1, 24, 21, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 22, 21, 20, 0),
    gsSPEndDisplayList(),
};

u8 object_fhg_possiblePadding_00FBB8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_fhgVtx_00FBC0[] = {
#include "assets/objects/object_fhg/object_fhgVtx_00FBC0.vtx.inc"
};

Gfx gPhantomUnkDL_FCA0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(0, 0, 0, 1, 0, 0, 0, PRIMITIVE, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(object_fhgVtx_00FBC0, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(2, 3, 4, 0, 2, 4, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gPhantomLightningBlastDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fhgTex_00FD98, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR
                         | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                       COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fhgVtx_00FBC0[5], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fhgVtx_00FBC0[10], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u64 object_fhgTex_00FD98[] = {
#include "assets/objects/object_fhg/object_fhgTex_00FD98.i8.inc.c"
};

u8 object_fhg_possiblePadding_010598[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_fhgVtx_0105A0[] = {
#include "assets/objects/object_fhg/object_fhgVtx_0105A0.vtx.inc"
};

Gfx gPhantomLightningDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_fhgTex_010660, G_IM_FMT_I, 32, 96, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR |
                            G_TX_CLAMP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                       COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_fhgVtx_0105A0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u64 object_fhgTex_010660[] = {
#include "assets/objects/object_fhg/object_fhgTex_010660.i4.inc.c"
};

Vtx object_fhgVtx_010C60[] = {
#include "assets/objects/object_fhg/object_fhgVtx_010C60.vtx.inc"
};

Gfx gPhantomUnkDL_10CA0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fhgTex_010D20, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                       COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_fhgVtx_010C60, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u64 object_fhgTex_010D20[] = {
#include "assets/objects/object_fhg/object_fhgTex_010D20.i8.inc.c"
};

u64 object_fhgTex_011120[] = {
#include "assets/objects/object_fhg/object_fhgTex_011120.i8.inc.c"
};

Vtx object_fhgVtx_012120[] = {
#include "assets/objects/object_fhg/object_fhgVtx_012120.vtx.inc"
};

Gfx gPhantomEnergyBallDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fhgTex_011120, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                       COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_fhgVtx_012120, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

