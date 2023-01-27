#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_oE8.h"

Vtx object_oE8Vtx_000000[] = {
#include "assets/objects/object_oE8/object_oE8Vtx_000000.vtx.inc"
};

Gfx object_oE8_DL_000CA0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE8_Tex_002BC8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, COMBINED, 0,
                       PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0D000000),
    gsSPVertex(object_oE8Vtx_000000, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(4, 0, 2, 0, 5, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_oE8_Tex_002B88, G_IM_FMT_I, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 65, 255, 11, 255),
    gsSPVertex(&object_oE8Vtx_000000[8], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 1, 7, 0, 8, 3, 5, 0),
    gsSP2Triangles(5, 4, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 15, 14, 16, 0),
    gsSP2Triangles(16, 14, 17, 0, 12, 18, 19, 0),
    gsSP1Triangle(7, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE8_Tex_002788, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 221, 221, 221, 255),
    gsSPVertex(&object_oE8Vtx_000000[28], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP1Triangle(2, 1, 14, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oE8Vtx_000000[43], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 14, 16, 0, 17, 18, 16, 0),
    gsSP2Triangles(19, 10, 20, 0, 21, 7, 6, 0),
    gsSP2Triangles(9, 8, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(12, 20, 10, 0, 16, 18, 15, 0),
    gsSP2Triangles(26, 27, 0, 0, 28, 29, 30, 0),
    gsSPVertex(&object_oE8Vtx_000000[74], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 8, 13, 9, 0),
    gsSP2Triangles(14, 15, 16, 0, 8, 17, 13, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 22, 21, 0, 25, 26, 27, 0),
    gsSP2Triangles(27, 28, 25, 0, 29, 30, 31, 0),
    gsSP1Triangle(21, 23, 10, 0),
    gsSPVertex(&object_oE8Vtx_000000[106], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 4, 3, 0, 2, 1, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 7, 9, 0),
    gsSP2Triangles(3, 1, 0, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(18, 19, 16, 0, 12, 20, 21, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE8_Tex_002388, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oE8Vtx_000000[128], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(2, 1, 4, 0, 5, 6, 3, 0),
    gsSP1Triangle(3, 6, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(object_oE8_Tex_002288, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE8_TLUT_002048),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE8Vtx_000000[135], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE8_Tex_002248, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR
                         | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE8_TLUT_002048),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE8Vtx_000000[147], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 1, 0),
    gsSP2Triangles(11, 0, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(2, 12, 0, 0, 9, 16, 10, 0),
    gsSP2Triangles(15, 17, 13, 0, 13, 18, 19, 0),
    gsSP2Triangles(10, 16, 11, 0, 20, 21, 3, 0),
    gsSP2Triangles(11, 12, 10, 0, 19, 14, 13, 0),
    gsSP2Triangles(22, 18, 13, 0, 13, 23, 22, 0),
    gsSP2Triangles(24, 23, 13, 0, 13, 17, 24, 0),
    gsSP1Triangle(0, 9, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE8_Tex_001448, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE8_TLUT_001248),
    gsSPVertex(&object_oE8Vtx_000000[172], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 2, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(1, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 0, 2, 0, 9, 11, 17, 0),
    gsSP1Triangle(16, 2, 6, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, ENVIRONMENT, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&object_oE8Vtx_000000[190], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE8_TLUT_001248),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, COMBINED, 0,
                       PRIMITIVE, 0),
    gsSPVertex(&object_oE8Vtx_000000[193], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 0, 0, 0, 5, 6, 0),
    gsSP2Triangles(6, 7, 0, 0, 7, 8, 0, 0),
    gsSPEndDisplayList(),
};

u64 object_oE8_TLUT_001248[] = {
#include "assets/objects/object_oE8/tlut_00001248.rgba16.inc.c"
};

u64 object_oE8_Tex_001448[] = {
#include "assets/objects/object_oE8/tex_00001448.ci8.inc.c"
};

u8 object_oE8_Blob_001848[] = {
#include "assets/objects/object_oE8/object_oE8_Blob_001848.bin.inc.c"
};

u64 object_oE8_TLUT_002048[] = {
#include "assets/objects/object_oE8/tlut_00002048.rgba16.inc.c"
};

u64 object_oE8_Tex_002248[] = {
#include "assets/objects/object_oE8/tex_00002248.ci8.inc.c"
};

u64 object_oE8_Tex_002288[] = {
#include "assets/objects/object_oE8/tex_00002288.ci8.inc.c"
};

u64 object_oE8_Tex_002388[] = {
#include "assets/objects/object_oE8/tex_00002388.rgba16.inc.c"
};

u64 object_oE8_Tex_002788[] = {
#include "assets/objects/object_oE8/tex_00002788.rgba16.inc.c"
};

u64 object_oE8_Tex_002B88[] = {
#include "assets/objects/object_oE8/tex_00002B88.i4.inc.c"
};

u64 object_oE8_Tex_002BC8[] = {
#include "assets/objects/object_oE8/tex_00002BC8.rgba16.inc.c"
};

