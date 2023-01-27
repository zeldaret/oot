#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_d_elevator.h"

Vtx object_d_elevatorVtx_000000[] = {
#include "assets/objects/object_d_elevator/object_d_elevatorVtx_000000.vtx.inc"
};

Gfx object_d_elevator_DL_000180[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_d_elevator_Tex_000390, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_d_elevatorVtx_000000, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&object_d_elevatorVtx_000000[20], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

CamData object_d_elevator_Col_000360CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_d_elevator_Col_000360SurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly object_d_elevator_Col_000360Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xF060},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xF060},
    {0x0000, 0x0004, 0x0001, 0x0000, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0004, 0x0000, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0006, 0x0002, 0x0001, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0006, 0x0001, 0x0004, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0007, 0x0003, 0x0002, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x0007, 0x0002, 0x0006, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x0005, 0x0000, 0x0003, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0005, 0x0003, 0x0007, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0007, 0x0006, 0x0004, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0007, 0x0004, 0x0005, 0x0000, 0x8001, 0x0000, 0x0000},
};

Vec3s object_d_elevator_Col_000360Vertices[] = {
    {   -600,   4000,    600 },
    {    600,   4000,    600 },
    {    600,   4000,   -600 },
    {   -600,   4000,   -600 },
    {    600,      0,    600 },
    {   -600,      0,    600 },
    {    600,      0,   -600 },
    {   -600,      0,   -600 },
};

CollisionHeader object_d_elevator_Col_000360 = { 
    { -600, 0, -600 },
    { 600, 4000, 600 },
    8, object_d_elevator_Col_000360Vertices,
    12, object_d_elevator_Col_000360Polygons,
    object_d_elevator_Col_000360SurfaceType,
    object_d_elevator_Col_000360CamDataList,
    0, NULL
};

u8 object_d_elevator_possiblePadding_00038C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

u64 object_d_elevator_Tex_000390[] = {
#include "assets/objects/object_d_elevator/tex_00000390.i8.inc.c"
};

