#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_demo_kekkai.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

u64 object_demo_kekkaiTex_000000[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiTex_000000.i8.inc.c"
};

u64 object_demo_kekkaiTex_000800[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiTex_000800.i8.inc.c"
};

u64 object_demo_kekkaiTex_001000[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiTex_001000.rgba16.inc.c"
};

Vtx object_demo_kekkaiVtx_002000[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiVtx_002000.vtx.inc"
};

Gfx gGanonsCastleDoorDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_demo_kekkaiTex_001000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_demo_kekkaiVtx_002000, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(5, 8, 9, 0, 6, 5, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 3, 0),
    gsSPEndDisplayList(),
};

Vtx object_demo_kekkaiVtx_002180[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiVtx_002180.vtx.inc"
};

Gfx gSpiritTrialLightSourceDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_demo_kekkaiVtx_002180, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_demo_kekkaiTex_006140, G_IM_FMT_IA, G_IM_SIZ_16b, 8, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 153),
    gsSPVertex(&object_demo_kekkaiVtx_002180[8], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0),
    gsSP2Triangles(17, 16, 1, 0, 17, 1, 0, 0),
    gsSPEndDisplayList(),
};

u8 object_demo_kekkai_possiblePadding_002448[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_demo_kekkaiTex_002450[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiTex_002450.rgba16.inc.c"
};

Vtx object_demo_kekkaiVtx_003450[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiVtx_003450.vtx.inc"
};

Gfx gSpiritTrialLightFloorDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_demo_kekkaiTex_002450, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_DECAL2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_demo_kekkaiVtx_003450, 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 4, 1, 0, 3, 5, 4, 0),
    gsSP2Triangles(5, 3, 6, 0, 3, 0, 7, 0),
    gsSP2Triangles(3, 7, 6, 0, 8, 9, 7, 0),
    gsSP2Triangles(9, 10, 6, 0, 9, 6, 7, 0),
    gsSP2Triangles(10, 5, 6, 0, 11, 12, 10, 0),
    gsSP2Triangles(11, 10, 9, 0, 12, 5, 10, 0),
    gsSP2Triangles(13, 5, 12, 0, 14, 5, 13, 0),
    gsSP2Triangles(15, 5, 14, 0, 4, 5, 15, 0),
    gsSP2Triangles(1, 4, 15, 0, 1, 15, 16, 0),
    gsSP2Triangles(17, 16, 18, 0, 16, 15, 14, 0),
    gsSP2Triangles(16, 14, 18, 0, 18, 14, 13, 0),
    gsSP2Triangles(18, 13, 19, 0, 19, 13, 12, 0),
    gsSP2Triangles(19, 12, 11, 0, 19, 11, 20, 0),
    gsSPEndDisplayList(),
};

u8 object_demo_kekkai_possiblePadding_003698[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_demo_kekkaiTex_0036A0[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiTex_0036A0.rgba16.inc.c"
};

u64 object_demo_kekkaiTex_003EA0[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiTex_003EA0.i8.inc.c"
};

Vtx object_demo_kekkaiVtx_0042A0[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiVtx_0042A0.vtx.inc"
};

Gfx gWaterTrialIceBlockDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_demo_kekkaiTex_0036A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_demo_kekkaiTex_003EA0, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 128),
    gsSPVertex(object_demo_kekkaiVtx_0042A0, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

CamData gWaterTrialIceBlockColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gWaterTrialIceBlockColSurfaceType[] = {
    { 0x0000A000, 0x000007CC },
    { 0x00E0A000, 0x000007CC },
};

CollisionPoly gWaterTrialIceBlockColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFC18},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xFC18},
    {0x0001, 0x0004, 0x0001, 0x0000, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0001, 0x0004, 0x0000, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0001, 0x0006, 0x0002, 0x0001, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0001, 0x0006, 0x0001, 0x0004, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0001, 0x0007, 0x0003, 0x0002, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0001, 0x0007, 0x0002, 0x0006, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0001, 0x0005, 0x0000, 0x0003, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0001, 0x0005, 0x0003, 0x0007, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0007, 0x0006, 0x0004, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0007, 0x0004, 0x0005, 0x0000, 0x8001, 0x0000, 0x0000},
};

Vec3s gWaterTrialIceBlockColVertices[] = {
    {   -600,   1000,    600 },
    {    600,   1000,    600 },
    {    600,   1000,   -600 },
    {   -600,   1000,   -600 },
    {    600,      0,    600 },
    {   -600,      0,    600 },
    {    600,      0,   -600 },
    {   -600,      0,   -600 },
};

CollisionHeader gWaterTrialIceBlockCol = { 
    { -600, 0, -600 },
    { 600, 1000, 600 },
    8, gWaterTrialIceBlockColVertices,
    12, gWaterTrialIceBlockColPolygons,
    gWaterTrialIceBlockColSurfaceType,
    gWaterTrialIceBlockColCamDataList,
    0, NULL
};

u8 object_demo_kekkai_possiblePadding_004644[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_demo_kekkaiVtx_004650[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiVtx_004650.vtx.inc"
};

Gfx gTowerBarrierDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_demo_kekkaiTex_000000, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 6, 14, G_TX_NOMIRROR | G_TX_WRAP,
                5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x00FC),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0x80, 255, 170, 255, 128),
    gsDPSetEnvColor(60, 0, 20, 128),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_demo_kekkaiVtx_004650, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(3, 2, 8, 0, 3, 8, 9, 0),
    gsSP2Triangles(2, 5, 10, 0, 2, 10, 8, 0),
    gsSP2Triangles(5, 7, 11, 0, 5, 11, 10, 0),
    gsSP2Triangles(9, 8, 12, 0, 9, 12, 13, 0),
    gsSP2Triangles(8, 10, 14, 0, 8, 14, 12, 0),
    gsSP2Triangles(10, 11, 15, 0, 10, 15, 14, 0),
    gsSP2Triangles(13, 12, 16, 0, 13, 16, 17, 0),
    gsSP2Triangles(12, 14, 18, 0, 12, 18, 16, 0),
    gsSP2Triangles(14, 15, 19, 0, 14, 19, 18, 0),
    gsSP2Triangles(17, 16, 20, 0, 17, 20, 21, 0),
    gsSP2Triangles(16, 18, 22, 0, 16, 22, 20, 0),
    gsSP2Triangles(18, 19, 23, 0, 18, 23, 22, 0),
    gsSP2Triangles(21, 24, 25, 0, 21, 20, 24, 0),
    gsSP2Triangles(24, 26, 25, 0, 20, 27, 24, 0),
    gsSP2Triangles(27, 26, 24, 0, 20, 22, 27, 0),
    gsSP2Triangles(27, 28, 26, 0, 22, 23, 27, 0),
    gsSP2Triangles(23, 29, 27, 0, 29, 28, 27, 0),
    gsSP2Triangles(25, 26, 30, 0, 25, 30, 31, 0),
    gsSPVertex(&object_demo_kekkaiVtx_004650[32], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(7, 10, 11, 0, 7, 11, 8, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 13, 11, 0),
    gsSPEndDisplayList(),
};

u8 object_demo_kekkai_possiblePadding_004AB8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_demo_kekkaiTex_004AC0[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiTex_004AC0.i8.inc.c"
};

Vtx object_demo_kekkaiVtx_004EC0[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiVtx_004EC0.vtx.inc"
};

Gfx gTrialBarrierFloorDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_demo_kekkaiTex_004AC0, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gEffUnknown12Tex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, 15),
    gsDPSetCombineLERP(NOISE, 0, TEXEL1, TEXEL0, TEXEL0, TEXEL1, ENVIRONMENT, TEXEL0, PRIMITIVE, ENVIRONMENT, COMBINED,
                       ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_DECAL2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(object_demo_kekkaiVtx_004EC0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gTrialBarrierEnergyVtx[] = {
#include "assets/objects/object_demo_kekkai/gTrialBarrierEnergyVtx.vtx.inc"
};

Vtx object_demo_kekkaiVtx_005630[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiVtx_005630.vtx.inc"
};

Gfx gTrialBarrierEnergyDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_demo_kekkaiTex_000000, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, 15, 15),
    gsDPLoadMultiBlock(object_demo_kekkaiTex_000800, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, 15, 1),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(gTrialBarrierEnergyVtx, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 11, 0, 10, 12, 11, 0),
    gsSP2Triangles(14, 15, 13, 0, 12, 14, 13, 0),
    gsSP2Triangles(14, 16, 17, 0, 14, 17, 15, 0),
    gsSP2Triangles(18, 19, 17, 0, 16, 18, 17, 0),
    gsSP2Triangles(20, 21, 0, 0, 20, 0, 3, 0),
    gsSP2Triangles(21, 22, 4, 0, 21, 4, 0, 0),
    gsSP2Triangles(22, 23, 6, 0, 22, 6, 4, 0),
    gsSP2Triangles(23, 24, 8, 0, 23, 8, 6, 0),
    gsSP2Triangles(24, 25, 10, 0, 24, 10, 8, 0),
    gsSP2Triangles(25, 26, 12, 0, 25, 12, 10, 0),
    gsSP2Triangles(26, 27, 14, 0, 26, 14, 12, 0),
    gsSP2Triangles(27, 28, 16, 0, 27, 16, 14, 0),
    gsSP2Triangles(28, 29, 18, 0, 28, 18, 16, 0),
    gsSP2Triangles(30, 31, 21, 0, 30, 21, 20, 0),
    gsSPVertex(&gTrialBarrierEnergyVtx[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 1, 0, 0, 4, 1, 0),
    gsSP2Triangles(6, 7, 5, 0, 4, 6, 5, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 13, 11, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0),
    gsSP2Triangles(14, 16, 17, 0, 14, 17, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(19, 22, 23, 0, 19, 23, 20, 0),
    gsSP2Triangles(24, 25, 23, 0, 22, 24, 23, 0),
    gsSP2Triangles(24, 26, 27, 0, 24, 27, 25, 0),
    gsSP2Triangles(26, 28, 29, 0, 26, 29, 27, 0),
    gsSP2Triangles(30, 31, 29, 0, 28, 30, 29, 0),
    gsSPVertex(&gTrialBarrierEnergyVtx[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 5, 0, 4, 6, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(9, 12, 13, 0, 9, 13, 10, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0),
    gsSP2Triangles(14, 16, 17, 0, 14, 17, 15, 0),
    gsSP2Triangles(16, 18, 19, 0, 16, 19, 17, 0),
    gsSP2Triangles(18, 20, 0, 0, 18, 0, 19, 0),
    gsSP2Triangles(20, 21, 1, 0, 20, 1, 0, 0),
    gsSP2Triangles(21, 22, 4, 0, 21, 4, 1, 0),
    gsSP2Triangles(22, 23, 6, 0, 22, 6, 4, 0),
    gsSP2Triangles(24, 9, 8, 0, 25, 24, 8, 0),
    gsSP2Triangles(26, 12, 9, 0, 24, 26, 9, 0),
    gsSP2Triangles(26, 27, 14, 0, 26, 14, 12, 0),
    gsSP2Triangles(28, 16, 14, 0, 27, 28, 14, 0),
    gsSP2Triangles(28, 29, 18, 0, 28, 18, 16, 0),
    gsSP2Triangles(29, 30, 20, 0, 29, 20, 18, 0),
    gsSP2Triangles(31, 21, 20, 0, 30, 31, 20, 0),
    gsSPVertex(&gTrialBarrierEnergyVtx[96], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gTrialBarrierOrbDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 1, 1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, PRIMITIVE, ENVIRONMENT, COMBINED, ENVIRONMENT,
                       0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 170, 0, 255),
    gsDPSetEnvColor(100, 0, 0, 128),
    gsSPDisplayList(0x09000000),
    gsSPVertex(object_demo_kekkaiVtx_005630, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 0, 0, 8, 0, 3, 0),
    gsSP2Triangles(10, 11, 5, 0, 10, 5, 4, 0),
    gsSP2Triangles(12, 13, 9, 0, 12, 9, 8, 0),
    gsSP2Triangles(14, 11, 10, 0, 15, 14, 10, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 16, 0, 24, 16, 19, 0),
    gsSP2Triangles(26, 27, 21, 0, 26, 21, 20, 0),
    gsSP2Triangles(2, 1, 25, 0, 2, 25, 24, 0),
    gsSP2Triangles(6, 27, 26, 0, 7, 6, 26, 0),
    gsSP2Triangles(6, 5, 28, 0, 5, 11, 29, 0),
    gsSP2Triangles(11, 14, 30, 0, 22, 21, 31, 0),
    gsSPVertex(&object_demo_kekkaiVtx_005630[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 14, 0),
    gsSP2Triangles(13, 15, 16, 0, 15, 5, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(22, 26, 27, 0, 22, 27, 23, 0),
    gsSP2Triangles(26, 28, 29, 0, 26, 29, 27, 0),
    gsSP2Triangles(28, 30, 31, 0, 28, 31, 29, 0),
    gsSP2Triangles(30, 21, 20, 0, 30, 20, 31, 0),
    gsSPEndDisplayList(),
};

u8 object_demo_kekkai_possiblePadding_005E28[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_demo_kekkaiVtx_005E30[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiVtx_005E30.vtx.inc"
};

Gfx gDemoKekkaiDL_005FF0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_demo_kekkaiTex_000000, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_demo_kekkaiTex_000800, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, 1),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_demo_kekkaiVtx_005E30, 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 0, 0, 8, 0, 3, 0),
    gsSP2Triangles(9, 10, 4, 0, 9, 4, 0, 0),
    gsSP2Triangles(10, 11, 6, 0, 10, 6, 4, 0),
    gsSP2Triangles(12, 13, 9, 0, 12, 9, 8, 0),
    gsSP2Triangles(13, 14, 10, 0, 13, 10, 9, 0),
    gsSP2Triangles(15, 11, 10, 0, 14, 15, 10, 0),
    gsSP2Triangles(16, 13, 12, 0, 17, 16, 12, 0),
    gsSP2Triangles(16, 18, 14, 0, 16, 14, 13, 0),
    gsSP2Triangles(18, 19, 15, 0, 18, 15, 14, 0),
    gsSP2Triangles(20, 21, 16, 0, 20, 16, 17, 0),
    gsSP2Triangles(21, 22, 18, 0, 21, 18, 16, 0),
    gsSP2Triangles(22, 23, 19, 0, 22, 19, 18, 0),
    gsSP2Triangles(2, 1, 24, 0, 2, 24, 25, 0),
    gsSP2Triangles(1, 5, 26, 0, 1, 26, 24, 0),
    gsSP2Triangles(7, 27, 26, 0, 5, 7, 26, 0),
    gsSPEndDisplayList(),
};

u8 object_demo_kekkai_possiblePadding_006138[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_demo_kekkaiTex_006140[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiTex_006140.ia16.inc.c"
};

u64 object_demo_kekkaiTex_006940[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiTex_006940.ia8.inc.c"
};

Vtx object_demo_kekkaiVtx_007940[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiVtx_007940.vtx.inc"
};

Gfx gSpiritTrialWebDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 252),
    gsSPVertex(object_demo_kekkaiVtx_007940, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_demo_kekkaiTex_006140, G_IM_FMT_IA, G_IM_SIZ_16b, 8, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 191),
    gsSPVertex(&object_demo_kekkaiVtx_007940[4], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 13, 0, 16, 13, 12, 0),
    gsSP2Triangles(3, 2, 17, 0, 3, 17, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_demo_kekkaiTex_006940, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_demo_kekkaiVtx_007940[40], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 252),
    gsSPVertex(&object_demo_kekkaiVtx_007940[22], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 2, 0, 5, 0, 2, 0),
    gsSP2Triangles(6, 7, 2, 0, 7, 4, 2, 0),
    gsSP2Triangles(6, 2, 8, 0, 2, 3, 8, 0),
    gsSPVertex(&object_demo_kekkaiVtx_007940[31], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 2, 0, 5, 0, 2, 0),
    gsSP2Triangles(6, 7, 2, 0, 7, 4, 2, 0),
    gsSP2Triangles(6, 2, 8, 0, 2, 3, 8, 0),
    gsSPEndDisplayList(),
};

u64 object_demo_kekkaiTex_007DB0[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiTex_007DB0.rgba16.inc.c"
};

Vtx object_demo_kekkaiVtx_0085B0[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiVtx_0085B0.vtx.inc"
};

Gfx gShadowTrialPathDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_demo_kekkaiTex_007DB0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, PRIMITIVE, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPVertex(object_demo_kekkaiVtx_0085B0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 13, 11, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0),
    gsSP2Triangles(14, 16, 17, 0, 14, 17, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(19, 22, 23, 0, 19, 23, 20, 0),
    gsSP2Triangles(18, 21, 24, 0, 18, 24, 25, 0),
    gsSP2Triangles(24, 26, 27, 0, 24, 27, 25, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_demo_kekkaiVtx_0085B0[32], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

u64 object_demo_kekkaiTex_0089D0[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiTex_0089D0.rgba16.inc.c"
};

Vtx object_demo_kekkaiVtx_0091D0[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiVtx_0091D0.vtx.inc"
};

Gfx gLightTrialFakeWallDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_demo_kekkaiTex_0089D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_demo_kekkaiVtx_0091D0, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0),
    gsSPEndDisplayList(),
};

u8 object_demo_kekkai_possiblePadding_0092C8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_demo_kekkaiTex_0092D0[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiTex_0092D0.rgba16.inc.c"
};

Vtx object_demo_kekkaiVtx_00A2D0[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiVtx_00A2D0.vtx.inc"
};

Gfx gGanonsCastleUnusedFakeWallDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_demo_kekkaiTex_0092D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_demo_kekkaiVtx_00A2D0, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(6, 10, 11, 0, 6, 11, 9, 0),
    gsSPEndDisplayList(),
};

u8 object_demo_kekkai_possiblePadding_00A438[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_demo_kekkaiTex_00A440[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiTex_00A440.rgba16.inc.c"
};

Vtx object_demo_kekkaiVtx_00B440[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiVtx_00B440.vtx.inc"
};

Gfx gGanonsCastleScrubsFakeWallDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_demo_kekkaiTex_00A440, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_demo_kekkaiVtx_00B440, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 0, 5, 4, 0),
    gsSPEndDisplayList(),
};

u8 object_demo_kekkai_possiblePadding_00B538[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_demo_kekkaiTex_00B540[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiTex_00B540.ia16.inc.c"
};

Vtx object_demo_kekkaiVtx_00BD40[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiVtx_00BD40.vtx.inc"
};

Gfx gClearBlockDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_demo_kekkaiTex_00B540, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 198, 202, 208, 178),
    gsSPVertex(object_demo_kekkaiVtx_00BD40, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0),
    gsSPEndDisplayList(),
};

u8 object_demo_kekkai_possiblePadding_00BF78[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gClearBlockColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gClearBlockColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gClearBlockColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x8001, 0x0000, 0xFE70},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x8001, 0x0000, 0xFE70},
    {0x0000, 0x0004, 0x0003, 0x0002, 0x8001, 0x0000, 0x0000, 0xFE0C},
    {0x0000, 0x0004, 0x0002, 0x0005, 0x8001, 0x0000, 0x0000, 0xFE0C},
    {0x0000, 0x0005, 0x0002, 0x0001, 0x0000, 0x0000, 0x7FFF, 0xFE0C},
    {0x0000, 0x0005, 0x0001, 0x0006, 0x0000, 0x0000, 0x7FFF, 0xFE0C},
    {0x0000, 0x0006, 0x0001, 0x0000, 0x7FFF, 0x0000, 0x0000, 0xFE0C},
    {0x0000, 0x0006, 0x0000, 0x0007, 0x7FFF, 0x0000, 0x0000, 0xFE0C},
    {0x0000, 0x0007, 0x0000, 0x0003, 0x0000, 0x0000, 0x8001, 0xFE0C},
    {0x0000, 0x0007, 0x0003, 0x0004, 0x0000, 0x0000, 0x8001, 0xFE0C},
    {0x0000, 0x0004, 0x0005, 0x0006, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0004, 0x0006, 0x0007, 0x0000, 0x7FFF, 0x0000, 0x0000},
};

Vec3s gClearBlockColVertices[] = {
    {    500,   -400,   -500 },
    {    500,   -400,    500 },
    {   -500,   -400,    500 },
    {   -500,   -400,   -500 },
    {   -500,      0,   -500 },
    {   -500,      0,    500 },
    {    500,      0,    500 },
    {    500,      0,   -500 },
};

CollisionHeader gClearBlockCol = { 
    { -500, -400, -500 },
    { 500, 0, 500 },
    8, gClearBlockColVertices,
    12, gClearBlockColPolygons,
    gClearBlockColSurfaceType,
    gClearBlockColCamDataList,
    0, NULL
};

u8 object_demo_kekkai_possiblePadding_00C0AC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

u64 object_demo_kekkaiTex_00C0B0[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiTex_00C0B0.rgba16.inc.c"
};

u64 object_demo_kekkaiTex_00C8B0[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiTex_00C8B0.rgba16.inc.c"
};

Vtx object_demo_kekkaiVtx_00D8B0[] = {
#include "assets/objects/object_demo_kekkai/object_demo_kekkaiVtx_00D8B0.vtx.inc"
};

Gfx gFireTrialPlatformDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_demo_kekkaiTex_00C8B0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_demo_kekkaiVtx_00D8B0, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_demo_kekkaiTex_00C0B0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_demo_kekkaiVtx_00D8B0[24], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 2, 0, 1, 5, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_demo_kekkaiTex_00C8B0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_demo_kekkaiVtx_00D8B0[34], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_demo_kekkaiTex_00C0B0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_demo_kekkaiVtx_00D8B0[58], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(5, 6, 2, 0, 5, 7, 6, 0),
    gsSP2Triangles(5, 8, 7, 0, 3, 9, 10, 0),
    gsSP1Triangle(9, 11, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_demo_kekkaiTex_00C8B0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_demo_kekkaiVtx_00D8B0[70], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_demo_kekkaiTex_00C0B0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_demo_kekkaiVtx_00D8B0[90], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 5, 0, 6, 7, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_demo_kekkaiTex_00C8B0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_demo_kekkaiVtx_00D8B0[98], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_demo_kekkaiTex_00C0B0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_demo_kekkaiVtx_00D8B0[114], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(2, 6, 7, 0, 2, 7, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_demo_kekkaiTex_00C8B0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_demo_kekkaiVtx_00D8B0[122], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSPEndDisplayList(),
};

u8 object_demo_kekkai_possiblePadding_00E628[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gFireTrialPlatformColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gFireTrialPlatformColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gFireTrialPlatformColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x7FFF, 0x0000, 0x0000, 0xF6A0},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x7FFF, 0x0000, 0x0000, 0xF6A0},
    {0x0000, 0x0003, 0x0002, 0x0004, 0x0000, 0xFFDC, 0x7FFF, 0x1067},
    {0x0000, 0x0003, 0x0004, 0x0005, 0x0000, 0xFFDC, 0x7FFF, 0x1067},
    {0x0000, 0x0005, 0x0004, 0x0006, 0x7FFF, 0x0000, 0x0000, 0xF1F0},
    {0x0000, 0x0005, 0x0006, 0x0007, 0x7FFF, 0x0000, 0x0000, 0xF1F0},
    {0x0000, 0x0007, 0x0006, 0x0008, 0x0000, 0x0024, 0x8001, 0xEAE9},
    {0x0000, 0x0007, 0x0008, 0x0009, 0x0000, 0x0024, 0x8001, 0xEAE9},
    {0x0000, 0x0009, 0x0008, 0x000A, 0x8001, 0x0000, 0x0000, 0x04B0},
    {0x0000, 0x0009, 0x000A, 0x000B, 0x8001, 0x0000, 0x0000, 0x04B0},
    {0x0000, 0x000C, 0x000D, 0x0001, 0x0000, 0xFFDC, 0x7FFF, 0x0707},
    {0x0000, 0x000C, 0x0001, 0x0000, 0x0000, 0xFFDC, 0x7FFF, 0x0707},
    {0x0000, 0x0000, 0x0003, 0x0009, 0xFFF2, 0x7FFF, 0x0029, 0xFB51},
    {0x0000, 0x0000, 0x0009, 0x000C, 0x0000, 0x7FFF, 0x0024, 0xFB50},
    {0x0000, 0x0003, 0x0007, 0x0009, 0x0000, 0x7FFF, 0x001B, 0xFB4E},
    {0x0000, 0x0003, 0x0005, 0x0007, 0x0000, 0x7FFF, 0x001B, 0xFB4E},
    {0x0000, 0x000E, 0x000F, 0x0010, 0x0000, 0x7FFF, 0x000E, 0xFB51},
    {0x0000, 0x000F, 0x0011, 0x0010, 0xFFC9, 0x7FFF, 0xFFF2, 0xFB51},
    {0x0000, 0x0012, 0x0013, 0x000D, 0x7FFF, 0x0000, 0x0000, 0xFB50},
    {0x0000, 0x0012, 0x000D, 0x000C, 0x7FFF, 0x0000, 0x0000, 0xFB50},
    {0x0000, 0x000B, 0x000A, 0x0014, 0x0000, 0x0024, 0x8001, 0xF449},
    {0x0000, 0x000B, 0x0014, 0x0015, 0x0000, 0x0024, 0x8001, 0xF449},
    {0x0000, 0x0015, 0x0014, 0x0016, 0x7FFF, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0015, 0x0016, 0x0017, 0x7FFF, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0017, 0x0016, 0x0018, 0x0000, 0x0024, 0x8001, 0xEAE9},
    {0x0000, 0x0017, 0x0018, 0x0019, 0x0000, 0x0024, 0x8001, 0xEAE9},
    {0x0000, 0x0019, 0x0018, 0x001A, 0x8001, 0x0000, 0x0000, 0xFB50},
    {0x0000, 0x0019, 0x001A, 0x001B, 0x8001, 0x0000, 0x0000, 0xFB50},
    {0x0000, 0x001B, 0x001A, 0x001C, 0x0000, 0xFFDC, 0x7FFF, 0x0707},
    {0x0000, 0x001B, 0x001C, 0x001D, 0x0000, 0xFFDC, 0x7FFF, 0x0707},
    {0x0000, 0x0012, 0x000C, 0x001D, 0x0000, 0x7FFF, 0x0024, 0xFB50},
    {0x0000, 0x0012, 0x001D, 0x001E, 0x0000, 0x7FFF, 0x0024, 0xFB50},
    {0x0000, 0x000C, 0x000B, 0x0015, 0x0000, 0x7FFF, 0x001B, 0xFB4F},
    {0x0000, 0x000C, 0x0015, 0x001D, 0x0000, 0x7FFF, 0x001B, 0xFB4F},
    {0x0000, 0x0015, 0x001B, 0x001D, 0x0000, 0x7FFF, 0x001B, 0xFB4F},
    {0x0000, 0x0015, 0x0019, 0x001B, 0x0009, 0x7FFF, 0x0024, 0xFB50},
    {0x0000, 0x0015, 0x0017, 0x0019, 0x0000, 0x7FFF, 0x0029, 0xFB51},
    {0x0000, 0x001E, 0x001F, 0x0010, 0x0000, 0x7FFF, 0x0037, 0xFB50},
    {0x0000, 0x001F, 0x000E, 0x0010, 0x0000, 0x7FFF, 0x0037, 0xFB50},
    {0x0000, 0x0020, 0x0021, 0x0022, 0x0000, 0xFFDC, 0x7FFF, 0xE637},
    {0x0000, 0x0020, 0x0022, 0x0023, 0x0000, 0xFFDC, 0x7FFF, 0xE637},
    {0x0000, 0x0023, 0x0022, 0x0024, 0x7FFF, 0x0000, 0x0000, 0xF6A0},
    {0x0000, 0x0023, 0x0024, 0x0025, 0x7FFF, 0x0000, 0x0000, 0xF6A0},
    {0x0000, 0x0025, 0x0024, 0x0013, 0x0000, 0x0024, 0x8001, 0x0001},
    {0x0000, 0x0025, 0x0013, 0x0012, 0x0000, 0x0024, 0x8001, 0x0001},
    {0x0000, 0x0010, 0x0026, 0x0027, 0x0000, 0xFFDC, 0x7FFF, 0xFB4F},
    {0x0000, 0x0010, 0x0027, 0x0028, 0x0000, 0xFFDC, 0x7FFF, 0xFB4F},
    {0x0000, 0x0028, 0x0027, 0x0029, 0x8001, 0x0000, 0x0000, 0x04B0},
    {0x0000, 0x0028, 0x0029, 0x002A, 0x8001, 0x0000, 0x0000, 0x04B0},
    {0x0000, 0x0020, 0x0023, 0x002A, 0x0000, 0x7FFF, 0x0037, 0xFB4D},
    {0x0000, 0x0020, 0x002A, 0x002B, 0x0000, 0x7FFF, 0x0037, 0xFB4D},
    {0x0000, 0x0023, 0x0025, 0x0028, 0x000C, 0x7FFF, 0x0028, 0xFB4F},
    {0x0000, 0x0023, 0x0028, 0x002A, 0x0010, 0x7FFF, 0x0027, 0xFB4F},
    {0x0000, 0x0025, 0x001E, 0x0028, 0x0000, 0x7FFF, 0x001B, 0xFB50},
    {0x0000, 0x001E, 0x0010, 0x0028, 0xFFF2, 0x7FFF, 0x0029, 0xFB50},
    {0x0000, 0x002A, 0x0029, 0x002C, 0x0000, 0x0024, 0x8001, 0x1519},
    {0x0000, 0x002A, 0x002C, 0x002D, 0x0000, 0x0024, 0x8001, 0x1519},
    {0x0000, 0x002D, 0x002C, 0x002E, 0x8001, 0x0012, 0x001B, 0xF8F3},
    {0x0000, 0x002D, 0x002E, 0x002F, 0x8001, 0x0000, 0x0000, 0xF8F8},
    {0x0000, 0x0030, 0x0031, 0x0032, 0x0000, 0xFFDC, 0x7FFF, 0xDCD7},
    {0x0000, 0x0030, 0x0032, 0x0033, 0x0000, 0xFFDC, 0x7FFF, 0xDCD7},
    {0x0000, 0x0033, 0x0032, 0x0021, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0033, 0x0021, 0x0020, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0020, 0x002B, 0x0034, 0x0000, 0x7FFF, 0x0037, 0xFB4D},
    {0x0000, 0x0020, 0x0034, 0x0035, 0x001B, 0x7FFF, 0x001B, 0xFB52},
    {0x0000, 0x0020, 0x0035, 0x0030, 0x001B, 0x7FFF, 0x0037, 0xFB4C},
    {0x0000, 0x0020, 0x0030, 0x0033, 0x0000, 0x7FFF, 0x0029, 0xFB50},
    {0x0000, 0x0034, 0x002D, 0x002F, 0x0037, 0x7FFF, 0x001B, 0xFB53},
    {0x0000, 0x0034, 0x002F, 0x0035, 0x0037, 0x7FFF, 0x001B, 0xFB53},
    {0x0000, 0x0031, 0x0030, 0x0035, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0031, 0x0035, 0x0036, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x002F, 0x002E, 0x0036, 0x0000, 0xFFDC, 0x7FFF, 0xE637},
    {0x0000, 0x002F, 0x0036, 0x0035, 0x0000, 0xFFDC, 0x7FFF, 0xE637},
    {0x0000, 0x0037, 0x0038, 0x001F, 0x8001, 0x0000, 0xFFF7, 0xF6A0},
    {0x0000, 0x0037, 0x001F, 0x0039, 0x8001, 0x0000, 0xFFF7, 0xF6A0},
    {0x0000, 0x001D, 0x001C, 0x003A, 0x8001, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x001D, 0x003A, 0x001E, 0x8001, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x001E, 0x003A, 0x0039, 0x0000, 0x0024, 0x8001, 0x0001},
    {0x0000, 0x001E, 0x0039, 0x001F, 0x0000, 0x0024, 0x8001, 0x0001},
    {0x0000, 0x0038, 0x0037, 0x003B, 0x0000, 0xFFDC, 0x7FFF, 0xF1EF},
    {0x0000, 0x0038, 0x003B, 0x0011, 0x0000, 0xFFDC, 0x7FFF, 0xF1EF},
    {0x0000, 0x0026, 0x0010, 0x0011, 0x7FFF, 0x0000, 0x000E, 0x04AF},
    {0x0000, 0x0026, 0x0011, 0x003B, 0x7FFF, 0x0000, 0x000E, 0x04AF},
};

Vec3s gFireTrialPlatformColVertices[] = {
    {   2400,   1202,  -1798 },
    {   2400,   -598,  -1800 },
    {   2400,   -595,  -4200 },
    {   2400,   1205,  -4198 },
    {   3600,   -595,  -4200 },
    {   3600,   1205,  -4198 },
    {   3600,   -594,  -5400 },
    {   3600,   1206,  -5398 },
    {   1200,   -594,  -5400 },
    {   1200,   1206,  -5398 },
    {   1200,   -596,  -3000 },
    {   1200,   1203,  -2998 },
    {   1200,   1202,  -1798 },
    {   1200,   -598,  -1800 },
    {  -2400,   1198,   1202 },
    {  -2400,   1197,   3602 },
    {  -1200,   1198,   1202 },
    {  -1201,   1199,   3602 },
    {   1200,   1200,      2 },
    {   1200,   -600,      0 },
    {      0,   -596,  -3000 },
    {      0,   1203,  -2998 },
    {      0,   -594,  -5400 },
    {      0,   1206,  -5398 },
    {  -1200,   -594,  -5400 },
    {  -1200,   1206,  -5398 },
    {  -1200,   -598,  -1800 },
    {  -1200,   1202,  -1798 },
    {      0,   -598,  -1800 },
    {      0,   1202,  -1798 },
    {      0,   1200,      2 },
    {  -2400,   1200,      2 },
    {    600,   1192,   6602 },
    {    600,   -608,   6600 },
    {   2400,   -608,   6600 },
    {   2400,   1192,   6602 },
    {   2400,   -600,      0 },
    {   2400,   1200,      2 },
    {  -1200,   -601,   1200 },
    {   1200,   -601,   1200 },
    {   1200,   1199,   1202 },
    {   1200,   -606,   5400 },
    {   1200,   1194,   5402 },
    {    600,   1194,   5402 },
    {  -1801,   -606,   5400 },
    {  -1800,   1196,   5402 },
    {  -1800,   -608,   6600 },
    {  -1800,   1195,   6602 },
    {   -600,   1189,   9002 },
    {   -600,   -611,   9000 },
    {    600,   -611,   9000 },
    {    600,   1189,   9002 },
    {   -600,   1194,   5402 },
    {   -600,   1193,   6602 },
    {   -600,   -608,   6600 },
    {  -2401,   -604,   3600 },
    {  -2401,   1197,   3602 },
    {  -2400,   -600,      0 },
    {      0,   -600,      0 },
    {  -1201,   -604,   3600 },
};

CollisionHeader gFireTrialPlatformCol = { 
    { -2401, -611, -5400 },
    { 3600, 1206, 9002 },
    60, gFireTrialPlatformColVertices,
    83, gFireTrialPlatformColPolygons,
    gFireTrialPlatformColSurfaceType,
    gFireTrialPlatformColCamDataList,
    0, NULL
};

