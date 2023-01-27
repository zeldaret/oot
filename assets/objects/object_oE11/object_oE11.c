#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_oE11.h"

Vtx object_oE11Vtx_000000[] = {
#include "assets/objects/object_oE11/object_oE11Vtx_000000.vtx.inc"
};

Gfx object_oE11_DL_0009F0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_oE11_Tex_0031B0, G_IM_FMT_I, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, COMBINED, 0,
                       PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 134, 217, 26, 255),
    gsSPDisplayList(0x0D000000),
    gsSPVertex(object_oE11Vtx_000000, 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 10, 8, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 11, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 15, 17, 0, 19, 20, 21, 0),
    gsSP2Triangles(20, 19, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 9, 26, 28, 0),
    gsSP1Triangle(13, 29, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE11_Tex_0029B0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oE11Vtx_000000[30], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 0, 0, 5, 0, 6, 0),
    gsSP2Triangles(3, 7, 4, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 14, 15, 0),
    gsSP2Triangles(11, 15, 10, 0, 6, 0, 2, 0),
    gsSP2Triangles(10, 15, 8, 0, 13, 14, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE11_Tex_0021B0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_oE11Vtx_000000[46], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 4, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 12, 16, 0, 14, 16, 12, 0),
    gsSP1Triangle(3, 2, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE11_Tex_0020B0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE11Vtx_000000[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 1, 0, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&object_oE11Vtx_000000[95], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE11Vtx_000000[98], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 6, 4, 0),
    gsSP2Triangles(4, 6, 7, 0, 5, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(object_oE11_Tex_001FB0, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE11_TLUT_001D70),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE11Vtx_000000[106], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE11_Tex_001F70, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE11_TLUT_001D70),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE11Vtx_000000[115], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 5, 9, 3, 0),
    gsSP2Triangles(6, 8, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(0, 6, 1, 0, 10, 1, 6, 0),
    gsSP2Triangles(7, 14, 2, 0, 7, 2, 8, 0),
    gsSP1Triangle(2, 14, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_oE11_Tex_001170, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE11_TLUT_000F70),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE11Vtx_000000[130], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_oE11Vtx_000000[133], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, ENVIRONMENT, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 134, 217, 26, 255),
    gsSPVertex(&object_oE11Vtx_000000[139], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 1, 0, 0, 4, 5, 1, 0),
    gsSP1Triangle(5, 3, 1, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_oE11Vtx_000000[145], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_oE11_TLUT_000F70),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, ENVIRONMENT, 0, COMBINED, 0, PRIMITIVE, 0, COMBINED, 0,
                       PRIMITIVE, 0),
    gsSPVertex(&object_oE11Vtx_000000[151], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(0, 4, 1, 0, 5, 4, 0, 0),
    gsSP2Triangles(6, 5, 0, 0, 0, 7, 6, 0),
    gsSPEndDisplayList(),
};

u64 object_oE11_TLUT_000F70[] = {
#include "assets/objects/object_oE11/tlut_00000F70.rgba16.inc.c"
};

u64 object_oE11_Tex_001170[] = {
#include "assets/objects/object_oE11/tex_00001170.ci8.inc.c"
};

u8 object_oE11_Blob_001570[] = {
#include "assets/objects/object_oE11/object_oE11_Blob_001570.bin.inc.c"
};

u64 object_oE11_TLUT_001D70[] = {
#include "assets/objects/object_oE11/tlut_00001D70.rgba16.inc.c"
};

u64 object_oE11_Tex_001F70[] = {
#include "assets/objects/object_oE11/tex_00001F70.ci8.inc.c"
};

u64 object_oE11_Tex_001FB0[] = {
#include "assets/objects/object_oE11/tex_00001FB0.ci8.inc.c"
};

u64 object_oE11_Tex_0020B0[] = {
#include "assets/objects/object_oE11/tex_000020B0.rgba16.inc.c"
};

u64 object_oE11_Tex_0021B0[] = {
#include "assets/objects/object_oE11/tex_000021B0.rgba16.inc.c"
};

u64 object_oE11_Tex_0029B0[] = {
#include "assets/objects/object_oE11/tex_000029B0.rgba16.inc.c"
};

u64 object_oE11_Tex_0031B0[] = {
#include "assets/objects/object_oE11/tex_000031B0.i4.inc.c"
};

