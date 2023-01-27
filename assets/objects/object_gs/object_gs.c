#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gs.h"

u64 gGossipStoneTex[] = {
#include "assets/objects/object_gs/gossip_stone.i8.inc.c"
};

Vtx object_gsVtx_000800[] = {
#include "assets/objects/object_gs/object_gsVtx_000800.vtx.inc"
};

Gfx gGossipStoneMaterialDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gGossipStoneTex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPEndDisplayList(),
};

Gfx gGossipStoneDL[] = {
    gsDPPipeSync(),
    gsSPVertex(object_gsVtx_000800, 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 4, 2, 0),
    gsSP2Triangles(6, 5, 2, 0, 1, 6, 2, 0),
    gsSP2Triangles(7, 1, 0, 0, 7, 0, 8, 0),
    gsSP2Triangles(8, 0, 3, 0, 8, 3, 9, 0),
    gsSP2Triangles(9, 3, 4, 0, 9, 4, 10, 0),
    gsSP2Triangles(10, 4, 5, 0, 10, 5, 11, 0),
    gsSP2Triangles(11, 5, 6, 0, 11, 6, 12, 0),
    gsSP2Triangles(12, 6, 1, 0, 12, 1, 7, 0),
    gsSP2Triangles(13, 12, 7, 0, 13, 7, 14, 0),
    gsSP2Triangles(15, 11, 12, 0, 15, 12, 13, 0),
    gsSP2Triangles(16, 10, 11, 0, 16, 11, 15, 0),
    gsSP2Triangles(17, 9, 10, 0, 17, 10, 18, 0),
    gsSP2Triangles(19, 8, 9, 0, 19, 9, 17, 0),
    gsSP2Triangles(20, 7, 8, 0, 20, 8, 19, 0),
    gsSPEndDisplayList(),
};

Gfx gGossipStoneSquishedDL[] = {
    gsDPPipeSync(),
    gsSP2Triangles(15, 17, 16, 0, 13, 19, 15, 0),
    gsSP2Triangles(19, 17, 15, 0, 14, 19, 13, 0),
    gsSPEndDisplayList(),
};

