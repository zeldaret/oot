#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_dekujr.h"

u64 object_dekujr_Tex_000000[] = {
#include "assets/objects/object_dekujr/tex_00000000.rgba16.inc.c"
};

u64 object_dekujr_Tex_000800[] = {
#include "assets/objects/object_dekujr/tex_00000800.i4.inc.c"
};

u64 object_dekujr_Tex_001000[] = {
#include "assets/objects/object_dekujr/tex_00001000.rgba16.inc.c"
};

u64 object_dekujr_Tex_001400[] = {
#include "assets/objects/object_dekujr/tex_00001400.ia8.inc.c"
};

u64 object_dekujr_Tex_001600[] = {
#include "assets/objects/object_dekujr/tex_00001600.ia8.inc.c"
};

u64 object_dekujr_Tex_001640[] = {
#include "assets/objects/object_dekujr/tex_00001640.ia8.inc.c"
};

u64 object_dekujr_Tex_002640[] = {
#include "assets/objects/object_dekujr/tex_00002640.ia16.inc.c"
};

Vtx object_dekujrVtx_002A40[] = {
#include "assets/objects/object_dekujr/object_dekujrVtx_002A40.vtx.inc"
};

Gfx object_dekujr_DL_0030D0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_dekujr_Tex_001000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_dekujrVtx_002A40, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 5, 4, 0, 8, 5, 7, 0),
    gsSP2Triangles(5, 8, 9, 0, 9, 10, 5, 0),
    gsSP2Triangles(6, 11, 1, 0, 12, 11, 6, 0),
    gsSP2Triangles(13, 14, 12, 0, 2, 14, 13, 0),
    gsSP2Triangles(15, 10, 9, 0, 9, 16, 15, 0),
    gsSP2Triangles(17, 15, 16, 0, 18, 19, 20, 0),
    gsSP2Triangles(20, 21, 18, 0, 21, 19, 18, 0),
    gsSP2Triangles(22, 23, 24, 0, 24, 23, 25, 0),
    gsSP2Triangles(22, 24, 25, 0, 0, 3, 26, 0),
    gsSP2Triangles(0, 26, 27, 0, 26, 25, 23, 0),
    gsSP2Triangles(26, 23, 27, 0, 25, 26, 16, 0),
    gsSP2Triangles(16, 22, 25, 0, 22, 16, 9, 0),
    gsSP2Triangles(9, 8, 22, 0, 23, 22, 8, 0),
    gsSP2Triangles(8, 27, 23, 0, 12, 6, 10, 0),
    gsSP2Triangles(6, 5, 10, 0, 15, 13, 10, 0),
    gsSP2Triangles(13, 12, 10, 0, 2, 13, 3, 0),
    gsSP2Triangles(13, 17, 3, 0, 7, 6, 0, 0),
    gsSP2Triangles(6, 1, 0, 0, 0, 27, 7, 0),
    gsSP2Triangles(27, 8, 7, 0, 3, 17, 26, 0),
    gsSP2Triangles(17, 16, 26, 0, 28, 29, 30, 0),
    gsSP1Triangle(28, 31, 29, 0),
    gsSPVertex(&object_dekujrVtx_002A40[32], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_dekujr_Tex_000000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0, PRIM_LOD_FRAC,
                       COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_dekujrVtx_002A40[40], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 6, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 10, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 14, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 18, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 22, 21, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 26, 25, 0),
    gsSP2Triangles(28, 29, 30, 0, 15, 30, 29, 0),
    gsSPVertex(&object_dekujrVtx_002A40[71], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSPEndDisplayList(),
};

Gfx object_dekujr_DL_0032D8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_dekujr_Tex_001400, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 199),
    gsSPVertex(&object_dekujrVtx_002A40[75], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_dekujr_Tex_001600, G_IM_FMT_IA, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_dekujrVtx_002A40[79], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_dekujr_Tex_000800, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0, PRIM_LOD_FRAC,
                       COMBINED),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_dekujrVtx_002A40[85], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_dekujr_Tex_002640, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, 15, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_CLAMP, 4, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x003C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0,
                       COMBINED, 0, SHADE, 0),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_dekujrVtx_002A40[89], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_dekujr_Tex_001640, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_DECAL2),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 70),
    gsSPVertex(&object_dekujrVtx_002A40[101], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

