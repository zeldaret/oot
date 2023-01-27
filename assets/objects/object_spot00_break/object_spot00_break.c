#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_spot00_break.h"

Vtx object_spot00_breakVtx_000000[] = {
#include "assets/objects/object_spot00_break/object_spot00_breakVtx_000000.vtx.inc"
};

Gfx gBrokenDrawbridgeDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gBrokenDrawbridgeBoltTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot00_breakVtx_000000, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 12, 10, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 16, 14, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 20, 18, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 24, 22, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 28, 26, 0, 29, 30, 31, 0),
    gsSPVertex(&object_spot00_breakVtx_000000[32], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gBrokenDrawbridgeDirtTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot00_breakVtx_000000[44], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 3, 4, 0, 5, 1, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 8, 4, 0),
    gsSP2Triangles(3, 7, 4, 0, 9, 8, 10, 0),
    gsSP2Triangles(8, 7, 10, 0, 10, 11, 9, 0),
    gsSP2Triangles(10, 12, 11, 0, 12, 13, 11, 0),
    gsSP2Triangles(0, 13, 12, 0, 0, 2, 13, 0),
    gsSP2Triangles(14, 15, 11, 0, 13, 14, 11, 0),
    gsSP2Triangles(6, 14, 5, 0, 6, 15, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gBrokenDrawbridgeChainTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_spot00_breakVtx_000000[60], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSPEndDisplayList(),
};

u8 object_spot00_break_possiblePadding_000628[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gBrokenDrawbridgeColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gBrokenDrawbridgeColSurfaceType[] = {
    { 0x00000000, 0x000007CA },
};

CollisionPoly gBrokenDrawbridgeColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0FE0, 0x7D29, 0x1596, 0x0025},
    {0x0000, 0x0000, 0x0003, 0x0001, 0x1709, 0x7989, 0x20E2, 0x0010},
    {0x0000, 0x0001, 0x0003, 0x0004, 0x4D48, 0x656E, 0x0B17, 0xFFD3},
    {0x0000, 0x0001, 0x0004, 0x0005, 0x5563, 0x597F, 0xDF1B, 0xFFE5},
    {0x0000, 0x0003, 0x0006, 0x0004, 0x5C84, 0x4BFA, 0x2D4B, 0xFF7A},
    {0x0000, 0x0007, 0x0008, 0x0009, 0xAF64, 0x4E96, 0x3CE8, 0xFF64},
    {0x0000, 0x0007, 0x000A, 0x0008, 0xAC4F, 0x2F08, 0x54A8, 0xFF1F},
    {0x0000, 0x000A, 0x000B, 0x0008, 0xAB97, 0x5A88, 0x2099, 0xFF8E},
    {0x0000, 0x0000, 0x000B, 0x000A, 0xF787, 0x7CB7, 0x1B84, 0x0017},
    {0x0000, 0x0000, 0x0002, 0x000B, 0xFFED, 0x7EE5, 0x10C5, 0x002C},
    {0x0000, 0x000C, 0x000D, 0x0008, 0x8A37, 0x22D4, 0xDBFD, 0xFF6E},
    {0x0000, 0x000B, 0x000C, 0x0008, 0x8A49, 0x238A, 0xDC76, 0xFF6E},
    {0x0000, 0x000E, 0x000B, 0x0002, 0xFF98, 0x5A8A, 0x5A7A, 0xFFEC},
    {0x0000, 0x000E, 0x0002, 0x000F, 0x0025, 0x5B14, 0x59EE, 0xFFEC},
    {0x0000, 0x0002, 0x0001, 0x000F, 0x002B, 0x5B0D, 0x59F6, 0xFFEC},
    {0x0000, 0x0010, 0x000F, 0x0001, 0x7D36, 0x0047, 0x1A8E, 0xFF4E},
    {0x0000, 0x000F, 0x0011, 0x000E, 0x1638, 0x5AB5, 0xA878, 0xFFEF},
    {0x0000, 0x000F, 0x0010, 0x0011, 0x1627, 0x5B7C, 0xA944, 0xFFEF},
    {0x0000, 0x000C, 0x000E, 0x0011, 0x8196, 0x01E9, 0xEC08, 0xFF46},
    {0x0000, 0x000C, 0x000B, 0x000E, 0x80C1, 0x09CA, 0xF636, 0xFF44},
    {0x0000, 0x0012, 0x0013, 0x0014, 0x0000, 0x40E6, 0x6E53, 0xFEC6},
    {0x0000, 0x0012, 0x0015, 0x0013, 0x0000, 0x40E6, 0x6E53, 0xFEC6},
    {0x0000, 0x0000, 0x000A, 0x0012, 0xFFA3, 0x6EF4, 0xC02F, 0x00AD},
    {0x0000, 0x0014, 0x0003, 0x0000, 0x005D, 0x6EE8, 0xC01B, 0x00AD},
    {0x0000, 0x0014, 0x0000, 0x0012, 0x0000, 0x6F22, 0xC07F, 0x00AD},
    {0x0000, 0x0015, 0x000A, 0x0007, 0x8001, 0x0000, 0x0000, 0xFF4C},
    {0x0000, 0x0015, 0x0012, 0x000A, 0x8001, 0x0000, 0x0000, 0xFF4C},
    {0x0000, 0x0006, 0x0014, 0x0013, 0x7FFF, 0x0000, 0x0000, 0xFF4C},
    {0x0000, 0x0006, 0x0003, 0x0014, 0x7FFF, 0x0000, 0x0000, 0xFF4C},
    {0x0000, 0x0007, 0x0009, 0x0015, 0x8001, 0x0000, 0x0000, 0xFF4C},
    {0x0000, 0x0009, 0x0016, 0x0015, 0x8001, 0x0000, 0x0000, 0xFF4C},
    {0x0000, 0x0013, 0x0017, 0x0006, 0x7FFF, 0x0000, 0x0000, 0xFF4C},
    {0x0000, 0x0001, 0x0005, 0x0010, 0x7D40, 0x0000, 0x1A5E, 0xFF4E},
    {0x0000, 0x000D, 0x000C, 0x0011, 0x80F4, 0x0AD0, 0xF4D2, 0xFF45},
    {0x0000, 0x0010, 0x0018, 0x0011, 0x0FCA, 0x0000, 0x80FB, 0xFFF4},
};

Vec3s gBrokenDrawbridgeColVertices[] = {
    {    -20,    -73,    220 },
    {    160,    -76,    105 },
    {     23,    -55,     84 },
    {    180,    -99,    176 },
    {    227,   -130,    132 },
    {    180,   -130,     10 },
    {    180,   -130,    228 },
    {   -180,    -99,    217 },
    {   -248,   -130,    167 },
    {   -180,   -130,    257 },
    {   -180,    -81,    207 },
    {   -200,    -55,     83 },
    {   -200,    -69,     69 },
    {   -200,   -130,     10 },
    {   -184,     49,    -21 },
    {    177,      4,     24 },
    {    180,    -10,     10 },
    {   -182,     35,    -35 },
    {   -180,      7,    360 },
    {    180,    -10,    370 },
    {    180,      7,    360 },
    {   -180,    -10,    370 },
    {   -180,   -130,    370 },
    {    180,   -130,    370 },
    {   -182,   -130,    -35 },
};

CollisionHeader gBrokenDrawbridgeCol = { 
    { -248, -130, -79 },
    { 227, 437, 370 },
    25, gBrokenDrawbridgeColVertices,
    35, gBrokenDrawbridgeColPolygons,
    gBrokenDrawbridgeColSurfaceType,
    gBrokenDrawbridgeColCamDataList,
    0, NULL
};

u8 object_spot00_break_possiblePadding_000934[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_spot00_breakVtx_000940[] = {
#include "assets/objects/object_spot00_break/object_spot00_breakVtx_000940.vtx.inc"
};

Gfx gBarbedWireFenceDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gBarbedWireFenceTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot00_breakVtx_000940, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

CamData gBarbedWireFenceColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gBarbedWireFenceColSurfaceType[] = {
    { 0x00000000, 0x000007CA },
};

CollisionPoly gBarbedWireFenceColPolygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xFFF6},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFFF6},
    {0x0000, 0x2004, 0x0005, 0x0006, 0x0000, 0x0000, 0x8001, 0xFFF6},
    {0x0000, 0x2004, 0x0006, 0x0007, 0x0000, 0x0000, 0x8001, 0xFFF6},
    {0x0000, 0x2004, 0x0003, 0x0002, 0x8001, 0x0000, 0x0000, 0xFCAE},
    {0x0000, 0x2004, 0x0002, 0x0005, 0x8001, 0x0000, 0x0000, 0xFCAE},
    {0x0000, 0x2000, 0x0007, 0x0006, 0x7FFF, 0x0000, 0x0000, 0xFCAE},
    {0x0000, 0x2000, 0x0006, 0x0001, 0x7FFF, 0x0000, 0x0000, 0xFCAE},
    {0x0000, 0x2005, 0x0002, 0x0001, 0x0000, 0x7FFF, 0x0000, 0xFFD8},
    {0x0000, 0x2005, 0x0001, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xFFD8},
};

Vec3s gBarbedWireFenceColVertices[] = {
    {    850,    -20,     10 },
    {    850,     40,     10 },
    {   -850,     40,     10 },
    {   -850,    -20,     10 },
    {   -850,    -20,    -10 },
    {   -850,     40,    -10 },
    {    850,     40,    -10 },
    {    850,    -20,    -10 },
};

CollisionHeader gBarbedWireFenceCol = { 
    { -850, -20, -10 },
    { 850, 40, 10 },
    8, gBarbedWireFenceColVertices,
    10, gBarbedWireFenceColPolygons,
    gBarbedWireFenceColSurfaceType,
    gBarbedWireFenceColCamDataList,
    0, NULL
};

u8 object_spot00_break_possiblePadding_000B1C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

u64 gBrokenDrawbridgeBoltTex[] = {
#include "assets/objects/object_spot00_break/broken_drawbridge_bolt.rgba16.inc.c"
};

u64 gBrokenDrawbridgeDirtTex[] = {
#include "assets/objects/object_spot00_break/broken_drawbridge_dirt.rgba16.inc.c"
};

u64 gBrokenDrawbridgeChainTex[] = {
#include "assets/objects/object_spot00_break/broken_drawbridge_chain.rgba16.inc.c"
};

u64 gBarbedWireFenceTex[] = {
#include "assets/objects/object_spot00_break/barbed_wire_fence.rgba16.inc.c"
};

