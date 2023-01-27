#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_mjin.h"

Vtx object_mjinVtx_000000[] = {
#include "assets/objects/object_mjin/object_mjinVtx_000000.vtx.inc"
};

Gfx gWarpPadBaseDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gWarpPadSideTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR
                         | G_TX_CLAMP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_mjinVtx_000000, 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(7, 8, 6, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(14, 16, 15, 0, 16, 17, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 23, 25, 24, 0),
    gsSP1Triangle(25, 26, 24, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR |
                         G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetPrimColor(0, 0, 200, 200, 185, 255),
    gsSPVertex(&object_mjinVtx_000000[27], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 120, 120, 90, 255),
    gsSPVertex(&object_mjinVtx_000000[30], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP1Triangle(4, 5, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gWarpPadTopTex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 200, 200, 185, 255),
    gsSPVertex(&object_mjinVtx_000000[36], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 5, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 11, 0),
    gsSP1Triangle(13, 14, 11, 0),
    gsSPEndDisplayList(),
};

u8 object_mjin_possiblePadding_0004F8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gWarpPadColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gWarpPadColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gWarpPadColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x52E5, 0x6186, 0xFFA4},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x52E5, 0x6186, 0xFFA4},
    {0x0000, 0x0004, 0x0005, 0x0006, 0x53C5, 0x53C5, 0xCF8A, 0xFFA4},
    {0x0000, 0x0004, 0x0006, 0x0007, 0x5426, 0x5357, 0xCF74, 0xFFA4},
    {0x0000, 0x0008, 0x0009, 0x000A, 0xABEF, 0x535F, 0xCF5E, 0xFFA4},
    {0x0000, 0x0008, 0x000A, 0x000B, 0xAC33, 0x53CD, 0xCFA7, 0xFFA4},
    {0x0000, 0x000A, 0x0001, 0x0000, 0xABEF, 0x535F, 0x30A2, 0xFFA4},
    {0x0000, 0x000A, 0x0000, 0x000B, 0xAC33, 0x53CD, 0x3059, 0xFFA4},
    {0x0000, 0x0006, 0x0009, 0x0008, 0x0000, 0x52E5, 0x9E7A, 0xFFA4},
    {0x0000, 0x0006, 0x0008, 0x0007, 0x0000, 0x52E5, 0x9E7A, 0xFFA4},
    {0x0000, 0x0002, 0x0005, 0x0004, 0x53C5, 0x53C5, 0x3076, 0xFFA4},
    {0x0000, 0x0002, 0x0004, 0x0003, 0x5426, 0x5357, 0x308C, 0xFFA4},
    {0x0000, 0x0004, 0x000B, 0x0000, 0x0000, 0x7FFF, 0x0000, 0xFFEC},
    {0x0000, 0x0004, 0x0000, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xFFEC},
    {0x0000, 0x0004, 0x0007, 0x0008, 0x0000, 0x7FFF, 0x0000, 0xFFEC},
    {0x0000, 0x0004, 0x0008, 0x000B, 0x0000, 0x7FFF, 0x0000, 0xFFEC},
};

Vec3s gWarpPadColVertices[] = {
    {    -60,     20,    104 },
    {    -70,      0,    121 },
    {     70,      0,    121 },
    {     60,     20,    104 },
    {    120,     20,      0 },
    {    140,      0,      0 },
    {     70,      0,   -121 },
    {     60,     20,   -104 },
    {    -60,     20,   -104 },
    {    -70,      0,   -121 },
    {   -140,      0,      0 },
    {   -120,     20,      0 },
};

CollisionHeader gWarpPadCol = { 
    { -140, 0, -121 },
    { 140, 20, 121 },
    12, gWarpPadColVertices,
    16, gWarpPadColPolygons,
    gWarpPadColSurfaceType,
    gWarpPadColCamDataList,
    0, NULL
};

u8 object_mjin_possiblePadding_000684[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gWarpPadSideTex[] = {
#include "assets/objects/object_mjin/side.rgba16.inc.c"
};

u64 gWarpPadTopTex[] = {
#include "assets/objects/object_mjin/top.i8.inc.c"
};

