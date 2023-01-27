#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_umajump.h"

u64 gJumpableHorseFenceBrickTex[] = {
#include "assets/objects/object_umajump/brick.rgba16.inc.c"
};

u64 gJumpableHorseFenceMetalBarTex[] = {
#include "assets/objects/object_umajump/metal_bar.rgba16.inc.c"
};

Vtx object_umajumpVtx_001000[] = {
#include "assets/objects/object_umajump/object_umajumpVtx_001000.vtx.inc"
};

Gfx gJumpableHorseFenceDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gJumpableHorseFenceBrickTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_umajumpVtx_001000, 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gJumpableHorseFenceMetalBarTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_umajumpVtx_001000[30], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 object_umajump_possiblePadding_001348[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gJumpableHorseFenceColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gJumpableHorseFenceColSurfaceType[] = {
    { 0x00200000, 0x000007C0 },
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gJumpableHorseFenceColPolygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0000, 0x2004, 0x0005, 0x0006, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0000, 0x2004, 0x0006, 0x0007, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0001, 0x2002, 0x0005, 0x0004, 0x0000, 0x7FFF, 0x0000, 0xFD80},
    {0x0001, 0x2002, 0x0004, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xFD80},
    {0x0000, 0x2001, 0x0006, 0x0005, 0x7FFF, 0x0000, 0x0000, 0xF9C0},
    {0x0000, 0x2001, 0x0005, 0x0002, 0x7FFF, 0x0000, 0x0000, 0xF9C0},
    {0x0000, 0x2007, 0x0000, 0x0003, 0x8001, 0x0000, 0x0000, 0xF9C0},
    {0x0000, 0x2007, 0x0003, 0x0004, 0x8001, 0x0000, 0x0000, 0xF9C0},
};

Vec3s gJumpableHorseFenceColVertices[] = {
    {  -1600,      0,    100 },
    {   1600,      0,    100 },
    {   1600,    640,    100 },
    {  -1600,    640,    100 },
    {  -1600,    640,   -100 },
    {   1600,    640,   -100 },
    {   1600,      0,   -100 },
    {  -1600,      0,   -100 },
};

CollisionHeader gJumpableHorseFenceCol = { 
    { -1600, 0, -100 },
    { 1600, 800, 100 },
    8, gJumpableHorseFenceColVertices,
    10, gJumpableHorseFenceColPolygons,
    gJumpableHorseFenceColSurfaceType,
    gJumpableHorseFenceColCamDataList,
    0, NULL
};

