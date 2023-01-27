#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_door_gerudo.h"

Vtx object_door_gerudoVtx_000000[] = {
#include "assets/objects/object_door_gerudo/object_door_gerudoVtx_000000.vtx.inc"
};

Gfx gGerudoCellDoorDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gGerudoCellDoorTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_door_gerudoVtx_000000, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

CamData gGerudoCellDoorColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gGerudoCellDoorColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gGerudoCellDoorColPolygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xFFF6},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFFF6},
    {0x0000, 0x2004, 0x0005, 0x0006, 0x0000, 0x0000, 0x8001, 0xFFF6},
    {0x0000, 0x2004, 0x0006, 0x0007, 0x0000, 0x0000, 0x8001, 0xFFF6},
    {0x0000, 0x2006, 0x0001, 0x0000, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x2006, 0x0000, 0x0007, 0x0000, 0x8001, 0x0000, 0x0000},
};

Vec3s gGerudoCellDoorColVertices[] = {
    {    -33,      0,     10 },
    {     33,      0,     10 },
    {     33,    110,     10 },
    {    -33,    110,     10 },
    {    -33,    110,    -10 },
    {     33,    110,    -10 },
    {     33,      0,    -10 },
    {    -33,      0,    -10 },
};

CollisionHeader gGerudoCellDoorCol = { 
    { -33, 0, -10 },
    { 33, 110, 10 },
    8, gGerudoCellDoorColVertices,
    6, gGerudoCellDoorColPolygons,
    gGerudoCellDoorColSurfaceType,
    gGerudoCellDoorColCamDataList,
    0, NULL
};

u8 object_door_gerudo_possiblePadding_00019C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

u64 gGerudoCellDoorTex[] = {
#include "assets/objects/object_door_gerudo/cell_door.rgba16.inc.c"
};

