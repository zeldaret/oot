#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_efc_lgt_shower.h"

u64 gEnliveningLightTex[] = {
#include "assets/objects/object_efc_lgt_shower/enlivening_light.i8.inc.c"
};

Vtx object_efc_lgt_showerVtx_001000[] = {
#include "assets/objects/object_efc_lgt_shower/object_efc_lgt_showerVtx_001000.vtx.inc"
};

Gfx gEnliveningLightDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEnliveningLightTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 6, 2, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0x0000, 1, 0, G_TX_MIRROR | G_TX_WRAP, 6, 14, G_TX_NOMIRROR | G_TX_WRAP, 6,
                15),
    gsDPSetTileSize(1, 0, 0, 0x00FC, 0x00FC),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, 1, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_efc_lgt_showerVtx_001000, 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 2, 5, 6, 0),
    gsSP2Triangles(2, 6, 4, 0, 4, 6, 7, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSP2Triangles(7, 9, 10, 0, 9, 11, 12, 0),
    gsSP2Triangles(9, 12, 10, 0, 10, 12, 13, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0),
    gsSP2Triangles(13, 15, 16, 0, 15, 17, 18, 0),
    gsSP2Triangles(15, 18, 16, 0, 16, 18, 19, 0),
    gsSP2Triangles(18, 20, 19, 0, 21, 22, 23, 0),
    gsSP2Triangles(22, 24, 0, 0, 22, 0, 23, 0),
    gsSP2Triangles(23, 0, 25, 0, 26, 27, 28, 0),
    gsSPEndDisplayList(),
};

