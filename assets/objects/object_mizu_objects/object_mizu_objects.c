#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_mizu_objects.h"

Vtx object_mizu_objectsVtx_000000[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsVtx_000000.vtx.inc"
};

Gfx gObjectMizuObjectsMovebgDL_000190[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_mizu_objectsTex_007D20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(object_mizu_objectsTex_008520, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_mizu_objectsVtx_000000, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 5, 0, 4, 5, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 7, 9, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_mizu_objectsTex_007D20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(object_mizu_objectsTex_008D20, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_mizu_objectsVtx_000000[15], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 1, 9, 2, 0),
    gsSPEndDisplayList(),
};

CamData gObjectMizuObjectsMovebgCol_0003F0CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gObjectMizuObjectsMovebgCol_0003F0SurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gObjectMizuObjectsMovebgCol_0003F0Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0004, 0x0000, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0005, 0x0004, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0004, 0x0005, 0x0006, 0x0000, 0x83D3, 0x1F0B, 0xFD89},
    {0x0000, 0x0007, 0x0004, 0x0006, 0x0000, 0x83D3, 0x1F0B, 0xFD89},
    {0x0000, 0x0001, 0x0000, 0x0004, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0001, 0x0004, 0x0007, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0005, 0x0003, 0x0002, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0005, 0x0002, 0x0006, 0x8001, 0x0000, 0x0000, 0xFDA8},
};

Vec3s gObjectMizuObjectsMovebgCol_0003F0Vertices[] = {
    {    600,      0,    600 },
    {    600,      0,   -600 },
    {   -600,      0,   -600 },
    {   -600,      0,    600 },
    {    600,   -500,    600 },
    {   -600,   -500,    600 },
    {   -600,   -800,   -600 },
    {    600,   -800,   -600 },
};

CollisionHeader gObjectMizuObjectsMovebgCol_0003F0 = { 
    { -600, -800, -600 },
    { 600, 0, 600 },
    8, gObjectMizuObjectsMovebgCol_0003F0Vertices,
    10, gObjectMizuObjectsMovebgCol_0003F0Polygons,
    gObjectMizuObjectsMovebgCol_0003F0SurfaceType,
    gObjectMizuObjectsMovebgCol_0003F0CamDataList,
    0, NULL
};

Vtx object_mizu_objectsVtx_000420[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsVtx_000420.vtx.inc"
};

Gfx gObjectMizuObjectsMovebgDL_000680[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_mizu_objectsTex_007D20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(object_mizu_objectsTex_008520, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_mizu_objectsVtx_000420, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(15, 11, 16, 0, 15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_mizu_objectsTex_007D20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(object_mizu_objectsTex_008D20, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_mizu_objectsVtx_000420[18], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSPEndDisplayList(),
};

CamData gObjectMizuObjectsMovebgCol_000998CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gObjectMizuObjectsMovebgCol_000998SurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gObjectMizuObjectsMovebgCol_000998Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x8001, 0x0000, 0x0000, 0xFE70},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x8001, 0x0000, 0x0000, 0xFE70},
    {0x0000, 0x0001, 0x0004, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0001, 0x0005, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0006, 0x0000, 0x0003, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x0006, 0x0003, 0x0007, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x0007, 0x0005, 0x0004, 0x7FFF, 0x0000, 0x0000, 0xFCE0},
    {0x0000, 0x0007, 0x0004, 0x0006, 0x7FFF, 0x0000, 0x0000, 0xFCE0},
    {0x0000, 0x0005, 0x0007, 0x0003, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0005, 0x0003, 0x0002, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0004, 0x0008, 0x0009, 0x4CCC, 0x999A, 0x0000, 0xFBF0},
    {0x0000, 0x0004, 0x0009, 0x0006, 0x4CCC, 0x999A, 0x0000, 0xFBF0},
    {0x0000, 0x000A, 0x0000, 0x0006, 0x0000, 0x999A, 0xB334, 0xFC68},
    {0x0000, 0x000A, 0x0006, 0x0009, 0x0000, 0x999A, 0xB334, 0xFC68},
    {0x0000, 0x000B, 0x0008, 0x0004, 0x0000, 0x999A, 0x4CCC, 0xFC68},
    {0x0000, 0x000B, 0x0004, 0x0001, 0x0000, 0x999A, 0x4CCC, 0xFC68},
    {0x0000, 0x000A, 0x0009, 0x0008, 0x0000, 0x8001, 0x0000, 0xFCAE},
    {0x0000, 0x000A, 0x0008, 0x000B, 0x0000, 0x8001, 0x0000, 0xFCAE},
};

Vec3s gObjectMizuObjectsMovebgCol_000998Vertices[] = {
    {   -400,   -700,   -600 },
    {   -400,   -700,    600 },
    {   -400,      0,    600 },
    {   -400,      0,   -600 },
    {    800,   -700,    600 },
    {    800,      0,    600 },
    {    800,   -700,   -600 },
    {    800,      0,   -600 },
    {    600,   -850,    400 },
    {    600,   -850,   -400 },
    {   -400,   -850,   -400 },
    {   -400,   -850,    400 },
};

CollisionHeader gObjectMizuObjectsMovebgCol_000998 = { 
    { -400, -850, -600 },
    { 800, 0, 600 },
    12, gObjectMizuObjectsMovebgCol_000998Vertices,
    18, gObjectMizuObjectsMovebgCol_000998Polygons,
    gObjectMizuObjectsMovebgCol_000998SurfaceType,
    gObjectMizuObjectsMovebgCol_000998CamDataList,
    0, NULL
};

u8 object_mizu_objects_possiblePadding_0009C4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_mizu_objectsVtx_0009D0[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsVtx_0009D0.vtx.inc"
};

Gfx gObjectMizuObjectsMovebgDL_000C20[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_mizu_objectsTex_007D20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(object_mizu_objectsTex_008D20, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(object_mizu_objectsVtx_0009D0, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 0, 3, 0, 14, 3, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_mizu_objectsTex_007D20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(object_mizu_objectsTex_008520, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_mizu_objectsVtx_0009D0[16], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(0, 2, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

u8 object_mizu_objects_possiblePadding_000DC8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gObjectMizuObjectsMovebgCol_000ED0CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gObjectMizuObjectsMovebgCol_000ED0SurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gObjectMizuObjectsMovebgCol_000ED0Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x8001, 0x0000, 0xFB50},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x8001, 0x0000, 0xFB50},
    {0x0000, 0x0000, 0x0003, 0x0004, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0000, 0x0004, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0001, 0x0000, 0x0005, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0001, 0x0005, 0x0006, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0002, 0x0007, 0x0004, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0002, 0x0004, 0x0003, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0006, 0x0007, 0x0002, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x0006, 0x0002, 0x0001, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x0005, 0x0004, 0x0007, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0005, 0x0007, 0x0006, 0x0000, 0x7FFF, 0x0000, 0x0000},
};

Vec3s gObjectMizuObjectsMovebgCol_000ED0Vertices[] = {
    {   -600,  -1200,    600 },
    {   -600,  -1200,   -600 },
    {    600,  -1200,   -600 },
    {    600,  -1200,    600 },
    {    600,      0,    600 },
    {   -600,      0,    600 },
    {   -600,      0,   -600 },
    {    600,      0,   -600 },
};

CollisionHeader gObjectMizuObjectsMovebgCol_000ED0 = { 
    { -600, -1200, -600 },
    { 600, 0, 600 },
    8, gObjectMizuObjectsMovebgCol_000ED0Vertices,
    12, gObjectMizuObjectsMovebgCol_000ED0Polygons,
    gObjectMizuObjectsMovebgCol_000ED0SurfaceType,
    gObjectMizuObjectsMovebgCol_000ED0CamDataList,
    0, NULL
};

Vtx object_mizu_objectsVtx_000F00[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsVtx_000F00.vtx.inc"
};

Gfx gObjectMizuObjectsMovebgDL_0011F0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_mizu_objectsTex_007D20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(object_mizu_objectsTex_008520, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_mizu_objectsVtx_000F00, 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 5, 0, 4, 5, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_mizu_objectsTex_007D20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(object_mizu_objectsTex_008D20, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_mizu_objectsVtx_000F00[23], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_mizu_objectsTex_00AB20, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&object_mizu_objectsVtx_000F00[43], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 object_mizu_objects_possiblePadding_0013F8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gObjectMizuObjectsMovebgCol_0015F8CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gObjectMizuObjectsMovebgCol_0015F8SurfaceType[] = {
    { 0x00000000, 0x000007C2 },
    { 0x00000000, 0x000207C2 },
};

CollisionPoly gObjectMizuObjectsMovebgCol_0015F8Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0002, 0x0004, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0002, 0x0005, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0000, 0x0006, 0x0007, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x0000, 0x0007, 0x0001, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x0001, 0x0007, 0x0004, 0x0000, 0x8001, 0x0000, 0xFDA8},
    {0x0000, 0x0001, 0x0004, 0x0002, 0x0000, 0x8001, 0x0000, 0xFDA8},
    {0x0000, 0x0005, 0x0004, 0x0007, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0005, 0x0007, 0x0006, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0008, 0x0009, 0x000A, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0008, 0x000A, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x000B, 0x000C, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x000B, 0x0003, 0x000D, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x000C, 0x000E, 0x0000, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x000C, 0x0000, 0x0003, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x000E, 0x000F, 0x0006, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x000E, 0x0006, 0x0000, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x000F, 0x0008, 0x0005, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x000F, 0x0005, 0x0006, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0008, 0x000F, 0x000E, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0008, 0x000E, 0x000C, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0001, 0x000D, 0x000A, 0x0009, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0001, 0x000D, 0x0009, 0x000B, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
};

Vec3s gObjectMizuObjectsMovebgCol_0015F8Vertices[] = {
    {   -600,   -350,   -600 },
    {   -600,   -600,   -600 },
    {   -600,   -600,    600 },
    {   -600,   -350,    600 },
    {    600,   -600,    600 },
    {    600,   -350,    600 },
    {    600,   -350,   -600 },
    {    600,   -600,   -600 },
    {    600,      0,    600 },
    {    200,      0,    600 },
    {    200,   -350,    600 },
    {   -200,      0,    600 },
    {   -600,      0,    600 },
    {   -200,   -350,    600 },
    {   -600,      0,   -600 },
    {    600,      0,   -600 },
};

CollisionHeader gObjectMizuObjectsMovebgCol_0015F8 = { 
    { -600, -600, -600 },
    { 600, 0, 600 },
    16, gObjectMizuObjectsMovebgCol_0015F8Vertices,
    24, gObjectMizuObjectsMovebgCol_0015F8Polygons,
    gObjectMizuObjectsMovebgCol_0015F8SurfaceType,
    gObjectMizuObjectsMovebgCol_0015F8CamDataList,
    0, NULL
};

u8 object_mizu_objects_possiblePadding_001624[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_mizu_objectsVtx_001630[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsVtx_001630.vtx.inc"
};

Gfx gObjectMizuObjectsBwallDL_001770[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_mizu_objectsTex_007D20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_mizu_objectsVtx_001630, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 1, 6, 0),
    gsSP2Triangles(1, 7, 6, 0, 1, 0, 7, 0),
    gsSP1Triangle(3, 2, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_mizu_objectsTex_007D20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(object_mizu_objectsTex_009F20, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_mizu_objectsVtx_001630[9], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 2, 4, 0, 6, 7, 2, 0),
    gsSP2Triangles(2, 7, 0, 0, 8, 9, 5, 0),
    gsSP2Triangles(1, 8, 5, 0, 9, 10, 5, 0),
    gsSP1Triangle(0, 8, 1, 0),
    gsSPEndDisplayList(),
};

u8 object_mizu_objects_possiblePadding_0018E8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_mizu_objectsVtx_0018F0[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsVtx_0018F0.vtx.inc"
};

Gfx gObjectMizuObjectsBwallDL_001A30[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_mizu_objectsTex_007D20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(object_mizu_objectsTex_009F20, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_mizu_objectsVtx_0018F0, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 2, 0),
    gsSP2Triangles(6, 0, 2, 0, 6, 3, 0, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 10, 8, 0),
    gsSP2Triangles(7, 5, 10, 0, 11, 8, 4, 0),
    gsSP2Triangles(8, 10, 4, 0, 11, 9, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 13, 0, 16, 13, 12, 0),
    gsSP2Triangles(18, 19, 17, 0, 18, 17, 16, 0),
    gsSP2Triangles(15, 14, 19, 0, 15, 19, 18, 0),
    gsSPEndDisplayList(),
};

u8 object_mizu_objects_possiblePadding_001B48[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gObjectMizuObjectsBwallCol_001C58CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gObjectMizuObjectsBwallCol_001C58SurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gObjectMizuObjectsBwallCol_001C58Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0xF23C, 0x7E5D, 0xF0FC, 0x0004},
    {0x0000, 0x0000, 0x0003, 0x0001, 0x093A, 0x7709, 0xD1DD, 0x0008},
    {0x0000, 0x0001, 0x0004, 0x0002, 0x191A, 0x7D83, 0x0000, 0x004E},
    {0x0000, 0x0005, 0x0006, 0x0002, 0x0000, 0x7EB6, 0xEDE6, 0x0039},
    {0x0000, 0x0006, 0x0000, 0x0002, 0x110A, 0x7D7D, 0x1295, 0xFFFB},
    {0x0000, 0x0006, 0x0003, 0x0000, 0x232A, 0x7983, 0xEC77, 0x0001},
    {0x0000, 0x0006, 0x0007, 0x0003, 0xD8E5, 0x77ED, 0x15BA, 0x004E},
    {0x0000, 0x0006, 0x0008, 0x0007, 0x13A8, 0x7D4E, 0x1133, 0xFFF8},
    {0x0000, 0x0006, 0x0005, 0x0008, 0xE6E6, 0x7D83, 0x0000, 0x004E},
    {0x0000, 0x0001, 0x0007, 0x0004, 0xF465, 0x7CC4, 0x1A1D, 0x002D},
    {0x0000, 0x0007, 0x0008, 0x0004, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0001, 0x0003, 0x0007, 0xF674, 0x7661, 0x2FBC, 0x0043},
};

Vec3s gObjectMizuObjectsBwallCol_001C58Vertices[] = {
    {      9,      0,     25 },
    {   -200,    -40,   -120 },
    {   -400,      0,    400 },
    {    100,    -40,    -60 },
    {   -400,      0,   -400 },
    {    400,      0,    400 },
    {    200,    -40,    120 },
    {    176,      0,   -144 },
    {    400,      0,   -400 },
};

CollisionHeader gObjectMizuObjectsBwallCol_001C58 = { 
    { -400, -40, -400 },
    { 400, 0, 400 },
    9, gObjectMizuObjectsBwallCol_001C58Vertices,
    12, gObjectMizuObjectsBwallCol_001C58Polygons,
    gObjectMizuObjectsBwallCol_001C58SurfaceType,
    gObjectMizuObjectsBwallCol_001C58CamDataList,
    0, NULL
};

u8 object_mizu_objects_possiblePadding_001C84[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_mizu_objectsVtx_001C90[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsVtx_001C90.vtx.inc"
};

Gfx gObjectMizuObjectsBwallDL_001CD0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_mizu_objectsTex_007D20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(object_mizu_objectsTex_009F20, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(object_mizu_objectsVtx_001C90, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSPEndDisplayList(),
};

CamData gObjectMizuObjectsBwallCol_001DE8CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gObjectMizuObjectsBwallCol_001DE8SurfaceType[] = {
    { 0x00000000, 0x000007CB },
};

CollisionPoly gObjectMizuObjectsBwallCol_001DE8Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0000, 0x0003, 0x0001, 0x0000, 0x0000, 0x7FFF, 0x0000},
};

Vec3s gObjectMizuObjectsBwallCol_001DE8Vertices[] = {
    {   -600,      0,      0 },
    {    600,   1200,      0 },
    {   -600,   1200,      0 },
    {    600,      0,      0 },
};

CollisionHeader gObjectMizuObjectsBwallCol_001DE8 = { 
    { -600, 0, 0 },
    { 600, 1200, 0 },
    4, gObjectMizuObjectsBwallCol_001DE8Vertices,
    2, gObjectMizuObjectsBwallCol_001DE8Polygons,
    gObjectMizuObjectsBwallCol_001DE8SurfaceType,
    gObjectMizuObjectsBwallCol_001DE8CamDataList,
    0, NULL
};

u8 object_mizu_objects_possiblePadding_001E14[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_mizu_objectsVtx_001E20[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsVtx_001E20.vtx.inc"
};

Gfx gObjectMizuObjectsBwallDL_002090[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_mizu_objectsTex_007D20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(object_mizu_objectsTex_009F20, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(object_mizu_objectsVtx_001E20, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 4, 0),
    gsSP2Triangles(11, 12, 3, 0, 11, 3, 13, 0),
    gsSP2Triangles(14, 10, 15, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 13, 18, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 5, 21, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 2, 24, 0, 23, 24, 25, 0),
    gsSP2Triangles(21, 26, 27, 0, 21, 27, 28, 0),
    gsSP2Triangles(29, 23, 30, 0, 29, 30, 31, 0),
    gsSPVertex(&object_mizu_objectsVtx_001E20[32], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 6, 0),
    gsSPEndDisplayList(),
};

Vtx object_mizu_objectsVtx_0021C0[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsVtx_0021C0.vtx.inc"
};

Gfx gObjectMizuObjectsBwallDL_002390[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_mizu_objectsTex_007D20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(object_mizu_objectsTex_009F20, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x09000000),
    gsSPVertex(object_mizu_objectsVtx_0021C0, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 5, 7, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 8, 0),
    gsSP2Triangles(9, 1, 0, 0, 9, 0, 10, 0),
    gsSP2Triangles(11, 7, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(8, 4, 11, 0, 4, 6, 11, 0),
    gsSP1Triangle(11, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_mizu_objectsTex_007D20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsSPDisplayList(0x09000000),
    gsSPVertex(&object_mizu_objectsVtx_0021C0[14], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 0, 0, 7, 6, 3, 0),
    gsSP2Triangles(8, 6, 7, 0, 9, 8, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 8, 11, 0, 13, 12, 11, 0),
    gsSP1Triangle(14, 13, 11, 0),
    gsSPEndDisplayList(),
};

u8 object_mizu_objects_possiblePadding_002528[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gObjectMizuObjectsBwallCol_0025A4CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gObjectMizuObjectsBwallCol_0025A4SurfaceType[] = {
    { 0x00000000, 0x000007CB },
};

CollisionPoly gObjectMizuObjectsBwallCol_0025A4Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x8001, 0x0000, 0x0000, 0xFFD8},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x8001, 0x0000, 0x0000, 0xFFD8},
    {0x0000, 0x0000, 0x0003, 0x0004, 0x8001, 0x0000, 0x0000, 0xFFD8},
    {0x0000, 0x0000, 0x0004, 0x0005, 0x8001, 0x0000, 0x0000, 0xFFD8},
};

Vec3s gObjectMizuObjectsBwallCol_0025A4Vertices[] = {
    {    -40,    871,   -400 },
    {    -40,      0,   -400 },
    {    -40,      0,    400 },
    {    -40,    477,    653 },
    {    -40,    894,    449 },
    {    -40,   1160,    159 },
};

CollisionHeader gObjectMizuObjectsBwallCol_0025A4 = { 
    { -40, 0, -400 },
    { 40, 1160, 653 },
    6, gObjectMizuObjectsBwallCol_0025A4Vertices,
    4, gObjectMizuObjectsBwallCol_0025A4Polygons,
    gObjectMizuObjectsBwallCol_0025A4SurfaceType,
    gObjectMizuObjectsBwallCol_0025A4CamDataList,
    0, NULL
};

Vtx object_mizu_objectsVtx_0025D0[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsVtx_0025D0.vtx.inc"
};

Gfx gObjectMizuObjectsMovebgDL_002E10[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_mizu_objectsTex_007D20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock_4b(object_mizu_objectsTex_009B20, 0x0100, 1, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                          G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_mizu_objectsVtx_0025D0, 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(5, 8, 11, 0, 9, 7, 10, 0),
    gsSP2Triangles(1, 12, 13, 0, 1, 13, 2, 0),
    gsSP2Triangles(14, 12, 1, 0, 14, 15, 12, 0),
    gsSP2Triangles(13, 16, 17, 0, 13, 17, 2, 0),
    gsSP2Triangles(10, 7, 18, 0, 10, 18, 19, 0),
    gsSP2Triangles(5, 11, 20, 0, 11, 21, 20, 0),
    gsSP2Triangles(22, 23, 24, 0, 23, 25, 24, 0),
    gsSP2Triangles(26, 27, 28, 0, 27, 29, 28, 0),
    gsSP1Triangle(29, 30, 28, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_mizu_objectsTex_007D20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock_4b(object_mizu_objectsTex_009D20, 0x0100, 1, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_mizu_objectsVtx_0025D0[31], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_mizu_objectsTex_007D20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock_4b(object_mizu_objectsTex_009920, 0x0100, 1, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                          G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_mizu_objectsVtx_0025D0[43], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(3, 0, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 5, 9, 0, 5, 7, 9, 0),
    gsSP2Triangles(8, 10, 5, 0, 2, 11, 4, 0),
    gsSP2Triangles(12, 13, 11, 0, 14, 13, 12, 0),
    gsSP2Triangles(15, 14, 12, 0, 15, 12, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_mizu_objectsTex_007D20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock_4b(object_mizu_objectsTex_009720, 0x0100, 1, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                          G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_mizu_objectsVtx_0025D0[59], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_mizu_objectsTex_007D20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock_4b(object_mizu_objectsTex_009520, 0x0100, 1, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                          G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_mizu_objectsVtx_0025D0[67], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_mizu_objectsVtx_0025D0[97], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_mizu_objectsVtx_0025D0[129], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

CamData gObjectMizuObjectsMovebgCol_003590CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gObjectMizuObjectsMovebgCol_003590SurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gObjectMizuObjectsMovebgCol_003590Polygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x0000, 0x3830, 0x7301, 0xFD6F},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x0000, 0x3830, 0x7301, 0xFD6F},
    {0x0000, 0x2004, 0x0005, 0x0006, 0x0000, 0x744F, 0x3570, 0xF928},
    {0x0000, 0x2004, 0x0006, 0x0007, 0x0000, 0x744F, 0x3570, 0xF928},
    {0x0000, 0x2008, 0x0009, 0x000A, 0xF78E, 0x7F43, 0x0ACB, 0xF9DE},
    {0x0000, 0x2009, 0x0004, 0x000B, 0x8001, 0x0000, 0x0000, 0xFEFA},
    {0x0000, 0x2004, 0x0001, 0x000B, 0x8001, 0x0000, 0x0000, 0xFEFA},
    {0x0000, 0x2001, 0x0000, 0x000B, 0x8001, 0x0000, 0x0000, 0xFEFA},
    {0x0000, 0x200C, 0x000D, 0x000E, 0x0872, 0x7F43, 0x0ACB, 0xF9DE},
    {0x0000, 0x200F, 0x0007, 0x000D, 0x7FFF, 0x0000, 0x0000, 0xFEFA},
    {0x0000, 0x200F, 0x0002, 0x0007, 0x7FFF, 0x0000, 0x0000, 0xFEFA},
    {0x0000, 0x200F, 0x0003, 0x0002, 0x7FFF, 0x0000, 0x0000, 0xFEFA},
    {0x0000, 0x200D, 0x0007, 0x0006, 0x5A9D, 0x058F, 0x5A3B, 0xFE4A},
    {0x0000, 0x200E, 0x000D, 0x0006, 0x5E77, 0x0D7E, 0x554F, 0xFDED},
    {0x0000, 0x2005, 0x0009, 0x0008, 0xA189, 0x0D7E, 0x554F, 0xFDED},
    {0x0000, 0x2005, 0x0004, 0x0009, 0xA563, 0x058F, 0x5A3B, 0xFE4A},
    {0x0000, 0x2009, 0x000B, 0x0010, 0x8001, 0x0000, 0x0000, 0xFEFA},
    {0x0000, 0x2000, 0x0003, 0x0011, 0x0000, 0x0000, 0x8001, 0xFEBA},
    {0x0000, 0x2000, 0x0011, 0x0012, 0x0000, 0x0000, 0x8001, 0xFEBA},
    {0x0000, 0x200E, 0x0006, 0x0005, 0x0000, 0x13FF, 0x7E6D, 0xFD48},
    {0x0000, 0x200E, 0x0005, 0x0008, 0x0000, 0x13FF, 0x7E6D, 0xFD48},
    {0x0000, 0x2001, 0x0004, 0x0007, 0x0000, 0x7FFF, 0x0000, 0xF8E9},
    {0x0000, 0x2001, 0x0007, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xF8E9},
    {0x0000, 0x2013, 0x0014, 0x0015, 0x0000, 0x0000, 0x7FFF, 0xFECE},
    {0x0000, 0x2013, 0x0015, 0x0016, 0x0000, 0x0000, 0x7FFF, 0xFECE},
    {0x0000, 0x2014, 0x0013, 0x0017, 0x0000, 0x0000, 0x7FFF, 0xFECE},
    {0x0000, 0x2014, 0x0017, 0x0018, 0x0000, 0x0000, 0x7FFF, 0xFECE},
    {0x0000, 0x2016, 0x0015, 0x0019, 0x0000, 0x0000, 0x7FFF, 0xFECE},
    {0x0000, 0x2016, 0x0019, 0x001A, 0x0000, 0x0000, 0x7FFF, 0xFECE},
    {0x0000, 0x201A, 0x0017, 0x000C, 0x0000, 0xB25E, 0x65C4, 0x016B},
    {0x0000, 0x201A, 0x000C, 0x000A, 0x0000, 0xB25E, 0x65C4, 0x016B},
    {0x0000, 0x2013, 0x0011, 0x001B, 0x7FFF, 0x0000, 0x0000, 0xFEFA},
    {0x0000, 0x2013, 0x001B, 0x0017, 0x7FFF, 0x0000, 0x0000, 0xFEFA},
    {0x0000, 0x2016, 0x001A, 0x001C, 0x8001, 0x0000, 0x0000, 0xFEFA},
    {0x0000, 0x2016, 0x001C, 0x0012, 0x8001, 0x0000, 0x0000, 0xFEFA},
    {0x0000, 0x200C, 0x0017, 0x000D, 0x7F16, 0x0136, 0x0F34, 0xFECE},
    {0x0000, 0x200F, 0x000D, 0x0017, 0x7FFF, 0x0000, 0x0000, 0xFEFA},
    {0x0000, 0x200F, 0x0017, 0x001B, 0x7FFF, 0x0000, 0x0000, 0xFEFA},
    {0x0000, 0x201A, 0x000A, 0x0009, 0x80EA, 0x0136, 0x0F34, 0xFECE},
    {0x0000, 0x2010, 0x001C, 0x001A, 0x8001, 0x0000, 0x0000, 0xFEFA},
    {0x0000, 0x2010, 0x001A, 0x0009, 0x8001, 0x0000, 0x0000, 0xFEFA},
    {0x0000, 0x200A, 0x000C, 0x000E, 0x0000, 0x7F0F, 0x0F78, 0xF9D5},
    {0x0000, 0x200A, 0x000E, 0x0008, 0x0000, 0x7F0F, 0x0F78, 0xF9D5},
};

Vec3s gObjectMizuObjectsMovebgCol_003590Vertices[] = {
    {   -262,   2165,   -326 },
    {   -262,   1815,   -155 },
    {    262,   1815,   -155 },
    {    262,   2165,   -326 },
    {   -262,   1815,    246 },
    {    -83,   1730,    431 },
    {     83,   1730,    431 },
    {    262,   1815,    246 },
    {    -83,   1534,    462 },
    {   -262,   1539,    263 },
    {   -211,   1506,    692 },
    {   -262,   1568,   -326 },
    {    211,   1506,    692 },
    {    262,   1539,    263 },
    {     83,   1534,    462 },
    {    262,   1568,   -326 },
    {   -262,   1361,   -326 },
    {    262,      0,   -326 },
    {   -262,      0,   -326 },
    {    262,      0,    306 },
    {    200,    600,    306 },
    {   -200,    600,    306 },
    {   -262,      0,    306 },
    {    262,   1000,    306 },
    {    200,   1000,    306 },
    {   -200,   1000,    306 },
    {   -262,   1000,    306 },
    {    262,   1000,   -326 },
    {   -262,   1000,   -326 },
};

CollisionHeader gObjectMizuObjectsMovebgCol_003590 = { 
    { -262, 0, -326 },
    { 262, 2165, 692 },
    29, gObjectMizuObjectsMovebgCol_003590Vertices,
    43, gObjectMizuObjectsMovebgCol_003590Polygons,
    gObjectMizuObjectsMovebgCol_003590SurfaceType,
    gObjectMizuObjectsMovebgCol_003590CamDataList,
    0, NULL
};

u8 object_mizu_objects_possiblePadding_0035BC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

u64 object_mizu_objects_Tex_0035C0[] = {
#include "assets/objects/object_mizu_objects/tex_000035C0.rgba16.inc.c"
};

Vtx object_mizu_objectsVtx_0045C0[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsVtx_0045C0.vtx.inc"
};

Gfx gWaterTempleDoorDL_0048B0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_mizu_objects_Tex_0035C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_mizu_objectsVtx_0045C0[32], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 3, 0, 8, 10, 9, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 14, 12, 0),
    gsSPEndDisplayList(),
};

Gfx gWaterTempleDoorLeftDL[] = {
    gsDPLoadTextureBlock(object_mizu_objects_Tex_0035C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_mizu_objectsVtx_0045C0, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 0, 6, 0, 1, 6, 7, 0),
    gsSP2Triangles(5, 4, 8, 0, 5, 8, 9, 0),
    gsSP2Triangles(7, 6, 10, 0, 7, 10, 11, 0),
    gsSP2Triangles(11, 8, 4, 0, 11, 4, 2, 0),
    gsSP2Triangles(11, 2, 1, 0, 11, 1, 7, 0),
    gsSP2Triangles(9, 8, 11, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPDisplayList(gWaterTempleDoorDL_0048B0),
    gsSPEndDisplayList(),
};

Gfx gWaterTempleDoorRightDL[] = {
    gsDPLoadTextureBlock(object_mizu_objects_Tex_0035C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_mizu_objectsVtx_0045C0[16], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 4, 0),
    gsSP2Triangles(11, 4, 3, 0, 13, 14, 8, 0),
    gsSP2Triangles(13, 8, 7, 0, 13, 12, 11, 0),
    gsSP2Triangles(13, 11, 14, 0, 5, 10, 9, 0),
    gsSP2Triangles(5, 9, 6, 0, 10, 5, 4, 0),
    gsSP2Triangles(10, 4, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(10, 13, 7, 0, 0, 2, 15, 0),
    gsSPDisplayList(gWaterTempleDoorDL_0048B0),
    gsSPEndDisplayList(),
};

u8 object_mizu_objects_possiblePadding_004AC8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_mizu_objectsVtx_004AD0[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsVtx_004AD0.vtx.inc"
};

Gfx gObjectMizuObjectsWaterDL_004B20[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_mizu_objectsTex_007D20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 15),
    gsDPLoadMultiBlock(object_mizu_objectsTex_007520, 0x0100, 1, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 14),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 102),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(object_mizu_objectsVtx_004AD0, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsSPEndDisplayList(),
};

u8 object_mizu_objects_possiblePadding_004BF8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_mizu_objectsTex_004C00[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsTex_004C00.rgba16.inc.c"
};

Vtx object_mizu_objectsVtx_005C00[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsVtx_005C00.vtx.inc"
};

Gfx gObjectMizuObjectsDoorShutterDL_005D90[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_mizu_objectsTex_004C00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_mizu_objectsVtx_005C00, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 2, 3, 0, 4, 0, 2, 0),
    gsSPVertex(&object_mizu_objectsVtx_005C00[5], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsSPVertex(&object_mizu_objectsVtx_005C00[10], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(3, 8, 9, 0, 8, 10, 9, 0),
    gsSP2Triangles(11, 12, 13, 0, 12, 14, 13, 0),
    gsSPEndDisplayList(),
};

u8 object_mizu_objects_possiblePadding_005E68[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_mizu_objectsTex_005E70[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsTex_005E70.rgba16.inc.c"
};

Vtx object_mizu_objectsVtx_006E70[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsVtx_006E70.vtx.inc"
};

Gfx gObjectMizuObjectsDoorShutterDL_007000[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_mizu_objectsTex_005E70, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_mizu_objectsVtx_006E70, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 2, 3, 0, 4, 0, 2, 0),
    gsSPVertex(&object_mizu_objectsVtx_006E70[5], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsSPVertex(&object_mizu_objectsVtx_006E70[10], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(3, 8, 9, 0, 8, 10, 9, 0),
    gsSP2Triangles(11, 12, 13, 0, 12, 14, 13, 0),
    gsSPEndDisplayList(),
};

u8 object_mizu_objects_possiblePadding_0070D8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_mizu_objectsVtx_0070E0[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsVtx_0070E0.vtx.inc"
};

Gfx gObjectMizuObjectsShutterDL_007130[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_mizu_objectsTex_00A720, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_mizu_objectsVtx_0070E0, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(1, 4, 3, 0),
    gsSPEndDisplayList(),
};

u8 object_mizu_objects_possiblePadding_0071C8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gObjectMizuObjectsShutterCol_007250CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gObjectMizuObjectsShutterCol_007250SurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gObjectMizuObjectsShutterCol_007250Polygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0000, 0x2004, 0x0005, 0x0006, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0000, 0x2004, 0x0006, 0x0007, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
};

Vec3s gObjectMizuObjectsShutterCol_007250Vertices[] = {
    {   -600,      0,   -100 },
    {   -600,   1200,   -100 },
    {    600,   1200,   -100 },
    {    600,      0,   -100 },
    {    600,      0,    100 },
    {    600,   1200,    100 },
    {   -600,   1200,    100 },
    {   -600,      0,    100 },
};

CollisionHeader gObjectMizuObjectsShutterCol_007250 = { 
    { -600, 0, -100 },
    { 600, 1200, 100 },
    8, gObjectMizuObjectsShutterCol_007250Vertices,
    4, gObjectMizuObjectsShutterCol_007250Polygons,
    gObjectMizuObjectsShutterCol_007250SurfaceType,
    gObjectMizuObjectsShutterCol_007250CamDataList,
    0, NULL
};

Vtx object_mizu_objectsVtx_007280[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsVtx_007280.vtx.inc"
};

Gfx gObjectMizuObjectsShutterDL_0072D0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_mizu_objectsTex_00A720, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_mizu_objectsVtx_007280, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(3, 4, 1, 0),
    gsSPEndDisplayList(),
};

u8 object_mizu_objects_possiblePadding_007368[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gObjectMizuObjectsShutterCol_0073F0CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gObjectMizuObjectsShutterCol_0073F0SurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gObjectMizuObjectsShutterCol_0073F0Polygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x0000, 0x0000, 0x8001, 0xFFD8},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x0000, 0x0000, 0x8001, 0xFFD8},
    {0x0000, 0x2004, 0x0005, 0x0006, 0x0000, 0x0000, 0x7FFF, 0xFFD8},
    {0x0000, 0x2004, 0x0006, 0x0007, 0x0000, 0x0000, 0x7FFF, 0xFFD8},
};

Vec3s gObjectMizuObjectsShutterCol_0073F0Vertices[] = {
    {   -800,   1600,    -40 },
    {    800,   1600,    -40 },
    {    800,      0,    -40 },
    {   -800,      0,    -40 },
    {    800,   1600,     40 },
    {   -800,   1600,     40 },
    {   -800,      0,     40 },
    {    800,      0,     40 },
};

CollisionHeader gObjectMizuObjectsShutterCol_0073F0 = { 
    { -800, 0, -40 },
    { 800, 1600, 40 },
    8, gObjectMizuObjectsShutterCol_0073F0Vertices,
    4, gObjectMizuObjectsShutterCol_0073F0Polygons,
    gObjectMizuObjectsShutterCol_0073F0SurfaceType,
    gObjectMizuObjectsShutterCol_0073F0CamDataList,
    0, NULL
};

u8 object_mizu_objects_possiblePadding_00741C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

CamData gObjectMizuObjectsUzuCol_0074ECCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gObjectMizuObjectsUzuCol_0074ECSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gObjectMizuObjectsUzuCol_0074ECPolygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x5A82, 0x0000, 0xA57E, 0x0000},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x5A82, 0x0000, 0xA57E, 0x0000},
    {0x0000, 0x2004, 0x0005, 0x0002, 0xA57E, 0x0000, 0xA57E, 0x0000},
    {0x0000, 0x2004, 0x0002, 0x0003, 0xA57E, 0x0000, 0xA57E, 0x0000},
    {0x0000, 0x2006, 0x0007, 0x0002, 0x5A82, 0x0000, 0x5A82, 0x0000},
    {0x0000, 0x2006, 0x0002, 0x0003, 0x5A82, 0x0000, 0x5A82, 0x0000},
    {0x0000, 0x2008, 0x0009, 0x0002, 0xA57E, 0x0000, 0x5A82, 0x0000},
    {0x0000, 0x2008, 0x0002, 0x0003, 0xA57E, 0x0000, 0x5A82, 0x0000},
};

Vec3s gObjectMizuObjectsUzuCol_0074ECVertices[] = {
    {   2000,      0,   2000 },
    {   2000,  -4548,   2000 },
    {      0,  -4548,      0 },
    {      0,      0,      0 },
    {   2000,      0,  -2000 },
    {   2000,  -4548,  -2000 },
    {  -2000,      0,   2000 },
    {  -2000,  -4548,   2000 },
    {  -2000,      0,  -2000 },
    {  -2000,  -4548,  -2000 },
};

CollisionHeader gObjectMizuObjectsUzuCol_0074EC = { 
    { -2000, -4548, -2000 },
    { 2000, 0, 2000 },
    10, gObjectMizuObjectsUzuCol_0074ECVertices,
    8, gObjectMizuObjectsUzuCol_0074ECPolygons,
    gObjectMizuObjectsUzuCol_0074ECSurfaceType,
    gObjectMizuObjectsUzuCol_0074ECCamDataList,
    0, NULL
};

u8 object_mizu_objects_possiblePadding_007518[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_mizu_objectsTex_007520[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsTex_007520.ia16.inc.c"
};

u64 object_mizu_objectsTex_007D20[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsTex_007D20.rgba16.inc.c"
};

u64 object_mizu_objectsTex_008520[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsTex_008520.rgba16.inc.c"
};

u64 object_mizu_objectsTex_008D20[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsTex_008D20.rgba16.inc.c"
};

u64 object_mizu_objectsTex_009520[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsTex_009520.i4.inc.c"
};

u64 object_mizu_objectsTex_009720[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsTex_009720.i4.inc.c"
};

u64 object_mizu_objectsTex_009920[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsTex_009920.i4.inc.c"
};

u64 object_mizu_objectsTex_009B20[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsTex_009B20.i4.inc.c"
};

u64 object_mizu_objectsTex_009D20[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsTex_009D20.i4.inc.c"
};

u64 object_mizu_objectsTex_009F20[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsTex_009F20.rgba16.inc.c"
};

u64 object_mizu_objectsTex_00A720[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsTex_00A720.rgba16.inc.c"
};

u64 object_mizu_objectsTex_00AB20[] = {
#include "assets/objects/object_mizu_objects/object_mizu_objectsTex_00AB20.i4.inc.c"
};

