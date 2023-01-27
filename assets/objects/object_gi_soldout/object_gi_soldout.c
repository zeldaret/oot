#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_soldout.h"

u64 object_gi_soldoutTex_000000[] = {
#include "assets/objects/object_gi_soldout/object_gi_soldoutTex_000000.ia8.inc.c"
};

Vtx object_gi_soldoutVtx_000400[] = {
#include "assets/objects/object_gi_soldout/object_gi_soldoutVtx_000400.vtx.inc"
};

Gfx gGiSoldOutDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gi_soldoutTex_000000, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(object_gi_soldoutVtx_000400, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

