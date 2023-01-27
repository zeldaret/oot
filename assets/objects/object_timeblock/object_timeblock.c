#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_timeblock.h"

u64 gSongOfTimeBlockTex[] = {
#include "assets/objects/object_timeblock/block.i4.inc.c"
};

Vtx object_timeblockVtx_000800[] = {
#include "assets/objects/object_timeblock/object_timeblockVtx_000800.vtx.inc"
};

Gfx gSongOfTimeBlockDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gSongOfTimeBlockTex, G_IM_FMT_I, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsSPVertex(object_timeblockVtx_000800, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

CamData gSongOfTimeBlockColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gSongOfTimeBlockColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gSongOfTimeBlockColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x8001, 0xFFCE},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x0000, 0x8001, 0xFFCE},
    {0x0000, 0x0002, 0x0004, 0x0005, 0x8001, 0x0000, 0x0000, 0xFFCE},
    {0x0000, 0x0002, 0x0005, 0x0003, 0x8001, 0x0000, 0x0000, 0xFFCE},
    {0x0000, 0x0003, 0x0005, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xFF9C},
    {0x0000, 0x0003, 0x0006, 0x0000, 0x0000, 0x7FFF, 0x0000, 0xFF9C},
    {0x0000, 0x0006, 0x0007, 0x0001, 0x7FFF, 0x0000, 0x0000, 0xFFCE},
    {0x0000, 0x0006, 0x0001, 0x0000, 0x7FFF, 0x0000, 0x0000, 0xFFCE},
    {0x0000, 0x0001, 0x0007, 0x0004, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0001, 0x0004, 0x0002, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0004, 0x0007, 0x0006, 0x0000, 0x0000, 0x7FFF, 0xFFCE},
    {0x0000, 0x0004, 0x0006, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xFFCE},
};

Vec3s gSongOfTimeBlockColVertices[] = {
    {     50,    100,    -50 },
    {     50,      0,    -50 },
    {    -50,      0,    -50 },
    {    -50,    100,    -50 },
    {    -50,      0,     50 },
    {    -50,    100,     50 },
    {     50,    100,     50 },
    {     50,      0,     50 },
};

CollisionHeader gSongOfTimeBlockCol = { 
    { -50, 0, -50 },
    { 50, 100, 50 },
    8, gSongOfTimeBlockColVertices,
    12, gSongOfTimeBlockColPolygons,
    gSongOfTimeBlockColSurfaceType,
    gSongOfTimeBlockColCamDataList,
    0, NULL
};

