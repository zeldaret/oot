#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_gerudomask.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

u64 object_gi_gerudomaskTLUT_000000[] = {
#include "assets/objects/object_gi_gerudomask/object_gi_gerudomaskTLUT_000000.rgba16.inc.c"
};

u8 object_gi_gerudomask_unaccounted_000200[] = {
    0x00, 0x00, 0x00, 0x41, 0xE7, 0xE7, 0xDE, 0xFF, 
};

u64 object_gi_gerudomaskTex_000208[] = {
#include "assets/objects/object_gi_gerudomask/object_gi_gerudomaskTex_000208.ci8.inc.c"
};

u64 object_gi_gerudomaskTex_000248[] = {
#include "assets/objects/object_gi_gerudomask/object_gi_gerudomaskTex_000248.ci8.inc.c"
};

u64 object_gi_gerudomaskTex_000348[] = {
#include "assets/objects/object_gi_gerudomask/object_gi_gerudomaskTex_000348.ci8.inc.c"
};

u64 object_gi_gerudomaskTex_000448[] = {
#include "assets/objects/object_gi_gerudomask/object_gi_gerudomaskTex_000448.ci8.inc.c"
};

Vtx object_gi_gerudomaskVtx_000848[] = {
#include "assets/objects/object_gi_gerudomask/object_gi_gerudomaskVtx_000848.vtx.inc"
};

Gfx gGiGerudoMaskDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, TEXEL0, 0, SHADE, 0, 0, 0, 0, 1),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gi_gerudomaskTex_000208, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_gi_gerudomaskTLUT_000000),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(object_gi_gerudomaskVtx_000848, 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 3, 0, 0, 5, 2, 6, 0),
    gsSP2Triangles(6, 7, 5, 0, 0, 8, 4, 0),
    gsSP2Triangles(0, 9, 8, 0, 0, 10, 9, 0),
    gsSP2Triangles(11, 12, 5, 0, 13, 11, 5, 0),
    gsSP2Triangles(7, 13, 5, 0, 14, 15, 16, 0),
    gsSP2Triangles(16, 17, 14, 0, 18, 19, 20, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gi_gerudomaskTex_000248, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gi_gerudomaskVtx_000848[21], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 2, 6, 0, 10, 5, 0, 0),
    gsSP2Triangles(0, 5, 11, 0, 11, 12, 0, 0),
    gsSP2Triangles(13, 11, 5, 0, 14, 13, 5, 0),
    gsSP2Triangles(5, 4, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(17, 18, 15, 0, 19, 18, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 11, 24, 12, 0),
    gsSP2Triangles(12, 24, 25, 0, 11, 21, 24, 0),
    gsSP2Triangles(26, 2, 3, 0, 27, 18, 28, 0),
    gsSP2Triangles(27, 28, 29, 0, 30, 31, 19, 0),
    gsSPVertex(&object_gi_gerudomaskVtx_000848[53], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 15, 23, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gi_gerudomaskTex_000348, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gi_gerudomaskVtx_000848[77], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 4, 3, 0, 6, 7, 8, 0),
    gsSP2Triangles(8, 9, 6, 0, 6, 9, 10, 0),
    gsSP2Triangles(11, 8, 7, 0, 0, 4, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_gi_gerudomaskTex_000448, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gi_gerudomaskVtx_000848[89], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 6, 7, 0, 0, 2, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 14, 15, 0, 12, 14, 13, 0),
    gsSP2Triangles(16, 17, 14, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 11, 21, 0, 11, 13, 21, 0),
    gsSP2Triangles(12, 9, 22, 0, 22, 9, 8, 0),
    gsSP2Triangles(23, 24, 25, 0, 25, 24, 26, 0),
    gsSP2Triangles(26, 24, 4, 0, 27, 3, 5, 0),
    gsSP2Triangles(27, 5, 18, 0, 10, 9, 20, 0),
    gsSP2Triangles(23, 19, 18, 0, 28, 29, 16, 0),
    gsSP2Triangles(3, 28, 4, 0, 30, 28, 3, 0),
    gsSP1Triangle(29, 17, 16, 0),
    gsSPVertex(&object_gi_gerudomaskVtx_000848[120], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 2, 0, 2, 6, 5, 0),
    gsSP2Triangles(2, 1, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 3, 0, 7, 11, 10, 0),
    gsSP2Triangles(10, 12, 7, 0, 12, 8, 7, 0),
    gsSP2Triangles(13, 14, 15, 0, 14, 16, 15, 0),
    gsSP1Triangle(16, 17, 15, 0),
    gsSPEndDisplayList(),
};

