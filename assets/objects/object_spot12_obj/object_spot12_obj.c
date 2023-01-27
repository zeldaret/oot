#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_spot12_obj.h"

u64 gGerudoFortressWastelandGateTex[] = {
#include "assets/objects/object_spot12_obj/wasteland_gate.rgba16.inc.c"
};

Vtx object_spot12_objVtx_001000[] = {
#include "assets/objects/object_spot12_obj/object_spot12_objVtx_001000.vtx.inc"
};

Gfx gGerudoFortressWastelandGateDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gGerudoFortressWastelandGateTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 128, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot12_objVtx_001000, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

u8 object_spot12_obj_possiblePadding_001118[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gGerudoFortressWastelandGateColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gGerudoFortressWastelandGateColSurfaceType[] = {
    { 0x00000000, 0x000007CA },
};

CollisionPoly gGerudoFortressWastelandGateColPolygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xFFEB},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFFEB},
    {0x0000, 0x2004, 0x0005, 0x0006, 0x0000, 0x0000, 0x8001, 0xFF4D},
    {0x0000, 0x2004, 0x0006, 0x0007, 0x0000, 0x0000, 0x8001, 0xFF4D},
    {0x0000, 0x2005, 0x0008, 0x0009, 0x0000, 0x393E, 0x8D84, 0xFB16},
    {0x0000, 0x2005, 0x0009, 0x0006, 0x0000, 0x393E, 0x8D84, 0xFB16},
    {0x0000, 0x2008, 0x0002, 0x0001, 0x0000, 0x393E, 0x727C, 0xFBA3},
    {0x0000, 0x2008, 0x0001, 0x0009, 0x0000, 0x393E, 0x727C, 0xFBA3},
};

Vec3s gGerudoFortressWastelandGateColVertices[] = {
    {   1796,   -100,     21 },
    {   1796,   2456,     21 },
    {  -1796,   2456,     21 },
    {  -1796,   -100,     21 },
    {  -1796,   -100,   -179 },
    {  -1796,   2456,   -179 },
    {   1796,   2456,   -179 },
    {   1796,   -100,   -179 },
    {  -1796,   2656,    -79 },
    {   1796,   2656,    -79 },
};

CollisionHeader gGerudoFortressWastelandGateCol = { 
    { -1796, -100, -179 },
    { 1796, 2656, 21 },
    10, gGerudoFortressWastelandGateColVertices,
    8, gGerudoFortressWastelandGateColPolygons,
    gGerudoFortressWastelandGateColSurfaceType,
    gGerudoFortressWastelandGateColCamDataList,
    0, NULL
};

u8 object_spot12_obj_possiblePadding_001218[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gGerudoFortressGTGShutterTex[] = {
#include "assets/objects/object_spot12_obj/gtg_shutter.rgba16.inc.c"
};

Vtx object_spot12_objVtx_002220[] = {
#include "assets/objects/object_spot12_obj/object_spot12_objVtx_002220.vtx.inc"
};

Gfx gGerudoFortressGTGShutterDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gGerudoFortressGTGShutterTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot12_objVtx_002220, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

CamData gGerudoFortressGTGShutterColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gGerudoFortressGTGShutterColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gGerudoFortressGTGShutterColPolygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x0000, 0x70F8, 0x3C2E, 0xFC28},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x0000, 0x70F8, 0x3C2E, 0xFC28},
    {0x0000, 0x2004, 0x0002, 0x0001, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0000, 0x2004, 0x0001, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0000, 0x2006, 0x0003, 0x0002, 0x7FFF, 0x0000, 0x0000, 0xFCB8},
    {0x0000, 0x2006, 0x0002, 0x0004, 0x7FFF, 0x0000, 0x0000, 0xFCB8},
};

Vec3s gGerudoFortressGTGShutterColVertices[] = {
    {   -840,   1176,   -114 },
    {   -840,   1062,    100 },
    {    840,   1062,    100 },
    {    840,   1176,   -114 },
    {    840,    -20,    100 },
    {   -840,    -20,    100 },
    {    840,    -20,   -114 },
};

CollisionHeader gGerudoFortressGTGShutterCol = { 
    { -840, -20, -114 },
    { 840, 1176, 100 },
    7, gGerudoFortressGTGShutterColVertices,
    6, gGerudoFortressGTGShutterColPolygons,
    gGerudoFortressGTGShutterColSurfaceType,
    gGerudoFortressGTGShutterColCamDataList,
    0, NULL
};

