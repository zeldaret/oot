#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_vase.h"

Gfx gUnusedVaseDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gUnusedVaseTopTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(&object_vaseVtx_0001A0[59], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPLoadTextureBlock(gUnusedVaseBodyTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(object_vaseVtx_0001A0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0),
    gsSP2Triangles(3, 2, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(6, 2, 5, 0, 6, 5, 8, 0),
    gsSP2Triangles(9, 10, 1, 0, 9, 1, 0, 0),
    gsSP2Triangles(1, 10, 11, 0, 1, 11, 4, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(14, 13, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(20, 19, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(7, 6, 19, 0, 7, 19, 18, 0),
    gsSP2Triangles(19, 6, 8, 0, 19, 8, 22, 0),
    gsSP2Triangles(5, 24, 25, 0, 5, 25, 8, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_vaseVtx_0001A0[32], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(2, 5, 0, 0, 5, 6, 0, 0),
    gsSP2Triangles(7, 6, 5, 0, 7, 5, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(21, 22, 18, 0, 21, 18, 17, 0),
    gsSP2Triangles(3, 23, 24, 0, 4, 23, 3, 0),
    gsSP2Triangles(10, 9, 25, 0, 10, 25, 26, 0),
    gsSPEndDisplayList(),
};

Vtx object_vaseVtx_0001A0[] = {
#include "assets/objects/object_vase/object_vaseVtx_0001A0.vtx.inc"
};

u64 gUnusedVaseBodyTex[] = {
#include "assets/objects/object_vase/unused_vase_body.rgba16.inc.c"
};

u64 gUnusedVaseTopTex[] = {
#include "assets/objects/object_vase/unused_vase_top.rgba16.inc.c"
};

