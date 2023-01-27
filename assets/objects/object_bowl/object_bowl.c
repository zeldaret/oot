#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_bowl.h"

Vtx object_bowlVtx_000000[] = {
#include "assets/objects/object_bowl/object_bowlVtx_000000.vtx.inc"
};

Gfx gBowlingRound1WallDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gBowlingWoodPanelTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bowlVtx_000000, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gBowlingStoneWallTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_bowlVtx_000000[8], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(4, 8, 5, 0, 8, 1, 5, 0),
    gsSP2Triangles(8, 2, 1, 0, 6, 9, 7, 0),
    gsSP2Triangles(6, 0, 9, 0, 0, 3, 9, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&object_bowlVtx_000000[18], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 1, 0, 0, 5, 1, 6, 0),
    gsSP2Triangles(1, 4, 6, 0, 3, 1, 5, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gBowlingStripesTex, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_bowlVtx_000000[25], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_bowlVtx_000000[57], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_bowlVtx_000000[89], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

u8 object_bowl_possiblePadding_000858[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gBowlingFirstAndFinalRoundColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gBowlingFirstAndFinalRoundColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gBowlingFirstAndFinalRoundColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0004, 0x0005, 0x0006, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0004, 0x0006, 0x0007, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0003, 0x0002, 0x0008, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0003, 0x0008, 0x0009, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x000A, 0x0004, 0x0007, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x000A, 0x0007, 0x000B, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x000A, 0x000C, 0x0004, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x000C, 0x0002, 0x0004, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x000C, 0x0008, 0x0002, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0007, 0x000D, 0x000B, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0007, 0x0003, 0x000D, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0003, 0x0009, 0x000D, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x000E, 0x000F, 0x0010, 0x30D1, 0x9159, 0x29E6, 0x00D7},
    {0x0000, 0x000F, 0x0011, 0x0010, 0xCF2F, 0x9159, 0x29E6, 0x00D7},
    {0x0000, 0x0012, 0x000F, 0x000E, 0x798C, 0x0000, 0x281F, 0x0020},
    {0x0000, 0x0013, 0x000F, 0x0014, 0xCF2F, 0x6EA7, 0x29E6, 0xFF6C},
    {0x0000, 0x000F, 0x0012, 0x0014, 0x30D1, 0x6EA7, 0x29E6, 0xFF6C},
    {0x0000, 0x0011, 0x000F, 0x0013, 0x8674, 0x0000, 0x281F, 0x0020},
    {0x0000, 0x0015, 0x0016, 0x0017, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0015, 0x0017, 0x0018, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0016, 0x0012, 0x000E, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0016, 0x000E, 0x0017, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0017, 0x000E, 0x0010, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0017, 0x0010, 0x0019, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0010, 0x0011, 0x001A, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0010, 0x001A, 0x0019, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x001A, 0x0011, 0x0013, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x001A, 0x0013, 0x001B, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x001B, 0x0013, 0x0014, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x001B, 0x0014, 0x001C, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0014, 0x0012, 0x0016, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0014, 0x0016, 0x001C, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x001C, 0x0016, 0x0015, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x001C, 0x0015, 0x001D, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x001E, 0x001B, 0x001C, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x001E, 0x001C, 0x001D, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x001F, 0x001A, 0x001B, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x001F, 0x001B, 0x001E, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0019, 0x001A, 0x001F, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0019, 0x001F, 0x0020, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0018, 0x0017, 0x0019, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0018, 0x0019, 0x0020, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0020, 0x001F, 0x000B, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0020, 0x000B, 0x000D, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0009, 0x0018, 0x0020, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0009, 0x0020, 0x000D, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x001D, 0x0015, 0x0008, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x001D, 0x0008, 0x000C, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x000A, 0x001E, 0x001D, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x000A, 0x001D, 0x000C, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x000B, 0x001F, 0x001E, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x000B, 0x001E, 0x000A, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0008, 0x0015, 0x0018, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0008, 0x0018, 0x0009, 0x0000, 0x0000, 0x7FFF, 0x0000},
};

Vec3s gBowlingFirstAndFinalRoundColVertices[] = {
    {   -220,    386,      0 },
    {   -220,      0,      0 },
    {   -160,      0,      0 },
    {   -160,    386,      0 },
    {    160,      0,      0 },
    {    220,      0,      0 },
    {    220,    386,      0 },
    {    160,    386,      0 },
    {   -116,    129,      0 },
    {   -116,    291,      0 },
    {    116,    129,      0 },
    {    116,    291,      0 },
    {      0,     78,      0 },
    {      0,    342,      0 },
    {    -34,    234,      0 },
    {      0,    210,   -103 },
    {      0,    249,      0 },
    {     34,    234,      0 },
    {    -34,    186,      0 },
    {     34,    186,      0 },
    {      0,    171,      0 },
    {   -103,    138,      0 },
    {    -47,    177,      0 },
    {    -47,    243,      0 },
    {   -103,    282,      0 },
    {      0,    263,      0 },
    {     47,    243,      0 },
    {     47,    177,      0 },
    {      0,    157,      0 },
    {      0,     93,      0 },
    {    103,    138,      0 },
    {    103,    282,      0 },
    {      0,    327,      0 },
};

CollisionHeader gBowlingFirstAndFinalRoundCol = { 
    { -220, 0, -103 },
    { 220, 386, 0 },
    33, gBowlingFirstAndFinalRoundColVertices,
    56, gBowlingFirstAndFinalRoundColPolygons,
    gBowlingFirstAndFinalRoundColSurfaceType,
    gBowlingFirstAndFinalRoundColCamDataList,
    0, NULL
};

u8 object_bowl_possiblePadding_000CE4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_bowlVtx_000CF0[] = {
#include "assets/objects/object_bowl/object_bowlVtx_000CF0.vtx.inc"
};

Gfx gBowlingRound2WallDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gBowlingWoodPanelTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bowlVtx_000CF0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&object_bowlVtx_000CF0[4], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 1, 5, 0, 1, 6, 5, 0),
    gsSP2Triangles(1, 4, 3, 0, 1, 7, 6, 0),
    gsSP1Triangle(1, 0, 7, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gBowlingWoodPanelTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&object_bowlVtx_000CF0[12], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gBowlingStoneWallTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_bowlVtx_000CF0[16], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gBowlingStripesTex, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_bowlVtx_000CF0[40], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 5, 4, 0, 8, 4, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&object_bowlVtx_000CF0[70], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(18, 20, 21, 0, 18, 21, 19, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(24, 26, 27, 0, 24, 27, 25, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_bowlVtx_000CF0[102], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

CamData gBowlingSecondRoundColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gBowlingSecondRoundColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gBowlingSecondRoundColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0004, 0x0005, 0x0006, 0x5B53, 0x447E, 0x39E5, 0xFFC7},
    {0x0000, 0x0005, 0x0007, 0x0006, 0x7418, 0x0000, 0x35E7, 0x0023},
    {0x0000, 0x0008, 0x0005, 0x0009, 0x8BE8, 0x0000, 0x35E7, 0x0023},
    {0x0000, 0x0005, 0x000A, 0x0009, 0xA4AD, 0x447E, 0x39E5, 0xFFC7},
    {0x0000, 0x0005, 0x0008, 0x0007, 0x0000, 0x8625, 0x272B, 0x00C2},
    {0x0000, 0x0005, 0x000B, 0x000A, 0xDC40, 0x6B41, 0x3C03, 0xFF93},
    {0x0000, 0x0005, 0x0004, 0x000B, 0x23C0, 0x6B41, 0x3C03, 0xFF93},
    {0x0000, 0x000C, 0x000D, 0x000E, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x000C, 0x000E, 0x000F, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0003, 0x0010, 0x0011, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0003, 0x0011, 0x0012, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0013, 0x000D, 0x0014, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0013, 0x0014, 0x0015, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0016, 0x0017, 0x0000, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0016, 0x0000, 0x0018, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0019, 0x001A, 0x000C, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0019, 0x000C, 0x001B, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x001C, 0x001D, 0x001E, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x001C, 0x001E, 0x001F, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0020, 0x0021, 0x0022, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0020, 0x0022, 0x0023, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x001D, 0x0018, 0x0000, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x001D, 0x0000, 0x001E, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0024, 0x0025, 0x001C, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0024, 0x001C, 0x001F, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0021, 0x0025, 0x0024, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0021, 0x0024, 0x0022, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0003, 0x0012, 0x0020, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0003, 0x0020, 0x0023, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0010, 0x0013, 0x0015, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0010, 0x0015, 0x0011, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0016, 0x0019, 0x001B, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0016, 0x001B, 0x0017, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0026, 0x0004, 0x0006, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0026, 0x0006, 0x0027, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0006, 0x0007, 0x0028, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0006, 0x0028, 0x0027, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0004, 0x0026, 0x0029, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0004, 0x0029, 0x000B, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0029, 0x002A, 0x000A, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0029, 0x000A, 0x000B, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x002B, 0x0008, 0x0009, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x002B, 0x0009, 0x002C, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0009, 0x000A, 0x002A, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0009, 0x002A, 0x002C, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0028, 0x001A, 0x0016, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0028, 0x0016, 0x0027, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0016, 0x0018, 0x0026, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0016, 0x0026, 0x0027, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x002A, 0x0012, 0x0011, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x002A, 0x0011, 0x002C, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0011, 0x0014, 0x002B, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0011, 0x002B, 0x002C, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0018, 0x0025, 0x0029, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0018, 0x0029, 0x0026, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0025, 0x0012, 0x002A, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0025, 0x002A, 0x0029, 0x0000, 0x0000, 0x7FFF, 0x0000},
};

Vec3s gBowlingSecondRoundColVertices[] = {
    {   -240,   -181,      0 },
    {   -240,   -233,      0 },
    {    240,   -233,      0 },
    {    240,   -181,      0 },
    {    -24,    138,      0 },
    {      0,    177,    -84 },
    {    -39,    158,      0 },
    {    -39,    204,      0 },
    {     39,    204,      0 },
    {     39,    158,      0 },
    {     24,    138,      0 },
    {      0,    130,      0 },
    {   -240,    204,      0 },
    {    240,    204,      0 },
    {    240,    246,      0 },
    {   -240,    246,      0 },
    {    240,     79,      0 },
    {    152,    114,      0 },
    {     94,     34,      0 },
    {    240,     98,      0 },
    {    152,    204,      0 },
    {    152,    134,      0 },
    {   -152,    114,      0 },
    {   -240,     79,      0 },
    {    -94,     34,      0 },
    {   -152,    135,      0 },
    {   -152,    204,      0 },
    {   -240,     99,      0 },
    {    -10,      4,      0 },
    {    -75,     27,      0 },
    {   -217,   -181,      0 },
    {    -10,   -181,      0 },
    {     79,     29,      0 },
    {     12,      4,      0 },
    {     12,   -181,      0 },
    {    222,   -181,      0 },
    {      0,   -181,      0 },
    {      0,      0,      0 },
    {    -38,    118,      0 },
    {    -62,    151,      0 },
    {    -62,    204,      0 },
    {      0,    106,      0 },
    {     38,    118,      0 },
    {     62,    204,      0 },
    {     62,    151,      0 },
};

CollisionHeader gBowlingSecondRoundCol = { 
    { -240, -233, -84 },
    { 240, 246, 0 },
    45, gBowlingSecondRoundColVertices,
    59, gBowlingSecondRoundColPolygons,
    gBowlingSecondRoundColSurfaceType,
    gBowlingSecondRoundColCamDataList,
    0, NULL
};

Vtx object_bowlVtx_001B30[] = {
#include "assets/objects/object_bowl/object_bowlVtx_001B30.vtx.inc"
};

Gfx gBowlingDL_1B80[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineMode(G_CC_PRIMITIVE, G_CC_PASS2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 216, 201, 140, 0),
    gsSPVertex(object_bowlVtx_001B30, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsSPEndDisplayList(),
};

CamData gBowlingDefaultColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gBowlingDefaultColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gBowlingDefaultColPolygons[] = {
    {0x0000, 0x8000, 0x0001, 0x0002, 0x0000, 0x0000, 0x8001, 0x0000},
    {0x0000, 0x8000, 0x0002, 0x0003, 0x0000, 0x0000, 0x8001, 0x0000},
    {0x0000, 0x8000, 0x0003, 0x0004, 0x0000, 0x0000, 0x8001, 0x0000},
};

Vec3s gBowlingDefaultColVertices[] = {
    {   -200,    200,      0 },
    {    160,    200,      0 },
    {    160,      0,      0 },
    {      0,      0,      0 },
    {   -200,      0,      0 },
};

CollisionHeader gBowlingDefaultCol = { 
    { -200, 0, 0 },
    { 160, 200, 0 },
    5, gBowlingDefaultColVertices,
    3, gBowlingDefaultColPolygons,
    gBowlingDefaultColSurfaceType,
    gBowlingDefaultColCamDataList,
    0, NULL
};

u8 object_bowl_possiblePadding_001C6C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

u64 gBowlingWoodPanelTex[] = {
#include "assets/objects/object_bowl/bowling_wood_panel.rgba16.inc.c"
};

u64 gBowlingStoneWallTex[] = {
#include "assets/objects/object_bowl/bowling_stone_wall.rgba16.inc.c"
};

u64 gBowlingStripesTex[] = {
#include "assets/objects/object_bowl/bowling_stripes.i4.inc.c"
};

