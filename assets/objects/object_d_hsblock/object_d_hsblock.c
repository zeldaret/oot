#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_d_hsblock.h"

Vtx object_d_hsblockVtx_000000[] = {
#include "assets/objects/object_d_hsblock/object_d_hsblockVtx_000000.vtx.inc"
};

Gfx gHookshotPostDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gHookshotPostTex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_d_hsblockVtx_000000, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gHookshotTargetTex, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_d_hsblockVtx_000000[16], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 8, 5, 10, 0),
    gsSP2Triangles(11, 12, 9, 0, 11, 9, 13, 0),
    gsSP2Triangles(14, 15, 12, 0, 14, 12, 16, 0),
    gsSPEndDisplayList(),
};

u8 object_d_hsblock_possiblePadding_000328[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_d_hsblockVtx_000330[] = {
#include "assets/objects/object_d_hsblock/object_d_hsblockVtx_000330.vtx.inc"
};

Gfx gHookshotTargetDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gHookshotTargetTex, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_d_hsblockVtx_000330, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPVertex(&object_d_hsblockVtx_000330[4], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

u8 object_d_hsblock_possiblePadding_000528[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gHookshotTargetColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gHookshotTargetColSurfaceType[] = {
    { 0x00000000, 0x000207C0 },
};

CollisionPoly gHookshotTargetColPolygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xFFB0},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFFB0},
};

Vec3s gHookshotTargetColVertices[] = {
    {    200,   -200,     80 },
    {    200,    200,     80 },
    {   -200,    200,     80 },
    {   -200,   -200,     80 },
};

CollisionHeader gHookshotTargetCol = { 
    { -200, -200, 0 },
    { 200, 200, 80 },
    4, gHookshotTargetColVertices,
    2, gHookshotTargetColPolygons,
    gHookshotTargetColSurfaceType,
    gHookshotTargetColCamDataList,
    0, NULL
};

u8 object_d_hsblock_possiblePadding_0005A4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gHookshotPostColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gHookshotPostColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
    { 0x00000000, 0x000207C2 },
};

CollisionPoly gHookshotPostColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x8001, 0x0000, 0x0000, 0xFF38},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x8001, 0x0000, 0x0000, 0xFF38},
    {0x0000, 0x0004, 0x0005, 0x0001, 0x0000, 0x0000, 0x7FFF, 0xFF38},
    {0x0000, 0x0004, 0x0001, 0x0000, 0x0000, 0x0000, 0x7FFF, 0xFF38},
    {0x0000, 0x0006, 0x0007, 0x0005, 0x7FFF, 0x0000, 0x0000, 0xFF38},
    {0x0000, 0x0006, 0x0005, 0x0004, 0x7FFF, 0x0000, 0x0000, 0xFF38},
    {0x0000, 0x0003, 0x0002, 0x0007, 0x0000, 0x0000, 0x8001, 0xFF38},
    {0x0000, 0x0003, 0x0007, 0x0006, 0x0000, 0x0000, 0x8001, 0xFF38},
    {0x0000, 0x0008, 0x0009, 0x000A, 0x0000, 0x7FFF, 0x0000, 0xFC18},
    {0x0000, 0x0008, 0x000A, 0x000B, 0x0000, 0x7FFF, 0x0000, 0xFC18},
    {0x0001, 0x0001, 0x0009, 0x0008, 0x8001, 0x0000, 0x0000, 0xFF38},
    {0x0001, 0x0001, 0x0008, 0x0002, 0x8001, 0x0000, 0x0000, 0xFF38},
    {0x0001, 0x0005, 0x000A, 0x0009, 0x0000, 0x0000, 0x7FFF, 0xFF38},
    {0x0001, 0x0005, 0x0009, 0x0001, 0x0000, 0x0000, 0x7FFF, 0xFF38},
    {0x0001, 0x0007, 0x000B, 0x000A, 0x7FFF, 0x0000, 0x0000, 0xFF38},
    {0x0001, 0x0007, 0x000A, 0x0005, 0x7FFF, 0x0000, 0x0000, 0xFF38},
    {0x0001, 0x0002, 0x0008, 0x000B, 0x0000, 0x0000, 0x8001, 0xFF38},
    {0x0001, 0x0002, 0x000B, 0x0007, 0x0000, 0x0000, 0x8001, 0xFF38},
};

Vec3s gHookshotPostColVertices[] = {
    {   -200,      0,    200 },
    {   -200,    600,    200 },
    {   -200,    600,   -200 },
    {   -200,      0,   -200 },
    {    200,      0,    200 },
    {    200,    600,    200 },
    {    200,      0,   -200 },
    {    200,    600,   -200 },
    {   -200,   1000,   -200 },
    {   -200,   1000,    200 },
    {    200,   1000,    200 },
    {    200,   1000,   -200 },
};

CollisionHeader gHookshotPostCol = { 
    { -200, 0, -200 },
    { 200, 1000, 200 },
    12, gHookshotPostColVertices,
    18, gHookshotPostColPolygons,
    gHookshotPostColSurfaceType,
    gHookshotPostColCamDataList,
    0, NULL
};

u8 object_d_hsblock_possiblePadding_00075C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

u64 gHookshotTargetTex[] = {
#include "assets/objects/object_d_hsblock/hookshot_target.i4.inc.c"
};

u64 gHookshotPostTex[] = {
#include "assets/objects/object_d_hsblock/hookshot_post.i8.inc.c"
};

