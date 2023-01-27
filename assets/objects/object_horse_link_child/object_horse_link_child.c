#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_horse_link_child.h"

Vtx object_horse_link_childVtx_000000[] = {
#include "assets/objects/object_horse_link_child/object_horse_link_childVtx_000000.vtx.inc"
};

Gfx gChildEponaSkelLimbsLimb_007858DL_000C70[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR |
                         G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gChildEponaEyeTLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_horse_link_childVtx_000000, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 3, 2, 7, 0),
    gsSP2Triangles(8, 5, 4, 0, 9, 4, 10, 0),
    gsSP2Triangles(4, 9, 8, 0, 2, 11, 12, 0),
    gsSP2Triangles(1, 11, 2, 0, 4, 6, 13, 0),
    gsSP2Triangles(12, 7, 2, 0, 13, 10, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_horse_link_childTex_002788, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR |
                         G_TX_CLAMP, G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_horse_link_childVtx_000000[14], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 6, 7, 0, 6, 4, 8, 0),
    gsSP2Triangles(7, 9, 2, 0, 10, 2, 1, 0),
    gsSP2Triangles(4, 6, 5, 0, 5, 6, 2, 0),
    gsSP2Triangles(9, 7, 11, 0, 4, 3, 12, 0),
    gsSP2Triangles(2, 9, 0, 0, 5, 13, 3, 0),
    gsSP2Triangles(1, 0, 14, 0, 12, 3, 14, 0),
    gsSP2Triangles(6, 15, 7, 0, 13, 1, 14, 0),
    gsSP2Triangles(5, 2, 10, 0, 10, 1, 13, 0),
    gsSP2Triangles(14, 3, 13, 0, 5, 10, 13, 0),
    gsSP2Triangles(14, 0, 12, 0, 0, 9, 12, 0),
    gsSP1Triangle(12, 9, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_link_childTex_002588, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 32, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_CLAMP, 3, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_horse_link_childVtx_000000[30], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 1, 6, 0, 5, 4, 0, 0),
    gsSP2Triangles(7, 8, 9, 0, 8, 10, 9, 0),
    gsSP2Triangles(9, 10, 0, 0, 10, 1, 0, 0),
    gsSP1Triangle(9, 0, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_link_childTex_002568, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 4, 0, G_TX_MIRROR |
                         G_TX_CLAMP, G_TX_MIRROR | G_TX_CLAMP, 2, 2, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_horse_link_childVtx_000000[41], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 4, 3, 2, 0),
    gsSP2Triangles(6, 8, 7, 0, 8, 5, 7, 0),
    gsSP2Triangles(3, 0, 2, 0, 9, 6, 5, 0),
    gsSP1Triangle(10, 11, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_link_childTex_002368, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR |
                         G_TX_CLAMP, G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_horse_link_childVtx_000000[54], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 1, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 0, 6, 0, 4, 5, 8, 0),
    gsSP2Triangles(5, 7, 8, 0, 8, 7, 6, 0),
    gsSP2Triangles(8, 6, 9, 0, 4, 8, 9, 0),
    gsSP2Triangles(6, 0, 9, 0, 4, 9, 3, 0),
    gsSP2Triangles(0, 3, 9, 0, 4, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_link_childTex_002168, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_horse_link_childVtx_000000[64], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 6, 2, 0, 7, 0, 2, 0),
    gsSP2Triangles(5, 8, 6, 0, 9, 8, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 3, 7, 0),
    gsSP2Triangles(14, 7, 2, 0, 6, 14, 2, 0),
    gsSP2Triangles(5, 10, 8, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 12, 11, 0),
    gsSP2Triangles(7, 3, 0, 0, 3, 20, 4, 0),
    gsSP2Triangles(3, 21, 20, 0, 8, 9, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(26, 27, 23, 0, 28, 23, 27, 0),
    gsSP2Triangles(6, 8, 14, 0, 11, 29, 19, 0),
    gsSP2Triangles(18, 29, 15, 0, 30, 5, 2, 0),
    gsSP1Triangle(24, 23, 28, 0),
    gsSPEndDisplayList(),
};

Gfx gChildEponaSkelLimbsLimb_0079D8DL_001028[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_horse_link_childTex_001F68, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_horse_link_childVtx_000000[95], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 6, 3, 0, 5, 7, 6, 0),
    gsSP2Triangles(0, 8, 1, 0, 2, 1, 3, 0),
    gsSP2Triangles(6, 9, 4, 0, 6, 7, 9, 0),
    gsSP1Triangle(3, 6, 4, 0),
    gsSPEndDisplayList(),
};

Gfx gChildEponaSkelLimbsLimb_0079C8DL_0010D8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_horse_link_childTex_001F68, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_horse_link_childVtx_000000[105], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 5, 4, 0, 1, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 7, 2, 1, 0),
    gsSP2Triangles(0, 6, 1, 0, 9, 3, 5, 0),
    gsSP2Triangles(2, 10, 0, 0, 0, 10, 8, 0),
    gsSP1Triangle(8, 5, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_link_childTex_001F28, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 8, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_CLAMP, 2, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_horse_link_childVtx_000000[116], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP1Triangle(4, 0, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gChildEponaSkelLimbsLimb_0078D8DL_0011E8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_horse_link_childTex_001F68, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_horse_link_childVtx_000000[121], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 5, 4, 0, 6, 7, 5, 0),
    gsSP2Triangles(8, 3, 1, 0, 8, 4, 3, 0),
    gsSP2Triangles(0, 8, 1, 0, 5, 9, 3, 0),
    gsSP1Triangle(9, 5, 7, 0),
    gsSPEndDisplayList(),
};

Gfx gChildEponaSkelLimbsLimb_0078C8DL_001298[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_horse_link_childTex_001F68, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_horse_link_childVtx_000000[131], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 2, 5, 0, 1, 7, 2, 0),
    gsSP2Triangles(4, 8, 6, 0, 6, 8, 0, 0),
    gsSP2Triangles(0, 2, 6, 0, 6, 5, 4, 0),
    gsSP2Triangles(7, 9, 2, 0, 2, 10, 5, 0),
    gsSP1Triangle(5, 10, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_link_childTex_001F28, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 8, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_CLAMP, 2, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_horse_link_childVtx_000000[142], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP1Triangle(4, 0, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gChildEponaSkelLimbsLimb_007948DL_0013A8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_horse_link_childTex_001F68, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_horse_link_childVtx_000000[147], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 0, 6, 0, 0, 7, 1, 0),
    gsSP2Triangles(6, 8, 4, 0, 2, 8, 6, 0),
    gsSP2Triangles(6, 0, 2, 0, 4, 3, 6, 0),
    gsSP2Triangles(0, 9, 7, 0, 3, 10, 0, 0),
    gsSP1Triangle(5, 10, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_link_childTex_001F28, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 8, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_CLAMP, 2, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_horse_link_childVtx_000000[158], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP1Triangle(0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gChildEponaSkelLimbsLimb_007958DL_0014B8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_horse_link_childTex_001F68, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_horse_link_childVtx_000000[163], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 3, 6, 0, 3, 7, 6, 0),
    gsSP2Triangles(1, 5, 8, 0, 5, 4, 8, 0),
    gsSP2Triangles(1, 8, 2, 0, 5, 9, 3, 0),
    gsSP1Triangle(7, 3, 9, 0),
    gsSPEndDisplayList(),
};

Gfx gChildEponaSkelLimbsLimb_007A48DL_001568[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_horse_link_childTex_001F68, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_horse_link_childVtx_000000[173], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 3, 2, 0, 6, 7, 1, 0),
    gsSP2Triangles(3, 8, 9, 0, 1, 0, 6, 0),
    gsSP2Triangles(1, 7, 2, 0, 3, 5, 8, 0),
    gsSP2Triangles(2, 10, 0, 0, 9, 10, 2, 0),
    gsSP1Triangle(2, 3, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_link_childTex_001F28, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 8, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_CLAMP, 2, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_horse_link_childVtx_000000[184], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP1Triangle(0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gChildEponaSkelLimbsLimb_007A58DL_001678[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_horse_link_childTex_001F68, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_horse_link_childVtx_000000[189], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(1, 8, 2, 0, 4, 1, 0, 0),
    gsSP2Triangles(3, 9, 5, 0, 9, 7, 5, 0),
    gsSP1Triangle(3, 5, 4, 0),
    gsSPEndDisplayList(),
};

u64 gChildEponaEyeTLUT[] = {
#include "assets/objects/object_horse_link_child/child_epona_eye_tlut.rgba16.inc.c"
};

u64 gChildEponaEyeHalfTex[] = {
#include "assets/objects/object_horse_link_child/child_epona_eye_half.ci8.inc.c"
};

u64 gChildEponaEyeCloseTex[] = {
#include "assets/objects/object_horse_link_child/child_epona_eye_close.ci8.inc.c"
};

u64 gChildEponaEyeOpenTex[] = {
#include "assets/objects/object_horse_link_child/child_epona_eye_open.ci8.inc.c"
};

u64 object_horse_link_childTex_001F28[] = {
#include "assets/objects/object_horse_link_child/object_horse_link_childTex_001F28.rgba16.inc.c"
};

u64 object_horse_link_childTex_001F68[] = {
#include "assets/objects/object_horse_link_child/object_horse_link_childTex_001F68.rgba16.inc.c"
};

u64 object_horse_link_childTex_002168[] = {
#include "assets/objects/object_horse_link_child/object_horse_link_childTex_002168.rgba16.inc.c"
};

u64 object_horse_link_childTex_002368[] = {
#include "assets/objects/object_horse_link_child/object_horse_link_childTex_002368.rgba16.inc.c"
};

u64 object_horse_link_childTex_002568[] = {
#include "assets/objects/object_horse_link_child/object_horse_link_childTex_002568.rgba16.inc.c"
};

u64 object_horse_link_childTex_002588[] = {
#include "assets/objects/object_horse_link_child/object_horse_link_childTex_002588.rgba16.inc.c"
};

u64 object_horse_link_childTex_002788[] = {
#include "assets/objects/object_horse_link_child/object_horse_link_childTex_002788.rgba16.inc.c"
};

u8 object_horse_link_child_possiblePadding_002988[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sChildEponaGallopingAnimFrameData[] = {
    0x0000, 0xF853, 0x4000, 0x8507, 0x8C17, 0x01A1, 0x01C6, 0x0225, 0x02A6, 0x0334, 0x03B6, 0x0416, 0x042A, 0x03EE, 
    0x038B, 0x0317, 0x029F, 0x022C, 0x01C9, 0x0177, 0x0132, 0x00FD, 0x00D9, 0x00CB, 0x00D8, 0x00FD, 0x012F, 0x0163, 
    0x018C, 0x1403, 0x1410, 0x1439, 0x1486, 0x1511, 0x15BC, 0x1637, 0x164E, 0x162B, 0x15EC, 0x159D, 0x155B, 0x1531, 
    0x1516, 0x1500, 0x14F6, 0x14F1, 0x14D9, 0x144E, 0x141F, 0x13FE, 0x144F, 0x1497, 0x1456, 0xEAE8, 0xEA95, 0xEA43, 
    0xEAE8, 0xED21, 0xF03B, 0xF337, 0xF518, 0xF59F, 0xF553, 0xF45B, 0xF2DE, 0xEEF6, 0xEAE8, 0xE9E6, 0xEAE8, 0xEE3B, 
    0xF276, 0xF518, 0xF5C3, 0xF5D1, 0xF550, 0xF44F, 0xF2DE, 0x0948, 0x06A1, 0x004B, 0xF8B8, 0xF258, 0xEF9D, 0xF19A, 
    0xF6B0, 0xFD3F, 0x03A8, 0x084B, 0x0AC2, 0x0B4E, 0x0948, 0x034F, 0xFABD, 0xF306, 0xEF9D, 0xF189, 0xF680, 0xFCF9, 
    0x036B, 0x084B, 0x09C5, 0xF153, 0xF101, 0xF02C, 0xEF08, 0xEDC9, 0xECA2, 0xEBC7, 0xEB53, 0xEB24, 0xEB0F, 0xEAED, 
    0xEAA2, 0xEA3C, 0xE9CB, 0xE95F, 0xE909, 0xE8D8, 0xE8DD, 0xE929, 0xEA0D, 0xEB97, 0xED6F, 0xEF3C, 0xF0A4, 0xEBF8, 
    0xECEE, 0xEF78, 0xF30F, 0xF72C, 0xFB49, 0xFEE0, 0x016A, 0x0260, 0x0221, 0x016F, 0x0059, 0xFEF1, 0xFD46, 0xFB68, 
    0xF969, 0xF758, 0xF546, 0xF343, 0xF15F, 0xEFAA, 0xEE36, 0xED11, 0xEC4D, 0xF983, 0xF948, 0xF8AF, 0xF7D6, 0xF6DD, 
    0xF5E4, 0xF50B, 0xF471, 0xF437, 0xF446, 0xF470, 0xF4B2, 0xF507, 0xF56C, 0xF5DC, 0xF655, 0xF6D2, 0xF750, 0xF7C9, 
    0xF83C, 0xF8A3, 0xF8FB, 0xF940, 0xF96F, 0x358B, 0x3482, 0x31C7, 0x2DE6, 0x296E, 0x24EC, 0x20ED, 0x1DFF, 0x1CB1, 
    0x1CD6, 0x1DCB, 0x1F68, 0x2185, 0x23FA, 0x269E, 0x2949, 0x2BD4, 0x2E15, 0x2FE4, 0x315E, 0x32B1, 0x33D2, 0x34B3, 
    0x354A, 0xA052, 0x9BA3, 0x968B, 0x98A1, 0x9D10, 0xA10F, 0xA606, 0xAE2C, 0xB449, 0xB256, 0xACF4, 0xA729, 0xA0B8, 
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

JointIndex sChildEponaGallopingAnimJointIndices[] = {
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
    { 0x0000, 0x0000, 0x0004 },
    { 0x0000, 0x0000, 0x00C5 },
    { 0x0000, 0x0000, 0x00DD },
    { 0x0000, 0x0000, 0x00F5 },
    { 0x0000, 0x0000, 0x010D },
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

AnimationHeader gChildEponaGallopingAnim = { 
    { 24 }, sChildEponaGallopingAnimFrameData,
    sChildEponaGallopingAnimJointIndices, 5
};

u8 object_horse_link_child_possiblePadding_002FA8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sChildEponaTrottingAnimFrameData[] = {
    0x0000, 0xF853, 0x4000, 0x8507, 0x8C17, 0x13F6, 0x142E, 0x1474, 0x1490, 0x14A8, 0x14BB, 0x14C6, 0x14C8, 0x1490, 
    0x1462, 0x1478, 0x148B, 0x147C, 0x1462, 0x1449, 0x143F, 0x1462, 0x148D, 0x149D, 0x14AE, 0x14BD, 0x14C8, 0x14CD, 
    0x14C3, 0x14A8, 0x1485, 0x1463, 0x1439, 0x140C, 0xDCA6, 0xDD64, 0xDF50, 0xE1F0, 0xE4CD, 0xE76D, 0xE959, 0xEA18, 
    0xE984, 0xE7FE, 0xE5D6, 0xE35F, 0xE0E7, 0xDEBF, 0xDD39, 0xDCA6, 0xDD64, 0xDF50, 0xE1F0, 0xE4CD, 0xE76D, 0xE959, 
    0xEA18, 0xE959, 0xE76D, 0xE4CD, 0xE1F0, 0xDF50, 0xDD64, 0xEF5E, 0xEBFD, 0xE872, 0xE55F, 0xE362, 0xE31A, 0xE4E0, 
    0xE832, 0xEC65, 0xF0D0, 0xF4C9, 0xF7A8, 0xF8C3, 0xF7D5, 0xF560, 0xF1E8, 0xEDEE, 0xE9F4, 0xE67C, 0xE408, 0xE31A, 
    0xE44D, 0xE765, 0xEBA0, 0xF03C, 0xF478, 0xF790, 0xF8C3, 0xF790, 0xEEE2, 0xEEBB, 0xEE5A, 0xEDDD, 0xED5F, 0xECFF, 
    0xECD8, 0xED0E, 0xED90, 0xEE2A, 0xEEAB, 0xEEE2, 0xEECB, 0xEE90, 0xEE3D, 0xEDDD, 0xED7D, 0xED2A, 0xECEE, 0xECD8, 
    0xECE7, 0xED0E, 0xED49, 0xED90, 0xEDDD, 0xEE2A, 0xEE71, 0xEEAB, 0xEED3, 0xEE01, 0xEE4D, 0xEF16, 0xF032, 0xF178, 
    0xF2BD, 0xF3D9, 0xF4A2, 0xF4EE, 0xF48C, 0xF38F, 0xF234, 0xF0BB, 0xEF61, 0xEE63, 0xEE01, 0xEE4D, 0xEF16, 0xF032, 
    0xF178, 0xF2BD, 0xF3D9, 0xF4A2, 0xF4EE, 0xF46B, 0xF323, 0xF178, 0xEFCD, 0xEE84, 0xF8B2, 0xF881, 0xF7FF, 0xF747, 
    0xF674, 0xF5A2, 0xF4EA, 0xF468, 0xF437, 0xF475, 0xF517, 0xF5F5, 0xF6E8, 0xF7C8, 0xF86D, 0xF8B2, 0xF88B, 0xF817, 
    0xF770, 0xF6B0, 0xF5EE, 0xF545, 0xF4CD, 0xF49F, 0xF4EC, 0xF5AE, 0xF6A9, 0xF7A4, 0xF865, 0x35DC, 0x35A2, 0x3508, 
    0x342F, 0x3336, 0x323D, 0x3164, 0x30CA, 0x3090, 0x30DB, 0x319D, 0x32A5, 0x33C6, 0x34CF, 0x3591, 0x35DC, 0x35A2, 
    0x3508, 0x342F, 0x3336, 0x323D, 0x3164, 0x30CA, 0x3090, 0x30F4, 0x31EF, 0x3336, 0x347C, 0x3577, 0xABBB, 0xABCB, 
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

JointIndex sChildEponaTrottingAnimJointIndices[] = {
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
    { 0x0000, 0x0000, 0x0004 },
    { 0x0000, 0x0000, 0x00D0 },
    { 0x0000, 0x0000, 0x00ED },
    { 0x0000, 0x0000, 0x010A },
    { 0x0000, 0x0000, 0x0127 },
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

AnimationHeader gChildEponaTrottingAnim = { 
    { 29 }, sChildEponaTrottingAnimFrameData,
    sChildEponaTrottingAnimJointIndices, 5
};

u8 object_horse_link_child_possiblePadding_00361C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 sChildEponaIdleAnimFrameData[] = {
    0x0000, 0x1400, 0xF853, 0x4000, 0x8507, 0xEEE2, 0x8C17, 0x9348, 0x0BD1, 0xD20E, 0xD227, 0xD270, 0xD2E3, 0xD37C, 
    0xD436, 0xD50D, 0xD5FA, 0xD6FB, 0xD809, 0xD920, 0xDA3B, 0xDB56, 0xDC6B, 0xDD76, 0xDEC3, 0xE07F, 0xE27C, 0xE488, 
    0xE674, 0xE810, 0xE92A, 0xE994, 0xE91C, 0xE637, 0xE095, 0xD9E5, 0xD3D5, 0xD015, 0xCFE7, 0xD238, 0xD536, 0xD70D, 
    0xD798, 0xD7F0, 0xD81D, 0xD829, 0xD81D, 0xD801, 0xD7E0, 0xD7BD, 0xD795, 0xD769, 0xD739, 0xD706, 0xD6D0, 0xD698, 
    0xD65D, 0xD620, 0xD5E2, 0xD5A3, 0xD563, 0xD522, 0xD4E2, 0xD4A2, 0xD463, 0xD425, 0xD3E9, 0xD3AE, 0xD376, 0xD340, 
    0xD30E, 0xD2DF, 0xD2B3, 0xD28C, 0xD26A, 0xD24C, 0xD234, 0xD221, 0xD214, 0xEF9D, 0xEF8E, 0xEF60, 0xEF17, 0xEEB3, 
    0xEE35, 0xED9F, 0xECF3, 0xEC31, 0xEB5C, 0xEA75, 0xE97D, 0xE875, 0xE760, 0xE63E, 0xE47C, 0xE1C9, 0xDE89, 0xDB21, 
    0xD7F4, 0xD567, 0xD3DE, 0xD3BE, 0xD56B, 0xDC9E, 0xE9F1, 0xF915, 0x05BC, 0x0B98, 0x057E, 0xF68A, 0xE6D9, 0xDE88, 
    0xDE4C, 0xE0CE, 0xE518, 0xEA33, 0xEF29, 0xF305, 0xF4CF, 0xF4A7, 0xF37D, 0xF196, 0xEF38, 0xECA8, 0xEA2A, 0xE805, 
    0xE67C, 0xE5D6, 0xE642, 0xE793, 0xE982, 0xEBC9, 0xEE22, 0xF046, 0xF1F0, 0xF2DA, 0xF330, 0xF356, 0xF352, 0xF32A, 
    0xF2E5, 0xF28A, 0xF21F, 0xF1AA, 0xF133, 0xF0C0, 0xF058, 0xF001, 0xEFC1, 0x0000, 0x000F, 0x003A, 0x007B, 0x00D0, 
    0x0134, 0x01A2, 0x0216, 0x028D, 0x0301, 0x036F, 0x03D3, 0x0428, 0x0469, 0x0494, 0x04A3, 0x049B, 0x0484, 0x045E, 
    0x042C, 0x03F0, 0x03A9, 0x035A, 0x0304, 0x02A9, 0x0249, 0x01E6, 0x0182, 0x011E, 0x00BC, 0x005C, 0x0000, 0xFFA0, 
    0xFF34, 0xFEBD, 0xFE3F, 0xFDBA, 0xFD31, 0xFCA6, 0xFC1A, 0xFB91, 0xFB0B, 0xFA8A, 0xFA12, 0xF9A3, 0xF93F, 0xF8E9, 
    0xF8A3, 0xF86F, 0xF84E, 0xF842, 0xF850, 0xF878, 0xF8B6, 0xF909, 0xF96D, 0xF9DF, 0xFA5E, 0xFAE5, 0xFB72, 0xFC03, 
    0xFC95, 0xFD24, 0xFDAE, 0xFE30, 0xFEA8, 0xFF12, 0xFF6C, 0xFFB4, 0xFFE5, 0xE3D2, 0xE3F8, 0xE467, 0xE518, 0xE603, 
    0xE721, 0xE86B, 0xE9DA, 0xEB66, 0xED09, 0xEEBC, 0xF077, 0xF233, 0xF3E9, 0xF592, 0xF727, 0xF8C4, 0xFA83, 0xFC60, 
    0xFE52, 0x0053, 0x025D, 0x0468, 0x066E, 0x0867, 0x0A4E, 0x0C1B, 0x0DC7, 0x0F4D, 0x10A4, 0x11C6, 0x12AC, 0x136E, 
    0x1423, 0x14CB, 0x1563, 0x15EB, 0x1660, 0x16C1, 0x170C, 0x173F, 0x1758, 0x1757, 0x1738, 0x16FB, 0x169E, 0x161F, 
    0x157C, 0x14B4, 0x13C5, 0x12AC, 0x1149, 0x0F80, 0x0D5E, 0x0AF1, 0x0844, 0x0564, 0x025E, 0xFF3E, 0xFC12, 0xF8E5, 
    0xF5C4, 0xF2BC, 0xEFD9, 0xED28, 0xEAB6, 0xE88F, 0xE6C0, 0xE554, 0xE45A, 0x0000, 0x001D, 0x006E, 0x00EA, 0x018B, 
    0x0248, 0x0319, 0x03F6, 0x04D7, 0x05B4, 0x0685, 0x0742, 0x07E3, 0x0860, 0x08B1, 0x08CE, 0x08C0, 0x0897, 0x0856, 
    0x07FE, 0x0792, 0x0714, 0x0686, 0x05E9, 0x0540, 0x048E, 0x03D3, 0x0313, 0x024E, 0x0188, 0x00C3, 0x0000, 0xFEB9, 
    0xFCD8, 0xFB07, 0xF9EE, 0xF96A, 0xF8EA, 0xF86D, 0xF7F7, 0xF787, 0xF71F, 0xF6C1, 0xF66E, 0xF627, 0xF5EE, 0xF5C5, 
    0xF5AB, 0xF5A4, 0xF5B0, 0xF5D0, 0xF60A, 0xF65D, 0xF6C7, 0xF746, 0xF7D5, 0xF871, 0xF919, 0xF9C8, 0xFA7C, 0xFB31, 
    0xFBE5, 0xFC95, 0xFD3D, 0xFDDA, 0xFE69, 0xFEE8, 0xFF52, 0xFFA6, 0xFFE0, 0xF15D, 0xF164, 0xF179, 0xF19A, 0xF1C7, 
    0xF1FE, 0xF23E, 0xF286, 0xF2D4, 0xF328, 0xF37F, 0xF3DA, 0xF436, 0xF493, 0xF4EF, 0xF549, 0xF5A4, 0xF605, 0xF66A, 
    0xF6D3, 0xF73F, 0xF7AE, 0xF81E, 0xF890, 0xF902, 0xF974, 0xF9E5, 0xFA54, 0xFAC1, 0xFB2C, 0xFB92, 0xFBF5, 0xFC48, 
    0xFC82, 0xFCA3, 0xFCAE, 0xFCB1, 0xFCB8, 0xFCC2, 0xFCCD, 0xFCD8, 0xFCE1, 0xFCE7, 0xFCE9, 0xFCE4, 0xFCD8, 0xFCC3, 
    0xFCA3, 0xFC77, 0xFC3D, 0xFBF5, 0xFB99, 0xFB28, 0xFAA6, 0xFA14, 0xF976, 0xF8CE, 0xF81E, 0xF76B, 0xF6B5, 0xF600, 
    0xF54E, 0xF4A2, 0xF3FF, 0xF368, 0xF2DE, 0xF266, 0xF200, 0xF1B1, 0xF17A, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0001, 0x0001, 0x0001, 0x0001, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0003, 0x0003, 
    0x0003, 0x0003, 0x0003, 0x0003, 0x0004, 0x0004, 0x0003, 0x0003, 0x0003, 0x0003, 0x0002, 0x0001, 0x0000, 0xFFF9, 
    0xFFEB, 0xFFDC, 0xFFD3, 0xFFD4, 0xFFE8, 0x001B, 0x006D, 0x00CC, 0x0126, 0x016A, 0x0186, 0x0173, 0x0140, 0x00F9, 
    0x00A9, 0x005D, 0x0020, 0x0000, 0xFFF3, 0xFFE9, 0xFFE1, 0xFFDB, 0xFFD7, 0xFFD5, 0xFFD4, 0xFFD5, 0xFFD7, 0xFFDA, 
    0xFFDE, 0xFFE3, 0xFFE7, 0xFFEC, 0xFFF1, 0xFFF5, 0xFFF9, 0xFFFC, 0xFFFF, 0x0000, 0x0015, 0x004F, 0x00A8, 0x011C, 
    0x01A4, 0x023A, 0x02D9, 0x037B, 0x041A, 0x04B0, 0x0538, 0x05AC, 0x0605, 0x063F, 0x0654, 0x0648, 0x0624, 0x05EB, 
    0x059F, 0x0544, 0x04DB, 0x0467, 0x03EA, 0x0368, 0x02E2, 0x025B, 0x01D5, 0x0154, 0x00D9, 0x0067, 0x0000, 0xFFA4, 
    0xFF4E, 0xFEF9, 0xFEA0, 0xFE3E, 0xFDD0, 0xFD42, 0xFC92, 0xFBD4, 0xFB1D, 0xFA81, 0xFA14, 0xF9D1, 0xF9A4, 0xF98B, 
    0xF986, 0xF994, 0xF9B3, 0xF9E3, 0xFA21, 0xFA69, 0xFAB9, 0xFB11, 0xFB6F, 0xFBD1, 0xFC37, 0xFC9E, 0xFD06, 0xFD6C, 
    0xFDD0, 0xFE30, 0xFE8B, 0xFEDF, 0xFF2C, 0xFF6E, 0xFFA6, 0xFFD2, 0xFFF0, 0x4274, 0x4278, 0x4283, 0x4296, 0x42AF, 
    0x42CE, 0x42F2, 0x431C, 0x434A, 0x437C, 0x43B2, 0x43EB, 0x4426, 0x4464, 0x44A3, 0x44E4, 0x4525, 0x4566, 0x45A9, 
    0x45EE, 0x4634, 0x467C, 0x46C8, 0x4716, 0x4769, 0x47BF, 0x481A, 0x487A, 0x48DF, 0x4949, 0x49BA, 0x4A32, 0x4B0E, 
    0x4C6D, 0x4DF3, 0x4F42, 0x4FFE, 0x4FC8, 0x4E1B, 0x4B24, 0x4790, 0x440C, 0x4144, 0x3FE6, 0x4023, 0x4175, 0x4374, 
    0x45BB, 0x47E1, 0x4980, 0x4A32, 0x4A3A, 0x4A24, 0x49F3, 0x49AA, 0x494C, 0x48DD, 0x485F, 0x47D7, 0x4746, 0x46B0, 
    0x4618, 0x4581, 0x44EF, 0x4465, 0x43E5, 0x4374, 0x4313, 0x42C6, 0x4291, 0x365A, 0x3652, 0x364B, 0x3643, 0x363C, 
    0x3635, 0x362D, 0x3626, 0x361E, 0x3617, 0x360F, 0x3608, 0x3600, 0x35F9, 0x35F2, 0x35F8, 0x35FE, 0x3604, 0x360A, 
    0x3610, 0x3616, 0x361C, 0x3623, 0x3629, 0x362F, 0x3635, 0x363B, 0x3641, 0x3647, 0x364E, 0x3654, 0x365A, 0x365A, 
    0x365A, 0x365A, 0x365A, 0x365A, 0x365A, 0x365B, 0x365B, 0x365B, 0x365B, 0x365B, 0x365B, 0x365B, 0x365B, 0x365B, 
    0x365C, 0x365C, 0x365C, 0x365C, 0x365C, 0x365C, 0x365C, 0x365C, 0x35CD, 0x34CD, 0x337E, 0x3203, 0x307F, 0x2F15, 
    0x2DE8, 0x2D19, 0x2CCD, 0x2D46, 0x2E83, 0x303A, 0x3225, 0x33FA, 0x3572, 0xF658, 0xF642, 0xF62B, 0xF615, 0xF5FF, 
    0xF5E8, 0xF5D2, 0xF5BC, 0xF5A5, 0xF58F, 0xF578, 0xF562, 0xF54C, 0xF535, 0xF51F, 0xF531, 0xF544, 0xF556, 0xF569, 
    0xF57B, 0xF58E, 0xF5A0, 0xF5B2, 0xF5C5, 0xF5D7, 0xF5EA, 0xF5FC, 0xF60E, 0xF621, 0xF633, 0xF646, 0xF658, 0xF658, 
    0xF659, 0xF659, 0xF659, 0xF65A, 0xF65A, 0xF65A, 0xF65B, 0xF65B, 0xF65B, 0xF65C, 0xF65C, 0xF65C, 0xF65C, 0xF65D, 
    0xF65D, 0xF65D, 0xF65E, 0xF65E, 0xF65E, 0xF65F, 0xF65F, 0xF65F, 0xF830, 0xFB6E, 0xFFAB, 0x0475, 0x095C, 0x0DF0, 
    0x11C0, 0x145B, 0x1553, 0x13C8, 0x0FC5, 0x0A33, 0x03FD, 0xFE0C, 0xF949, 0xFFFC, 0x001A, 0x0038, 0x0055, 0x0073, 
    0x0091, 0x00AF, 0x00CD, 0x00EA, 0x0108, 0x0126, 0x0144, 0x0162, 0x017F, 0x019D, 0x0185, 0x016C, 0x0154, 0x013B, 
    0x0123, 0x010A, 0x00F1, 0x00D9, 0x00C0, 0x00A8, 0x008F, 0x0077, 0x005E, 0x0046, 0x002D, 0x0015, 0xFFFC, 0xFFFC, 
    0xFFFB, 0xFFFB, 0xFFFA, 0xFFFA, 0xFFF9, 0xFFF9, 0xFFF9, 0xFFF8, 0xFFF8, 0xFFF7, 0xFFF7, 0xFFF6, 0xFFF6, 0xFFF6, 
    0xFFF5, 0xFFF5, 0xFFF4, 0xFFF4, 0xFFF3, 0xFFF3, 0xFFF3, 0xFFF2, 0xFF29, 0xFDC0, 0xFBEA, 0xF9D6, 0xF7B6, 0xF5BA, 
    0xF412, 0xF2F1, 0xF286, 0xF332, 0xF4F0, 0xF75C, 0xFA0F, 0xFCA4, 0xFEB5, 0x9348, 0x935D, 0x9399, 0x93F8, 0x9477, 
    0x9513, 0x95C8, 0x9694, 0x9772, 0x985F, 0x9959, 0x9A5B, 0x9B62, 0x9C6B, 0x9D73, 0x9E76, 0x9F70, 0xA05F, 0xA13F, 
    0xA20C, 0xA2C4, 0xA36F, 0xA3E8, 0xA3E9, 0xA329, 0xA170, 0x9F00, 0x9C48, 0x99B5, 0x97B6, 0x96B9, 0x9724, 0x98B3, 
    0x9AD7, 0x9CFF, 0x9E9C, 0x9F1C, 0x9EBE, 0x9E27, 0x9D5F, 0x9C6E, 0x9B5D, 0x9A35, 0x98FE, 0x97C1, 0x9687, 0x9558, 
    0x943D, 0x933E, 0x9265, 0x91B9, 0x916E, 0x9194, 0x9202, 0x928B, 0x9307, 0x9348, 0x9348, 0x9348, 0x9348, 0x9348, 
    0x9348, 0x9348, 0x9348, 0x9348, 0x9348, 0x9348, 0x9348, 0x9348, 0x9348, 0x365A, 0x35B0, 0x33DB, 0x3115, 0x2D9A, 
    0x29A4, 0x2570, 0x2138, 0x1D37, 0x19A9, 0x16C9, 0x1463, 0x121F, 0x0FFF, 0x0E05, 0x0C35, 0x0A8F, 0x0918, 0x07D1, 
    0x06BC, 0x05DE, 0x056D, 0x05FE, 0x0817, 0x0C42, 0x1371, 0x1D1B, 0x2791, 0x3125, 0x3827, 0x3AE9, 0x37B5, 0x2F8E, 
    0x24D5, 0x19EC, 0x1134, 0x0D10, 0x0C5D, 0x0C57, 0x0CE9, 0x0E01, 0x0F8C, 0x1175, 0x13A9, 0x1615, 0x18A5, 0x1B47, 
    0x1DE6, 0x206F, 0x22CF, 0x24F2, 0x2780, 0x2AD9, 0x2E7F, 0x31F5, 0x34BD, 0x365A, 0x365A, 0x365A, 0x365A, 0x365A, 
    0x365A, 0x365A, 0x365A, 0x365A, 0x365A, 0x365A, 0x365A, 0x365A, 0x365A, 0xF658, 0xF75A, 0xFA26, 0xFE67, 0x03C7, 
    0x09F1, 0x108E, 0x174A, 0x1DCF, 0x23C6, 0x28DB, 0x2CB8, 0x2FC7, 0x3297, 0x3506, 0x36F1, 0x3839, 0x38BA, 0x3853, 
    0x36E2, 0x3446, 0x2B74, 0x1BE7, 0x0C46, 0x0338, 0x0115, 0x0171, 0x03C3, 0x0784, 0x0C2E, 0x1139, 0x1800, 0x2130, 
    0x2B3C, 0x3498, 0x3BB8, 0x3F0F, 0x3FB6, 0x3FD2, 0x3F6E, 0x3E92, 0x3D49, 0x3B9C, 0x3994, 0x373B, 0x349A, 0x31BA, 
    0x2EA6, 0x2B66, 0x2805, 0x248B, 0x1F00, 0x1677, 0x0C88, 0x02CD, 0xFADF, 0xF658, 0xF658, 0xF658, 0xF658, 0xF658, 
    0xF658, 0xF658, 0xF658, 0xF658, 0xF658, 0xF658, 0xF658, 0xF658, 0xF658, 0xFFFC, 0x003A, 0x00EE, 0x020C, 0x038B, 
    0x055F, 0x077F, 0x09E0, 0x0C77, 0x0F3A, 0x121E, 0x1519, 0x1820, 0x1B2A, 0x1E2B, 0x2118, 0x23E8, 0x2690, 0x2906, 
    0x2B3E, 0x2D2F, 0x2ECE, 0x3010, 0x181D, 0x08A1, 0xFECB, 0xFA79, 0xF97C, 0xFDB8, 0x1041, 0x23AA, 0x29FB, 0x2BD2, 
    0x2B3A, 0x29FC, 0x288D, 0x26F3, 0x2533, 0x2355, 0x215E, 0x1F54, 0x1D3E, 0x1B21, 0x1905, 0x16EE, 0x14E4, 0x12EC, 
    0x110D, 0x0F4D, 0x0DB2, 0x0C41, 0x0B02, 0x09E6, 0x08D8, 0x07DA, 0x06EB, 0x060B, 0x053B, 0x0479, 0x03C7, 0x0324, 
    0x0290, 0x020B, 0x0195, 0x012E, 0x00D6, 0x008D, 0x0052, 0x0027, 0x000B, 0x9C2E, 0x9C24, 0x9C07, 0x9BDA, 0x9B9F, 
    0x9B57, 0x9B06, 0x9AAD, 0x9A4E, 0x99EC, 0x9989, 0x9926, 0x98C7, 0x986D, 0x981B, 0x97BC, 0x9744, 0x96BF, 0x9639, 
    0x95BF, 0x955D, 0x951F, 0x9511, 0x9540, 0x967C, 0x98CD, 0x9B13, 0x9C2E, 0x9C51, 0x9C71, 0x9C8E, 0x9CA8, 0x9CBF, 
    0x9CD3, 0x9CE5, 0x9CF3, 0x9D00, 0x9D0A, 0x9D11, 0x9D17, 0x9D1B, 0x9D1C, 0x9D1C, 0x9D1B, 0x9D17, 0x9D13, 0x9D0D, 
    0x9D06, 0x9CFD, 0x9CF4, 0x9CEA, 0x9CE0, 0x9CD5, 0x9CC9, 0x9CBD, 0x9CB1, 0x9CA4, 0x9C98, 0x9C8C, 0x9C80, 0x9C74, 
    0x9C69, 0x9C5E, 0x9C55, 0x9C4C, 0x9C44, 0x9C3D, 0x9C37, 0x9C32, 0x9C2F, 0x3DEE, 0x3DF8, 0x3E13, 0x3E3E, 0x3E79, 
    0x3EC1, 0x3F16, 0x3F75, 0x3FDF, 0x4050, 0x40C8, 0x4146, 0x41C8, 0x424C, 0x42D2, 0x4383, 0x4477, 0x4595, 0x46C1, 
    0x47E1, 0x48DA, 0x4991, 0x49EB, 0x49CE, 0x47C8, 0x43CD, 0x3FDB, 0x3DEE, 0x3DB1, 0x3D7A, 0x3D49, 0x3D1C, 0x3CF5, 
    0x3CD2, 0x3CB5, 0x3C9B, 0x3C86, 0x3C75, 0x3C68, 0x3C5E, 0x3C58, 0x3C55, 0x3C55, 0x3C58, 0x3C5D, 0x3C65, 0x3C70, 
    0x3C7C, 0x3C8A, 0x3C99, 0x3CAA, 0x3CBD, 0x3CD0, 0x3CE4, 0x3CF8, 0x3D0D, 0x3D23, 0x3D38, 0x3D4D, 0x3D61, 0x3D75, 
    0x3D88, 0x3D9A, 0x3DAB, 0x3DBB, 0x3DC9, 0x3DD5, 0x3DDE, 0x3DE6, 0x3DEB, 0xD8E3, 0xD8E3, 0xD8E2, 0xD8E1, 0xD8DD, 
    0xD8D7, 0xD8CD, 0xD8BF, 0xD8AC, 0xD894, 0xD875, 0xD84F, 0xD821, 0xD7EA, 0xD7AA, 0xD746, 0xD6B0, 0xD5F9, 0xD533, 
    0xD46E, 0xD3BC, 0xD32F, 0xD2D7, 0xD2C6, 0xD3C2, 0xD5D0, 0xD7E1, 0xD8E3, 0xD902, 0xD91E, 0xD938, 0xD94F, 0xD963, 
    0xD975, 0xD984, 0xD991, 0xD99C, 0xD9A5, 0xD9AC, 0xD9B1, 0xD9B4, 0xD9B5, 0xD9B5, 0xD9B4, 0xD9B1, 0xD9AD, 0xD9A8, 
    0xD9A1, 0xD99A, 0xD992, 0xD98A, 0xD980, 0xD976, 0xD96C, 0xD961, 0xD957, 0xD94C, 0xD941, 0xD936, 0xD92B, 0xD921, 
    0xD917, 0xD90E, 0xD905, 0xD8FD, 0xD8F6, 0xD8F0, 0xD8EB, 0xD8E7, 0xD8E4, 0x0BD1, 0x0BCB, 0x0BBD, 0x0BA7, 0x0B8D, 
    0x0B72, 0x0B57, 0x0B40, 0x0B2F, 0x0B26, 0x0B28, 0x0B38, 0x0B57, 0x0B89, 0x0BD1, 0x0C53, 0x0D22, 0x0E26, 0x0F46, 
    0x1069, 0x1177, 0x1256, 0x12EE, 0x1326, 0x1208, 0x0F8F, 0x0D0C, 0x0BD1, 0x0BAB, 0x0B89, 0x0B6B, 0x0B4F, 0x0B37, 
    0x0B22, 0x0B0F, 0x0AFF, 0x0AF2, 0x0AE8, 0x0AE0, 0x0ADA, 0x0AD6, 0x0AD4, 0x0AD4, 0x0AD6, 0x0AD9, 0x0ADE, 0x0AE4, 
    0x0AEC, 0x0AF5, 0x0AFE, 0x0B09, 0x0B14, 0x0B20, 0x0B2C, 0x0B39, 0x0B46, 0x0B53, 0x0B60, 0x0B6D, 0x0B7A, 0x0B86, 
    0x0B92, 0x0B9D, 0x0BA8, 0x0BB1, 0x0BBA, 0x0BC1, 0x0BC7, 0x0BCC, 0x0BCF, 0x9D66, 0x9D60, 0x9D4F, 0x9D35, 0x9D14, 
    0x9CED, 0x9CC2, 0x9C96, 0x9C69, 0x9C3F, 0x9C18, 0x9BF7, 0x9BDC, 0x9BCB, 0x9BC5, 0x9BC6, 0x9BC7, 0x9BC9, 0x9BCB, 
    0x9BCF, 0x9BD2, 0x9BD7, 0x9BDC, 0x9BE2, 0x9BE8, 0x9BEF, 0x9BF6, 0x9BFE, 0x9C06, 0x9C0E, 0x9C17, 0x9C20, 0x9C2A, 
    0x9C33, 0x9C3D, 0x9C48, 0x9C52, 0x9C5D, 0x9C68, 0x9C72, 0x9C7D, 0x9C89, 0x9C94, 0x9C9F, 0x9CAA, 0x9CB5, 0x9CC0, 
    0x9CCB, 0x9CD5, 0x9CE0, 0x9CEA, 0x9CF4, 0x9CFE, 0x9D08, 0x9D11, 0x9D1A, 0x9D23, 0x9D2B, 0x9D33, 0x9D3A, 0x9D41, 
    0x9D48, 0x9D4D, 0x9D53, 0x9D58, 0x9D5C, 0x9D5F, 0x9D62, 0x9D64, 0x9D66, 0x3D86, 0x3D83, 0x3D7A, 0x3D6D, 0x3D5D, 
    0x3D49, 0x3D34, 0x3D1E, 0x3D07, 0x3CF2, 0x3CDF, 0x3CCE, 0x3CC1, 0x3CB8, 0x3CB5, 0x3CB5, 0x3CB6, 0x3CB7, 0x3CB8, 
    0x3CBA, 0x3CBC, 0x3CBE, 0x3CC1, 0x3CC4, 0x3CC7, 0x3CCA, 0x3CCE, 0x3CD1, 0x3CD5, 0x3CDA, 0x3CDE, 0x3CE3, 0x3CE7, 
    0x3CEC, 0x3CF1, 0x3CF6, 0x3CFC, 0x3D01, 0x3D06, 0x3D0C, 0x3D11, 0x3D17, 0x3D1C, 0x3D22, 0x3D28, 0x3D2D, 0x3D32, 
    0x3D38, 0x3D3D, 0x3D43, 0x3D48, 0x3D4D, 0x3D52, 0x3D57, 0x3D5B, 0x3D60, 0x3D64, 0x3D68, 0x3D6C, 0x3D70, 0x3D73, 
    0x3D76, 0x3D79, 0x3D7C, 0x3D7E, 0x3D80, 0x3D82, 0x3D84, 0x3D85, 0x3D85, 0xD87B, 0xD887, 0xD8A9, 0xD8DD, 0xD920, 
    0xD96E, 0xD9C3, 0xDA1C, 0xDA75, 0xDACA, 0xDB18, 0xDB5A, 0xDB8F, 0xDBB1, 0xDBBD, 0xDBBC, 0xDBBA, 0xDBB6, 0xDBB1, 
    0xDBAA, 0xDBA3, 0xDB9A, 0xDB8F, 0xDB84, 0xDB78, 0xDB6A, 0xDB5C, 0xDB4C, 0xDB3C, 0xDB2B, 0xDB1A, 0xDB07, 0xDAF4, 
    0xDAE1, 0xDACD, 0xDAB8, 0xDAA3, 0xDA8E, 0xDA78, 0xDA63, 0xDA4D, 0xDA36, 0xDA20, 0xDA0A, 0xD9F4, 0xD9DE, 0xD9C8, 
    0xD9B2, 0xD99D, 0xD988, 0xD973, 0xD95F, 0xD94B, 0xD938, 0xD925, 0xD913, 0xD902, 0xD8F2, 0xD8E2, 0xD8D3, 0xD8C5, 
    0xD8B8, 0xD8AD, 0xD8A2, 0xD898, 0xD890, 0xD889, 0xD883, 0xD87F, 0xD87C, 0x0000, 
};

JointIndex sChildEponaIdleAnimJointIndices[] = {
    { 0x0000, 0x0001, 0x0002 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x0009 },
    { 0x0000, 0x0000, 0x004F },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x0004 },
    { 0x0000, 0x0000, 0x0005 },
    { 0x0000, 0x0095, 0x00DB },
    { 0x0000, 0x0121, 0x0167 },
    { 0x01AD, 0x01F3, 0x0239 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0006 },
    { 0x0000, 0x0000, 0x0007 },
    { 0x0000, 0x0000, 0x027F },
    { 0x0000, 0x0000, 0x02C5 },
    { 0x0000, 0x0000, 0x030B },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0006 },
    { 0x0000, 0x0000, 0x0351 },
    { 0x0000, 0x0000, 0x0397 },
    { 0x0000, 0x0000, 0x03DD },
    { 0x0000, 0x0000, 0x0423 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x0469 },
    { 0x0000, 0x0000, 0x04AF },
    { 0x0000, 0x0000, 0x04F5 },
    { 0x0000, 0x0000, 0x053B },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x0581 },
    { 0x0000, 0x0000, 0x05C7 },
    { 0x0000, 0x0000, 0x060D },
    { 0x0000, 0x0000, 0x0008 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gChildEponaIdleAnim = { 
    { 70 }, sChildEponaIdleAnimFrameData,
    sChildEponaIdleAnimJointIndices, 9
};

u8 object_horse_link_child_possiblePadding_0043F4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sChildEponaWhinnyAnimFrameData[] = {
    0x0000, 0x1400, 0xF853, 0x4000, 0xD113, 0xEF5E, 0x8507, 0x8C17, 0x004D, 0x006F, 0x0091, 0x00B1, 0x00CE, 0x00E4, 
    0x00F1, 0x00F3, 0x00E7, 0x00CC, 0x009E, 0x005A, 0x0000, 0xFBB8, 0xF8AB, 0xFD18, 0x03FF, 0x09F2, 0x0B85, 0xFCE7, 
    0xEEC5, 0xF1A0, 0xF91F, 0x014D, 0x062F, 0x06C4, 0x0563, 0x0318, 0x00F3, 0x0000, 0xFEB7, 0xFE29, 0xFD97, 0xFD0C, 
    0xFC93, 0xFC34, 0xFBFC, 0xFBF3, 0xFC25, 0xFC9B, 0xFD60, 0xFE7E, 0x0000, 0x1D21, 0x1438, 0x04CC, 0xF649, 0xF01C, 
    0x085B, 0x1FF1, 0x12C6, 0xFA99, 0xEBD9, 0xEE19, 0xF78A, 0x0281, 0x0956, 0x0832, 0x0310, 0x0000, 0xEEE2, 0xEF0F, 
    0xEF86, 0xF029, 0xF0DD, 0xF186, 0xF207, 0xF245, 0xF224, 0xF181, 0xF069, 0xEF05, 0xED7E, 0xEBFD, 0xEAAC, 0xE9B4, 
    0xE93D, 0xE934, 0xE95F, 0xE9B6, 0xEA31, 0xEAC5, 0xEB6B, 0xEC19, 0xECC6, 0xED69, 0xEDFA, 0xEE6F, 0xEEBF, 0xEEE1, 
    0x0000, 0x00DC, 0x021B, 0x037F, 0x04CA, 0x05BE, 0x061D, 0x0614, 0x05FB, 0x05D4, 0x059F, 0x055F, 0x0515, 0x04C2, 
    0x0468, 0x0409, 0x03A6, 0x0341, 0x02DB, 0x0276, 0x0213, 0x01B4, 0x015B, 0x0108, 0x00BE, 0x007E, 0x0049, 0x0021, 
    0x0009, 0x0000, 0xE3D2, 0xE411, 0xE499, 0xE550, 0xE61A, 0xE6DC, 0xE77C, 0xE7E0, 0xE7EB, 0xE785, 0xE698, 0xE537, 
    0xE37E, 0xE18A, 0xDF76, 0xDD5F, 0xDB61, 0xD999, 0xD822, 0xD71A, 0xD69C, 0xD6E4, 0xD7F7, 0xD99F, 0xDBA5, 0xDDD2, 
    0xDFF0, 0xE1C9, 0xE327, 0xE3D2, 0xF15D, 0xF272, 0xF440, 0xF681, 0xF8ED, 0xFB3E, 0xFD2E, 0xFE76, 0xFECF, 0xFE1F, 
    0xFCA0, 0xFA8A, 0xF815, 0xF577, 0xF2E9, 0xF0A3, 0xEEDB, 0xEDC9, 0xED43, 0xECF5, 0xECD9, 0xECEB, 0xED24, 0xED81, 
    0xEDFB, 0xEE8D, 0xEF32, 0xEFE4, 0xF09F, 0xF15D, 0x0000, 0xFFBF, 0xFF60, 0xFEE7, 0xFE58, 0xFDB4, 0xFD01, 0xFC40, 
    0xFB76, 0xFA3B, 0xF88F, 0xF70F, 0xF656, 0xF67A, 0xF713, 0xF7FF, 0xF91D, 0xFA4C, 0xFC1D, 0xFE5B, 0xFFB6, 0x001C, 
    0x005D, 0x007F, 0x0088, 0x007E, 0x0065, 0x0044, 0x0021, 0x0000, 0x0000, 0xFF65, 0xFE15, 0xFC67, 0xFAB1, 0xF94B, 
    0xF88B, 0xF8CA, 0xFA5D, 0x0A90, 0x1788, 0x001B, 0xE9EF, 0xF299, 0x04AE, 0x0F82, 0x0223, 0xF221, 0xF32C, 0xF922, 
    0xFD5E, 0xFE64, 0xFF2B, 0xFFBA, 0x0018, 0x004C, 0x005D, 0x0051, 0x0030, 0x0000, 0x4274, 0x4320, 0x4422, 0x455E, 
    0x46B9, 0x4819, 0x4961, 0x4A78, 0x4B41, 0x4B03, 0x49DF, 0x4906, 0x49A4, 0x4D42, 0x52D7, 0x57B9, 0x593C, 0x56CE, 
    0x524A, 0x4CAD, 0x46F1, 0x4214, 0x3F12, 0x3DF9, 0x3DF7, 0x3EB5, 0x3FDD, 0x4119, 0x4213, 0x4274, 0x9348, 0x927F, 
    0x90F6, 0x8F04, 0x8CB8, 0x8AE2, 0x8A52, 0x8B6A, 0x8DAD, 0x909C, 0x93B8, 0x9761, 0x9BDA, 0xA07A, 0xA498, 0xA78A, 
    0xA8A7, 0xA84A, 0xA752, 0xA5DB, 0xA3FF, 0xA1DA, 0x9F88, 0x9D24, 0x9AC9, 0x9893, 0x969E, 0x9505, 0x93E2, 0x9353, 
    0x365A, 0x3719, 0x37D8, 0x38E1, 0x3A1C, 0x3AF3, 0x3AD5, 0x3955, 0x36D9, 0x3407, 0x3185, 0x2F1D, 0x2C65, 0x29B8, 
    0x2771, 0x25EA, 0x257E, 0x25FA, 0x26E0, 0x281E, 0x299F, 0x2B4F, 0x2D1C, 0x2EF1, 0x30BA, 0x3265, 0x33DD, 0x350F, 
    0x35E8, 0x3652, 0xF658, 0xF658, 0xF658, 0xF6DA, 0xF776, 0xF83A, 0xF932, 0xFA86, 0xFC31, 0xFDFD, 0x0060, 0xFE85, 
    0xFC17, 0xF972, 0xF6F4, 0xF4FC, 0xF3E6, 0xF37F, 0xF34C, 0xF348, 0xF369, 0xF3A9, 0xF3FF, 0xF464, 0xF4D1, 0xF53E, 
    0xF5A3, 0xF5F8, 0xF636, 0xF656, 0xFFFC, 0xFFFC, 0xFFFC, 0xFFD1, 0xFFA4, 0xFF55, 0xFEC3, 0xFDBE, 0xFC55, 0xFACC, 
    0xF8B9, 0xFA4A, 0xFC5B, 0xFE9B, 0x00B8, 0x025F, 0x033E, 0x0383, 0x0397, 0x0380, 0x0347, 0x02F2, 0x028A, 0x0216, 
    0x019D, 0x0127, 0x00BB, 0x0061, 0x001F, 0xFFFE, 0x9348, 0x927D, 0x90BF, 0x8E43, 0x8B46, 0x88D2, 0x87EE, 0x8925, 
    0x8BD2, 0x8F3C, 0x92A9, 0x9670, 0x9AF6, 0x9F9A, 0xA3B7, 0xA6A9, 0xA7CF, 0xA782, 0xA69C, 0xA538, 0xA371, 0xA162, 
    0x9F25, 0x9CD6, 0x9A8F, 0x986B, 0x9685, 0x94F8, 0x93DE, 0x9353, 0x365A, 0x36E9, 0x380A, 0x39A1, 0x3B8F, 0x3D08, 
    0x3D3D, 0x3B99, 0x38A9, 0x3554, 0x3283, 0x3009, 0x2D57, 0x2ABD, 0x288B, 0x2714, 0x26A6, 0x2712, 0x27E4, 0x2908, 
    0x2A6D, 0x2C00, 0x2DAE, 0x2F65, 0x3112, 0x32A2, 0x3404, 0x3523, 0x35EE, 0x3653, 0xF658, 0xF63A, 0xF658, 0xF6D7, 
    0xF76F, 0xF831, 0xF932, 0xFAA1, 0xFC74, 0xFE65, 0x00DB, 0xFEDD, 0xFC42, 0xF96F, 0xF6C6, 0xF4AC, 0xF386, 0xF31A, 
    0xF2E9, 0xF2E8, 0xF311, 0xF35A, 0xF3BC, 0xF42E, 0xF4A7, 0xF520, 0xF590, 0xF5EE, 0xF633, 0xF655, 0xFFFC, 0x0000, 
    0xFFFC, 0x0012, 0x003E, 0x0030, 0xFF94, 0xFDE2, 0xFB65, 0xF907, 0xF791, 0xF995, 0xFC23, 0xFEDD, 0x0164, 0x035A, 
    0x0461, 0x04AE, 0x04BE, 0x0499, 0x0449, 0x03D7, 0x034D, 0x02B5, 0x0217, 0x017E, 0x00F2, 0x007D, 0x0029, 0xFFFF, 
    0x9C2E, 0x9C35, 0x9C47, 0x9C60, 0x9C7C, 0x9C97, 0x9CAC, 0x9CB7, 0x9CB4, 0x9C9F, 0x9C74, 0x9C2E, 0x9B6A, 0x9A13, 
    0x9896, 0x9761, 0x96E2, 0x96F7, 0x9734, 0x9790, 0x9806, 0x988E, 0x9922, 0x99BA, 0x9A50, 0x9ADC, 0x9B59, 0x9BBF, 
    0x9C07, 0x9C2B, 0x3DEE, 0x3DE9, 0x3DDD, 0x3DCB, 0x3DB8, 0x3DA5, 0x3D97, 0x3D8F, 0x3D91, 0x3DA0, 0x3DBE, 0x3DEE, 
    0x3E75, 0x3F63, 0x406B, 0x4141, 0x4199, 0x418A, 0x4160, 0x4120, 0x40CE, 0x4070, 0x400A, 0x3FA1, 0x3F39, 0x3ED8, 
    0x3E81, 0x3E3B, 0x3E09, 0x3DF0, 0xD8E3, 0xD8DC, 0xD8CA, 0xD8B0, 0xD894, 0xD87A, 0xD865, 0xD85A, 0xD85C, 0xD871, 
    0xD89D, 0xD8E3, 0xD9A6, 0xDAFD, 0xDC7A, 0xDDAF, 0xDE2F, 0xDE19, 0xDDDD, 0xDD80, 0xDD0A, 0xDC82, 0xDBEF, 0xDB57, 
    0xDAC1, 0xDA34, 0xD9B7, 0xD951, 0xD909, 0xD8E5, 0x0BD1, 0x0BD5, 0x0BE0, 0x0BF0, 0x0C01, 0x0C11, 0x0C1E, 0x0C25, 
    0x0C24, 0x0C17, 0x0BFC, 0x0BD1, 0x0B59, 0x0A86, 0x099B, 0x08DD, 0x088E, 0x089C, 0x08C1, 0x08FA, 0x0942, 0x0996, 
    0x09F1, 0x0A4E, 0x0AAB, 0x0B01, 0x0B4E, 0x0B8D, 0x0BB9, 0x0BCF, 0x9D66, 0x9D68, 0x9D6B, 0x9D70, 0x9D74, 0x9D78, 
    0x9D79, 0x9D77, 0x9D71, 0x9D66, 0x9D54, 0x9D3B, 0x9D1A, 0x9CF0, 0x9CBB, 0x9C7A, 0x9C2E, 0x9B26, 0x9952, 0x9799, 
    0x96E2, 0x972A, 0x97C3, 0x9898, 0x9990, 0x9A96, 0x9B91, 0x9C6B, 0x9D0D, 0x9D60, 0x3D86, 0x3D85, 0x3D81, 0x3D7C, 
    0x3D77, 0x3D71, 0x3D6C, 0x3D68, 0x3D67, 0x3D67, 0x3D6B, 0x3D73, 0x3D80, 0x3D92, 0x3DAA, 0x3DC8, 0x3DEE, 0x3E79, 
    0x3F74, 0x4062, 0x40C8, 0x40A7, 0x405C, 0x3FF3, 0x3F76, 0x3EF3, 0x3E74, 0x3E05, 0x3DB3, 0x3D89, 0xD87B, 0xD874, 
    0xD863, 0xD848, 0xD828, 0xD805, 0xD7E1, 0xD7BE, 0xD79F, 0xD788, 0xD77A, 0xD778, 0xD784, 0xD7A2, 0xD7D3, 0xD81A, 
    0xD87B, 0xDA0E, 0xDCF8, 0xDFC7, 0xE109, 0xE0C3, 0xE007, 0xDEF4, 0xDDAC, 0xDC4E, 0xDAFB, 0xD9D2, 0xD8F5, 0xD883, 
    0x0BD1, 0x0BD5, 0x0BE0, 0x0BF0, 0x0C04, 0x0C1A, 0x0C30, 0x0C46, 0x0C58, 0x0C67, 0x0C70, 0x0C71, 0x0C69, 0x0C57, 
    0x0C39, 0x0C0C, 0x0BD1, 0x0AD7, 0x0909, 0x074C, 0x0685, 0x06B0, 0x0725, 0x07CF, 0x089A, 0x0972, 0x0A45, 0x0AFC, 
    0x0B85, 0x0BCC, 
};

JointIndex sChildEponaWhinnyAnimJointIndices[] = {
    { 0x0000, 0x0001, 0x0002 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0008, 0x0004 },
    { 0x0000, 0x0026, 0x0005 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x0006 },
    { 0x0000, 0x0000, 0x0044 },
    { 0x0000, 0x0062, 0x0080 },
    { 0x0000, 0x0000, 0x009E },
    { 0x00BC, 0x00DA, 0x00F8 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0007 },
    { 0x0000, 0x0000, 0x0116 },
    { 0x0000, 0x0000, 0x0134 },
    { 0x0000, 0x0000, 0x0152 },
    { 0x0000, 0x0000, 0x0170 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0007 },
    { 0x0000, 0x0000, 0x018E },
    { 0x0000, 0x0000, 0x01AC },
    { 0x0000, 0x0000, 0x01CA },
    { 0x0000, 0x0000, 0x01E8 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x0206 },
    { 0x0000, 0x0000, 0x0224 },
    { 0x0000, 0x0000, 0x0242 },
    { 0x0000, 0x0000, 0x0260 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x027E },
    { 0x0000, 0x0000, 0x029C },
    { 0x0000, 0x0000, 0x02BA },
    { 0x0000, 0x0000, 0x02D8 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gChildEponaWhinnyAnim = { 
    { 30 }, sChildEponaWhinnyAnimFrameData,
    sChildEponaWhinnyAnimJointIndices, 8
};

u8 object_horse_link_child_possiblePadding_004B18[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sChildEponaWalkingAnimFrameData[] = {
    0x0000, 0xF853, 0x4000, 0x8507, 0xEEE2, 0x8C17, 0x1375, 0x1382, 0x13A5, 0x13D7, 0x140F, 0x1448, 0x1479, 0x149C, 
    0x14A9, 0x14A2, 0x148E, 0x1470, 0x144C, 0x1423, 0x13FA, 0x13D1, 0x13AD, 0x1390, 0x137D, 0x1377, 0x1389, 0x13B8, 
    0x13F7, 0x143C, 0x147A, 0x14A8, 0x14BA, 0x14AF, 0x1491, 0x1466, 0x1432, 0x13FC, 0x13C9, 0x139E, 0x1380, 0xDACC, 
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
    0xFF40, 0xFF69, 0xFF9E, 0xFFD1, 0xFFF6, 0x0000, 0xECD7, 0xECA5, 0xEC1F, 0xEB5C, 0xEA76, 0xE984, 0xE89D, 0xE7DB, 
    0xE755, 0xE723, 0xE74C, 0xE7BC, 0xE861, 0xE92A, 0xEA04, 0xEADD, 0xEBA4, 0xEC46, 0xECB2, 0xECD7, 0xEC9D, 0xEC0B, 
    0xEB3A, 0xEA44, 0xE941, 0xE84C, 0xE77E, 0xE6EF, 0xE6BA, 0xE736, 0xE86A, 0xE9F5, 0xEB74, 0xEC89, 0xECD7, 0xF2C6, 
    0xF2BE, 0xF2AB, 0xF290, 0xF26F, 0xF24C, 0xF22B, 0xF20F, 0xF1FC, 0xF1F5, 0xF1FB, 0xF20B, 0xF222, 0xF23E, 0xF25D, 
    0xF27C, 0xF299, 0xF2B0, 0xF2C0, 0xF2C6, 0xF2BE, 0xF2AB, 0xF290, 0xF26F, 0xF24C, 0xF22B, 0xF20F, 0xF1FC, 0xF1F5, 
    0xF206, 0xF22F, 0xF263, 0xF296, 0xF2BB, 0xF2C6, 0x0000, 0x0001, 0x0005, 0x000B, 0x0011, 0x0018, 0x001E, 0x0023, 
    0x0027, 0x0029, 0x0028, 0x0025, 0x0021, 0x001C, 0x0017, 0x0012, 0x000C, 0x0007, 0x0003, 0x0000, 0xFFFE, 0xFFFD, 
    0xFFFD, 0xFFFE, 0xFFFE, 0xFFFF, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x000B, 0x0027, 0x0050, 0x0081, 0x00B5, 0x00E6, 0x010F, 0x012C, 0x0136, 0x012F, 0x011C, 0x00FE, 0x00DA, 0x00B1, 
    0x0086, 0x005C, 0x0036, 0x0017, 0x0000, 0xFFF3, 0xFFED, 0xFFEC, 0xFFEF, 0xFFF4, 0xFFFA, 0xFFFE, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x3FC2, 0x4006, 0x40BC, 0x41C4, 0x42FC, 0x4445, 0x457E, 0x4686, 
    0x473C, 0x4780, 0x4748, 0x46B0, 0x45D0, 0x44C1, 0x439A, 0x4273, 0x4165, 0x4089, 0x3FF5, 0x3FC2, 0x4020, 0x410E, 
    0x425D, 0x43DB, 0x4558, 0x46A4, 0x478F, 0x47E8, 0x476D, 0x4633, 0x4489, 0x42BF, 0x4126, 0x400F, 0x3FC2, 0x8C17, 
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

JointIndex sChildEponaWalkingAnimJointIndices[] = {
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
    { 0x0000, 0x0000, 0x0187 },
    { 0x0000, 0x0000, 0x01AA },
    { 0x0000, 0x0000, 0x01CD },
    { 0x0000, 0x0000, 0x01F0 },
    { 0x0000, 0x0000, 0x0213 },
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

AnimationHeader gChildEponaWalkingAnim = { 
    { 35 }, sChildEponaWalkingAnimFrameData,
    sChildEponaWalkingAnimJointIndices, 6
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005400[] = {
    { 0x20, 2290, 529, -316, 0x14 },
    { 0x21, -441, 295, -316, 0x50 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005414[] = {
    { 0x07, -1741, -734, -3, 0x46 },
    { 0x1F, -1024, -643, -658, 0x0F },
    { 0x27, -1024, -643, 652, 0x0F },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005434[] = {
    { 0x20, 2290, 526, 408, 0x14 },
    { 0x21, -438, 293, 408, 0x50 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005448[] = {
    { 0x20, 1698, -231, 243, 0x46 },
    { 0x21, -209, -639, 243, 0x1E },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_00545C[] = {
    { 0x21, 243, -376, 247, 0x64 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005468[] = {
    { 0x21, 90, 238, -40, 0x64 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005474[] = {
    { 0x07, -1558, -74, 1077, 0x3C },
    { 0x1F, -497, -204, 423, 0x14 },
    { 0x20, -309, 1604, 423, 0x14 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005494[] = {
    { 0x07, -1923, -161, 584, 0x32 },
    { 0x1F, -847, -69, -70, 0x1E },
    { 0x20, -196, 1961, -70, 0x14 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0054B4[] = {
    { 0x02, 1281, 348, 330, 0x32 },
    { 0x03, -80, 344, 330, 0x32 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0054C8[] = {
    { 0x07, -350, -667, 861, 0x3C },
    { 0x1F, 158, -1381, 206, 0x1E },
    { 0x20, -1441, 874, 206, 0x0A },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0054E8[] = {
    { 0x1F, 200, -911, 592, 0x46 },
    { 0x20, -969, 862, 592, 0x1E },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0054FC[] = {
    { 0x08, 1633, 2111, -18, 0x28 },
    { 0x0F, 1444, 1065, -774, 0x14 },
    { 0x10, 1241, -546, -774, 0x0A },
    { 0x17, 1444, 1065, 738, 0x14 },
    { 0x18, 1241, -547, 738, 0x0A },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005530[] = {
    { 0x20, 1699, -231, -203, 0x46 },
    { 0x21, -209, -639, -203, 0x1E },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005544[] = {
    { 0x21, 243, -376, -228, 0x64 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005550[] = {
    { 0x1F, 1783, 872, -237, 0x0A },
    { 0x20, 912, -602, -237, 0x50 },
    { 0x21, -404, -1486, -237, 0x0A },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005570[] = {
    { 0x1F, 1781, 869, 474, 0x14 },
    { 0x20, 910, -600, 474, 0x46 },
    { 0x21, -407, -1487, 474, 0x0A },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005590[] = {
    { 0x20, 1665, 443, 340, 0x46 },
    { 0x21, -760, -249, 340, 0x1E },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0055A4[] = {
    { 0x07, 137, 369, 853, 0x14 },
    { 0x1F, 1148, -807, 199, 0x3C },
    { 0x20, -804, -77, 199, 0x14 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0055C4[] = {
    { 0x1F, 1514, -105, 412, 0x28 },
    { 0x20, -80, -396, 412, 0x3C },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0055D8[] = {
    { 0x08, 2780, 1200, -2, 0x4B },
    { 0x09, -259, 1344, -2, 0x19 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0055EC[] = {
    { 0x07, -971, 1163, 1358, 0x0A },
    { 0x20, 448, 463, 703, 0x5A },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005600[] = {
    { 0x02, 9, 0, -1, 0x64 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_00560C[] = {
    { 0x20, 1665, 443, -189, 0x46 },
    { 0x21, -759, -248, -189, 0x1E },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005620[] = {
    { 0x1F, 418, 1275, 221, 0x28 },
    { 0x20, 1226, 786, 221, 0x3C },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005634[] = {
    { 0x1F, 421, 1275, -352, 0x28 },
    { 0x20, 1227, 783, -352, 0x3C },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005648[] = {
    { 0x07, -2131, 1005, 390, 0x28 },
    { 0x1F, -354, 1008, -265, 0x28 },
    { 0x20, 911, 1539, -265, 0x14 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005668[] = {
    { 0x07, -1795, 1092, 969, 0x0A },
    { 0x1F, -28, 888, 315, 0x1E },
    { 0x20, 811, 1206, 315, 0x3C },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005688[] = {
    { 0x28, 2290, 526, -414, 0x14 },
    { 0x29, -438, 293, -414, 0x50 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_00569C[] = {
    { 0x07, -1450, -649, -597, 0x50 },
    { 0x27, -736, -739, 57, 0x0A },
    { 0x28, -858, 1808, 57, 0x0A },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0056BC[] = {
    { 0x28, 2290, 529, 309, 0x14 },
    { 0x29, -441, 295, 309, 0x50 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0056D0[] = {
    { 0x29, 90, 237, 21, 0x64 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0056DC[] = {
    { 0x28, 1698, -231, -249, 0x46 },
    { 0x29, -209, -639, -249, 0x1E },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0056F0[] = {
    { 0x29, 243, -374, -234, 0x64 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0056FC[] = {
    { 0x08, 2207, 1866, -2, 0x50 },
    { 0x10, 744, -924, -758, 0x0A },
    { 0x18, 744, -924, 754, 0x0A },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_00571C[] = {
    { 0x17, -61, -711, -310, 0x45 },
    { 0x18, -855, 467, -310, 0x1F },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005730[] = {
    { 0x27, 200, -911, -598, 0x46 },
    { 0x28, -969, 862, -598, 0x1E },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005744[] = {
    { 0x07, -971, 1163, -1364, 0x0A },
    { 0x28, 448, 463, -710, 0x5A },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005758[] = {
    { 0x07, -1558, -74, -1083, 0x3C },
    { 0x27, -497, -204, -428, 0x14 },
    { 0x28, -309, 1604, -428, 0x14 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005778[] = {
    { 0x07, -1800, 1093, -978, 0x14 },
    { 0x27, -31, 892, -324, 0x14 },
    { 0x28, 815, 1210, -324, 0x3C },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005798[] = {
    { 0x29, 243, -374, 229, 0x64 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0057A4[] = {
    { 0x28, 1699, -231, 197, 0x46 },
    { 0x29, -209, -639, 197, 0x1E },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0057B8[] = {
    { 0x27, 1783, 872, 230, 0x0A },
    { 0x28, 912, -602, 230, 0x50 },
    { 0x29, -404, -1486, 230, 0x0A },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0057D8[] = {
    { 0x28, 1665, 443, -347, 0x46 },
    { 0x29, -760, -249, -347, 0x1E },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0057EC[] = {
    { 0x27, 1781, 869, -480, 0x14 },
    { 0x28, 910, -600, -480, 0x46 },
    { 0x29, -407, -1487, -480, 0x0A },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_00580C[] = {
    { 0x27, 1514, -105, -418, 0x28 },
    { 0x28, -80, -396, -418, 0x3C },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005820[] = {
    { 0x07, -1947, 823, -2, 0x50 },
    { 0x1F, -306, 753, -657, 0x0A },
    { 0x28, 659, 1475, 653, 0x0A },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005840[] = {
    { 0x28, 1665, 443, 183, 0x46 },
    { 0x29, -759, -248, 183, 0x1E },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005854[] = {
    { 0x27, 418, 1275, -228, 0x28 },
    { 0x28, 1226, 786, -228, 0x3C },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005868[] = {
    { 0x07, 137, 369, -884, 0x14 },
    { 0x27, 1148, -807, -229, 0x3C },
    { 0x28, -804, -77, -229, 0x14 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005888[] = {
    { 0x07, -350, -667, -886, 0x3C },
    { 0x27, 158, -1381, -232, 0x1E },
    { 0x28, -1441, 874, -232, 0x0A },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0058A8[] = {
    { 0x09, 418, 941, 5, 0x64 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0058B4[] = {
    { 0x27, 415, 1273, 331, 0x28 },
    { 0x28, 1225, 789, 331, 0x3C },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0058C8[] = {
    { 0x07, -2131, 1005, -396, 0x28 },
    { 0x27, -354, 1008, 259, 0x28 },
    { 0x28, 911, 1539, 259, 0x14 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0058E8[] = {
    { 0x07, -1923, -161, -590, 0x32 },
    { 0x27, -847, -69, 64, 0x1E },
    { 0x28, -196, 1961, 64, 0x14 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005908[] = {
    { 0x07, 210, 1146, -437, 0x1E },
    { 0x27, 1651, -210, 218, 0x28 },
    { 0x28, -175, -540, 218, 0x1E },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005928[] = {
    { 0x27, 1771, 332, 316, 0x1E },
    { 0x28, 373, -625, 316, 0x46 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_00593C[] = {
    { 0x02, 1274, -160, -3, 0x32 },
    { 0x03, 115, -125, -3, 0x32 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005950[] = {
    { 0x19, 213, 323, 320, 0x64 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_00595C[] = {
    { 0x19, 213, 325, -299, 0x64 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005968[] = {
    { 0x19, 576, -35, 5, 0x64 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005974[] = {
    { 0x18, 2376, -514, 393, 0x32 },
    { 0x19, 73, -511, 393, 0x32 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005988[] = {
    { 0x18, 2376, -512, -400, 0x32 },
    { 0x19, 72, -508, -400, 0x32 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_00599C[] = {
    { 0x18, 1972, -277, -194, 0x64 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0059A8[] = {
    { 0x02, 1281, 348, -336, 0x32 },
    { 0x03, -80, 344, -336, 0x32 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0059BC[] = {
    { 0x03, 2249, 534, -3, 0x64 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0059C8[] = {
    { 0x17, -274, 954, -373, 0x1E },
    { 0x18, 704, 1090, -373, 0x46 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0059DC[] = {
    { 0x17, 180, 1022, -440, 0x04 },
    { 0x18, 883, 667, -440, 0x60 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0059F0[] = {
    { 0x17, 413, 11, -669, 0x28 },
    { 0x18, -37, 189, -669, 0x3C },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005A04[] = {
    { 0x17, 1043, 642, -480, 0x04 },
    { 0x18, 731, -264, -480, 0x60 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005A18[] = {
    { 0x08, 486, 1545, -507, 0x0A },
    { 0x18, 1317, 730, 249, 0x5A },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005A2C[] = {
    { 0x08, 2207, 1207, -915, 0x14 },
    { 0x17, 1227, 16, -159, 0x20 },
    { 0x18, 171, -599, -159, 0x2F },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005A4C[] = {
    { 0x1F, 1771, 332, -322, 0x1E },
    { 0x20, 373, -625, -322, 0x46 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005A60[] = {
    { 0x07, 1486, 945, -1102, 0x28 },
    { 0x08, -564, 783, -1102, 0x28 },
    { 0x27, 2585, -1102, -447, 0x14 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005A80[] = {
    { 0x07, 718, 1400, -1, 0x3C },
    { 0x1F, 2212, -291, -656, 0x0F },
    { 0x20, -219, -1106, -656, 0x05 },
    { 0x27, 2212, -291, 654, 0x0F },
    { 0x28, -220, -1106, 654, 0x05 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005AB4[] = {
    { 0x07, 2054, 1610, -6, 0x28 },
    { 0x08, -316, 1622, -6, 0x28 },
    { 0x10, 1780, 1390, -762, 0x0A },
    { 0x18, 1780, 1389, 750, 0x0A },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005ADC[] = {
    { 0x07, -913, 1560, 0, 0x28 },
    { 0x20, 758, 210, -654, 0x1E },
    { 0x28, 758, 210, 655, 0x1E },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005AFC[] = {
    { 0x07, 1324, -559, -1104, 0x37 },
    { 0x08, -98, -656, -1104, 0x2D },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B10[] = {
    { 0x17, -493, 143, -437, 0x5E },
    { 0x18, -136, 1099, -437, 0x07 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B24[] = {
    { 0x18, 1971, -278, 153, 0x64 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B30[] = {
    { 0x18, 1065, -353, 259, 0x60 },
    { 0x19, -1241, -647, 259, 0x04 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B44[] = {
    { 0x11, 576, -33, -11, 0x64 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B50[] = {
    { 0x10, 2377, -513, -399, 0x32 },
    { 0x11, 73, -510, -399, 0x32 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B64[] = {
    { 0x11, 213, 326, -303, 0x64 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B70[] = {
    { 0x10, 2376, -511, 408, 0x32 },
    { 0x11, 72, -507, 408, 0x32 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B84[] = {
    { 0x11, 213, 325, 337, 0x64 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B90[] = {
    { 0x02, 2742, -953, 420, 0x0A },
    { 0x03, 1778, -270, 420, 0x5A },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005BA4[] = {
    { 0x07, -2255, -89, -4, 0x50 },
    { 0x1F, -1079, 179, -659, 0x0A },
    { 0x20, 37, 2209, -659, 0x0A },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005BC4[] = {
    { 0x10, 1971, -277, -159, 0x64 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005BD0[] = {
    { 0x10, 1972, -277, 245, 0x64 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005BDC[] = {
    { 0x0F, 180, 1022, 434, 0x04 },
    { 0x10, 883, 667, 434, 0x60 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005BF0[] = {
    { 0x0F, 1043, 642, 555, 0x04 },
    { 0x10, 731, -263, 555, 0x60 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005C04[] = {
    { 0x10, 1066, -351, -267, 0x60 },
    { 0x11, -1240, -644, -267, 0x04 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005C18[] = {
    { 0x08, 485, 1545, 511, 0x0A },
    { 0x10, 1317, 731, -245, 0x5A },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005C2C[] = {
    { 0x07, 1487, 946, 1066, 0x28 },
    { 0x08, -563, 785, 1066, 0x28 },
    { 0x1F, 2586, -1101, 412, 0x14 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005C4C[] = {
    { 0x07, 211, 1146, 433, 0x1E },
    { 0x1F, 1652, -210, -222, 0x28 },
    { 0x20, -176, -541, -222, 0x1E },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005C6C[] = {
    { 0x0F, -275, 954, 336, 0x1E },
    { 0x10, 704, 1090, 336, 0x46 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005C80[] = {
    { 0x07, 1009, -1199, 9, 0x3C },
    { 0x08, -124, -1369, 9, 0x28 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005C94[] = {
    { 0x0F, 413, 13, 684, 0x28 },
    { 0x10, -35, 189, 684, 0x3C },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005CA8[] = {
    { 0x08, 2207, 1207, 885, 0x14 },
    { 0x0F, 1227, 16, 129, 0x20 },
    { 0x10, 171, -598, 129, 0x2F },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005CC8[] = {
    { 0x07, 1324, -559, 1068, 0x37 },
    { 0x08, -98, -656, 1068, 0x2D },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005CDC[] = {
    { 0x0F, -492, 145, 398, 0x5D },
    { 0x10, -134, 1098, 398, 0x07 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005CF0[] = {
    { 0x09, 1491, -33, 686, 0x1E },
    { 0x0A, 91, -1, 686, 0x46 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D04[] = {
    { 0x09, 1430, -911, 322, 0x32 },
    { 0x0A, 343, -844, 322, 0x32 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D18[] = {
    { 0x0A, 914, 57, 602, 0x64 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D24[] = {
    { 0x0A, 1924, -112, 214, 0x64 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D30[] = {
    { 0x0A, 1925, -111, -219, 0x64 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D3C[] = {
    { 0x0A, 1745, 482, 1, 0x64 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D48[] = {
    { 0x0A, 734, 822, 4, 0x64 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D54[] = {
    { 0x09, 1623, -1228, -11, 0x28 },
    { 0x0A, 635, -1073, -11, 0x3C },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D68[] = {
    { 0x08, 2871, -2656, -396, 0x14 },
    { 0x09, 2271, -1568, -396, 0x14 },
    { 0x0A, 1361, -1164, -396, 0x32 },
    { 0x0B, -1163, 67, -396, 0x0A },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D90[] = {
    { 0x09, 3099, -1196, -3, 0x14 },
    { 0x0A, 2006, -525, -3, 0x28 },
    { 0x0B, -596, -642, -3, 0x28 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005DB0[] = {
    { 0x08, 2871, -2656, 390, 0x14 },
    { 0x09, 2271, -1568, 390, 0x14 },
    { 0x0A, 1361, -1163, 390, 0x32 },
    { 0x0B, -1163, 67, 390, 0x0A },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005DD8[] = {
    { 0x09, 1428, -912, -328, 0x32 },
    { 0x0A, 341, -846, -328, 0x32 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005DEC[] = {
    { 0x08, 1459, -1171, -2, 0x50 },
    { 0x09, 237, -1325, -2, 0x14 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005E00[] = {
    { 0x07, -406, -1178, -2, 0x46 },
    { 0x1F, -180, -1769, -657, 0x0F },
    { 0x27, -180, -1769, 652, 0x0F },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005E20[] = {
    { 0x08, 2430, 257, -870, 0x16 },
    { 0x09, 74, 394, -870, 0x1E },
    { 0x17, 725, -821, -114, 0x18 },
    { 0x18, -765, -322, -114, 0x18 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005E48[] = {
    { 0x09, 1491, -33, -677, 0x1E },
    { 0x0A, 91, -1, -677, 0x46 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005E5C[] = {
    { 0x0A, 906, 57, -598, 0x64 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005E68[] = {
    { 0x08, 1647, -767, -662, 0x50 },
    { 0x09, 124, -894, -662, 0x14 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005E7C[] = {
    { 0x08, 2461, -183, -814, 0x28 },
    { 0x09, 378, 75, -814, 0x3C },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005E90[] = {
    { 0x09, 1471, 683, -19, 0x32 },
    { 0x0A, -179, 662, -19, 0x32 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005EA4[] = {
    { 0x08, 2462, -188, 810, 0x28 },
    { 0x09, 382, 73, 810, 0x3C },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005EB8[] = {
    { 0x08, 1646, -771, 596, 0x50 },
    { 0x09, 125, -897, 596, 0x14 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005ECC[] = {
    { 0x08, 2430, 257, 823, 0x16 },
    { 0x09, 74, 394, 823, 0x1E },
    { 0x0F, 725, -821, 67, 0x18 },
    { 0x10, -765, -322, 67, 0x18 },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005EF4[] = {
    { 0x0F, -61, -711, 297, 0x46 },
    { 0x10, -855, 467, 297, 0x1E },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005F08[] = {
    { 0x02, 2742, -953, -428, 0x0A },
    { 0x03, 1778, -270, -428, 0x5A },
};

Struct_800A598C_2 gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005F1C[] = {
    { 0x07, -1450, -649, 530, 0x50 },
    { 0x1F, -737, -739, -125, 0x0A },
    { 0x20, -858, 1808, -125, 0x0A },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_005F3C[] = {
    { 0x114, 523, 435, -44, 72, -95, 0xFF },
    { 0x16A, 523, 435, -44, 72, -95, 0xFF },
    { 0x14E, 523, 435, -44, 72, -95, 0xFF },
    { 0x189, 523, 435, -44, 72, -95, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_005F64[] = {
    { 0x1B, 1324, 114, -72, -105, 2, 0xFF },
    { 0x7E, 1324, 114, -72, -105, 2, 0xFF },
    { 0x29, 1274, 114, -72, -105, 2, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_005F84[] = {
    { 0x15F, 522, 435, 0, 67, 108, 0xFF },
    { 0x188, 522, 435, 0, 67, 108, 0xFF },
    { 0x113, 522, 435, 0, 67, 108, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_005FA4[] = {
    { 0x15E, 309, 435, 19, -92, 85, 0xFF },
    { 0x177, 309, 435, 19, -92, 85, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_005FB8[] = {
    { 0x182, 342, 507, 101, -45, 62, 0xFF },
    { 0x10B, 342, 507, 101, -45, 62, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_005FCC[] = {
    { 0x130, 483, 506, 91, 88, -7, 0xFF },
    { 0x10A, 483, 506, 91, 88, -7, 0xFF },
    { 0x187, 483, 506, 91, 88, -7, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_005FEC[] = {
    { 0x152, 354, 49, -62, -44, 102, 0xFF },
    { 0x14D, 354, 49, -62, -44, 102, 0xFF },
    { 0x108, 354, 49, -62, -44, 102, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00600C[] = {
    { 0x157, 432, 31, -101, -43, 64, 0xFF },
    { 0x13E, 432, 31, -101, -43, 64, 0xFF },
    { 0x111, 432, 31, -101, -43, 64, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00602C[] = {
    { 0x18F, 761, 90, -10, 56, 113, 0xFF },
    { 0x0F, 114, 116, -10, 56, 113, 0xFF },
    { 0x195, 2809, 90, -10, 56, 113, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00604C[] = {
    { 0x168, 71, -13, 3, -86, 94, 0xFF },
    { 0xCA, 1009, 139, 3, -86, 94, 0xFF },
    { 0xC6, 1009, 188, 3, -86, 94, 0xFF },
    { 0x107, 71, -13, 3, -86, 94, 0xFF },
    { 0x33, 1009, 139, 3, -86, 94, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006080[] = {
    { 0x181, 134, 41, -12, -51, 116, 0xFF },
    { 0x153, 134, 41, -12, -51, 116, 0xFF },
    { 0x105, 134, 41, -12, -51, 116, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0060A0[] = {
    { 0x97, 214, 976, -5, 127, -1, 0xFF },
    { 0x4C, 214, 976, -5, 127, -1, 0xFF },
    { 0xD1, 214, 976, -5, 127, -1, 0xFF },
    { 0xBD, 214, 976, -5, 127, -1, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0060C8[] = {
    { 0x169, 309, 435, -17, -87, -91, 0xFF },
    { 0x17E, 309, 435, -17, -87, -91, 0xFF },
    { 0xF8, 309, 435, -17, -87, -91, 0xFF },
    { 0x14F, 309, 435, -17, -87, -91, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0060F0[] = {
    { 0x131, 342, 507, 92, -18, -85, 0xFF },
    { 0x16B, 342, 507, 92, -18, -85, 0xFF },
    { 0x186, 342, 507, 92, -18, -85, 0xFF },
    { 0x10C, 342, 507, 92, -18, -85, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006118[] = {
    { 0x17D, 136, 380, 25, -114, -51, 0xFF },
    { 0x163, 136, 380, 25, -114, -51, 0xFF },
    { 0xF4, 136, 380, 25, -114, -51, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006138[] = {
    { 0x179, 136, 379, 24, -79, 96, 0xFF },
    { 0x164, 136, 379, 24, -79, 96, 0xFF },
    { 0x128, 136, 379, 24, -79, 96, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006158[] = {
    { 0x160, 422, 372, 29, 78, 96, 0xFF },
    { 0x178, 422, 372, 29, 78, 96, 0xFF },
    { 0x112, 422, 372, 29, 78, 96, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006178[] = {
    { 0x17F, -8, 142, 36, -20, 120, 0xFF },
    { 0x167, -8, 142, 36, -20, 120, 0xFF },
    { 0x110, -8, 142, 36, -20, 120, 0xFF },
    { 0x61, 940, 510, 36, -20, 120, 0xFF },
    { 0x35, 940, 510, 36, -20, 120, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0061AC[] = {
    { 0x180, 35, 251, -30, -98, 75, 0xFF },
    { 0x165, 35, 251, -30, -98, 75, 0xFF },
    { 0x139, 35, 251, -30, -98, 75, 0xFF },
    { 0xF7, 35, 251, -30, -98, 75, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0061D4[] = {
    { 0x8D, 54, 565, 116, 51, 1, 0xFF },
    { 0x13, 54, 565, 116, 51, 1, 0xFF },
    { 0xC1, 54, 565, 116, 51, 1, 0xFF },
    { 0xA3, 54, 565, 116, 51, 1, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0061FC[] = {
    { 0x185, 258, 234, 17, 17, 125, 0xFF },
    { 0x154, 258, 234, 17, 17, 125, 0xFF },
    { 0x147, 258, 234, 17, 17, 125, 0xFF },
    { 0x126, 258, 234, 17, 17, 125, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006224[] = {
    { 0x0D, 79, 25, -121, -39, 0, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006230[] = {
    { 0x166, 422, 372, 35, 63, -105, 0xFF },
    { 0xF6, 422, 372, 35, 63, -105, 0xFF },
    { 0x150, 422, 372, 35, 63, -105, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006250[] = {
    { 0x161, 422, 293, 84, 82, 50, 0xFF },
    { 0x148, 422, 293, 84, 82, 50, 0xFF },
    { 0x125, 422, 293, 84, 82, 50, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006270[] = {
    { 0x162, 422, 293, 99, 27, -75, 0xFF },
    { 0x101, 422, 293, 99, 27, -75, 0xFF },
    { 0x14B, 422, 293, 99, 27, -75, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006290[] = {
    { 0x156, 511, 192, -119, 42, -15, 0xFF },
    { 0x13F, 511, 192, -119, 42, -15, 0xFF },
    { 0x100, 511, 192, -119, 42, -15, 0xFF },
    { 0x116, 511, 192, -119, 42, -15, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0062B8[] = {
    { 0x155, 439, 210, 53, 74, 89, 0xFF },
    { 0x149, 439, 210, 53, 74, 89, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0062CC[] = {
    { 0x12F, 522, 435, 1, 67, -108, 0xFF },
    { 0x14C, 522, 435, 1, 67, -108, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0062E0[] = {
    { 0x1A, 1268, 152, -55, -94, -65, 0xFF },
    { 0xD2, 1220, 152, -55, -94, -65, 0xFF },
    { 0x104, 315, -30, -55, -94, -65, 0xFF },
    { 0x2C, 1220, 152, -55, -94, -65, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006308[] = {
    { 0x144, 523, 435, -44, 73, 94, 0xFF },
    { 0x12C, 523, 435, -44, 73, 94, 0xFF },
    { 0x10D, 523, 435, -44, 73, 94, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006328[] = {
    { 0x121, 482, 506, 92, 88, 5, 0xFF },
    { 0x143, 482, 506, 92, 88, 5, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00633C[] = {
    { 0x135, 309, 435, 20, -93, -85, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006348[] = {
    { 0x123, 342, 507, 101, -45, -62, 0xFF },
    { 0x141, 342, 507, 101, -45, -62, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00635C[] = {
    { 0x4E, 122, 839, 73, 104, 0, 0xFF },
    { 0x10, 122, 839, 73, 104, 0, 0xFF },
    { 0xBE, 122, 839, 73, 104, 0, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00637C[] = {
    { 0x21, 316, 203, -16, -60, -111, 0xFF },
    { 0xB2, 316, 203, -16, -60, -111, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006390[] = {
    { 0x184, 134, 41, -11, -48, -117, 0xFF },
    { 0x146, 134, 41, -11, -48, -117, 0xFF },
    { 0x12B, 134, 41, -11, -48, -117, 0xFF },
    { 0x103, 134, 41, -11, -48, -117, 0xFF },
    { 0x16F, 134, 41, -11, -48, -117, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0063C4[] = {
    { 0x174, 258, 234, 17, 17, -125, 0xFF },
    { 0x16D, 258, 234, 17, 17, -125, 0xFF },
    { 0x13C, 258, 234, 17, 17, -125, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0063E4[] = {
    { 0x145, 354, 49, -62, -42, -103, 0xFF },
    { 0x11F, 354, 49, -62, -42, -103, 0xFF },
    { 0x102, 354, 49, -62, -42, -103, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006404[] = {
    { 0x13D, 440, 210, 53, 74, -89, 0xFF },
    { 0x11E, 440, 210, 53, 74, -89, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006418[] = {
    { 0x122, 342, 507, 93, -17, 85, 0xFF },
    { 0x142, 342, 507, 93, -17, 85, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00642C[] = {
    { 0x13A, 309, 435, -17, -86, 91, 0xFF },
    { 0xFA, 309, 435, -17, -86, 91, 0xFF },
    { 0x12D, 309, 435, -17, -86, 91, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00644C[] = {
    { 0x133, 136, 380, 25, -114, 51, 0xFF },
    { 0x11A, 136, 380, 25, -114, 51, 0xFF },
    { 0xF9, 136, 380, 25, -114, 51, 0xFF },
    { 0x18C, 136, 380, 25, -114, 51, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006474[] = {
    { 0x173, 422, 372, 29, 78, -96, 0xFF },
    { 0x170, 422, 372, 29, 78, -96, 0xFF },
    { 0x136, 422, 372, 29, 78, -96, 0xFF },
    { 0x12E, 422, 372, 29, 78, -96, 0xFF },
    { 0x10E, 422, 372, 29, 78, -96, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0064A8[] = {
    { 0x171, 136, 379, 24, -79, -96, 0xFF },
    { 0x132, 136, 379, 24, -79, -96, 0xFF },
    { 0x175, 136, 379, 24, -79, -96, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0064C8[] = {
    { 0x176, 35, 251, -29, -98, -75, 0xFF },
    { 0x119, 35, 251, -29, -98, -75, 0xFF },
    { 0x134, 35, 251, -29, -98, -75, 0xFF },
    { 0x16E, 35, 251, -29, -98, -75, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0064F0[] = {
    { 0x15C, 465, 169, -103, 75, 0, 0xFF },
    { 0xFF, 465, 169, -103, 75, 0, 0xFF },
    { 0x115, 465, 169, -103, 75, 0, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006510[] = {
    { 0x159, 422, 372, 35, 63, 104, 0xFF },
    { 0x129, 422, 372, 35, 63, 104, 0xFF },
    { 0xFB, 422, 372, 35, 63, 104, 0xFF },
    { 0x18D, 422, 372, 35, 63, 104, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006538[] = {
    { 0x172, 422, 293, 84, 81, -50, 0xFF },
    { 0x13B, 422, 293, 84, 81, -50, 0xFF },
    { 0x124, 422, 293, 84, 81, -50, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006558[] = {
    { 0x183, -8, 142, 36, -18, -121, 0xFF },
    { 0x11C, -8, 142, 36, -18, -121, 0xFF },
    { 0x93, 940, 510, 36, -18, -121, 0xFF },
    { 0x1E, 940, 510, 36, -18, -121, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006580[] = {
    { 0xD3, 1008, 188, 3, -86, -94, 0xFF },
    { 0x12A, 71, -13, 3, -86, -94, 0xFF },
    { 0x37, 1008, 139, 3, -86, -94, 0xFF },
    { 0x1D, 1008, 139, 3, -86, -94, 0xFF },
    { 0x109, 71, -13, 3, -86, -94, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0065B4[] = {
    { 0x8C, 47, 296, 71, 105, 2, 0xFF },
    { 0x04, 4, 1, 71, 105, 2, 0xFF },
    { 0x3A, 47, 296, 71, 105, 2, 0xFF },
    { 0x2E, 47, 296, 71, 105, 2, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0065DC[] = {
    { 0x15A, 422, 293, 100, 27, 73, 0xFF },
    { 0x127, 422, 293, 100, 27, 73, 0xFF },
    { 0x17A, 422, 293, 100, 27, 73, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0065FC[] = {
    { 0xFD, 511, 192, -119, 42, 14, 0xFF },
    { 0x120, 511, 192, -119, 42, 14, 0xFF },
    { 0x15B, 511, 192, -119, 42, 14, 0xFF },
    { 0x17B, 511, 192, -119, 42, 14, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006624[] = {
    { 0xFE, 432, 31, -102, -42, -64, 0xFF },
    { 0x11D, 432, 31, -102, -42, -64, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006638[] = {
    { 0x18A, -3, 253, 110, 41, -49, 0xFF },
    { 0x11B, -3, 253, 110, 41, -49, 0xFF },
    { 0x94, 944, 777, 110, 41, -49, 0xFF },
    { 0x6E, 944, 777, 110, 41, -49, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006660[] = {
    { 0x18B, 58, 321, 28, -93, 82, 0xFF },
    { 0x158, 58, 321, 28, -93, 82, 0xFF },
    { 0x118, 58, 321, 28, -93, 82, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006680[] = {
    { 0x193, 2042, 129, -60, -112, 0, 0xFF },
    { 0x0C, 29, 116, -60, -112, 0, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006694[] = {
    { 0x53, 446, 1401, 38, 45, 113, 0xFF },
    { 0xB7, 429, 1401, 38, 45, 113, 0xFF },
    { 0xD7, 429, 1401, 38, 45, 113, 0xFF },
    { 0x89, 446, 1401, 38, 45, 113, 0xFF },
    { 0xAE, 446, 1336, 38, 45, 113, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0066C8[] = {
    { 0xD8, 430, 1401, 38, 67, -101, 0xFF },
    { 0xB9, 430, 1401, 38, 67, -101, 0xFF },
    { 0x51, 446, 1401, 38, 67, -101, 0xFF },
    { 0xA8, 446, 1401, 38, 67, -101, 0xFF },
    { 0xAD, 446, 1336, 38, 67, -101, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0066FC[] = {
    { 0x8A, 374, 1525, 127, -3, 0, 0xFF },
    { 0xA6, 374, 1525, 127, -3, 0, 0xFF },
    { 0xAF, 374, 1448, 127, -3, 0, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00671C[] = {
    { 0x52, 279, 1352, -12, -106, 69, 0xFF },
    { 0x86, 279, 1352, -12, -106, 69, 0xFF },
    { 0xAB, 279, 1352, -12, -106, 69, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00673C[] = {
    { 0xA7, 279, 1352, 16, -87, -91, 0xFF },
    { 0x4F, 279, 1352, 16, -87, -91, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006750[] = {
    { 0x6A, 296, 1200, -29, -111, -55, 0xFF },
    { 0x70, 296, 1200, -29, -111, -55, 0xFF },
    { 0xAC, 307, 1200, -29, -111, -55, 0xFF },
    { 0x50, 307, 1200, -29, -111, -55, 0xFF },
    { 0xDB, 296, 1200, -29, -111, -55, 0xFF },
    { 0x88, 307, 1200, -29, -111, -55, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00678C[] = {
    { 0x18E, 1290, 90, -11, 57, -113, 0xFF },
    { 0x0E, 114, 116, -11, 57, -113, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0067A0[] = {
    { 0x190, 1028, 595, 75, 103, 0, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0067AC[] = {
    { 0x91, 500, 675, 46, 17, -117, 0xFF },
    { 0x82, 500, 675, 46, 17, -117, 0xFF },
    { 0x15, 500, 675, 46, 17, -117, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0067CC[] = {
    { 0xDA, 428, 767, 43, 47, -110, 0xFF },
    { 0x9D, 428, 767, 43, 47, -110, 0xFF },
    { 0x7F, 428, 767, 43, 47, -110, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0067EC[] = {
    { 0x9A, 299, 496, -15, -16, -125, 0xFF },
    { 0x81, 299, 496, -15, -16, -125, 0xFF },
    { 0x18, 299, 496, -15, -16, -125, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00680C[] = {
    { 0xD9, 246, 785, 19, -72, -103, 0xFF },
    { 0x6C, 246, 785, 19, -72, -103, 0xFF },
    { 0x9B, 246, 785, 19, -72, -103, 0xFF },
    { 0x80, 246, 785, 19, -72, -103, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006834[] = {
    { 0xD0, 458, 906, 112, 37, -47, 0xFF },
    { 0xB8, 458, 906, 112, 37, -47, 0xFF },
    { 0x98, 458, 906, 112, 37, -47, 0xFF },
    { 0x17, 458, 906, 112, 37, -47, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00685C[] = {
    { 0x9C, 159, 624, 7, -103, -73, 0xFF },
    { 0x85, 159, 624, 7, -103, -73, 0xFF },
    { 0x14, 159, 624, 7, -103, -73, 0xFF },
    { 0xC0, 159, 624, 7, -103, -73, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006884[] = {
    { 0x138, 58, 321, 29, -93, -82, 0xFF },
    { 0xF5, 58, 321, 29, -93, -82, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006898[] = {
    { 0x90, 695, 762, -9, 69, -106, 0xFF },
    { 0x16, 695, 762, -9, 69, -106, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0068AC[] = {
    { 0x95, 853, 884, -5, 127, 0, 0xFF },
    { 0x5F, 853, 884, -5, 127, 0, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0068C0[] = {
    { 0x96, 602, 1011, 4, 127, 0, 0xFF },
    { 0x45, 602, 1011, 4, 127, 0, 0xFF },
    { 0x68, 602, 1011, 4, 127, 0, 0xFF },
    { 0x2F, 602, 1011, 4, 127, 0, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0068E8[] = {
    { 0x14A, 257, 291, -20, 125, -1, 0xFF },
    { 0x17C, 257, 291, -20, 125, -1, 0xFF },
    { 0xA9, 1170, 870, -20, 125, -1, 0xFF },
    { 0x15D, 257, 291, -20, 125, -1, 0xFF },
    { 0x6D, 1170, 870, -20, 125, -1, 0xFF },
    { 0x117, 257, 291, -20, 125, -1, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006924[] = {
    { 0x92, 690, 246, -15, -49, -116, 0xFF },
    { 0x31, 690, 246, -15, -49, -116, 0xFF },
    { 0x1F, 690, 246, -15, -49, -116, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006944[] = {
    { 0x8F, 466, 395, -26, -18, -123, 0xFF },
    { 0x19, 466, 395, -26, -18, -123, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006958[] = {
    { 0x54, 307, 1200, -30, -94, 80, 0xFF },
    { 0xD6, 296, 1200, -30, -94, 80, 0xFF },
    { 0x71, 296, 1200, -30, -94, 80, 0xFF },
    { 0x87, 307, 1200, -30, -94, 80, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006980[] = {
    { 0x6B, 243, 903, 55, -115, 4, 0xFF },
    { 0xCF, 243, 903, 55, -115, 4, 0xFF },
    { 0xB6, 243, 903, 55, -115, 4, 0xFF },
    { 0x6F, 243, 903, 55, -115, 4, 0xFF },
    { 0x22, 243, 903, 55, -115, 4, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0069B4[] = {
    { 0x74, 374, 1525, 127, -4, -2, 0xFF },
    { 0x46, 374, 1448, 127, -4, -2, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0069C8[] = {
    { 0x73, 279, 1352, 13, -88, -91, 0xFF },
    { 0x55, 279, 1352, 13, -88, -91, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0069DC[] = {
    { 0xDD, 430, 1401, 37, 47, -112, 0xFF },
    { 0xB3, 430, 1401, 37, 47, -112, 0xFF },
    { 0x47, 446, 1336, 37, 47, -112, 0xFF },
    { 0xBA, 446, 1401, 37, 47, -112, 0xFF },
    { 0x57, 446, 1401, 37, 47, -112, 0xFF },
    { 0x84, 446, 1401, 37, 47, -112, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006A18[] = {
    { 0x72, 279, 1352, -5, -106, 70, 0xFF },
    { 0x58, 279, 1352, -5, -106, 70, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006A2C[] = {
    { 0xDC, 429, 1401, 40, 67, 100, 0xFF },
    { 0xC3, 429, 1401, 40, 67, 100, 0xFF },
    { 0x83, 446, 1401, 40, 67, 100, 0xFF },
    { 0x59, 446, 1401, 40, 67, 100, 0xFF },
    { 0x48, 446, 1336, 40, 67, 100, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006A60[] = {
    { 0x194, 2267, 474, 33, -89, 85, 0xFF },
    { 0x192, 219, 474, 33, -89, 85, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006A74[] = {
    { 0x1C, 1442, 294, -120, -41, 1, 0xFF },
    { 0xFC, 508, 35, -120, -41, 1, 0xFF },
    { 0x140, 508, 35, -120, -41, 1, 0xFF },
    { 0x16C, 508, 35, -120, -41, 1, 0xFF },
    { 0x7D, 1442, 294, -120, -41, 1, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006AA8[] = {
    { 0x75, 307, 1200, -41, -102, -63, 0xFF },
    { 0xBB, 307, 1200, -41, -102, -63, 0xFF },
    { 0x56, 307, 1200, -41, -102, -63, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006AC8[] = {
    { 0xC5, 296, 1200, -16, -107, 67, 0xFF },
    { 0x76, 307, 1200, -16, -107, 67, 0xFF },
    { 0x5A, 307, 1200, -16, -107, 67, 0xFF },
    { 0x69, 296, 1200, -16, -107, 67, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006AF0[] = {
    { 0xC4, 428, 767, 40, 54, 107, 0xFF },
    { 0x64, 428, 767, 40, 54, 107, 0xFF },
    { 0x27, 428, 767, 40, 54, 107, 0xFF },
    { 0xDF, 428, 767, 40, 54, 107, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006B18[] = {
    { 0xC2, 246, 785, 17, -72, 103, 0xFF },
    { 0x63, 246, 785, 17, -72, 103, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006B2C[] = {
    { 0xB4, 243, 904, 55, -114, -6, 0xFF },
    { 0x77, 253, 904, 55, -114, -6, 0xFF },
    { 0x66, 243, 904, 55, -114, -6, 0xFF },
    { 0xBC, 253, 904, 55, -114, -6, 0xFF },
    { 0x4D, 243, 904, 55, -114, -6, 0xFF },
    { 0x11, 243, 904, 55, -114, -6, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006B68[] = {
    { 0xDE, 458, 906, 112, 38, 47, 0xFF },
    { 0xB5, 458, 906, 112, 38, 47, 0xFF },
    { 0x67, 458, 906, 112, 38, 47, 0xFF },
    { 0x3F, 458, 906, 112, 38, 47, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006B90[] = {
    { 0x5B, 695, 763, -9, 68, 107, 0xFF },
    { 0x40, 695, 763, -9, 68, 107, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006BA4[] = {
    { 0x137, -3, 253, 110, 40, 50, 0xFF },
    { 0xAA, 944, 777, 110, 40, 50, 0xFF },
    { 0x10F, -3, 253, 110, 40, 50, 0xFF },
    { 0x5E, 944, 777, 110, 40, 50, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006BCC[] = {
    { 0x5D, 500, 675, 45, 22, 117, 0xFF },
    { 0x41, 500, 675, 45, 22, 117, 0xFF },
    { 0x28, 500, 675, 45, 22, 117, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006BEC[] = {
    { 0xC9, 735, 16, -20, -125, 1, 0xFF },
    { 0x78, 735, 16, -20, -125, 1, 0xFF },
    { 0x30, 735, 16, -20, -125, 1, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006C0C[] = {
    { 0xCD, 299, 496, -19, -13, 125, 0xFF },
    { 0x62, 299, 496, -19, -13, 125, 0xFF },
    { 0x23, 299, 496, -19, -13, 125, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006C2C[] = {
    { 0xCC, 159, 624, 3, -105, 72, 0xFF },
    { 0x65, 159, 624, 3, -105, 72, 0xFF },
    { 0x12, 159, 624, 3, -105, 72, 0xFF },
    { 0xA1, 159, 624, 3, -105, 72, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006C54[] = {
    { 0x7A, 690, 246, -14, -48, 117, 0xFF },
    { 0x60, 690, 246, -14, -48, 117, 0xFF },
    { 0x34, 690, 246, -14, -48, 117, 0xFF },
    { 0xA0, 690, 246, -14, -48, 117, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006C7C[] = {
    { 0x5C, 466, 396, -30, -18, 122, 0xFF },
    { 0x3E, 466, 396, -30, -18, 122, 0xFF },
    { 0x24, 466, 396, -30, -18, 122, 0xFF },
    { 0x9F, 466, 396, -30, -18, 122, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006CA4[] = {
    { 0x42, 93, -193, 9, 29, 123, 0xFF },
    { 0x00, 91, -7, 9, 29, 123, 0xFF },
    { 0xF1, 371, 687, 9, 29, 123, 0xFF },
    { 0xE1, 767, 609, 9, 29, 123, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006CCC[] = {
    { 0xE6, 330, 325, -2, -67, 108, 0xFF },
    { 0xE2, 645, 360, -2, -67, 108, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006CE0[] = {
    { 0x01, 125, 20, 30, 25, 121, 0xFF },
    { 0xE0, 483, 576, 30, 25, 121, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006CF4[] = {
    { 0xEF, 124, 469, 87, 11, 91, 0xFF },
    { 0x0A, 179, 33, 87, 11, 91, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D08[] = {
    { 0xED, 124, 469, 87, 11, -92, 0xFF },
    { 0x08, 179, 33, 87, 11, -92, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D1C[] = {
    { 0x06, 141, 77, 85, 94, 0, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D28[] = {
    { 0x02, 79, 78, 8, 127, -1, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D34[] = {
    { 0xE8, 196, 146, -4, -127, -1, 0xFF },
    { 0xEE, 534, 279, -4, -127, -1, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D48[] = {
    { 0xEC, 277, 211, 34, -97, -75, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D54[] = {
    { 0xF2, 79, 350, 121, -40, 0, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D60[] = {
    { 0xF0, 277, 211, 34, -97, 74, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D6C[] = {
    { 0xEA, 331, 325, -1, -67, -108, 0xFF },
    { 0xE3, 645, 360, -1, -67, -108, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D80[] = {
    { 0xE7, 953, 417, -41, -120, 2, 0xFF },
    { 0x7B, 431, -78, -41, -120, 2, 0xFF },
    { 0x38, 431, -78, -41, -120, 2, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006DA0[] = {
    { 0xD4, 1007, 29, -23, -125, 1, 0xFF },
    { 0xCB, 1007, -37, -23, -125, 1, 0xFF },
    { 0xC8, 1007, 29, -23, -125, 1, 0xFF },
    { 0x36, 1007, -37, -23, -125, 1, 0xFF },
    { 0x2A, 1007, 29, -23, -125, 1, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006DD4[] = {
    { 0x8E, 171, 291, 68, 57, -91, 0xFF },
    { 0x26, 171, 291, 68, 57, -91, 0xFF },
    { 0xBF, 171, 291, 68, 57, -91, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006DF4[] = {
    { 0x09, 91, -7, 11, 30, -123, 0xFF },
    { 0xE4, 767, 609, 11, 30, -123, 0xFF },
    { 0x4B, 93, -193, 11, 30, -123, 0xFF },
    { 0xF3, 371, 687, 11, 30, -123, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006E1C[] = {
    { 0xE5, 486, 576, 29, 26, -121, 0xFF },
    { 0x07, 125, 20, 29, 26, -121, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006E30[] = {
    { 0xE9, 1052, 627, 2, -79, -99, 0xFF },
    { 0x32, 374, 35, 2, -79, -99, 0xFF },
    { 0x20, 374, 35, 2, -79, -99, 0xFF },
    { 0x99, 374, 35, 2, -79, -99, 0xFF },
    { 0xB1, 374, 35, 2, -79, -99, 0xFF },
    { 0x49, 389, 35, 2, -79, -99, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006E6C[] = {
    { 0x03, 57, -59, 52, 37, -110, 0xFF },
    { 0x2D, 191, 145, 52, 37, -110, 0xFF },
    { 0xB0, 191, 145, 52, 37, -110, 0xFF },
    { 0x4A, 198, 145, 52, 37, -110, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006E94[] = {
    { 0x05, 46, 41, 27, 124, -1, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006EA0[] = {
    { 0xA5, 191, 143, 50, 37, 111, 0xFF },
    { 0x43, 198, 143, 50, 37, 111, 0xFF },
    { 0x39, 191, 143, 50, 37, 111, 0xFF },
    { 0x0B, 58, -59, 50, 37, 111, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006EC8[] = {
    { 0xEB, 1051, 625, 0, -80, 99, 0xFF },
    { 0x9E, 374, 35, 0, -80, 99, 0xFF },
    { 0x79, 374, 35, 0, -80, 99, 0xFF },
    { 0x44, 389, 35, 0, -80, 99, 0xFF },
    { 0x3C, 374, 35, 0, -80, 99, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006EFC[] = {
    { 0xCE, 171, 291, 66, 59, 91, 0xFF },
    { 0x8B, 171, 291, 66, 59, 91, 0xFF },
    { 0x3B, 171, 291, 66, 59, 91, 0xFF },
    { 0xA2, 171, 291, 66, 59, 91, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006F24[] = {
    { 0xD5, 316, 203, -18, -60, 111, 0xFF },
    { 0xA4, 316, 203, -18, -60, 111, 0xFF },
    { 0x3D, 316, 203, -18, -60, 111, 0xFF },
    { 0x25, 316, 203, -18, -60, 111, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006F4C[] = {
    { 0x191, 1826, 474, 32, -88, -85, 0xFF },
};

Struct_800A57C0 gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006F58[] = {
    { 0xC7, 1220, 152, -54, -95, 64, 0xFF },
    { 0x7C, 1268, 152, -54, -95, 64, 0xFF },
    { 0x106, 315, -30, -54, -95, 64, 0xFF },
    { 0x151, 315, -30, -54, -95, 64, 0xFF },
    { 0x2B, 1220, 152, -54, -95, 64, 0xFF },
};

Struct_800A598C gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_006F8C[] = {
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_005F3C),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005400),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_005F3C,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005400
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_005F64),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005414),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_005F64,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005414
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_005F84),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005434),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_005F84,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005434
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_005FA4),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005448),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_005FA4,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005448
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_005FB8),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_00545C),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_005FB8,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_00545C
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_005FCC),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005468),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_005FCC,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005468
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_005FEC),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005474),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_005FEC,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005474
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00600C),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005494),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00600C,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005494
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00602C),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0054B4),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00602C,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0054B4
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00604C),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0054C8),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00604C,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0054C8
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006080),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0054E8),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006080,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0054E8
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0060A0),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0054FC),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0060A0,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0054FC
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0060C8),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005530),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0060C8,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005530
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0060F0),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005544),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0060F0,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005544
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006118),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005550),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006118,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005550
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006138),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005570),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006138,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005570
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006158),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005590),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006158,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005590
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006178),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0055A4),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006178,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0055A4
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0061AC),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0055C4),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0061AC,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0055C4
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0061D4),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0055D8),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0061D4,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0055D8
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0061FC),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0055EC),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0061FC,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0055EC
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006224),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005600),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006224,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005600
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006230),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_00560C),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006230,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_00560C
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006250),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005620),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006250,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005620
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006270),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005634),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006270,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005634
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006290),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005648),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006290,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005648
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0062B8),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005668),
        2, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0062B8,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005668
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0062CC),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005688),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0062CC,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005688
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0062E0),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_00569C),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0062E0,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_00569C
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006308),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0056BC),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006308,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0056BC
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006328),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0056D0),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006328,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0056D0
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00633C),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0056DC),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00633C,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0056DC
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006348),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0056F0),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006348,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0056F0
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00635C),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0056FC),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00635C,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0056FC
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00637C),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_00571C),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00637C,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_00571C
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006390),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005730),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006390,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005730
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0063C4),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005744),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0063C4,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005744
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0063E4),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005758),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0063E4,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005758
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006404),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005778),
        2, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006404,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005778
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006418),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005798),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006418,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005798
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00642C),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0057A4),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00642C,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0057A4
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00644C),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0057B8),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00644C,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0057B8
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006474),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0057D8),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006474,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0057D8
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0064A8),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0057EC),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0064A8,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0057EC
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0064C8),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_00580C),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0064C8,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_00580C
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0064F0),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005820),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0064F0,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005820
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006510),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005840),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006510,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005840
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006538),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005854),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006538,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005854
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006558),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005868),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006558,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005868
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006580),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005888),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006580,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005888
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0065B4),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0058A8),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0065B4,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0058A8
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0065DC),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0058B4),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0065DC,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0058B4
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0065FC),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0058C8),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0065FC,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0058C8
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006624),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0058E8),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006624,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0058E8
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006638),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005908),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006638,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005908
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006660),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005928),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006660,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005928
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006680),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_00593C),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006680,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_00593C
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006694),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005950),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006694,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005950
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0066C8),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_00595C),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0066C8,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_00595C
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0066FC),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005968),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0066FC,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005968
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00671C),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005974),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00671C,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005974
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00673C),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005988),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00673C,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005988
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006750),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_00599C),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006750,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_00599C
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00678C),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0059A8),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00678C,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0059A8
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0067A0),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0059BC),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0067A0,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0059BC
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0067AC),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0059C8),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0067AC,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0059C8
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0067CC),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0059DC),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0067CC,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0059DC
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0067EC),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0059F0),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0067EC,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_0059F0
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00680C),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005A04),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00680C,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005A04
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006834),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005A18),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006834,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005A18
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00685C),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005A2C),
        2, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_00685C,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005A2C
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006884),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005A4C),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006884,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005A4C
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006898),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005A60),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006898,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005A60
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0068AC),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005A80),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0068AC,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005A80
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0068C0),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005AB4),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0068C0,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005AB4
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0068E8),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005ADC),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0068E8,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005ADC
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006924),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005AFC),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006924,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005AFC
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006944),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B10),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006944,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B10
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006958),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B24),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006958,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B24
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006980),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B30),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006980,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B30
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0069B4),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B44),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0069B4,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B44
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0069C8),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B50),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0069C8,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B50
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0069DC),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B64),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_0069DC,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B64
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006A18),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B70),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006A18,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B70
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006A2C),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B84),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006A2C,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B84
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006A60),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B90),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006A60,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005B90
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006A74),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005BA4),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006A74,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005BA4
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006AA8),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005BC4),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006AA8,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005BC4
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006AC8),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005BD0),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006AC8,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005BD0
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006AF0),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005BDC),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006AF0,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005BDC
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006B18),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005BF0),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006B18,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005BF0
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006B2C),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005C04),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006B2C,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005C04
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006B68),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005C18),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006B68,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005C18
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006B90),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005C2C),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006B90,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005C2C
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006BA4),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005C4C),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006BA4,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005C4C
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006BCC),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005C6C),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006BCC,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005C6C
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006BEC),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005C80),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006BEC,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005C80
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006C0C),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005C94),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006C0C,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005C94
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006C2C),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005CA8),
        2, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006C2C,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005CA8
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006C54),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005CC8),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006C54,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005CC8
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006C7C),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005CDC),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006C7C,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005CDC
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006CA4),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005CF0),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006CA4,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005CF0
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006CCC),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D04),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006CCC,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D04
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006CE0),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D18),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006CE0,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D18
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006CF4),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D24),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006CF4,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D24
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D08),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D30),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D08,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D30
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D1C),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D3C),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D1C,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D3C
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D28),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D48),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D28,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D48
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D34),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D54),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D34,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D54
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D48),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D68),
        2, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D48,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D68
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D54),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D90),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D54,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005D90
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D60),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005DB0),
        2, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D60,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005DB0
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D6C),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005DD8),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D6C,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005DD8
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D80),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005DEC),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006D80,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005DEC
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006DA0),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005E00),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006DA0,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005E00
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006DD4),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005E20),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006DD4,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005E20
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006DF4),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005E48),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006DF4,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005E48
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006E1C),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005E5C),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006E1C,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005E5C
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006E30),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005E68),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006E30,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005E68
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006E6C),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005E7C),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006E6C,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005E7C
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006E94),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005E90),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006E94,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005E90
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006EA0),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005EA4),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006EA0,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005EA4
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006EC8),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005EB8),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006EC8,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005EB8
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006EFC),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005ECC),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006EFC,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005ECC
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006F24),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005EF4),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006F24,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005EF4
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006F4C),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005F08),
        1, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006F4C,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005F08
     },
    { 
        ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006F58),
    ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005F1C),
        0, gChildEponaSkelLimbsLimb_0077D8Struct_800A57C0_006F58,
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_2_005F1C
     },
};

Struct_800A5E28 gChildEponaSkelLimbsLimb_0077D8Struct_800A5E28_00777C = { 
    406, ARRAY_COUNTU(gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_006F8C),
    gChildEponaSkelLimbsLimb_0077D8Struct_800A598C_006F8C, gChildEponaSkelLimbsLimb_0077D8SkinLimbDL_007B30
};

SkinLimb gChildEponaSkelLimbsLimb_007788 = { 
    { 0, 5120, -1965 }, 0x01, LIMB_DONE,
    0x00, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_007798 = { 
    { 0, 505, -1338 }, 0x02, 0x05,
    0x00, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_0077A8 = { 
    { 0, 0, 0 }, 0x03, LIMB_DONE,
    0x05, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_0077B8 = { 
    { 1217, 0, 0 }, 0x04, LIMB_DONE,
    0x05, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_0077C8 = { 
    { 2387, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x00, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_0077D8 = { 
    { -3, 171, 1984 }, LIMB_DONE, 0x06,
    0x04, &gChildEponaSkelLimbsLimb_0077D8Struct_800A5E28_00777C
};

SkinLimb gChildEponaSkelLimbsLimb_0077E8 = { 
    { 0, 68, 710 }, 0x07, 0x1E,
    0x00, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_0077F8 = { 
    { 0, 0, 0 }, 0x08, LIMB_DONE,
    0x05, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_007808 = { 
    { 1681, 0, 0 }, 0x09, LIMB_DONE,
    0x05, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_007818 = { 
    { 2122, 0, 0 }, 0x0A, 0x0E,
    0x05, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_007828 = { 
    { 1406, 0, 0 }, 0x0B, LIMB_DONE,
    0x05, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_007838 = { 
    { 1304, 0, 0 }, 0x0C, LIMB_DONE,
    0x05, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_007848 = { 
    { 1979, 0, 0 }, LIMB_DONE, 0x0D,
    0x00, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_007858 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gChildEponaSkelLimbsLimb_007858DL_000C70
};

SkinLimb gChildEponaSkelLimbsLimb_007868 = { 
    { 1338, 341, 756 }, 0x0F, 0x16,
    0x00, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_007878 = { 
    { 0, 0, 0 }, 0x10, LIMB_DONE,
    0x05, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_007888 = { 
    { 605, 0, 0 }, 0x11, LIMB_DONE,
    0x05, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_007898 = { 
    { 2419, 0, 0 }, 0x12, LIMB_DONE,
    0x05, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_0078A8 = { 
    { 1489, 0, 0 }, 0x13, 0x15,
    0x05, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_0078B8 = { 
    { 660, 0, 0 }, LIMB_DONE, 0x14,
    0x00, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_0078C8 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gChildEponaSkelLimbsLimb_0078C8DL_001298
};

SkinLimb gChildEponaSkelLimbsLimb_0078D8 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gChildEponaSkelLimbsLimb_0078D8DL_0011E8
};

SkinLimb gChildEponaSkelLimbsLimb_0078E8 = { 
    { 1338, 341, -756 }, 0x17, LIMB_DONE,
    0x00, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_0078F8 = { 
    { 0, 0, 0 }, 0x18, LIMB_DONE,
    0x05, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_007908 = { 
    { 605, 0, 0 }, 0x19, LIMB_DONE,
    0x05, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_007918 = { 
    { 2419, 0, 0 }, 0x1A, LIMB_DONE,
    0x05, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_007928 = { 
    { 1489, 0, 0 }, 0x1B, 0x1D,
    0x05, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_007938 = { 
    { 660, 0, 0 }, LIMB_DONE, 0x1C,
    0x00, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_007948 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gChildEponaSkelLimbsLimb_007948DL_0013A8
};

SkinLimb gChildEponaSkelLimbsLimb_007958 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gChildEponaSkelLimbsLimb_007958DL_0014B8
};

SkinLimb gChildEponaSkelLimbsLimb_007968 = { 
    { 655, -151, -593 }, 0x1F, 0x26,
    0x00, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_007978 = { 
    { 0, 0, 0 }, 0x20, LIMB_DONE,
    0x05, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_007988 = { 
    { 1123, 0, 0 }, 0x21, LIMB_DONE,
    0x05, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_007998 = { 
    { 2330, 0, 0 }, 0x22, LIMB_DONE,
    0x05, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_0079A8 = { 
    { 1605, 0, 0 }, 0x23, 0x25,
    0x05, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_0079B8 = { 
    { 598, 0, 0 }, LIMB_DONE, 0x24,
    0x00, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_0079C8 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gChildEponaSkelLimbsLimb_0079C8DL_0010D8
};

SkinLimb gChildEponaSkelLimbsLimb_0079D8 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gChildEponaSkelLimbsLimb_0079D8DL_001028
};

SkinLimb gChildEponaSkelLimbsLimb_0079E8 = { 
    { -655, -151, -593 }, 0x27, LIMB_DONE,
    0x00, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_0079F8 = { 
    { 0, 0, 0 }, 0x28, LIMB_DONE,
    0x05, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_007A08 = { 
    { 1123, 0, 0 }, 0x29, LIMB_DONE,
    0x05, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_007A18 = { 
    { 2330, 0, 0 }, 0x2A, LIMB_DONE,
    0x05, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_007A28 = { 
    { 1605, 0, 0 }, 0x2B, 0x2D,
    0x05, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_007A38 = { 
    { 598, 0, 0 }, LIMB_DONE, 0x2C,
    0x00, NULL
};

SkinLimb gChildEponaSkelLimbsLimb_007A48 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gChildEponaSkelLimbsLimb_007A48DL_001568
};

SkinLimb gChildEponaSkelLimbsLimb_007A58 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    0x0B, gChildEponaSkelLimbsLimb_007A58DL_001678
};

void* gChildEponaSkelLimbs[] = {
    &gChildEponaSkelLimbsLimb_007788,
    &gChildEponaSkelLimbsLimb_007798,
    &gChildEponaSkelLimbsLimb_0077A8,
    &gChildEponaSkelLimbsLimb_0077B8,
    &gChildEponaSkelLimbsLimb_0077C8,
    &gChildEponaSkelLimbsLimb_0077D8,
    &gChildEponaSkelLimbsLimb_0077E8,
    &gChildEponaSkelLimbsLimb_0077F8,
    &gChildEponaSkelLimbsLimb_007808,
    &gChildEponaSkelLimbsLimb_007818,
    &gChildEponaSkelLimbsLimb_007828,
    &gChildEponaSkelLimbsLimb_007838,
    &gChildEponaSkelLimbsLimb_007848,
    &gChildEponaSkelLimbsLimb_007858,
    &gChildEponaSkelLimbsLimb_007868,
    &gChildEponaSkelLimbsLimb_007878,
    &gChildEponaSkelLimbsLimb_007888,
    &gChildEponaSkelLimbsLimb_007898,
    &gChildEponaSkelLimbsLimb_0078A8,
    &gChildEponaSkelLimbsLimb_0078B8,
    &gChildEponaSkelLimbsLimb_0078C8,
    &gChildEponaSkelLimbsLimb_0078D8,
    &gChildEponaSkelLimbsLimb_0078E8,
    &gChildEponaSkelLimbsLimb_0078F8,
    &gChildEponaSkelLimbsLimb_007908,
    &gChildEponaSkelLimbsLimb_007918,
    &gChildEponaSkelLimbsLimb_007928,
    &gChildEponaSkelLimbsLimb_007938,
    &gChildEponaSkelLimbsLimb_007948,
    &gChildEponaSkelLimbsLimb_007958,
    &gChildEponaSkelLimbsLimb_007968,
    &gChildEponaSkelLimbsLimb_007978,
    &gChildEponaSkelLimbsLimb_007988,
    &gChildEponaSkelLimbsLimb_007998,
    &gChildEponaSkelLimbsLimb_0079A8,
    &gChildEponaSkelLimbsLimb_0079B8,
    &gChildEponaSkelLimbsLimb_0079C8,
    &gChildEponaSkelLimbsLimb_0079D8,
    &gChildEponaSkelLimbsLimb_0079E8,
    &gChildEponaSkelLimbsLimb_0079F8,
    &gChildEponaSkelLimbsLimb_007A08,
    &gChildEponaSkelLimbsLimb_007A18,
    &gChildEponaSkelLimbsLimb_007A28,
    &gChildEponaSkelLimbsLimb_007A38,
    &gChildEponaSkelLimbsLimb_007A48,
    &gChildEponaSkelLimbsLimb_007A58,
};

SkeletonHeader gChildEponaSkel = { 
    gChildEponaSkelLimbs, ARRAY_COUNT(gChildEponaSkelLimbs)
};

u8 object_horse_link_child_possiblePadding_007B28[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Gfx gChildEponaSkelLimbsLimb_0077D8SkinLimbDL_007B30[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_horse_link_childTex_002568, G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 4, 0, G_TX_MIRROR |
                         G_TX_CLAMP, G_TX_MIRROR | G_TX_CLAMP, 2, 2, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(0x08000000, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 2, 0, 8, 7, 6, 0),
    gsSP2Triangles(2, 7, 9, 0, 2, 5, 0, 0),
    gsSP2Triangles(6, 1, 10, 0, 6, 2, 1, 0),
    gsSP2Triangles(10, 8, 6, 0, 11, 0, 5, 0),
    gsSP2Triangles(9, 5, 2, 0, 5, 9, 3, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(15, 13, 12, 0, 5, 4, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_link_childTex_008320, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                         G_TX_CLAMP, G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(0x08000100, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(2, 3, 0, 0, 16, 9, 17, 0),
    gsSP2Triangles(4, 18, 0, 0, 19, 20, 21, 0),
    gsSP2Triangles(9, 8, 17, 0, 8, 22, 17, 0),
    gsSP2Triangles(8, 4, 22, 0, 19, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 28, 26, 0),
    gsSP2Triangles(17, 22, 29, 0, 30, 29, 22, 0),
    gsSP1Triangle(7, 6, 31, 0),
    gsSPVertex(0x08000300, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 0, 0, 0, 2, 8, 0),
    gsSP2Triangles(7, 1, 0, 0, 9, 10, 11, 0),
    gsSP2Triangles(4, 3, 0, 0, 12, 13, 14, 0),
    gsSP2Triangles(9, 11, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 15, 21, 16, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 15, 29, 0),
    gsSP1Triangle(28, 21, 15, 0),
    gsSPVertex(0x080004F0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 16, 0),
    gsSP2Triangles(12, 17, 13, 0, 12, 18, 17, 0),
    gsSP2Triangles(12, 15, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(20, 22, 23, 0, 19, 22, 20, 0),
    gsSP2Triangles(14, 21, 24, 0, 16, 12, 25, 0),
    gsSP2Triangles(23, 26, 20, 0, 19, 14, 13, 0),
    gsSP2Triangles(27, 28, 29, 0, 30, 16, 31, 0),
    gsSPVertex(0x080006F0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 4, 3, 0, 7, 6, 3, 0),
    gsSP2Triangles(8, 6, 7, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 12, 10, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0),
    gsSP2Triangles(3, 5, 20, 0, 5, 4, 21, 0),
    gsSP2Triangles(22, 17, 0, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 23, 27, 0, 28, 29, 30, 0),
    gsSP1Triangle(31, 30, 29, 0),
    gsSPVertex(0x080008F0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 1, 3, 0, 1, 5, 6, 0),
    gsSP2Triangles(1, 4, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(1, 6, 7, 0, 0, 10, 3, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 2, 9, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 15, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 6, 0, 24, 28, 29, 0),
    gsSP1Triangle(23, 28, 24, 0),
    gsSPVertex(0x08000AD0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(9, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 22, 21, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 29, 30, 0),
    gsSPVertex(0x08000CC0, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 2, 1, 9, 0),
    gsSP2Triangles(10, 11, 3, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 15, 13, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 18, 19, 0, 12, 14, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_link_childTex_002168, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(0x08000E00, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 10, 0),
    gsSP2Triangles(11, 7, 6, 0, 12, 3, 13, 0),
    gsSP2Triangles(3, 12, 14, 0, 15, 2, 16, 0),
    gsSP2Triangles(14, 16, 2, 0, 11, 6, 17, 0),
    gsSP2Triangles(18, 13, 15, 0, 5, 13, 3, 0),
    gsSP2Triangles(19, 10, 9, 0, 16, 18, 15, 0),
    gsSP2Triangles(18, 12, 13, 0, 18, 16, 12, 0),
    gsSP2Triangles(2, 15, 0, 0, 16, 14, 12, 0),
    gsSP1Triangle(7, 10, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_link_childTex_008120, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR |
                         G_TX_CLAMP, G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(0x08000F40, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 0, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 12, 0),
    gsSP2Triangles(13, 2, 1, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 16, 8, 10, 0),
    gsSP2Triangles(17, 20, 18, 0, 15, 21, 16, 0),
    gsSP2Triangles(22, 23, 24, 0, 6, 25, 7, 0),
    gsSP2Triangles(25, 26, 7, 0, 27, 3, 28, 0),
    gsSP2Triangles(10, 14, 16, 0, 18, 29, 8, 0),
    gsSPVertex(0x08001120, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 7, 6, 0),
    gsSP2Triangles(10, 7, 9, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 12, 11, 0, 15, 16, 17, 0),
    gsSP2Triangles(14, 18, 12, 0, 0, 19, 20, 0),
    gsSP2Triangles(21, 18, 14, 0, 22, 0, 20, 0),
    gsSP2Triangles(23, 18, 21, 0, 10, 24, 25, 0),
    gsSP2Triangles(26, 27, 16, 0, 23, 28, 18, 0),
    gsSP2Triangles(15, 17, 29, 0, 30, 31, 2, 0),
    gsSP1Triangle(26, 29, 28, 0),
    gsSPVertex(0x08001320, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 3, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(3, 8, 1, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 8, 15, 16, 0),
    gsSP2Triangles(8, 3, 15, 0, 17, 18, 16, 0),
    gsSP2Triangles(19, 11, 10, 0, 20, 19, 10, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 6, 0),
    gsSP2Triangles(13, 25, 24, 0, 3, 26, 15, 0),
    gsSP2Triangles(6, 5, 24, 0, 26, 18, 17, 0),
    gsSP2Triangles(26, 3, 4, 0, 23, 12, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 27, 12, 31, 0),
    gsSPVertex(0x08001520, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 3, 0, 2, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 4, 3, 0, 15, 16, 4, 0),
    gsSP2Triangles(17, 18, 19, 0, 15, 20, 16, 0),
    gsSP2Triangles(21, 1, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(9, 26, 10, 0, 14, 20, 15, 0),
    gsSP2Triangles(27, 28, 29, 0, 14, 24, 20, 0),
    gsSP2Triangles(8, 11, 6, 0, 30, 31, 27, 0),
    gsSPVertex(0x08001720, 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 5, 7, 0, 12, 5, 11, 0),
    gsSP2Triangles(13, 14, 15, 0, 12, 16, 5, 0),
    gsSP2Triangles(4, 17, 18, 0, 14, 19, 15, 0),
    gsSP2Triangles(12, 20, 16, 0, 14, 7, 19, 0),
    gsSP2Triangles(21, 22, 16, 0, 23, 22, 21, 0),
    gsSP2Triangles(24, 25, 10, 0, 5, 16, 22, 0),
    gsSP1Triangle(26, 27, 25, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_horse_link_childTex_001F68, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(0x080018E0, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 1, 4, 0, 3, 5, 0, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 3, 6, 0),
    gsSP1Triangle(6, 3, 2, 0),
    gsSPEndDisplayList(),
};

u64 object_horse_link_childTex_008120[] = {
#include "assets/objects/object_horse_link_child/object_horse_link_childTex_008120.rgba16.inc.c"
};

u64 object_horse_link_childTex_008320[] = {
#include "assets/objects/object_horse_link_child/object_horse_link_childTex_008320.rgba16.inc.c"
};

