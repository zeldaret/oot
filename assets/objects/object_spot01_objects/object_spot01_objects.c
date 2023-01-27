#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_spot01_objects.h"

Vtx object_spot01_objectsVtx_000000[] = {
#include "assets/objects/object_spot01_objects/object_spot01_objectsVtx_000000.vtx.inc"
};

Gfx gKakarikoWindmillSailsDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gKakarikoWindmillSailsTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot01_objectsVtx_000000, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSPEndDisplayList(),
};

u8 object_spot01_objects_possiblePadding_0001A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_spot01_objectsVtx_0001B0[] = {
#include "assets/objects/object_spot01_objects/object_spot01_objectsVtx_0001B0.vtx.inc"
};

Gfx gKakarikoWellArchDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gKakarikoWellArchTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot01_objectsVtx_0001B0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 1, 0, 4, 1, 5, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 14, 10, 0, 13, 10, 9, 0),
    gsSP2Triangles(12, 11, 15, 0, 12, 15, 16, 0),
    gsSP2Triangles(16, 15, 17, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSPVertex(&object_spot01_objectsVtx_0001B0[31], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 6, 1, 0, 7, 1, 0, 0),
    gsSPEndDisplayList(),
};

u8 object_spot01_objects_possiblePadding_000518[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gKakarikoWellArchColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gKakarikoWellArchColSurfaceType[] = {
    { 0x00200000, 0x000007CA },
    { 0x00000000, 0x000007CA },
};

CollisionPoly gKakarikoWellArchColPolygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x0000, 0xC6C2, 0x8D84, 0x01BF},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x0000, 0xC6C2, 0x8D84, 0x01BF},
    {0x0000, 0x2004, 0x0002, 0x0001, 0x0000, 0xC6C2, 0x727C, 0x01BF},
    {0x0000, 0x2004, 0x0001, 0x0005, 0x0000, 0xC6C2, 0x727C, 0x01BF},
    {0x0001, 0x2005, 0x0000, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xFB50},
    {0x0001, 0x2005, 0x0003, 0x0004, 0x0000, 0x7FFF, 0x0000, 0xFB50},
    {0x0000, 0x2006, 0x0007, 0x0008, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0000, 0x2006, 0x0008, 0x0009, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0000, 0x200A, 0x000B, 0x0007, 0x7FFF, 0x0000, 0x0000, 0x038A},
    {0x0000, 0x200A, 0x0007, 0x0006, 0x7FFF, 0x0000, 0x0000, 0x038A},
    {0x0000, 0x2009, 0x0008, 0x000C, 0x8001, 0x0000, 0x0000, 0xFBAE},
    {0x0000, 0x2009, 0x000C, 0x000D, 0x8001, 0x0000, 0x0000, 0xFBAE},
    {0x0000, 0x200D, 0x000C, 0x000B, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0000, 0x200D, 0x000B, 0x000A, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0001, 0x2009, 0x000D, 0x000A, 0x0000, 0x7FFF, 0x0000, 0xFAEC},
    {0x0001, 0x2009, 0x000A, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xFAEC},
    {0x0001, 0x200E, 0x000F, 0x0010, 0x0000, 0x7FFF, 0x0000, 0xFAEC},
    {0x0001, 0x200E, 0x0010, 0x0011, 0x0000, 0x7FFF, 0x0000, 0xFAEC},
    {0x0000, 0x200F, 0x0012, 0x0013, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0000, 0x200F, 0x0013, 0x0010, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0000, 0x200E, 0x0014, 0x0012, 0x8001, 0x0000, 0x0000, 0x038A},
    {0x0000, 0x200E, 0x0012, 0x000F, 0x8001, 0x0000, 0x0000, 0x038A},
    {0x0000, 0x2010, 0x0013, 0x0015, 0x7FFF, 0x0000, 0x0000, 0xFBAE},
    {0x0000, 0x2010, 0x0015, 0x0011, 0x7FFF, 0x0000, 0x0000, 0xFBAE},
    {0x0000, 0x2011, 0x0015, 0x0014, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0000, 0x2011, 0x0014, 0x000E, 0x0000, 0x0000, 0x8001, 0xFF9C},
};

Vec3s gKakarikoWellArchColVertices[] = {
    {    906,   1200,   -100 },
    {    906,   1000,      0 },
    {   -906,   1000,      0 },
    {   -906,   1200,   -100 },
    {   -906,   1200,    100 },
    {    906,   1200,    100 },
    {   -906,   1300,   -100 },
    {   -906,      0,   -100 },
    {  -1106,      0,   -100 },
    {  -1106,   1300,   -100 },
    {   -906,   1300,    100 },
    {   -906,      0,    100 },
    {  -1106,      0,    100 },
    {  -1106,   1300,    100 },
    {    906,   1300,   -100 },
    {    906,   1300,    100 },
    {   1106,   1300,    100 },
    {   1106,   1300,   -100 },
    {    906,      0,    100 },
    {   1106,      0,    100 },
    {    906,      0,   -100 },
    {   1106,      0,   -100 },
};

CollisionHeader gKakarikoWellArchCol = { 
    { -1106, 0, -100 },
    { 1106, 1300, 100 },
    22, gKakarikoWellArchColVertices,
    26, gKakarikoWellArchColPolygons,
    gKakarikoWellArchColSurfaceType,
    gKakarikoWellArchColCamDataList,
    0, NULL
};

u8 object_spot01_objects_possiblePadding_000788[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_spot01_objectsVtx_000790[] = {
#include "assets/objects/object_spot01_objects/object_spot01_objectsVtx_000790.vtx.inc"
};

Gfx gKakarikoWellWaterDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gKakarikoWellWaterTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 14, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_spot01_objectsVtx_000790, 4, 0),
    gsDPSetEnvColor(255, 255, 255, 128),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 object_spot01_objects_possiblePadding_000888[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gKakarikoWellWaterTex[] = {
#include "assets/objects/object_spot01_objects/well_water.rgba16.inc.c"
};

u64 gKakarikoWindmillSailsTex[] = {
#include "assets/objects/object_spot01_objects/windmill_sails.rgba16.inc.c"
};

u64 gKakarikoWellArchTex[] = {
#include "assets/objects/object_spot01_objects/well_arch.rgba16.inc.c"
};

