#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_zg.h"

u64 gTowerCollapseBarMetalTex[] = {
#include "assets/objects/object_zg/bar_metal.rgba16.inc.c"
};

u64 gTowerCollapseBarFlameTex[] = {
#include "assets/objects/object_zg/bar_flame.rgba16.inc.c"
};

Vtx object_zgVtx_001000[] = {
#include "assets/objects/object_zg/object_zgVtx_001000.vtx.inc"
};

Gfx gTowerCollapseBarsDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gTowerCollapseBarMetalTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_zgVtx_001000, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gTowerCollapseBarFlameTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_zgVtx_001000[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

CamData gTowerCollapseBarsColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gTowerCollapseBarsColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gTowerCollapseBarsColPolygons[] = {
    {0x0000, 0x8000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x8000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x8004, 0x0005, 0x0001, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x8004, 0x0001, 0x0000, 0x0000, 0x0000, 0x7FFF, 0x0000},
};

Vec3s gTowerCollapseBarsColVertices[] = {
    {    -70,      0,      0 },
    {     70,      0,      0 },
    {     70,    180,      0 },
    {    -70,    180,      0 },
    {    -70,    -20,      0 },
    {     70,    -20,      0 },
};

CollisionHeader gTowerCollapseBarsCol = { 
    { -70, -20, 0 },
    { 70, 180, 0 },
    6, gTowerCollapseBarsColVertices,
    4, gTowerCollapseBarsColPolygons,
    gTowerCollapseBarsColSurfaceType,
    gTowerCollapseBarsColCamDataList,
    0, NULL
};

