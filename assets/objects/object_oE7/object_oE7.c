#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_oE7.h"

Vtx object_oE7Vtx_000000[] = {
#include "assets/objects/object_oE7/object_oE7Vtx_000000.vtx.inc"
};

Gfx object_oE7_DL_0006B0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE7_Tex_002858, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, COMBINED, 0,
                       PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 73, 192, 35, 255),
    gsSPDisplayList(0x0D000000),
    gsSPVertex(object_oE7Vtx_000000, 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 5, 0),
    gsSP2Triangles(5, 9, 1, 0, 5, 1, 6, 0),
    gsSP2Triangles(4, 3, 10, 0, 11, 10, 3, 0),
    gsSP2Triangles(2, 12, 0, 0, 3, 2, 1, 0),
    gsSP2Triangles(0, 13, 6, 0, 6, 1, 0, 0),
    gsSP2Triangles(13, 0, 12, 0, 6, 13, 7, 0),
    gsSP2Triangles(14, 15, 5, 0, 11, 3, 1, 0),
    gsSP2Triangles(16, 10, 11, 0, 5, 15, 8, 0),
    gsSP1Triangle(7, 14, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE7_Tex_002058, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oE7Vtx_000000[17], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(2, 10, 0, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 17, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(object_oE7_Tex_001458, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE7_TLUT_001258),
    gsSPVertex(&object_oE7Vtx_000000[35], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(2, 1, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 5, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 11, 10, 0, 0),
    gsSP2Triangles(9, 20, 16, 0, 10, 21, 0, 0),
    gsSP1Triangle(0, 21, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE7_Tex_001158, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE7_TLUT_000B18),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE7Vtx_000000[57], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE7_Tex_001118, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR
                         | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE7_TLUT_000B18),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE7Vtx_000000[69], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 5, 4, 13, 0),
    gsSP2Triangles(12, 14, 10, 0, 15, 16, 17, 0),
    gsSP2Triangles(17, 16, 3, 0, 18, 6, 19, 0),
    gsSP2Triangles(9, 19, 6, 0, 7, 20, 21, 0),
    gsSP2Triangles(7, 21, 8, 0, 21, 20, 18, 0),
    gsSP2Triangles(18, 19, 21, 0, 22, 23, 24, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE7_Tex_000D18, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE7_TLUT_000B18),
    gsSPVertex(&object_oE7Vtx_000000[94], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(3, 1, 0, 0, 5, 4, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE7_TLUT_001258),
    gsSPVertex(&object_oE7Vtx_000000[100], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(0, 4, 5, 0, 5, 6, 0, 0),
    gsSPEndDisplayList(),
};

u64 object_oE7_TLUT_000B18[] = {
#include "assets/objects/object_oE7/tlut_00000B18.rgba16.inc.c"
};

u64 object_oE7_Tex_000D18[] = {
#include "assets/objects/object_oE7/tex_00000D18.ci8.inc.c"
};

u64 object_oE7_Tex_001118[] = {
#include "assets/objects/object_oE7/tex_00001118.ci8.inc.c"
};

u64 object_oE7_Tex_001158[] = {
#include "assets/objects/object_oE7/tex_00001158.ci8.inc.c"
};

u64 object_oE7_TLUT_001258[] = {
#include "assets/objects/object_oE7/tlut_00001258.rgba16.inc.c"
};

u64 object_oE7_Tex_001458[] = {
#include "assets/objects/object_oE7/tex_00001458.ci8.inc.c"
};

u8 object_oE7_Blob_001858[] = {
#include "assets/objects/object_oE7/object_oE7_Blob_001858.bin.inc.c"
};

u64 object_oE7_Tex_002058[] = {
#include "assets/objects/object_oE7/tex_00002058.rgba16.inc.c"
};

u64 object_oE7_Tex_002858[] = {
#include "assets/objects/object_oE7/tex_00002858.rgba16.inc.c"
};

