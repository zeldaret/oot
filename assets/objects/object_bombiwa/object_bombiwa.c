#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_bombiwa.h"

u64 object_bombiwa_TLUT_000000[] = {
#include "assets/objects/object_bombiwa/tlut_00000000.rgba16.inc.c"
};

u64 object_bombiwa_Tex_000020[] = {
#include "assets/objects/object_bombiwa/tex_00000020.ci4.inc.c"
};

Vtx object_bombiwaVtx_000820[] = {
#include "assets/objects/object_bombiwa/object_bombiwaVtx_000820.vtx.inc"
};

Gfx object_bombiwa_DL_0009E0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_bombiwa_Tex_000020, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_bombiwa_TLUT_000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bombiwaVtx_000820, 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 5, 4, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(12, 14, 15, 0, 15, 6, 16, 0),
    gsSP2Triangles(15, 13, 17, 0, 18, 10, 19, 0),
    gsSP2Triangles(10, 12, 19, 0, 12, 15, 19, 0),
    gsSP2Triangles(19, 15, 20, 0, 3, 20, 15, 0),
    gsSP2Triangles(5, 21, 3, 0, 21, 20, 3, 0),
    gsSP2Triangles(10, 18, 8, 0, 22, 23, 24, 0),
    gsSP2Triangles(23, 25, 24, 0, 25, 26, 24, 0),
    gsSP2Triangles(26, 27, 24, 0, 27, 22, 24, 0),
    gsSPEndDisplayList(),
};

