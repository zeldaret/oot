#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_heavy_object.h"

u64 gHeavyBlockTex[] = {
#include "assets/objects/object_heavy_object/block.i4.inc.c"
};

Vtx object_heavy_objectVtx_001000[] = {
#include "assets/objects/object_heavy_object/object_heavy_objectVtx_001000.vtx.inc"
};

Gfx gHeavyBlockEntirePillarDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gHeavyBlockTex, G_IM_FMT_I, 64, 128, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_heavy_objectVtx_001000, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_heavy_objectVtx_001000[32], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSPEndDisplayList(),
};

CamData gHeavyBlockColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gHeavyBlockColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
    { 0x00E00000, 0x000007C2 },
};

CollisionPoly gHeavyBlockColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x3771, 0x911F, 0xE023, 0xFFD5},
    {0x0000, 0x0001, 0x0000, 0x0003, 0x6EF9, 0x0000, 0xC039, 0xFFA9},
    {0x0000, 0x0001, 0x0003, 0x0004, 0x6EF9, 0x0000, 0xC039, 0xFFA9},
    {0x0000, 0x0004, 0x0003, 0x0005, 0x413C, 0x678C, 0xDA82, 0xFECA},
    {0x0000, 0x0006, 0x0000, 0x0002, 0x0000, 0x9107, 0xC039, 0xFFD5},
    {0x0000, 0x0003, 0x0007, 0x0005, 0x0000, 0x67AB, 0xB4EE, 0xFECA},
    {0x0000, 0x0008, 0x0006, 0x0002, 0xC88F, 0x911F, 0xE023, 0xFFD5},
    {0x0000, 0x0006, 0x0008, 0x0009, 0x9107, 0x0000, 0xC039, 0xFFA9},
    {0x0000, 0x0006, 0x0009, 0x0007, 0x9107, 0x0000, 0xC039, 0xFFA9},
    {0x0000, 0x0007, 0x0009, 0x0005, 0xBEC4, 0x678C, 0xDA82, 0xFECA},
    {0x0000, 0x000A, 0x0008, 0x0002, 0xC88F, 0x911F, 0x1FDD, 0xFFD5},
    {0x0000, 0x0008, 0x000A, 0x000B, 0x9107, 0x0000, 0x3FC7, 0xFFA9},
    {0x0000, 0x0008, 0x000B, 0x0009, 0x9107, 0x0000, 0x3FC7, 0xFFA9},
    {0x0000, 0x0009, 0x000B, 0x0005, 0xBEC4, 0x678C, 0x257E, 0xFECA},
    {0x0000, 0x000C, 0x000A, 0x0002, 0x0000, 0x9107, 0x3FC7, 0xFFD5},
    {0x0001, 0x000A, 0x000C, 0x000D, 0x0000, 0x0000, 0x7FFF, 0xFFA9},
    {0x0001, 0x000A, 0x000D, 0x000B, 0x0000, 0x0000, 0x7FFF, 0xFFA9},
    {0x0000, 0x000B, 0x000D, 0x0005, 0x0000, 0x67AB, 0x4B12, 0xFECA},
    {0x0000, 0x0001, 0x000C, 0x0002, 0x3771, 0x911F, 0x1FDD, 0xFFD5},
    {0x0000, 0x000C, 0x0001, 0x0004, 0x6EF9, 0x0000, 0x3FC7, 0xFFA9},
    {0x0000, 0x000C, 0x0004, 0x000D, 0x6EF9, 0x0000, 0x3FC7, 0xFFA9},
    {0x0000, 0x000D, 0x0004, 0x0005, 0x413C, 0x678C, 0x257E, 0xFECA},
    {0x0000, 0x0000, 0x0007, 0x0003, 0x0000, 0x0000, 0x8001, 0xFFA9},
    {0x0000, 0x0000, 0x0006, 0x0007, 0x0000, 0x0000, 0x8001, 0xFFA9},
};

Vec3s gHeavyBlockColVertices[] = {
    {     50,      0,    -87 },
    {    100,      0,      0 },
    {      0,    -50,      0 },
    {     50,    320,    -87 },
    {    100,    320,      0 },
    {      0,    383,      0 },
    {    -50,      0,    -87 },
    {    -50,    320,    -87 },
    {   -100,      0,      0 },
    {   -100,    320,      0 },
    {    -50,      0,     87 },
    {    -50,    320,     87 },
    {     50,      0,     87 },
    {     50,    320,     87 },
};

CollisionHeader gHeavyBlockCol = { 
    { -100, -50, -87 },
    { 100, 383, 87 },
    14, gHeavyBlockColVertices,
    24, gHeavyBlockColPolygons,
    gHeavyBlockColSurfaceType,
    gHeavyBlockColCamDataList,
    0, NULL
};

u8 object_heavy_object_possiblePadding_0016C8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_heavy_objectVtx_0016D0[] = {
#include "assets/objects/object_heavy_object/object_heavy_objectVtx_0016D0.vtx.inc"
};

Gfx gHeavyBlockBigPieceDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gHeavyBlockTex, G_IM_FMT_I, 64, 128, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_heavy_objectVtx_0016D0, 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(16, 18, 17, 0, 19, 20, 17, 0),
    gsSP2Triangles(20, 21, 16, 0, 21, 22, 16, 0),
    gsSP2Triangles(22, 18, 16, 0, 23, 22, 21, 0),
    gsSP2Triangles(19, 24, 25, 0, 19, 25, 20, 0),
    gsSP2Triangles(25, 21, 20, 0, 24, 26, 27, 0),
    gsSP2Triangles(26, 21, 27, 0, 24, 28, 26, 0),
    gsSP2Triangles(28, 23, 26, 0, 23, 21, 26, 0),
    gsSPEndDisplayList(),
};

Vtx object_heavy_objectVtx_001980[] = {
#include "assets/objects/object_heavy_object/object_heavy_objectVtx_001980.vtx.inc"
};

Gfx gHeavyBlockSmallPieceDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gHeavyBlockTex, G_IM_FMT_I, 64, 128, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_heavy_objectVtx_001980, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(4, 5, 1, 0, 3, 6, 4, 0),
    gsSP2Triangles(6, 5, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 3, 0, 1, 8, 7, 0),
    gsSP2Triangles(2, 7, 3, 0, 2, 1, 10, 0),
    gsSPEndDisplayList(),
};

