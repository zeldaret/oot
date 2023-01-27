#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_bxa.h"

Vtx object_bxaVtx_000000[] = {
#include "assets/objects/object_bxa/object_bxaVtx_000000.vtx.inc"
};

Gfx object_bxa_DL_000890[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_bxa_Tex_0026F0, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 4, 4, 15, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 70),
    gsSPDisplayList(0x09000000),
    gsSPVertex(object_bxaVtx_000000, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPVertex(&object_bxaVtx_000000[16], 8, 0),
    gsSPMatrix(0x0C000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_bxaVtx_000000[24], 8, 16),
    gsSP2Triangles(16, 18, 2, 0, 16, 2, 0, 0),
    gsSP2Triangles(22, 17, 1, 0, 22, 1, 6, 0),
    gsSP2Triangles(20, 23, 7, 0, 20, 7, 4, 0),
    gsSP2Triangles(19, 21, 5, 0, 19, 5, 3, 0),
    gsSPMatrix(0x0C000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_bxaVtx_000000[32], 8, 0),
    gsSP2Triangles(6, 0, 17, 0, 6, 17, 22, 0),
    gsSP2Triangles(4, 7, 23, 0, 4, 23, 20, 0),
    gsSP2Triangles(1, 2, 18, 0, 1, 18, 16, 0),
    gsSP2Triangles(3, 5, 21, 0, 3, 21, 19, 0),
    gsSPMatrix(0x0C000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_bxaVtx_000000[40], 8, 16),
    gsSP2Triangles(22, 16, 0, 0, 22, 0, 6, 0),
    gsSP2Triangles(20, 23, 7, 0, 20, 7, 4, 0),
    gsSP2Triangles(18, 21, 5, 0, 18, 5, 3, 0),
    gsSP2Triangles(17, 19, 2, 0, 17, 2, 1, 0),
    gsSPMatrix(0x0C0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_bxaVtx_000000[48], 8, 0),
    gsSP2Triangles(6, 0, 16, 0, 6, 16, 22, 0),
    gsSP2Triangles(1, 2, 19, 0, 1, 19, 17, 0),
    gsSP2Triangles(3, 4, 21, 0, 3, 21, 18, 0),
    gsSP2Triangles(5, 7, 23, 0, 5, 23, 20, 0),
    gsSPMatrix(0x0C000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_bxaVtx_000000[56], 8, 16),
    gsSP2Triangles(22, 16, 0, 0, 22, 0, 6, 0),
    gsSP2Triangles(18, 20, 4, 0, 18, 4, 3, 0),
    gsSP2Triangles(21, 23, 7, 0, 21, 7, 5, 0),
    gsSP2Triangles(17, 19, 2, 0, 17, 2, 1, 0),
    gsSPMatrix(0x0C000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_bxaVtx_000000[64], 8, 0),
    gsSP2Triangles(2, 4, 20, 0, 2, 20, 18, 0),
    gsSP2Triangles(6, 0, 16, 0, 6, 16, 22, 0),
    gsSP2Triangles(5, 7, 23, 0, 5, 23, 21, 0),
    gsSP2Triangles(1, 3, 19, 0, 1, 19, 17, 0),
    gsSPMatrix(0x0C000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_bxaVtx_000000[72], 8, 16),
    gsSP2Triangles(18, 20, 4, 0, 18, 4, 2, 0),
    gsSP2Triangles(22, 16, 0, 0, 22, 0, 6, 0),
    gsSP2Triangles(17, 19, 3, 0, 17, 3, 1, 0),
    gsSP2Triangles(21, 23, 7, 0, 21, 7, 5, 0),
    gsSPMatrix(0x0C0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_bxaVtx_000000[80], 8, 0),
    gsSP2Triangles(2, 4, 20, 0, 2, 20, 18, 0),
    gsSP2Triangles(0, 3, 19, 0, 0, 19, 17, 0),
    gsSP2Triangles(5, 6, 23, 0, 5, 23, 21, 0),
    gsSP2Triangles(7, 1, 16, 0, 7, 16, 22, 0),
    gsSPMatrix(0x0C000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_bxaVtx_000000[88], 8, 16),
    gsSP2Triangles(18, 20, 4, 0, 18, 4, 2, 0),
    gsSP2Triangles(21, 22, 6, 0, 21, 6, 5, 0),
    gsSP2Triangles(16, 19, 3, 0, 16, 3, 0, 0),
    gsSP2Triangles(23, 17, 1, 0, 23, 1, 7, 0),
    gsSPMatrix(0x0C000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_bxaVtx_000000[96], 8, 0),
    gsSP2Triangles(2, 4, 20, 0, 2, 20, 18, 0),
    gsSP2Triangles(0, 3, 19, 0, 0, 19, 16, 0),
    gsSP2Triangles(5, 6, 22, 0, 5, 22, 21, 0),
    gsSP2Triangles(7, 1, 17, 0, 7, 17, 23, 0),
    gsSPMatrix(0x0C000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_bxaVtx_000000[104], 8, 16),
    gsSP2Triangles(16, 18, 3, 0, 16, 3, 0, 0),
    gsSP2Triangles(19, 20, 4, 0, 19, 4, 2, 0),
    gsSP2Triangles(21, 22, 6, 0, 21, 6, 5, 0),
    gsSP2Triangles(23, 17, 1, 0, 23, 1, 7, 0),
    gsSPMatrix(0x0C0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_bxaVtx_000000[112], 8, 0),
    gsSP2Triangles(2, 4, 20, 0, 2, 20, 19, 0),
    gsSP2Triangles(0, 3, 18, 0, 0, 18, 16, 0),
    gsSP2Triangles(5, 6, 22, 0, 5, 22, 21, 0),
    gsSP2Triangles(7, 1, 17, 0, 7, 17, 23, 0),
    gsSPMatrix(0x0C000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_bxaVtx_000000[120], 8, 16),
    gsSP2Triangles(20, 22, 6, 0, 20, 6, 5, 0),
    gsSP2Triangles(18, 21, 4, 0, 18, 4, 2, 0),
    gsSP2Triangles(23, 16, 1, 0, 23, 1, 7, 0),
    gsSP2Triangles(17, 19, 3, 0, 17, 3, 0, 0),
    gsSPMatrix(0x0C000340, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_bxaVtx_000000[128], 9, 0),
    gsSP2Triangles(0, 8, 2, 0, 3, 8, 4, 0),
    gsSP2Triangles(5, 8, 6, 0, 7, 8, 1, 0),
    gsSP2Triangles(2, 19, 17, 0, 2, 17, 0, 0),
    gsSP2Triangles(4, 21, 18, 0, 4, 18, 3, 0),
    gsSP2Triangles(6, 22, 20, 0, 6, 20, 5, 0),
    gsSP2Triangles(1, 16, 23, 0, 1, 23, 7, 0),
    gsSPEndDisplayList(),
};

u8 object_bxa_possiblePadding_000C38[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_bxa_Tex_000C40[] = {
#include "assets/objects/object_bxa/tex_00000C40.rgba16.inc.c"
};

u64 object_bxa_Tex_001440[] = {
#include "assets/objects/object_bxa/tex_00001440.rgba16.inc.c"
};

Vtx object_bxaVtx_001C40[] = {
#include "assets/objects/object_bxa/object_bxaVtx_001C40.vtx.inc"
};

Gfx object_bxa_DL_001D80[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bxa_Tex_000C40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_bxa_Tex_001440, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, 1),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetEnvColor(0, 0, 0, 90),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_bxaVtx_001C40, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 3, 4, 0, 5, 4, 6, 0),
    gsSP2Triangles(7, 8, 3, 0, 7, 3, 5, 0),
    gsSP2Triangles(9, 7, 5, 0, 10, 0, 8, 0),
    gsSP2Triangles(8, 0, 11, 0, 3, 11, 2, 0),
    gsSP2Triangles(11, 0, 2, 0, 12, 5, 6, 0),
    gsSP2Triangles(9, 5, 12, 0, 8, 11, 3, 0),
    gsSP2Triangles(13, 14, 15, 0, 0, 16, 1, 0),
    gsSP2Triangles(10, 16, 0, 0, 17, 18, 19, 0),
    gsSPEndDisplayList(),
};

Vtx object_bxaVtx_001E90[] = {
#include "assets/objects/object_bxa/object_bxaVtx_001E90.vtx.inc"
};

Gfx object_bxa_DL_0022F0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_bxa_Tex_0026F0, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 70),
    gsSPDisplayList(0x09000000),
    gsSPVertex(object_bxaVtx_001E90, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPPipeSync(),
    gsSPVertex(&object_bxaVtx_001E90[20], 10, 0),
    gsSPMatrix(0x0C000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_bxaVtx_001E90[30], 10, 16),
    gsSP2Triangles(8, 0, 16, 0, 8, 16, 24, 0),
    gsSP2Triangles(1, 2, 18, 0, 1, 18, 17, 0),
    gsSP2Triangles(4, 6, 22, 0, 4, 22, 20, 0),
    gsSP2Triangles(3, 5, 21, 0, 3, 21, 19, 0),
    gsSP2Triangles(7, 9, 25, 0, 7, 25, 23, 0),
    gsDPPipeSync(),
    gsSPMatrix(0x0C000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_bxaVtx_001E90[40], 10, 0),
    gsSP2Triangles(17, 18, 2, 0, 17, 2, 0, 0),
    gsSP2Triangles(20, 22, 6, 0, 20, 6, 4, 0),
    gsSP2Triangles(23, 25, 8, 0, 23, 8, 7, 0),
    gsSP2Triangles(24, 16, 1, 0, 24, 1, 9, 0),
    gsSP2Triangles(19, 21, 5, 0, 19, 5, 3, 0),
    gsDPPipeSync(),
    gsSPMatrix(0x0C000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_bxaVtx_001E90[50], 10, 16),
    gsSP2Triangles(4, 6, 22, 0, 4, 22, 20, 0),
    gsSP2Triangles(7, 8, 24, 0, 7, 24, 23, 0),
    gsSP2Triangles(0, 2, 18, 0, 0, 18, 16, 0),
    gsSP2Triangles(9, 1, 17, 0, 9, 17, 25, 0),
    gsSP2Triangles(3, 5, 21, 0, 3, 21, 19, 0),
    gsDPPipeSync(),
    gsSPMatrix(0x0C0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_bxaVtx_001E90[60], 10, 0),
    gsSP2Triangles(20, 22, 6, 0, 20, 6, 4, 0),
    gsSP2Triangles(19, 21, 5, 0, 19, 5, 2, 0),
    gsSP2Triangles(23, 24, 8, 0, 23, 8, 7, 0),
    gsSP2Triangles(16, 18, 3, 0, 16, 3, 0, 0),
    gsSP2Triangles(25, 17, 1, 0, 25, 1, 9, 0),
    gsSPEndDisplayList(),
};

u64 object_bxa_Tex_0024F0[] = {
#include "assets/objects/object_bxa/tex_000024F0.rgba16.inc.c"
};

u64 object_bxa_Tex_0026F0[] = {
#include "assets/objects/object_bxa/tex_000026F0.i8.inc.c"
};

u64 object_bxa_Tex_0027F0[] = {
#include "assets/objects/object_bxa/tex_000027F0.rgba16.inc.c"
};

u64 object_bxa_Tex_0029F0[] = {
#include "assets/objects/object_bxa/tex_000029F0.rgba16.inc.c"
};

