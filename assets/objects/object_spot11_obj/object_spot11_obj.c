#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_spot11_obj.h"

u64 gDesertColossusOasisWaterTex[] = {
#include "assets/objects/object_spot11_obj/desert_colossus_oasis_water.rgba16.inc.c"
};

Vtx object_spot11_objVtx_000800[] = {
#include "assets/objects/object_spot11_obj/object_spot11_objVtx_000800.vtx.inc"
};

Gfx gDesertColossusOasisDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gDesertColossusOasisWaterTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 14, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 165),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_spot11_objVtx_000800, 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 1, 3, 0, 5, 1, 4, 0),
    gsSP2Triangles(6, 1, 5, 0, 2, 1, 6, 0),
    gsSPEndDisplayList(),
};

u8 object_spot11_obj_possiblePadding_000938[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gDesertColossusBombableWallTex[] = {
#include "assets/objects/object_spot11_obj/desert_colossus_bombable_wall.rgba16.inc.c"
};

Vtx object_spot11_objVtx_001940[] = {
#include "assets/objects/object_spot11_obj/object_spot11_objVtx_001940.vtx.inc"
};

Gfx gDesertColossusBombableWallDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gDesertColossusBombableWallTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot11_objVtx_001940, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

CamData gDesertColossusBombableWallColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gDesertColossusBombableWallColSurfaceType[] = {
    { 0x00000000, 0x000007CB },
};

CollisionPoly gDesertColossusBombableWallColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0xFEEA, 0xFFFE, 0x7FFE, 0x0621},
    {0x0000, 0x0000, 0x0002, 0x0003, 0xFEED, 0x0000, 0x7FFE, 0x0620},
};

Vec3s gDesertColossusBombableWallColVertices[] = {
    {   2199,    268,  -1550 },
    {   2200,    108,  -1550 },
    {   2318,    108,  -1549 },
    {   2318,    268,  -1549 },
};

CollisionHeader gDesertColossusBombableWallCol = { 
    { 2199, 108, -1550 },
    { 2318, 268, -1549 },
    4, gDesertColossusBombableWallColVertices,
    2, gDesertColossusBombableWallColPolygons,
    gDesertColossusBombableWallColSurfaceType,
    gDesertColossusBombableWallColCamDataList,
    0, NULL
};

