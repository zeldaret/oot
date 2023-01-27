#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_d_lift.h"

Vtx object_d_liftVtx_000000[] = {
#include "assets/objects/object_d_lift/object_d_liftVtx_000000.vtx.inc"
};

Gfx gCollapsingPlatformDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gCollapsingPlatformTopTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 150, 110, 70, 255),
    gsSPVertex(object_d_liftVtx_000000, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gCollapsingPlatformSideTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_d_liftVtx_000000[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gCollapsingPlatformTopTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_d_liftVtx_000000[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gCollapsingPlatformSideTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_d_liftVtx_000000[12], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSPEndDisplayList(),
};

CamData gCollapsingPlatformColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gCollapsingPlatformColSurfaceType[] = {
    { 0x00000000, 0x000007CA },
};

CollisionPoly gCollapsingPlatformColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x8001, 0x0000, 0xFF4C},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x8001, 0x0000, 0xFF4C},
    {0x0000, 0x0003, 0x0004, 0x0005, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0003, 0x0005, 0x0000, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0004, 0x0006, 0x0007, 0x0000, 0x7FFF, 0x0000, 0xFF4C},
    {0x0000, 0x0004, 0x0007, 0x0005, 0x0000, 0x7FFF, 0x0000, 0xFF4C},
    {0x0000, 0x0002, 0x0006, 0x0004, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0002, 0x0004, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0001, 0x0007, 0x0006, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0001, 0x0006, 0x0002, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0000, 0x0005, 0x0007, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x0000, 0x0007, 0x0001, 0x0000, 0x0000, 0x8001, 0xFDA8},
};

Vec3s gCollapsingPlatformColVertices[] = {
    {   -600,   -180,   -600 },
    {    600,   -180,   -600 },
    {    600,   -180,    600 },
    {   -600,   -180,    600 },
    {   -600,    180,    600 },
    {   -600,    180,   -600 },
    {    600,    180,    600 },
    {    600,    180,   -600 },
};

CollisionHeader gCollapsingPlatformCol = { 
    { -600, -180, -600 },
    { 600, 180, 600 },
    8, gCollapsingPlatformColVertices,
    12, gCollapsingPlatformColPolygons,
    gCollapsingPlatformColSurfaceType,
    gCollapsingPlatformColCamDataList,
    0, NULL
};

u8 object_d_lift_possiblePadding_0003FC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

u64 gCollapsingPlatformSideTex[] = {
#include "assets/objects/object_d_lift/collapsing_platform_side.i8.inc.c"
};

u64 gCollapsingPlatformTopTex[] = {
#include "assets/objects/object_d_lift/collapsing_platform_top.i8.inc.c"
};

