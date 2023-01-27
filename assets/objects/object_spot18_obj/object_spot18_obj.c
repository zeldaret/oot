#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_spot18_obj.h"

Vtx object_spot18_objVtx_000000[] = {
#include "assets/objects/object_spot18_obj/object_spot18_objVtx_000000.vtx.inc"
};

Gfx gGoronCityVaseLidDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gGoronCityVaseLidTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 246, 243, 239, 255),
    gsSPVertex(object_spot18_objVtx_000000, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gGoronCityVaseLidHandleTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_spot18_objVtx_000000[6], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP1Triangle(11, 13, 14, 0),
    gsSPEndDisplayList(),
};

u8 object_spot18_obj_possiblePadding_000258[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gGoronCityVaseLidColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gGoronCityVaseLidColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gGoronCityVaseLidColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xF807},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xF807},
    {0x0000, 0x0000, 0x0003, 0x0004, 0x0000, 0x7FFF, 0x0000, 0xF807},
    {0x0000, 0x0000, 0x0004, 0x0005, 0x0000, 0x7FFF, 0x0000, 0xF807},
    {0x0000, 0x0006, 0x0007, 0x0008, 0x0000, 0x7FFF, 0x0000, 0xF7B8},
    {0x0000, 0x0009, 0x0008, 0x0007, 0xDF7E, 0xF7EF, 0x7B89, 0x0069},
    {0x0000, 0x0009, 0x0007, 0x000A, 0xDE03, 0xF62A, 0x7B02, 0x0086},
    {0x0000, 0x000A, 0x0007, 0x0006, 0xA5C9, 0xF5B9, 0xA5C9, 0x008E},
    {0x0000, 0x000A, 0x0006, 0x000B, 0xA5C9, 0xF5B9, 0xA5C9, 0x008E},
    {0x0000, 0x000B, 0x0006, 0x0008, 0x7B6E, 0xF661, 0xDF85, 0x0083},
    {0x0000, 0x000B, 0x0008, 0x0009, 0x7B23, 0xF81B, 0xDDFA, 0x0067},
};

Vec3s gGoronCityVaseLidColVertices[] = {
    {   -161,   2041,    279 },
    {    161,   2041,    279 },
    {    322,   2041,      0 },
    {    161,   2041,   -279 },
    {   -161,   2041,   -279 },
    {   -322,   2041,      0 },
    {     15,   2120,    -55 },
    {    -55,   2120,     15 },
    {     40,   2120,     40 },
    {     33,   2041,     33 },
    {    -43,   2041,     12 },
    {     12,   2041,    -43 },
};

CollisionHeader gGoronCityVaseLidCol = { 
    { -322, 2041, -279 },
    { 322, 2120, 279 },
    12, gGoronCityVaseLidColVertices,
    11, gGoronCityVaseLidColPolygons,
    gGoronCityVaseLidColSurfaceType,
    gGoronCityVaseLidColCamDataList,
    0, NULL
};

u8 object_spot18_obj_possiblePadding_000394[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_spot18_objVtx_0003A0[] = {
#include "assets/objects/object_spot18_obj/object_spot18_objVtx_0003A0.vtx.inc"
};

Gfx gGoronCityDoorDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gGoronCityDoorTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot18_objVtx_0003A0, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

u8 object_spot18_obj_possiblePadding_0004B8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gGoronCityDoorColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gGoronCityDoorColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gGoronCityDoorColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x8076, 0xF52E, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x8076, 0xF52E, 0x0000},
    {0x0000, 0x0004, 0x0000, 0x0003, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0004, 0x0003, 0x0005, 0x0000, 0x0000, 0x7FFF, 0x0000},
};

Vec3s gGoronCityDoorColVertices[] = {
    {   -613,      0,      0 },
    {   -601,     14,   -165 },
    {    613,     14,   -165 },
    {    613,      0,      0 },
    {   -613,   1636,      0 },
    {    613,   1636,      0 },
};

CollisionHeader gGoronCityDoorCol = { 
    { -613, 0, -165 },
    { 613, 1636, 0 },
    6, gGoronCityDoorColVertices,
    4, gGoronCityDoorColPolygons,
    gGoronCityDoorColSurfaceType,
    gGoronCityDoorColCamDataList,
    0, NULL
};

u64 gGoronCityVaseTLUT[] = {
#include "assets/objects/object_spot18_obj/vase_tlut.rgba16.inc.c"
};

u64 gGoronCityVaseTex_580[] = {
#include "assets/objects/object_spot18_obj/vase_580.ci4.inc.c"
};

u64 gGoronCityVaseTex_D80[] = {
#include "assets/objects/object_spot18_obj/vase_D80.ci4.inc.c"
};

Vtx object_spot18_objVtx_000F80[] = {
#include "assets/objects/object_spot18_obj/object_spot18_objVtx_000F80.vtx.inc"
};

Gfx gGoronCityVaseDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gGoronCityStatueAngryFaceTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot18_objVtx_000F80, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(4, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gGoronCityStatueNeutralFaceTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot18_objVtx_000F80[5], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(3, 1, 0, 0, 5, 6, 4, 0),
    gsSP1Triangle(5, 4, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gGoronCityStatueHappyFaceTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot18_objVtx_000F80[12], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 4, 3, 0, 7, 6, 3, 0),
    gsSP2Triangles(6, 8, 9, 0, 10, 6, 7, 0),
    gsSP2Triangles(11, 10, 7, 0, 11, 12, 10, 0),
    gsSP2Triangles(13, 14, 12, 0, 13, 12, 11, 0),
    gsSP2Triangles(2, 1, 14, 0, 2, 14, 13, 0),
    gsSP2Triangles(5, 4, 15, 0, 4, 16, 15, 0),
    gsSP2Triangles(9, 16, 4, 0, 6, 9, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(gGoronCityVaseTex_D80, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gGoronCityVaseTLUT),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_spot18_objVtx_000F80[29], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 12, 11, 13, 0),
    gsSP2Triangles(13, 3, 0, 0, 13, 11, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gGoronCityVaseTex_580, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_spot18_objVtx_000F80[43], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 3, 0, 0, 5, 3, 4, 0),
    gsSP2Triangles(6, 5, 4, 0, 7, 5, 6, 0),
    gsSP2Triangles(8, 7, 6, 0, 9, 7, 8, 0),
    gsSP2Triangles(10, 9, 8, 0, 11, 12, 13, 0),
    gsSP2Triangles(2, 1, 12, 0, 2, 12, 11, 0),
    gsSP2Triangles(1, 14, 15, 0, 3, 16, 14, 0),
    gsSP2Triangles(3, 14, 1, 0, 5, 17, 16, 0),
    gsSP2Triangles(5, 16, 3, 0, 7, 18, 17, 0),
    gsSP2Triangles(7, 17, 5, 0, 9, 19, 18, 0),
    gsSP2Triangles(9, 18, 7, 0, 12, 20, 13, 0),
    gsSP2Triangles(15, 20, 12, 0, 1, 15, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gGoronCityVaseTex_D80, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot18_objVtx_000F80[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 7, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 8, 7, 0),
    gsSP2Triangles(12, 19, 13, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 22, 23, 0, 7, 10, 24, 0),
    gsSP2Triangles(15, 25, 16, 0, 2, 1, 26, 0),
    gsSP2Triangles(27, 1, 0, 0, 28, 3, 2, 0),
    gsSP2Triangles(29, 30, 31, 0, 28, 2, 26, 0),
    gsSPVertex(&object_spot18_objVtx_000F80[96], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 10, 0, 7, 9, 22, 0),
    gsSP2Triangles(17, 19, 23, 0, 11, 10, 24, 0),
    gsSP2Triangles(10, 21, 25, 0, 26, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_spot18_objVtx_000F80[128], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 1, 0, 0, 5, 12, 6, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(0, 3, 17, 0, 8, 18, 9, 0),
    gsSPEndDisplayList(),
};

CamData gGoronCityVaseColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gGoronCityVaseColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
    { 0x30000000, 0x000007C0 },
};

CollisionPoly gGoronCityVaseColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x965D, 0x4847, 0x0000, 0xFC89},
    {0x0000, 0x0001, 0x0003, 0x0002, 0xC563, 0x6CA5, 0xDE2D, 0xF9CF},
    {0x0000, 0x0004, 0x0001, 0x0000, 0xC563, 0x6CA5, 0x21D3, 0xF9CF},
    {0x0000, 0x0005, 0x0004, 0x0000, 0xCB2A, 0x4840, 0x5B7E, 0xFC8A},
    {0x0000, 0x0005, 0x0006, 0x0004, 0x0000, 0x6CA4, 0x43AD, 0xF9CF},
    {0x0000, 0x0007, 0x0006, 0x0005, 0x34D6, 0x4840, 0x5B7E, 0xFC8A},
    {0x0000, 0x0007, 0x0008, 0x0006, 0x3A9D, 0x6CA5, 0x21D3, 0xF9CF},
    {0x0000, 0x0009, 0x0008, 0x0007, 0x69A3, 0x4847, 0x0000, 0xFC89},
    {0x0000, 0x0009, 0x000A, 0x0008, 0x3A9D, 0x6CA5, 0xDE2D, 0xF9CF},
    {0x0000, 0x000B, 0x000A, 0x0009, 0x34D6, 0x4840, 0xA482, 0xFC8A},
    {0x0000, 0x0002, 0x0003, 0x000B, 0xCB2A, 0x4840, 0xA482, 0xFC8A},
    {0x0000, 0x0003, 0x000A, 0x000B, 0x0000, 0x6CA4, 0xBC53, 0xF9CF},
    {0x0001, 0x000C, 0x000D, 0x000E, 0x0000, 0x7FFF, 0x0000, 0xFB0C},
    {0x0000, 0x000A, 0x000D, 0x0008, 0x6E24, 0x0E8F, 0xC071, 0x002D},
    {0x0000, 0x0004, 0x0006, 0x000C, 0x0000, 0x0EA4, 0x7F28, 0x002C},
    {0x0000, 0x0003, 0x0001, 0x000E, 0x91DC, 0x0E8F, 0xC071, 0x002D},
    {0x0000, 0x0004, 0x000C, 0x000E, 0x943D, 0x1DA1, 0x3E64, 0xFF37},
    {0x0000, 0x000E, 0x0001, 0x0004, 0x9422, 0x1D8F, 0x3E3F, 0xFF38},
    {0x0000, 0x0003, 0x000E, 0x000D, 0x0000, 0x1DA4, 0x837C, 0xFF37},
    {0x0000, 0x000D, 0x000A, 0x0003, 0x0000, 0x1DA4, 0x837C, 0xFF37},
    {0x0000, 0x0008, 0x000D, 0x000C, 0x6BC7, 0x1D8F, 0x3E66, 0xFF38},
    {0x0000, 0x0006, 0x0008, 0x000C, 0x6BDA, 0x1DA1, 0x3E3D, 0xFF37},
    {0x0000, 0x000B, 0x000F, 0x0010, 0x0000, 0x2B13, 0x7888, 0xFB78},
    {0x0000, 0x0009, 0x0011, 0x000F, 0x97A6, 0x2B20, 0x3C48, 0xFB77},
    {0x0000, 0x0009, 0x000F, 0x000B, 0xC83A, 0x3ED0, 0x6094, 0xFA82},
    {0x0000, 0x0007, 0x0012, 0x0011, 0x97A6, 0x2B20, 0xC3B8, 0xFB77},
    {0x0000, 0x0007, 0x0011, 0x0009, 0x9080, 0x3EDA, 0x0000, 0xFA81},
    {0x0000, 0x0005, 0x0013, 0x0012, 0x0000, 0x2B13, 0x8778, 0xFB78},
    {0x0000, 0x0005, 0x0012, 0x0007, 0xC83A, 0x3ED0, 0x9F6C, 0xFA82},
    {0x0000, 0x0000, 0x0014, 0x0013, 0x685A, 0x2B20, 0xC3B8, 0xFB77},
    {0x0000, 0x0000, 0x0013, 0x0005, 0x37C6, 0x3ED0, 0x9F6C, 0xFA82},
    {0x0000, 0x0002, 0x0014, 0x0000, 0x6F80, 0x3EDA, 0x0000, 0xFA81},
    {0x0000, 0x0010, 0x0014, 0x0002, 0x685A, 0x2B20, 0x3C48, 0xFB77},
    {0x0000, 0x000B, 0x0010, 0x0002, 0x37C6, 0x3ED0, 0x6094, 0xFA82},
    {0x0000, 0x000F, 0x0015, 0x0010, 0x0000, 0xECBD, 0x7E8A, 0xFDBD},
    {0x0000, 0x0016, 0x0015, 0x000F, 0xC2E7, 0xDA32, 0x69EE, 0xFE1B},
    {0x0000, 0x0011, 0x0016, 0x000F, 0x926D, 0xECC0, 0x3F4C, 0xFDBC},
    {0x0000, 0x0017, 0x0016, 0x0011, 0x85B7, 0xDA32, 0x0000, 0xFE1B},
    {0x0000, 0x0012, 0x0017, 0x0011, 0x926D, 0xECC0, 0xC0B4, 0xFDBC},
    {0x0000, 0x0018, 0x0017, 0x0012, 0xC2E7, 0xDA32, 0x9612, 0xFE1B},
    {0x0000, 0x0013, 0x0018, 0x0012, 0x0000, 0xECBD, 0x8176, 0xFDBD},
    {0x0000, 0x0019, 0x0018, 0x0013, 0x3D19, 0xDA32, 0x9612, 0xFE1B},
    {0x0000, 0x0014, 0x0019, 0x0013, 0x6D93, 0xECC0, 0xC0B4, 0xFDBC},
    {0x0000, 0x0014, 0x001A, 0x0019, 0x7A49, 0xDA32, 0x0000, 0xFE1B},
    {0x0000, 0x0010, 0x0015, 0x001A, 0x3D19, 0xDA32, 0x69EE, 0xFE1B},
    {0x0000, 0x0010, 0x001A, 0x0014, 0x6D93, 0xECC0, 0x3F4C, 0xFDBC},
    {0x0000, 0x001B, 0x001C, 0x001D, 0x8BF6, 0xE9D0, 0x3141, 0xFF59},
    {0x0000, 0x001E, 0x001B, 0x001D, 0x740A, 0xE9D0, 0x3141, 0xFF59},
    {0x0000, 0x001C, 0x001B, 0x001F, 0x856D, 0x24C8, 0x026F, 0xFDB0},
    {0x0000, 0x001B, 0x001E, 0x001F, 0x7A93, 0x24C8, 0x026F, 0xFDB0},
    {0x0000, 0x0020, 0x0021, 0x0022, 0xC08D, 0x24CE, 0x68E5, 0xFDB0},
    {0x0000, 0x0023, 0x0020, 0x0022, 0x3B3C, 0x24CC, 0x94AB, 0xFDB0},
    {0x0000, 0x0021, 0x0020, 0x0024, 0x9B43, 0xE9D9, 0x4BCB, 0xFF58},
    {0x0000, 0x0020, 0x0023, 0x0024, 0x0F4C, 0xE9BD, 0x82E3, 0xFF5A},
    {0x0000, 0x0025, 0x0026, 0x0027, 0x64BD, 0xE9D9, 0x4BCB, 0xFF58},
    {0x0000, 0x0028, 0x0025, 0x0027, 0xF0B4, 0xE9BD, 0x82E3, 0xFF5A},
    {0x0000, 0x0026, 0x0025, 0x0029, 0x3F73, 0x24CE, 0x68E5, 0xFDB0},
    {0x0000, 0x0025, 0x0028, 0x0029, 0xC4C4, 0x24CC, 0x94AB, 0xFDB0},
};

Vec3s gGoronCityVaseColVertices[] = {
    {    400,   2155,   -231 },
    {    322,   2041,      0 },
    {    400,   2155,    231 },
    {    161,   2041,    279 },
    {    161,   2041,   -279 },
    {      0,   2155,   -462 },
    {   -161,   2041,   -279 },
    {   -400,   2155,   -231 },
    {   -322,   2041,      0 },
    {   -400,   2155,    231 },
    {   -161,   2041,    279 },
    {      0,   2155,    462 },
    {      0,   1268,   -190 },
    {   -165,   1268,     95 },
    {    165,   1268,     95 },
    {   -450,   1268,    779 },
    {    450,   1268,    779 },
    {   -900,   1268,      0 },
    {   -450,   1268,   -779 },
    {    450,   1268,   -779 },
    {    900,   1268,      0 },
    {      0,      0,    586 },
    {   -508,      0,    293 },
    {   -508,      0,   -293 },
    {      0,      0,   -586 },
    {    508,      0,   -293 },
    {    508,      0,    293 },
    {      0,   1972,   1322 },
    {   -165,   1463,    704 },
    {      0,    509,    663 },
    {    165,   1463,    704 },
    {      0,   2041,    279 },
    {  -1144,   1972,   -661 },
    {   -692,   1463,   -209 },
    {   -241,   2041,   -139 },
    {   -527,   1463,   -495 },
    {   -574,    509,   -331 },
    {   1144,   1972,   -661 },
    {    692,   1463,   -209 },
    {    574,    509,   -331 },
    {    527,   1463,   -495 },
    {    241,   2041,   -139 },
};

CollisionHeader gGoronCityVaseCol = { 
    { -1144, 0, -820 },
    { 1144, 2155, 1322 },
    42, gGoronCityVaseColVertices,
    58, gGoronCityVaseColPolygons,
    gGoronCityVaseColSurfaceType,
    gGoronCityVaseColCamDataList,
    0, NULL
};

Vtx object_spot18_objVtx_002180[] = {
#include "assets/objects/object_spot18_obj/object_spot18_objVtx_002180.vtx.inc"
};

Gfx gGoronCityStatueSpearDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gGoronCitySpearHandleTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot18_objVtx_002180, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gGoronCitySpearTipTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot18_objVtx_002180[8], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 6, 5, 15, 0),
    gsSP1Triangle(16, 17, 18, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gGoronCitySpearLeafTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_spot18_objVtx_002180[27], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 object_spot18_obj_possiblePadding_0024E8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gGoronCityStatueSpearColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gGoronCityStatueSpearColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gGoronCityStatueSpearColPolygons[] = {
    {0x0000, 0x8000, 0x0001, 0x0002, 0x0000, 0x7FEF, 0xFBFC, 0xFE2E},
    {0x0000, 0x8000, 0x0002, 0x0003, 0x0000, 0x7FEF, 0xFBFC, 0xFE2E},
    {0x0000, 0x8001, 0x0004, 0x0005, 0x0000, 0x76F9, 0xD0CC, 0xFF5A},
    {0x0000, 0x8001, 0x0005, 0x0002, 0x0000, 0x76F9, 0xD0CC, 0xFF5A},
    {0x0000, 0x8006, 0x0001, 0x0007, 0x7FFF, 0x0000, 0x0000, 0xFE51},
    {0x0000, 0x8001, 0x0000, 0x0007, 0x7FFF, 0x0000, 0x0000, 0xFE51},
    {0x0000, 0x8006, 0x0004, 0x0001, 0x7FFF, 0x0000, 0x0000, 0xFE51},
    {0x0000, 0x8008, 0x0005, 0x0004, 0x0000, 0x0000, 0x8001, 0x00AD},
    {0x0000, 0x8008, 0x0004, 0x0006, 0x0000, 0x0000, 0x8001, 0x00AD},
    {0x0000, 0x8009, 0x0002, 0x0008, 0x8001, 0x0000, 0x0000, 0x00E7},
    {0x0000, 0x8009, 0x0003, 0x0002, 0x8001, 0x0000, 0x0000, 0x00E7},
    {0x0000, 0x8002, 0x0005, 0x0008, 0x8001, 0x0000, 0x0000, 0x00E7},
    {0x0000, 0x8007, 0x0000, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFC0D},
    {0x0000, 0x8007, 0x0003, 0x0009, 0x0000, 0x0000, 0x7FFF, 0xFC0D},
};

Vec3s gGoronCityStatueSpearColVertices[] = {
    {    431,    498,   1011 },
    {    431,    491,    788 },
    {    231,    491,    788 },
    {    231,    498,   1011 },
    {    431,    247,    173 },
    {    231,    247,    173 },
    {    431,      0,    173 },
    {    431,      0,   1011 },
    {    231,      0,    173 },
    {    231,      0,   1011 },
};

CollisionHeader gGoronCityStatueSpearCol = { 
    { 231, 0, 161 },
    { 431, 502, 1011 },
    10, gGoronCityStatueSpearColVertices,
    14, gGoronCityStatueSpearColPolygons,
    gGoronCityStatueSpearColSurfaceType,
    gGoronCityStatueSpearColCamDataList,
    0, NULL
};

u8 object_spot18_obj_possiblePadding_002648[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_spot18_objVtx_002650[] = {
#include "assets/objects/object_spot18_obj/object_spot18_objVtx_002650.vtx.inc"
};

Gfx gGoronCityStatueDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gGoronCityStatueTex_7010, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 247, 245, 241, 255),
    gsSPVertex(object_spot18_objVtx_002650, 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 1, 0),
    gsSP2Triangles(5, 6, 2, 0, 5, 2, 1, 0),
    gsSP2Triangles(4, 7, 8, 0, 4, 8, 5, 0),
    gsSP2Triangles(8, 9, 6, 0, 8, 6, 5, 0),
    gsSP2Triangles(7, 10, 11, 0, 7, 11, 12, 0),
    gsSP2Triangles(11, 13, 9, 0, 11, 9, 12, 0),
    gsSP2Triangles(14, 15, 10, 0, 14, 16, 15, 0),
    gsSP2Triangles(16, 13, 15, 0, 17, 18, 19, 0),
    gsSP1Triangle(17, 19, 20, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_spot18_objVtx_002650[21], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 1, 0, 0, 5, 0, 6, 0),
    gsSP2Triangles(7, 5, 6, 0, 7, 6, 8, 0),
    gsSP2Triangles(9, 4, 3, 0, 9, 3, 10, 0),
    gsSP2Triangles(11, 9, 10, 0, 11, 10, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 18, 14, 0, 17, 14, 13, 0),
    gsSP2Triangles(19, 7, 20, 0, 21, 19, 20, 0),
    gsSP2Triangles(22, 23, 19, 0, 22, 19, 21, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_spot18_objVtx_002650[53], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(1, 4, 5, 0, 4, 6, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gGoronCityStatuePattern2Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot18_objVtx_002650[60], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(4, 7, 10, 0, 4, 10, 11, 0),
    gsSP2Triangles(12, 4, 11, 0, 12, 11, 13, 0),
    gsSP2Triangles(0, 14, 1, 0, 3, 15, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gGoronCityStatuePattern1Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot18_objVtx_002650[76], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 7, 6, 5, 0),
    gsSP2Triangles(5, 4, 8, 0, 5, 8, 9, 0),
    gsSP2Triangles(10, 7, 5, 0, 10, 5, 9, 0),
    gsSPEndDisplayList(),
};

CamData gGoronCityStatueColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gGoronCityStatueColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
    { 0x00E00000, 0x000007C0 },
};

CollisionPoly gGoronCityStatueColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x8001, 0x0000, 0x0333},
    {0x0000, 0x0001, 0x0003, 0x0004, 0x7D40, 0x0000, 0x1A61, 0xFE5A},
    {0x0001, 0x0000, 0x0005, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFEAD},
    {0x0001, 0x0000, 0x0003, 0x0001, 0x0000, 0x0000, 0x7FFF, 0xFEAD},
    {0x0000, 0x0006, 0x0005, 0x0000, 0x8272, 0x0000, 0x18E2, 0xFE5A},
    {0x0000, 0x0007, 0x0008, 0x0009, 0x58DE, 0x5A32, 0x12B8, 0xFB7A},
    {0x0000, 0x000A, 0x0007, 0x0009, 0xFF6A, 0x47A7, 0x6A0F, 0xFC3F},
    {0x0000, 0x000B, 0x000A, 0x0009, 0xA6F2, 0x5A33, 0x11C7, 0xFB7B},
    {0x0000, 0x0004, 0x0008, 0x0007, 0x7D40, 0x0000, 0x1A61, 0xFE5A},
    {0x0000, 0x0004, 0x0007, 0x0001, 0x7D40, 0x0000, 0x1A61, 0xFE5A},
    {0x0000, 0x0007, 0x000A, 0x000C, 0xFF9B, 0x6A2A, 0x477F, 0xFB51},
    {0x0000, 0x000C, 0x000A, 0x0000, 0xDE0B, 0x013D, 0x7B67, 0xFE51},
    {0x0000, 0x000C, 0x0000, 0x0002, 0xDF1B, 0x0000, 0x7BB2, 0xFE5B},
    {0x0000, 0x0001, 0x0007, 0x000C, 0x20CF, 0x0000, 0x7BB8, 0xFE5C},
    {0x0000, 0x0001, 0x000C, 0x0002, 0x20CF, 0x0000, 0x7BB8, 0xFE5C},
    {0x0000, 0x0000, 0x000A, 0x000B, 0x827B, 0x0040, 0x190F, 0xFE58},
    {0x0000, 0x0000, 0x000B, 0x0006, 0x8272, 0x0000, 0x18E2, 0xFE5A},
    {0x0000, 0x0009, 0x000D, 0x000B, 0xE03C, 0x5B18, 0xABE2, 0xFB9D},
    {0x0000, 0x0009, 0x0008, 0x000D, 0x2070, 0x5B1C, 0xAC28, 0xFB9D},
    {0x0000, 0x0008, 0x0004, 0x000E, 0x2E2F, 0x0000, 0x88A0, 0xFE94},
    {0x0000, 0x0008, 0x000E, 0x000D, 0x2E2F, 0x0000, 0x88A0, 0xFE94},
    {0x0000, 0x000E, 0x0006, 0x000B, 0xD2C8, 0x0000, 0x8842, 0xFE94},
    {0x0000, 0x000E, 0x000B, 0x000D, 0xD2C8, 0x0000, 0x8842, 0xFE94},
};

Vec3s gGoronCityStatueColVertices[] = {
    {   -363,    819,    339 },
    {    360,    819,    339 },
    {     -2,    819,    435 },
    {    360,      0,    339 },
    {    475,      0,   -207 },
    {   -363,      0,    339 },
    {   -472,      0,   -211 },
    {    360,   1218,    339 },
    {    475,   1218,   -207 },
    {      0,   1631,     58 },
    {   -363,   1218,    335 },
    {   -472,   1218,   -211 },
    {     -2,   1152,    435 },
    {      2,   1218,   -390 },
    {      2,      0,   -390 },
};

CollisionHeader gGoronCityStatueCol = { 
    { -472, 0, -390 },
    { 475, 1631, 435 },
    15, gGoronCityStatueColVertices,
    23, gGoronCityStatueColPolygons,
    gGoronCityStatueColSurfaceType,
    gGoronCityStatueColCamDataList,
    0, NULL
};

u64 gGoronCitySpearLeafTex[] = {
#include "assets/objects/object_spot18_obj/spear_leaf.rgba16.inc.c"
};

u64 gGoronCitySpearTipTex[] = {
#include "assets/objects/object_spot18_obj/spear_tip.rgba16.inc.c"
};

u64 gGoronCitySpearHandleTex[] = {
#include "assets/objects/object_spot18_obj/spear_handle.rgba16.inc.c"
};

u64 gGoronCityStatuePattern1Tex[] = {
#include "assets/objects/object_spot18_obj/statue_pattern_1.rgba16.inc.c"
};

u64 gGoronCityStatuePattern2Tex[] = {
#include "assets/objects/object_spot18_obj/statue_pattern_2.rgba16.inc.c"
};

u64 gGoronCityStatueTex_7010[] = {
#include "assets/objects/object_spot18_obj/statue_7010.rgba16.inc.c"
};

u64 gGoronCityStatueAngryFaceTex[] = {
#include "assets/objects/object_spot18_obj/statue_angry_face.rgba16.inc.c"
};

u64 gGoronCityStatueNeutralFaceTex[] = {
#include "assets/objects/object_spot18_obj/statue_neutral_face.rgba16.inc.c"
};

u64 gGoronCityStatueHappyFaceTex[] = {
#include "assets/objects/object_spot18_obj/statue_happy_face.rgba16.inc.c"
};

u64 gGoronCityVaseLidTex[] = {
#include "assets/objects/object_spot18_obj/vase_lid.rgba16.inc.c"
};

u64 gGoronCityVaseLidHandleTex[] = {
#include "assets/objects/object_spot18_obj/vase_lid_handle.rgba16.inc.c"
};

u64 gGoronCityDoorTex[] = {
#include "assets/objects/object_spot18_obj/door.rgba16.inc.c"
};

