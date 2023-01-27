#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_pu_box.h"

Gfx gBlockSmallDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gBlockTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_pu_boxVtx_0000C8, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx object_pu_boxVtx_0000C8[] = {
#include "assets/objects/object_pu_box/object_pu_boxVtx_0000C8.vtx.inc"
};

u8 object_pu_box_possiblePadding_000248[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gBlockSmallColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gBlockSmallColSurfaceType[] = {
    { 0x00200000, 0x000007C0 },
};

CollisionPoly gBlockSmallColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0001, 0x0004, 0x0005, 0x7FFF, 0x0000, 0x0000, 0xF060},
    {0x0000, 0x0001, 0x0005, 0x0002, 0x7FFF, 0x0000, 0x0000, 0xF060},
    {0x0000, 0x0002, 0x0005, 0x0006, 0x0000, 0x0000, 0x7FFF, 0xF061},
    {0x0000, 0x0002, 0x0006, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xF061},
    {0x0000, 0x0003, 0x0006, 0x0007, 0x8001, 0x0000, 0x0000, 0xF061},
    {0x0000, 0x0003, 0x0007, 0x0000, 0x8001, 0x0000, 0x0000, 0xF061},
    {0x0000, 0x0000, 0x0007, 0x0004, 0x0000, 0x0000, 0x8001, 0xF060},
    {0x0000, 0x0000, 0x0004, 0x0001, 0x0000, 0x0000, 0x8001, 0xF060},
    {0x0000, 0x0004, 0x0007, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xF060},
    {0x0000, 0x0004, 0x0006, 0x0005, 0x0000, 0x7FFF, 0x0000, 0xF060},
};

Vec3s gBlockSmallColVertices[] = {
    {  -3999,      0,  -4000 },
    {   4000,      0,  -4000 },
    {   4000,      0,   3999 },
    {  -3999,      0,   3999 },
    {   4000,   4000,  -4000 },
    {   4000,   4000,   3999 },
    {  -3999,   4000,   3999 },
    {  -3999,   4000,  -4000 },
};

CollisionHeader gBlockSmallCol = { 
    { -3999, 0, -4000 },
    { 4000, 4000, 3999 },
    8, gBlockSmallColVertices,
    12, gBlockSmallColPolygons,
    gBlockSmallColSurfaceType,
    gBlockSmallColCamDataList,
    0, NULL
};

Gfx gBlockMediumDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gBlockTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_pu_boxVtx_000448, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx object_pu_boxVtx_000448[] = {
#include "assets/objects/object_pu_box/object_pu_boxVtx_000448.vtx.inc"
};

u8 object_pu_box_possiblePadding_0005C8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gBlockMediumColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gBlockMediumColSurfaceType[] = {
    { 0x00200000, 0x000007C0 },
};

CollisionPoly gBlockMediumColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0001, 0x0004, 0x0005, 0x7FFF, 0x0000, 0x0000, 0xF060},
    {0x0000, 0x0001, 0x0005, 0x0002, 0x7FFF, 0x0000, 0x0000, 0xF060},
    {0x0000, 0x0002, 0x0005, 0x0006, 0x0000, 0x0000, 0x7FFF, 0xF061},
    {0x0000, 0x0002, 0x0006, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xF061},
    {0x0000, 0x0003, 0x0006, 0x0007, 0x8001, 0x0000, 0x0000, 0xF061},
    {0x0000, 0x0003, 0x0007, 0x0000, 0x8001, 0x0000, 0x0000, 0xF061},
    {0x0000, 0x0000, 0x0007, 0x0004, 0x0000, 0x0000, 0x8001, 0xF060},
    {0x0000, 0x0000, 0x0004, 0x0001, 0x0000, 0x0000, 0x8001, 0xF060},
    {0x0000, 0x0004, 0x0007, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xE0C0},
    {0x0000, 0x0004, 0x0006, 0x0005, 0x0000, 0x7FFF, 0x0000, 0xE0C0},
};

Vec3s gBlockMediumColVertices[] = {
    {  -3999,      0,  -4000 },
    {   4000,      0,  -4000 },
    {   4000,      0,   3999 },
    {  -3999,      0,   3999 },
    {   4000,   8000,  -4000 },
    {   4000,   8000,   3999 },
    {  -3999,   8000,   3999 },
    {  -3999,   8000,  -4000 },
};

CollisionHeader gBlockMediumCol = { 
    { -3999, 0, -4000 },
    { 4000, 8000, 3999 },
    8, gBlockMediumColVertices,
    12, gBlockMediumColPolygons,
    gBlockMediumColSurfaceType,
    gBlockMediumColCamDataList,
    0, NULL
};

Gfx gBlockTallDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gBlockTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_pu_boxVtx_0007C8, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx object_pu_boxVtx_0007C8[] = {
#include "assets/objects/object_pu_box/object_pu_boxVtx_0007C8.vtx.inc"
};

u8 object_pu_box_possiblePadding_000948[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gBlockTallColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gBlockTallColSurfaceType[] = {
    { 0x00200000, 0x000007C0 },
};

CollisionPoly gBlockTallColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0001, 0x0004, 0x0005, 0x7FFF, 0x0000, 0x0000, 0xF060},
    {0x0000, 0x0001, 0x0005, 0x0002, 0x7FFF, 0x0000, 0x0000, 0xF060},
    {0x0000, 0x0002, 0x0005, 0x0006, 0x0000, 0x0000, 0x7FFF, 0xF061},
    {0x0000, 0x0002, 0x0006, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xF061},
    {0x0000, 0x0003, 0x0006, 0x0007, 0x8001, 0x0000, 0x0000, 0xF061},
    {0x0000, 0x0003, 0x0007, 0x0000, 0x8001, 0x0000, 0x0000, 0xF061},
    {0x0000, 0x0000, 0x0007, 0x0004, 0x0000, 0x0000, 0x8001, 0xF060},
    {0x0000, 0x0000, 0x0004, 0x0001, 0x0000, 0x0000, 0x8001, 0xF060},
    {0x0000, 0x0004, 0x0007, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xD120},
    {0x0000, 0x0004, 0x0006, 0x0005, 0x0000, 0x7FFF, 0x0000, 0xD120},
};

Vec3s gBlockTallColVertices[] = {
    {  -3999,      0,  -4000 },
    {   4000,      0,  -4000 },
    {   4000,      0,   3999 },
    {  -3999,      0,   3999 },
    {   4000,  12000,  -4000 },
    {   4000,  12000,   3999 },
    {  -3999,  12000,   3999 },
    {  -3999,  12000,  -4000 },
};

CollisionHeader gBlockTallCol = { 
    { -3999, 0, -4000 },
    { 4000, 12000, 3999 },
    8, gBlockTallColVertices,
    12, gBlockTallColPolygons,
    gBlockTallColSurfaceType,
    gBlockTallColCamDataList,
    0, NULL
};

Gfx gBlockTallestDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x01, 255, 255, 255, 255),
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(gBlockTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_pu_boxVtx_000B48, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx object_pu_boxVtx_000B48[] = {
#include "assets/objects/object_pu_box/object_pu_boxVtx_000B48.vtx.inc"
};

u64 gBlockTex[] = {
#include "assets/objects/object_pu_box/block.rgba16.inc.c"
};

u8 object_pu_box_possiblePadding_0014C8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gBlockTallestColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gBlockTallestColSurfaceType[] = {
    { 0x00200000, 0x000007C0 },
};

CollisionPoly gBlockTallestColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0001, 0x0004, 0x0005, 0x7FFF, 0x0000, 0x0000, 0xF060},
    {0x0000, 0x0001, 0x0005, 0x0002, 0x7FFF, 0x0000, 0x0000, 0xF060},
    {0x0000, 0x0002, 0x0005, 0x0006, 0x0000, 0x0000, 0x7FFF, 0xF061},
    {0x0000, 0x0002, 0x0006, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xF061},
    {0x0000, 0x0003, 0x0006, 0x0007, 0x8001, 0x0000, 0x0000, 0xF061},
    {0x0000, 0x0003, 0x0007, 0x0000, 0x8001, 0x0000, 0x0000, 0xF061},
    {0x0000, 0x0000, 0x0007, 0x0004, 0x0000, 0x0000, 0x8001, 0xF060},
    {0x0000, 0x0000, 0x0004, 0x0001, 0x0000, 0x0000, 0x8001, 0xF060},
    {0x0000, 0x0004, 0x0007, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xC180},
    {0x0000, 0x0004, 0x0006, 0x0005, 0x0000, 0x7FFF, 0x0000, 0xC180},
};

Vec3s gBlockTallestColVertices[] = {
    {  -3999,      0,  -4000 },
    {   4000,      0,  -4000 },
    {   4000,      0,   3999 },
    {  -3999,      0,   3999 },
    {   4000,  16000,  -4000 },
    {   4000,  16000,   3999 },
    {  -3999,  16000,   3999 },
    {  -3999,  16000,  -4000 },
};

CollisionHeader gBlockTallestCol = { 
    { -3999, 0, -4000 },
    { 4000, 16000, 3999 },
    8, gBlockTallestColVertices,
    12, gBlockTallestColPolygons,
    gBlockTallestColSurfaceType,
    gBlockTallestColCamDataList,
    0, NULL
};

