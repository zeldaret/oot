#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_spot17_obj.h"

u64 gCraterRockTLUT[] = {
#include "assets/objects/object_spot17_obj/crater_rock_tlut.rgba16.inc.c"
};

u64 gCraterRockTex[] = {
#include "assets/objects/object_spot17_obj/crater_rock.ci4.inc.c"
};

Vtx object_spot17_objVtx_000820[] = {
#include "assets/objects/object_spot17_obj/object_spot17_objVtx_000820.vtx.inc"
};

Gfx gCraterBombableWallDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gCraterRockTex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gCraterRockTLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 60, 90, 255, 255),
    gsSPVertex(object_spot17_objVtx_000820, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gCraterBombableWallCracksDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gCraterBombableWallCracksTex, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 0, 0, 0, 255),
    gsSPVertex(&object_spot17_objVtx_000820[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

CamData gCraterBombableWallColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gCraterBombableWallColSurfaceType[] = {
    { 0x00000000, 0x000007CB },
};

CollisionPoly gCraterBombableWallColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x08BF, 0x0000, 0x804E, 0x001C},
    {0x0000, 0x0001, 0x0003, 0x0002, 0x08BF, 0x0000, 0x804E, 0x001C},
};

Vec3s gCraterBombableWallColVertices[] = {
    {    559,      0,     66 },
    {   -638,      0,    -16 },
    {    559,   1600,     66 },
    {   -638,   1600,    -16 },
};

CollisionHeader gCraterBombableWallCol = { 
    { -927, -9, -77 },
    { 944, 1600, 66 },
    4, gCraterBombableWallColVertices,
    2, gCraterBombableWallColPolygons,
    gCraterBombableWallColSurfaceType,
    gCraterBombableWallColCamDataList,
    0, NULL
};

u8 object_spot17_obj_possiblePadding_000A64[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_spot17_objVtx_000A70[] = {
#include "assets/objects/object_spot17_obj/object_spot17_objVtx_000A70.vtx.inc"
};

Gfx gCraterSmokeConeDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gCraterSmokeConeTex, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 1, G_TX_NOMIRROR | G_TX_WRAP,
                5, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0,
                       COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(255, 255, 255, 128),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_spot17_objVtx_000A70, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 4, 0, 7, 5, 4, 0),
    gsSP2Triangles(7, 8, 5, 0, 9, 4, 0, 0),
    gsSP2Triangles(9, 0, 10, 0, 5, 11, 12, 0),
    gsSP2Triangles(5, 12, 1, 0, 10, 0, 3, 0),
    gsSP2Triangles(2, 1, 12, 0, 9, 6, 4, 0),
    gsSP1Triangle(8, 11, 5, 0),
    gsSPEndDisplayList(),
};

u64 gCraterSmokeConeTex[] = {
#include "assets/objects/object_spot17_obj/crater_smoke_cone.ia8.inc.c"
};

u64 gCraterBombableWallCracksTex[] = {
#include "assets/objects/object_spot17_obj/crater_bombable_wall_cracks.ia8.inc.c"
};

