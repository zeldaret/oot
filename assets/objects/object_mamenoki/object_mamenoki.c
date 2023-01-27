#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_mamenoki.h"

Vtx object_mamenokiVtx_000000[] = {
#include "assets/objects/object_mamenoki/object_mamenokiVtx_000000.vtx.inc"
};

Gfx gMagicBeanSeedlingDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gMagicBeanSeedlingTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_mamenokiVtx_000000, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsSPEndDisplayList(),
};

u8 object_mamenoki_possiblePadding_000128[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_mamenokiVtx_000130[] = {
#include "assets/objects/object_mamenoki/object_mamenokiVtx_000130.vtx.inc"
};

Gfx gMagicBeanStemDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gMagicBeanStemTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_mamenokiVtx_000130, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

u8 object_mamenoki_possiblePadding_000248[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_mamenokiVtx_000250[] = {
#include "assets/objects/object_mamenoki/object_mamenokiVtx_000250.vtx.inc"
};

Gfx gMagicBeanPlatformDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gMagicBeanPlatformTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_mamenokiVtx_000250, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 7, 10, 0, 10, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMagicBeanPlatformStemTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_mamenokiVtx_000250[11], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMagicBeanPlatformRootsTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_mamenokiVtx_000250[20], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPEndDisplayList(),
};

u8 object_mamenoki_possiblePadding_000538[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gMagicBeanPlatformColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gMagicBeanPlatformColSurfaceType[] = {
    { 0x00000000, 0x000007C8 },
};

CollisionPoly gMagicBeanPlatformColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0xFB2D, 0x7D6C, 0xE6EA, 0xFF8A},
    {0x0000, 0x0001, 0x0003, 0x0002, 0x134C, 0x7D6C, 0x10B9, 0xFF8A},
    {0x0000, 0x0002, 0x0003, 0x0004, 0xECB4, 0x7D6C, 0x10B9, 0xFF8A},
    {0x0000, 0x0005, 0x0002, 0x0004, 0x04D3, 0x7D6C, 0xE6EA, 0xFF8A},
    {0x0000, 0x0002, 0x0005, 0x0006, 0x181F, 0x7D6D, 0x085D, 0xFF8A},
    {0x0000, 0x0006, 0x0000, 0x0002, 0xE7E1, 0x7D6D, 0x085D, 0xFF8A},
};

Vec3s gMagicBeanPlatformColVertices[] = {
    {   -520,     40,   -300 },
    {   -520,    160,    300 },
    {      0,    120,      0 },
    {      0,     40,    600 },
    {    520,    160,    300 },
    {    520,     40,   -300 },
    {      0,    160,   -600 },
};

CollisionHeader gMagicBeanPlatformCol = { 
    { -520, -300, -600 },
    { 520, 476, 600 },
    7, gMagicBeanPlatformColVertices,
    6, gMagicBeanPlatformColPolygons,
    gMagicBeanPlatformColSurfaceType,
    gMagicBeanPlatformColCamDataList,
    0, NULL
};

u8 object_mamenoki_possiblePadding_000608[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_mamenokiVtx_000610[] = {
#include "assets/objects/object_mamenoki/object_mamenokiVtx_000610.vtx.inc"
};

Gfx gMagicBeanSoftSoilDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gMagicBeanSoftSoilTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_DECAL2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_mamenokiVtx_000610, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u64 gMagicBeanSoftSoilTex[] = {
#include "assets/objects/object_mamenoki/soft_soil.rgba16.inc.c"
};

u64 gMagicBeanSeedlingTex[] = {
#include "assets/objects/object_mamenoki/seedling.rgba16.inc.c"
};

u64 gMagicBeanPlatformTex[] = {
#include "assets/objects/object_mamenoki/platform.rgba16.inc.c"
};

u64 gMagicBeanPlatformStemTex[] = {
#include "assets/objects/object_mamenoki/platform_stem.rgba16.inc.c"
};

u64 gMagicBeanPlatformRootsTex[] = {
#include "assets/objects/object_mamenoki/platform_roots.rgba16.inc.c"
};

u64 gMagicBeanStemTex[] = {
#include "assets/objects/object_mamenoki/stem.rgba16.inc.c"
};

