#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_cob.h"

u64 object_cob_TLUT_000000[] = {
#include "assets/objects/object_cob/tlut_00000000.rgba16.inc.c"
};

u64 object_cob_Tex_000200[] = {
#include "assets/objects/object_cob/tex_00000200.ci8.inc.c"
};

u64 object_cob_Tex_000280[] = {
#include "assets/objects/object_cob/tex_00000280.ci8.inc.c"
};

u64 object_cob_Tex_0002C0[] = {
#include "assets/objects/object_cob/tex_000002C0.ci8.inc.c"
};

u64 object_cob_Tex_000300[] = {
#include "assets/objects/object_cob/tex_00000300.ci8.inc.c"
};

u64 object_cob_Tex_000340[] = {
#include "assets/objects/object_cob/tex_00000340.ci8.inc.c"
};

Vtx object_cobVtx_0003C0[] = {
#include "assets/objects/object_cob/object_cobVtx_0003C0.vtx.inc"
};

Gfx object_cob_DL_001300[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_cobVtx_0003C0, 9, 0),
    gsSPMatrix(0x0D000380, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cob_TLUT_000000),
    gsDPLoadTextureBlock(object_cob_Tex_000200, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_cobVtx_0003C0[9], 22, 9),
    gsSP2Triangles(0, 9, 10, 0, 0, 1, 11, 0),
    gsSP2Triangles(12, 1, 13, 0, 14, 15, 0, 0),
    gsSP2Triangles(16, 4, 0, 0, 17, 4, 18, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cob_TLUT_000000),
    gsDPLoadTextureBlock(object_cob_Tex_000280, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(19, 2, 20, 0, 21, 22, 7, 0),
    gsSP2Triangles(23, 24, 8, 0, 7, 25, 26, 0),
    gsSP2Triangles(27, 5, 28, 0, 29, 7, 6, 0),
    gsSP1Triangle(3, 7, 30, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cob_TLUT_000000),
    gsDPLoadTextureBlock(object_cob_Tex_000200, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsSPVertex(&object_cobVtx_0003C0[31], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(2, 1, 4, 0, 4, 5, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cob_TLUT_000000),
    gsDPLoadTextureBlock(object_cob_Tex_000280, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 12, 10, 0, 12, 13, 10, 0),
    gsSP2Triangles(12, 14, 13, 0, 14, 11, 13, 0),
    gsSP2Triangles(14, 9, 11, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 15, 0),
    gsSP1Triangle(17, 23, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cob_TLUT_000000),
    gsDPLoadTextureBlock(object_cob_Tex_0002C0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPEndDisplayList(),
};

Gfx object_cob_DL_001678[] = {
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cobVtx_0003C0[115], 4, 0),
    gsSPMatrix(0x0D000340, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cob_TLUT_000000),
    gsDPLoadTextureBlock(object_cob_Tex_0002C0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_cobVtx_0003C0[119], 6, 4),
    gsSP2Triangles(4, 2, 5, 0, 2, 6, 0, 0),
    gsSP2Triangles(1, 7, 8, 0, 1, 9, 3, 0),
    gsSPVertex(&object_cobVtx_0003C0[125], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_cob_DL_001780[] = {
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cobVtx_0003C0[128], 5, 0),
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cob_TLUT_000000),
    gsDPLoadTextureBlock(object_cob_Tex_000300, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_cobVtx_0003C0[133], 12, 5),
    gsSP2Triangles(0, 3, 5, 0, 1, 6, 7, 0),
    gsSP2Triangles(8, 9, 0, 0, 1, 2, 10, 0),
    gsSP2Triangles(2, 11, 12, 0, 13, 4, 1, 0),
    gsSP2Triangles(2, 0, 14, 0, 15, 16, 2, 0),
    gsSPVertex(&object_cobVtx_0003C0[145], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_cob_DL_001898[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cobVtx_0003C0[148], 5, 0),
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cob_TLUT_000000),
    gsDPLoadTextureBlock(object_cob_Tex_000300, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_cobVtx_0003C0[153], 12, 5),
    gsSP2Triangles(5, 0, 6, 0, 7, 3, 8, 0),
    gsSP2Triangles(1, 9, 10, 0, 11, 12, 1, 0),
    gsSP2Triangles(1, 4, 13, 0, 14, 0, 1, 0),
    gsSP2Triangles(3, 2, 15, 0, 16, 2, 0, 0),
    gsSPVertex(&object_cobVtx_0003C0[165], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSPEndDisplayList(),
};

Gfx object_cob_DL_0019B0[] = {
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cobVtx_0003C0[61], 4, 0),
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cob_TLUT_000000),
    gsDPLoadTextureBlock(object_cob_Tex_0002C0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_cobVtx_0003C0[65], 6, 4),
    gsSP2Triangles(4, 2, 5, 0, 0, 6, 2, 0),
    gsSP2Triangles(7, 8, 1, 0, 3, 9, 1, 0),
    gsSPVertex(&object_cobVtx_0003C0[71], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_cob_DL_001AB8[] = {
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cobVtx_0003C0[74], 5, 0),
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cob_TLUT_000000),
    gsDPLoadTextureBlock(object_cob_Tex_000300, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_cobVtx_0003C0[79], 12, 5),
    gsSP2Triangles(5, 3, 0, 0, 6, 7, 1, 0),
    gsSP2Triangles(0, 8, 9, 0, 10, 2, 1, 0),
    gsSP2Triangles(11, 12, 2, 0, 1, 4, 13, 0),
    gsSP2Triangles(14, 0, 2, 0, 2, 15, 16, 0),
    gsSPVertex(&object_cobVtx_0003C0[91], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_cob_DL_001BD0[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cobVtx_0003C0[94], 5, 0),
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cob_TLUT_000000),
    gsDPLoadTextureBlock(object_cob_Tex_000300, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_cobVtx_0003C0[99], 12, 5),
    gsSP2Triangles(5, 0, 6, 0, 7, 3, 8, 0),
    gsSP2Triangles(9, 10, 1, 0, 1, 11, 12, 0),
    gsSP2Triangles(13, 4, 1, 0, 1, 0, 14, 0),
    gsSP2Triangles(15, 2, 3, 0, 0, 2, 16, 0),
    gsSPVertex(&object_cobVtx_0003C0[111], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSPEndDisplayList(),
};

Gfx object_cob_DL_001CE8[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cobVtx_0003C0[169], 9, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cob_TLUT_000000),
    gsDPLoadTextureBlock(object_cob_Tex_000340, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_cobVtx_0003C0[178], 21, 9),
    gsSP2Triangles(9, 0, 10, 0, 11, 1, 12, 0),
    gsSP2Triangles(13, 0, 14, 0, 2, 15, 16, 0),
    gsSP2Triangles(17, 1, 0, 0, 4, 1, 18, 0),
    gsSP2Triangles(19, 0, 7, 0, 20, 1, 21, 0),
    gsSP2Triangles(7, 22, 23, 0, 24, 8, 3, 0),
    gsSP2Triangles(25, 26, 5, 0, 3, 6, 27, 0),
    gsSP1Triangle(28, 29, 2, 0),
    gsSPVertex(&object_cobVtx_0003C0[199], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 3, 0),
    gsSP2Triangles(8, 7, 9, 0, 7, 8, 5, 0),
    gsSP2Triangles(2, 10, 0, 0, 10, 11, 0, 0),
    gsSP2Triangles(12, 3, 8, 0, 13, 1, 0, 0),
    gsSP2Triangles(0, 14, 13, 0, 0, 15, 14, 0),
    gsSPEndDisplayList(),
};

Gfx object_cob_DL_001E40[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(PRIMITIVE, 0, SHADE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0x80, 253, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cobVtx_0003C0[224], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_cob_DL_001E90[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(PRIMITIVE, 0, SHADE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0x80, 253, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cobVtx_0003C0[227], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_cob_DL_001EE0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(PRIMITIVE, 0, SHADE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0x80, 253, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cobVtx_0003C0[230], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_cob_DL_001F30[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(PRIMITIVE, 0, SHADE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0x80, 253, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cobVtx_0003C0[215], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_cob_DL_001F80[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(PRIMITIVE, 0, SHADE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0x80, 253, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cobVtx_0003C0[218], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_cob_DL_001FD0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(PRIMITIVE, 0, SHADE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0x80, 253, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cobVtx_0003C0[221], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx object_cob_DL_002020[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(object_cob_TLUT_000000),
    gsDPLoadTextureBlock(object_cob_Tex_000300, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_cobVtx_0003C0[233], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(3, 5, 6, 0, 2, 7, 0, 0),
    gsSP2Triangles(8, 1, 9, 0, 0, 7, 3, 0),
    gsSP2Triangles(6, 4, 3, 0, 6, 5, 10, 0),
    gsSP1Triangle(8, 2, 1, 0),
    gsSPEndDisplayList(),
};

StandardLimb object_cob_Limb_002108 = { 
    { 0, 3377, 50 }, 0x01, LIMB_DONE,
    object_cob_DL_002020
};

StandardLimb object_cob_Limb_002114 = { 
    { 359, 0, 350 }, 0x02, 0x04,
    object_cob_DL_001FD0
};

StandardLimb object_cob_Limb_002120 = { 
    { 1200, 0, 0 }, 0x03, LIMB_DONE,
    object_cob_DL_001F80
};

StandardLimb object_cob_Limb_00212C = { 
    { 1400, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_cob_DL_001F30
};

StandardLimb object_cob_Limb_002138 = { 
    { 359, 0, -350 }, 0x05, 0x07,
    object_cob_DL_001EE0
};

StandardLimb object_cob_Limb_002144 = { 
    { 1200, 0, 0 }, 0x06, LIMB_DONE,
    object_cob_DL_001E90
};

StandardLimb object_cob_Limb_002150 = { 
    { 1400, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_cob_DL_001E40
};

StandardLimb object_cob_Limb_00215C = { 
    { 0, 0, 0 }, 0x08, LIMB_DONE,
    object_cob_DL_001CE8
};

StandardLimb object_cob_Limb_002168 = { 
    { 1200, -100, 800 }, 0x09, 0x0B,
    object_cob_DL_001BD0
};

StandardLimb object_cob_Limb_002174 = { 
    { 1150, 0, 0 }, 0x0A, LIMB_DONE,
    object_cob_DL_001AB8
};

StandardLimb object_cob_Limb_002180 = { 
    { 901, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_cob_DL_0019B0
};

StandardLimb object_cob_Limb_00218C = { 
    { 1200, -100, -800 }, 0x0C, 0x0E,
    object_cob_DL_001898
};

StandardLimb object_cob_Limb_002198 = { 
    { 1150, 0, 0 }, 0x0D, LIMB_DONE,
    object_cob_DL_001780
};

StandardLimb object_cob_Limb_0021A4 = { 
    { 900, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_cob_DL_001678
};

StandardLimb object_cob_Limb_0021B0 = { 
    { 1754, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_cob_DL_001300
};

void* object_cob_Skel_0021F8Limbs[] = {
    &object_cob_Limb_002108,
    &object_cob_Limb_002114,
    &object_cob_Limb_002120,
    &object_cob_Limb_00212C,
    &object_cob_Limb_002138,
    &object_cob_Limb_002144,
    &object_cob_Limb_002150,
    &object_cob_Limb_00215C,
    &object_cob_Limb_002168,
    &object_cob_Limb_002174,
    &object_cob_Limb_002180,
    &object_cob_Limb_00218C,
    &object_cob_Limb_002198,
    &object_cob_Limb_0021A4,
    &object_cob_Limb_0021B0,
};

FlexSkeletonHeader object_cob_Skel_0021F8 = { 
    { object_cob_Skel_0021F8Limbs, ARRAY_COUNT(object_cob_Skel_0021F8Limbs) }, 15
};

