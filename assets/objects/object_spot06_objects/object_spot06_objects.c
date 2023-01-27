#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_spot06_objects.h"

Vtx object_spot06_objectsVtx_000000[] = {
#include "assets/objects/object_spot06_objects/object_spot06_objectsVtx_000000.vtx.inc"
};

Gfx gLakeHyliaLowWaterDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gLakeHyliaWaterTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 14, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 160),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_spot06_objectsVtx_000000, 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(3, 4, 0, 0, 5, 1, 0, 0),
    gsSP1Triangle(6, 5, 0, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 102),
    gsSPVertex(&object_spot06_objectsVtx_000000[7], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsDPPipeSync(),
    gsSPDisplayList(0x09000000),
    gsSPVertex(&object_spot06_objectsVtx_000000[13], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP1Triangle(2, 4, 0, 0),
    gsSPEndDisplayList(),
};

Vtx object_spot06_objectsVtx_000230[] = {
#include "assets/objects/object_spot06_objects/object_spot06_objectsVtx_000230.vtx.inc"
};

Gfx gLakeHyliaHighWaterDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gLakeHyliaWaterTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 14, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 160),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_spot06_objectsVtx_000230, 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 1, 5, 0, 5, 6, 4, 0),
    gsSP2Triangles(4, 3, 1, 0, 3, 4, 7, 0),
    gsSP2Triangles(7, 4, 8, 0, 9, 10, 7, 0),
    gsSP2Triangles(8, 9, 7, 0, 9, 8, 11, 0),
    gsSP2Triangles(11, 12, 9, 0, 12, 11, 13, 0),
    gsSP2Triangles(13, 14, 12, 0, 14, 13, 15, 0),
    gsSP2Triangles(16, 4, 6, 0, 6, 17, 16, 0),
    gsSP2Triangles(4, 16, 8, 0, 8, 16, 18, 0),
    gsSP2Triangles(18, 11, 8, 0, 19, 11, 18, 0),
    gsSP2Triangles(19, 13, 11, 0, 20, 15, 13, 0),
    gsSP2Triangles(13, 19, 20, 0, 21, 20, 19, 0),
    gsSP2Triangles(18, 21, 19, 0, 18, 22, 21, 0),
    gsSP2Triangles(16, 17, 22, 0, 16, 22, 18, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 102),
    gsSPDisplayList(0x09000000),
    gsSPVertex(&object_spot06_objectsVtx_000230[23], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 8, 4, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 3, 9, 12, 0),
    gsSP1Triangle(3, 12, 0, 0),
    gsSPEndDisplayList(),
};

u64 gLakeHyliaWaterTempleGateTex[] = {
#include "assets/objects/object_spot06_objects/water_temple_gate.rgba16.inc.c"
};

Vtx object_spot06_objectsVtx_000DD0[] = {
#include "assets/objects/object_spot06_objects/object_spot06_objectsVtx_000DD0.vtx.inc"
};

Gfx gLakeHyliaWaterTempleGateDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gLakeHyliaWaterTempleGateTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot06_objectsVtx_000DD0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

CamData gLakeHyliaWaterTempleGateColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gLakeHyliaWaterTempleGateColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gLakeHyliaWaterTempleGateColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0x0000},
};

Vec3s gLakeHyliaWaterTempleGateColVertices[] = {
    {    900,   1800,      0 },
    {   -900,   1800,      0 },
    {   -900,      0,      0 },
    {    900,      0,      0 },
};

CollisionHeader gLakeHyliaWaterTempleGateCol = { 
    { -900, 0, 0 },
    { 900, 1800, 0 },
    4, gLakeHyliaWaterTempleGateColVertices,
    2, gLakeHyliaWaterTempleGateColPolygons,
    gLakeHyliaWaterTempleGateColSurfaceType,
    gLakeHyliaWaterTempleGateColCamDataList,
    0, NULL
};

u8 object_spot06_objects_possiblePadding_000F14[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gLakeHyliaZoraShortcutIceblockTex[] = {
#include "assets/objects/object_spot06_objects/zora_shortcut_iceblock.rgba16.inc.c"
};

Vtx object_spot06_objectsVtx_001120[] = {
#include "assets/objects/object_spot06_objects/object_spot06_objectsVtx_001120.vtx.inc"
};

Gfx gLakeHyliaZoraShortcutIceblockDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gLakeHyliaZoraShortcutIceblockTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot06_objectsVtx_001120, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSPEndDisplayList(),
};

CamData gLakeHyliaZoraShortcutIceblockColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gLakeHyliaZoraShortcutIceblockColSurfaceType[] = {
    { 0x00200000, 0x000007CC },
};

CollisionPoly gLakeHyliaZoraShortcutIceblockColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0000, 0x0003, 0x0001, 0x0000, 0x0000, 0x7FFF, 0x0000},
};

Vec3s gLakeHyliaZoraShortcutIceblockColVertices[] = {
    {   -300,      0,      0 },
    {    300,    723,      0 },
    {   -300,    723,      0 },
    {    300,      0,      0 },
};

CollisionHeader gLakeHyliaZoraShortcutIceblockCol = { 
    { -300, 0, 0 },
    { 300, 723, 0 },
    4, gLakeHyliaZoraShortcutIceblockColVertices,
    2, gLakeHyliaZoraShortcutIceblockColPolygons,
    gLakeHyliaZoraShortcutIceblockColSurfaceType,
    gLakeHyliaZoraShortcutIceblockColCamDataList,
    0, NULL
};

u8 object_spot06_objects_possiblePadding_001264[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gLakeHyliaWaterTempleKeyTex[] = {
#include "assets/objects/object_spot06_objects/water_temple_key.rgba16.inc.c"
};

Vtx object_spot06_objectsVtx_002270[] = {
#include "assets/objects/object_spot06_objects/object_spot06_objectsVtx_002270.vtx.inc"
};

Gfx gLakeHyliaWaterTempleKeyDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gLakeHyliaWaterTempleKeyTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot06_objectsVtx_002270, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_spot06_objectsVtx_002270[4], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 4, 6, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 14, 11, 0, 6, 15, 10, 0),
    gsSP2Triangles(16, 8, 7, 0, 6, 5, 15, 0),
    gsSP2Triangles(17, 0, 2, 0, 3, 0, 17, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 0, 200, 197, 255),
    gsSPVertex(&object_spot06_objectsVtx_002270[22], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

u64 gLakeHyliaWaterTex[] = {
#include "assets/objects/object_spot06_objects/water.rgba16.inc.c"
};

