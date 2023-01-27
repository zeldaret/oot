#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_spot05_objects.h"

u64 object_spot05_objects_Tex_000000[] = {
#include "assets/objects/object_spot05_objects/tex_00000000.rgba16.inc.c"
};

Vtx object_spot05_objectsVtx_000800[] = {
#include "assets/objects/object_spot05_objects/object_spot05_objectsVtx_000800.vtx.inc"
};

Gfx object_spot05_objects_DL_000840[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_spot05_objects_Tex_000000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot05_objectsVtx_000800, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSPEndDisplayList(),
};

CamData object_spot05_objects_Col_000918CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_spot05_objects_Col_000918SurfaceType[] = {
    { 0x00000000, 0x000007C4 },
};

CollisionPoly object_spot05_objects_Col_000918Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0003, 0x0001, 0x0000, 0x7FFF, 0x0000, 0x0000},
};

Vec3s object_spot05_objects_Col_000918Vertices[] = {
    {   1200,      0,   1200 },
    {  -1200,      0,  -1200 },
    {  -1200,      0,   1200 },
    {   1200,      0,  -1200 },
};

CollisionHeader object_spot05_objects_Col_000918 = { 
    { -1200, 0, -1200 },
    { 1200, 0, 1200 },
    4, object_spot05_objects_Col_000918Vertices,
    2, object_spot05_objects_Col_000918Polygons,
    object_spot05_objects_Col_000918SurfaceType,
    object_spot05_objects_Col_000918CamDataList,
    0, NULL
};

u8 object_spot05_objects_possiblePadding_000944[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_spot05_objects_Tex_000950[] = {
#include "assets/objects/object_spot05_objects/tex_00000950.rgba16.inc.c"
};

Vtx object_spot05_objectsVtx_001150[] = {
#include "assets/objects/object_spot05_objects/object_spot05_objectsVtx_001150.vtx.inc"
};

Gfx object_spot05_objects_DL_001190[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_spot05_objects_Tex_000950, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot05_objectsVtx_001150, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

CamData object_spot05_objects_Col_0012C0CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_spot05_objects_Col_0012C0SurfaceType[] = {
    { 0x00200000, 0x000007C0 },
};

CollisionPoly object_spot05_objects_Col_0012C0Polygons[] = {
    {0x0000, 0x8000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0000, 0x8000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0000, 0x8004, 0x0005, 0x0006, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0000, 0x8004, 0x0006, 0x0007, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0000, 0x8004, 0x0003, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFB50},
    {0x0000, 0x8004, 0x0002, 0x0005, 0x0000, 0x7FFF, 0x0000, 0xFB50},
};

Vec3s object_spot05_objects_Col_0012C0Vertices[] = {
    {  -1000,      0,    100 },
    {   1000,      0,    100 },
    {   1000,   1200,    100 },
    {  -1000,   1200,    100 },
    {  -1000,   1200,   -100 },
    {   1000,   1200,   -100 },
    {   1000,      0,   -100 },
    {  -1000,      0,   -100 },
};

CollisionHeader object_spot05_objects_Col_0012C0 = { 
    { -1000, 0, -100 },
    { 1000, 1200, 100 },
    8, object_spot05_objects_Col_0012C0Vertices,
    6, object_spot05_objects_Col_0012C0Polygons,
    object_spot05_objects_Col_0012C0SurfaceType,
    object_spot05_objects_Col_0012C0CamDataList,
    0, NULL
};

