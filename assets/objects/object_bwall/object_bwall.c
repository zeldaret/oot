#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_bwall.h"

Vtx object_bwallVtx_000000[] = {
#include "assets/objects/object_bwall/object_bwallVtx_000000.vtx.inc"
};

Gfx object_bwall_DL_000040[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bwall_Tex_000150, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bwallVtx_000000, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

CamData object_bwall_Col_000118CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_bwall_Col_000118SurfaceType[] = {
    { 0x00000000, 0x000007CB },
};

CollisionPoly object_bwall_Col_000118Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0x0000},
};

Vec3s object_bwall_Col_000118Vertices[] = {
    {   1000,   2000,      0 },
    {  -1000,   2000,      0 },
    {  -1000,   -100,      0 },
    {   1000,   -100,      0 },
};

CollisionHeader object_bwall_Col_000118 = { 
    { -1000, -100, 0 },
    { 1000, 2000, 0 },
    4, object_bwall_Col_000118Vertices,
    2, object_bwall_Col_000118Polygons,
    object_bwall_Col_000118SurfaceType,
    object_bwall_Col_000118CamDataList,
    0, NULL
};

u8 object_bwall_possiblePadding_000144[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_bwall_Tex_000150[] = {
#include "assets/objects/object_bwall/tex_00000150.rgba16.inc.c"
};

