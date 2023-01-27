#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_spot08_obj.h"

u64 gZorasFountainIceRampTLUT[] = {
#include "assets/objects/object_spot08_obj/ice_ramp_tlut.rgba16.inc.c"
};

u64 gZorasFountainIceRampLowerSideTex[] = {
#include "assets/objects/object_spot08_obj/ice_ramp_lower_side.ci4.inc.c"
};

Vtx object_spot08_objVtx_000820[] = {
#include "assets/objects/object_spot08_obj/object_spot08_objVtx_000820.vtx.inc"
};

Gfx gZorasFountainIceRampDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gZorasFountainIceRampSurfaceTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 250, 220, 200, 255),
    gsSPVertex(object_spot08_objVtx_000820, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gZorasFountainIceRampUpperSideTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot08_objVtx_000820[10], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gZorasFountainIceRampMiddleSlopeTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot08_objVtx_000820[13], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gZorasFountainIceRampSurfaceTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot08_objVtx_000820[19], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 4, 5, 2, 0),
    gsSP1Triangle(5, 6, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(gZorasFountainIceRampLowerSideTex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gZorasFountainIceRampTLUT),
    gsSPVertex(&object_spot08_objVtx_000820[26], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gZorasFountainIceRampUpperSideTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot08_objVtx_000820[29], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(gZorasFountainIceRampLowerSideTex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gZorasFountainIceRampTLUT),
    gsSPVertex(&object_spot08_objVtx_000820[32], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 6, 7, 0, 0),
    gsSP1Triangle(8, 6, 9, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gZorasFountainIceRampUpperSideTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot08_objVtx_000820[42], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(gZorasFountainIceRampLowerSideTex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gZorasFountainIceRampTLUT),
    gsSPVertex(&object_spot08_objVtx_000820[50], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gZorasFountainIceRampUpperSideTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot08_objVtx_000820[54], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(gZorasFountainIceRampLowerSideTex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gZorasFountainIceRampTLUT),
    gsSPVertex(&object_spot08_objVtx_000820[58], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gZorasFountainIceRampUpperSideTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot08_objVtx_000820[61], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(gZorasFountainIceRampLowerSideTex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gZorasFountainIceRampTLUT),
    gsSPVertex(&object_spot08_objVtx_000820[65], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 1, 0, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gZorasFountainIceRampUpperSideTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot08_objVtx_000820[71], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP1Triangle(0, 5, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(gZorasFountainIceRampLowerSideTex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gZorasFountainIceRampTLUT),
    gsSPVertex(&object_spot08_objVtx_000820[77], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(3, 0, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gZorasFountainIceRampSurfaceTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot08_objVtx_000820[82], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gZorasFountainIcebergUndersideTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 8, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 6, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot08_objVtx_000820[87], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(1, 4, 3, 0),
    gsSPEndDisplayList(),
};

CamData gZorasFountainIceRampColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gZorasFountainIceRampColSurfaceType[] = {
    { 0x0000A000, 0x000007CC },
    { 0x00000000, 0x000007CC },
};

CollisionPoly gZorasFountainIceRampColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x2D40, 0x773B, 0xF50F, 0xFE0A},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x30D0, 0x747B, 0xEB33, 0xFD89},
    {0x0000, 0x0004, 0x0005, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xFA72},
    {0x0000, 0x0004, 0x0006, 0x0007, 0x0000, 0x7FFF, 0x0000, 0xFA72},
    {0x0000, 0x0006, 0x0008, 0x0009, 0xEA10, 0x7E1A, 0xFF94, 0xFC0D},
    {0x0000, 0x0006, 0x0009, 0x0007, 0xE7AD, 0x7D9D, 0xFC71, 0xFC36},
    {0x0001, 0x0005, 0x0000, 0x0006, 0xEF60, 0x0ABF, 0x818B, 0xFFA3},
    {0x0001, 0x0000, 0x0003, 0x0006, 0x0F8C, 0x1313, 0x8264, 0xFD0B},
    {0x0000, 0x0003, 0x0008, 0x0006, 0xEF43, 0x507B, 0x9DE4, 0xFCDB},
    {0x0000, 0x0002, 0x000A, 0x0008, 0x035A, 0x7D30, 0xE58B, 0xFC66},
    {0x0000, 0x000A, 0x000B, 0x0008, 0xFA37, 0x7E76, 0xED18, 0xFC3C},
    {0x0000, 0x000B, 0x000C, 0x0008, 0xF1DF, 0x7F14, 0xFA24, 0xFC23},
    {0x0000, 0x000C, 0x000D, 0x0008, 0xF0E9, 0x7EF3, 0x0642, 0xFC31},
    {0x0000, 0x000D, 0x000E, 0x0008, 0xF762, 0x7E01, 0x14C9, 0xFC6D},
    {0x0001, 0x000F, 0x0010, 0x000E, 0xA6DD, 0xE6B7, 0x584F, 0xF8E5},
    {0x0001, 0x0010, 0x0009, 0x000E, 0xD386, 0x22D9, 0x72D9, 0xF8F6},
    {0x0001, 0x0011, 0x000F, 0x000E, 0x9F68, 0xE2E8, 0x4EC8, 0xF8F3},
    {0x0001, 0x0011, 0x000E, 0x000D, 0xD267, 0xD0F6, 0x6DF6, 0xFAA4},
    {0x0001, 0x0011, 0x000D, 0x000C, 0x909F, 0xD50E, 0x2E30, 0xF680},
    {0x0001, 0x0011, 0x000C, 0x000B, 0x909F, 0xD50E, 0xD1D0, 0xF560},
    {0x0001, 0x0011, 0x000B, 0x000A, 0xC1C7, 0xCFB7, 0x9B1B, 0xF704},
    {0x0001, 0x000A, 0x0012, 0x0011, 0x9DE6, 0xD9A0, 0xB74B, 0xF634},
    {0x0001, 0x0012, 0x000A, 0x0013, 0xBDE3, 0xE75C, 0x9535, 0xF5FF},
    {0x0001, 0x000A, 0x0002, 0x0013, 0xFB7A, 0x2D05, 0x8845, 0xF7E5},
    {0x0001, 0x0007, 0x0009, 0x0014, 0x12DC, 0x36D0, 0x721E, 0xF8B0},
    {0x0001, 0x0009, 0x0010, 0x0014, 0x0000, 0x1C47, 0x7CD5, 0xF8E0},
    {0x0001, 0x0010, 0x000F, 0x0014, 0x0000, 0xEDF1, 0x7EB7, 0xF7F3},
    {0x0001, 0x000F, 0x0015, 0x0014, 0x2D94, 0xCADA, 0x6B26, 0xF562},
    {0x0001, 0x0004, 0x0014, 0x0016, 0x30A8, 0x2071, 0x71DB, 0xF641},
    {0x0001, 0x0004, 0x0007, 0x0014, 0x158E, 0x36D5, 0x71A1, 0xF888},
    {0x0001, 0x0014, 0x0015, 0x0016, 0x2DC3, 0xCAE1, 0x6B16, 0xF560},
    {0x0000, 0x0001, 0x0017, 0x0002, 0x19B1, 0x5110, 0xA055, 0xF936},
    {0x0001, 0x0017, 0x0013, 0x0002, 0xF81F, 0x2E08, 0x88D4, 0xF7DD},
    {0x0001, 0x0001, 0x0018, 0x0017, 0x210D, 0xF406, 0x84ED, 0xF53D},
    {0x0001, 0x0018, 0x0012, 0x0017, 0x0409, 0xE649, 0x82AE, 0xF5C2},
    {0x0001, 0x0012, 0x0013, 0x0017, 0xF7A7, 0xECD1, 0x81BA, 0xF632},
    {0x0001, 0x0018, 0x0001, 0x0000, 0x7A7F, 0xE9A1, 0xE260, 0xF4AE},
    {0x0001, 0x0019, 0x0004, 0x0016, 0x78DA, 0xE0B3, 0x1C41, 0xF246},
    {0x0001, 0x0019, 0x0005, 0x0004, 0x7E5E, 0xEBA6, 0x0000, 0xF1C3},
    {0x0001, 0x0019, 0x0000, 0x0005, 0x37A4, 0xE1EF, 0x90B8, 0xF8FC},
    {0x0001, 0x0015, 0x0019, 0x0016, 0x736A, 0xCFAE, 0x1AFB, 0xF292},
    {0x0001, 0x0015, 0x0000, 0x0019, 0x3450, 0xCC0B, 0x9760, 0xF8FE},
    {0x0001, 0x0000, 0x0015, 0x0018, 0x7AE8, 0xE10B, 0xEE24, 0xF4AE},
    {0x0000, 0x0008, 0x0003, 0x0002, 0x30FE, 0x7463, 0xEB1C, 0xFD88},
    {0x0000, 0x0008, 0x000E, 0x0009, 0xDE72, 0x7B7E, 0x029B, 0xFBEC},
    {0x0001, 0x0011, 0x0012, 0x000F, 0xD8B1, 0x8645, 0x045E, 0xF328},
    {0x0001, 0x0012, 0x0015, 0x000F, 0x0000, 0x8001, 0x0000, 0xF2CE},
    {0x0001, 0x0012, 0x0018, 0x0015, 0x1EC4, 0x87FA, 0xDFE5, 0xF21B},
};

Vec3s gZorasFountainIceRampColVertices[] = {
    {   2800,   -571,   -511 },
    {   2400,   -571,  -2165 },
    {   -469,    533,  -2000 },
    {    180,    498,   -673 },
    {   3921,   1422,    724 },
    {   3921,   1422,   -489 },
    {   2278,   1422,   -273 },
    {   2081,   1422,   1073 },
    {   -615,    919,   -192 },
    {   -156,   1005,   1643 },
    {  -2085,    594,  -1916 },
    {  -2731,    622,  -1531 },
    {  -3200,    622,   -400 },
    {  -2731,    622,    731 },
    {  -1600,    622,   1200 },
    {    -69,  -3378,   1600 },
    {   -469,   -571,   2000 },
    {  -1852,  -2874,   -400 },
    {   -469,  -3378,  -2000 },
    {   -869,   -571,  -2400 },
    {   2264,   -571,   2000 },
    {   2256,  -3378,    611 },
    {   3200,   -571,   1600 },
    {   1052,   -571,  -2527 },
    {   2034,  -2722,  -2054 },
    {   3600,   -571,   -111 },
};

CollisionHeader gZorasFountainIceRampCol = { 
    { -3200, -3378, -2527 },
    { 3921, 1422, 2000 },
    26, gZorasFountainIceRampColVertices,
    48, gZorasFountainIceRampColPolygons,
    gZorasFountainIceRampColSurfaceType,
    gZorasFountainIceRampColCamDataList,
    0, NULL
};

u64 gZorasFountainIceberg1TLUT[] = {
#include "assets/objects/object_spot08_obj/iceberg_tlut_1.rgba16.inc.c"
};

u64 gZorasFountainIceberg2TLUT[] = {
#include "assets/objects/object_spot08_obj/iceberg_tlut_2.rgba16.inc.c"
};

u64 gZorasFountainIcebergSideTex[] = {
#include "assets/objects/object_spot08_obj/iceberg_side.ci4.inc.c"
};

u64 gZorasFountainIcebergTopTex[] = {
#include "assets/objects/object_spot08_obj/iceberg_top.ci4.inc.c"
};

Vtx object_spot08_objVtx_002970[] = {
#include "assets/objects/object_spot08_obj/object_spot08_objVtx_002970.vtx.inc"
};

Gfx gZorasFountainIcebergDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gZorasFountainIcebergUndersideTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 8, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 6, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 250, 220, 200, 255),
    gsSPVertex(object_spot08_objVtx_002970, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(gZorasFountainIcebergSideTex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gZorasFountainIceberg1TLUT),
    gsSPVertex(&object_spot08_objVtx_002970[3], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(2, 4, 3, 0, 4, 5, 3, 0),
    gsSP2Triangles(4, 6, 5, 0, 7, 5, 6, 0),
    gsSP2Triangles(6, 8, 7, 0, 9, 10, 11, 0),
    gsSP2Triangles(10, 9, 12, 0, 12, 13, 10, 0),
    gsSP2Triangles(13, 12, 1, 0, 1, 0, 13, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gZorasFountainIcebergUndersideTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 8, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 6, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot08_objVtx_002970[17], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP1Triangle(12, 13, 14, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(gZorasFountainIcebergTopTex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gZorasFountainIceberg2TLUT),
    gsSPVertex(&object_spot08_objVtx_002970[32], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPEndDisplayList(),
};

u8 object_spot08_obj_possiblePadding_002E08[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gZorasFountainIcebergColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gZorasFountainIcebergColSurfaceType[] = {
    { 0x00000000, 0x000007CC },
    { 0x0000A000, 0x000007CC },
};

CollisionPoly gZorasFountainIcebergColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x7FFF, 0x0000, 0x009A, 0xFA43},
    {0x0000, 0x0002, 0x0003, 0x0000, 0x69E7, 0xDB36, 0x3DC2, 0xF9D2},
    {0x0000, 0x0002, 0x0004, 0x0003, 0x3F77, 0x0010, 0x6F28, 0xFA43},
    {0x0000, 0x0004, 0x0005, 0x0003, 0xFF6A, 0xDB3A, 0x7A99, 0xF9D3},
    {0x0000, 0x0004, 0x0006, 0x0005, 0xBF8A, 0xFFFA, 0x6E94, 0xFA43},
    {0x0000, 0x0007, 0x0005, 0x0006, 0x9592, 0xDB23, 0x3CCE, 0xF9D2},
    {0x0000, 0x0006, 0x0008, 0x0007, 0x8001, 0x0000, 0xFF66, 0xFA43},
    {0x0000, 0x0008, 0x0009, 0x0007, 0x9619, 0xDB36, 0xC23E, 0xF9D2},
    {0x0000, 0x0009, 0x0008, 0x000A, 0xC089, 0x0010, 0x90D8, 0xFA43},
    {0x0000, 0x000A, 0x000B, 0x0009, 0x0096, 0xDB3A, 0x8567, 0xF9D3},
    {0x0000, 0x000B, 0x000A, 0x0001, 0x4076, 0xFFFA, 0x916C, 0xFA43},
    {0x0000, 0x0001, 0x0000, 0x000B, 0x6A6E, 0xDB23, 0xC332, 0xF9D2},
    {0x0000, 0x0005, 0x000C, 0x0003, 0xFFB3, 0x90B6, 0x3F3B, 0xF942},
    {0x0000, 0x0007, 0x000C, 0x0005, 0xC915, 0x90B9, 0x1F60, 0xF942},
    {0x0000, 0x0009, 0x000C, 0x0007, 0xC961, 0x90B6, 0xE026, 0xF942},
    {0x0000, 0x000B, 0x000C, 0x0009, 0x004D, 0x90B6, 0xC0C5, 0xF942},
    {0x0000, 0x0000, 0x000C, 0x000B, 0x36EB, 0x90B9, 0xE0A0, 0xF942},
    {0x0000, 0x0003, 0x000C, 0x0000, 0x369F, 0x90B6, 0x1FDA, 0xF942},
    {0x0001, 0x0001, 0x000A, 0x0008, 0x0000, 0x7FFF, 0x0000, 0xFF6A},
    {0x0001, 0x0001, 0x0008, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xFF6A},
    {0x0001, 0x0001, 0x0006, 0x0004, 0x0000, 0x7FFF, 0x0000, 0xFF6A},
    {0x0001, 0x0001, 0x0004, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFF6A},
};

Vec3s gZorasFountainIcebergColVertices[] = {
    {   1469,  -1262,      7 },
    {   1473,    150,   -842 },
    {   1465,    150,    855 },
    {    729,  -1262,   1276 },
    {     -8,    150,   1696 },
    {   -740,  -1262,   1269 },
    {  -1473,    150,    842 },
    {  -1469,  -1262,     -7 },
    {  -1465,    150,   -855 },
    {   -729,  -1262,  -1276 },
    {      8,    150,  -1696 },
    {    740,  -1262,  -1269 },
    {      0,  -1985,      0 },
};

CollisionHeader gZorasFountainIcebergCol = { 
    { -1473, -1985, -1696 },
    { 1473, 150, 1696 },
    13, gZorasFountainIcebergColVertices,
    22, gZorasFountainIcebergColPolygons,
    gZorasFountainIcebergColSurfaceType,
    gZorasFountainIcebergColCamDataList,
    0, NULL
};

u8 object_spot08_obj_possiblePadding_003004[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gZorasFountainBombableWallTLUT[] = {
#include "assets/objects/object_spot08_obj/bombable_wall_tlut.rgba16.inc.c"
};

u8 object_spot08_obj_possiblePadding_003030[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gZorasFountainBombableWallTex[] = {
#include "assets/objects/object_spot08_obj/bombable_wall.ci4.inc.c"
};

Vtx object_spot08_objVtx_003838[] = {
#include "assets/objects/object_spot08_obj/object_spot08_objVtx_003838.vtx.inc"
};

Gfx gZorasFountainBombableWallDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gZorasFountainBombableWallTex, G_IM_FMT_CI, 128, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 7, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gZorasFountainBombableWallTLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot08_objVtx_003838, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 5, 1, 0),
    gsSPEndDisplayList(),
};

CamData gZorasFountainBombableWallColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gZorasFountainBombableWallColSurfaceType[] = {
    { 0x00000000, 0x000007CB },
};

CollisionPoly gZorasFountainBombableWallColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0C88, 0x19A5, 0x833A, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0C88, 0x19A5, 0x833A, 0x0000},
    {0x0000, 0x0000, 0x0003, 0x0004, 0x230A, 0x0000, 0x84E5, 0x0029},
    {0x0000, 0x0000, 0x0005, 0x0001, 0xEE14, 0x0000, 0x8144, 0x0037},
};

Vec3s gZorasFountainBombableWallColVertices[] = {
    {     31,    233,     51 },
    {    229,      0,     23 },
    {      0,      0,      0 },
    {   -229,      0,    -23 },
    {   -229,    149,    -23 },
    {    229,    149,     23 },
};

CollisionHeader gZorasFountainBombableWallCol = { 
    { -229, 0, -23 },
    { 229, 233, 51 },
    6, gZorasFountainBombableWallColVertices,
    4, gZorasFountainBombableWallColPolygons,
    gZorasFountainBombableWallColSurfaceType,
    gZorasFountainBombableWallColCamDataList,
    0, NULL
};

u64 gZorasFountainIcebergUndersideTex[] = {
#include "assets/objects/object_spot08_obj/iceberg_underside.rgba16.inc.c"
};

u64 gZorasFountainIceRampSurfaceTex[] = {
#include "assets/objects/object_spot08_obj/ice_ramp_surface.rgba16.inc.c"
};

u64 gZorasFountainIceRampUpperSideTex[] = {
#include "assets/objects/object_spot08_obj/ice_ramp_upper_side.rgba16.inc.c"
};

u64 gZorasFountainIceRampMiddleSlopeTex[] = {
#include "assets/objects/object_spot08_obj/ice_ramp_middle_slope.rgba16.inc.c"
};

