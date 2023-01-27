#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_spot15_obj.h"

Vtx object_spot15_objVtx_000000[] = {
#include "assets/objects/object_spot15_obj/object_spot15_objVtx_000000.vtx.inc"
};

Gfx gLonLonMilkCrateDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gLonLonMilkCrateTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot15_objVtx_000000, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

u8 object_spot15_obj_possiblePadding_000238[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gLonLonMilkCrateColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gLonLonMilkCrateColSurfaceType[] = {
    { 0x00E00000, 0x000007CA },
    { 0x00000000, 0x000007CA },
};

CollisionPoly gLonLonMilkCrateColPolygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xFED4},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFED4},
    {0x0001, 0x2004, 0x0001, 0x0000, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0001, 0x2004, 0x0000, 0x0005, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x2002, 0x0001, 0x0004, 0x7FFF, 0x0000, 0x0000, 0xFED4},
    {0x0000, 0x2002, 0x0004, 0x0006, 0x7FFF, 0x0000, 0x0000, 0xFED4},
    {0x0001, 0x2007, 0x0003, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFDA8},
    {0x0001, 0x2007, 0x0002, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xFDA8},
    {0x0000, 0x2005, 0x0000, 0x0003, 0x8001, 0x0000, 0x0000, 0xFED4},
    {0x0000, 0x2005, 0x0003, 0x0007, 0x8001, 0x0000, 0x0000, 0xFED4},
    {0x0000, 0x2006, 0x0004, 0x0005, 0x0000, 0x0000, 0x8001, 0xFED4},
    {0x0000, 0x2006, 0x0005, 0x0007, 0x0000, 0x0000, 0x8001, 0xFED4},
};

Vec3s gLonLonMilkCrateColVertices[] = {
    {   -300,      0,    300 },
    {    300,      0,    300 },
    {    300,    600,    300 },
    {   -300,    600,    300 },
    {    300,      0,   -300 },
    {   -300,      0,   -300 },
    {    300,    600,   -300 },
    {   -300,    600,   -300 },
};

CollisionHeader gLonLonMilkCrateCol = { 
    { -300, 0, -300 },
    { 300, 600, 300 },
    8, gLonLonMilkCrateColVertices,
    12, gLonLonMilkCrateColPolygons,
    gLonLonMilkCrateColSurfaceType,
    gLonLonMilkCrateColCamDataList,
    0, NULL
};

u8 object_spot15_obj_possiblePadding_000374[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_spot15_objVtx_000380[] = {
#include "assets/objects/object_spot15_obj/object_spot15_objVtx_000380.vtx.inc"
};

Gfx gLonLonCorralFenceDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gLonLonCorralFenceTex, G_IM_FMT_IA, 32, 128, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 102, 152, 112, 255),
    gsSPVertex(object_spot15_objVtx_000380, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

CamData gLonLonCorralFenceColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gLonLonCorralFenceColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gLonLonCorralFenceColPolygons[] = {
    {0x0000, 0x8000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0000, 0x8000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0000, 0x8004, 0x0005, 0x0006, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0000, 0x8004, 0x0006, 0x0007, 0x0000, 0x0000, 0x8001, 0xFF9C},
};

Vec3s gLonLonCorralFenceColVertices[] = {
    {  -1200,   1800,    100 },
    {  -1200,      0,    100 },
    {   1200,      0,    100 },
    {   1200,   1800,    100 },
    {   1200,   1800,   -100 },
    {   1200,      0,   -100 },
    {  -1200,      0,   -100 },
    {  -1200,   1800,   -100 },
};

CollisionHeader gLonLonCorralFenceCol = { 
    { -1200, 0, -100 },
    { 1200, 1800, 100 },
    8, gLonLonCorralFenceColVertices,
    4, gLonLonCorralFenceColPolygons,
    gLonLonCorralFenceColSurfaceType,
    gLonLonCorralFenceColCamDataList,
    0, NULL
};

u8 object_spot15_obj_possiblePadding_0004FC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

u64 gLonLonCorralFenceTex[] = {
#include "assets/objects/object_spot15_obj/corral_fence.i4.inc.c"
};

u64 gLonLonMilkCrateTex[] = {
#include "assets/objects/object_spot15_obj/milk_crate.rgba16.inc.c"
};

