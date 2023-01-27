#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_prescription.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

u64 object_gi_prescriptionTex_000000[] = {
#include "assets/objects/object_gi_prescription/object_gi_prescriptionTex_000000.ia8.inc.c"
};

Vtx object_gi_prescriptionVtx_000600[] = {
#include "assets/objects/object_gi_prescription/object_gi_prescriptionVtx_000600.vtx.inc"
};

Gfx gGiPrescriptionDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 1, 1, PRIM_LOD_FRAC, 1, COMBINED, 0, SHADE, 0, 1, 1,
                       PRIM_LOD_FRAC, 1),
    gsDPSetPrimColor(0, 0, 230, 220, 230, 255),
    gsDPSetEnvColor(110, 100, 120, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown11Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(object_gi_prescriptionVtx_000600, 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 6, 8, 0),
    gsSP2Triangles(1, 9, 10, 0, 2, 10, 11, 0),
    gsSP2Triangles(4, 11, 12, 0, 6, 12, 13, 0),
    gsSP2Triangles(9, 14, 15, 0, 10, 15, 16, 0),
    gsSP2Triangles(11, 16, 17, 0, 12, 17, 18, 0),
    gsSP2Triangles(14, 19, 20, 0, 15, 20, 21, 0),
    gsSP2Triangles(16, 21, 22, 0, 17, 22, 23, 0),
    gsSP2Triangles(19, 24, 25, 0, 20, 25, 26, 0),
    gsSP2Triangles(21, 26, 27, 0, 22, 27, 28, 0),
    gsSP2Triangles(2, 3, 0, 0, 4, 5, 3, 0),
    gsSP2Triangles(6, 7, 5, 0, 8, 29, 7, 0),
    gsSP2Triangles(10, 2, 1, 0, 11, 4, 2, 0),
    gsSP2Triangles(12, 6, 4, 0, 13, 8, 6, 0),
    gsSP2Triangles(15, 10, 9, 0, 16, 11, 10, 0),
    gsSP2Triangles(17, 12, 11, 0, 18, 13, 12, 0),
    gsSP2Triangles(20, 15, 14, 0, 21, 16, 15, 0),
    gsSP2Triangles(22, 17, 16, 0, 23, 18, 17, 0),
    gsSP2Triangles(25, 20, 19, 0, 26, 21, 20, 0),
    gsSP2Triangles(27, 22, 21, 0, 28, 23, 22, 0),
    gsSPEndDisplayList(),
};

Gfx gGiPrescriptionWritingDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_DECAL2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, TEXEL0, COMBINED, 0, SHADE, 0, 0, 0, 0,
                       COMBINED),
    gsDPSetPrimColor(0, 0, 100, 0, 130, 255),
    gsDPSetEnvColor(40, 10, 30, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gi_prescriptionTex_000000, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 48, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(&object_gi_prescriptionVtx_000600[30], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 6, 8, 0),
    gsSP2Triangles(1, 9, 10, 0, 2, 10, 11, 0),
    gsSP2Triangles(4, 11, 12, 0, 6, 12, 13, 0),
    gsSP2Triangles(9, 14, 15, 0, 10, 15, 16, 0),
    gsSP2Triangles(11, 16, 17, 0, 12, 17, 18, 0),
    gsSP2Triangles(14, 19, 20, 0, 15, 20, 21, 0),
    gsSP2Triangles(16, 21, 22, 0, 17, 22, 23, 0),
    gsSP2Triangles(19, 24, 25, 0, 20, 25, 26, 0),
    gsSP2Triangles(21, 26, 27, 0, 22, 27, 28, 0),
    gsSP2Triangles(2, 3, 0, 0, 4, 5, 3, 0),
    gsSP2Triangles(6, 7, 5, 0, 8, 29, 7, 0),
    gsSP2Triangles(10, 2, 1, 0, 11, 4, 2, 0),
    gsSP2Triangles(12, 6, 4, 0, 13, 8, 6, 0),
    gsSP2Triangles(15, 10, 9, 0, 16, 11, 10, 0),
    gsSP2Triangles(17, 12, 11, 0, 18, 13, 12, 0),
    gsSP2Triangles(20, 15, 14, 0, 21, 16, 15, 0),
    gsSP2Triangles(22, 17, 16, 0, 23, 18, 17, 0),
    gsSP2Triangles(25, 20, 19, 0, 26, 21, 20, 0),
    gsSP2Triangles(27, 22, 21, 0, 28, 23, 22, 0),
    gsSPEndDisplayList(),
};

