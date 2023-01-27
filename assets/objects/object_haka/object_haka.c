#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_haka.h"

Vtx object_hakaVtx_000000[] = {
#include "assets/objects/object_haka/object_hakaVtx_000000.vtx.inc"
};

Gfx gGravestoneStoneDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gGravestoneGrassTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 215, 220, 210, 255),
    gsSPVertex(object_hakaVtx_000000, 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 12, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gGravestoneTombTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hakaVtx_000000[19], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gGravestoneEarthDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gGravestoneEarthTex, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_DECAL2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 221, 194, 153, 255),
    gsSPVertex(&object_hakaVtx_000000[23], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 object_haka_possiblePadding_000338[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gGravestoneColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gGravestoneColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
    { 0x00E00000, 0x000007C2 },
};

CollisionPoly gGravestoneColPolygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x0000, 0x71B4, 0x3AC7, 0xFEFB},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x0000, 0x71B4, 0x3AC7, 0xFEFB},
    {0x0000, 0x2004, 0x0005, 0x0001, 0x0000, 0x37F5, 0x731E, 0xFEBC},
    {0x0000, 0x2004, 0x0001, 0x0000, 0x0000, 0x37F5, 0x731E, 0xFEBC},
    {0x0000, 0x2006, 0x0004, 0x0000, 0x8787, 0x2A22, 0xF64C, 0xFED6},
    {0x0000, 0x2003, 0x0006, 0x0000, 0x806E, 0x0A19, 0xFD5F, 0xFEDA},
    {0x0001, 0x2002, 0x0007, 0x0006, 0x0000, 0x0000, 0x8001, 0xFE98},
    {0x0001, 0x2002, 0x0006, 0x0003, 0x0000, 0x0000, 0x8001, 0xFE98},
    {0x0000, 0x2001, 0x0005, 0x0007, 0x7769, 0x2D14, 0xF662, 0xFED8},
    {0x0000, 0x2001, 0x0007, 0x0002, 0x7F95, 0x0A1A, 0xFE28, 0xFEDC},
};

Vec3s gGravestoneColVertices[] = {
    {   -290,    144,    290 },
    {    286,    144,    290 },
    {    250,    480,   -360 },
    {   -250,    480,   -360 },
    {   -346,      0,    360 },
    {    346,      0,    360 },
    {   -288,      0,   -360 },
    {    288,      0,   -360 },
};

CollisionHeader gGravestoneCol = { 
    { -346, 0, -1128 },
    { 346, 480, 360 },
    8, gGravestoneColVertices,
    10, gGravestoneColPolygons,
    gGravestoneColSurfaceType,
    gGravestoneColCamDataList,
    0, NULL
};

u8 object_haka_possiblePadding_000454[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gGravestoneGrassTex[] = {
#include "assets/objects/object_haka/grass.rgba16.inc.c"
};

u64 gGravestoneEarthTex[] = {
#include "assets/objects/object_haka/earth.ia8.inc.c"
};

u64 gGravestoneTombTex[] = {
#include "assets/objects/object_haka/tomb.rgba16.inc.c"
};

