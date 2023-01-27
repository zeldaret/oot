#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_kibako2.h"

u64 gLargeCrate1TLUT[] = {
#include "assets/objects/object_kibako2/tlut_1.rgba16.inc.c"
};

u64 gLargeCrateTex[] = {
#include "assets/objects/object_kibako2/crate_tex.ci4.inc.c"
};

u64 gLargeCrateFragment1Tex[] = {
#include "assets/objects/object_kibako2/fragment_1.ci4.inc.c"
};

Vtx object_kibako2Vtx_000820[] = {
#include "assets/objects/object_kibako2/object_kibako2Vtx_000820.vtx.inc"
};

Gfx gLargeCrateDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gLargeCrateTex, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gLargeCrate1TLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 215, 215, 255, 255),
    gsSPVertex(object_kibako2Vtx_000820, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gLargeCrateFragment1Tex, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_kibako2Vtx_000820[4], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

u8 object_kibako2_possiblePadding_000A88[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gLargeCrateColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gLargeCrateColSurfaceType[] = {
    { 0x80000000, 0x000207CA },
};

CollisionPoly gLargeCrateColPolygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFE20},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xFE20},
    {0x0000, 0x2004, 0x0000, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFF10},
    {0x0000, 0x2004, 0x0003, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xFF10},
    {0x0000, 0x2006, 0x0001, 0x0000, 0x7FFF, 0x0000, 0x0000, 0xFED4},
    {0x0000, 0x2006, 0x0000, 0x0004, 0x7FFF, 0x0000, 0x0000, 0xFED4},
    {0x0000, 0x2007, 0x0002, 0x0001, 0x0000, 0x0000, 0x8001, 0xFF10},
    {0x0000, 0x2007, 0x0001, 0x0006, 0x0000, 0x0000, 0x8001, 0xFF10},
    {0x0000, 0x2007, 0x0005, 0x0003, 0x8001, 0x0000, 0x0000, 0xFED4},
    {0x0000, 0x2007, 0x0003, 0x0002, 0x8001, 0x0000, 0x0000, 0xFED4},
};

Vec3s gLargeCrateColVertices[] = {
    {    300,    480,    240 },
    {    300,    480,   -240 },
    {   -300,    480,   -240 },
    {   -300,    480,    240 },
    {    300,      0,    240 },
    {   -300,      0,    240 },
    {    300,      0,   -240 },
    {   -300,      0,   -240 },
};

CollisionHeader gLargeCrateCol = { 
    { -300, 0, -240 },
    { 300, 480, 240 },
    8, gLargeCrateColVertices,
    10, gLargeCrateColPolygons,
    gLargeCrateColSurfaceType,
    gLargeCrateColCamDataList,
    0, NULL
};

u8 object_kibako2_possiblePadding_000B9C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

u64 gLargeCrate2TLUT[] = {
#include "assets/objects/object_kibako2/tlut_2.rgba16.inc.c"
};

u64 gLargeCrateFragment2Tex[] = {
#include "assets/objects/object_kibako2/fragment_2.ci4.inc.c"
};

Vtx object_kibako2Vtx_000FC0[] = {
#include "assets/objects/object_kibako2/object_kibako2Vtx_000FC0.vtx.inc"
};

Gfx gLargeCrateFragmentDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gLargeCrateFragment2Tex, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gLargeCrate2TLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_kibako2Vtx_000FC0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

