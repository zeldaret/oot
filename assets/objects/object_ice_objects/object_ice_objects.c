#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_ice_objects.h"

Vtx object_ice_objectsVtx_000000[] = {
#include "assets/objects/object_ice_objects/object_ice_objectsVtx_000000.vtx.inc"
};

Gfx object_ice_objects_DL_000190[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_ice_objects_Tex_004950, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_ice_objectsVtx_000000, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_ice_objects_Tex_004150, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ice_objectsVtx_000000[5], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&object_ice_objectsVtx_000000[21], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 object_ice_objects_possiblePadding_0002B8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData object_ice_objects_Col_0003F0CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_ice_objects_Col_0003F0SurfaceType[] = {
    { 0x00E0A000, 0x000007CC },
    { 0x0000A000, 0x000007CC },
};

CollisionPoly object_ice_objects_Col_0003F0Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0004, 0x0005, 0x0001, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x0004, 0x0001, 0x0000, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x0006, 0x0007, 0x0005, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0006, 0x0005, 0x0004, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0003, 0x0002, 0x0007, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0003, 0x0007, 0x0006, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0001, 0x0002, 0x0008, 0x0007, 0x0000, 0x7FFF, 0x0000, 0xFDA8},
    {0x0001, 0x0002, 0x0001, 0x0008, 0x0000, 0x7FFF, 0x0000, 0xFDA8},
    {0x0001, 0x0001, 0x0005, 0x0008, 0x0000, 0x7FFF, 0x0000, 0xFDA8},
    {0x0001, 0x0005, 0x0007, 0x0008, 0x0000, 0x7FFF, 0x0000, 0xFDA8},
    {0x0001, 0x0006, 0x0004, 0x0000, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0001, 0x0006, 0x0000, 0x0003, 0x0000, 0x8001, 0x0000, 0x0000},
};

Vec3s object_ice_objects_Col_0003F0Vertices[] = {
    {    600,      0,   -600 },
    {    600,    600,   -600 },
    {    600,    600,    600 },
    {    600,      0,    600 },
    {   -600,      0,   -600 },
    {   -600,    600,   -600 },
    {   -600,      0,    600 },
    {   -600,    600,    600 },
    {      0,    600,      0 },
};

CollisionHeader object_ice_objects_Col_0003F0 = { 
    { -600, 0, -600 },
    { 600, 600, 600 },
    9, object_ice_objects_Col_0003F0Vertices,
    14, object_ice_objects_Col_0003F0Polygons,
    object_ice_objects_Col_0003F0SurfaceType,
    object_ice_objects_Col_0003F0CamDataList,
    0, NULL
};

Vtx object_ice_objectsVtx_000420[] = {
#include "assets/objects/object_ice_objects/object_ice_objectsVtx_000420.vtx.inc"
};

Gfx object_ice_objects_DL_0006F0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x0FA0, 0x0FA0, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_ice_objects_Tex_005150, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 1, G_TX_NOMIRROR | G_TX_WRAP, 5,
                1),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0x80, 0x80, 255, 255, 170, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_ice_objectsVtx_000420, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_ice_objectsVtx_000420[3], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_ice_objectsVtx_000420[33], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx object_ice_objectsVtx_0007E0[] = {
#include "assets/objects/object_ice_objects/object_ice_objectsVtx_0007E0.vtx.inc"
};

Gfx object_ice_objects_DL_0012A0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x0FA0, 0x0FA0, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_ice_objects_Tex_005550, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, 1, 1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 6, 1, G_TX_NOMIRROR | G_TX_WRAP, 6,
                1),
    gsDPSetTileSize(1, 0, 0, 0x00FC, 0x00FC),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0x80, 0x80, 255, 255, 170, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_ice_objectsVtx_0007E0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_ice_objectsVtx_0007E0[3], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 6, 5, 0),
    gsSP2Triangles(7, 5, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(13, 14, 12, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 17, 19, 20, 0),
    gsSP2Triangles(17, 20, 18, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 21, 23, 0, 25, 24, 23, 0),
    gsSP2Triangles(26, 25, 23, 0, 26, 23, 22, 0),
    gsDPPipeSync(),
    gsSPDisplayList(0x09000000),
    gsSPVertex(&object_ice_objectsVtx_0007E0[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 4, 2, 0),
    gsSP2Triangles(1, 5, 2, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 8, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 20, 21, 0, 22, 23, 7, 0),
    gsSP2Triangles(22, 7, 6, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 24, 26, 0, 28, 27, 26, 0),
    gsSP2Triangles(29, 28, 26, 0, 25, 29, 26, 0),
    gsSPVertex(&object_ice_objectsVtx_0007E0[60], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&object_ice_objectsVtx_0007E0[90], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_ice_objectsVtx_0007E0[122], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 9, 8, 0, 12, 8, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 17, 0, 18, 17, 16, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 23, 0, 24, 23, 22, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&object_ice_objectsVtx_0007E0[152], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 8, 5, 4, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 16, 0),
    gsSP2Triangles(17, 18, 16, 0, 18, 19, 16, 0),
    gsSP1Triangle(19, 14, 16, 0),
    gsSPEndDisplayList(),
};

CamData object_ice_objects_Col_001C1CCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_ice_objects_Col_001C1CSurfaceType[] = {
    { 0x0000A000, 0x000007CC },
};

CollisionPoly object_ice_objects_Col_001C1CPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFCF0},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xFCF0},
    {0x0000, 0x0000, 0x0003, 0x0004, 0x0000, 0x7FFF, 0x0000, 0xFCF0},
    {0x0000, 0x0005, 0x0006, 0x0007, 0x0000, 0x7FFF, 0x0000, 0xFEFB},
    {0x0000, 0x0005, 0x0007, 0x0008, 0x0000, 0x7FFF, 0x0000, 0xFEFB},
    {0x0000, 0x0005, 0x0008, 0x0009, 0x0000, 0x7FFF, 0x0000, 0xFEFB},
    {0x0000, 0x0005, 0x0009, 0x000A, 0x0000, 0x7FFF, 0x0000, 0xFEFB},
    {0x0000, 0x000B, 0x000C, 0x000D, 0x0000, 0x7FFF, 0x0000, 0xFDF6},
    {0x0000, 0x000B, 0x000D, 0x000E, 0x0000, 0x7FFF, 0x0000, 0xFDF6},
    {0x0000, 0x000B, 0x000E, 0x000F, 0x0000, 0x7FFF, 0x0000, 0xFDF6},
    {0x0000, 0x000B, 0x000F, 0x0010, 0x0000, 0x7FFF, 0x0000, 0xFDF6},
    {0x0000, 0x0011, 0x0012, 0x0013, 0x5D2A, 0x357D, 0xBA6A, 0x017F},
    {0x0000, 0x0014, 0x0011, 0x0013, 0x5E69, 0x2A3A, 0x4B69, 0xFF81},
    {0x0000, 0x0015, 0x0014, 0x0013, 0xD616, 0x11AD, 0x77A4, 0xFC93},
    {0x0000, 0x0016, 0x0015, 0x0013, 0x80BA, 0x0D90, 0x00AB, 0xFCC9},
    {0x0000, 0x0012, 0x0016, 0x0013, 0xD3B9, 0x237C, 0x8D45, 0xFFCC},
    {0x0000, 0x0017, 0x0012, 0x0011, 0x6728, 0x0EA5, 0xB5A7, 0x02BE},
    {0x0000, 0x0017, 0x0011, 0x0018, 0x6797, 0x0E83, 0xB63B, 0x02BF},
    {0x0000, 0x0018, 0x0011, 0x0014, 0x6613, 0x0D57, 0x4C11, 0x005F},
    {0x0000, 0x0018, 0x0014, 0x0019, 0x6963, 0x0F77, 0x46FA, 0x0079},
    {0x0000, 0x0019, 0x0014, 0x0015, 0xDA25, 0xF19A, 0x796B, 0xFD6E},
    {0x0000, 0x0019, 0x0015, 0x001A, 0xD8C0, 0xF0F3, 0x78E5, 0xFD6C},
    {0x0000, 0x001A, 0x0015, 0x0016, 0x8245, 0xE810, 0xFED1, 0xFDC8},
    {0x0000, 0x001A, 0x0016, 0x001B, 0x8237, 0xE84F, 0x0000, 0xFDC1},
    {0x0000, 0x001B, 0x0016, 0x0012, 0xD803, 0xFFF7, 0x8669, 0x00E1},
    {0x0000, 0x001B, 0x0012, 0x0017, 0xEDE6, 0xFE58, 0x814D, 0x016F},
    {0x0000, 0x001C, 0x001D, 0x001E, 0x7CEC, 0x177E, 0x0F05, 0xFD74},
    {0x0000, 0x001F, 0x0020, 0x001E, 0xA123, 0x33CD, 0xBB70, 0xFF79},
    {0x0000, 0x0021, 0x001F, 0x001E, 0x0E0E, 0x12CA, 0x822C, 0xFD38},
    {0x0000, 0x001D, 0x0021, 0x001E, 0x7C49, 0x0A80, 0xE343, 0xFD02},
    {0x0000, 0x0022, 0x001D, 0x001C, 0x7591, 0xED34, 0x2EFD, 0xFEBE},
    {0x0000, 0x0022, 0x001C, 0x0023, 0x76D7, 0xEE58, 0x2C24, 0xFEAC},
    {0x0000, 0x0024, 0x0020, 0x001F, 0x8784, 0x0B5D, 0xD652, 0x0102},
    {0x0000, 0x0024, 0x001F, 0x0025, 0x8771, 0x0B9D, 0xD69A, 0x0103},
    {0x0000, 0x0025, 0x001F, 0x0021, 0x0987, 0xEC1B, 0x81EB, 0xFDE6},
    {0x0000, 0x0025, 0x0021, 0x0026, 0x0BE4, 0xEAFB, 0x824D, 0xFDE1},
    {0x0000, 0x0026, 0x0021, 0x001D, 0x7A30, 0xE418, 0xE606, 0xFDB1},
    {0x0000, 0x0026, 0x001D, 0x0022, 0x79C8, 0xE4A5, 0xE3A4, 0xFDA8},
    {0x0000, 0x0027, 0x000C, 0x000B, 0x82C9, 0x0000, 0x1A89, 0xFCF3},
    {0x0000, 0x0027, 0x000B, 0x0028, 0x82C9, 0x0000, 0x1A89, 0xFCF3},
    {0x0000, 0x0029, 0x000D, 0x000C, 0xE6B8, 0x0000, 0x7D7A, 0xFD22},
    {0x0000, 0x0029, 0x000C, 0x0027, 0xE6B8, 0x0000, 0x7D7A, 0xFD22},
    {0x0000, 0x002A, 0x0008, 0x0007, 0x1814, 0x0000, 0x824A, 0xFD4B},
    {0x0000, 0x002A, 0x0007, 0x002B, 0x1814, 0x0000, 0x824A, 0xFD4B},
    {0x0000, 0x002C, 0x0009, 0x0008, 0xAFC6, 0x0000, 0x9C44, 0xFD0E},
    {0x0000, 0x002C, 0x0008, 0x002A, 0xAFC6, 0x0000, 0x9C44, 0xFD0E},
    {0x0000, 0x002B, 0x0007, 0x0006, 0x7FBB, 0x0000, 0xF7C8, 0xFD61},
    {0x0000, 0x002B, 0x0006, 0x002D, 0x7FBB, 0x0000, 0xF7C8, 0xFD61},
    {0x0000, 0x002D, 0x0006, 0x0005, 0x21C2, 0x0000, 0x7B77, 0xFE91},
    {0x0000, 0x002D, 0x0005, 0x002E, 0x21C2, 0x0000, 0x7B77, 0xFE91},
    {0x0000, 0x000E, 0x000D, 0x0029, 0x7644, 0x0000, 0x30F4, 0xFED6},
    {0x0000, 0x000E, 0x0029, 0x002F, 0x7644, 0x0000, 0x30F4, 0xFED6},
    {0x0000, 0x000A, 0x0009, 0x002C, 0x836C, 0x0000, 0x1D60, 0xFDD4},
    {0x0000, 0x000A, 0x002C, 0x0030, 0x836C, 0x0000, 0x1D60, 0xFDD4},
    {0x0000, 0x0031, 0x0004, 0x0003, 0x8FBD, 0x0000, 0x3D7B, 0xFE0D},
    {0x0000, 0x0031, 0x0003, 0x0032, 0x8FBD, 0x0000, 0x3D7B, 0xFE0D},
    {0x0000, 0x0033, 0x0002, 0x0001, 0x36A9, 0x0000, 0x8C43, 0xFE80},
    {0x0000, 0x0033, 0x0001, 0x0034, 0x36A9, 0x0000, 0x8C43, 0xFE80},
    {0x0000, 0x0035, 0x0010, 0x000F, 0x55E0, 0x0000, 0xA116, 0xFF4D},
    {0x0000, 0x0035, 0x000F, 0x0036, 0x55E0, 0x0000, 0xA116, 0xFF4D},
    {0x0000, 0x0034, 0x0001, 0x0000, 0x7EF9, 0x0000, 0x1024, 0xFE40},
    {0x0000, 0x0034, 0x0000, 0x0005, 0x7EFA, 0x0009, 0x101C, 0xFE40},
    {0x0000, 0x0037, 0x002E, 0x0005, 0x7EF7, 0x0000, 0x1035, 0xFE40},
    {0x0000, 0x0037, 0x0005, 0x0000, 0x7EF7, 0x0000, 0x1035, 0xFE40},
    {0x0000, 0x000E, 0x0038, 0x0039, 0x17B8, 0x0002, 0x7DC8, 0xFDF9},
    {0x0000, 0x000E, 0x0039, 0x0031, 0x17B6, 0x0000, 0x7DC8, 0xFDF9},
    {0x0000, 0x0037, 0x0038, 0x000E, 0x17B9, 0x0000, 0x7DC7, 0xFDF9},
    {0x0000, 0x0037, 0x000E, 0x002F, 0x17B9, 0x0000, 0x7DC7, 0xFDF9},
    {0x0000, 0x0010, 0x0035, 0x000A, 0xBB3F, 0x0000, 0x940A, 0xFE0D},
    {0x0000, 0x0010, 0x000A, 0x000B, 0xBB7C, 0xFF80, 0x93E3, 0xFE0F},
    {0x0000, 0x0030, 0x0028, 0x000B, 0xBBF7, 0x0000, 0x9396, 0xFE10},
    {0x0000, 0x0030, 0x000B, 0x000A, 0xBBF7, 0x0000, 0x9396, 0xFE10},
    {0x0000, 0x0032, 0x0003, 0x0002, 0xA2CF, 0x0000, 0xA842, 0xFE61},
    {0x0000, 0x0032, 0x0002, 0x000F, 0xA2CB, 0x0010, 0xA847, 0xFE61},
    {0x0000, 0x0033, 0x0036, 0x000F, 0xA2E9, 0x0000, 0xA827, 0xFE61},
    {0x0000, 0x0033, 0x000F, 0x0002, 0xA2E9, 0x0000, 0xA827, 0xFE61},
    {0x0000, 0x0023, 0x001C, 0x003A, 0x5556, 0xEFEF, 0x5E09, 0xFFB3},
    {0x0000, 0x0023, 0x003A, 0x003B, 0x5611, 0xF011, 0x5D64, 0xFFAE},
    {0x0000, 0x003C, 0x003D, 0x0020, 0x82F9, 0x0B6F, 0xE716, 0x0143},
    {0x0000, 0x003C, 0x0020, 0x0024, 0x8332, 0x0B44, 0xE5EC, 0x0140},
    {0x0000, 0x003B, 0x003A, 0x003D, 0xC0CC, 0xFF12, 0x6F4C, 0x01E4},
    {0x0000, 0x003B, 0x003D, 0x003C, 0xC018, 0xFF06, 0x6EE5, 0x01E5},
    {0x0000, 0x003A, 0x001C, 0x003E, 0x5791, 0x05FD, 0x5D2A, 0xFF34},
    {0x0000, 0x001C, 0x001E, 0x003E, 0x7EE1, 0x0A99, 0x0D22, 0xFDAA},
    {0x0000, 0x001E, 0x0020, 0x003E, 0x9F30, 0x2DBF, 0xB9E0, 0xFF9D},
    {0x0000, 0x0020, 0x003D, 0x003E, 0x88AC, 0x28D1, 0xEA24, 0x0096},
    {0x0000, 0x003D, 0x003A, 0x003E, 0xC7D9, 0x177D, 0x7099, 0x0149},
};

Vec3s object_ice_objects_Col_001C1CVertices[] = {
    {    394,    784,    454 },
    {    477,    784,   -199 },
    {   -118,    784,   -480 },
    {   -569,    784,     -1 },
    {   -253,    784,    576 },
    {    418,    261,    266 },
    {    685,    261,    193 },
    {    635,    261,   -584 },
    {   -263,    261,   -756 },
    {   -672,    261,   -427 },
    {   -618,    261,   -198 },
    {   -814,    522,    -75 },
    {   -668,    522,    614 },
    {     12,    522,    751 },
    {    113,    522,    507 },
    {   -185,    522,   -409 },
    {   -227,    522,   -447 },
    {   -615,    832,    520 },
    {   -662,    828,    454 },
    {   -715,   1027,    536 },
    {   -662,    821,    585 },
    {   -738,    810,    560 },
    {   -738,    814,    479 },
    {   -620,    522,    452 },
    {   -573,    522,    518 },
    {   -606,    522,    567 },
    {   -683,    522,    542 },
    {   -683,    522,    461 },
    {    580,    666,   -308 },
    {    631,    515,   -496 },
    {    602,    705,   -552 },
    {    527,    520,   -588 },
    {    469,    701,   -371 },
    {    612,    510,   -580 },
    {    580,    261,   -470 },
    {    528,    261,   -330 },
    {    432,    261,   -384 },
    {    489,    261,   -550 },
    {    563,    261,   -543 },
    {   -668,      0,    614 },
    {   -814,      0,    -75 },
    {     12,      0,    751 },
    {   -263,      0,   -756 },
    {    635,      0,   -584 },
    {   -672,      0,   -427 },
    {    685,      0,    193 },
    {    418,      0,    266 },
    {    113,      0,    507 },
    {   -618,      0,   -198 },
    {   -253,    522,    576 },
    {   -569,    522,     -1 },
    {   -118,    261,   -480 },
    {    477,    261,   -199 },
    {   -227,    261,   -447 },
    {   -185,    261,   -409 },
    {    394,      0,    454 },
    {    394,    783,    454 },
    {   -253,    783,    576 },
    {    522,    674,   -254 },
    {    477,    261,   -283 },
    {    418,    261,   -317 },
    {    453,    696,   -293 },
    {    553,    983,   -303 },
};

CollisionHeader object_ice_objects_Col_001C1C = { 
    { -814, 0, -756 },
    { 685, 1027, 751 },
    63, object_ice_objects_Col_001C1CVertices,
    87, object_ice_objects_Col_001C1CPolygons,
    object_ice_objects_Col_001C1CSurfaceType,
    object_ice_objects_Col_001C1CCamDataList,
    0, NULL
};

u8 object_ice_objects_possiblePadding_001C48[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_ice_objectsVtx_001C50[] = {
#include "assets/objects/object_ice_objects/object_ice_objectsVtx_001C50.vtx.inc"
};

Gfx object_ice_objects_DL_001D10[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_ice_objects_Tex_006D50, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_ice_objectsVtx_001C50, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPVertex(&object_ice_objectsVtx_001C50[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPVertex(&object_ice_objectsVtx_001C50[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx object_ice_objectsVtx_001DC0[] = {
#include "assets/objects/object_ice_objects/object_ice_objectsVtx_001DC0.vtx.inc"
};

Gfx object_ice_objects_DL_0021F0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_ice_objects_Tex_002950, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_ice_objectsVtx_001DC0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(22, 24, 23, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&object_ice_objectsVtx_001DC0[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_ice_objectsVtx_001DC0[61], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPEndDisplayList(),
};

Vtx object_ice_objectsVtx_002300[] = {
#include "assets/objects/object_ice_objects/object_ice_objectsVtx_002300.vtx.inc"
};

Gfx object_ice_objects_DL_0023D0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_ice_objects_Tex_005D50, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_ice_objectsVtx_002300, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP1Triangle(10, 12, 11, 0),
    gsSPEndDisplayList(),
};

CamData object_ice_objects_Col_002594CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_ice_objects_Col_002594SurfaceType[] = {
    { 0x00000000, 0x000007C0 },
    { 0x00200000, 0x000007C0 },
};

CollisionPoly object_ice_objects_Col_002594Polygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFB50},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xFB50},
    {0x0000, 0x2000, 0x0003, 0x0004, 0x0000, 0x7FFF, 0x0000, 0xFB50},
    {0x0001, 0x2005, 0x0001, 0x0000, 0xBECF, 0x0000, 0x91D9, 0xFF7C},
    {0x0001, 0x2005, 0x0000, 0x0006, 0xBECF, 0x0000, 0x91D9, 0xFF7C},
    {0x0001, 0x2007, 0x0002, 0x0001, 0x805B, 0x0000, 0x097B, 0xFF79},
    {0x0001, 0x2007, 0x0001, 0x0005, 0x805B, 0x0000, 0x097B, 0xFF79},
    {0x0001, 0x2008, 0x0003, 0x0002, 0xF484, 0x0000, 0x7F7B, 0xFF71},
    {0x0001, 0x2008, 0x0002, 0x0007, 0xF484, 0x0000, 0x7F7B, 0xFF71},
    {0x0001, 0x2009, 0x0004, 0x0003, 0x798B, 0x0000, 0x2820, 0xFF75},
    {0x0001, 0x2009, 0x0003, 0x0008, 0x798B, 0x0000, 0x2820, 0xFF75},
    {0x0001, 0x2006, 0x0000, 0x0004, 0x4425, 0x0000, 0x93A7, 0xFF78},
    {0x0001, 0x2006, 0x0004, 0x0009, 0x4425, 0x0000, 0x93A7, 0xFF78},
};

Vec3s object_ice_objects_Col_002594Vertices[] = {
    {      6,   1200,   -157 },
    {   -141,   1200,    -70 },
    {   -126,   1200,    132 },
    {     96,   1200,    152 },
    {    165,   1200,    -57 },
    {   -141,      0,    -70 },
    {      6,      0,   -157 },
    {   -126,      0,    132 },
    {     96,      0,    152 },
    {    165,      0,    -57 },
};

CollisionHeader object_ice_objects_Col_002594 = { 
    { -141, 0, -157 },
    { 165, 1200, 152 },
    10, object_ice_objects_Col_002594Vertices,
    13, object_ice_objects_Col_002594Polygons,
    object_ice_objects_Col_002594SurfaceType,
    object_ice_objects_Col_002594CamDataList,
    0, NULL
};

Vtx object_ice_objectsVtx_0025C0[] = {
#include "assets/objects/object_ice_objects/object_ice_objectsVtx_0025C0.vtx.inc"
};

Gfx object_ice_objects_DL_002640[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_ice_objects_Tex_003150, G_IM_FMT_I, G_IM_SIZ_8b, 32, 128, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_ice_objectsVtx_0025C0, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx object_ice_objectsVtx_0026E0[] = {
#include "assets/objects/object_ice_objects/object_ice_objectsVtx_0026E0.vtx.inc"
};

Gfx object_ice_objects_DL_002740[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_ice_objects_Tex_007D50, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_ice_objectsVtx_0026E0, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSPEndDisplayList(),
};

u8 object_ice_objects_possiblePadding_0027D8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData object_ice_objects_Col_002854CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_ice_objects_Col_002854SurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly object_ice_objects_Col_002854Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0001, 0x0004, 0x0005, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0001, 0x0005, 0x0002, 0x0000, 0x0000, 0x7FFF, 0x0000},
};

Vec3s object_ice_objects_Col_002854Vertices[] = {
    {   -900,      0,      0 },
    {      0,      0,      0 },
    {      0,   1800,      0 },
    {   -900,   1800,      0 },
    {    900,      0,      0 },
    {    900,   1800,      0 },
};

CollisionHeader object_ice_objects_Col_002854 = { 
    { -900, 0, 0 },
    { 900, 1800, 0 },
    6, object_ice_objects_Col_002854Vertices,
    4, object_ice_objects_Col_002854Polygons,
    object_ice_objects_Col_002854SurfaceType,
    object_ice_objects_Col_002854CamDataList,
    0, NULL
};

CamData object_ice_objects_Col_002920CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_ice_objects_Col_002920SurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly object_ice_objects_Col_002920Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x3CF8, 0x0000, 0x708B, 0xFE7C},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x4065, 0x01EB, 0x6E9A, 0xFE66},
    {0x0000, 0x0003, 0x0002, 0x0004, 0x0422, 0x03FB, 0x7FDE, 0xFEA0},
    {0x0000, 0x0003, 0x0004, 0x0005, 0x0590, 0x04A9, 0x7FCA, 0xFE9E},
    {0x0000, 0x0005, 0x0004, 0x0006, 0xAAE4, 0x0A04, 0x5F13, 0xFD94},
    {0x0000, 0x0005, 0x0006, 0x0007, 0x9CF6, 0x0000, 0x5115, 0xFD85},
};

Vec3s object_ice_objects_Col_002920Vertices[] = {
    {    819,      0,     -2 },
    {    819,    832,     -2 },
    {    256,   1315,    303 },
    {    223,      0,    345 },
    {   -414,   1336,    324 },
    {   -512,      0,    377 },
    {   -819,    951,      2 },
    {   -819,      0,      2 },
};

CollisionHeader object_ice_objects_Col_002920 = { 
    { -819, 0, -2 },
    { 819, 1336, 377 },
    8, object_ice_objects_Col_002920Vertices,
    6, object_ice_objects_Col_002920Polygons,
    object_ice_objects_Col_002920SurfaceType,
    object_ice_objects_Col_002920CamDataList,
    0, NULL
};

u8 object_ice_objects_possiblePadding_00294C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

u64 object_ice_objects_Tex_002950[] = {
#include "assets/objects/object_ice_objects/tex_00002950.rgba16.inc.c"
};

u64 object_ice_objects_Tex_003150[] = {
#include "assets/objects/object_ice_objects/tex_00003150.i8.inc.c"
};

u64 object_ice_objects_Tex_004150[] = {
#include "assets/objects/object_ice_objects/tex_00004150.rgba16.inc.c"
};

u64 object_ice_objects_Tex_004950[] = {
#include "assets/objects/object_ice_objects/tex_00004950.rgba16.inc.c"
};

u64 object_ice_objects_Tex_005150[] = {
#include "assets/objects/object_ice_objects/tex_00005150.i8.inc.c"
};

u64 object_ice_objects_Tex_005550[] = {
#include "assets/objects/object_ice_objects/tex_00005550.i4.inc.c"
};

u64 object_ice_objects_Tex_005D50[] = {
#include "assets/objects/object_ice_objects/tex_00005D50.i8.inc.c"
};

u64 object_ice_objects_Tex_006D50[] = {
#include "assets/objects/object_ice_objects/tex_00006D50.rgba16.inc.c"
};

u64 object_ice_objects_Tex_007D50[] = {
#include "assets/objects/object_ice_objects/tex_00007D50.ia8.inc.c"
};

