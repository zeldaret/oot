#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_ingate.h"

u64 gIngoGateTex[] = {
#include "assets/objects/object_ingate/gate.ia8.inc.c"
};

Vtx object_ingateVtx_001000[] = {
#include "assets/objects/object_ingate/object_ingateVtx_001000.vtx.inc"
};

Gfx gIngoGateDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gIngoGateTex, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 200, 255),
    gsSPVertex(object_ingateVtx_001000, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

CamData gIngoGateColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gIngoGateColSurfaceType[] = {
    { 0x00200000, 0x000007C2 },
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gIngoGateColPolygons[] = {
    {0x0000, 0xA000, 0x0001, 0x0002, 0x8001, 0x0000, 0x0000, 0x0000},
    {0x0000, 0xA000, 0x0002, 0x0003, 0x8001, 0x0000, 0x0000, 0x0000},
    {0x0000, 0xA004, 0x0005, 0x0006, 0x7FFF, 0x0000, 0x0000, 0xFCE0},
    {0x0000, 0xA004, 0x0006, 0x0007, 0x7FFF, 0x0000, 0x0000, 0xFCE0},
    {0x0001, 0xA007, 0x0006, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xFB50},
    {0x0001, 0xA007, 0x0003, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFB50},
    {0x0000, 0xA003, 0x0006, 0x0005, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0000, 0xA003, 0x0005, 0x0000, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0000, 0xA001, 0x0004, 0x0007, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0000, 0xA001, 0x0007, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
};

Vec3s gIngoGateColVertices[] = {
    {      0,      0,   -100 },
    {      0,      0,    100 },
    {      0,   1200,    100 },
    {      0,   1200,   -100 },
    {    800,      0,    100 },
    {    800,      0,   -100 },
    {    800,   1200,   -100 },
    {    800,   1200,    100 },
};

CollisionHeader gIngoGateCol = { 
    { 0, 0, -100 },
    { 800, 1200, 100 },
    8, gIngoGateColVertices,
    10, gIngoGateColPolygons,
    gIngoGateColSurfaceType,
    gIngoGateColCamDataList,
    0, NULL
};

