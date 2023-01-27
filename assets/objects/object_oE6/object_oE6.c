#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_oE6.h"

Vtx object_oE6Vtx_000000[] = {
#include "assets/objects/object_oE6/object_oE6Vtx_000000.vtx.inc"
};

Gfx object_oE6_DL_000AE0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_oE6_Tex_002E10, G_IM_FMT_I, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, COMBINED, 0,
                       PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 82, 35, 13, 255),
    gsSPDisplayList(0x0D000000),
    gsSPVertex(object_oE6Vtx_000000, 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 7, 6, 0, 13, 5, 4, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(19, 18, 20, 0, 21, 22, 23, 0),
    gsSP1Triangle(22, 21, 24, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE6_Tex_002A10, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oE6Vtx_000000[25], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 1, 6, 0, 6, 4, 3, 0),
    gsSP1Triangle(3, 2, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE6_Tex_002210, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oE6Vtx_000000[32], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSP2Triangles(4, 8, 5, 0, 9, 10, 11, 0),
    gsSP1Triangle(2, 12, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(object_oE6_Tex_002010, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE6_TLUT_001DD0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE6Vtx_000000[45], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_oE6_Tex_002110, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE6Vtx_000000[57], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(4, 3, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(5, 28, 3, 0, 29, 30, 31, 0),
    gsSPVertex(&object_oE6Vtx_000000[89], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 5, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 18, 19, 0),
    gsSP2Triangles(19, 16, 15, 0, 19, 18, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 2, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 9, 29, 7, 0),
    gsSPVertex(&object_oE6Vtx_000000[119], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(object_oE6_Tex_001FD0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR
                         | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE6_TLUT_001DD0),
    gsSPVertex(&object_oE6Vtx_000000[125], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 1, 5, 0, 1, 4, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 4, 10, 0),
    gsSP2Triangles(5, 10, 4, 0, 0, 3, 9, 0),
    gsSP2Triangles(9, 10, 0, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 16, 17, 14, 0),
    gsSP2Triangles(16, 18, 19, 0, 19, 17, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE6_Tex_0011D0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE6_TLUT_000FD0),
    gsSPVertex(&object_oE6Vtx_000000[145], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 2, 0, 8, 9, 1, 0),
    gsSP2Triangles(3, 4, 5, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 6, 17, 0),
    gsSP2Triangles(1, 0, 8, 0, 17, 18, 16, 0),
    gsSP2Triangles(2, 7, 0, 0, 19, 17, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE6_TLUT_000FD0),
    gsSPVertex(&object_oE6Vtx_000000[165], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 6, 4, 0, 0),
    gsSP2Triangles(0, 7, 6, 0, 3, 8, 0, 0),
    gsSPEndDisplayList(),
};

u64 object_oE6_TLUT_000FD0[] = {
#include "assets/objects/object_oE6/tlut_00000FD0.rgba16.inc.c"
};

u64 object_oE6_Tex_0011D0[] = {
#include "assets/objects/object_oE6/tex_000011D0.ci8.inc.c"
};

u8 object_oE6_Blob_0015D0[] = {
#include "assets/objects/object_oE6/object_oE6_Blob_0015D0.bin.inc.c"
};

u64 object_oE6_TLUT_001DD0[] = {
#include "assets/objects/object_oE6/tlut_00001DD0.rgba16.inc.c"
};

u64 object_oE6_Tex_001FD0[] = {
#include "assets/objects/object_oE6/tex_00001FD0.ci8.inc.c"
};

u64 object_oE6_Tex_002010[] = {
#include "assets/objects/object_oE6/tex_00002010.ci8.inc.c"
};

u64 object_oE6_Tex_002110[] = {
#include "assets/objects/object_oE6/tex_00002110.rgba16.inc.c"
};

u64 object_oE6_Tex_002210[] = {
#include "assets/objects/object_oE6/tex_00002210.rgba16.inc.c"
};

u64 object_oE6_Tex_002A10[] = {
#include "assets/objects/object_oE6/tex_00002A10.rgba16.inc.c"
};

u64 object_oE6_Tex_002E10[] = {
#include "assets/objects/object_oE6/tex_00002E10.i4.inc.c"
};

