#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_wood02.h"
#include "assets/objects/gameplay_field_keep/gameplay_field_keep.h"

Vtx object_wood02Vtx_000000[] = {
#include "assets/objects/object_wood02/object_wood02Vtx_000000.vtx.inc"
};

Gfx object_wood02_DL_000090[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_wood02_Tex_004790, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 102, 152, 112, 255),
    gsSPVertex(object_wood02Vtx_000000, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsSPEndDisplayList(),
};

u8 object_wood02_possiblePadding_000128[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_wood02Vtx_000130[] = {
#include "assets/objects/object_wood02/object_wood02Vtx_000130.vtx.inc"
};

Gfx object_wood02_DL_000160[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_wood02_Tex_005F90, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 45, 60, 41, 255),
    gsSPVertex(object_wood02Vtx_000130, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx object_wood02Vtx_0001F0[] = {
#include "assets/objects/object_wood02/object_wood02Vtx_0001F0.vtx.inc"
};

Gfx object_wood02_DL_000340[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_wood02_Tex_006790, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 37, 73, 28, 255),
    gsSPVertex(object_wood02Vtx_0001F0, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 12, 15, 10, 255),
    gsSPVertex(&object_wood02Vtx_0001F0[9], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

u8 object_wood02_possiblePadding_000408[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_wood02Vtx_000410[] = {
#include "assets/objects/object_wood02/object_wood02Vtx_000410.vtx.inc"
};

Gfx object_wood02_DL_000440[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_wood02_Tex_006F90, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 37, 73, 28, 255),
    gsSPVertex(object_wood02Vtx_000410, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u64 object_wood02_Tex_0004D0[] = {
#include "assets/objects/object_wood02/tex_000004D0.rgba16.inc.c"
};

Vtx object_wood02Vtx_0006D0[] = {
#include "assets/objects/object_wood02/object_wood02Vtx_0006D0.vtx.inc"
};

Gfx object_wood02_DL_000700[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_wood02_Tex_0004D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA_PRIM, G_CC_PASS2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsSPVertex(object_wood02Vtx_0006D0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u8 object_wood02_possiblePadding_000788[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_wood02_Tex_000790[] = {
#include "assets/objects/object_wood02/tex_00000790.rgba16.inc.c"
};

u64 object_wood02_Tex_000F90[] = {
#include "assets/objects/object_wood02/tex_00000F90.ia4.inc.c"
};

u64 object_wood02_Tex_001790[] = {
#include "assets/objects/object_wood02/tex_00001790.ia8.inc.c"
};

u64 object_wood02_Tex_002790[] = {
#include "assets/objects/object_wood02/tex_00002790.ia4.inc.c"
};

u64 object_wood02_Tex_002F90[] = {
#include "assets/objects/object_wood02/tex_00002F90.rgba16.inc.c"
};

u64 object_wood02_Tex_003790[] = {
#include "assets/objects/object_wood02/tex_00003790.ia8.inc.c"
};

u64 object_wood02_Tex_004790[] = {
#include "assets/objects/object_wood02/tex_00004790.ia8.inc.c"
};

u64 object_wood02_Tex_004F90[] = {
#include "assets/objects/object_wood02/tex_00004F90.ia8.inc.c"
};

u64 object_wood02_Tex_005F90[] = {
#include "assets/objects/object_wood02/tex_00005F90.ia8.inc.c"
};

u64 object_wood02_Tex_006790[] = {
#include "assets/objects/object_wood02/tex_00006790.ia8.inc.c"
};

u64 object_wood02_Tex_006F90[] = {
#include "assets/objects/object_wood02/tex_00006F90.ia8.inc.c"
};

Vtx object_wood02Vtx_007790[] = {
#include "assets/objects/object_wood02/object_wood02Vtx_007790.vtx.inc"
};

Gfx object_wood02_DL_0078D0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_wood02_Tex_000790, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_wood02Vtx_007790, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 3, 0, 8, 9, 10, 0),
    gsSPEndDisplayList(),
};

Gfx object_wood02_DL_007968[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_wood02_Tex_000F90, G_IM_FMT_IA, 32, 128, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 28, 88, 13, 255),
    gsSPVertex(&object_wood02Vtx_007790[11], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsSPEndDisplayList(),
};

u8 object_wood02_Blob_007A00[] = {
#include "assets/objects/object_wood02/object_wood02_Blob_007A00.bin.inc.c"
};

Vtx object_wood02Vtx_007AA0[] = {
#include "assets/objects/object_wood02/object_wood02Vtx_007AA0.vtx.inc"
};

Gfx object_wood02_DL_007AD0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_wood02_Tex_001790, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 43, 63, 38, 255),
    gsSPVertex(object_wood02Vtx_007AA0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx object_wood02Vtx_007B60[] = {
#include "assets/objects/object_wood02/object_wood02Vtx_007B60.vtx.inc"
};

Gfx object_wood02_DL_007CA0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_wood02_Tex_002F90, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_wood02Vtx_007B60, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSPEndDisplayList(),
};

Gfx object_wood02_DL_007D38[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_wood02_Tex_002790, G_IM_FMT_IA, 32, 128, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&object_wood02Vtx_007B60[11], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPVertex(&object_wood02Vtx_007B60[14], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPVertex(&object_wood02Vtx_007B60[17], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx object_wood02Vtx_007DF0[] = {
#include "assets/objects/object_wood02/object_wood02Vtx_007DF0.vtx.inc"
};

Gfx object_wood02_DL_007E20[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_wood02_Tex_003790, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 35, 76, 25, 255),
    gsSPVertex(object_wood02Vtx_007DF0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx object_wood02Vtx_007EB0[] = {
#include "assets/objects/object_wood02/object_wood02Vtx_007EB0.vtx.inc"
};

Gfx object_wood02_DL_0080D0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_wood02_Tex_000790, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_wood02Vtx_007EB0, 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 4, 2, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 6, 0),
    gsSP2Triangles(8, 9, 6, 0, 9, 7, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 10, 12, 0),
    gsSP2Triangles(14, 13, 12, 0, 14, 12, 11, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 16, 15, 0, 20, 19, 15, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(17, 22, 21, 0, 18, 17, 21, 0),
    gsSPEndDisplayList(),
};

Gfx object_wood02_DL_0081A8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_wood02_Tex_004790, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 57, 197, 86, 255),
    gsSPVertex(&object_wood02Vtx_007EB0[25], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsSPEndDisplayList(),
};

Vtx object_wood02Vtx_008240[] = {
#include "assets/objects/object_wood02/object_wood02Vtx_008240.vtx.inc"
};

Gfx object_wood02_DL_0082B0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_PASS2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_wood02Vtx_008240, 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 4, 3, 6, 0),
    gsSP2Triangles(6, 1, 0, 0, 6, 3, 1, 0),
    gsSPEndDisplayList(),
};

Vtx object_wood02Vtx_008320[] = {
#include "assets/objects/object_wood02/object_wood02Vtx_008320.vtx.inc"
};

Gfx object_wood02_DL_008350[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_wood02_Tex_004F90, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 142, 152, 102, 255),
    gsSPVertex(object_wood02Vtx_008320, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_wood02_DL_0083E0[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gFieldKeepTex_00CB30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_wood02Vtx_0085D0, 14, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSP1Triangle(1, 3, 2, 0),
    gsSP1Triangle(4, 1, 5, 0),
    gsSP1Triangle(1, 0, 5, 0),
    gsSP1Triangle(4, 6, 7, 0),
    gsSP1Triangle(4, 7, 1, 0),
    gsSP1Triangle(1, 8, 9, 0),
    gsSP1Triangle(1, 9, 3, 0),
    gsSP1Triangle(8, 10, 11, 0),
    gsSP1Triangle(8, 11, 9, 0),
    gsSP1Triangle(3, 12, 2, 0),
    gsSP1Triangle(6, 13, 10, 0),
    gsSP1Triangle(6, 10, 7, 0),
    gsSPVertex(&object_wood02Vtx_0085D0[4], 2, 0),
    gsSPVertex(&object_wood02Vtx_0085D0[13], 7, 2),
    gsSPVertex(&object_wood02Vtx_0085D0[24], 5, 9),
    gsSP1Triangle(3, 9, 2, 0),
    gsSP1Triangle(3, 2, 10, 0),
    gsSP1Triangle(4, 0, 11, 0),
    gsSP1Triangle(0, 5, 11, 0),
    gsSP1Triangle(5, 0, 1, 0),
    gsSP1Triangle(4, 3, 10, 0),
    gsSP1Triangle(4, 10, 0, 0),
    gsSP1Triangle(6, 7, 3, 0),
    gsSP1Triangle(6, 3, 4, 0),
    gsSP1Triangle(7, 12, 9, 0),
    gsSP1Triangle(7, 9, 3, 0),
    gsSP1Triangle(8, 4, 11, 0),
    gsSP1Triangle(6, 4, 13, 0),
    gsSP1Triangle(4, 8, 13, 0),
    gsSPVertex(&object_wood02Vtx_0085D0[17], 1, 0),
    gsSPVertex(&object_wood02Vtx_0085D0[20], 4, 1),
    gsSPVertex(&object_wood02Vtx_0085D0[27], 5, 5),
    gsSP1Triangle(1, 7, 5, 0),
    gsSP1Triangle(1, 5, 8, 0),
    gsSP1Triangle(2, 0, 6, 0),
    gsSP1Triangle(3, 0, 9, 0),
    gsSP1Triangle(0, 2, 9, 0),
    gsSP1Triangle(3, 1, 8, 0),
    gsSP1Triangle(3, 8, 0, 0),
    gsSP1Triangle(4, 3, 9, 0),
    gsSPEndDisplayList(),
};

Gfx object_wood02_DL_0085C0[] = {
    gsSPDisplayList(object_wood02_DL_0083E0),
    gsSPEndDisplayList(),
};

Vtx object_wood02Vtx_0085D0[] = {
#include "assets/objects/object_wood02/object_wood02Vtx_0085D0.vtx.inc"
};

