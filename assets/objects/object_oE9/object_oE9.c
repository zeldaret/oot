#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_oE9.h"

Vtx object_oE9Vtx_000000[] = {
#include "assets/objects/object_oE9/object_oE9Vtx_000000.vtx.inc"
};

Gfx object_oE9_DL_000800[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_oE9_Tex_002ED0, G_IM_FMT_I, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, COMBINED, 0,
                       PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 132, 210, 182, 255),
    gsSPDisplayList(0x0D000000),
    gsSPVertex(object_oE9Vtx_000000, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 1, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 7, 6, 0),
    gsSP2Triangles(12, 13, 10, 0, 14, 13, 12, 0),
    gsSP2Triangles(9, 8, 15, 0, 10, 9, 12, 0),
    gsSP2Triangles(16, 3, 13, 0, 16, 13, 14, 0),
    gsSP2Triangles(3, 1, 7, 0, 16, 2, 3, 0),
    gsSP2Triangles(13, 17, 10, 0, 13, 3, 17, 0),
    gsSP2Triangles(1, 0, 4, 0, 6, 1, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE9_Tex_0026D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oE9Vtx_000000[18], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE9_Tex_001ED0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oE9Vtx_000000[26], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 3, 0, 3, 5, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE9_Tex_001DD0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oE9Vtx_000000[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 8, 7, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 1, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0),
    gsSP1Triangle(27, 28, 29, 0),
    gsSPVertex(&object_oE9Vtx_000000[62], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(object_oE9_Tex_001CD0, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE9_TLUT_001A90),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE9Vtx_000000[71], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE9_Tex_001C90, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR
                         | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE9_TLUT_001A90),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE9Vtx_000000[83], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 8, 0),
    gsSP2Triangles(9, 11, 12, 0, 6, 13, 12, 0),
    gsSP2Triangles(5, 14, 3, 0, 15, 16, 17, 0),
    gsSP2Triangles(8, 7, 9, 0, 8, 13, 6, 0),
    gsSP2Triangles(12, 11, 6, 0, 12, 10, 9, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 1, 22, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE9_Tex_000E90, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE9_TLUT_000C90),
    gsSPVertex(&object_oE9Vtx_000000[106], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 7, 10, 0, 11, 12, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE9_TLUT_000C90),
    gsSPVertex(&object_oE9Vtx_000000[120], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(3, 0, 4, 0, 5, 1, 3, 0),
    gsSP2Triangles(6, 5, 3, 0, 7, 1, 5, 0),
    gsSPEndDisplayList(),
};

u64 object_oE9_TLUT_000C90[] = {
#include "assets/objects/object_oE9/tlut_00000C90.rgba16.inc.c"
};

u64 object_oE9_Tex_000E90[] = {
#include "assets/objects/object_oE9/tex_00000E90.ci8.inc.c"
};

u8 object_oE9_Blob_001290[] = {
#include "assets/objects/object_oE9/object_oE9_Blob_001290.bin.inc.c"
};

u64 object_oE9_TLUT_001A90[] = {
#include "assets/objects/object_oE9/tlut_00001A90.rgba16.inc.c"
};

u64 object_oE9_Tex_001C90[] = {
#include "assets/objects/object_oE9/tex_00001C90.ci8.inc.c"
};

u64 object_oE9_Tex_001CD0[] = {
#include "assets/objects/object_oE9/tex_00001CD0.ci8.inc.c"
};

u64 object_oE9_Tex_001DD0[] = {
#include "assets/objects/object_oE9/tex_00001DD0.rgba16.inc.c"
};

u64 object_oE9_Tex_001ED0[] = {
#include "assets/objects/object_oE9/tex_00001ED0.rgba16.inc.c"
};

u64 object_oE9_Tex_0026D0[] = {
#include "assets/objects/object_oE9/tex_000026D0.rgba16.inc.c"
};

u64 object_oE9_Tex_002ED0[] = {
#include "assets/objects/object_oE9/tex_00002ED0.i4.inc.c"
};

