#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_zoramask.h"

u64 object_gi_zoramaskTLUT_000000[] = {
#include "assets/objects/object_gi_zoramask/object_gi_zoramaskTLUT_000000.rgba16.inc.c"
};

u8 object_gi_zoramask_unaccounted_000200[] = {
    0x00, 0x00, 0x04, 0x01, 0x00, 0xB1, 0x00, 0x6B, 
};

u64 object_gi_zoramaskTex_000208[] = {
#include "assets/objects/object_gi_zoramask/object_gi_zoramaskTex_000208.ci8.inc.c"
};

u64 object_gi_zoramaskTex_000248[] = {
#include "assets/objects/object_gi_zoramask/object_gi_zoramaskTex_000248.ci8.inc.c"
};

u64 object_gi_zoramaskTex_000648[] = {
#include "assets/objects/object_gi_zoramask/object_gi_zoramaskTex_000648.ci8.inc.c"
};

u64 object_gi_zoramaskTex_000A48[] = {
#include "assets/objects/object_gi_zoramask/object_gi_zoramaskTex_000A48.ci8.inc.c"
};

Vtx object_gi_zoramaskVtx_000E48[] = {
#include "assets/objects/object_gi_zoramask/object_gi_zoramaskVtx_000E48.vtx.inc"
};

Gfx gGiZoraMaskDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, TEXEL0, 0, SHADE, 0, 0, 0, 0, 1),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gi_zoramaskTex_000208, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_gi_zoramaskTLUT_000000),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(object_gi_zoramaskVtx_000E48, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(3, 4, 0, 0, 5, 1, 0, 0),
    gsSP2Triangles(6, 5, 0, 0, 4, 6, 0, 0),
    gsSP2Triangles(6, 4, 7, 0, 7, 8, 6, 0),
    gsSP2Triangles(6, 8, 9, 0, 5, 6, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gi_zoramaskTex_000248, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gi_zoramaskVtx_000E48[10], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 1, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 0, 4, 0),
    gsSP2Triangles(4, 0, 3, 0, 7, 6, 10, 0),
    gsSP2Triangles(8, 7, 10, 0, 8, 11, 6, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 13, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0),
    gsSP2Triangles(18, 13, 19, 0, 18, 17, 13, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsSP2Triangles(24, 20, 23, 0, 22, 23, 20, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gi_zoramaskTex_000648, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gi_zoramaskVtx_000E48[35], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSP2Triangles(6, 8, 7, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(9, 16, 17, 0, 9, 18, 16, 0),
    gsSP2Triangles(15, 19, 17, 0, 19, 15, 14, 0),
    gsSP2Triangles(20, 21, 22, 0, 13, 15, 23, 0),
    gsSP2Triangles(11, 24, 9, 0, 24, 18, 9, 0),
    gsSP2Triangles(23, 1, 13, 0, 25, 8, 6, 0),
    gsSP2Triangles(3, 26, 24, 0, 11, 27, 24, 0),
    gsSP2Triangles(26, 18, 24, 0, 1, 0, 13, 0),
    gsSP2Triangles(12, 27, 11, 0, 28, 21, 20, 0),
    gsSP2Triangles(29, 30, 6, 0, 6, 31, 29, 0),
    gsSPVertex(&object_gi_zoramaskVtx_000E48[67], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gi_zoramaskTex_000A48, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gi_zoramaskVtx_000E48[79], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 0, 0, 0, 5, 3, 0),
    gsSPEndDisplayList(),
};

