#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_oE12.h"

Vtx object_oE12Vtx_000000[] = {
#include "assets/objects/object_oE12/object_oE12Vtx_000000.vtx.inc"
};

Gfx object_oE12_DL_001020[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_oE12_Tex_003780, G_IM_FMT_I, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, COMBINED, 0,
                       PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 0, 218, 5, 255),
    gsSPDisplayList(0x0D000000),
    gsSPVertex(object_oE12Vtx_000000, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(3, 1, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(3, 6, 5, 0, 4, 6, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE12_Tex_003380, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0D000000),
    gsSPVertex(&object_oE12Vtx_000000[8], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 7, 6, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 13, 14, 0, 19, 20, 21, 0),
    gsSP2Triangles(6, 22, 10, 0, 15, 17, 23, 0),
    gsSP2Triangles(13, 24, 11, 0, 25, 3, 5, 0),
    gsSP2Triangles(0, 26, 1, 0, 20, 19, 27, 0),
    gsSP2Triangles(20, 27, 28, 0, 23, 29, 15, 0),
    gsSP2Triangles(16, 15, 30, 0, 21, 31, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE12_Tex_002B80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPDisplayList(0x0D000000),
    gsSPVertex(&object_oE12Vtx_000000[40], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(3, 1, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 6, 9, 0, 6, 8, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE12_Tex_002980, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE12Vtx_000000[50], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE12_Tex_002880, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oE12Vtx_000000[62], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 4, 5, 0, 0),
    gsSP2Triangles(5, 6, 0, 0, 6, 1, 0, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE12Vtx_000000[69], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 2, 27, 0, 0),
    gsSP2Triangles(28, 0, 27, 0, 29, 24, 26, 0),
    gsSP1Triangle(13, 12, 30, 0),
    gsSPVertex(&object_oE12Vtx_000000[100], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(23, 24, 21, 0, 8, 25, 6, 0),
    gsSP2Triangles(26, 27, 28, 0, 14, 29, 12, 0),
    gsSPVertex(&object_oE12Vtx_000000[130], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 5, 9, 3, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(19, 20, 17, 0, 20, 19, 21, 0),
    gsSP2Triangles(22, 20, 21, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_oE12Vtx_000000[162], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP1Triangle(24, 25, 26, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE12_Tex_002480, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oE12Vtx_000000[189], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(2, 1, 5, 0, 6, 4, 3, 0),
    gsSP1Triangle(2, 3, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(object_oE12_Tex_001800, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE12_TLUT_001600),
    gsSPVertex(&object_oE12Vtx_000000[196], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_oE12_Tex_002400, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oE12Vtx_000000[202], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 0, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 4, 20, 3, 0),
    gsSP2Triangles(19, 3, 20, 0, 3, 19, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(8, 11, 9, 0, 24, 28, 22, 0),
    gsSP2Triangles(14, 9, 11, 0, 12, 29, 10, 0),
    gsSP2Triangles(12, 10, 13, 0, 10, 29, 8, 0),
    gsSP1Triangle(30, 31, 24, 0),
    gsSPVertex(&object_oE12Vtx_000000[234], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE12_TLUT_001600),
    gsSPVertex(&object_oE12Vtx_000000[246], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 2, 3, 5, 0),
    gsSP2Triangles(2, 6, 0, 0, 7, 8, 1, 0),
    gsSP2Triangles(7, 1, 9, 0, 8, 4, 1, 0),
    gsSP2Triangles(10, 8, 7, 0, 9, 11, 7, 0),
    gsSPEndDisplayList(),
};

u64 object_oE12_TLUT_001600[] = {
#include "assets/objects/object_oE12/tlut_00001600.rgba16.inc.c"
};

u64 object_oE12_Tex_001800[] = {
#include "assets/objects/object_oE12/tex_00001800.ci8.inc.c"
};

u8 object_oE12_Blob_001C00[] = {
#include "assets/objects/object_oE12/object_oE12_Blob_001C00.bin.inc.c"
};

u64 object_oE12_Tex_002400[] = {
#include "assets/objects/object_oE12/tex_00002400.rgba16.inc.c"
};

u64 object_oE12_Tex_002480[] = {
#include "assets/objects/object_oE12/tex_00002480.rgba16.inc.c"
};

u64 object_oE12_Tex_002880[] = {
#include "assets/objects/object_oE12/tex_00002880.rgba16.inc.c"
};

u64 object_oE12_Tex_002980[] = {
#include "assets/objects/object_oE12/tex_00002980.rgba16.inc.c"
};

u64 object_oE12_Tex_002B80[] = {
#include "assets/objects/object_oE12/tex_00002B80.rgba16.inc.c"
};

u64 object_oE12_Tex_003380[] = {
#include "assets/objects/object_oE12/tex_00003380.rgba16.inc.c"
};

u64 object_oE12_Tex_003780[] = {
#include "assets/objects/object_oE12/tex_00003780.i4.inc.c"
};

