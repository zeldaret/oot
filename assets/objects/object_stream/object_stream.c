#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_stream.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

u64 object_stream_Tex_000000[] = {
#include "assets/objects/object_stream/tex_00000000.i4.inc.c"
};

Vtx object_streamVtx_000800[] = {
#include "assets/objects/object_stream/object_streamVtx_000800.vtx.inc"
};

Gfx object_stream_DL_000950[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gEffFleckTex, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                            6, 6, 13, 14),
    gsDPLoadMultiBlock_4b(object_stream_Tex_000000, 0x0100, 1, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 6, 14, 15),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(70, 126, 130, 200),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_streamVtx_000800, 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 1, 0, 6, 1, 0, 0),
    gsSP2Triangles(7, 8, 4, 0, 7, 4, 1, 0),
    gsSP2Triangles(9, 7, 6, 0, 10, 9, 6, 0),
    gsSP2Triangles(11, 8, 7, 0, 9, 11, 7, 0),
    gsSP2Triangles(12, 13, 9, 0, 12, 9, 10, 0),
    gsSP2Triangles(13, 14, 11, 0, 13, 11, 9, 0),
    gsSP2Triangles(15, 16, 13, 0, 15, 13, 12, 0),
    gsSP2Triangles(16, 14, 13, 0, 17, 16, 15, 0),
    gsSP2Triangles(18, 17, 15, 0, 19, 20, 16, 0),
    gsSP2Triangles(17, 19, 16, 0, 16, 20, 14, 0),
    gsSPEndDisplayList(),
};

