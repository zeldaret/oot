#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_ydan_objects.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

u64 gYdanHasiFloatingBlockSideTex[] = {
#include "assets/objects/object_ydan_objects/floating_block_side.rgba16.inc.c"
};

u64 gYdanHasiFloatingBlockBottomTex[] = {
#include "assets/objects/object_ydan_objects/floating_block_bottom.rgba16.inc.c"
};

u64 gYdanWebTex[] = {
#include "assets/objects/object_ydan_objects/web_tex.ia16.inc.c"
};

u64 gYdanMarutaUnused1Tex[] = {
#include "assets/objects/object_ydan_objects/maruta_unused_1.rgba16.inc.c"
};

u64 gYdanDoor1Tex[] = {
#include "assets/objects/object_ydan_objects/door_tex1.rgba16.inc.c"
};

Vtx object_ydan_objectsVtx_003800[] = {
#include "assets/objects/object_ydan_objects/object_ydan_objectsVtx_003800.vtx.inc"
};

Gfx gDTUnknownWebDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gYdanWebTex, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 229),
    gsSPVertex(object_ydan_objectsVtx_003800, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 0, 2, 4, 0),
    gsSPEndDisplayList(),
};

u8 object_ydan_objects_possiblePadding_0038E8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gYdanTLUT_38F0[] = {
#include "assets/objects/object_ydan_objects/tlut_3.rgba16.inc.c"
};

u8 object_ydan_objects_unaccounted_003AF0[] = {
    0x00, 0x00, 0x02, 0x58, 0x00, 0x8D, 0x00, 0x7F, 
};

u64 gYdanHasi3BlocksTopTex[] = {
#include "assets/objects/object_ydan_objects/three_blocks_top.ci8.inc.c"
};

u64 gYdanHasi3BlocksSideTex[] = {
#include "assets/objects/object_ydan_objects/three_blocks_side.ci8.inc.c"
};

Vtx object_ydan_objectsVtx_004AF8[] = {
#include "assets/objects/object_ydan_objects/object_ydan_objectsVtx_004AF8.vtx.inc"
};

Gfx gDTRisingPlatformsDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gYdanHasi3BlocksSideTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gYdanTLUT_38F0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_ydan_objectsVtx_004AF8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 9, 0, 12, 9, 8, 0),
    gsSP2Triangles(14, 15, 13, 0, 14, 13, 12, 0),
    gsSP2Triangles(16, 17, 15, 0, 16, 15, 14, 0),
    gsSP2Triangles(3, 2, 17, 0, 3, 17, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 19, 0, 22, 19, 18, 0),
    gsSP2Triangles(24, 25, 23, 0, 24, 23, 22, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP2Triangles(30, 31, 27, 0, 30, 27, 26, 0),
    gsSPVertex(&object_ydan_objectsVtx_004AF8[32], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 9, 0, 12, 9, 8, 0),
    gsSP2Triangles(14, 15, 13, 0, 14, 13, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 17, 0, 20, 17, 16, 0),
    gsSP2Triangles(22, 23, 21, 0, 22, 21, 20, 0),
    gsSP2Triangles(24, 25, 23, 0, 24, 23, 22, 0),
    gsSP2Triangles(11, 10, 25, 0, 11, 25, 24, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gYdanHasi3BlocksTopTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ydan_objectsVtx_004AF8[58], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 11, 12, 0, 8, 12, 13, 0),
    gsSP2Triangles(8, 13, 14, 0, 8, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(16, 19, 20, 0, 16, 20, 21, 0),
    gsSP2Triangles(16, 21, 22, 0, 16, 22, 23, 0),
    gsSPEndDisplayList(),
};

u8 object_ydan_objects_possiblePadding_005228[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gDTRisingPlatformsColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gDTRisingPlatformsColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gDTRisingPlatformsColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFB50},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xFB50},
    {0x0000, 0x0000, 0x0003, 0x0004, 0x0000, 0x7FFF, 0x0000, 0xFB50},
    {0x0000, 0x0000, 0x0004, 0x0005, 0x0000, 0x7FFF, 0x0000, 0xFB50},
    {0x0000, 0x0000, 0x0005, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xFB50},
    {0x0000, 0x0000, 0x0006, 0x0007, 0x0000, 0x7FFF, 0x0000, 0xFB50},
    {0x0000, 0x0008, 0x0009, 0x000A, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x0008, 0x000A, 0x000B, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x0008, 0x000B, 0x000C, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x0008, 0x000C, 0x000D, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x0008, 0x000D, 0x000E, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x0008, 0x000E, 0x000F, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x0010, 0x0011, 0x0012, 0x0000, 0x7FFF, 0x0000, 0xFC18},
    {0x0000, 0x0010, 0x0012, 0x0013, 0x0000, 0x7FFF, 0x0000, 0xFC18},
    {0x0000, 0x0010, 0x0013, 0x0014, 0x0000, 0x7FFF, 0x0000, 0xFC18},
    {0x0000, 0x0010, 0x0014, 0x0015, 0x0000, 0x7FFF, 0x0000, 0xFC18},
    {0x0000, 0x0010, 0x0015, 0x0016, 0x0000, 0x7FFF, 0x0000, 0xFC18},
    {0x0000, 0x0010, 0x0016, 0x0017, 0x0000, 0x7FFF, 0x0000, 0xFC18},
    {0x0000, 0x0018, 0x000E, 0x000D, 0xA57E, 0x0000, 0x5A82, 0x0351},
    {0x0000, 0x0018, 0x000D, 0x0019, 0xA57E, 0x0000, 0x5A82, 0x0351},
    {0x0000, 0x001A, 0x000F, 0x000E, 0x0000, 0x0000, 0x7FFF, 0x012C},
    {0x0000, 0x001A, 0x000E, 0x0018, 0x0000, 0x0000, 0x7FFF, 0x012C},
    {0x0000, 0x001B, 0x0008, 0x000F, 0x5A82, 0x0000, 0x5A82, 0xFC22},
    {0x0000, 0x001B, 0x000F, 0x001A, 0x5A82, 0x0000, 0x5A82, 0xFC22},
    {0x0000, 0x001C, 0x0009, 0x0008, 0x7FFF, 0x0000, 0x0000, 0xF7CC},
    {0x0000, 0x001C, 0x0008, 0x001B, 0x7FFF, 0x0000, 0x0000, 0xF7CC},
    {0x0000, 0x001D, 0x000A, 0x0009, 0x5A82, 0x0000, 0xA57E, 0xF60E},
    {0x0000, 0x001D, 0x0009, 0x001C, 0x5A82, 0x0000, 0xA57E, 0xF60E},
    {0x0000, 0x001E, 0x0002, 0x0001, 0x0000, 0x0000, 0x8001, 0xF894},
    {0x0000, 0x001E, 0x0001, 0x001F, 0x0000, 0x0000, 0x8001, 0xF894},
    {0x0000, 0x0020, 0x0003, 0x0002, 0xA57E, 0x0000, 0xA57E, 0xF69C},
    {0x0000, 0x0020, 0x0002, 0x001E, 0xA57E, 0x0000, 0xA57E, 0xF69C},
    {0x0000, 0x0021, 0x0004, 0x0003, 0x8001, 0x0000, 0x0000, 0xF894},
    {0x0000, 0x0021, 0x0003, 0x0020, 0x8001, 0x0000, 0x0000, 0xF894},
    {0x0000, 0x0022, 0x0005, 0x0004, 0xA57E, 0x0000, 0x5A82, 0xFCAF},
    {0x0000, 0x0022, 0x0004, 0x0021, 0xA57E, 0x0000, 0x5A82, 0xFCAF},
    {0x0000, 0x0023, 0x0006, 0x0005, 0x0000, 0x0000, 0x7FFF, 0x012C},
    {0x0000, 0x0023, 0x0005, 0x0022, 0x0000, 0x0000, 0x7FFF, 0x012C},
    {0x0000, 0x0024, 0x0007, 0x0006, 0x5A82, 0x0000, 0x5A82, 0x02C3},
    {0x0000, 0x0024, 0x0006, 0x0023, 0x5A82, 0x0000, 0x5A82, 0x02C3},
    {0x0000, 0x0025, 0x0000, 0x0007, 0x7FFF, 0x0000, 0x0000, 0x012C},
    {0x0000, 0x0025, 0x0007, 0x0024, 0x7FFF, 0x0000, 0x0000, 0x012C},
    {0x0000, 0x001F, 0x0001, 0x0000, 0x5A82, 0x0000, 0xA57E, 0xFCAF},
    {0x0000, 0x001F, 0x0000, 0x0025, 0x5A82, 0x0000, 0xA57E, 0xFCAF},
    {0x0000, 0x0026, 0x0013, 0x0012, 0x0000, 0x0000, 0x8001, 0x0190},
    {0x0000, 0x0026, 0x0012, 0x0027, 0x0000, 0x0000, 0x8001, 0x0190},
    {0x0000, 0x0028, 0x0014, 0x0013, 0xA57E, 0x0000, 0xA57E, 0x011B},
    {0x0000, 0x0028, 0x0013, 0x0026, 0xA57E, 0x0000, 0xA57E, 0x011B},
    {0x0000, 0x0029, 0x0015, 0x0014, 0x8001, 0x0000, 0x0000, 0xFE70},
    {0x0000, 0x0029, 0x0014, 0x0028, 0x8001, 0x0000, 0x0000, 0xFE70},
    {0x0000, 0x002A, 0x0016, 0x0015, 0xA57E, 0x0000, 0x5A82, 0xFA7A},
    {0x0000, 0x002A, 0x0015, 0x0029, 0xA57E, 0x0000, 0x5A82, 0xFA7A},
    {0x0000, 0x002B, 0x0017, 0x0016, 0x0000, 0x0000, 0x7FFF, 0xF830},
    {0x0000, 0x002B, 0x0016, 0x002A, 0x0000, 0x0000, 0x7FFF, 0xF830},
    {0x0000, 0x002C, 0x0010, 0x0017, 0x5A82, 0x0000, 0x5A82, 0xF844},
    {0x0000, 0x002C, 0x0017, 0x002B, 0x5A82, 0x0000, 0x5A82, 0xF844},
    {0x0000, 0x002D, 0x0011, 0x0010, 0x7FFF, 0x0000, 0x0000, 0xFB50},
    {0x0000, 0x002D, 0x0010, 0x002C, 0x7FFF, 0x0000, 0x0000, 0xFB50},
    {0x0000, 0x0027, 0x0012, 0x0011, 0x5A82, 0x0000, 0xA57E, 0xFEE5},
    {0x0000, 0x0027, 0x0011, 0x002D, 0x5A82, 0x0000, 0xA57E, 0xFEE5},
    {0x0000, 0x002E, 0x000B, 0x000A, 0x0000, 0x0000, 0x8001, 0xF894},
    {0x0000, 0x002E, 0x000A, 0x001D, 0x0000, 0x0000, 0x8001, 0xF894},
    {0x0000, 0x002F, 0x000C, 0x000B, 0xA57E, 0x0000, 0xA57E, 0xFD3D},
    {0x0000, 0x002F, 0x000B, 0x002E, 0xA57E, 0x0000, 0xA57E, 0xFD3D},
    {0x0000, 0x0019, 0x000D, 0x000C, 0x8001, 0x0000, 0x0000, 0x01F4},
    {0x0000, 0x0019, 0x000C, 0x002F, 0x8001, 0x0000, 0x0000, 0x01F4},
};

Vec3s gDTRisingPlatformsColVertices[] = {
    {   -300,   1200,  -1500 },
    {   -700,   1200,  -1900 },
    {  -1500,   1200,  -1900 },
    {  -1900,   1200,  -1500 },
    {  -1900,   1200,   -700 },
    {  -1500,   1200,   -300 },
    {   -700,   1200,   -300 },
    {   -300,   1200,   -700 },
    {   2100,    800,   -700 },
    {   2100,    800,  -1500 },
    {   1700,    800,  -1900 },
    {    900,    800,  -1900 },
    {    500,    800,  -1500 },
    {    500,    800,   -700 },
    {    900,    800,   -300 },
    {   1700,    800,   -300 },
    {   1200,   1000,   1600 },
    {   1200,   1000,    800 },
    {    800,   1000,    400 },
    {      0,   1000,    400 },
    {   -400,   1000,    800 },
    {   -400,   1000,   1600 },
    {      0,   1000,   2000 },
    {    800,   1000,   2000 },
    {    900,      0,   -300 },
    {    500,      0,   -700 },
    {   1700,      0,   -300 },
    {   2100,      0,   -700 },
    {   2100,      0,  -1500 },
    {   1700,      0,  -1900 },
    {  -1500,      0,  -1900 },
    {   -700,      0,  -1900 },
    {  -1900,      0,  -1500 },
    {  -1900,      0,   -700 },
    {  -1500,      0,   -300 },
    {   -700,      0,   -300 },
    {   -300,      0,   -700 },
    {   -300,      0,  -1500 },
    {      0,      0,    400 },
    {    800,      0,    400 },
    {   -400,      0,    800 },
    {   -400,      0,   1600 },
    {      0,      0,   2000 },
    {    800,      0,   2000 },
    {   1200,      0,   1600 },
    {   1200,      0,    800 },
    {    900,      0,  -1900 },
    {    500,      0,  -1500 },
};

CollisionHeader gDTRisingPlatformsCol = { 
    { -1900, 0, -1900 },
    { 2100, 1200, 2000 },
    48, gDTRisingPlatformsColVertices,
    66, gDTRisingPlatformsColPolygons,
    gDTRisingPlatformsColSurfaceType,
    gDTRisingPlatformsColCamDataList,
    0, NULL
};

u8 object_ydan_objects_possiblePadding_0057AC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

u64 gYdanHasiWaterTLUT[] = {
#include "assets/objects/object_ydan_objects/water_tlut.rgba16.inc.c"
};

u64 gYdanHasiWaterTex[] = {
#include "assets/objects/object_ydan_objects/water_tex.ci8.inc.c"
};

Vtx object_ydan_objectsVtx_005D50[] = {
#include "assets/objects/object_ydan_objects/object_ydan_objectsVtx_005D50.vtx.inc"
};

Gfx gDTWaterPlaneDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gYdanHasiWaterTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 14, G_TX_NOMIRROR | G_TX_WRAP,
                5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPLoadTLUT_pal256(gYdanHasiWaterTLUT),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_ydan_objectsVtx_005D50, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 6, 4, 0),
    gsSP2Triangles(7, 8, 6, 0, 7, 6, 5, 0),
    gsSP2Triangles(4, 2, 5, 0, 3, 4, 6, 0),
    gsSPEndDisplayList(),
};

Vtx object_ydan_objectsVtx_005EE0[] = {
#include "assets/objects/object_ydan_objects/object_ydan_objectsVtx_005EE0.vtx.inc"
};

Gfx gDTWebWallDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gYdanWebTex, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 229),
    gsSPVertex(object_ydan_objectsVtx_005EE0, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 1, 5, 0, 3, 0, 2, 0),
    gsSPEndDisplayList(),
};

u8 object_ydan_objects_possiblePadding_005FD8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gDTWebWallColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gDTWebWallColSurfaceType[] = {
    { 0x0000C000, 0x000007C0 },
};

CollisionPoly gDTWebWallColPolygons[] = {
    {0x0000, 0x8000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x8003, 0x0004, 0x0000, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x8004, 0x0001, 0x0000, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x8003, 0x0000, 0x0002, 0x0000, 0x0000, 0x7FFF, 0x0000},
};

Vec3s gDTWebWallColVertices[] = {
    {      0,   1444,      0 },
    {   1400,      0,      0 },
    {   1400,   2888,      0 },
    {  -1400,   2888,      0 },
    {  -1400,      0,      0 },
};

CollisionHeader gDTWebWallCol = { 
    { -1400, 0, 0 },
    { 1400, 2888, 0 },
    5, gDTWebWallColVertices,
    4, gDTWebWallColPolygons,
    gDTWebWallColSurfaceType,
    gDTWebWallColCamDataList,
    0, NULL
};

Vtx object_ydan_objectsVtx_006080[] = {
#include "assets/objects/object_ydan_objects/object_ydan_objectsVtx_006080.vtx.inc"
};

Gfx gDTWebFloorDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gYdanWebTex, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 204),
    gsSPVertex(object_ydan_objectsVtx_006080, 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 8, 5, 4, 0),
    gsSP2Triangles(1, 10, 11, 0, 1, 11, 12, 0),
    gsSP2Triangles(10, 13, 14, 0, 10, 14, 11, 0),
    gsSP2Triangles(13, 15, 16, 0, 13, 16, 14, 0),
    gsSP2Triangles(15, 9, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(3, 12, 7, 0, 12, 11, 14, 0),
    gsSP2Triangles(14, 18, 8, 0, 8, 4, 7, 0),
    gsSP2Triangles(12, 14, 8, 0, 12, 8, 7, 0),
    gsSP2Triangles(0, 3, 7, 0, 0, 7, 6, 0),
    gsSPEndDisplayList(),
};

CamData gDTWebFloorColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gDTWebFloorColSurfaceType[] = {
    { 0x0000C000, 0x000007C8 },
};

CollisionPoly gDTWebFloorColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x08AB, 0x7DF8, 0x14F8, 0x00C5},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x08B7, 0x7DF6, 0x14FE, 0x00C5},
    {0x0000, 0x0004, 0x0005, 0x0006, 0xEB02, 0x7DF7, 0x08AE, 0x00C5},
    {0x0000, 0x0004, 0x0006, 0x0007, 0xEB0E, 0x7DF9, 0x08B2, 0x00C5},
    {0x0000, 0x0008, 0x0009, 0x0005, 0xEB08, 0x7DF8, 0xF755, 0x00C5},
    {0x0000, 0x0008, 0x0005, 0x0004, 0xEB02, 0x7DF6, 0xF749, 0x00C5},
    {0x0000, 0x0001, 0x000A, 0x000B, 0x14FE, 0x7DF7, 0x08AE, 0x00C5},
    {0x0000, 0x0001, 0x000B, 0x0002, 0x14F2, 0x7DF9, 0x08B2, 0x00C5},
    {0x0000, 0x000A, 0x000C, 0x000D, 0x14F8, 0x7DF8, 0xF755, 0x00C5},
    {0x0000, 0x000A, 0x000D, 0x000B, 0x14FE, 0x7DF6, 0xF749, 0x00C5},
    {0x0000, 0x000C, 0x000E, 0x000F, 0x08AE, 0x7DF7, 0xEB02, 0x00C5},
    {0x0000, 0x000C, 0x000F, 0x000D, 0x08B2, 0x7DF9, 0xEB0E, 0x00C5},
    {0x0000, 0x000E, 0x0009, 0x0008, 0xF755, 0x7DF8, 0xEB08, 0x00C5},
    {0x0000, 0x000E, 0x0008, 0x000F, 0xF749, 0x7DF6, 0xEB02, 0x00C5},
    {0x0000, 0x0003, 0x0002, 0x0007, 0x0000, 0x7FFF, 0x0000, 0x0064},
    {0x0000, 0x0002, 0x000B, 0x000D, 0x0000, 0x7FFF, 0x0000, 0x0064},
    {0x0000, 0x000D, 0x000F, 0x0008, 0x0000, 0x7FFF, 0x0000, 0x0064},
    {0x0000, 0x0008, 0x0004, 0x0007, 0x0000, 0x7FFF, 0x0000, 0x0064},
    {0x0000, 0x0002, 0x000D, 0x0008, 0x0000, 0x7FFF, 0x0000, 0x0064},
    {0x0000, 0x0002, 0x0008, 0x0007, 0x0000, 0x7FFF, 0x0000, 0x0064},
    {0x0000, 0x0000, 0x0003, 0x0007, 0xF749, 0x7DF6, 0x14FE, 0x00C5},
    {0x0000, 0x0000, 0x0007, 0x0006, 0xF755, 0x7DF8, 0x14F8, 0x00C5},
};

Vec3s gDTWebFloorColVertices[] = {
    {      0,      0,  -1200 },
    {   -849,      0,   -849 },
    {   -424,   -100,   -424 },
    {      0,   -100,   -600 },
    {    600,   -100,      0 },
    {   1200,      0,      0 },
    {    849,      0,   -849 },
    {    424,   -100,   -424 },
    {    424,   -100,    424 },
    {    849,      0,    849 },
    {  -1200,      0,      0 },
    {   -600,   -100,      0 },
    {   -849,      0,    849 },
    {   -424,   -100,    424 },
    {      0,      0,   1200 },
    {      0,   -100,    600 },
};

CollisionHeader gDTWebFloorCol = { 
    { -1200, -100, -1200 },
    { 1200, 0, 1200 },
    16, gDTWebFloorColVertices,
    22, gDTWebFloorColPolygons,
    gDTWebFloorColSurfaceType,
    gDTWebFloorColCamDataList,
    0, NULL
};

Vtx object_ydan_objectsVtx_006490[] = {
#include "assets/objects/object_ydan_objects/object_ydan_objectsVtx_006490.vtx.inc"
};

Gfx gDTFallingLadderDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gYdanMarutaUnused1Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_ydan_objectsVtx_006490, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 0, 3, 0, 8, 3, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSPEndDisplayList(),
};

u8 object_ydan_objects_possiblePadding_006618[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gDTFallingLadderColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gDTFallingLadderColSurfaceType[] = {
    { 0x00400000, 0x000007CA },
    { 0x00600000, 0x000007CA },
};

CollisionPoly gDTFallingLadderColPolygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0001, 0x2004, 0x0005, 0x0006, 0x0000, 0x0000, 0x8001, 0xFFEC},
    {0x0001, 0x2004, 0x0006, 0x0007, 0x0000, 0x0000, 0x8001, 0xFFEC},
};

Vec3s gDTFallingLadderColVertices[] = {
    {    100,      0,      0 },
    {    100,   1350,      0 },
    {   -100,   1350,      0 },
    {   -100,      0,      0 },
    {    100,   1400,    -20 },
    {    100,   1200,    -20 },
    {   -100,   1200,    -20 },
    {   -100,   1400,    -20 },
};

CollisionHeader gDTFallingLadderCol = { 
    { -160, 0, -20 },
    { 160, 1400, 0 },
    8, gDTFallingLadderColVertices,
    4, gDTFallingLadderColPolygons,
    gDTFallingLadderColSurfaceType,
    gDTFallingLadderColCamDataList,
    0, NULL
};

u8 object_ydan_objects_possiblePadding_0066D4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_ydan_objectsVtx_0066E0[] = {
#include "assets/objects/object_ydan_objects/object_ydan_objectsVtx_0066E0.vtx.inc"
};

Gfx gDTDungeonDoor1DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gGenericDungeonDoorTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_ydan_objectsVtx_0066E0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSPVertex(&object_ydan_objectsVtx_0066E0[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPVertex(&object_ydan_objectsVtx_0066E0[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx object_ydan_objectsVtx_006850[] = {
#include "assets/objects/object_ydan_objects/object_ydan_objectsVtx_006850.vtx.inc"
};

Gfx gDTDungeonDoor2DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gYdanDoor1Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_ydan_objectsVtx_006850, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSPVertex(&object_ydan_objectsVtx_006850[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPVertex(&object_ydan_objectsVtx_006850[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u64 gYdanHasi2TLUT[] = {
#include "assets/objects/object_ydan_objects/tlut_2.rgba16.inc.c"
};

u8 object_ydan_objects_unaccounted_006BC0[] = {
    0x00, 0x00, 0x00, 0xD8, 0x00, 0x00, 0x19, 0xC8, 
};

u64 gYdanUnused1Tex[] = {
#include "assets/objects/object_ydan_objects/unused_1.ci8.inc.c"
};

Vtx object_ydan_objectsVtx_0073C8[] = {
#include "assets/objects/object_ydan_objects/object_ydan_objectsVtx_0073C8.vtx.inc"
};

Gfx gDTSlidingPlatformDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gYdanHasiFloatingBlockBottomTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_ydan_objectsVtx_0073C8, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gYdanHasiFloatingBlockSideTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ydan_objectsVtx_0073C8[4], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 1, 0, 10, 1, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(gYdanUnused1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gYdanHasi2TLUT),
    gsSPVertex(&object_ydan_objectsVtx_0073C8[16], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 object_ydan_objects_possiblePadding_007688[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gDTSlidingPlatformColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gDTSlidingPlatformColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
    { 0x00200000, 0x000007C2 },
};

CollisionPoly gDTSlidingPlatformColPolygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0001, 0x2001, 0x0004, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xFE0C},
    {0x0001, 0x2001, 0x0005, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xFE0C},
    {0x0001, 0x2002, 0x0005, 0x0006, 0x7FFF, 0x0000, 0x0000, 0xFE0C},
    {0x0001, 0x2002, 0x0006, 0x0003, 0x7FFF, 0x0000, 0x0000, 0xFE0C},
    {0x0001, 0x2003, 0x0006, 0x0007, 0x0000, 0x0000, 0x8001, 0xFE0C},
    {0x0001, 0x2003, 0x0007, 0x0000, 0x0000, 0x0000, 0x8001, 0xFE0C},
    {0x0001, 0x2000, 0x0007, 0x0004, 0x8001, 0x0000, 0x0000, 0xFE0C},
    {0x0001, 0x2000, 0x0004, 0x0001, 0x8001, 0x0000, 0x0000, 0xFE0C},
    {0x0000, 0x2006, 0x0005, 0x0004, 0x0000, 0x8001, 0x0000, 0xFE70},
    {0x0000, 0x2006, 0x0004, 0x0007, 0x0000, 0x8001, 0x0000, 0xFE70},
};

Vec3s gDTSlidingPlatformColVertices[] = {
    {   -500,      0,   -500 },
    {   -500,      0,    500 },
    {    500,      0,    500 },
    {    500,      0,   -500 },
    {   -500,   -400,    500 },
    {    500,   -400,    500 },
    {    500,   -400,   -500 },
    {   -500,   -400,   -500 },
};

CollisionHeader gDTSlidingPlatformCol = { 
    { -500, -400, -500 },
    { 500, 0, 500 },
    8, gDTSlidingPlatformColVertices,
    12, gDTSlidingPlatformColPolygons,
    gDTSlidingPlatformColSurfaceType,
    gDTSlidingPlatformColCamDataList,
    0, NULL
};

u8 object_ydan_objects_possiblePadding_0077C4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gYdanMaruta1TLUT[] = {
#include "assets/objects/object_ydan_objects/maruta_tlut.rgba16.inc.c"
};

u8 object_ydan_objects_unaccounted_0079D0[] = {
    0x00, 0x00, 0x00, 0xB8, 0x00, 0x87, 0x00, 0xD4, 
};

u64 gYdanMarutaUnused2Tex[] = {
#include "assets/objects/object_ydan_objects/maruta_unused_2.ci8.inc.c"
};

Vtx object_ydan_objectsVtx_0081D8[] = {
#include "assets/objects/object_ydan_objects/object_ydan_objectsVtx_0081D8.vtx.inc"
};

Gfx gDTRollingSpikeTrapDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gYdanMarutaUnused2Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gYdanMaruta1TLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_ydan_objectsVtx_0081D8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 0, 2, 0, 4, 5, 6, 0),
    gsSP2Triangles(4, 7, 5, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(9, 11, 10, 0, 12, 13, 14, 0),
    gsSP2Triangles(13, 15, 14, 0, 15, 12, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0),
    gsSP2Triangles(17, 19, 18, 0, 20, 21, 22, 0),
    gsSP2Triangles(21, 23, 22, 0, 23, 20, 22, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 24, 26, 0),
    gsSP2Triangles(25, 27, 26, 0, 28, 29, 30, 0),
    gsSP2Triangles(28, 31, 29, 0, 28, 30, 31, 0),
    gsSPVertex(&object_ydan_objectsVtx_0081D8[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 1, 0, 4, 5, 6, 0),
    gsSP2Triangles(4, 7, 5, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 11, 9, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 15, 13, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(16, 19, 17, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 20, 22, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSP1Triangle(27, 30, 28, 0),
    gsSPVertex(&object_ydan_objectsVtx_0081D8[63], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 2, 3, 0, 4, 5, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 4, 10, 5, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(11, 13, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(19, 21, 20, 0, 21, 18, 20, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(23, 28, 24, 0, 29, 30, 31, 0),
    gsSPVertex(&object_ydan_objectsVtx_0081D8[95], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 6, 8, 0),
    gsSP2Triangles(7, 9, 8, 0, 10, 11, 12, 0),
    gsSP2Triangles(11, 13, 12, 0, 13, 10, 12, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(14, 17, 15, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 19, 24, 20, 0),
    gsSP2Triangles(25, 26, 27, 0, 26, 28, 27, 0),
    gsSP2Triangles(28, 25, 27, 0, 29, 30, 31, 0),
    gsSPVertex(&object_ydan_objectsVtx_0081D8[127], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(5, 7, 6, 0, 8, 9, 10, 0),
    gsSP2Triangles(9, 11, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0),
    gsSP2Triangles(13, 15, 14, 0, 16, 17, 18, 0),
    gsSP2Triangles(17, 19, 18, 0, 19, 16, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 20, 22, 0),
    gsSP2Triangles(21, 23, 22, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 26, 27, 0, 24, 27, 25, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 31, 29, 0),
    gsSP1Triangle(28, 30, 31, 0),
    gsSPVertex(&object_ydan_objectsVtx_0081D8[159], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 1, 0, 4, 5, 6, 0),
    gsSP2Triangles(4, 7, 5, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 11, 9, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 15, 0, 15, 14, 16, 0),
    gsSP2Triangles(15, 16, 17, 0, 17, 16, 18, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 17, 19, 0),
    gsSP2Triangles(20, 19, 21, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 22, 23, 0, 24, 15, 17, 0),
    gsSP2Triangles(24, 17, 20, 0, 24, 20, 23, 0),
    gsSP2Triangles(24, 23, 25, 0, 26, 12, 15, 0),
    gsSP2Triangles(26, 15, 24, 0, 26, 24, 25, 0),
    gsSP1Triangle(26, 25, 27, 0),
    gsSPEndDisplayList(),
};

