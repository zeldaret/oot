#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_spot00_objects.h"

Vtx object_spot00_objectsVtx_000000[] = {
#include "assets/objects/object_spot00_objects/object_spot00_objectsVtx_000000.vtx.inc"
};

Gfx gHyruleFieldCastleDrawbridgeChainsDL[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gHyruleFieldCastleDrawbridgeBoltDL, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot00_objectsVtx_000000, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gHyruleFieldCastleDrawbridgeChainsTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot00_objectsVtx_000000[4], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

CamData gHyruleFieldCastleDrawbridgeChainsColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gHyruleFieldCastleDrawbridgeChainsColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gHyruleFieldCastleDrawbridgeChainsColPolygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x0000, 0x60A2, 0x53EF, 0xFFF6},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x0000, 0x60A2, 0x53EF, 0xFFF6},
    {0x0000, 0x2004, 0x0005, 0x0006, 0x0000, 0x9F6F, 0xABFD, 0xFFF6},
    {0x0000, 0x2004, 0x0006, 0x0007, 0x0000, 0x9F6F, 0xABFD, 0xFFF6},
    {0x0000, 0x2002, 0x0005, 0x0004, 0x8001, 0x0000, 0x0000, 0xFFF6},
    {0x0000, 0x2002, 0x0004, 0x0003, 0x8001, 0x0000, 0x0000, 0xFFF6},
    {0x0000, 0x2000, 0x0007, 0x0006, 0x7FFF, 0x0000, 0x0000, 0xFFF6},
    {0x0000, 0x2000, 0x0006, 0x0001, 0x7FFF, 0x0000, 0x0000, 0xFFF6},
    {0x0000, 0x2004, 0x0007, 0x0000, 0x0000, 0x0000, 0x7FFF, 0xFFF2},
    {0x0000, 0x2004, 0x0000, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFFF2},
};

Vec3s gHyruleFieldCastleDrawbridgeChainsColVertices[] = {
    {     10,      1,     14 },
    {     10,    424,   -473 },
    {    -10,    424,   -473 },
    {    -10,      1,     14 },
    {    -10,    -26,     14 },
    {    -10,    409,   -486 },
    {     10,    409,   -486 },
    {     10,    -26,     14 },
};

CollisionHeader gHyruleFieldCastleDrawbridgeChainsCol = { 
    { -10, -26, -490 },
    { 10, 428, 14 },
    8, gHyruleFieldCastleDrawbridgeChainsColVertices,
    10, gHyruleFieldCastleDrawbridgeChainsColPolygons,
    gHyruleFieldCastleDrawbridgeChainsColSurfaceType,
    gHyruleFieldCastleDrawbridgeChainsColCamDataList,
    0, NULL
};

Vtx object_spot00_objectsVtx_0002B0[] = {
#include "assets/objects/object_spot00_objects/object_spot00_objectsVtx_0002B0.vtx.inc"
};

Gfx gHyruleFieldCastleDrawbridgeDL[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gHyruleFieldCastleDrawbridgeWoodTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEI, G_CC_MODULATEI_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot00_objectsVtx_0002B0, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

CamData gHyruleFieldCastleDrawbridgeColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gHyruleFieldCastleDrawbridgeColSurfaceType[] = {
    { 0x00000000, 0x000007CA },
};

CollisionPoly gHyruleFieldCastleDrawbridgeColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFFF6},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xFFF6},
    {0x0000, 0x0004, 0x0002, 0x0001, 0x0000, 0x0000, 0x7FFF, 0xFE66},
    {0x0000, 0x0004, 0x0001, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xFE66},
    {0x0000, 0x0006, 0x0000, 0x0003, 0x0000, 0x0000, 0x8001, 0xFFF6},
    {0x0000, 0x0006, 0x0003, 0x0007, 0x0000, 0x0000, 0x8001, 0xFFF6},
    {0x0000, 0x0005, 0x0001, 0x0000, 0x8001, 0x0000, 0x0000, 0xFF4C},
    {0x0000, 0x0005, 0x0000, 0x0006, 0x8001, 0x0000, 0x0000, 0xFF4C},
    {0x0000, 0x0007, 0x0003, 0x0002, 0x7FFF, 0x0000, 0x0000, 0xFF4C},
    {0x0000, 0x0007, 0x0002, 0x0004, 0x7FFF, 0x0000, 0x0000, 0xFF4C},
    {0x0000, 0x0007, 0x0004, 0x0005, 0x0000, 0x8001, 0x0000, 0xFFF6},
    {0x0000, 0x0007, 0x0005, 0x0006, 0x0000, 0x8001, 0x0000, 0xFFF6},
};

Vec3s gHyruleFieldCastleDrawbridgeColVertices[] = {
    {   -180,     10,    -10 },
    {   -180,     10,    410 },
    {    180,     10,    410 },
    {    180,     10,    -10 },
    {    180,    -10,    410 },
    {   -180,    -10,    410 },
    {   -180,    -10,    -10 },
    {    180,    -10,    -10 },
};

CollisionHeader gHyruleFieldCastleDrawbridgeCol = { 
    { -180, -10, -10 },
    { 180, 10, 410 },
    8, gHyruleFieldCastleDrawbridgeColVertices,
    12, gHyruleFieldCastleDrawbridgeColPolygons,
    gHyruleFieldCastleDrawbridgeColSurfaceType,
    gHyruleFieldCastleDrawbridgeColCamDataList,
    0, NULL
};

u8 object_spot00_objects_possiblePadding_00060C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

u64 gHyruleFieldCastleDrawbridgeWoodTex[] = {
#include "assets/objects/object_spot00_objects/drawbridge_wood.rgba16.inc.c"
};

u64 gHyruleFieldCastleDrawbridgeChainsTex[] = {
#include "assets/objects/object_spot00_objects/drawbridge_chains.rgba16.inc.c"
};

u64 gHyruleFieldCastleDrawbridgeBoltDL[] = {
#include "assets/objects/object_spot00_objects/drawbridge_bolt.rgba16.inc.c"
};

