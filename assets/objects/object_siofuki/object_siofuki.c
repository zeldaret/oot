#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_siofuki.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

u64 object_siofuki_Tex_000000[] = {
#include "assets/objects/object_siofuki/tex_00000000.i4.inc.c"
};

Vtx object_siofukiVtx_000800[] = {
#include "assets/objects/object_siofuki/object_siofukiVtx_000800.vtx.inc"
};

Gfx object_siofuki_DL_000B70[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gEffFleckTex, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                            6, 6, 14, 15),
    gsDPLoadMultiBlock_4b(object_siofuki_Tex_000000, 0x0100, 1, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 6, 14, 15),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(50, 100, 150, 200),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_siofukiVtx_000800, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 6, 9, 0),
    gsSP2Triangles(10, 9, 0, 0, 11, 4, 12, 0),
    gsDPPipeSync(),
    gsSPVertex(&object_siofukiVtx_000800[13], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 1, 0, 6, 1, 0, 0),
    gsSP2Triangles(7, 8, 4, 0, 7, 4, 1, 0),
    gsSP2Triangles(9, 10, 7, 0, 9, 7, 6, 0),
    gsSP2Triangles(11, 8, 7, 0, 10, 11, 7, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(13, 16, 17, 0, 13, 17, 14, 0),
    gsSP2Triangles(18, 19, 13, 0, 19, 20, 16, 0),
    gsSP2Triangles(19, 16, 13, 0, 3, 2, 19, 0),
    gsSP2Triangles(3, 19, 18, 0, 5, 20, 19, 0),
    gsSP2Triangles(2, 5, 19, 0, 18, 13, 12, 0),
    gsDPPipeSync(),
    gsSPVertex(&object_siofukiVtx_000800[34], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 1, 0, 6, 1, 0, 0),
    gsSP2Triangles(7, 8, 4, 0, 7, 4, 1, 0),
    gsSP2Triangles(9, 10, 7, 0, 9, 7, 6, 0),
    gsSP2Triangles(11, 8, 7, 0, 10, 11, 7, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(13, 16, 17, 0, 13, 17, 14, 0),
    gsSP2Triangles(18, 19, 13, 0, 19, 20, 16, 0),
    gsSP2Triangles(19, 16, 13, 0, 3, 2, 19, 0),
    gsSP2Triangles(3, 19, 18, 0, 5, 20, 19, 0),
    gsSP2Triangles(2, 5, 19, 0, 18, 13, 12, 0),
    gsSPEndDisplayList(),
};

CamData object_siofuki_Col_000D78CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_siofuki_Col_000D78SurfaceType[] = {
    { 0x00000000, 0x000007C4 },
};

CollisionPoly object_siofuki_Col_000D78Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0x0000},
};

Vec3s object_siofuki_Col_000D78Vertices[] = {
    {   -346,      0,   -400 },
    {   -346,      0,    400 },
    {    346,      0,    400 },
    {    346,      0,   -400 },
};

CollisionHeader object_siofuki_Col_000D78 = { 
    { -346, 0, -400 },
    { 346, 0, 400 },
    4, object_siofuki_Col_000D78Vertices,
    2, object_siofuki_Col_000D78Polygons,
    object_siofuki_Col_000D78SurfaceType,
    object_siofuki_Col_000D78CamDataList,
    0, NULL
};

