#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_heart.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

Vtx object_gi_heartVtx_000000[] = {
#include "assets/objects/object_gi_heart/object_gi_heartVtx_000000.vtx.inc"
};

Gfx gGiRecoveryHeartDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, SHADE, PRIMITIVE,
                       COMBINED, PRIMITIVE, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0x80, 200, 0, 50, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown11Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 2, 2),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 1, G_TX_NOMIRROR | G_TX_WRAP, 5,
                1),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_gi_heartVtx_000000, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(3, 1, 4, 0, 4, 1, 5, 0),
    gsSP2Triangles(5, 1, 6, 0, 6, 1, 7, 0),
    gsSP2Triangles(7, 1, 8, 0, 8, 1, 9, 0),
    gsSP2Triangles(9, 1, 10, 0, 10, 1, 11, 0),
    gsSP2Triangles(11, 1, 12, 0, 12, 1, 0, 0),
    gsSP2Triangles(2, 13, 0, 0, 3, 13, 2, 0),
    gsSP2Triangles(4, 13, 3, 0, 5, 13, 4, 0),
    gsSP2Triangles(6, 13, 5, 0, 7, 13, 6, 0),
    gsSP2Triangles(8, 13, 7, 0, 9, 13, 8, 0),
    gsSP2Triangles(10, 13, 9, 0, 11, 13, 10, 0),
    gsSP2Triangles(12, 13, 11, 0, 0, 13, 12, 0),
    gsSPEndDisplayList(),
};

