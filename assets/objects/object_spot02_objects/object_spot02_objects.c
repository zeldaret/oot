#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_spot02_objects.h"

u64 object_spot02_objects_Tex_000000[] = {
#include "assets/objects/object_spot02_objects/tex_00000000.i8.inc.c"
};

u64 object_spot02_objects_Tex_000800[] = {
#include "assets/objects/object_spot02_objects/tex_00000800.i8.inc.c"
};

Vtx object_spot02_objectsVtx_001000[] = {
#include "assets/objects/object_spot02_objects/object_spot02_objectsVtx_001000.vtx.inc"
};

Gfx object_spot02_objects_DL_0013F0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_spot02_objects_Tex_000000, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_spot02_objects_Tex_000800, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, 13, 1),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, ENV_ALPHA, TEXEL0, TEXEL0, 1, ENVIRONMENT, TEXEL1, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_spot02_objectsVtx_001000, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 5, 0, 4, 6, 5, 0),
    gsSP2Triangles(8, 9, 1, 0, 8, 1, 0, 0),
    gsSP2Triangles(9, 10, 4, 0, 9, 4, 1, 0),
    gsSP2Triangles(10, 11, 6, 0, 10, 6, 4, 0),
    gsSP2Triangles(12, 9, 8, 0, 13, 12, 8, 0),
    gsSP2Triangles(14, 10, 9, 0, 12, 14, 9, 0),
    gsSP2Triangles(14, 11, 10, 0, 15, 16, 12, 0),
    gsSP2Triangles(15, 12, 13, 0, 16, 17, 14, 0),
    gsSP2Triangles(16, 14, 12, 0, 18, 19, 14, 0),
    gsSP2Triangles(17, 18, 14, 0, 20, 21, 16, 0),
    gsSP2Triangles(20, 16, 15, 0, 21, 22, 17, 0),
    gsSP2Triangles(21, 17, 16, 0, 22, 23, 18, 0),
    gsSP2Triangles(22, 18, 17, 0, 24, 21, 20, 0),
    gsSP2Triangles(25, 24, 20, 0, 26, 22, 21, 0),
    gsSP2Triangles(24, 26, 21, 0, 26, 27, 23, 0),
    gsSP2Triangles(26, 23, 22, 0, 28, 29, 24, 0),
    gsSP2Triangles(28, 24, 25, 0, 29, 30, 26, 0),
    gsSP2Triangles(29, 26, 24, 0, 31, 27, 26, 0),
    gsSP1Triangle(30, 31, 26, 0),
    gsSPVertex(&object_spot02_objectsVtx_001000[32], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 1, 0, 0, 9, 8, 0, 0),
    gsSP2Triangles(10, 4, 1, 0, 8, 10, 1, 0),
    gsSP2Triangles(10, 11, 6, 0, 10, 6, 4, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(13, 16, 17, 0, 13, 17, 14, 0),
    gsSP2Triangles(18, 19, 17, 0, 16, 18, 17, 0),
    gsSP2Triangles(20, 21, 13, 0, 20, 13, 12, 0),
    gsSP2Triangles(21, 22, 16, 0, 21, 16, 13, 0),
    gsSP2Triangles(22, 23, 18, 0, 22, 18, 16, 0),
    gsSP2Triangles(24, 21, 20, 0, 25, 24, 20, 0),
    gsSP2Triangles(26, 22, 21, 0, 24, 26, 21, 0),
    gsSP2Triangles(26, 27, 23, 0, 26, 23, 22, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPEndDisplayList(),
};

u8 object_spot02_objects_Blob_0015D8[] = {
#include "assets/objects/object_spot02_objects/object_spot02_objects_Blob_0015D8.bin.inc.c"
};

u64 gEffSunGraveSpark1Tex[] = {
#include "assets/objects/object_spot02_objects/eff_sun_grave_spark_1.i8.inc.c"
};

u64 gEffSunGraveSpark2Tex[] = {
#include "assets/objects/object_spot02_objects/eff_sun_grave_spark_2.i8.inc.c"
};

u64 gEffSunGraveSpark3Tex[] = {
#include "assets/objects/object_spot02_objects/eff_sun_grave_spark_3.i8.inc.c"
};

u64 gEffSunGraveSpark4Tex[] = {
#include "assets/objects/object_spot02_objects/eff_sun_grave_spark_4.i8.inc.c"
};

u64 gEffSunGraveSpark5Tex[] = {
#include "assets/objects/object_spot02_objects/eff_sun_grave_spark_5.i8.inc.c"
};

u64 gEffSunGraveSpark6Tex[] = {
#include "assets/objects/object_spot02_objects/eff_sun_grave_spark_6.i8.inc.c"
};

u64 gEffSunGraveSpark7Tex[] = {
#include "assets/objects/object_spot02_objects/eff_sun_grave_spark_7.i8.inc.c"
};

u64 gEffSunGraveSpark8Tex[] = {
#include "assets/objects/object_spot02_objects/eff_sun_grave_spark_8.i8.inc.c"
};

Vtx object_spot02_objectsVtx_0095E0[] = {
#include "assets/objects/object_spot02_objects/object_spot02_objectsVtx_0095E0.vtx.inc"
};

Gfx object_spot02_objects_DL_009620[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                       COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(object_spot02_objectsVtx_0095E0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 object_spot02_objects_possiblePadding_0096A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_spot02_objects_Tex_0096B0[] = {
#include "assets/objects/object_spot02_objects/tex_000096B0.i8.inc.c"
};

u64 object_spot02_objects_Tex_00A2B0[] = {
#include "assets/objects/object_spot02_objects/tex_0000A2B0.i8.inc.c"
};

u64 object_spot02_objects_Tex_00AEB0[] = {
#include "assets/objects/object_spot02_objects/tex_0000AEB0.i8.inc.c"
};

u64 object_spot02_objects_Tex_00BAB0[] = {
#include "assets/objects/object_spot02_objects/tex_0000BAB0.i8.inc.c"
};

u64 object_spot02_objects_Tex_00C6B0[] = {
#include "assets/objects/object_spot02_objects/tex_0000C6B0.i8.inc.c"
};

u64 object_spot02_objects_Tex_00D2B0[] = {
#include "assets/objects/object_spot02_objects/tex_0000D2B0.i8.inc.c"
};

u64 object_spot02_objects_Tex_00DEB0[] = {
#include "assets/objects/object_spot02_objects/tex_0000DEB0.i8.inc.c"
};

u64 object_spot02_objects_Tex_00EAB0[] = {
#include "assets/objects/object_spot02_objects/tex_0000EAB0.i8.inc.c"
};

u64 object_spot02_objects_Tex_00F6B0[] = {
#include "assets/objects/object_spot02_objects/tex_0000F6B0.i8.inc.c"
};

u64 object_spot02_objects_Tex_0102B0[] = {
#include "assets/objects/object_spot02_objects/tex_000102B0.i8.inc.c"
};

u64 object_spot02_objects_Tex_010EB0[] = {
#include "assets/objects/object_spot02_objects/tex_00010EB0.i8.inc.c"
};

u64 object_spot02_objects_Tex_011AB0[] = {
#include "assets/objects/object_spot02_objects/tex_00011AB0.i8.inc.c"
};

Vtx object_spot02_objectsVtx_0126B0[] = {
#include "assets/objects/object_spot02_objects/object_spot02_objectsVtx_0126B0.vtx.inc"
};

Gfx object_spot02_objects_DL_0126F0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_I, G_IM_SIZ_8b, 32, 96, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                       COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(object_spot02_objectsVtx_0126B0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 object_spot02_objects_possiblePadding_012778[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_spot02_objectsVtx_012780[] = {
#include "assets/objects/object_spot02_objects/object_spot02_objectsVtx_012780.vtx.inc"
};

Gfx object_spot02_objects_DL_0127C0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_spot02_objects_Tex_013820, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(object_spot02_objects_Tex_014020, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0,
                       G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPVertex(object_spot02_objectsVtx_012780, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

CamData object_spot02_objects_Col_0128D8CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_spot02_objects_Col_0128D8SurfaceType[] = {
    { 0x00000000, 0x000007C8 },
};

CollisionPoly object_spot02_objects_Col_0128D8Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0x0000},
};

Vec3s object_spot02_objects_Col_0128D8Vertices[] = {
    {    240,      0,    240 },
    {    240,      0,   -240 },
    {   -240,      0,   -240 },
    {   -240,      0,    240 },
};

CollisionHeader object_spot02_objects_Col_0128D8 = { 
    { -240, 0, -240 },
    { 240, 0, 240 },
    4, object_spot02_objects_Col_0128D8Vertices,
    2, object_spot02_objects_Col_0128D8Polygons,
    object_spot02_objects_Col_0128D8SurfaceType,
    object_spot02_objects_Col_0128D8CamDataList,
    0, NULL
};

u8 object_spot02_objects_possiblePadding_012904[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_spot02_objectsVtx_012910[] = {
#include "assets/objects/object_spot02_objects/object_spot02_objectsVtx_012910.vtx.inc"
};

Gfx object_spot02_objects_DL_012A50[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_spot02_objects_Tex_013420, G_IM_FMT_I, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                            G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot02_objectsVtx_012910, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 6, 0),
    gsSP2Triangles(0, 3, 7, 0, 0, 7, 4, 0),
    gsSP2Triangles(8, 3, 9, 0, 8, 9, 10, 0),
    gsSP2Triangles(9, 6, 5, 0, 9, 5, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(15, 16, 11, 0, 15, 11, 5, 0),
    gsSP2Triangles(17, 18, 16, 0, 17, 16, 15, 0),
    gsSP2Triangles(10, 14, 19, 0, 10, 19, 8, 0),
    gsSP2Triangles(5, 11, 14, 0, 5, 14, 10, 0),
    gsSPEndDisplayList(),
};

u8 object_spot02_objects_possiblePadding_012B28[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData object_spot02_objects_Col_012BA4CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_spot02_objects_Col_012BA4SurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly object_spot02_objects_Col_012BA4Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0004, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xFF38},
    {0x0000, 0x0000, 0x0003, 0x0004, 0x0000, 0x0000, 0x7FFF, 0xFF38},
};

Vec3s object_spot02_objects_Col_012BA4Vertices[] = {
    {  -1200,      0,    200 },
    {  -1200,      0,   -200 },
    {   1200,      0,   -200 },
    {   1200,      0,    200 },
    {   1200,   2600,    200 },
    {  -1200,   2600,    200 },
};

CollisionHeader object_spot02_objects_Col_012BA4 = { 
    { -1200, 0, -200 },
    { 1200, 2600, 200 },
    6, object_spot02_objects_Col_012BA4Vertices,
    4, object_spot02_objects_Col_012BA4Polygons,
    object_spot02_objects_Col_012BA4SurfaceType,
    object_spot02_objects_Col_012BA4CamDataList,
    0, NULL
};

Vtx object_spot02_objectsVtx_012BD0[] = {
#include "assets/objects/object_spot02_objects/object_spot02_objectsVtx_012BD0.vtx.inc"
};

Gfx object_spot02_objects_DL_012D30[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_spot02_objects_Tex_015C20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 215, 220, 210, 255),
    gsSPVertex(object_spot02_objectsVtx_012BD0, 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(4, 6, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_spot02_objects_Tex_016420, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot02_objectsVtx_012BD0[7], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 10, 8, 0, 11, 12, 13, 0),
    gsSP1Triangle(14, 13, 12, 0),
    gsSPEndDisplayList(),
};

Vtx object_spot02_objectsVtx_012E30[] = {
#include "assets/objects/object_spot02_objects/object_spot02_objectsVtx_012E30.vtx.inc"
};

Gfx object_spot02_objects_DL_0130B0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_spot02_objects_Tex_014820, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 215, 220, 210, 255),
    gsSPVertex(object_spot02_objectsVtx_012E30, 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 4, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 2, 21, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_spot02_objects_Tex_014C20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot02_objectsVtx_012E30[28], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_spot02_objects_Tex_015C20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot02_objectsVtx_012E30[34], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSPEndDisplayList(),
};

CamData object_spot02_objects_Col_0133ECCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_spot02_objects_Col_0133ECSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
    { 0x00200000, 0x000007C2 },
};

CollisionPoly object_spot02_objects_Col_0133ECPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x8613, 0x242A, 0xF189, 0xFCC8},
    {0x0000, 0x0003, 0x0000, 0x0002, 0x8089, 0x0000, 0xF456, 0xFCBA},
    {0x0000, 0x0004, 0x0005, 0x0006, 0x79ED, 0x242A, 0xF189, 0xFCC8},
    {0x0000, 0x0004, 0x0006, 0x0007, 0x7F77, 0x0000, 0xF456, 0xFCBA},
    {0x0001, 0x0008, 0x0009, 0x0005, 0x7FFF, 0x0000, 0x0000, 0xFD06},
    {0x0001, 0x0008, 0x0005, 0x0004, 0x7FFF, 0x0000, 0x0000, 0xFD06},
    {0x0000, 0x000A, 0x0009, 0x0008, 0x5580, 0x5F40, 0x0000, 0xFADE},
    {0x0000, 0x000B, 0x000C, 0x000A, 0x0000, 0x7877, 0xD4BF, 0xFAE0},
    {0x0000, 0x000B, 0x000A, 0x0008, 0x0000, 0x7877, 0xD4BF, 0xFAE0},
    {0x0000, 0x000B, 0x000D, 0x000C, 0xAA80, 0x5F40, 0x0000, 0xFADE},
    {0x0001, 0x0001, 0x000D, 0x000B, 0x8001, 0x0000, 0x0000, 0xFD06},
    {0x0001, 0x0002, 0x0001, 0x000B, 0x8001, 0x0000, 0x0000, 0xFD06},
    {0x0001, 0x0002, 0x000B, 0x0008, 0x0000, 0x0000, 0x8001, 0xFC9A},
    {0x0001, 0x0002, 0x0008, 0x0004, 0x0000, 0x0000, 0x8001, 0xFC9A},
    {0x0000, 0x0007, 0x0006, 0x0000, 0x0000, 0x0000, 0x7FFF, 0xFDFA},
    {0x0000, 0x0007, 0x0000, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFDFA},
    {0x0000, 0x0000, 0x0006, 0x0005, 0x0000, 0x7E37, 0x1549, 0xFF2D},
    {0x0000, 0x0000, 0x0005, 0x0001, 0x0000, 0x7E37, 0x1549, 0xFF2D},
    {0x0001, 0x0009, 0x000A, 0x000C, 0x0000, 0x0000, 0x7FFF, 0x00EB},
    {0x0001, 0x0009, 0x000C, 0x000D, 0x0000, 0x0000, 0x7FFF, 0x00EB},
    {0x0001, 0x0005, 0x0009, 0x000D, 0x0000, 0x0000, 0x7FFF, 0x00EB},
    {0x0001, 0x0005, 0x000D, 0x0001, 0x0000, 0x0000, 0x7FFF, 0x00EB},
};

Vec3s object_spot02_objects_Col_0133ECVertices[] = {
    {   -889,    127,    518 },
    {   -762,    254,   -235 },
    {   -762,      0,   -870 },
    {   -889,      0,    518 },
    {    762,      0,   -870 },
    {    762,    254,   -235 },
    {    889,    127,    518 },
    {    889,      0,    518 },
    {    762,   1082,   -870 },
    {    762,   1082,   -235 },
    {    508,   1310,   -235 },
    {   -762,   1082,   -870 },
    {   -508,   1310,   -235 },
    {   -762,   1082,   -235 },
};

CollisionHeader object_spot02_objects_Col_0133EC = { 
    { -889, 0, -870 },
    { 889, 1310, 518 },
    14, object_spot02_objects_Col_0133ECVertices,
    22, object_spot02_objects_Col_0133ECPolygons,
    object_spot02_objects_Col_0133ECSurfaceType,
    object_spot02_objects_Col_0133ECCamDataList,
    0, NULL
};

u8 object_spot02_objects_possiblePadding_013418[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_spot02_objects_Tex_013420[] = {
#include "assets/objects/object_spot02_objects/tex_00013420.i4.inc.c"
};

u64 object_spot02_objects_Tex_013820[] = {
#include "assets/objects/object_spot02_objects/tex_00013820.rgba16.inc.c"
};

u64 object_spot02_objects_Tex_014020[] = {
#include "assets/objects/object_spot02_objects/tex_00014020.rgba16.inc.c"
};

u64 object_spot02_objects_Tex_014820[] = {
#include "assets/objects/object_spot02_objects/tex_00014820.rgba16.inc.c"
};

u64 object_spot02_objects_Tex_014C20[] = {
#include "assets/objects/object_spot02_objects/tex_00014C20.rgba16.inc.c"
};

u64 object_spot02_objects_Tex_015C20[] = {
#include "assets/objects/object_spot02_objects/tex_00015C20.rgba16.inc.c"
};

u64 object_spot02_objects_Tex_016420[] = {
#include "assets/objects/object_spot02_objects/tex_00016420.rgba16.inc.c"
};

