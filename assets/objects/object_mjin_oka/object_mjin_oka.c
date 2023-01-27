#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_mjin_oka.h"

Vtx object_mjin_okaVtx_000000[] = {
#include "assets/objects/object_mjin_oka/object_mjin_okaVtx_000000.vtx.inc"
};

Gfx gOcarinaWarpPadDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gOcarinaWarpPadSideTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_mjin_okaVtx_000000, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gOcarinaWarpPadOcarinaTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetPrimColor(0, 0, 200, 200, 185, 255),
    gsSPVertex(&object_mjin_okaVtx_000000[16], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 object_mjin_oka_possiblePadding_000248[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gOcarinaWarpPadColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gOcarinaWarpPadColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gOcarinaWarpPadColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFFEC},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xFFEC},
    {0x0000, 0x0003, 0x0004, 0x0005, 0x0000, 0x5A82, 0x5A82, 0xFFD6},
    {0x0000, 0x0003, 0x0005, 0x0000, 0x0000, 0x5A82, 0x5A82, 0xFFD6},
    {0x0000, 0x0000, 0x0005, 0x0006, 0x5A82, 0x5A82, 0x0000, 0xFFD6},
    {0x0000, 0x0000, 0x0006, 0x0001, 0x5A82, 0x5A82, 0x0000, 0xFFD6},
    {0x0000, 0x0001, 0x0006, 0x0007, 0x0000, 0x5A82, 0xA57E, 0xFFD6},
    {0x0000, 0x0001, 0x0007, 0x0002, 0x0000, 0x5A82, 0xA57E, 0xFFD6},
    {0x0000, 0x0002, 0x0007, 0x0004, 0xA57E, 0x5A82, 0x0000, 0xFFD6},
    {0x0000, 0x0002, 0x0004, 0x0003, 0xA57E, 0x5A82, 0x0000, 0xFFD6},
};

Vec3s gOcarinaWarpPadColVertices[] = {
    {     40,     20,     40 },
    {     40,     20,    -40 },
    {    -40,     20,    -40 },
    {    -40,     20,     40 },
    {    -60,      0,     60 },
    {     60,      0,     60 },
    {     60,      0,    -60 },
    {    -60,      0,    -60 },
};

CollisionHeader gOcarinaWarpPadCol = { 
    { -60, 0, -60 },
    { 60, 20, 60 },
    8, gOcarinaWarpPadColVertices,
    10, gOcarinaWarpPadColPolygons,
    gOcarinaWarpPadColSurfaceType,
    gOcarinaWarpPadColCamDataList,
    0, NULL
};

u8 object_mjin_oka_possiblePadding_00035C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

u64 gOcarinaWarpPadSideTex[] = {
#include "assets/objects/object_mjin_oka/side.rgba16.inc.c"
};

u64 gOcarinaWarpPadOcarinaTex[] = {
#include "assets/objects/object_mjin_oka/ocarina.i8.inc.c"
};

