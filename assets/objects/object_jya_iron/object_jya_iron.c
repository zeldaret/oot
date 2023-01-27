#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_jya_iron.h"

Vtx object_jya_ironVtx_000000[] = {
#include "assets/objects/object_jya_iron/object_jya_ironVtx_000000.vtx.inc"
};

Gfx gPillarDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gPillarSideTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 128, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 4, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_jya_ironVtx_000000, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gPillarTopTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_jya_ironVtx_000000[24], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(6, 9, 10, 0, 6, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx object_jya_ironVtx_000360[] = {
#include "assets/objects/object_jya_iron/object_jya_ironVtx_000360.vtx.inc"
};

Gfx gObjectJyaIronDL_000600[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gPillarSideTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 128, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 4, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_jya_ironVtx_000360, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 1, 0, 8, 9, 7, 0),
    gsSP2Triangles(3, 10, 11, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 9, 15, 0, 12, 14, 0, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(16, 19, 20, 0, 16, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&object_jya_ironVtx_000360[30], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 6, 1, 0),
    gsSP2Triangles(5, 1, 0, 0, 7, 8, 6, 0),
    gsSP2Triangles(7, 6, 5, 0, 9, 10, 11, 0),
    gsSP2Triangles(10, 8, 11, 0, 8, 7, 11, 0),
    gsSPEndDisplayList(),
};

u8 object_jya_iron_possiblePadding_0006F8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_jya_ironVtx_000700[] = {
#include "assets/objects/object_jya_iron/object_jya_ironVtx_000700.vtx.inc"
};

Gfx gObjectJyaIronDL_000880[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gPillarSideTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 128, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 4, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_jya_ironVtx_000700, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 8, 0),
    gsSP2Triangles(9, 10, 3, 0, 9, 11, 12, 0),
    gsSP2Triangles(11, 4, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(15, 17, 16, 0, 14, 18, 15, 0),
    gsSP2Triangles(17, 15, 19, 0, 15, 20, 19, 0),
    gsSP2Triangles(2, 21, 22, 0, 23, 7, 22, 0),
    gsSPEndDisplayList(),
};

Vtx object_jya_ironVtx_000940[] = {
#include "assets/objects/object_jya_iron/object_jya_ironVtx_000940.vtx.inc"
};

Gfx gObjectJyaIronDL_000AE0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gPillarSideTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 128, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 4, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_jya_ironVtx_000940, 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 6, 7, 1, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 1, 13, 0, 12, 2, 1, 0),
    gsSP2Triangles(1, 8, 11, 0, 1, 7, 8, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 20, 19, 0, 17, 21, 18, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 18, 0),
    gsSP2Triangles(22, 24, 25, 0, 22, 25, 23, 0),
    gsSPEndDisplayList(),
};

CamData gPillarColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gPillarColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gPillarColPolygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0xBFF2, 0x0000, 0x6ED1, 0xFF53},
    {0x0000, 0x2000, 0x0002, 0x0003, 0xBFF2, 0x0000, 0x6ED1, 0xFF53},
    {0x0000, 0x2004, 0x0005, 0x0001, 0x8001, 0x0000, 0x0000, 0xFF53},
    {0x0000, 0x2004, 0x0001, 0x0000, 0x8001, 0x0000, 0x0000, 0xFF53},
    {0x0000, 0x2006, 0x0007, 0x0005, 0xBFF2, 0x0000, 0x912F, 0xFF53},
    {0x0000, 0x2006, 0x0005, 0x0004, 0xBFF2, 0x0000, 0x912F, 0xFF53},
    {0x0000, 0x2008, 0x0009, 0x0007, 0x400E, 0x0000, 0x912F, 0xFF53},
    {0x0000, 0x2008, 0x0007, 0x0006, 0x400E, 0x0000, 0x912F, 0xFF53},
    {0x0000, 0x200A, 0x000B, 0x0009, 0x7FFF, 0x0000, 0x0000, 0xFF53},
    {0x0000, 0x200A, 0x0009, 0x0008, 0x7FFF, 0x0000, 0x0000, 0xFF53},
    {0x0000, 0x2003, 0x0002, 0x000B, 0x400E, 0x0000, 0x6ED1, 0xFF53},
    {0x0000, 0x2003, 0x000B, 0x000A, 0x400E, 0x0000, 0x6ED1, 0xFF53},
    {0x0000, 0x2000, 0x0003, 0x000A, 0x0000, 0x7FFF, 0x0000, 0xF9C0},
    {0x0000, 0x2000, 0x000A, 0x0008, 0x0000, 0x7FFF, 0x0000, 0xF9C0},
    {0x0000, 0x2000, 0x0008, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xF9C0},
    {0x0000, 0x2000, 0x0006, 0x0004, 0x0000, 0x7FFF, 0x0000, 0xF9C0},
    {0x0000, 0x2001, 0x0005, 0x0007, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x2001, 0x0007, 0x0009, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x2001, 0x0009, 0x000B, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x2001, 0x000B, 0x0002, 0x0000, 0x8001, 0x0000, 0x0000},
};

Vec3s gPillarColVertices[] = {
    {   -173,   1600,    100 },
    {   -173,      0,    100 },
    {      0,      0,    200 },
    {      0,   1600,    200 },
    {   -173,   1600,   -100 },
    {   -173,      0,   -100 },
    {      0,   1600,   -200 },
    {      0,      0,   -200 },
    {    173,   1600,   -100 },
    {    173,      0,   -100 },
    {    173,   1600,    100 },
    {    173,      0,    100 },
};

CollisionHeader gPillarCol = { 
    { -173, 0, -200 },
    { 173, 1600, 200 },
    12, gPillarColVertices,
    20, gPillarColPolygons,
    gPillarColSurfaceType,
    gPillarColCamDataList,
    0, NULL
};

u8 object_jya_iron_possiblePadding_000D74[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_jya_ironVtx_000D80[] = {
#include "assets/objects/object_jya_iron/object_jya_ironVtx_000D80.vtx.inc"
};

Gfx gThroneDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gPillarSideTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 128, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 4, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 169, 154, 126, 255),
    gsSPVertex(object_jya_ironVtx_000D80, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 0, 3, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 11, 12, 0, 13, 9, 8, 0),
    gsSP2Triangles(13, 8, 12, 0, 13, 12, 14, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 7, 0),
    gsSP2Triangles(13, 7, 3, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 18, 19, 0, 19, 18, 20, 0),
    gsSP2Triangles(19, 20, 21, 0, 9, 22, 23, 0),
    gsSP2Triangles(9, 23, 24, 0, 9, 24, 10, 0),
    gsSP2Triangles(3, 2, 22, 0, 3, 22, 9, 0),
    gsSP2Triangles(3, 9, 13, 0, 4, 6, 25, 0),
    gsSP2Triangles(4, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&object_jya_ironVtx_000D80[31], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(4, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 9, 0),
    gsSPEndDisplayList(),
};

CamData gThroneColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gThroneColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gThroneColPolygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x8065, 0x0A04, 0x0000, 0xFF02},
    {0x0000, 0x2003, 0x0000, 0x0002, 0x822F, 0x0E3B, 0x12B9, 0xFF1D},
    {0x0000, 0x2001, 0x0000, 0x0004, 0x08D2, 0x094E, 0x80A6, 0xFF05},
    {0x0000, 0x2005, 0x0000, 0x0003, 0x8010, 0x016A, 0x039C, 0xFF1F},
    {0x0000, 0x2006, 0x0007, 0x0008, 0x047B, 0x037C, 0x7FDF, 0xFF0C},
    {0x0000, 0x2006, 0x0008, 0x0009, 0x0000, 0x0000, 0x7FFF, 0xFF10},
    {0x0000, 0x2006, 0x0009, 0x000A, 0x0000, 0x0000, 0x7FFF, 0xFF10},
    {0x0000, 0x200B, 0x0007, 0x0006, 0x8017, 0x0386, 0xFCDD, 0xFF19},
    {0x0000, 0x200B, 0x0006, 0x000A, 0x8003, 0x0000, 0x016E, 0xFF1C},
    {0x0000, 0x200B, 0x000A, 0x000C, 0x8001, 0x0047, 0xFFE0, 0xFF1D},
    {0x0000, 0x200B, 0x000C, 0x000D, 0x8001, 0x004C, 0x0022, 0xFF1C},
    {0x0000, 0x200B, 0x000D, 0x0005, 0x8002, 0x0000, 0xFF26, 0xFF1D},
    {0x0000, 0x200B, 0x0005, 0x0003, 0x8002, 0x0013, 0xFF40, 0xFF1D},
    {0x0000, 0x200A, 0x0009, 0x000E, 0x0000, 0x74E7, 0xCBE1, 0xFC1A},
    {0x0000, 0x200A, 0x000E, 0x000C, 0x0000, 0x74E7, 0xCBE1, 0xFC1A},
    {0x0000, 0x200C, 0x000E, 0x000F, 0x0000, 0x74E7, 0x341F, 0xFC1A},
    {0x0000, 0x200C, 0x000F, 0x000D, 0x0000, 0x74E7, 0x341F, 0xFC1A},
    {0x0000, 0x2007, 0x0010, 0x0011, 0x0000, 0x0FCB, 0x7F05, 0xFEF4},
    {0x0000, 0x2007, 0x0011, 0x0012, 0x0009, 0x0FE1, 0x7F02, 0xFEF4},
    {0x0000, 0x2007, 0x0012, 0x0008, 0x0000, 0x1029, 0x7EF9, 0xFEF4},
    {0x0000, 0x2003, 0x0002, 0x0010, 0x8180, 0x1383, 0x0000, 0xFF04},
    {0x0000, 0x2003, 0x0010, 0x0007, 0x80F8, 0x0F8B, 0xFE00, 0xFF07},
    {0x0000, 0x2003, 0x0007, 0x000B, 0x8118, 0x108B, 0xFE03, 0xFF06},
    {0x0000, 0x2001, 0x0004, 0x0013, 0x0000, 0x0FE0, 0x80FE, 0xFEF4},
    {0x0000, 0x2001, 0x0013, 0x0014, 0x0000, 0x0FE0, 0x80FE, 0xFEF4},
    {0x0000, 0x2014, 0x0013, 0x0012, 0x7F02, 0x0FE0, 0x0000, 0xFF03},
    {0x0000, 0x2014, 0x0012, 0x0011, 0x7F02, 0x0FE0, 0x0000, 0xFF03},
    {0x0000, 0x2013, 0x0004, 0x0008, 0x0000, 0x7FFF, 0x0000, 0xFF10},
    {0x0000, 0x2013, 0x0008, 0x0012, 0x0000, 0x7FFF, 0x0000, 0xFF10},
    {0x0000, 0x2004, 0x0000, 0x0005, 0x0378, 0x016A, 0x800F, 0xFF0F},
    {0x0000, 0x2004, 0x0005, 0x000D, 0x0000, 0x0000, 0x8001, 0xFF10},
    {0x0000, 0x2004, 0x000D, 0x000F, 0x0000, 0x0000, 0x8001, 0xFF10},
    {0x0000, 0x2009, 0x0008, 0x0004, 0x7FFF, 0x0000, 0x0000, 0x004B},
    {0x0000, 0x2004, 0x000F, 0x000E, 0x7FFF, 0x0000, 0x0000, 0x004B},
    {0x0000, 0x2004, 0x000E, 0x0009, 0x7FFF, 0x0000, 0x0000, 0x004B},
};

Vec3s gThroneColVertices[] = {
    {   -228,    344,   -243 },
    {   -255,      0,   -270 },
    {   -255,      0,   -163 },
    {   -226,    188,   -111 },
    {    -75,    240,   -240 },
    {   -225,    608,   -240 },
    {   -225,    433,    240 },
    {   -232,    185,    247 },
    {    -75,    240,    240 },
    {    -75,   1200,    240 },
    {   -225,   1200,    240 },
    {   -227,    201,     61 },
    {   -225,   1093,      0 },
    {   -225,   1200,   -240 },
    {    -75,   1093,      0 },
    {    -75,   1200,   -240 },
    {   -255,      0,    270 },
    {    255,      0,    270 },
    {    225,    240,    240 },
    {    225,    240,   -240 },
    {    255,      0,   -270 },
};

CollisionHeader gThroneCol = { 
    { -255, 0, -270 },
    { 255, 1200, 270 },
    21, gThroneColVertices,
    35, gThroneColPolygons,
    gThroneColSurfaceType,
    gThroneColCamDataList,
    0, NULL
};

u8 object_jya_iron_possiblePadding_00145C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

u64 gPillarSideTex[] = {
#include "assets/objects/object_jya_iron/pillar_side.rgba16.inc.c"
};

u64 gPillarTopTex[] = {
#include "assets/objects/object_jya_iron/pillar_top.rgba16.inc.c"
};

