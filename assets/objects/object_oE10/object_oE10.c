#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_oE10.h"

Vtx object_oE10Vtx_000000[] = {
#include "assets/objects/object_oE10/object_oE10Vtx_000000.vtx.inc"
};

Gfx object_oE10_DL_000720[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_oE10_Tex_0021D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, COMBINED, 0,
                       PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0D000000),
    gsSPVertex(object_oE10Vtx_000000, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(2, 4, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 7, 8, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE10_Tex_001DD0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oE10Vtx_000000[10], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 0, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 4, 21, 0),
    gsSP2Triangles(22, 15, 0, 0, 0, 16, 1, 0),
    gsSP2Triangles(11, 23, 9, 0, 24, 25, 26, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_oE10_Tex_001D90, G_IM_FMT_I, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 0, 126, 4, 255),
    gsSPVertex(&object_oE10Vtx_000000[37], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 0, 0, 3, 6, 1, 0),
    gsSP2Triangles(5, 4, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 8, 10, 0, 12, 3, 13, 0),
    gsSP2Triangles(5, 12, 13, 0, 5, 13, 0, 0),
    gsSP2Triangles(4, 2, 11, 0, 1, 14, 8, 0),
    gsSP2Triangles(4, 15, 7, 0, 1, 8, 2, 0),
    gsSP2Triangles(6, 14, 1, 0, 9, 8, 14, 0),
    gsSP2Triangles(8, 11, 2, 0, 11, 15, 4, 0),
    gsSP1Triangle(0, 2, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(object_oE10_Tex_000F50, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE10_TLUT_000C10),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oE10Vtx_000000[53], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE10_Tex_001190, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE10_TLUT_000F90),
    gsSPVertex(&object_oE10Vtx_000000[56], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 0, 3, 0, 5, 6, 2, 0),
    gsSP2Triangles(5, 7, 8, 0, 2, 1, 7, 0),
    gsSP2Triangles(2, 7, 5, 0, 2, 9, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_oE10_Tex_001590, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oE10Vtx_000000[66], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(2, 5, 0, 0, 5, 6, 0, 0),
    gsSP2Triangles(0, 6, 3, 0, 7, 8, 4, 0),
    gsSP2Triangles(4, 9, 7, 0, 4, 8, 1, 0),
    gsSP2Triangles(4, 1, 0, 0, 4, 3, 9, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(object_oE10_Tex_000E50, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE10_TLUT_000C10),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE10Vtx_000000[76], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE10_Tex_000E10, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE10_TLUT_000C10),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE10Vtx_000000[88], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(0, 6, 1, 0, 9, 1, 6, 0),
    gsSP2Triangles(5, 16, 3, 0, 7, 17, 2, 0),
    gsSP2Triangles(7, 2, 8, 0, 15, 18, 13, 0),
    gsSP2Triangles(19, 20, 3, 0, 3, 21, 19, 0),
    gsSP1Triangle(2, 17, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, ENVIRONMENT, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 0, 126, 4, 255),
    gsSPVertex(&object_oE10Vtx_000000[110], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSPEndDisplayList(),
};

u64 object_oE10_TLUT_000C10[] = {
#include "assets/objects/object_oE10/tlut_00000C10.rgba16.inc.c"
};

u64 object_oE10_Tex_000E10[] = {
#include "assets/objects/object_oE10/tex_00000E10.ci8.inc.c"
};

u64 object_oE10_Tex_000E50[] = {
#include "assets/objects/object_oE10/tex_00000E50.ci8.inc.c"
};

u64 object_oE10_Tex_000F50[] = {
#include "assets/objects/object_oE10/tex_00000F50.ci8.inc.c"
};

u64 object_oE10_TLUT_000F90[] = {
#include "assets/objects/object_oE10/tlut_00000F90.rgba16.inc.c"
};

u64 object_oE10_Tex_001190[] = {
#include "assets/objects/object_oE10/tex_00001190.ci8.inc.c"
};

u64 object_oE10_Tex_001590[] = {
#include "assets/objects/object_oE10/tex_00001590.rgba16.inc.c"
};

u64 object_oE10_Tex_001D90[] = {
#include "assets/objects/object_oE10/tex_00001D90.i4.inc.c"
};

u64 object_oE10_Tex_001DD0[] = {
#include "assets/objects/object_oE10/tex_00001DD0.rgba16.inc.c"
};

u64 object_oE10_Tex_0021D0[] = {
#include "assets/objects/object_oE10/tex_000021D0.rgba16.inc.c"
};

