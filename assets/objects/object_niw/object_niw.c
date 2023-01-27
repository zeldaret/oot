#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_niw.h"

s16 sCuccoAnimFrameData[] = {
    0x0000, 0x4000, 0x00B1, 0x8000, 0x6E13, 0x7FA2, 0x69AA, 0x7D30, 0x77A3, 0x071C, 0xEE13, 0xFFA2, 0x1656, 0xFD30, 
    0xF7A3, 0x3FF7, 0x3FFC, 0x39B9, 0x8E62, 0x8DC6, 0x8C53, 0x8A98, 0x8924, 0x8889, 0x8924, 0x8A98, 0x8C53, 0x8DC6, 
    0xF663, 0xF826, 0xF8E4, 0xF826, 0xF663, 0xF448, 0xF284, 0xF1C7, 0xF284, 0xF448, 0x8E62, 0x8DC6, 0x8C53, 0x8A98, 
    0x8924, 0x8889, 0x8924, 0x8A98, 0x8C53, 0x8DC6, 0x099D, 0x07DA, 0x071C, 0x07DA, 0x099D, 0x0BB8, 0x0D7C, 0x0E39, 
    0x0D7C, 0x0BB8, 0x4D79, 0x4E00, 0x4E39, 0x4E00, 0x4D79, 0x4CD7, 0x4C50, 0x4C17, 0x4C50, 0x4CD7, 
};

JointIndex sCuccoAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0000, 0x0002 },
    { 0x0003, 0x0004, 0x0005 },
    { 0x0000, 0x0000, 0x0012 },
    { 0x0006, 0x0007, 0x0008 },
    { 0x0000, 0x001C, 0x0009 },
    { 0x0000, 0x000A, 0x000B },
    { 0x0000, 0x0000, 0x0026 },
    { 0x000C, 0x000D, 0x000E },
    { 0x0000, 0x0030, 0x0009 },
    { 0x000F, 0x0010, 0x000F },
    { 0x0000, 0x0000, 0x003A },
    { 0x0000, 0x0000, 0x0011 },
};

AnimationHeader gCuccoAnim = { 
    { 10 }, sCuccoAnimFrameData,
    sCuccoAnimJointIndices, 18
};

u8 object_niw_possiblePadding_0000F8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_niwVtx_000100[] = {
#include "assets/objects/object_niw/object_niwVtx_000100.vtx.inc"
};

Gfx gCuccoNeckDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gCuccoBaseFeathersTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_niwVtx_000100[62], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(4, 5, 0, 0, 2, 3, 0, 0),
    gsSP2Triangles(0, 6, 1, 0, 1, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 7, 11, 12, 0),
    gsSP2Triangles(5, 13, 6, 0, 12, 2, 1, 0),
    gsSP2Triangles(11, 7, 14, 0, 14, 8, 10, 0),
    gsSP2Triangles(5, 6, 0, 0, 10, 11, 14, 0),
    gsSP1Triangle(1, 7, 12, 0),
    gsSPEndDisplayList(),
};

Gfx gCuccoHeadDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gCuccoEyeTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_niwVtx_000100, 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gCuccoHeadFeathersTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 15, 12, 0),
    gsSP1Triangle(12, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 18, 20, 19, 0),
    gsSP1Triangle(21, 20, 18, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gCuccoBaseFeathersTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(22, 23, 24, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gCuccoHeadFeathersTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsSP2Triangles(25, 26, 27, 0, 25, 28, 26, 0),
    gsSPVertex(&object_niwVtx_000100[29], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP1Triangle(4, 3, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 6, 5, 0),
    gsSP1Triangle(8, 5, 9, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gCuccoBaseFeathersTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(10, 11, 12, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gCuccoBeakTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(13, 14, 15, 0),
    gsSP1Triangle(16, 17, 18, 0),
    gsSP1Triangle(19, 20, 21, 0),
    gsSP1Triangle(22, 23, 24, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gCuccoCombTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP2Triangles(25, 26, 27, 0, 27, 28, 25, 0),
    gsSPVertex(&object_niwVtx_000100[58], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gCuccoTailAndUndersideDL[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_niwVtx_000100[99], 6, 0),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gCuccoBaseFeathersTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_niwVtx_000100[105], 24, 6),
    gsSP2Triangles(0, 6, 7, 0, 8, 9, 1, 0),
    gsSP2Triangles(2, 10, 1, 0, 0, 11, 2, 0),
    gsSP2Triangles(12, 1, 13, 0, 3, 1, 14, 0),
    gsSP2Triangles(15, 0, 4, 0, 2, 16, 17, 0),
    gsSP2Triangles(18, 5, 3, 0, 19, 0, 20, 0),
    gsSP2Triangles(4, 5, 21, 0, 3, 22, 23, 0),
    gsSP1Triangle(24, 25, 4, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gCuccoTailFeathersTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&object_niwVtx_000100[129], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gCuccoBaseFeathersTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 5, 0),
    gsSP2Triangles(7, 9, 10, 0, 10, 8, 7, 0),
    gsSP1Triangle(5, 9, 7, 0),
    gsSPEndDisplayList(),
};

Gfx gCuccoRightWingDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gCuccoTailFeathersTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_niwVtx_000100[77], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(3, 5, 4, 0, 4, 6, 0, 0),
    gsSP2Triangles(6, 1, 0, 0, 3, 7, 5, 0),
    gsSP2Triangles(2, 7, 3, 0, 2, 3, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gCuccoRightFootDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gCuccoClawTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_niwVtx_000100[96], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gCuccoLeftWingDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gCuccoTailFeathersTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_niwVtx_000100[85], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(3, 5, 4, 0, 2, 6, 3, 0),
    gsSP2Triangles(2, 1, 6, 0, 5, 7, 4, 0),
    gsSP2Triangles(4, 7, 0, 0, 2, 4, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gCuccoLeftFootDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gCuccoClawTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_niwVtx_000100[93], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u64 gCuccoEyeTex[] = {
#include "assets/objects/object_niw/eye.rgba16.inc.c"
};

u64 gCuccoHeadFeathersTex[] = {
#include "assets/objects/object_niw/head_feathers.rgba16.inc.c"
};

u64 gCuccoBaseFeathersTex[] = {
#include "assets/objects/object_niw/base_feathers.rgba16.inc.c"
};

u64 gCuccoBeakTex[] = {
#include "assets/objects/object_niw/beak.rgba16.inc.c"
};

u64 gCuccoCombTex[] = {
#include "assets/objects/object_niw/comb.rgba16.inc.c"
};

u64 gCuccoTailFeathersTex[] = {
#include "assets/objects/object_niw/tail_feathers.rgba16.inc.c"
};

u64 gCuccoClawTex[] = {
#include "assets/objects/object_niw/claw.rgba16.inc.c"
};

u64 gCuccoTex_2180[] = {
#include "assets/objects/object_niw/tex_2180.rgba16.inc.c"
};

Vtx object_niwVtx_002380[] = {
#include "assets/objects/object_niw/object_niwVtx_002380.vtx.inc"
};

Gfx gCuccoEffectFeatherMaterialDL[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gCuccoTex_2180, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR |
                         G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_PASS2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPEndDisplayList(),
};

Gfx gCuccoEffectFeatherModelDL[] = {
    gsSPVertex(object_niwVtx_002380, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

StandardLimb gCuccoRootLimb = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gCuccoLimb_244C = { 
    { 0, 855, 262 }, 0x02, LIMB_DONE,
    NULL
};

StandardLimb gCuccoLimb_2458 = { 
    { 0, 0, 0 }, 0x03, 0x0C,
    NULL
};

StandardLimb gCuccoTailAndUndersideLimb = { 
    { 0, 0, 0 }, 0x04, LIMB_DONE,
    gCuccoTailAndUndersideDL
};

StandardLimb gCuccoLeftFootRootLimb = { 
    { 457, -640, 42 }, 0x05, 0x06,
    NULL
};

StandardLimb gCuccoLeftFootLimb = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gCuccoLeftFootDL
};

StandardLimb gCuccoLeftWingRootLimb = { 
    { 37, 183, 252 }, 0x07, 0x08,
    NULL
};

StandardLimb gCuccoLeftWingLimb = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gCuccoLeftWingDL
};

StandardLimb gCuccoRightFootRootLimb = { 
    { 457, -640, -42 }, 0x09, 0x0A,
    NULL
};

StandardLimb gCuccoRightFootLimb = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gCuccoRightFootDL
};

StandardLimb gCuccoRightWingRootLimb = { 
    { 37, 183, -240 }, 0x0B, LIMB_DONE,
    NULL
};

StandardLimb gCuccoRightWingLimb = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gCuccoRightWingDL
};

StandardLimb gCuccoUpperBodyRootLimb = { 
    { 0, 0, 0 }, 0x0D, LIMB_DONE,
    NULL
};

StandardLimb gCuccoNeckLimb = { 
    { 0, 0, 0 }, 0x0E, LIMB_DONE,
    gCuccoNeckDL
};

StandardLimb gCuccoHeadLimb = { 
    { 834, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gCuccoHeadDL
};

void* gCuccoSkelLimbs[] = {
    &gCuccoRootLimb,
    &gCuccoLimb_244C,
    &gCuccoLimb_2458,
    &gCuccoTailAndUndersideLimb,
    &gCuccoLeftFootRootLimb,
    &gCuccoLeftFootLimb,
    &gCuccoLeftWingRootLimb,
    &gCuccoLeftWingLimb,
    &gCuccoRightFootRootLimb,
    &gCuccoRightFootLimb,
    &gCuccoRightWingRootLimb,
    &gCuccoRightWingLimb,
    &gCuccoUpperBodyRootLimb,
    &gCuccoNeckLimb,
    &gCuccoHeadLimb,
};

FlexSkeletonHeader gCuccoSkel = { 
    { gCuccoSkelLimbs, ARRAY_COUNT(gCuccoSkelLimbs) }, 7
};

