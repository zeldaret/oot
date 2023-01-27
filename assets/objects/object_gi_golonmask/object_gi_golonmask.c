#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_golonmask.h"

u64 object_gi_golonmaskTLUT_000000[] = {
#include "assets/objects/object_gi_golonmask/object_gi_golonmaskTLUT_000000.rgba16.inc.c"
};

u8 object_gi_golonmask_unaccounted_000200[] = {
    0x00, 0x00, 0x00, 0x41, 0x67, 0x67, 0x67, 0x67, 
};

u64 object_gi_golonmaskTex_000208[] = {
#include "assets/objects/object_gi_golonmask/object_gi_golonmaskTex_000208.ci8.inc.c"
};

u64 object_gi_golonmaskTex_000248[] = {
#include "assets/objects/object_gi_golonmask/object_gi_golonmaskTex_000248.ci8.inc.c"
};

u64 object_gi_golonmaskTex_000348[] = {
#include "assets/objects/object_gi_golonmask/object_gi_golonmaskTex_000348.ci8.inc.c"
};

u64 object_gi_golonmaskTex_000748[] = {
#include "assets/objects/object_gi_golonmask/object_gi_golonmaskTex_000748.ci8.inc.c"
};

Vtx object_gi_golonmaskVtx_000F48[] = {
#include "assets/objects/object_gi_golonmask/object_gi_golonmaskVtx_000F48.vtx.inc"
};

Gfx gGiGoronMaskDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, TEXEL0, 0, SHADE, 0, 0, 0, 0, 1),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gi_golonmaskTex_000208, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_gi_golonmaskTLUT_000000),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(object_gi_golonmaskVtx_000F48, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(2, 5, 0, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 3, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 0, 5, 0, 8, 5, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 10, 12, 0),
    gsSP2Triangles(17, 12, 18, 0, 18, 19, 17, 0),
    gsSP2Triangles(18, 15, 14, 0, 14, 19, 18, 0),
    gsSP2Triangles(20, 15, 4, 0, 15, 18, 2, 0),
    gsSP2Triangles(18, 12, 5, 0, 12, 11, 9, 0),
    gsSP2Triangles(3, 14, 13, 0, 1, 19, 14, 0),
    gsSP2Triangles(0, 17, 19, 0, 8, 10, 17, 0),
    gsSP2Triangles(4, 7, 20, 0, 2, 4, 15, 0),
    gsSP2Triangles(5, 2, 18, 0, 9, 5, 12, 0),
    gsSP2Triangles(13, 6, 3, 0, 14, 3, 1, 0),
    gsSP2Triangles(19, 1, 0, 0, 17, 0, 8, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 8, 30, 31, 0),
    gsSPVertex(&object_gi_golonmaskVtx_000F48[32], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 6, 5, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 11, 10, 0, 12, 14, 15, 0),
    gsSP2Triangles(0, 2, 16, 0, 17, 12, 18, 0),
    gsSP2Triangles(17, 18, 7, 0, 19, 13, 12, 0),
    gsSP2Triangles(4, 13, 19, 0, 15, 19, 12, 0),
    gsSP2Triangles(12, 10, 20, 0, 10, 5, 20, 0),
    gsSP2Triangles(12, 20, 18, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gi_golonmaskTex_000248, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gi_golonmaskVtx_000F48[62], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 2, 1, 9, 0),
    gsSP2Triangles(10, 11, 6, 0, 12, 4, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gi_golonmaskTex_000348, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gi_golonmaskVtx_000F48[76], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(2, 4, 0, 0, 1, 5, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gi_golonmaskTex_000748, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gi_golonmaskVtx_000F48[82], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(4, 2, 1, 0, 1, 5, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 1, 0, 0),
    gsSP2Triangles(1, 7, 6, 0, 6, 5, 1, 0),
    gsSPEndDisplayList(),
};

