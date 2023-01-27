#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_spot03_object.h"

u64 object_spot03_object_Tex_000000[] = {
#include "assets/objects/object_spot03_object/tex_00000000.i4.inc.c"
};

Vtx object_spot03_object_Vtx_000800[] = {
#include "assets/objects/object_spot03_object/object_spot03_object_Vtx_000800.vtx.inc"
};

Vtx object_spot03_object_Vtx_000990[] = {
#include "assets/objects/object_spot03_object/object_spot03_object_Vtx_000990.vtx.inc"
};

Gfx object_spot03_object_DL_000B20[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_spot03_object_Tex_000000, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, 1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 6, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_CLAMP, 6, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x00FC, 0x00FC),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0,
                       COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPEndDisplayList(),
};

Gfx object_spot03_object_DL_000BC0[] = {
    gsSP2Triangles(0, 1, 6, 0, 0, 6, 5, 0),
    gsSP2Triangles(1, 2, 7, 0, 1, 7, 6, 0),
    gsSP2Triangles(2, 3, 8, 0, 2, 8, 7, 0),
    gsSP2Triangles(3, 4, 9, 0, 3, 9, 8, 0),
    gsSP2Triangles(5, 6, 11, 0, 5, 11, 10, 0),
    gsSP2Triangles(6, 7, 12, 0, 6, 12, 11, 0),
    gsSP2Triangles(7, 8, 13, 0, 7, 13, 12, 0),
    gsSP2Triangles(8, 9, 14, 0, 8, 14, 13, 0),
    gsSP2Triangles(10, 11, 16, 0, 10, 16, 15, 0),
    gsSP2Triangles(11, 12, 17, 0, 11, 17, 16, 0),
    gsSP2Triangles(12, 13, 18, 0, 12, 18, 17, 0),
    gsSP2Triangles(13, 14, 19, 0, 13, 19, 18, 0),
    gsSP2Triangles(15, 16, 21, 0, 15, 21, 20, 0),
    gsSP2Triangles(16, 17, 22, 0, 16, 22, 21, 0),
    gsSP2Triangles(17, 18, 23, 0, 17, 23, 22, 0),
    gsSP2Triangles(18, 19, 24, 0, 18, 24, 23, 0),
    gsSPEndDisplayList(),
};

u8 object_spot03_object_possiblePadding_000C48[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData object_spot03_object_Col_000C98CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_spot03_object_Col_000C98SurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly object_spot03_object_Col_000C98Polygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x8001, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x2000, 0x0003, 0x0001, 0x8001, 0x0000, 0x0000, 0x0000},
};

Vec3s object_spot03_object_Col_000C98Vertices[] = {
    {      0,      0,  -2000 },
    {      0,   8351,   2000 },
    {      0,   8351,  -2000 },
    {      0,      0,   2000 },
};

CollisionHeader object_spot03_object_Col_000C98 = { 
    { 0, 0, -2000 },
    { 800, 8351, 2000 },
    4, object_spot03_object_Col_000C98Vertices,
    2, object_spot03_object_Col_000C98Polygons,
    object_spot03_object_Col_000C98SurfaceType,
    object_spot03_object_Col_000C98CamDataList,
    0, NULL
};

u8 object_spot03_object_possiblePadding_000CC4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_spot03_object_Tex_000CD0[] = {
#include "assets/objects/object_spot03_object/tex_00000CD0.i4.inc.c"
};

Vtx object_spot03_objectVtx_0014D0[] = {
#include "assets/objects/object_spot03_object/object_spot03_objectVtx_0014D0.vtx.inc"
};

Gfx object_spot03_object_DL_001580[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_spot03_object_Tex_000CD0, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 6, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_WRAP, 6, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x00FC, 0x00FC),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0,
                       COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_spot03_objectVtx_0014D0, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 6, 0, 0, 5, 7, 3, 0),
    gsSP2Triangles(8, 1, 2, 0, 3, 4, 9, 0),
    gsSP2Triangles(4, 3, 10, 0, 3, 2, 10, 0),
    gsSP2Triangles(2, 1, 10, 0, 6, 2, 3, 0),
    gsSP2Triangles(6, 3, 7, 0, 9, 7, 3, 0),
    gsSP1Triangle(2, 6, 8, 0),
    gsSPEndDisplayList(),
};

