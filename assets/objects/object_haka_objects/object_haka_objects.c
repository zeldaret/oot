#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_haka_objects.h"

Vtx object_haka_objectsVtx_000000[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_000000.vtx.inc"
};

Gfx object_haka_objects_DL_000040[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0187F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_haka_objectsVtx_000000, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

CamData object_haka_objects_Col_000118CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_haka_objects_Col_000118SurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly object_haka_objects_Col_000118Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x8001, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x0000, 0x8001, 0x0000},
};

Vec3s object_haka_objects_Col_000118Vertices[] = {
    {    400,      0,      0 },
    {   -400,      0,      0 },
    {   -400,   1200,      0 },
    {    400,   1200,      0 },
};

CollisionHeader object_haka_objects_Col_000118 = { 
    { -400, 0, 0 },
    { 400, 1200, 0 },
    4, object_haka_objects_Col_000118Vertices,
    2, object_haka_objects_Col_000118Polygons,
    object_haka_objects_Col_000118SurfaceType,
    object_haka_objects_Col_000118CamDataList,
    0, NULL
};

u8 object_haka_objects_possiblePadding_000144[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_haka_objectsVtx_000150[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_000150.vtx.inc"
};

Gfx object_haka_objects_DL_001120[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0171F0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_haka_objectsVtx_000150, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_haka_objectsVtx_000150[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_haka_objectsVtx_000150[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_haka_objectsVtx_000150[96], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_haka_objectsVtx_000150[128], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_haka_objectsVtx_000150[160], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_haka_objectsVtx_000150[192], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_018FF0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 3),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetEnvColor(0, 0, 0, 64),
    gsSPVertex(&object_haka_objectsVtx_000150[224], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 12, 15, 0, 16, 15, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 13, 0),
    gsSPEndDisplayList(),
};

Vtx object_haka_objectsVtx_001450[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_001450.vtx.inc"
};

Gfx object_haka_objects_DL_0018F0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_haka_objects_Tex_018FF0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_haka_objects_Tex_017FF0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR
                       | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 2),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 96),
    gsSPVertex(object_haka_objectsVtx_001450, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 3, 4, 0, 1, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(7, 9, 8, 0, 7, 6, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 12, 11, 13, 0),
    gsSP2Triangles(12, 13, 14, 0, 10, 12, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_01A670, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_haka_objects_Tex_017FF0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR
                       | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 3),
    gsSPVertex(&object_haka_objectsVtx_001450[15], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 14, 12, 0, 0, 2, 15, 0),
    gsSP2Triangles(1, 16, 2, 0, 1, 17, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_haka_objectsVtx_001450[47], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 4, 0, 6, 8, 7, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 12, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 13, 9, 12, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 22, 20, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSPEndDisplayList(),
};

u8 object_haka_objects_possiblePadding_001AE8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_haka_objectsVtx_001AF0[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_001AF0.vtx.inc"
};

Gfx object_haka_objects_DL_002ED0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0171F0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_haka_objectsVtx_001AF0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 2, 0, 7, 8, 2, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 11, 0),
    gsSP2Triangles(14, 15, 11, 0, 16, 17, 11, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 20, 0),
    gsSP2Triangles(23, 24, 20, 0, 25, 26, 20, 0),
    gsSP2Triangles(27, 28, 29, 0, 30, 31, 29, 0),
    gsSPVertex(&object_haka_objectsVtx_001AF0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 9, 0),
    gsSP2Triangles(5, 3, 10, 0, 5, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 19, 20, 0, 16, 21, 22, 0),
    gsSP2Triangles(16, 23, 24, 0, 13, 25, 26, 0),
    gsSP2Triangles(13, 27, 28, 0, 13, 29, 30, 0),
    gsSPVertex(&object_haka_objectsVtx_001AF0[63], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 10, 11, 0, 7, 12, 13, 0),
    gsSP2Triangles(7, 14, 15, 0, 0, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 21, 22, 0),
    gsSP2Triangles(18, 23, 24, 0, 18, 25, 26, 0),
    gsSP2Triangles(21, 27, 28, 0, 29, 30, 28, 0),
    gsSPVertex(&object_haka_objectsVtx_001AF0[94], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 7, 0),
    gsSP2Triangles(10, 11, 7, 0, 12, 13, 7, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 16, 0),
    gsSP2Triangles(19, 20, 16, 0, 21, 22, 16, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 25, 0),
    gsSP2Triangles(28, 29, 25, 0, 30, 31, 25, 0),
    gsSPVertex(&object_haka_objectsVtx_001AF0[126], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 12, 13, 0),
    gsSP2Triangles(9, 14, 15, 0, 9, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 21, 22, 0),
    gsSP2Triangles(18, 23, 24, 0, 18, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 30, 31, 0),
    gsSPVertex(&object_haka_objectsVtx_001AF0[158], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 7, 0),
    gsSP2Triangles(10, 11, 7, 0, 12, 13, 7, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 16, 0),
    gsSP2Triangles(19, 20, 16, 0, 21, 22, 16, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 26, 27, 0),
    gsSP2Triangles(23, 28, 29, 0, 23, 30, 31, 0),
    gsSPVertex(&object_haka_objectsVtx_001AF0[190], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 12, 13, 0),
    gsSP2Triangles(9, 14, 15, 0, 9, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 21, 22, 0),
    gsSP2Triangles(18, 23, 24, 0, 18, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 30, 31, 29, 0),
    gsSPVertex(&object_haka_objectsVtx_001AF0[222], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 10, 0, 13, 14, 10, 0),
    gsSP2Triangles(15, 16, 10, 0, 17, 18, 7, 0),
    gsSP2Triangles(19, 20, 7, 0, 21, 22, 7, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 25, 0),
    gsSP2Triangles(28, 29, 25, 0, 30, 31, 25, 0),
    gsSPVertex(&object_haka_objectsVtx_001AF0[254], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 12, 13, 0),
    gsSP2Triangles(9, 14, 15, 0, 9, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 20, 0),
    gsSP2Triangles(23, 24, 20, 0, 25, 26, 20, 0),
    gsSP1Triangle(27, 28, 29, 0),
    gsSPVertex(&object_haka_objectsVtx_001AF0[284], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP1Triangle(11, 13, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_01CEB0, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_haka_objectsVtx_001AF0[299], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 0, 4, 0, 0, 2, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 7, 0),
    gsSP2Triangles(9, 7, 8, 0, 9, 5, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 11, 0),
    gsSP2Triangles(13, 14, 11, 0, 14, 12, 11, 0),
    gsSP2Triangles(14, 12, 11, 0, 13, 14, 11, 0),
    gsSP2Triangles(10, 13, 11, 0, 10, 11, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_018FF0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_haka_objects_Tex_0135F0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR
                       | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 2, 2),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetEnvColor(0, 0, 0, 96),
    gsSPVertex(&object_haka_objectsVtx_001AF0[314], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx object_haka_objectsVtx_0032F0[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_0032F0.vtx.inc"
};

Gfx object_haka_objects_DL_003CF0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_haka_objects_Tex_01A670, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_haka_objects_Tex_017FF0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR
                       | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 96),
    gsSPVertex(object_haka_objectsVtx_0032F0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_haka_objectsVtx_0032F0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_haka_objectsVtx_0032F0[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0171F0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&object_haka_objectsVtx_0032F0[96], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_haka_objectsVtx_0032F0[128], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPEndDisplayList(),
};

u8 object_haka_objects_possiblePadding_003F68[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_haka_objectsVtx_003F70[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_003F70.vtx.inc"
};

Gfx object_haka_objects_DL_0040F0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0131F0, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPVertex(object_haka_objectsVtx_003F70, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(5, 8, 9, 0, 6, 5, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0135F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_haka_objects_Tex_013DF0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR
                       | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 160),
    gsSPVertex(&object_haka_objectsVtx_003F70[10], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0145F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&object_haka_objectsVtx_003F70[18], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSPEndDisplayList(),
};

u8 object_haka_objects_possiblePadding_0042A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData object_haka_objects_Col_004330CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_haka_objects_Col_004330SurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly object_haka_objects_Col_004330Polygons[] = {
    {0x0000, 0xC000, 0x0001, 0x0002, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0000, 0xC000, 0x0002, 0x0003, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0000, 0xC004, 0x0005, 0x0006, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0000, 0xC004, 0x0006, 0x0007, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
};

Vec3s object_haka_objects_Col_004330Vertices[] = {
    {    450,      0,   -100 },
    {   -450,      0,   -100 },
    {   -450,   1200,   -100 },
    {    450,   1200,   -100 },
    {   -450,      0,    100 },
    {    450,      0,    100 },
    {    450,   1200,    100 },
    {   -450,   1200,    100 },
};

CollisionHeader object_haka_objects_Col_004330 = { 
    { -450, 0, -100 },
    { 450, 1200, 100 },
    8, object_haka_objects_Col_004330Vertices,
    4, object_haka_objects_Col_004330Polygons,
    object_haka_objects_Col_004330SurfaceType,
    object_haka_objects_Col_004330CamDataList,
    0, NULL
};

Vtx object_haka_objectsVtx_004360[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_004360.vtx.inc"
};

Gfx object_haka_objects_DL_0043B0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0155F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_haka_objectsVtx_004360, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 4, 0, 2, 0),
    gsSPEndDisplayList(),
};

u8 object_haka_objects_possiblePadding_004448[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData object_haka_objects_Col_0044D0CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_haka_objects_Col_0044D0SurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly object_haka_objects_Col_0044D0Polygons[] = {
    {0x0000, 0xC000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0000, 0xC000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0000, 0xC004, 0x0005, 0x0006, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0000, 0xC004, 0x0006, 0x0007, 0x0000, 0x0000, 0x8001, 0xFF9C},
};

Vec3s object_haka_objects_Col_0044D0Vertices[] = {
    {   -600,   1200,    100 },
    {   -600,      0,    100 },
    {    600,      0,    100 },
    {    600,   1200,    100 },
    {    600,   1200,   -100 },
    {    600,      0,   -100 },
    {   -600,      0,   -100 },
    {   -600,   1200,   -100 },
};

CollisionHeader object_haka_objects_Col_0044D0 = { 
    { -600, 0, -100 },
    { 600, 1200, 100 },
    8, object_haka_objects_Col_0044D0Vertices,
    4, object_haka_objects_Col_0044D0Polygons,
    object_haka_objects_Col_0044D0SurfaceType,
    object_haka_objects_Col_0044D0CamDataList,
    0, NULL
};

Vtx object_haka_objectsVtx_004500[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_004500.vtx.inc"
};

Gfx object_haka_objects_DL_0045A0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0135F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_haka_objects_Tex_013DF0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR
                       | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 2, 2),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPVertex(object_haka_objectsVtx_004500, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 2, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 8, 5, 0, 9, 7, 6, 0),
    gsSP2Triangles(3, 2, 4, 0, 8, 7, 9, 0),
    gsSPEndDisplayList(),
};

u8 object_haka_objects_possiblePadding_004688[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData object_haka_objects_Col_004780CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_haka_objects_Col_004780SurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly object_haka_objects_Col_004780Polygons[] = {
    {0x0000, 0xC000, 0x0001, 0x0002, 0x7FFF, 0x0000, 0x0000, 0xF5CA},
    {0x0000, 0xC000, 0x0002, 0x0003, 0x7FFF, 0x0000, 0x0000, 0xF5CA},
    {0x0000, 0xC004, 0x0005, 0x0006, 0x8001, 0x0000, 0x0000, 0xF5CA},
    {0x0000, 0xC004, 0x0006, 0x0007, 0x8001, 0x0000, 0x0000, 0xF5CA},
    {0x0000, 0xC008, 0x0009, 0x000A, 0x7FFF, 0x0000, 0x0000, 0x09BE},
    {0x0000, 0xC008, 0x000A, 0x000B, 0x7FFF, 0x0000, 0x0000, 0x09BE},
    {0x0000, 0xC00C, 0x000D, 0x000E, 0x8001, 0x0000, 0x0000, 0x09BE},
    {0x0000, 0xC00C, 0x000E, 0x000F, 0x8001, 0x0000, 0x0000, 0x09BE},
};

Vec3s object_haka_objects_Col_004780Vertices[] = {
    {   2614,      0,    600 },
    {   2614,      0,   -600 },
    {   2614,   1600,   -600 },
    {   2614,   1600,    600 },
    {  -2614,      0,   -600 },
    {  -2614,      0,    600 },
    {  -2614,   1600,    600 },
    {  -2614,   1600,   -600 },
    {  -2494,      0,   -600 },
    {  -2494,   1600,   -600 },
    {  -2494,   1600,    600 },
    {  -2494,      0,    600 },
    {   2494,      0,    600 },
    {   2494,   1600,    600 },
    {   2494,   1600,   -600 },
    {   2494,      0,   -600 },
};

CollisionHeader object_haka_objects_Col_004780 = { 
    { -2614, 0, -600 },
    { 2614, 1600, 600 },
    16, object_haka_objects_Col_004780Vertices,
    8, object_haka_objects_Col_004780Polygons,
    object_haka_objects_Col_004780SurfaceType,
    object_haka_objects_Col_004780CamDataList,
    0, NULL
};

Vtx object_haka_objectsVtx_0047B0[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_0047B0.vtx.inc"
};

Gfx object_haka_objects_DL_0047F0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0177F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_haka_objects_Tex_018FF0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR
                       | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 2, 2),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPVertex(object_haka_objectsVtx_0047B0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSPEndDisplayList(),
};

CamData object_haka_objects_Col_004940CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_haka_objects_Col_004940SurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly object_haka_objects_Col_004940Polygons[] = {
    {0x0000, 0xC000, 0x0001, 0x0002, 0x0000, 0x8001, 0x0000, 0xFF38},
    {0x0000, 0xC000, 0x0002, 0x0003, 0x0000, 0x8001, 0x0000, 0xFF38},
    {0x0000, 0xC004, 0x0005, 0x0006, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0xC004, 0x0006, 0x0007, 0x0000, 0x7FFF, 0x0000, 0x0000},
};

Vec3s object_haka_objects_Col_004940Vertices[] = {
    {  -1000,   -200,   -800 },
    {   1000,   -200,   -800 },
    {   1000,   -200,    800 },
    {  -1000,   -200,    800 },
    {  -1000,      0,   -800 },
    {  -1000,      0,    800 },
    {   1000,      0,    800 },
    {   1000,      0,   -800 },
};

CollisionHeader object_haka_objects_Col_004940 = { 
    { -1000, -200, -800 },
    { 1000, 0, 800 },
    8, object_haka_objects_Col_004940Vertices,
    4, object_haka_objects_Col_004940Polygons,
    object_haka_objects_Col_004940SurfaceType,
    object_haka_objects_Col_004940CamDataList,
    0, NULL
};

Vtx object_haka_objectsVtx_004970[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_004970.vtx.inc"
};

Gfx object_haka_objects_DL_0049B0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0177F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_haka_objects_Tex_018FF0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR
                       | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 4, 4),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPVertex(object_haka_objectsVtx_004970, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSPEndDisplayList(),
};

CamData object_haka_objects_Col_004B00CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_haka_objects_Col_004B00SurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly object_haka_objects_Col_004B00Polygons[] = {
    {0x0000, 0xC000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0xC000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0xC004, 0x0005, 0x0006, 0x0000, 0x0000, 0x8001, 0xFF38},
    {0x0000, 0xC004, 0x0006, 0x0007, 0x0000, 0x0000, 0x8001, 0xFF38},
};

Vec3s object_haka_objects_Col_004B00Vertices[] = {
    {    600,   1200,      0 },
    {   -600,   1200,      0 },
    {   -600,      0,      0 },
    {    600,      0,      0 },
    {    600,      0,   -200 },
    {   -600,      0,   -200 },
    {   -600,   1200,   -200 },
    {    600,   1200,   -200 },
};

CollisionHeader object_haka_objects_Col_004B00 = { 
    { -600, 0, -200 },
    { 600, 1200, 0 },
    8, object_haka_objects_Col_004B00Vertices,
    4, object_haka_objects_Col_004B00Polygons,
    object_haka_objects_Col_004B00SurfaceType,
    object_haka_objects_Col_004B00CamDataList,
    0, NULL
};

Vtx object_haka_objectsVtx_004B30[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_004B30.vtx.inc"
};

Gfx object_haka_objects_DL_004B70[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0177F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_haka_objects_Tex_019870, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR
                       | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 96),
    gsSPVertex(object_haka_objectsVtx_004B30, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSPEndDisplayList(),
};

CamData object_haka_objects_Col_004CC0CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_haka_objects_Col_004CC0SurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly object_haka_objects_Col_004CC0Polygons[] = {
    {0x0000, 0xC000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0xC000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0xC004, 0x0005, 0x0006, 0x0000, 0x0000, 0x8001, 0xFE70},
    {0x0000, 0xC004, 0x0006, 0x0007, 0x0000, 0x0000, 0x8001, 0xFE70},
};

Vec3s object_haka_objects_Col_004CC0Vertices[] = {
    {    800,      0,      0 },
    {    800,   1600,      0 },
    {   -800,   1600,      0 },
    {   -800,      0,      0 },
    {   -800,      0,   -400 },
    {   -800,   1600,   -400 },
    {    800,   1600,   -400 },
    {    800,      0,   -400 },
};

CollisionHeader object_haka_objects_Col_004CC0 = { 
    { -800, 0, -400 },
    { 800, 1600, 0 },
    8, object_haka_objects_Col_004CC0Vertices,
    4, object_haka_objects_Col_004CC0Polygons,
    object_haka_objects_Col_004CC0SurfaceType,
    object_haka_objects_Col_004CC0CamDataList,
    0, NULL
};

Vtx object_haka_objectsVtx_004CF0[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_004CF0.vtx.inc"
};

Gfx object_haka_objects_DL_005000[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0165F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_haka_objectsVtx_004CF0, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0167F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_004CF0[24], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 18, 2, 0, 19, 20, 2, 0),
    gsSP2Triangles(21, 22, 2, 0, 23, 24, 2, 0),
    gsSPEndDisplayList(),
};

CamData object_haka_objects_Col_005334CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_haka_objects_Col_005334SurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly object_haka_objects_Col_005334Polygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x400E, 0x0000, 0x6ED1, 0xFF8C},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x400E, 0x0000, 0x6ED1, 0xFF8C},
    {0x0000, 0x2003, 0x0002, 0x0004, 0x8001, 0x0000, 0x0000, 0xFF8D},
    {0x0000, 0x2003, 0x0004, 0x0005, 0x8001, 0x0000, 0x0000, 0xFF8D},
    {0x0000, 0x2005, 0x0004, 0x0001, 0x400E, 0x0000, 0x912F, 0xFF8C},
    {0x0000, 0x2005, 0x0001, 0x0000, 0x400E, 0x0000, 0x912F, 0xFF8C},
    {0x0000, 0x0006, 0x0007, 0x0008, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x0007, 0x0009, 0x0008, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x000A, 0x000B, 0x0008, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x0009, 0x000A, 0x0008, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x000B, 0x000C, 0x0008, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x000D, 0x000C, 0x000B, 0x6EDA, 0x0000, 0xC003, 0xF8E5},
    {0x0000, 0x000D, 0x000B, 0x000E, 0x6EDA, 0x0000, 0xC003, 0xF8E5},
    {0x0000, 0x000E, 0x000B, 0x000A, 0x6EDA, 0x0000, 0x3FFD, 0xF8E5},
    {0x0000, 0x000E, 0x000A, 0x000F, 0x6EDA, 0x0000, 0x3FFD, 0xF8E5},
    {0x0000, 0x000F, 0x000A, 0x0009, 0x0000, 0x0000, 0x7FFF, 0xF8E5},
    {0x0000, 0x000F, 0x0009, 0x0010, 0x0000, 0x0000, 0x7FFF, 0xF8E5},
    {0x0000, 0x0010, 0x0009, 0x0007, 0x9126, 0x0000, 0x3FFD, 0xF8E5},
    {0x0000, 0x0010, 0x0007, 0x0011, 0x9126, 0x0000, 0x3FFD, 0xF8E5},
    {0x0000, 0x0011, 0x0007, 0x0006, 0x9126, 0x0000, 0xC003, 0xF8E5},
    {0x0000, 0x0011, 0x0006, 0x0012, 0x9126, 0x0000, 0xC003, 0xF8E5},
    {0x0000, 0x0012, 0x0006, 0x000C, 0x0000, 0x0000, 0x8001, 0xF8E5},
    {0x0000, 0x0012, 0x000C, 0x000D, 0x0000, 0x0000, 0x8001, 0xF8E5},
    {0x0000, 0x000C, 0x0006, 0x0008, 0x0000, 0x7FFF, 0x0000, 0xFF38},
};

Vec3s object_haka_objects_Col_005334Vertices[] = {
    {    231,    200,      0 },
    {    231,   5800,      0 },
    {   -115,   5800,    200 },
    {   -115,    200,    200 },
    {   -115,   5800,   -200 },
    {   -115,    200,   -200 },
    {  -1050,    200,  -1819 },
    {  -2100,    200,      0 },
    {      0,    200,      0 },
    {  -1050,    200,   1819 },
    {   1050,    200,   1819 },
    {   2100,    200,      0 },
    {   1050,    200,  -1819 },
    {   1050,      0,  -1819 },
    {   2100,      0,      0 },
    {   1050,      0,   1819 },
    {  -1050,      0,   1819 },
    {  -2100,      0,      0 },
    {  -1050,      0,  -1819 },
};

CollisionHeader object_haka_objects_Col_005334 = { 
    { -2100, 0, -1819 },
    { 2100, 5800, 1819 },
    19, object_haka_objects_Col_005334Vertices,
    24, object_haka_objects_Col_005334Polygons,
    object_haka_objects_Col_005334SurfaceType,
    object_haka_objects_Col_005334CamDataList,
    0, NULL
};

Vtx object_haka_objectsVtx_005360[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_005360.vtx.inc"
};

Gfx object_haka_objects_DL_005A70[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_haka_objects_Tex_01C670, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 33, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_haka_objectsVtx_005360, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 6, 5, 7, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 12, 11, 13, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 13, 15, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 20, 19, 21, 0),
    gsSP2Triangles(22, 23, 1, 0, 4, 24, 25, 0),
    gsSP2Triangles(4, 25, 5, 0, 5, 25, 26, 0),
    gsSP2Triangles(5, 26, 7, 0, 10, 27, 28, 0),
    gsSP2Triangles(10, 28, 11, 0, 11, 28, 29, 0),
    gsSP2Triangles(11, 29, 13, 0, 13, 29, 30, 0),
    gsSP1Triangle(13, 30, 15, 0),
    gsSPVertex(&object_haka_objectsVtx_005360[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(17, 16, 18, 0, 17, 18, 19, 0),
    gsSP2Triangles(19, 18, 20, 0, 19, 20, 21, 0),
    gsSP2Triangles(1, 22, 23, 0, 1, 23, 2, 0),
    gsSP2Triangles(2, 23, 4, 0, 24, 25, 6, 0),
    gsSP2Triangles(9, 26, 27, 0, 9, 27, 10, 0),
    gsSP2Triangles(10, 27, 28, 0, 10, 28, 12, 0),
    gsSP2Triangles(15, 29, 30, 0, 15, 30, 16, 0),
    gsSP2Triangles(16, 30, 31, 0, 16, 31, 18, 0),
    gsSPVertex(&object_haka_objectsVtx_005360[63], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(21, 20, 22, 0, 21, 22, 1, 0),
    gsSP2Triangles(1, 22, 23, 0, 1, 23, 2, 0),
    gsSP2Triangles(5, 24, 25, 0, 5, 25, 6, 0),
    gsSP2Triangles(6, 25, 8, 0, 26, 27, 10, 0),
    gsSP2Triangles(13, 28, 29, 0, 13, 29, 14, 0),
    gsSP2Triangles(14, 29, 30, 0, 14, 30, 16, 0),
    gsSPVertex(&object_haka_objectsVtx_005360[94], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 13, 15, 0, 17, 16, 15, 0),
    gsSP2Triangles(14, 17, 15, 0, 18, 14, 13, 0),
    gsSP2Triangles(18, 13, 16, 0, 18, 16, 17, 0),
    gsSP1Triangle(18, 17, 14, 0),
    gsSPEndDisplayList(),
};

u8 object_haka_objects_possiblePadding_005C88[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_haka_objectsVtx_005C90[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_005C90.vtx.inc"
};

Gfx object_haka_objects_DL_005CE0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0135F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_haka_objects_Tex_013DF0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR
                       | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 2, 2),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPVertex(object_haka_objectsVtx_005C90, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(4, 2, 1, 0, 3, 1, 0, 0),
    gsSPEndDisplayList(),
};

u8 object_haka_objects_possiblePadding_005DB8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData object_haka_objects_Col_005E30CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_haka_objects_Col_005E30SurfaceType[] = {
    { 0x00000000, 0x000007CB },
};

CollisionPoly object_haka_objects_Col_005E30Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0xF028, 0x07EC, 0x7EC4, 0xFFB6},
    {0x0000, 0x0001, 0x0003, 0x0004, 0x0FD8, 0x07EC, 0x7EC4, 0xFFB6},
    {0x0000, 0x0004, 0x0002, 0x0001, 0x0000, 0x1F0B, 0x7C2D, 0xFF6E},
    {0x0000, 0x0003, 0x0001, 0x0000, 0x0000, 0x0000, 0x7FFF, 0xFFCE},
};

Vec3s object_haka_objects_Col_005E30Vertices[] = {
    {   -600,   -800,     50 },
    {      0,    400,     50 },
    {   -600,    800,    -50 },
    {    600,   -800,     50 },
    {    600,    800,    -50 },
};

CollisionHeader object_haka_objects_Col_005E30 = { 
    { -600, -800, -50 },
    { 600, 800, 50 },
    5, object_haka_objects_Col_005E30Vertices,
    4, object_haka_objects_Col_005E30Polygons,
    object_haka_objects_Col_005E30SurfaceType,
    object_haka_objects_Col_005E30CamDataList,
    0, NULL
};

Vtx object_haka_objectsVtx_005E60[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_005E60.vtx.inc"
};

Gfx object_haka_objects_DL_0064E0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0171F0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_haka_objectsVtx_005E60, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(2, 7, 9, 0, 10, 11, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0173F0, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_005E60[13], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 0, 4, 0),
    gsSP2Triangles(4, 3, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 14, 12, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 12, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 16, 13, 12, 0),
    gsSP2Triangles(21, 14, 11, 0, 0, 5, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_016FF0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_haka_objectsVtx_005E60[35], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 0, 4, 0, 1, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0171F0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_005E60[41], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(8, 1, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 12, 11, 16, 0),
    gsSP2Triangles(17, 13, 18, 0, 19, 1, 20, 0),
    gsSP2Triangles(21, 1, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 23, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_haka_objectsVtx_005E60[73], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 13, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0173F0, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_005E60[94], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_013DF0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&object_haka_objectsVtx_005E60[100], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 object_haka_objects_possiblePadding_0067C8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData object_haka_objects_Col_006F70CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_haka_objects_Col_006F70SurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly object_haka_objects_Col_006F70Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0xF289, 0x80B7, 0x0166},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0xF289, 0x80B7, 0x0166},
    {0x0000, 0x0004, 0x0005, 0x0006, 0x411D, 0xEA64, 0x6C0E, 0x05E3},
    {0x0000, 0x0004, 0x0006, 0x0007, 0x451F, 0xF219, 0x6AD4, 0x0462},
    {0x0000, 0x0004, 0x0008, 0x0009, 0x768C, 0x3043, 0x0000, 0xF839},
    {0x0000, 0x0004, 0x0009, 0x0005, 0x768C, 0x3043, 0x0000, 0xF839},
    {0x0000, 0x000A, 0x000B, 0x0001, 0xC7FF, 0x8CE8, 0x0000, 0x0A05},
    {0x0000, 0x000A, 0x0001, 0x000C, 0xC7FF, 0x8CE8, 0x0000, 0x0A05},
    {0x0000, 0x000D, 0x000E, 0x000B, 0x8001, 0x0000, 0x0000, 0xF716},
    {0x0000, 0x000D, 0x000B, 0x000A, 0x8001, 0x0000, 0x0000, 0xF716},
    {0x0000, 0x000F, 0x0010, 0x000E, 0x90F6, 0xC055, 0x0000, 0x019B},
    {0x0000, 0x000F, 0x000E, 0x000D, 0x90F6, 0xC055, 0x0000, 0x019B},
    {0x0000, 0x0011, 0x0012, 0x0010, 0x0000, 0x8001, 0x0000, 0x1C39},
    {0x0000, 0x0011, 0x0010, 0x000F, 0x0000, 0x8001, 0x0000, 0x1C39},
    {0x0000, 0x0013, 0x0014, 0x0012, 0x90F6, 0xC056, 0x0000, 0xFFFF},
    {0x0000, 0x0013, 0x0012, 0x0011, 0x90F6, 0xC056, 0x0000, 0xFFFF},
    {0x0000, 0x0015, 0x0016, 0x0014, 0x0000, 0x7FFF, 0x0000, 0xE205},
    {0x0000, 0x0015, 0x0014, 0x0013, 0x0000, 0x7FFF, 0x0000, 0xE205},
    {0x0000, 0x0017, 0x0002, 0x0016, 0x4534, 0x6BAD, 0x0000, 0xEF13},
    {0x0000, 0x0017, 0x0016, 0x0015, 0x4534, 0x6BAD, 0x0000, 0xEF13},
    {0x0000, 0x0018, 0x0019, 0x0009, 0x0000, 0x0000, 0x8001, 0xFCE0},
    {0x0000, 0x0018, 0x0009, 0x0008, 0x0000, 0x0000, 0x8001, 0xFCE0},
    {0x0000, 0x0007, 0x0018, 0x0002, 0x8002, 0xFF3E, 0x0000, 0xFC6A},
    {0x0000, 0x0007, 0x0002, 0x0017, 0x8002, 0xFF3E, 0x0000, 0xFC6A},
    {0x0000, 0x0006, 0x0019, 0x0018, 0x87BA, 0xD436, 0x0000, 0x0518},
    {0x0000, 0x0006, 0x0018, 0x0007, 0x87BA, 0xD436, 0x0000, 0x0518},
    {0x0000, 0x0005, 0x0009, 0x0019, 0x8001, 0x0000, 0x0000, 0xFB63},
    {0x0000, 0x0005, 0x0019, 0x0006, 0x8001, 0x0000, 0x0000, 0xFB63},
    {0x0000, 0x001A, 0x001B, 0x0008, 0x897B, 0x3054, 0x0000, 0xF423},
    {0x0000, 0x001A, 0x0008, 0x0004, 0x897B, 0x3054, 0x0000, 0xF423},
    {0x0000, 0x001C, 0x001D, 0x001B, 0x7FFF, 0x0000, 0x0000, 0xFFC8},
    {0x0000, 0x001C, 0x001B, 0x001A, 0x7FFF, 0x0000, 0x0000, 0xFFC8},
    {0x0000, 0x001E, 0x001F, 0x001D, 0x7846, 0xD436, 0x0000, 0x0939},
    {0x0000, 0x001E, 0x001D, 0x001C, 0x7846, 0xD436, 0x0000, 0x0939},
    {0x0000, 0x0020, 0x0003, 0x001F, 0x7FFE, 0xFF3E, 0x0000, 0x00CF},
    {0x0000, 0x0020, 0x001F, 0x001E, 0x7FFE, 0xFF3E, 0x0000, 0x00CF},
    {0x0000, 0x0008, 0x001B, 0x001D, 0x0000, 0x0000, 0x8001, 0xFCE0},
    {0x0000, 0x0008, 0x001D, 0x001F, 0x0000, 0x0000, 0x8001, 0xFCE0},
    {0x0000, 0x001E, 0x001C, 0x001A, 0xCBD6, 0xE914, 0x729D, 0x03D8},
    {0x0000, 0x001E, 0x001A, 0x0004, 0xB983, 0xEDDB, 0x6949, 0x02D7},
    {0x0000, 0x0021, 0x0022, 0x0003, 0xBACC, 0x6BAD, 0x0000, 0xECB2},
    {0x0000, 0x0021, 0x0003, 0x0020, 0xBACC, 0x6BAD, 0x0000, 0xECB2},
    {0x0000, 0x0023, 0x0024, 0x0022, 0x0000, 0x7FFF, 0x0000, 0xE205},
    {0x0000, 0x0023, 0x0022, 0x0021, 0x0000, 0x7FFF, 0x0000, 0xE205},
    {0x0000, 0x0025, 0x0026, 0x0024, 0x6F0A, 0xC056, 0x0000, 0x03CF},
    {0x0000, 0x0025, 0x0024, 0x0023, 0x6F0A, 0xC056, 0x0000, 0x03CF},
    {0x0000, 0x0027, 0x0028, 0x0026, 0x0000, 0x8001, 0x0000, 0x1C39},
    {0x0000, 0x0027, 0x0026, 0x0025, 0x0000, 0x8001, 0x0000, 0x1C39},
    {0x0000, 0x0029, 0x002A, 0x0028, 0x6F0A, 0xC055, 0x0000, 0x056B},
    {0x0000, 0x0029, 0x0028, 0x0027, 0x6F0A, 0xC055, 0x0000, 0x056B},
    {0x0000, 0x002B, 0x002C, 0x002A, 0x7FFF, 0x0000, 0x0000, 0xFB7B},
    {0x0000, 0x002B, 0x002A, 0x0029, 0x7FFF, 0x0000, 0x0000, 0xFB7B},
    {0x0000, 0x002D, 0x0000, 0x002C, 0x3801, 0x8CE8, 0x0000, 0x0BF1},
    {0x0000, 0x002D, 0x002C, 0x002B, 0x3801, 0x8CE8, 0x0000, 0x0BF1},
    {0x0000, 0x002E, 0x002F, 0x0030, 0x0000, 0x8F10, 0x3C3C, 0x0000},
    {0x0000, 0x002E, 0x0030, 0x0031, 0x0000, 0x8F10, 0x3C3C, 0x0000},
    {0x0000, 0x0000, 0x0003, 0x002A, 0x55EA, 0xFC42, 0xA132, 0x0063},
    {0x0000, 0x0000, 0x002A, 0x002C, 0x535C, 0x0000, 0x9EDF, 0x0000},
    {0x0000, 0x000B, 0x000E, 0x0002, 0xA89A, 0x0000, 0xA27C, 0xFCBF},
    {0x0000, 0x000B, 0x0002, 0x0001, 0xAB91, 0xFC03, 0x9FE2, 0xFD84},
    {0x0000, 0x0012, 0x0014, 0x0016, 0x0000, 0x0000, 0x8001, 0x0701},
    {0x0000, 0x0012, 0x0016, 0x0010, 0x0000, 0x0000, 0x8001, 0x0701},
    {0x0000, 0x001F, 0x0003, 0x0002, 0x0000, 0xAF26, 0x9CC6, 0x0D77},
    {0x0000, 0x001F, 0x0002, 0x0018, 0x0000, 0xAF26, 0x9CC6, 0x0D77},
    {0x0000, 0x001F, 0x0018, 0x0008, 0x0000, 0x0000, 0x8001, 0xFCE0},
    {0x0000, 0x0002, 0x000E, 0x0016, 0xB09D, 0xEE07, 0x9D38, 0x001A},
    {0x0000, 0x000E, 0x0010, 0x0016, 0x90F6, 0xC056, 0xFFFC, 0x019B},
    {0x0000, 0x0022, 0x002A, 0x0003, 0x4F63, 0xEE07, 0x9D38, 0x02D4},
    {0x0000, 0x0022, 0x0028, 0x002A, 0x6F0A, 0xC056, 0xFFFC, 0x056B},
    {0x0000, 0x0028, 0x0022, 0x0024, 0x0000, 0x0000, 0x8001, 0x0701},
    {0x0000, 0x0028, 0x0024, 0x0026, 0x0000, 0x0000, 0x8001, 0x0701},
    {0x0000, 0x002D, 0x0020, 0x0017, 0x0000, 0x1D9E, 0x7C86, 0xF8A7},
    {0x0000, 0x002D, 0x0017, 0x000C, 0x0000, 0x1D9E, 0x7C86, 0xF8A7},
    {0x0000, 0x0001, 0x0030, 0x002F, 0x8001, 0x0000, 0x0000, 0xFB9B},
    {0x0000, 0x0001, 0x002F, 0x000C, 0x8001, 0x0000, 0x0000, 0xFB9B},
    {0x0000, 0x0000, 0x0031, 0x0030, 0x0000, 0x0000, 0x8001, 0x0000},
    {0x0000, 0x0000, 0x0030, 0x0001, 0x0000, 0x0000, 0x8001, 0x0000},
    {0x0000, 0x002D, 0x002E, 0x0031, 0x7FFF, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x002D, 0x0031, 0x0000, 0x7FFF, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x000C, 0x002F, 0x002E, 0x0000, 0x0000, 0x7FFF, 0xFB9B},
    {0x0000, 0x000C, 0x002E, 0x002D, 0x0000, 0x0000, 0x7FFF, 0xFB9B},
    {0x0000, 0x0032, 0x0001, 0x000C, 0x0000, 0x7FFF, 0x0000, 0xF2B8},
    {0x0000, 0x0032, 0x0000, 0x0001, 0x0000, 0x7FFF, 0x0000, 0xF2B8},
    {0x0000, 0x0032, 0x002D, 0x0000, 0x0000, 0x7FFF, 0x0000, 0xF2B8},
    {0x0000, 0x0025, 0x0023, 0x0021, 0xBB85, 0x0995, 0x6BB6, 0xFC1E},
    {0x0000, 0x0025, 0x0021, 0x0027, 0xBBAF, 0x09B3, 0x6BCE, 0xFC11},
    {0x0000, 0x000F, 0x0015, 0x0013, 0x4479, 0x09D2, 0x6BB2, 0xFE6A},
    {0x0000, 0x000F, 0x0013, 0x0011, 0x4453, 0x0976, 0x6BD2, 0xFE77},
    {0x0000, 0x0015, 0x000D, 0x0017, 0x4466, 0x09A9, 0x6BC2, 0xFE70},
    {0x0000, 0x0017, 0x000D, 0x0033, 0x4395, 0x0B27, 0x6C20, 0xFE25},
    {0x0000, 0x000D, 0x000A, 0x000C, 0x5ADC, 0x3859, 0x4660, 0xFADB},
    {0x0000, 0x000D, 0x000C, 0x0033, 0x5412, 0x2F23, 0x5438, 0xFB1B},
    {0x0000, 0x0017, 0x0033, 0x000C, 0x18B1, 0x1B58, 0x7A94, 0xF9CD},
    {0x0000, 0x0020, 0x0029, 0x0021, 0xBB9A, 0x09A9, 0x6BC2, 0xFC17},
    {0x0000, 0x002D, 0x0034, 0x0020, 0xE74F, 0x1B58, 0x7A94, 0xF8F4},
    {0x0000, 0x0034, 0x002D, 0x002B, 0xA491, 0x30FA, 0x4AFE, 0xF858},
    {0x0000, 0x0034, 0x002B, 0x0029, 0xA8AF, 0x3A7F, 0x490E, 0xF72D},
    {0x0000, 0x0034, 0x0029, 0x0020, 0xBC6B, 0x0B27, 0x6C20, 0xFBD3},
    {0x0000, 0x0004, 0x0020, 0x001E, 0xEC27, 0x4654, 0x6916, 0xF1B8},
    {0x0000, 0x0004, 0x0017, 0x0020, 0x0000, 0x4CDF, 0x6658, 0xF0B9},
    {0x0000, 0x0004, 0x0007, 0x0017, 0x13E5, 0x4653, 0x6914, 0xF267},
};

Vec3s object_haka_objects_Col_006F70Vertices[] = {
    {      0,   3400,      0 },
    {  -1125,   3400,      0 },
    {   -952,   5763,   -250 },
    {   -173,   5763,   -250 },
    {   -563,   6663,   -113 },
    {  -1181,   8181,    563 },
    {  -1181,   7056,    338 },
    {   -956,   6438,    112 },
    {   -563,   6663,   -800 },
    {  -1181,   8181,   -800 },
    {  -2282,   3963,   2168 },
    {  -2282,   3963,    993 },
    {  -1125,   3400,   1125 },
    {  -2282,   4806,   1493 },
    {  -2282,   4806,    993 },
    {  -3669,   7225,   2157 },
    {  -3669,   7225,   1793 },
    {  -4144,   7225,   2458 },
    {  -4144,   7225,   1793 },
    {  -4402,   7675,   2582 },
    {  -4402,   7675,   1793 },
    {  -3927,   7675,   2280 },
    {  -3927,   7675,   1793 },
    {   -952,   5763,    563 },
    {   -956,   6438,   -800 },
    {  -1181,   7056,   -800 },
    {     56,   8181,    563 },
    {     56,   8181,   -800 },
    {     56,   7056,    338 },
    {     56,   7056,   -800 },
    {   -169,   6438,    112 },
    {   -169,   6438,   -800 },
    {   -173,   5763,    563 },
    {   2802,   7675,   2280 },
    {   2802,   7675,   1793 },
    {   3277,   7675,   2582 },
    {   3277,   7675,   1793 },
    {   3019,   7225,   2458 },
    {   3019,   7225,   1793 },
    {   2544,   7225,   2157 },
    {   2544,   7225,   1793 },
    {   1157,   4806,   1493 },
    {   1157,   4806,    993 },
    {   1157,   3963,   2168 },
    {   1157,   3963,    993 },
    {      0,   3400,   1125 },
    {      0,    600,   1125 },
    {  -1125,    600,   1125 },
    {  -1125,      0,      0 },
    {      0,      0,      0 },
    {   -563,   3400,    563 },
    {  -1422,   4103,   1028 },
    {    297,   4103,   1028 },
};

CollisionHeader object_haka_objects_Col_006F70 = { 
    { -4402, 0, -1350 },
    { 3277, 8181, 2582 },
    53, object_haka_objects_Col_006F70Vertices,
    101, object_haka_objects_Col_006F70Polygons,
    object_haka_objects_Col_006F70SurfaceType,
    object_haka_objects_Col_006F70CamDataList,
    0, NULL
};

Vtx object_haka_objectsVtx_006FA0[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_006FA0.vtx.inc"
};

Gfx object_haka_objects_DL_0072C0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0167F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_haka_objectsVtx_006FA0, 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(20, 23, 24, 0, 20, 24, 25, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0171F0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0167F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&object_haka_objectsVtx_006FA0[26], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0171F0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_haka_objectsVtx_006FA0[30], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(4, 8, 9, 0, 4, 9, 10, 0),
    gsSP2Triangles(0, 11, 12, 0, 0, 13, 11, 0),
    gsSP2Triangles(0, 14, 15, 0, 0, 15, 16, 0),
    gsSP2Triangles(4, 17, 18, 0, 4, 18, 19, 0),
    gsSPEndDisplayList(),
};

Vtx object_haka_objectsVtx_0074B0[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_0074B0.vtx.inc"
};

Gfx object_haka_objects_DL_007610[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0171F0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_haka_objectsVtx_0074B0, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(3, 0, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 5, 7, 0, 8, 7, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0165F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&object_haka_objectsVtx_0074B0[10], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_01A070, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&object_haka_objectsVtx_0074B0[14], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx object_haka_objectsVtx_007770[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_007770.vtx.inc"
};

Gfx object_haka_objects_DL_007EF0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0135F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_haka_objectsVtx_007770, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 11, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 15, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 18, 19, 16, 0),
    gsSP2Triangles(20, 21, 22, 0, 22, 23, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 26, 27, 24, 0),
    gsSP2Triangles(28, 29, 30, 0, 30, 31, 28, 0),
    gsSPVertex(&object_haka_objectsVtx_007770[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 11, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 15, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 18, 19, 16, 0),
    gsSP2Triangles(20, 21, 22, 0, 22, 23, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 26, 27, 24, 0),
    gsSP2Triangles(28, 29, 30, 0, 30, 31, 28, 0),
    gsSPVertex(&object_haka_objectsVtx_007770[64], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_01B270, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&object_haka_objectsVtx_007770[72], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(7, 14, 15, 0, 7, 15, 16, 0),
    gsSP2Triangles(14, 10, 17, 0, 14, 17, 18, 0),
    gsSP2Triangles(19, 12, 20, 0, 19, 20, 21, 0),
    gsSP2Triangles(4, 22, 23, 0, 4, 23, 5, 0),
    gsSP2Triangles(24, 20, 22, 0, 24, 22, 4, 0),
    gsSP2Triangles(16, 25, 26, 0, 16, 26, 24, 0),
    gsSP2Triangles(27, 28, 6, 0, 27, 6, 29, 0),
    gsSP2Triangles(30, 27, 29, 0, 30, 29, 31, 0),
    gsSP2Triangles(29, 16, 24, 0, 29, 24, 31, 0),
    gsSP2Triangles(1, 30, 31, 0, 1, 31, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_01BA70, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_007770[104], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

u8 object_haka_objects_possiblePadding_008148[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData object_haka_objects_Col_0081D0CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_haka_objects_Col_0081D0SurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly object_haka_objects_Col_0081D0Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x8001, 0xFF38},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x0000, 0x8001, 0xFF38},
    {0x0000, 0x0004, 0x0005, 0x0006, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0004, 0x0006, 0x0007, 0x0000, 0x0000, 0x7FFF, 0x0000},
};

Vec3s object_haka_objects_Col_0081D0Vertices[] = {
    {  -1800,   1200,   -200 },
    {   1800,   1200,   -200 },
    {   1800,      0,   -200 },
    {  -1800,      0,   -200 },
    {  -1800,      0,      0 },
    {   1800,      0,      0 },
    {   1800,   1200,      0 },
    {  -1800,   1200,      0 },
};

CollisionHeader object_haka_objects_Col_0081D0 = { 
    { -1800, 0, -200 },
    { 1800, 1200, 400 },
    8, object_haka_objects_Col_0081D0Vertices,
    4, object_haka_objects_Col_0081D0Polygons,
    object_haka_objects_Col_0081D0SurfaceType,
    object_haka_objects_Col_0081D0CamDataList,
    0, NULL
};

Vtx object_haka_objectsVtx_008200[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_008200.vtx.inc"
};

Gfx object_haka_objects_DL_008A20[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0135F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_haka_objectsVtx_008200, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 11, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 15, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 18, 19, 16, 0),
    gsSP2Triangles(20, 21, 22, 0, 22, 23, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 26, 27, 24, 0),
    gsSP2Triangles(28, 29, 30, 0, 30, 31, 28, 0),
    gsSPVertex(&object_haka_objectsVtx_008200[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 11, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 15, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 18, 19, 16, 0),
    gsSP2Triangles(20, 21, 22, 0, 22, 23, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 26, 27, 24, 0),
    gsSP2Triangles(28, 29, 30, 0, 30, 31, 28, 0),
    gsSPVertex(&object_haka_objectsVtx_008200[64], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 11, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 15, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_01B270, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&object_haka_objectsVtx_008200[80], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 5, 0, 4, 5, 6, 0),
    gsSP2Triangles(4, 7, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 12, 13, 0, 8, 13, 9, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(2, 22, 23, 0, 2, 23, 16, 0),
    gsSP2Triangles(24, 25, 21, 0, 24, 21, 23, 0),
    gsSP2Triangles(24, 22, 18, 0, 24, 18, 25, 0),
    gsSP2Triangles(26, 27, 19, 0, 26, 19, 28, 0),
    gsSP2Triangles(12, 29, 30, 0, 12, 30, 13, 0),
    gsSP2Triangles(7, 31, 27, 0, 7, 27, 1, 0),
    gsSPVertex(&object_haka_objectsVtx_008200[112], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 4, 7, 0, 8, 7, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_01BA70, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_008200[122], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

CamData object_haka_objects_Col_008D10CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_haka_objects_Col_008D10SurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly object_haka_objects_Col_008D10Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xFE70},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFE70},
    {0x0000, 0x0004, 0x0005, 0x0006, 0x0000, 0x0000, 0x8001, 0x0000},
    {0x0000, 0x0004, 0x0006, 0x0007, 0x0000, 0x0000, 0x8001, 0x0000},
};

Vec3s object_haka_objects_Col_008D10Vertices[] = {
    {   1800,   1200,    400 },
    {  -1800,   1200,    400 },
    {  -1800,      0,    400 },
    {   1800,      0,    400 },
    {   1800,      0,      0 },
    {  -1800,      0,      0 },
    {  -1800,   1200,      0 },
    {   1800,   1200,      0 },
};

CollisionHeader object_haka_objects_Col_008D10 = { 
    { -1800, 0, -400 },
    { 1800, 1200, 400 },
    8, object_haka_objects_Col_008D10Vertices,
    4, object_haka_objects_Col_008D10Polygons,
    object_haka_objects_Col_008D10SurfaceType,
    object_haka_objects_Col_008D10CamDataList,
    0, NULL
};

Vtx object_haka_objectsVtx_008D40[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_008D40.vtx.inc"
};

Gfx object_haka_objects_DL_008EB0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_haka_objects_Tex_01A670, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_haka_objects_Tex_017FF0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR
                       | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPVertex(object_haka_objectsVtx_008D40, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 9, 11, 0, 13, 14, 15, 0),
    gsSP2Triangles(14, 16, 15, 0, 4, 17, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_018FF0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_haka_objects_Tex_017FF0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR
                       | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 2),
    gsDPSetEnvColor(0, 0, 0, 96),
    gsSPVertex(&object_haka_objectsVtx_008D40[18], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(0, 3, 1, 0, 1, 4, 2, 0),
    gsSPEndDisplayList(),
};

u8 object_haka_objects_possiblePadding_009038[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData object_haka_objects_Col_009168CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_haka_objects_Col_009168SurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly object_haka_objects_Col_009168Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xF9C0},
    {0x0000, 0x0003, 0x0000, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xF9C0},
    {0x0000, 0x0000, 0x0004, 0x0001, 0x8001, 0x0000, 0x0000, 0xF9C0},
    {0x0000, 0x0005, 0x0002, 0x0001, 0x0000, 0x8001, 0x0000, 0xF9C0},
    {0x0000, 0x0005, 0x0001, 0x0006, 0x0000, 0x8001, 0x0000, 0xF9C0},
    {0x0000, 0x0003, 0x0002, 0x0005, 0x7FFF, 0x0000, 0x0000, 0xF9C0},
    {0x0000, 0x0007, 0x0003, 0x0005, 0x7FFF, 0x0000, 0x0000, 0xF9C0},
    {0x0000, 0x0004, 0x0007, 0x0006, 0x0000, 0x0000, 0x8001, 0xF9C0},
    {0x0000, 0x0007, 0x0005, 0x0006, 0x0000, 0x0000, 0x8001, 0xF9C0},
    {0x0000, 0x0004, 0x0006, 0x0001, 0x8001, 0x0000, 0x0000, 0xF9C0},
    {0x0000, 0x0000, 0x0003, 0x0008, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0003, 0x0007, 0x0008, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0008, 0x0007, 0x0004, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0008, 0x0004, 0x0000, 0x7FFF, 0x0000, 0x0000},
};

Vec3s object_haka_objects_Col_009168Vertices[] = {
    {  -1600,      0,   1600 },
    {  -1600,  -1600,   1600 },
    {   1600,  -1600,   1600 },
    {   1600,      0,   1600 },
    {  -1600,      0,  -1600 },
    {   1600,  -1600,  -1600 },
    {  -1600,  -1600,  -1600 },
    {   1600,      0,  -1600 },
    {      0,      0,      0 },
};

CollisionHeader object_haka_objects_Col_009168 = { 
    { -1600, -1600, -1600 },
    { 1600, 0, 1600 },
    9, object_haka_objects_Col_009168Vertices,
    14, object_haka_objects_Col_009168Polygons,
    object_haka_objects_Col_009168SurfaceType,
    object_haka_objects_Col_009168CamDataList,
    0, NULL
};

u8 object_haka_objects_possiblePadding_009194[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_haka_objectsVtx_0091A0[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_0091A0.vtx.inc"
};

Gfx object_haka_objects_DL_009860[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0165F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_haka_objectsVtx_0091A0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0167F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_0091A0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_haka_objectsVtx_0091A0[64], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_01A070, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_haka_objectsVtx_0091A0[72], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_01AE70, G_IM_FMT_IA, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_0091A0[80], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPVertex(&object_haka_objectsVtx_0091A0[88], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSPEndDisplayList(),
};

CamData object_haka_objects_Col_009CD0CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_haka_objects_Col_009CD0SurfaceType[] = {
    { 0x00000000, 0x000007C2 },
    { 0x00200000, 0x000007C2 },
};

CollisionPoly object_haka_objects_Col_009CD0Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0xA57E, 0x0000, 0xA57E, 0x0008},
    {0x0000, 0x0000, 0x0002, 0x0003, 0xA57E, 0x0000, 0xA57E, 0x0008},
    {0x0000, 0x0004, 0x0005, 0x0006, 0x5A82, 0x0000, 0xA57E, 0xFFF8},
    {0x0000, 0x0004, 0x0006, 0x0007, 0x5A82, 0x0000, 0xA57E, 0xFFF8},
    {0x0001, 0x0008, 0x0009, 0x000A, 0x0000, 0x0000, 0x8001, 0xFC18},
    {0x0001, 0x0008, 0x000A, 0x000B, 0x0000, 0x0000, 0x8001, 0xFC18},
    {0x0001, 0x0009, 0x000C, 0x000D, 0x7FFF, 0x0000, 0x0000, 0xFC0C},
    {0x0001, 0x0009, 0x000D, 0x000A, 0x7FFF, 0x0000, 0x0000, 0xFC0C},
    {0x0001, 0x000E, 0x0008, 0x000B, 0x8001, 0x0000, 0x0000, 0xFC24},
    {0x0001, 0x000E, 0x000B, 0x000F, 0x8001, 0x0000, 0x0000, 0xFC24},
    {0x0001, 0x000C, 0x000E, 0x000F, 0x0000, 0x0000, 0x7FFF, 0xFC18},
    {0x0001, 0x000C, 0x000F, 0x000D, 0x0000, 0x0000, 0x7FFF, 0xFC18},
    {0x0000, 0x0010, 0x0011, 0x0009, 0x0000, 0x751B, 0xCC56, 0xFB90},
    {0x0000, 0x0010, 0x0009, 0x0008, 0x0000, 0x751B, 0xCC56, 0xFB90},
    {0x0000, 0x000E, 0x000C, 0x0012, 0x0000, 0x751B, 0x33AA, 0xFB90},
    {0x0000, 0x000E, 0x0012, 0x0013, 0x0000, 0x751B, 0x33AA, 0xFB90},
    {0x0000, 0x000C, 0x0009, 0x0011, 0x393E, 0x727C, 0x0000, 0xFB70},
    {0x0000, 0x000C, 0x0011, 0x0012, 0x393E, 0x727C, 0x0000, 0xFB70},
    {0x0000, 0x0010, 0x0013, 0x0012, 0x0000, 0x7FFF, 0x0000, 0xFBB4},
    {0x0000, 0x0010, 0x0012, 0x0011, 0x0000, 0x7FFF, 0x0000, 0xFBB4},
    {0x0000, 0x0008, 0x000E, 0x0013, 0xC6C2, 0x727C, 0x0000, 0xFB7B},
    {0x0000, 0x0008, 0x0013, 0x0010, 0xC6C2, 0x727C, 0x0000, 0xFB7B},
    {0x0000, 0x000A, 0x000D, 0x000F, 0x0000, 0x8001, 0x0000, 0x0190},
    {0x0000, 0x000A, 0x000F, 0x000B, 0x0000, 0x8001, 0x0000, 0x0190},
};

Vec3s object_haka_objects_Col_009CD0Vertices[] = {
    {    -30,   1100,     42 },
    {    -30,   5742,     42 },
    {     54,   5742,    -42 },
    {     54,   1100,    -42 },
    {    -30,   1100,    -42 },
    {    -30,   5742,    -42 },
    {     54,   5742,     42 },
    {     54,   1100,     42 },
    {   -988,    800,  -1000 },
    {   1012,    800,  -1000 },
    {   1012,    400,  -1000 },
    {   -988,    400,  -1000 },
    {   1012,    800,   1000 },
    {   1012,    400,   1000 },
    {   -988,    800,   1000 },
    {   -988,    400,   1000 },
    {   -388,   1100,   -320 },
    {    412,   1100,   -320 },
    {    412,   1100,    320 },
    {   -388,   1100,    320 },
};

CollisionHeader object_haka_objects_Col_009CD0 = { 
    { -988, 0, -1000 },
    { 1012, 5742, 1000 },
    20, object_haka_objects_Col_009CD0Vertices,
    24, object_haka_objects_Col_009CD0Polygons,
    object_haka_objects_Col_009CD0SurfaceType,
    object_haka_objects_Col_009CD0CamDataList,
    0, NULL
};

Vtx object_haka_objectsVtx_009D00[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_009D00.vtx.inc"
};

Gfx object_haka_objects_DL_00A1A0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_01A470, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_haka_objectsVtx_009D00, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(2, 1, 4, 0, 3, 2, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0171F0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_009D00[5], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 7, 9, 0, 5, 11, 6, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0165F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&object_haka_objectsVtx_009D00[21], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_01A070, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_haka_objectsVtx_009D00[37], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_018FF0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_haka_objects_Tex_017FF0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR
                       | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 2),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetEnvColor(0, 0, 0, 96),
    gsSPVertex(&object_haka_objectsVtx_009D00[69], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(2, 3, 4, 0, 0, 2, 4, 0),
    gsSPEndDisplayList(),
};

CamData object_haka_objects_Col_00A7F4CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_haka_objects_Col_00A7F4SurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly object_haka_objects_Col_00A7F4Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x8001, 0xFFEA, 0x0000, 0xF9C0},
    {0x0000, 0x0003, 0x0000, 0x0002, 0x8001, 0xFFEA, 0x0000, 0xF9C0},
    {0x0000, 0x0001, 0x0004, 0x0005, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0002, 0x0001, 0x0005, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0005, 0x0004, 0x0006, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0002, 0x0005, 0x0006, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0007, 0x0003, 0x0006, 0x0000, 0x0000, 0x7FFF, 0xF9C0},
    {0x0000, 0x0008, 0x0004, 0x0001, 0x0000, 0x0000, 0x8001, 0xF9C0},
    {0x0000, 0x0000, 0x0008, 0x0001, 0x0000, 0x0000, 0x8001, 0xF9C0},
    {0x0000, 0x0003, 0x0002, 0x0006, 0x0000, 0x0000, 0x7FFF, 0xF9C0},
    {0x0000, 0x0008, 0x0007, 0x0004, 0x7FFF, 0x0016, 0x0000, 0xF9C0},
    {0x0000, 0x0007, 0x0006, 0x0004, 0x7FFF, 0x0016, 0x0000, 0xF9C0},
    {0x0000, 0x0009, 0x000A, 0x000B, 0x5A82, 0x0000, 0xA57E, 0x0000},
    {0x0000, 0x0009, 0x000B, 0x000C, 0x5A82, 0x0000, 0xA57E, 0x0000},
    {0x0000, 0x000D, 0x000E, 0x000F, 0x5A82, 0x0000, 0x5A82, 0xF7A1},
    {0x0000, 0x000D, 0x000F, 0x0010, 0x5A82, 0x0000, 0x5A82, 0xF7A1},
    {0x0000, 0x0011, 0x0012, 0x0013, 0x5A82, 0x0000, 0xA57E, 0xF7A1},
    {0x0000, 0x0011, 0x0013, 0x0014, 0x5A82, 0x0000, 0xA57E, 0xF7A1},
    {0x0000, 0x0015, 0x0016, 0x0017, 0x5A82, 0x0000, 0x5A82, 0x0000},
    {0x0000, 0x0015, 0x0017, 0x0018, 0x5A82, 0x0000, 0x5A82, 0x0000},
    {0x0000, 0x0019, 0x001A, 0x001B, 0x5A82, 0x0000, 0x5A82, 0x085F},
    {0x0000, 0x0019, 0x001B, 0x001C, 0x5A82, 0x0000, 0x5A82, 0x085F},
    {0x0000, 0x001D, 0x001E, 0x001F, 0x5A82, 0x0000, 0xA57E, 0x0000},
    {0x0000, 0x001D, 0x001F, 0x0020, 0x5A82, 0x0000, 0xA57E, 0x0000},
    {0x0000, 0x0021, 0x0022, 0x0023, 0x5A82, 0x0000, 0x5A82, 0x0000},
    {0x0000, 0x0021, 0x0023, 0x0024, 0x5A82, 0x0000, 0x5A82, 0x0000},
    {0x0000, 0x0025, 0x0026, 0x0027, 0x5A82, 0x0000, 0xA57E, 0x085F},
    {0x0000, 0x0025, 0x0027, 0x0028, 0x5A82, 0x0000, 0xA57E, 0x085F},
    {0x0000, 0x0009, 0x0007, 0x0008, 0x7FFD, 0xFEB8, 0x0000, 0xF9D0},
    {0x0000, 0x0009, 0x0008, 0x0029, 0x7FFF, 0x0000, 0xFFF6, 0xF9C1},
    {0x0000, 0x0021, 0x0003, 0x0007, 0x0000, 0x0000, 0x7FFF, 0xF9C0},
    {0x0000, 0x0021, 0x0007, 0x0009, 0x0000, 0x0000, 0x7FFF, 0xF9C0},
    {0x0000, 0x001E, 0x0000, 0x0003, 0x8003, 0x0148, 0x0000, 0xF9B0},
    {0x0000, 0x001E, 0x0003, 0x0021, 0x8003, 0x0148, 0x0000, 0xF9B0},
    {0x0000, 0x0016, 0x0008, 0x0000, 0x0000, 0x0000, 0x8001, 0xF9C0},
    {0x0000, 0x0016, 0x0000, 0x001E, 0x0000, 0x0000, 0x8001, 0xF9C0},
    {0x0000, 0x0021, 0x0009, 0x002A, 0x0000, 0x7FFF, 0x0000, 0xF9C0},
    {0x0000, 0x0021, 0x002A, 0x001E, 0x0000, 0x7FFF, 0x0000, 0xF9C0},
    {0x0000, 0x002A, 0x0016, 0x001E, 0x0000, 0x7FFF, 0x0000, 0xF9C0},
    {0x0000, 0x0009, 0x0016, 0x002A, 0x0000, 0x7FFF, 0x0000, 0xF9C0},
};

Vec3s object_haka_objects_Col_00A7F4Vertices[] = {
    {  -1601,   1500,  -1600 },
    {  -1600,      0,  -1600 },
    {  -1600,      0,   1600 },
    {  -1601,   1500,   1600 },
    {   1600,      0,  -1600 },
    {      0,      0,      0 },
    {   1600,      0,   1600 },
    {   1599,   1500,   1600 },
    {   1599,   1500,  -1600 },
    {   1600,   1600,   1600 },
    {   1430,   1600,   1430 },
    {   1430,  17052,   1430 },
    {   1600,  17052,   1600 },
    {   1430,   1600,   1600 },
    {   1600,   1600,   1430 },
    {   1600,  17052,   1430 },
    {   1430,  17052,   1600 },
    {   1600,   1600,  -1430 },
    {   1430,   1600,  -1600 },
    {   1430,  17052,  -1600 },
    {   1600,  17052,  -1430 },
    {   1430,   1600,  -1430 },
    {   1600,   1600,  -1600 },
    {   1600,  17052,  -1600 },
    {   1430,  17052,  -1430 },
    {  -1600,   1600,  -1430 },
    {  -1430,   1600,  -1600 },
    {  -1430,  17052,  -1600 },
    {  -1600,  17052,  -1430 },
    {  -1430,   1600,  -1430 },
    {  -1600,   1600,  -1600 },
    {  -1600,  17052,  -1600 },
    {  -1430,  17052,  -1430 },
    {  -1600,   1600,   1600 },
    {  -1430,   1600,   1430 },
    {  -1430,  17052,   1430 },
    {  -1600,  17052,   1600 },
    {  -1430,   1600,   1600 },
    {  -1600,   1600,   1430 },
    {  -1600,  17052,   1430 },
    {  -1430,  17052,   1600 },
    {   1599,   1600,  -1600 },
    {      0,   1600,      0 },
};

CollisionHeader object_haka_objects_Col_00A7F4 = { 
    { -1601, 0, -1600 },
    { 1600, 17052, 1600 },
    43, object_haka_objects_Col_00A7F4Vertices,
    40, object_haka_objects_Col_00A7F4Polygons,
    object_haka_objects_Col_00A7F4SurfaceType,
    object_haka_objects_Col_00A7F4CamDataList,
    0, NULL
};

Vtx object_haka_objectsVtx_00A820[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_00A820.vtx.inc"
};

Gfx object_haka_objects_DL_00A860[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0187F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_haka_objectsVtx_00A820, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

CamData object_haka_objects_Col_00A938CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_haka_objects_Col_00A938SurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly object_haka_objects_Col_00A938Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x8001, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x8001, 0x0000, 0x0000, 0x0000},
};

Vec3s object_haka_objects_Col_00A938Vertices[] = {
    {      0,      0,    400 },
    {      0,   1000,    400 },
    {      0,   1000,   -400 },
    {      0,      0,   -400 },
};

CollisionHeader object_haka_objects_Col_00A938 = { 
    { 0, 0, -400 },
    { 0, 1000, 400 },
    4, object_haka_objects_Col_00A938Vertices,
    2, object_haka_objects_Col_00A938Polygons,
    object_haka_objects_Col_00A938SurfaceType,
    object_haka_objects_Col_00A938CamDataList,
    0, NULL
};

u8 object_haka_objects_possiblePadding_00A964[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_haka_objectsVtx_00A970[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_00A970.vtx.inc"
};

Gfx object_haka_objects_DL_00BF20[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_haka_objects_Tex_019870, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_haka_objectsVtx_00A970, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(7, 10, 11, 0, 7, 11, 8, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 0, 0, 0, 255),
    gsSPVertex(&object_haka_objectsVtx_00A970[12], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 8, 9, 7, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0171F0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_haka_objectsVtx_00A970[22], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 11, 0, 16, 11, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(27, 28, 3, 0, 27, 3, 29, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_haka_objectsVtx_00A970[52], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 10, 9, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&object_haka_objectsVtx_00A970[83], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 3, 0, 3, 5, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(16, 18, 17, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 28, 26, 0, 29, 30, 31, 0),
    gsSPVertex(&object_haka_objectsVtx_00A970[115], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(14, 18, 12, 0, 18, 19, 12, 0),
    gsSP2Triangles(16, 15, 20, 0, 15, 21, 20, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&object_haka_objectsVtx_00A970[146], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 31, 30, 0),
    gsSPVertex(&object_haka_objectsVtx_00A970[178], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_haka_objectsVtx_00A970[210], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 6, 0),
    gsSP2Triangles(6, 8, 9, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 31, 29, 0),
    gsSPVertex(&object_haka_objectsVtx_00A970[242], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 15, 19, 13, 0),
    gsSP2Triangles(19, 20, 13, 0, 17, 16, 21, 0),
    gsSP2Triangles(16, 22, 21, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_haka_objectsVtx_00A970[274], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 31, 30, 0),
    gsSPVertex(&object_haka_objectsVtx_00A970[306], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0197F0, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_00A970[312], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0177F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_haka_objects_Tex_018FF0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR
                       | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 2, 2),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPVertex(&object_haka_objectsVtx_00A970[324], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 5, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0),
    gsSPEndDisplayList(),
};

Vtx object_haka_objectsVtx_00C400[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_00C400.vtx.inc"
};

Gfx object_haka_objects_DL_00D330[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0171F0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_haka_objectsVtx_00C400, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSP2Triangles(8, 9, 0, 0, 3, 8, 0, 0),
    gsSP2Triangles(4, 10, 5, 0, 7, 11, 4, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 14, 0, 16, 14, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(20, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(27, 26, 28, 0, 24, 29, 22, 0),
    gsSPVertex(&object_haka_objectsVtx_00C400[30], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(1, 0, 5, 0, 6, 7, 5, 0),
    gsSP2Triangles(8, 7, 6, 0, 9, 10, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0165F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&object_haka_objectsVtx_00C400[41], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0167F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_00C400[45], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 12, 15, 0, 16, 15, 17, 0),
    gsSP2Triangles(18, 16, 17, 0, 18, 17, 19, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&object_haka_objectsVtx_00C400[75], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP1Triangle(12, 13, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0165F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_00C400[90], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0167F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_00C400[94], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0165F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_00C400[100], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0167F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_00C400[104], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0165F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_00C400[108], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0167F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_00C400[112], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0165F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_00C400[136], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0167F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_00C400[152], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0165F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_00C400[156], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_01C470, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                            | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_haka_objectsVtx_00C400[168], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 5, 0, 4, 5, 6, 0),
    gsSP2Triangles(5, 0, 7, 0, 0, 8, 7, 0),
    gsSP2Triangles(0, 3, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 9, 11, 0, 12, 11, 13, 0),
    gsSP2Triangles(14, 13, 11, 0, 14, 11, 15, 0),
    gsSP2Triangles(10, 16, 17, 0, 10, 17, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0171F0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_haka_objectsVtx_00C400[186], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 6, 0),
    gsSP2Triangles(8, 9, 6, 0, 9, 10, 6, 0),
    gsSP2Triangles(11, 7, 6, 0, 10, 11, 6, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_haka_objectsVtx_00C400[198], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(3, 6, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_016FF0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_haka_objectsVtx_00C400[205], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 2, 0, 4, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0171F0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_haka_objectsVtx_00C400[211], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 3, 5, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_haka_objectsVtx_00C400[218], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 6, 5, 0, 9, 5, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 11, 0, 16, 17, 18, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 18, 0),
    gsSP1Triangle(18, 23, 24, 0),
    gsSPEndDisplayList(),
};

u8 object_haka_objects_possiblePadding_00DA88[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData object_haka_objects_Col_00E408CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_haka_objects_Col_00E408SurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly object_haka_objects_Col_00E408Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xF6F0},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xF6F0},
    {0x0000, 0x0002, 0x0004, 0x0005, 0x0000, 0x7FFF, 0x0000, 0xF6F0},
    {0x0000, 0x0002, 0x0005, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xF6F0},
    {0x0000, 0x0006, 0x0007, 0x0008, 0x0000, 0x7FFF, 0x0000, 0xF6F0},
    {0x0000, 0x0006, 0x0008, 0x0009, 0x0000, 0x7FFF, 0x0000, 0xF6F0},
    {0x0000, 0x0002, 0x0007, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xF6F0},
    {0x0000, 0x0006, 0x000A, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xF6F0},
    {0x0000, 0x000B, 0x000A, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xF6F0},
    {0x0000, 0x0009, 0x000B, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xF6F0},
    {0x0000, 0x0002, 0x0001, 0x0007, 0x0000, 0x7FFF, 0x0000, 0xF6F0},
    {0x0000, 0x000A, 0x0004, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xF6F0},
    {0x0000, 0x000C, 0x000D, 0x0008, 0xBAB0, 0x0000, 0x9465, 0xF5CD},
    {0x0000, 0x000C, 0x0008, 0x000E, 0xBAB0, 0x0000, 0x9465, 0xF5CD},
    {0x0000, 0x000C, 0x000F, 0x0010, 0xAB49, 0xD2F3, 0x54B7, 0xF62D},
    {0x0000, 0x000C, 0x0010, 0x0011, 0xBC63, 0xE3D4, 0x68F8, 0xF7B4},
    {0x0000, 0x0012, 0x000D, 0x000B, 0xBD66, 0xDC91, 0x6767, 0xF8B6},
    {0x0000, 0x0012, 0x000B, 0x0013, 0xC40F, 0xE701, 0x6E4C, 0xF8BD},
    {0x0000, 0x0013, 0x000B, 0x0008, 0x7623, 0x3143, 0x0000, 0x0BA8},
    {0x0000, 0x0013, 0x0008, 0x0014, 0x7623, 0x3143, 0x0000, 0x0BA8},
    {0x0000, 0x0015, 0x0016, 0x0017, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0015, 0x0017, 0x0018, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0019, 0x0015, 0x0018, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0019, 0x0018, 0x001A, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x001B, 0x0019, 0x001A, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x001B, 0x001A, 0x001C, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x001B, 0x001C, 0x0010, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x001B, 0x0010, 0x001D, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x001B, 0x001D, 0x000E, 0xB755, 0xE1B9, 0x9B13, 0xF73A},
    {0x0000, 0x001B, 0x000E, 0x001E, 0xABE7, 0xD0B2, 0xABE7, 0xF6F7},
    {0x0000, 0x0017, 0x0016, 0x001F, 0x7626, 0xCEC5, 0x0000, 0xF5E7},
    {0x0000, 0x0017, 0x001F, 0x0020, 0x7626, 0xCEC5, 0x0000, 0xF5E7},
    {0x0000, 0x0021, 0x001F, 0x0016, 0x355F, 0xD1BE, 0x9541, 0xF8F0},
    {0x0000, 0x0021, 0x0016, 0x0015, 0x3741, 0xD2D7, 0x95BE, 0xF8CA},
    {0x0000, 0x0022, 0x0021, 0x0015, 0x0000, 0xE5E5, 0x82B2, 0xF9E2},
    {0x0000, 0x0022, 0x0015, 0x0019, 0x0000, 0xE5E5, 0x82B2, 0xF9E2},
    {0x0000, 0x0019, 0x001B, 0x001E, 0xD259, 0xDC55, 0x8DDE, 0xF8C1},
    {0x0000, 0x0019, 0x001E, 0x0022, 0xCA5D, 0xD34D, 0x94B9, 0xF8CC},
    {0x0000, 0x000F, 0x001D, 0x0010, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0023, 0x001F, 0x0021, 0x393E, 0x0000, 0x8D84, 0xF585},
    {0x0000, 0x0023, 0x0021, 0x0000, 0x393E, 0x0000, 0x8D84, 0xF585},
    {0x0000, 0x0005, 0x0024, 0x0025, 0x3441, 0x3441, 0x6882, 0xF2BB},
    {0x0000, 0x0026, 0x0023, 0x0000, 0x3441, 0x3441, 0x977E, 0xF2BB},
    {0x0000, 0x0020, 0x001F, 0x0023, 0x7FFF, 0x0000, 0x0000, 0xF1F0},
    {0x0000, 0x0020, 0x0023, 0x0024, 0x7FFF, 0x0000, 0x0000, 0xF1F0},
    {0x0000, 0x0023, 0x0026, 0x0025, 0x7FFF, 0x0000, 0x0000, 0xF1F0},
    {0x0000, 0x0023, 0x0025, 0x0024, 0x7FFF, 0x0000, 0x0000, 0xF1F0},
    {0x0000, 0x0027, 0x0020, 0x0024, 0x393E, 0x0000, 0x727C, 0xF585},
    {0x0000, 0x0027, 0x0024, 0x0005, 0x393E, 0x0000, 0x727C, 0xF585},
    {0x0000, 0x0018, 0x0017, 0x0020, 0x36FB, 0xD14D, 0x69BC, 0xF8D3},
    {0x0000, 0x0018, 0x0020, 0x0027, 0x35A3, 0xD34D, 0x6B47, 0xF8CC},
    {0x0000, 0x001A, 0x0018, 0x0027, 0x0000, 0xE5E5, 0x7D4E, 0xF9E2},
    {0x0000, 0x001A, 0x0027, 0x0028, 0x0000, 0xE5E5, 0x7D4E, 0xF9E2},
    {0x0000, 0x0028, 0x0029, 0x001C, 0xC96E, 0xD959, 0x6D23, 0xF846},
    {0x0000, 0x0028, 0x001C, 0x001A, 0xD31B, 0xD5EA, 0x703C, 0xF8E0},
    {0x0000, 0x0029, 0x0011, 0x0010, 0xA92F, 0xDBD3, 0x56D1, 0xF5EF},
    {0x0000, 0x0029, 0x0010, 0x001C, 0xB9AC, 0xD474, 0x61AD, 0xF783},
    {0x0000, 0x0014, 0x0008, 0x000D, 0xBC64, 0xE3CF, 0x970A, 0xF80D},
    {0x0000, 0x0014, 0x000D, 0x0012, 0xC4C3, 0xE07C, 0x9300, 0xF984},
    {0x0000, 0x000E, 0x001D, 0x000F, 0xA92F, 0xDBD3, 0xA92F, 0xF5EF},
    {0x0000, 0x000E, 0x000F, 0x000C, 0xBD65, 0xDC95, 0x9899, 0xF847},
    {0x0000, 0x0027, 0x0005, 0x0004, 0x0000, 0x0000, 0x7FFF, 0xF830},
    {0x0000, 0x0027, 0x0004, 0x0028, 0x0000, 0x0000, 0x7FFF, 0xF830},
    {0x0000, 0x0028, 0x0004, 0x000A, 0xC6C2, 0x0000, 0x727C, 0xF585},
    {0x0000, 0x0028, 0x000A, 0x0029, 0xC6C2, 0x0000, 0x727C, 0xF585},
    {0x0000, 0x0029, 0x000A, 0x000B, 0xA57E, 0x0000, 0x5A82, 0xF34B},
    {0x0000, 0x0029, 0x000B, 0x0011, 0xA57E, 0x0000, 0x5A82, 0xF34B},
    {0x0000, 0x0011, 0x000B, 0x000D, 0xBAB0, 0x0000, 0x6B9B, 0xF5CD},
    {0x0000, 0x0011, 0x000D, 0x000C, 0xBAB0, 0x0000, 0x6B9B, 0xF5CD},
    {0x0000, 0x0005, 0x0025, 0x0026, 0xB334, 0x6666, 0x0000, 0xFD70},
    {0x0000, 0x0005, 0x0026, 0x0000, 0xB334, 0x6666, 0x0000, 0xFD70},
    {0x0000, 0x000E, 0x0008, 0x0007, 0xA57E, 0x0000, 0xA57E, 0xF34B},
    {0x0000, 0x000E, 0x0007, 0x001E, 0xA57E, 0x0000, 0xA57E, 0xF34B},
    {0x0000, 0x001E, 0x0007, 0x0001, 0xC6C2, 0x0000, 0x8D84, 0xF585},
    {0x0000, 0x001E, 0x0001, 0x0022, 0xC6C2, 0x0000, 0x8D84, 0xF585},
    {0x0000, 0x0022, 0x0001, 0x0000, 0x0000, 0x0000, 0x8001, 0xF830},
    {0x0000, 0x0022, 0x0000, 0x0021, 0x0000, 0x0000, 0x8001, 0xF830},
    {0x0000, 0x002A, 0x002B, 0x002C, 0xF1EC, 0x7EE7, 0xF706, 0xF952},
    {0x0000, 0x002A, 0x002C, 0x002D, 0x036B, 0x7DEF, 0x16A0, 0xFC0F},
    {0x0000, 0x002B, 0x002A, 0x002E, 0xE7F9, 0x0000, 0x7DB9, 0x00F0},
    {0x0000, 0x002B, 0x002E, 0x002F, 0xE862, 0xFFC9, 0x7DCC, 0x00FD},
    {0x0000, 0x002E, 0x002A, 0x0030, 0xA40C, 0x0000, 0x5909, 0xF8D0},
    {0x0000, 0x002A, 0x0031, 0x0030, 0x877A, 0x2ADF, 0x046A, 0xF1D2},
    {0x0000, 0x002A, 0x002D, 0x0031, 0x9678, 0x46A2, 0xEFFA, 0xF1BE},
    {0x0000, 0x0032, 0x0033, 0x0034, 0x9678, 0x46A2, 0x1006, 0xF1BE},
    {0x0000, 0x0035, 0x0032, 0x0034, 0x877A, 0x2ADF, 0xFB96, 0xF1D2},
    {0x0000, 0x0035, 0x0034, 0x0036, 0xA40C, 0x0000, 0xA6F7, 0xF8D0},
    {0x0000, 0x0037, 0x0036, 0x0034, 0xE83D, 0x0000, 0x823B, 0x00F7},
    {0x0000, 0x0037, 0x0034, 0x0038, 0xE804, 0xFFA7, 0x8246, 0x00F4},
    {0x0000, 0x0033, 0x0039, 0x0038, 0x0433, 0x7F9C, 0xF6F9, 0xFB8E},
    {0x0000, 0x0033, 0x0038, 0x0034, 0xED34, 0x7D83, 0xEF62, 0xF996},
    {0x0000, 0x003A, 0x003B, 0x003C, 0xB932, 0xFB78, 0x6A88, 0xF329},
    {0x0000, 0x003D, 0x003C, 0x003E, 0x94CF, 0xDEB5, 0x3D85, 0xF180},
    {0x0000, 0x003D, 0x003A, 0x003C, 0xB475, 0xE452, 0x638D, 0xF5C5},
    {0x0000, 0x003F, 0x0040, 0x0041, 0xB932, 0xFB78, 0x9578, 0xF329},
    {0x0000, 0x003F, 0x0041, 0x0042, 0xB475, 0xE452, 0x9C73, 0xF5C5},
    {0x0000, 0x003E, 0x003F, 0x0042, 0x94CF, 0xDEB5, 0xC27B, 0xF180},
    {0x0000, 0x0043, 0x0044, 0x0045, 0x381B, 0x4B32, 0xA8EE, 0xFF4A},
    {0x0000, 0x0046, 0x0043, 0x0045, 0x4017, 0x4B1B, 0x5174, 0x0095},
    {0x0000, 0x0046, 0x0047, 0x0048, 0xE62B, 0x9BAD, 0x4B2C, 0x06AA},
    {0x0000, 0x0047, 0x0046, 0x003D, 0xF421, 0xF198, 0x7EA1, 0xFE97},
    {0x0000, 0x0042, 0x0045, 0x0044, 0x4252, 0x4B00, 0xB041, 0x00F5},
    {0x0000, 0x0042, 0x0049, 0x003E, 0x9D2A, 0x1631, 0xB1C1, 0xEBBD},
    {0x0000, 0x0049, 0x004A, 0x003E, 0xA6F6, 0x1E29, 0xA923, 0xEC6B},
    {0x0000, 0x0047, 0x003D, 0x003E, 0x9D2A, 0x1631, 0x4E3F, 0xEBBD},
    {0x0000, 0x0047, 0x003E, 0x004A, 0xA6F6, 0x1E29, 0x56DD, 0xEC6B},
    {0x0000, 0x0042, 0x003E, 0x0045, 0x08B2, 0x784B, 0xD523, 0xF1D9},
    {0x0000, 0x003E, 0x003D, 0x0045, 0x08B2, 0x784B, 0x2ADD, 0xF1D9},
    {0x0000, 0x003D, 0x0046, 0x0045, 0x4252, 0x4B00, 0x4FBF, 0x00F5},
    {0x0000, 0x0042, 0x0044, 0x0049, 0xF421, 0xF198, 0x815F, 0xFE97},
    {0x0000, 0x0048, 0x0049, 0x0044, 0xE62B, 0x9BAD, 0xB4D4, 0x06AA},
    {0x0000, 0x0012, 0x0048, 0x0044, 0xC908, 0xD4FF, 0x94B5, 0xFB61},
    {0x0000, 0x0012, 0x0044, 0x0014, 0xC5F8, 0xD7D1, 0x953A, 0xFA97},
    {0x0000, 0x0046, 0x0048, 0x0012, 0xC908, 0xD4FF, 0x6B4B, 0xFB61},
    {0x0000, 0x0046, 0x0012, 0x0013, 0xC5F8, 0xD7D1, 0x6AC6, 0xFA97},
    {0x0000, 0x0014, 0x0044, 0x0043, 0x3618, 0x4E32, 0xAA50, 0xFEA7},
    {0x0000, 0x0043, 0x0046, 0x0013, 0x3B19, 0x5217, 0x4E6F, 0xFF0D},
    {0x0000, 0x0043, 0x0013, 0x0014, 0x7D4B, 0x1A28, 0x0000, 0x0F01},
    {0x0000, 0x004A, 0x0049, 0x004B, 0xB21B, 0x333F, 0xA84F, 0xEBDE},
    {0x0000, 0x004B, 0x0049, 0x0048, 0x3617, 0xABA8, 0xB05B, 0x1285},
    {0x0000, 0x0048, 0x0047, 0x004B, 0x3617, 0xABA8, 0x4FA5, 0x1285},
    {0x0000, 0x004B, 0x0047, 0x004A, 0xB21B, 0x333F, 0x57B1, 0xEBDE},
};

Vec3s object_haka_objects_Col_00E408Vertices[] = {
    {   2000,   2320,  -2000 },
    {  -2000,   2320,  -2000 },
    {  -2000,   2320,      0 },
    {   2000,   2320,      0 },
    {  -2000,   2320,   2000 },
    {   2000,   2320,   2000 },
    {  -3200,   2320,      0 },
    {  -3200,   2320,  -1400 },
    {  -4200,   2320,   -400 },
    {  -4200,   2320,      0 },
    {  -3200,   2320,   1400 },
    {  -4200,   2320,    400 },
    {  -4821,   1920,      0 },
    {  -4821,   2320,      0 },
    {  -4200,   1920,   -400 },
    {  -3800,      0,      0 },
    {  -3400,      0,    400 },
    {  -4200,   1920,    400 },
    {  -5353,   3320,      0 },
    {  -4617,   3320,    400 },
    {  -4617,   3320,   -400 },
    {   1200,      0,  -1600 },
    {   2800,      0,   -768 },
    {   2800,      0,    768 },
    {   1200,      0,   1600 },
    {  -1200,      0,  -1600 },
    {  -1200,      0,   1600 },
    {  -2400,      0,  -1120 },
    {  -2400,      0,   1120 },
    {  -3400,      0,   -400 },
    {  -3200,   1920,  -1400 },
    {   3600,   1920,  -1200 },
    {   3600,   1920,   1200 },
    {   2000,   1920,  -2000 },
    {  -2000,   1920,  -2000 },
    {   3600,   2320,  -1200 },
    {   3600,   2320,   1200 },
    {   3600,   3520,    600 },
    {   3600,   3520,   -600 },
    {   2000,   1920,   2000 },
    {  -2000,   1920,   2000 },
    {  -3200,   1920,   1400 },
    {  -3433,   1280,   -900 },
    {  -3208,   1308,   -857 },
    {  -2849,   1322,  -1222 },
    {  -3340,   1340,  -1248 },
    {  -3433,    860,   -900 },
    {  -3126,   1075,   -842 },
    {  -3677,    620,  -1152 },
    {  -3583,    920,  -1499 },
    {  -3583,    920,   1499 },
    {  -3340,   1340,   1248 },
    {  -3433,   1280,    900 },
    {  -3677,    620,   1152 },
    {  -3433,    860,    900 },
    {  -3126,   1075,    842 },
    {  -3208,   1308,    857 },
    {  -2849,   1322,   1222 },
    {  -5491,   4671,    499 },
    {  -5550,   5593,    499 },
    {  -5701,   4755,    363 },
    {  -5537,   4142,    317 },
    {  -5759,   4271,      0 },
    {  -5701,   4755,   -363 },
    {  -5550,   5593,   -499 },
    {  -5491,   4671,   -499 },
    {  -5537,   4142,   -317 },
    {  -4717,   3799,    -26 },
    {  -5046,   3711,   -314 },
    {  -5261,   4235,      0 },
    {  -5046,   3711,    314 },
    {  -5642,   3833,    272 },
    {  -5583,   3614,      0 },
    {  -5642,   3833,   -272 },
    {  -5864,   3961,      0 },
    {  -6464,   3049,      0 },
};

CollisionHeader object_haka_objects_Col_00E408 = { 
    { -6464, 0, -2000 },
    { 3600, 5593, 2000 },
    76, object_haka_objects_Col_00E408Vertices,
    122, object_haka_objects_Col_00E408Polygons,
    object_haka_objects_Col_00E408SurfaceType,
    object_haka_objects_Col_00E408CamDataList,
    0, NULL
};

u8 object_haka_objects_possiblePadding_00E434[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_haka_objectsVtx_00E440[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_00E440.vtx.inc"
};

Gfx object_haka_objects_DL_00E910[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0171F0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_haka_objectsVtx_00E440, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(5, 1, 6, 0, 7, 1, 8, 0),
    gsSP2Triangles(9, 1, 10, 0, 11, 1, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_haka_objectsVtx_00E440[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 12, 15, 0, 16, 12, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP1Triangle(30, 12, 31, 0),
    gsSPVertex(&object_haka_objectsVtx_00E440[64], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSPEndDisplayList(),
};

CamData object_haka_objects_Col_00ED7CCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_haka_objects_Col_00ED7CSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
    { 0x00000000, 0x000007C2 },
};

CollisionPoly object_haka_objects_Col_00ED7CPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xF75A},
    {0x0000, 0x0002, 0x0001, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xF75A},
    {0x0000, 0x0004, 0x0001, 0x0000, 0x0000, 0x0000, 0x7FFF, 0xF75A},
    {0x0000, 0x0005, 0x0001, 0x0004, 0x0000, 0x0000, 0x7FFF, 0xF75A},
    {0x0000, 0x0006, 0x0001, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xF75A},
    {0x0000, 0x0003, 0x0001, 0x0006, 0x0000, 0x0000, 0x7FFF, 0xF75A},
    {0x0001, 0x0007, 0x0008, 0x0009, 0xBFFF, 0x6ED8, 0x0000, 0xFB6F},
    {0x0001, 0x0007, 0x0009, 0x000A, 0xBFFF, 0x6ED8, 0x0000, 0xFB6F},
    {0x0001, 0x000B, 0x000C, 0x0008, 0x8001, 0x0000, 0x0000, 0xFB6F},
    {0x0001, 0x000B, 0x0008, 0x0007, 0x8001, 0x0000, 0x0000, 0xFB6F},
    {0x0001, 0x000D, 0x000E, 0x000F, 0x4001, 0x9128, 0x0000, 0xFB6F},
    {0x0001, 0x000D, 0x000F, 0x0010, 0x4001, 0x9128, 0x0000, 0xFB6F},
    {0x0001, 0x0010, 0x000F, 0x000C, 0xBFFF, 0x9128, 0x0000, 0xFB6F},
    {0x0001, 0x0010, 0x000C, 0x000B, 0xBFFF, 0x9128, 0x0000, 0xFB6F},
    {0x0001, 0x0011, 0x0012, 0x000E, 0x7FFF, 0x0000, 0x0000, 0xFB6F},
    {0x0001, 0x0011, 0x000E, 0x000D, 0x7FFF, 0x0000, 0x0000, 0xFB6F},
    {0x0001, 0x000A, 0x0009, 0x0012, 0x4001, 0x6ED8, 0x0000, 0xFB6F},
    {0x0001, 0x000A, 0x0012, 0x0011, 0x4001, 0x6ED8, 0x0000, 0xFB6F},
    {0x0001, 0x0013, 0x0014, 0x0015, 0x4001, 0x6ED8, 0x0000, 0xFB6F},
    {0x0001, 0x0013, 0x0015, 0x0016, 0x4001, 0x6ED8, 0x0000, 0xFB6F},
    {0x0000, 0x0017, 0x0018, 0x0019, 0x0000, 0x0000, 0x8001, 0xF75A},
    {0x0000, 0x001A, 0x0018, 0x001B, 0x0000, 0x0000, 0x8001, 0xF75A},
    {0x0000, 0x001B, 0x0018, 0x0017, 0x0000, 0x0000, 0x8001, 0xF75A},
    {0x0001, 0x001C, 0x001D, 0x001E, 0xBFFF, 0x9128, 0x0000, 0xFB6F},
    {0x0001, 0x001C, 0x001E, 0x001F, 0xBFFF, 0x9128, 0x0000, 0xFB6F},
    {0x0001, 0x0020, 0x0021, 0x001D, 0x8001, 0x0000, 0x0000, 0xFB6F},
    {0x0001, 0x0020, 0x001D, 0x001C, 0x8001, 0x0000, 0x0000, 0xFB6F},
    {0x0001, 0x0016, 0x0015, 0x0021, 0xBFFF, 0x6ED8, 0x0000, 0xFB6F},
    {0x0001, 0x0016, 0x0021, 0x0020, 0xBFFF, 0x6ED8, 0x0000, 0xFB6F},
    {0x0000, 0x0022, 0x0018, 0x001A, 0x0000, 0x0000, 0x8001, 0xF75A},
    {0x0000, 0x0023, 0x0018, 0x0022, 0x0000, 0x0000, 0x8001, 0xF75A},
    {0x0000, 0x0019, 0x0018, 0x0023, 0x0000, 0x0000, 0x8001, 0xF75A},
    {0x0001, 0x0024, 0x0025, 0x0014, 0x7FFF, 0x0000, 0x0000, 0xFB6F},
    {0x0001, 0x0024, 0x0014, 0x0013, 0x7FFF, 0x0000, 0x0000, 0xFB6F},
    {0x0001, 0x001F, 0x001E, 0x0025, 0x4001, 0x9128, 0x0000, 0xFB6F},
    {0x0001, 0x001F, 0x0025, 0x0024, 0x4001, 0x9128, 0x0000, 0xFB6F},
};

Vec3s object_haka_objects_Col_00ED7CVertices[] = {
    {  -1146,   -661,   2214 },
    {      0,      0,   2214 },
    {  -1146,    661,   2214 },
    {      0,   1323,   2214 },
    {      0,  -1323,   2214 },
    {   1146,   -661,   2214 },
    {   1146,    661,   2214 },
    {  -1169,    675,   2014 },
    {  -1169,    675,   2414 },
    {      0,   1350,   2414 },
    {      0,   1350,   2014 },
    {  -1169,   -675,   2014 },
    {  -1169,   -675,   2414 },
    {   1169,   -675,   2014 },
    {   1169,   -675,   2414 },
    {      0,  -1350,   2414 },
    {      0,  -1350,   2014 },
    {   1169,    675,   2014 },
    {   1169,    675,   2414 },
    {   1169,    675,  -2014 },
    {   1169,    675,  -2414 },
    {      0,   1350,  -2414 },
    {      0,   1350,  -2014 },
    {  -1146,   -661,  -2214 },
    {      0,      0,  -2214 },
    {      0,  -1323,  -2214 },
    {      0,   1323,  -2214 },
    {  -1146,    661,  -2214 },
    {  -1169,   -675,  -2014 },
    {  -1169,   -675,  -2414 },
    {      0,  -1350,  -2414 },
    {      0,  -1350,  -2014 },
    {  -1169,    675,  -2014 },
    {  -1169,    675,  -2414 },
    {   1146,    661,  -2214 },
    {   1146,   -661,  -2214 },
    {   1169,   -675,  -2014 },
    {   1169,   -675,  -2414 },
};

CollisionHeader object_haka_objects_Col_00ED7C = { 
    { -1169, -1350, -2414 },
    { 1169, 1350, 2414 },
    38, object_haka_objects_Col_00ED7CVertices,
    36, object_haka_objects_Col_00ED7CPolygons,
    object_haka_objects_Col_00ED7CSurfaceType,
    object_haka_objects_Col_00ED7CCamDataList,
    0, NULL
};

u8 object_haka_objects_possiblePadding_00EDA8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_haka_objectsVtx_00EDB0[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_00EDB0.vtx.inc"
};

Gfx object_haka_objects_DL_00F1B0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0165F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_haka_objectsVtx_00EDB0, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(0, 2, 5, 0, 5, 2, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 7, 9, 0),
    gsSP2Triangles(6, 3, 7, 0, 7, 1, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0167F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_00EDB0[10], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_016BF0, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                            | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&object_haka_objectsVtx_00EDB0[14], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 0, 0, 5, 3, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 7, 6, 0, 11, 10, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_016DF0, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                            | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_00EDB0[26], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 5, 0),
    gsSP2Triangles(25, 5, 4, 0, 27, 28, 19, 0),
    gsSP2Triangles(27, 19, 18, 0, 29, 30, 15, 0),
    gsSP1Triangle(29, 15, 14, 0),
    gsSPVertex(&object_haka_objectsVtx_00EDB0[57], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(3, 5, 6, 0),
    gsSPEndDisplayList(),
};

Vtx object_haka_objectsVtx_00F3C0[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_00F3C0.vtx.inc"
};

Gfx object_haka_objects_DL_00FE40[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0171F0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_haka_objectsVtx_00F3C0, 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 5, 0, 12, 5, 14, 0),
    gsSP2Triangles(3, 2, 15, 0, 3, 15, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_016BF0, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                            | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_00F3C0[17], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(8, 10, 14, 0, 12, 15, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_016DF0, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                            | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_00F3C0[33], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 6, 8, 0),
    gsSP2Triangles(6, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 6, 0),
    gsSP2Triangles(11, 12, 6, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(22, 21, 23, 0, 22, 23, 24, 0),
    gsSP2Triangles(18, 21, 25, 0, 17, 21, 18, 0),
    gsSP2Triangles(26, 18, 25, 0, 26, 27, 18, 0),
    gsSP2Triangles(27, 28, 18, 0, 27, 29, 30, 0),
    gsSP2Triangles(27, 30, 28, 0, 18, 31, 16, 0),
    gsSP1Triangle(18, 28, 31, 0),
    gsSPVertex(&object_haka_objectsVtx_00F3C0[65], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 9, 8, 0),
    gsSP1Triangle(8, 4, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_01C270, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                            | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_00F3C0[77], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 2, 0, 1, 12, 2, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 15, 17, 0),
    gsSP2Triangles(18, 17, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 24, 26, 25, 0),
    gsSP2Triangles(27, 28, 29, 0, 30, 31, 28, 0),
    gsSPVertex(&object_haka_objectsVtx_00F3C0[109], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(4, 8, 5, 0, 9, 5, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 20, 21, 0, 22, 18, 21, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(27, 22, 21, 0, 27, 21, 28, 0),
    gsSP2Triangles(20, 19, 29, 0, 19, 30, 31, 0),
    gsSP1Triangle(19, 31, 29, 0),
    gsSPVertex(&object_haka_objectsVtx_00F3C0[141], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 6, 7, 5, 0),
    gsSP2Triangles(0, 2, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 9, 11, 0, 12, 11, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 25, 0, 0),
    gsSP2Triangles(22, 0, 23, 0, 25, 1, 0, 0),
    gsSP1Triangle(26, 12, 13, 0),
    gsSPEndDisplayList(),
};

u8 object_haka_objects_possiblePadding_010168[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData object_haka_objects_Col_0108B8CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_haka_objects_Col_0108B8SurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly object_haka_objects_Col_0108B8Polygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x508A, 0xAC59, 0xCA28, 0x0064},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x5D2B, 0xBAFC, 0xC9C8, 0xFFC3},
    {0x0000, 0x2004, 0x0005, 0x0002, 0x5D2B, 0xBAFC, 0x3638, 0xFFC3},
    {0x0000, 0x2004, 0x0002, 0x0001, 0x508A, 0xAC59, 0x35D8, 0x0064},
    {0x0000, 0x2006, 0x0007, 0x0008, 0xAF76, 0xAC59, 0x35D8, 0x0064},
    {0x0000, 0x2006, 0x0008, 0x0009, 0xA2D5, 0xBAFC, 0x3638, 0xFFC3},
    {0x0000, 0x2008, 0x0007, 0x000A, 0xAF76, 0xAC59, 0xCA28, 0x0064},
    {0x0000, 0x2008, 0x000A, 0x000B, 0xA2D5, 0xBAFC, 0xC9C8, 0xFFC3},
    {0x0000, 0x200C, 0x000D, 0x000E, 0x91FC, 0x0FB7, 0xC07F, 0xFC7D},
    {0x0000, 0x200C, 0x000E, 0x000F, 0x91EA, 0x133B, 0xC199, 0xFC4E},
    {0x0000, 0x2010, 0x0011, 0x000D, 0x9268, 0x1341, 0x3F42, 0xFC4B},
    {0x0000, 0x2010, 0x000D, 0x000C, 0x9180, 0x0FC9, 0x3EA3, 0xFC79},
    {0x0000, 0x2012, 0x0013, 0x0014, 0x6D98, 0x1341, 0xC0BE, 0xFC4B},
    {0x0000, 0x2012, 0x0014, 0x0015, 0x6E80, 0x0FC9, 0xC15D, 0xFC79},
    {0x0000, 0x2015, 0x0014, 0x0016, 0x6E04, 0x0FB7, 0x3F81, 0xFC7D},
    {0x0000, 0x2015, 0x0016, 0x0017, 0x6E16, 0x133B, 0x3E67, 0xFC4E},
    {0x0000, 0x2018, 0x0019, 0x0012, 0x21A5, 0x0307, 0x848B, 0xFCD4},
    {0x0000, 0x2018, 0x0012, 0x0000, 0x1ED0, 0x04D5, 0x83DD, 0xFCC1},
    {0x0000, 0x2003, 0x0018, 0x0000, 0x1E83, 0xED76, 0x8515, 0xFD83},
    {0x0000, 0x200B, 0x0018, 0x0003, 0x0000, 0xC9B0, 0x8C19, 0xFECC},
    {0x0000, 0x2004, 0x0017, 0x001A, 0x21A1, 0x04DB, 0x7B67, 0xFCBC},
    {0x0000, 0x2004, 0x001A, 0x001B, 0x1ED4, 0x030C, 0x7C31, 0xFCCF},
    {0x0000, 0x2001, 0x0015, 0x0017, 0x6E84, 0x0FA1, 0x3EA6, 0xFC7B},
    {0x0000, 0x2001, 0x0017, 0x0004, 0x6A59, 0x044E, 0x4719, 0xFCF3},
    {0x0000, 0x2012, 0x0015, 0x0001, 0x6E84, 0x0FA1, 0xC15A, 0xFC7B},
    {0x0000, 0x2000, 0x0012, 0x0001, 0x6A59, 0x044E, 0xB8E7, 0xFCF3},
    {0x0000, 0x2004, 0x001B, 0x0005, 0x1E83, 0xED76, 0x7AEB, 0xFD83},
    {0x0000, 0x2005, 0x001B, 0x0009, 0x0000, 0xC9B0, 0x73E7, 0xFECC},
    {0x0000, 0x200A, 0x000F, 0x0019, 0xDE5F, 0x04DB, 0x8499, 0xFCBC},
    {0x0000, 0x200A, 0x0019, 0x0018, 0xE12C, 0x030C, 0x83CF, 0xFCCF},
    {0x0000, 0x200A, 0x0018, 0x000B, 0xE17D, 0xED76, 0x8515, 0xFD83},
    {0x0000, 0x201B, 0x001A, 0x0010, 0xDE5B, 0x0307, 0x7B75, 0xFCD4},
    {0x0000, 0x201B, 0x0010, 0x0006, 0xE130, 0x04D5, 0x7C23, 0xFCC1},
    {0x0000, 0x2010, 0x000C, 0x0007, 0x917C, 0x0FA1, 0x3EA6, 0xFC7B},
    {0x0000, 0x2006, 0x0010, 0x0007, 0x95A7, 0x044E, 0x4719, 0xFCF3},
    {0x0000, 0x2007, 0x000C, 0x000F, 0x917C, 0x0FA1, 0xC15A, 0xFC7B},
    {0x0000, 0x2007, 0x000F, 0x000A, 0x95A7, 0x044E, 0xB8E7, 0xFCF3},
    {0x0000, 0x2009, 0x001B, 0x0006, 0xE17D, 0xED76, 0x7AEB, 0xFD83},
    {0x0000, 0x201C, 0x001D, 0x001E, 0x0000, 0x7FFF, 0x0000, 0xFED4},
    {0x0000, 0x201C, 0x001F, 0x001D, 0x0000, 0x7FFF, 0x0000, 0xFED4},
    {0x0000, 0x201C, 0x0020, 0x0021, 0x0000, 0x7FFF, 0x0000, 0xFED4},
    {0x0000, 0x201C, 0x001E, 0x0020, 0x0000, 0x7FFF, 0x0000, 0xFED4},
    {0x0000, 0x2022, 0x0011, 0x0016, 0x0000, 0x0000, 0x7FFF, 0xFD65},
    {0x0000, 0x2022, 0x0016, 0x0023, 0x0000, 0x0000, 0x7FFF, 0xFD65},
    {0x0000, 0x2024, 0x000D, 0x0011, 0x9125, 0x0000, 0x3FFD, 0xFD65},
    {0x0000, 0x2024, 0x0011, 0x0022, 0x9125, 0x0000, 0x3FFD, 0xFD65},
    {0x0000, 0x2011, 0x0010, 0x001A, 0xDE9B, 0x0FDC, 0x7A8B, 0xFC2E},
    {0x0000, 0x2011, 0x001A, 0x0016, 0x0000, 0x42E3, 0x6D21, 0xF9D8},
    {0x0000, 0x2016, 0x001A, 0x0017, 0x2165, 0x0FDC, 0x7A8B, 0xFC2E},
    {0x0000, 0x2019, 0x000F, 0x000E, 0xDE9B, 0x0FDC, 0x8575, 0xFC2E},
    {0x0000, 0x2013, 0x0019, 0x000E, 0x0000, 0x42E3, 0x92DF, 0xF9D8},
    {0x0000, 0x2012, 0x0019, 0x0013, 0x2165, 0x0FDC, 0x8575, 0xFC2E},
    {0x0000, 0x2025, 0x0013, 0x000E, 0x0000, 0x0000, 0x8001, 0xFD65},
    {0x0000, 0x2025, 0x000E, 0x0026, 0x0000, 0x0000, 0x8001, 0xFD65},
    {0x0000, 0x2026, 0x000E, 0x000D, 0x9125, 0x0000, 0xC003, 0xFD65},
    {0x0000, 0x2026, 0x000D, 0x0024, 0x9125, 0x0000, 0xC003, 0xFD65},
    {0x0000, 0x2027, 0x0014, 0x0013, 0x6EDB, 0x0000, 0xC003, 0xFD65},
    {0x0000, 0x2027, 0x0013, 0x0025, 0x6EDB, 0x0000, 0xC003, 0xFD65},
    {0x0000, 0x2023, 0x0016, 0x0014, 0x6EDB, 0x0000, 0x3FFD, 0xFD65},
    {0x0000, 0x2023, 0x0014, 0x0027, 0x6EDB, 0x0000, 0x3FFD, 0xFD65},
    {0x0000, 0x2028, 0x0029, 0x0023, 0x0000, 0x7FFF, 0x0000, 0xF6DA},
    {0x0000, 0x2028, 0x0023, 0x0027, 0x0000, 0x7FFF, 0x0000, 0xF6DA},
    {0x0000, 0x202A, 0x0028, 0x0027, 0x0000, 0x7FFF, 0x0000, 0xF6DA},
    {0x0000, 0x202A, 0x0027, 0x0025, 0x0000, 0x7FFF, 0x0000, 0xF6DA},
    {0x0000, 0x202B, 0x002C, 0x0026, 0x0000, 0x7FFF, 0x0000, 0xF6DA},
    {0x0000, 0x202B, 0x0026, 0x0024, 0x0000, 0x7FFF, 0x0000, 0xF6DA},
    {0x0000, 0x202C, 0x002A, 0x0025, 0x0000, 0x7FFF, 0x0000, 0xF6DA},
    {0x0000, 0x202C, 0x0025, 0x0026, 0x0000, 0x7FFF, 0x0000, 0xF6DA},
    {0x0000, 0x202D, 0x002B, 0x0024, 0x0000, 0x7FFF, 0x0000, 0xF6DA},
    {0x0000, 0x202D, 0x0024, 0x0022, 0x0000, 0x7FFF, 0x0000, 0xF6DA},
    {0x0000, 0x2029, 0x002D, 0x0022, 0x0000, 0x7FFF, 0x0000, 0xF6DA},
    {0x0000, 0x2029, 0x0022, 0x0023, 0x0000, 0x7FFF, 0x0000, 0xF6DA},
    {0x0000, 0x201C, 0x002C, 0x002B, 0x6EB0, 0x0665, 0x3FF5, 0x018D},
    {0x0000, 0x201C, 0x002B, 0x001F, 0x6ECF, 0x0675, 0x3FBE, 0x018C},
    {0x0000, 0x201F, 0x002B, 0x002D, 0x6EAF, 0x0673, 0xC00B, 0x018C},
    {0x0000, 0x201F, 0x002D, 0x001D, 0x6ED0, 0x0663, 0xC042, 0x018C},
    {0x0000, 0x201D, 0x002D, 0x0029, 0x0000, 0x0663, 0x802A, 0x018D},
    {0x0000, 0x201D, 0x0029, 0x001E, 0x0000, 0x0663, 0x802A, 0x018D},
    {0x0000, 0x201E, 0x0029, 0x0028, 0x9150, 0x0665, 0xC00B, 0x018D},
    {0x0000, 0x201E, 0x0028, 0x0020, 0x9131, 0x0675, 0xC042, 0x018C},
    {0x0000, 0x2021, 0x002A, 0x002C, 0x0000, 0x0663, 0x7FD6, 0x018D},
    {0x0000, 0x2021, 0x002C, 0x001C, 0x0000, 0x0663, 0x7FD6, 0x018D},
    {0x0000, 0x2020, 0x0028, 0x002A, 0x9151, 0x0673, 0x3FF5, 0x018C},
    {0x0000, 0x2020, 0x002A, 0x0021, 0x9130, 0x0663, 0x3FBE, 0x018C},
    {0x0000, 0x2008, 0x002E, 0x002F, 0x919A, 0xF78F, 0x4038, 0xFDE8},
    {0x0000, 0x2008, 0x002F, 0x0009, 0x919D, 0xF796, 0x403D, 0xFDE7},
    {0x0000, 0x200B, 0x0030, 0x002E, 0x9199, 0xF796, 0xBFC8, 0xFDE8},
    {0x0000, 0x200B, 0x002E, 0x0008, 0x919D, 0xF790, 0xBFC3, 0xFDE8},
    {0x0000, 0x2003, 0x0031, 0x0030, 0x0000, 0xF5C6, 0x806A, 0xFD73},
    {0x0000, 0x2003, 0x0030, 0x000B, 0x0000, 0xF5C6, 0x806A, 0xFD73},
    {0x0000, 0x2002, 0x0032, 0x0031, 0x6E66, 0xF78F, 0xBFC8, 0xFDE8},
    {0x0000, 0x2002, 0x0031, 0x0003, 0x6E63, 0xF796, 0xBFC3, 0xFDE7},
    {0x0000, 0x2005, 0x0033, 0x0032, 0x6E67, 0xF796, 0x4038, 0xFDE8},
    {0x0000, 0x2005, 0x0032, 0x0002, 0x6E63, 0xF790, 0x403D, 0xFDE8},
    {0x0000, 0x2009, 0x002F, 0x0033, 0x0000, 0xF5C6, 0x7F96, 0xFD73},
    {0x0000, 0x2009, 0x0033, 0x0005, 0x0000, 0xF5C6, 0x7F96, 0xFD73},
};

Vec3s object_haka_objects_Col_0108B8Vertices[] = {
    {    423,   1018,   -712 },
    {    899,   1018,      0 },
    {    684,    811,      0 },
    {    265,    811,   -720 },
    {    423,   1018,    712 },
    {    265,    811,    720 },
    {   -423,   1018,    712 },
    {   -899,   1018,      0 },
    {   -684,    811,      0 },
    {   -265,    811,    720 },
    {   -423,   1018,   -712 },
    {   -265,    811,   -720 },
    {   -801,   1711,      0 },
    {   -770,   1928,      0 },
    {   -385,   1928,   -667 },
    {   -411,   1711,   -688 },
    {   -411,   1711,    688 },
    {   -385,   1928,    667 },
    {    411,   1711,   -688 },
    {    385,   1928,   -667 },
    {    770,   1928,      0 },
    {    801,   1711,      0 },
    {    385,   1928,    667 },
    {    411,   1711,    688 },
    {      0,   1018,   -817 },
    {      0,   1711,   -800 },
    {      0,   1711,    800 },
    {      0,   1018,    817 },
    {   -238,    300,   -412 },
    {   -238,    300,    412 },
    {    238,    300,    412 },
    {   -475,    300,      0 },
    {    475,    300,      0 },
    {    238,    300,   -412 },
    {   -385,   2342,    667 },
    {    385,   2342,    667 },
    {   -770,   2342,      0 },
    {    385,   2342,   -667 },
    {   -385,   2342,   -667 },
    {    770,   2342,      0 },
    {    594,   2342,      0 },
    {    297,   2342,    514 },
    {    297,   2342,   -514 },
    {   -594,   2342,      0 },
    {   -297,   2342,   -514 },
    {   -297,   2342,    514 },
    {   -622,      0,      0 },
    {   -241,      0,    655 },
    {   -241,      0,   -655 },
    {    241,      0,   -655 },
    {    622,      0,      0 },
    {    241,      0,    655 },
};

CollisionHeader object_haka_objects_Col_0108B8 = { 
    { -899, 0, -817 },
    { 899, 2342, 817 },
    52, object_haka_objects_Col_0108B8Vertices,
    96, object_haka_objects_Col_0108B8Polygons,
    object_haka_objects_Col_0108B8SurfaceType,
    object_haka_objects_Col_0108B8CamDataList,
    0, NULL
};

u8 object_haka_objects_possiblePadding_0108E4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_haka_objectsVtx_0108F0[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_0108F0.vtx.inc"
};

Gfx object_haka_objects_DL_010A10[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0177F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_haka_objects_Tex_017FF0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR
                       | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPVertex(object_haka_objectsVtx_0108F0, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSPEndDisplayList(),
};

Vtx object_haka_objectsVtx_010AF0[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_010AF0.vtx.inc"
};

Gfx object_haka_objects_DL_010C10[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0177F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_haka_objects_Tex_017FF0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR
                       | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPVertex(object_haka_objectsVtx_010AF0, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSPEndDisplayList(),
};

CamData object_haka_objects_Col_010E10CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_haka_objects_Col_010E10SurfaceType[] = {
    { 0x24000000, 0x000007C2 },
};

CollisionPoly object_haka_objects_Col_010E10Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0001, 0x0003, 0x0002, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0004, 0x0005, 0x0002, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0003, 0x0004, 0x0002, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0006, 0x0007, 0x0002, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0007, 0x0008, 0x0002, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0009, 0x0006, 0x0002, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0005, 0x0009, 0x0002, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0008, 0x000A, 0x0002, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x000A, 0x000B, 0x0002, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x000C, 0x0000, 0x0002, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x000B, 0x000C, 0x0002, 0x0000, 0x7FFF, 0x0000, 0x0000},
};

Vec3s object_haka_objects_Col_010E10Vertices[] = {
    {  -1000,      0,   1732 },
    {      0,      0,   2000 },
    {      0,      0,      0 },
    {   1000,      0,   1732 },
    {   1732,      0,   1000 },
    {   2000,      0,      0 },
    {   1000,      0,  -1732 },
    {      0,      0,  -2000 },
    {  -1000,      0,  -1732 },
    {   1732,      0,  -1000 },
    {  -1732,      0,  -1000 },
    {  -2000,      0,      0 },
    {  -1732,      0,   1000 },
};

CollisionHeader object_haka_objects_Col_010E10 = { 
    { -2000, 0, -2000 },
    { 2000, 0, 2000 },
    13, object_haka_objects_Col_010E10Vertices,
    12, object_haka_objects_Col_010E10Polygons,
    object_haka_objects_Col_010E10SurfaceType,
    object_haka_objects_Col_010E10CamDataList,
    0, NULL
};

Vtx object_haka_objectsVtx_010E40[] = {
#include "assets/objects/object_haka_objects/object_haka_objectsVtx_010E40.vtx.inc"
};

Gfx object_haka_objects_DL_012270[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0165F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_haka_objectsVtx_010E40, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0167F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_010E40[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0165F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_010E40[8], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_haka_objectsVtx_010E40[40], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_haka_objectsVtx_010E40[72], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0167F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_010E40[76], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(7, 10, 11, 0, 7, 11, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_haka_objects_Tex_0165F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_010E40[88], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0171F0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&object_haka_objectsVtx_010E40[104], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 7, 8, 0),
    gsSP2Triangles(0, 9, 10, 0, 0, 11, 12, 0),
    gsSP2Triangles(0, 13, 14, 0, 0, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(21, 22, 20, 0, 21, 20, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_haka_objectsVtx_010E40[136], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 10, 11, 0, 12, 13, 6, 0),
    gsSP2Triangles(7, 14, 15, 0, 16, 17, 6, 0),
    gsSP2Triangles(18, 19, 6, 0, 7, 20, 21, 0),
    gsSP2Triangles(7, 22, 23, 0, 24, 25, 6, 0),
    gsSP2Triangles(26, 27, 6, 0, 7, 28, 29, 0),
    gsSPVertex(&object_haka_objectsVtx_010E40[166], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 4, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 4, 12, 0, 13, 8, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 18, 16, 0),
    gsSP2Triangles(18, 19, 16, 0, 19, 20, 16, 0),
    gsSP1Triangle(20, 17, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0173F0, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_haka_objectsVtx_010E40[187], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0171F0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_010E40[191], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(3, 6, 4, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_haka_objectsVtx_010E40[198], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0173F0, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_haka_objectsVtx_010E40[201], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_016FF0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_haka_objectsVtx_010E40[204], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0171F0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_010E40[208], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_016FF0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_010E40[211], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0171F0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_haka_objectsVtx_010E40[215], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 3, 5, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_haka_objectsVtx_010E40[222], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP1Triangle(5, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0173F0, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_haka_objectsVtx_010E40[230], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 5, 7, 0),
    gsSP2Triangles(5, 8, 7, 0, 9, 10, 11, 0),
    gsSP1Triangle(9, 11, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0171F0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_haka_objectsVtx_010E40[243], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_haka_objectsVtx_010E40[275], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 8, 0),
    gsSP2Triangles(4, 9, 10, 0, 4, 11, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0175F0, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                            | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_010E40[288], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_haka_objects_Tex_0171F0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_haka_objectsVtx_010E40[296], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 2, 0, 7, 8, 2, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 11, 0),
    gsSP2Triangles(14, 15, 11, 0, 16, 17, 11, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 20, 0),
    gsSP2Triangles(23, 24, 20, 0, 25, 26, 20, 0),
    gsSPEndDisplayList(),
};

CamData object_haka_objects_Col_0131C4CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_haka_objects_Col_0131C4SurfaceType[] = {
    { 0x00000000, 0x000007C0 },
    { 0x00E00000, 0x000007C0 },
};

CollisionPoly object_haka_objects_Col_0131C4Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFB50},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xFB50},
    {0x0000, 0x0000, 0x0003, 0x0004, 0x0000, 0x7FFF, 0x0000, 0xFB50},
    {0x0000, 0xA005, 0x0001, 0x0000, 0x0000, 0x0000, 0x8001, 0xFF84},
    {0x0000, 0xA005, 0x0000, 0x0006, 0x0000, 0x0000, 0x8001, 0xFF84},
    {0x0000, 0xA004, 0x0007, 0x0006, 0x7338, 0x0000, 0xC840, 0xFC52},
    {0x0000, 0xA004, 0x0006, 0x0000, 0x7338, 0x0000, 0xC840, 0xFC52},
    {0x0000, 0xA003, 0x0008, 0x0007, 0x7338, 0x0000, 0x37C0, 0xFC52},
    {0x0000, 0xA003, 0x0007, 0x0004, 0x7338, 0x0000, 0x37C0, 0xFC52},
    {0x0000, 0xA008, 0x0003, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xFF84},
    {0x0000, 0xA008, 0x0002, 0x0009, 0x0000, 0x0000, 0x7FFF, 0xFF84},
    {0x0000, 0x000A, 0x000B, 0x000C, 0x3FD6, 0x0000, 0x910F, 0xFE7E},
    {0x0000, 0x000A, 0x000C, 0x000D, 0x3FD6, 0x0000, 0x910F, 0xFE7E},
    {0x0000, 0x000E, 0x000A, 0x000D, 0x6EF1, 0x0000, 0xC02A, 0xFE7E},
    {0x0000, 0x000E, 0x000D, 0x000F, 0x6EF1, 0x0000, 0xC02A, 0xFE7E},
    {0x0000, 0x0010, 0x0011, 0x0012, 0x6EF1, 0x0000, 0x3FD6, 0xFE7E},
    {0x0000, 0x0010, 0x0012, 0x0013, 0x6EF1, 0x0000, 0x3FD6, 0xFE7E},
    {0x0000, 0x0011, 0x000E, 0x000F, 0x7FFF, 0x0000, 0x0000, 0xFE7E},
    {0x0000, 0x0011, 0x000F, 0x0012, 0x7FFF, 0x0000, 0x0000, 0xFE7E},
    {0x0000, 0x0014, 0x0015, 0x0016, 0x0000, 0x0000, 0x7FFF, 0xFE7E},
    {0x0000, 0x0014, 0x0016, 0x0017, 0x0000, 0x0000, 0x7FFF, 0xFE7E},
    {0x0000, 0x0015, 0x0010, 0x0013, 0x3FD6, 0x0000, 0x6EF1, 0xFE7E},
    {0x0000, 0x0015, 0x0013, 0x0016, 0x3FD6, 0x0000, 0x6EF1, 0xFE7E},
    {0x0000, 0x0018, 0x0014, 0x0017, 0xC02A, 0x0000, 0x6EF1, 0xFE7E},
    {0x0000, 0x0018, 0x0017, 0x0019, 0xC02A, 0x0000, 0x6EF1, 0xFE7E},
    {0x0000, 0x001A, 0x0018, 0x0019, 0x910F, 0x0000, 0x3FD6, 0xFE7E},
    {0x0000, 0x001A, 0x0019, 0x001B, 0x910F, 0x0000, 0x3FD6, 0xFE7E},
    {0x0000, 0x000B, 0x001C, 0x001D, 0x0000, 0x0000, 0x8001, 0xFE7E},
    {0x0000, 0x000B, 0x001D, 0x000C, 0x0000, 0x0000, 0x8001, 0xFE7E},
    {0x0000, 0x001C, 0x001E, 0x001F, 0xC02A, 0x0000, 0x910F, 0xFE7E},
    {0x0000, 0x001C, 0x001F, 0x001D, 0xC02A, 0x0000, 0x910F, 0xFE7E},
    {0x0000, 0x0020, 0x001A, 0x001B, 0x8001, 0x0000, 0x0000, 0xFE7E},
    {0x0000, 0x0020, 0x001B, 0x0021, 0x8001, 0x0000, 0x0000, 0xFE7E},
    {0x0000, 0x001E, 0x0020, 0x0021, 0x910F, 0x0000, 0xC02A, 0xFE7E},
    {0x0000, 0x001E, 0x0021, 0x001F, 0x910F, 0x0000, 0xC02A, 0xFE7E},
    {0x0000, 0x800F, 0x0022, 0x0023, 0x7FFF, 0x0000, 0x0000, 0xFE7E},
    {0x0000, 0x800F, 0x0023, 0x0012, 0x7FFF, 0x0000, 0x0000, 0xFE7E},
    {0x0000, 0x8012, 0x0023, 0x0024, 0x7BE1, 0xFC36, 0x1FFB, 0xFE8B},
    {0x0000, 0x8012, 0x0024, 0x0013, 0x6D82, 0xEB7D, 0x3F03, 0xFF13},
    {0x0000, 0x8013, 0x0024, 0x0025, 0x630D, 0xE6E9, 0x4D16, 0xFF2B},
    {0x0000, 0x8013, 0x0025, 0x0016, 0x3B90, 0xD1F1, 0x6782, 0xFFDB},
    {0x0000, 0x8016, 0x0025, 0x0026, 0x0000, 0xCBF7, 0x74F1, 0x000D},
    {0x0000, 0x8016, 0x0026, 0x0017, 0x0000, 0xCBF7, 0x74F1, 0x000D},
    {0x0000, 0x8017, 0x0026, 0x0027, 0xA2EE, 0xCE42, 0x486F, 0x0038},
    {0x0000, 0x8017, 0x0027, 0x0019, 0xC43F, 0xD2F5, 0x67D8, 0xFFD3},
    {0x0000, 0x8019, 0x0027, 0x0028, 0x8829, 0xDF62, 0x1EF0, 0xFF98},
    {0x0000, 0x8019, 0x0028, 0x001B, 0x93B3, 0xE43D, 0x3E51, 0xFF4A},
    {0x0000, 0x801B, 0x0028, 0x0029, 0x8236, 0xE855, 0x0000, 0xFF2B},
    {0x0000, 0x801B, 0x0029, 0x0021, 0x8236, 0xE855, 0x0000, 0xFF2B},
    {0x0000, 0x8021, 0x0029, 0x002A, 0x86C2, 0xE57B, 0xE0B4, 0xFF33},
    {0x0000, 0x8021, 0x002A, 0x001F, 0x9681, 0xD865, 0xC34C, 0xFFA7},
    {0x0000, 0x801F, 0x002A, 0x002B, 0xA09D, 0xD5E4, 0xB5C4, 0xFFB1},
    {0x0000, 0x801F, 0x002B, 0x001D, 0xC670, 0xC8A8, 0x9BF7, 0x0029},
    {0x0000, 0x801D, 0x002B, 0x002C, 0x0000, 0xCBF7, 0x8B0F, 0x000D},
    {0x0000, 0x801D, 0x002C, 0x000C, 0x0000, 0xCBF7, 0x8B0F, 0x000D},
    {0x0000, 0x800C, 0x002C, 0x002D, 0x6170, 0xDE42, 0xB42B, 0xFFB9},
    {0x0000, 0x800C, 0x002D, 0x000D, 0x3D70, 0xDD3F, 0x953A, 0xFF80},
    {0x0000, 0x800D, 0x002D, 0x0022, 0x7B86, 0xF59F, 0xE01D, 0xFEF1},
    {0x0000, 0x800D, 0x0022, 0x000F, 0x6EBF, 0xF872, 0xC046, 0xFEB3},
    {0x0000, 0x8029, 0x002B, 0x002A, 0x0000, 0x7FFF, 0x0000, 0xF855},
    {0x0000, 0x8029, 0x002C, 0x002B, 0x0000, 0x7FFF, 0x0000, 0xF855},
    {0x0000, 0x8029, 0x002D, 0x002C, 0x0000, 0x7FFF, 0x0000, 0xF855},
    {0x0000, 0x8029, 0x0022, 0x002D, 0x0000, 0x7FFF, 0x0000, 0xF855},
    {0x0000, 0x8029, 0x0023, 0x0022, 0x0000, 0x7FFF, 0x0000, 0xF855},
    {0x0000, 0x8029, 0x0024, 0x0023, 0x0000, 0x7FFF, 0x0000, 0xF855},
    {0x0000, 0x8029, 0x0025, 0x0024, 0x0000, 0x7FFF, 0x0000, 0xF855},
    {0x0000, 0x8029, 0x0026, 0x0025, 0x0000, 0x7FFF, 0x0000, 0xF855},
    {0x0000, 0x8029, 0x0027, 0x0026, 0x0000, 0x7FFF, 0x0000, 0xF855},
    {0x0000, 0x8029, 0x0028, 0x0027, 0x0000, 0x7FFF, 0x0000, 0xF855},
    {0x0000, 0x0007, 0x002E, 0x002F, 0x7338, 0x0000, 0xC840, 0xFC52},
    {0x0000, 0x0007, 0x002F, 0x0006, 0x7338, 0x0000, 0xC840, 0xFC52},
    {0x0000, 0x0008, 0x0030, 0x002E, 0x7338, 0x0000, 0x37C0, 0xFC52},
    {0x0000, 0x0008, 0x002E, 0x0007, 0x7338, 0x0000, 0x37C0, 0xFC52},
    {0x0000, 0x0031, 0x0032, 0x0030, 0x0000, 0x0000, 0x7FFF, 0xFF84},
    {0x0000, 0x0031, 0x0030, 0x0008, 0x0000, 0x0000, 0x7FFF, 0xFF84},
    {0x0000, 0x0009, 0x0033, 0x0034, 0x0000, 0x0000, 0x7FFF, 0xFF84},
    {0x0000, 0x0009, 0x0034, 0x0035, 0x0000, 0x0000, 0x7FFF, 0xFF84},
    {0x0000, 0x002F, 0x0036, 0x0037, 0x0000, 0x0000, 0x8001, 0xFF84},
    {0x0000, 0x002F, 0x0037, 0x0006, 0x0000, 0x0000, 0x8001, 0xFF84},
    {0x0000, 0x0038, 0x0039, 0x0005, 0x0000, 0x0000, 0x8001, 0xFF84},
    {0x0000, 0x0038, 0x0005, 0x003A, 0x0000, 0x0000, 0x8001, 0xFF84},
    {0x0001, 0x003B, 0x003A, 0x0037, 0x0000, 0x0000, 0x8001, 0xFF84},
    {0x0001, 0x003B, 0x0037, 0x003C, 0x0000, 0x0000, 0x8001, 0xFF84},
    {0x0001, 0x003D, 0x0031, 0x0035, 0x0000, 0x0000, 0x7FFF, 0xFF84},
    {0x0001, 0x003D, 0x0035, 0x003E, 0x0000, 0x0000, 0x7FFF, 0xFF84},
    {0x0001, 0x0038, 0x003B, 0x003C, 0x0000, 0x0000, 0x8001, 0xFF84},
    {0x0001, 0x0038, 0x003C, 0x0036, 0x0000, 0x0000, 0x8001, 0xFF84},
    {0x0001, 0x0032, 0x003D, 0x003E, 0x0000, 0x0000, 0x7FFF, 0xFF84},
    {0x0001, 0x0032, 0x003E, 0x0034, 0x0000, 0x0000, 0x7FFF, 0xFF84},
};

Vec3s object_haka_objects_Col_0131C4Vertices[] = {
    {    986,   1200,   -124 },
    {    326,   1200,   -124 },
    {    326,   1200,    124 },
    {    986,   1200,    124 },
    {   1046,   1200,      0 },
    {    326,    620,   -124 },
    {    986,    620,   -124 },
    {   1046,    620,      0 },
    {    986,    620,    124 },
    {    326,    620,    124 },
    {    283,   -900,   -283 },
    {    104,   -900,   -386 },
    {    104,    900,   -386 },
    {    283,    900,   -283 },
    {    386,   -900,   -104 },
    {    386,    900,   -104 },
    {    283,   -900,    283 },
    {    386,   -900,    104 },
    {    386,    900,    104 },
    {    283,    900,    283 },
    {   -104,   -900,    386 },
    {    104,   -900,    386 },
    {    104,    900,    386 },
    {   -104,    900,    386 },
    {   -283,   -900,    283 },
    {   -283,    900,    283 },
    {   -386,   -900,    104 },
    {   -386,    900,    104 },
    {   -104,   -900,   -386 },
    {   -104,    900,   -386 },
    {   -283,   -900,   -283 },
    {   -283,    900,   -283 },
    {   -386,   -900,   -104 },
    {   -386,    900,   -104 },
    {    386,   1963,   -230 },
    {    386,   1963,    230 },
    {    283,   1963,    629 },
    {    104,   1963,    859 },
    {   -304,   1963,    859 },
    {   -483,   1963,    629 },
    {   -586,   1963,    230 },
    {   -586,   1963,   -230 },
    {   -483,   1963,   -629 },
    {   -304,   1963,   -859 },
    {    104,   1963,   -859 },
    {    283,   1963,   -629 },
    {   1046,      0,      0 },
    {    986,      0,   -124 },
    {    986,      0,    124 },
    {    926,    620,    124 },
    {    926,      0,    124 },
    {    326,      0,    124 },
    {    446,      0,    124 },
    {    446,    620,    124 },
    {    926,      0,   -124 },
    {    926,    620,   -124 },
    {    446,      0,   -124 },
    {    326,      0,   -124 },
    {    446,    620,   -124 },
    {    446,    560,   -124 },
    {    926,    560,   -124 },
    {    926,    560,    124 },
    {    446,    560,    124 },
};

CollisionHeader object_haka_objects_Col_0131C4 = { 
    { -586, -900, -859 },
    { 1046, 1963, 859 },
    63, object_haka_objects_Col_0131C4Vertices,
    89, object_haka_objects_Col_0131C4Polygons,
    object_haka_objects_Col_0131C4SurfaceType,
    object_haka_objects_Col_0131C4CamDataList,
    0, NULL
};

u64 object_haka_objects_Tex_0131F0[] = {
#include "assets/objects/object_haka_objects/tex_000131F0.ia8.inc.c"
};

u64 object_haka_objects_Tex_0135F0[] = {
#include "assets/objects/object_haka_objects/tex_000135F0.rgba16.inc.c"
};

u64 object_haka_objects_Tex_013DF0[] = {
#include "assets/objects/object_haka_objects/tex_00013DF0.rgba16.inc.c"
};

u64 object_haka_objects_Tex_0145F0[] = {
#include "assets/objects/object_haka_objects/tex_000145F0.rgba16.inc.c"
};

u64 object_haka_objects_Tex_0155F0[] = {
#include "assets/objects/object_haka_objects/tex_000155F0.rgba16.inc.c"
};

u64 object_haka_objects_Tex_0165F0[] = {
#include "assets/objects/object_haka_objects/tex_000165F0.rgba16.inc.c"
};

u64 object_haka_objects_Tex_0167F0[] = {
#include "assets/objects/object_haka_objects/tex_000167F0.rgba16.inc.c"
};

u64 object_haka_objects_Tex_016BF0[] = {
#include "assets/objects/object_haka_objects/tex_00016BF0.i4.inc.c"
};

u64 object_haka_objects_Tex_016DF0[] = {
#include "assets/objects/object_haka_objects/tex_00016DF0.i4.inc.c"
};

u64 object_haka_objects_Tex_016FF0[] = {
#include "assets/objects/object_haka_objects/tex_00016FF0.i4.inc.c"
};

u64 object_haka_objects_Tex_0171F0[] = {
#include "assets/objects/object_haka_objects/tex_000171F0.i4.inc.c"
};

u64 object_haka_objects_Tex_0173F0[] = {
#include "assets/objects/object_haka_objects/tex_000173F0.i4.inc.c"
};

u64 object_haka_objects_Tex_0175F0[] = {
#include "assets/objects/object_haka_objects/tex_000175F0.i4.inc.c"
};

u64 object_haka_objects_Tex_0177F0[] = {
#include "assets/objects/object_haka_objects/tex_000177F0.rgba16.inc.c"
};

u64 object_haka_objects_Tex_017FF0[] = {
#include "assets/objects/object_haka_objects/tex_00017FF0.rgba16.inc.c"
};

u64 object_haka_objects_Tex_0187F0[] = {
#include "assets/objects/object_haka_objects/tex_000187F0.rgba16.inc.c"
};

u64 object_haka_objects_Tex_018FF0[] = {
#include "assets/objects/object_haka_objects/tex_00018FF0.rgba16.inc.c"
};

u64 object_haka_objects_Tex_0197F0[] = {
#include "assets/objects/object_haka_objects/tex_000197F0.i4.inc.c"
};

u64 object_haka_objects_Tex_019870[] = {
#include "assets/objects/object_haka_objects/tex_00019870.rgba16.inc.c"
};

u64 object_haka_objects_Tex_01A070[] = {
#include "assets/objects/object_haka_objects/tex_0001A070.rgba16.inc.c"
};

u64 object_haka_objects_Tex_01A470[] = {
#include "assets/objects/object_haka_objects/tex_0001A470.i4.inc.c"
};

u64 object_haka_objects_Tex_01A670[] = {
#include "assets/objects/object_haka_objects/tex_0001A670.rgba16.inc.c"
};

u64 object_haka_objects_Tex_01AE70[] = {
#include "assets/objects/object_haka_objects/tex_0001AE70.ia4.inc.c"
};

u64 object_haka_objects_Tex_01B270[] = {
#include "assets/objects/object_haka_objects/tex_0001B270.rgba16.inc.c"
};

u64 object_haka_objects_Tex_01BA70[] = {
#include "assets/objects/object_haka_objects/tex_0001BA70.rgba16.inc.c"
};

u64 object_haka_objects_Tex_01C270[] = {
#include "assets/objects/object_haka_objects/tex_0001C270.i4.inc.c"
};

u64 object_haka_objects_Tex_01C470[] = {
#include "assets/objects/object_haka_objects/tex_0001C470.i4.inc.c"
};

u64 object_haka_objects_Tex_01C670[] = {
#include "assets/objects/object_haka_objects/tex_0001C670.rgba16.inc.c"
};

u64 object_haka_objects_Tex_01CEB0[] = {
#include "assets/objects/object_haka_objects/tex_0001CEB0.i4.inc.c"
};

