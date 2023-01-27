#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_mo.h"

u64 object_moTex_000000[] = {
#include "assets/objects/object_mo/object_moTex_000000.ia8.inc.c"
};

Vtx object_moVtx_000100[] = {
#include "assets/objects/object_mo/object_moVtx_000100.vtx.inc"
};

Gfx gMorphaBubbleDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                       COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_CLD_SURF2),
    gsDPLoadTextureBlock(object_moTex_000000, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(object_moVtx_000100, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx object_moVtx_0001B0[] = {
#include "assets/objects/object_mo/object_moVtx_0001B0.vtx.inc"
};

Gfx gMorphaDL_000550[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_moTex_000680, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_moVtx_0001B0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(10, 9, 1, 0, 5, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 16, 17, 0),
    gsSP2Triangles(2, 1, 9, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 12, 25, 0),
    gsSP2Triangles(9, 5, 2, 0, 26, 3, 24, 0),
    gsSP2Triangles(23, 27, 21, 0, 28, 16, 29, 0),
    gsSP2Triangles(29, 30, 28, 0, 1, 0, 4, 0),
    gsSP2Triangles(24, 25, 26, 0, 2, 12, 0, 0),
    gsSP1Triangle(2, 5, 12, 0),
    gsSPVertex(&object_moVtx_0001B0[31], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 3, 0),
    gsSP2Triangles(11, 12, 13, 0, 13, 14, 11, 0),
    gsSP2Triangles(15, 11, 16, 0, 17, 18, 12, 0),
    gsSP2Triangles(17, 6, 8, 0, 17, 8, 19, 0),
    gsSP2Triangles(20, 9, 3, 0, 18, 21, 22, 0),
    gsSP2Triangles(18, 17, 21, 0, 9, 23, 24, 0),
    gsSP2Triangles(25, 16, 26, 0, 15, 17, 12, 0),
    gsSP1Triangle(12, 11, 15, 0),
    gsSPEndDisplayList(),
};

u64 object_moTex_000680[] = {
#include "assets/objects/object_mo/object_moTex_000680.rgba16.inc.c"
};

Vtx object_moVtx_000E80[] = {
#include "assets/objects/object_mo/object_moVtx_000E80.vtx.inc"
};

Gfx gMorphaDL_000EC0[] = {
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPEndDisplayList(),
};

Gfx gMorphaDL_000EF8[] = {
    gsSPVertex(object_moVtx_000E80, 4, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSP1Triangle(0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 object_mo_possiblePadding_000F18[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Gfx gMorphaDropletMaterialDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx gMorphaDropletModelDL[] = {
    gsSPVertex(object_moVtx_000F88, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx object_moVtx_000F88[] = {
#include "assets/objects/object_mo/object_moVtx_000F88.vtx.inc"
};

Gfx gMorphaWetSpotModelDL[] = {
    gsSPVertex(object_moVtx_000FE0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx object_moVtx_000FE0[] = {
#include "assets/objects/object_mo/object_moVtx_000FE0.vtx.inc"
};

u64 gMorphaTitleCardTex[] = {
#include "assets/objects/object_mo/gMorphaTitleCardTex.i8.inc.c"
};

Vtx object_moVtx_004C10[] = {
#include "assets/objects/object_mo/object_moVtx_004C10.vtx.inc"
};

Gfx gMorphaWaterDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gMorphaWaterTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gMorphaWaterTex, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsSPDisplayList(0x0D000000),
    gsSPVertex(object_moVtx_004C10, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 object_mo_possiblePadding_004D18[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_moTex_004D20[] = {
#include "assets/objects/object_mo/object_moTex_004D20.ia16.inc.c"
};

u64 object_moTex_005520[] = {
#include "assets/objects/object_mo/object_moTex_005520.ia16.inc.c"
};

u64 object_moTex_005D20[] = {
#include "assets/objects/object_mo/object_moTex_005D20.ia16.inc.c"
};

Vtx object_moVtx_006520[] = {
#include "assets/objects/object_mo/object_moVtx_006520.vtx.inc"
};

Gfx gMorphaCoreMembraneDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x0FA0, 0x0FA0, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_moTex_004D20, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_moTex_005D20, 0x0100, 1, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 15),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, PRIMITIVE,
                       0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetEnvColor(0, 0, 0, 100),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_moVtx_006520, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_moVtx_006520[3], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(4, 5, 0, 0, 3, 0, 2, 0),
    gsSP2Triangles(6, 5, 4, 0, 7, 4, 3, 0),
    gsSP2Triangles(8, 3, 2, 0, 1, 9, 2, 0),
    gsSP2Triangles(5, 10, 1, 0, 3, 8, 7, 0),
    gsSP2Triangles(7, 6, 4, 0, 1, 10, 9, 0),
    gsSP2Triangles(8, 2, 9, 0, 10, 5, 6, 0),
    gsSP2Triangles(9, 11, 8, 0, 8, 11, 7, 0),
    gsSP2Triangles(7, 11, 6, 0, 6, 11, 10, 0),
    gsSP1Triangle(0, 5, 1, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Gfx gMorphaCoreNucleusDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x0FA0, 0x0FA0, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_moTex_005520, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 1, G_TX_NOMIRROR | G_TX_WRAP,
                5, 1),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, ENVIRONMENT,
                       PRIMITIVE, TEXEL0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x09000000),
    gsSPVertex(&object_moVtx_006520[15], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_moVtx_006520[18], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 5, 4, 0, 2, 7, 8, 0),
    gsSP2Triangles(5, 8, 7, 0, 1, 9, 10, 0),
    gsSP2Triangles(4, 10, 9, 0, 7, 11, 3, 0),
    gsSP2Triangles(10, 3, 11, 0, 8, 6, 0, 0),
    gsSP2Triangles(9, 0, 6, 0, 7, 2, 11, 0),
    gsSP2Triangles(7, 3, 5, 0, 8, 0, 2, 0),
    gsSP2Triangles(8, 5, 6, 0, 10, 11, 1, 0),
    gsSP2Triangles(10, 4, 3, 0, 9, 1, 0, 0),
    gsSP1Triangle(9, 6, 4, 0),
    gsSPEndDisplayList(),
};

Vtx gMorphaVtx_006938[] = {
#include "assets/objects/object_mo/gMorphaVtx_006938.vtx.inc"
};

Vtx object_moVtx_006A18[] = {
#include "assets/objects/object_mo/object_moVtx_006A18.vtx.inc"
};

Vtx gMorphaVtx_007BB8[] = {
#include "assets/objects/object_mo/gMorphaVtx_007BB8.vtx.inc"
};

Gfx gMorphaDL_007BF8[] = {
    gsSPEndDisplayList(),
};

Gfx gMorphaTentacleBaseDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gMorphaWaterTex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsSPVertex(&object_moVtx_006A18[268], 14, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart0DL[] = {
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gMorphaWaterTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gMorphaWaterTex, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_moVtx_006A18[268], 14, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart1DL[] = {
    gsSPVertex(object_moVtx_006A18, 7, 0),
    gsSPMatrix(0x0C000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[7], 7, 16),
    gsSP2Triangles(1, 17, 16, 0, 1, 16, 0, 0),
    gsSP2Triangles(2, 18, 17, 0, 2, 17, 1, 0),
    gsSP2Triangles(3, 19, 18, 0, 3, 18, 2, 0),
    gsSP2Triangles(5, 21, 20, 0, 5, 20, 4, 0),
    gsSP2Triangles(6, 22, 21, 0, 6, 21, 5, 0),
    gsSP2Triangles(0, 16, 22, 0, 0, 22, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart2DL[] = {
    gsSPMatrix(0x0C000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[14], 7, 0),
    gsSP2Triangles(17, 1, 0, 0, 17, 0, 16, 0),
    gsSP2Triangles(18, 2, 1, 0, 18, 1, 17, 0),
    gsSP2Triangles(19, 3, 2, 0, 19, 2, 18, 0),
    gsSP2Triangles(21, 5, 4, 0, 21, 4, 20, 0),
    gsSP2Triangles(22, 6, 5, 0, 22, 5, 21, 0),
    gsSP2Triangles(16, 0, 6, 0, 16, 6, 22, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart3DL[] = {
    gsSPMatrix(0x0C000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[21], 7, 16),
    gsSP2Triangles(0, 16, 22, 0, 0, 22, 6, 0),
    gsSP2Triangles(6, 22, 21, 0, 6, 21, 5, 0),
    gsSP2Triangles(5, 21, 19, 0, 5, 19, 4, 0),
    gsSP2Triangles(3, 20, 18, 0, 3, 18, 2, 0),
    gsSP2Triangles(2, 18, 17, 0, 2, 17, 1, 0),
    gsSP2Triangles(1, 17, 16, 0, 1, 16, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart4DL[] = {
    gsSPMatrix(0x0C0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[28], 7, 0),
    gsSP2Triangles(17, 1, 0, 0, 17, 0, 16, 0),
    gsSP2Triangles(18, 2, 1, 0, 18, 1, 17, 0),
    gsSP2Triangles(20, 3, 2, 0, 20, 2, 18, 0),
    gsSP2Triangles(21, 5, 4, 0, 21, 4, 19, 0),
    gsSP2Triangles(22, 6, 5, 0, 22, 5, 21, 0),
    gsSP2Triangles(16, 0, 6, 0, 16, 6, 22, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart5DL[] = {
    gsSPMatrix(0x0C000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[35], 7, 16),
    gsSP2Triangles(0, 16, 22, 0, 0, 22, 6, 0),
    gsSP2Triangles(6, 22, 21, 0, 6, 21, 5, 0),
    gsSP2Triangles(5, 21, 19, 0, 5, 19, 4, 0),
    gsSP2Triangles(3, 20, 18, 0, 3, 18, 2, 0),
    gsSP2Triangles(2, 18, 17, 0, 2, 17, 1, 0),
    gsSP2Triangles(1, 17, 16, 0, 1, 16, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart6DL[] = {
    gsSPMatrix(0x0C000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[42], 7, 0),
    gsSP2Triangles(16, 0, 6, 0, 16, 6, 22, 0),
    gsSP2Triangles(22, 6, 5, 0, 22, 5, 21, 0),
    gsSP2Triangles(21, 5, 3, 0, 21, 3, 19, 0),
    gsSP2Triangles(20, 4, 2, 0, 20, 2, 18, 0),
    gsSP2Triangles(18, 2, 1, 0, 18, 1, 17, 0),
    gsSP2Triangles(17, 1, 0, 0, 17, 0, 16, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart7DL[] = {
    gsSPMatrix(0x0C000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[49], 7, 16),
    gsSP2Triangles(1, 17, 16, 0, 1, 16, 0, 0),
    gsSP2Triangles(2, 18, 17, 0, 2, 17, 1, 0),
    gsSP2Triangles(4, 19, 18, 0, 4, 18, 2, 0),
    gsSP2Triangles(5, 21, 20, 0, 5, 20, 3, 0),
    gsSP2Triangles(6, 22, 21, 0, 6, 21, 5, 0),
    gsSP2Triangles(0, 16, 22, 0, 0, 22, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart8DL[] = {
    gsSPMatrix(0x0C0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[56], 7, 0),
    gsSP2Triangles(17, 1, 0, 0, 17, 0, 16, 0),
    gsSP2Triangles(18, 2, 1, 0, 18, 1, 17, 0),
    gsSP2Triangles(19, 3, 2, 0, 19, 2, 18, 0),
    gsSP2Triangles(21, 5, 4, 0, 21, 4, 20, 0),
    gsSP2Triangles(22, 6, 5, 0, 22, 5, 21, 0),
    gsSP2Triangles(16, 0, 6, 0, 16, 6, 22, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart9DL[] = {
    gsSPMatrix(0x0C000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[63], 7, 16),
    gsSP2Triangles(0, 16, 22, 0, 0, 22, 6, 0),
    gsSP2Triangles(6, 22, 21, 0, 6, 21, 5, 0),
    gsSP2Triangles(5, 21, 19, 0, 5, 19, 4, 0),
    gsSP2Triangles(3, 20, 18, 0, 3, 18, 2, 0),
    gsSP2Triangles(2, 18, 17, 0, 2, 17, 1, 0),
    gsSP2Triangles(1, 17, 16, 0, 1, 16, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart10DL[] = {
    gsSPMatrix(0x0C000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[70], 7, 0),
    gsSP2Triangles(16, 0, 6, 0, 16, 6, 22, 0),
    gsSP2Triangles(22, 6, 5, 0, 22, 5, 21, 0),
    gsSP2Triangles(21, 5, 3, 0, 21, 3, 19, 0),
    gsSP2Triangles(20, 4, 2, 0, 20, 2, 18, 0),
    gsSP2Triangles(18, 2, 1, 0, 18, 1, 17, 0),
    gsSP2Triangles(17, 1, 0, 0, 17, 0, 16, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart11DL[] = {
    gsSPMatrix(0x0C000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[77], 7, 16),
    gsSP2Triangles(1, 17, 16, 0, 1, 16, 0, 0),
    gsSP2Triangles(2, 18, 17, 0, 2, 17, 1, 0),
    gsSP2Triangles(4, 19, 18, 0, 4, 18, 2, 0),
    gsSP2Triangles(5, 21, 20, 0, 5, 20, 3, 0),
    gsSP2Triangles(6, 22, 21, 0, 6, 21, 5, 0),
    gsSP2Triangles(0, 16, 22, 0, 0, 22, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart12DL[] = {
    gsSPMatrix(0x0C0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[84], 7, 0),
    gsSP2Triangles(16, 0, 6, 0, 16, 6, 22, 0),
    gsSP2Triangles(22, 6, 5, 0, 22, 5, 21, 0),
    gsSP2Triangles(21, 5, 3, 0, 21, 3, 20, 0),
    gsSP2Triangles(19, 4, 2, 0, 19, 2, 18, 0),
    gsSP2Triangles(18, 2, 1, 0, 18, 1, 17, 0),
    gsSP2Triangles(17, 1, 0, 0, 17, 0, 16, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart13DL[] = {
    gsSPMatrix(0x0C000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[91], 7, 16),
    gsSP2Triangles(1, 17, 16, 0, 1, 16, 0, 0),
    gsSP2Triangles(2, 18, 17, 0, 2, 17, 1, 0),
    gsSP2Triangles(4, 19, 18, 0, 4, 18, 2, 0),
    gsSP2Triangles(5, 21, 20, 0, 5, 20, 3, 0),
    gsSP2Triangles(6, 22, 21, 0, 6, 21, 5, 0),
    gsSP2Triangles(0, 16, 22, 0, 0, 22, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart14DL[] = {
    gsSPMatrix(0x0C000340, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[98], 7, 0),
    gsSP2Triangles(17, 1, 0, 0, 17, 0, 16, 0),
    gsSP2Triangles(18, 2, 1, 0, 18, 1, 17, 0),
    gsSP2Triangles(19, 3, 2, 0, 19, 2, 18, 0),
    gsSP2Triangles(21, 5, 4, 0, 21, 4, 20, 0),
    gsSP2Triangles(22, 6, 5, 0, 22, 5, 21, 0),
    gsSP2Triangles(16, 0, 6, 0, 16, 6, 22, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart15DL[] = {
    gsSPMatrix(0x0C000380, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[105], 7, 16),
    gsSP2Triangles(0, 16, 22, 0, 0, 22, 6, 0),
    gsSP2Triangles(6, 22, 21, 0, 6, 21, 5, 0),
    gsSP2Triangles(5, 21, 19, 0, 5, 19, 4, 0),
    gsSP2Triangles(3, 20, 18, 0, 3, 18, 2, 0),
    gsSP2Triangles(2, 18, 17, 0, 2, 17, 1, 0),
    gsSP2Triangles(1, 17, 16, 0, 1, 16, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart16DL[] = {
    gsSPMatrix(0x0C0003C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[112], 7, 0),
    gsSP2Triangles(17, 1, 0, 0, 17, 0, 16, 0),
    gsSP2Triangles(18, 2, 1, 0, 18, 1, 17, 0),
    gsSP2Triangles(20, 3, 2, 0, 20, 2, 18, 0),
    gsSP2Triangles(21, 5, 4, 0, 21, 4, 19, 0),
    gsSP2Triangles(22, 6, 5, 0, 22, 5, 21, 0),
    gsSP2Triangles(16, 0, 6, 0, 16, 6, 22, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart17DL[] = {
    gsSPMatrix(0x0C000400, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[119], 7, 16),
    gsSP2Triangles(0, 16, 22, 0, 0, 22, 6, 0),
    gsSP2Triangles(6, 22, 21, 0, 6, 21, 5, 0),
    gsSP2Triangles(5, 21, 19, 0, 5, 19, 4, 0),
    gsSP2Triangles(3, 20, 18, 0, 3, 18, 2, 0),
    gsSP2Triangles(2, 18, 17, 0, 2, 17, 1, 0),
    gsSP2Triangles(1, 17, 16, 0, 1, 16, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart18DL[] = {
    gsSPMatrix(0x0C000440, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[126], 7, 0),
    gsSP2Triangles(16, 0, 6, 0, 16, 6, 22, 0),
    gsSP2Triangles(22, 6, 5, 0, 22, 5, 21, 0),
    gsSP2Triangles(21, 5, 3, 0, 21, 3, 19, 0),
    gsSP2Triangles(20, 4, 2, 0, 20, 2, 18, 0),
    gsSP2Triangles(18, 2, 1, 0, 18, 1, 17, 0),
    gsSP2Triangles(17, 1, 0, 0, 17, 0, 16, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart19DL[] = {
    gsSPMatrix(0x0C000480, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[133], 7, 16),
    gsSP2Triangles(1, 17, 16, 0, 1, 16, 0, 0),
    gsSP2Triangles(2, 18, 17, 0, 2, 17, 1, 0),
    gsSP2Triangles(4, 19, 18, 0, 4, 18, 2, 0),
    gsSP2Triangles(5, 21, 20, 0, 5, 20, 3, 0),
    gsSP2Triangles(6, 22, 21, 0, 6, 21, 5, 0),
    gsSP2Triangles(0, 16, 22, 0, 0, 22, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart20DL[] = {
    gsSPMatrix(0x0C0004C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[140], 7, 0),
    gsSP2Triangles(16, 0, 6, 0, 16, 6, 22, 0),
    gsSP2Triangles(22, 6, 5, 0, 22, 5, 21, 0),
    gsSP2Triangles(21, 5, 3, 0, 21, 3, 20, 0),
    gsSP2Triangles(19, 4, 2, 0, 19, 2, 18, 0),
    gsSP2Triangles(18, 2, 1, 0, 18, 1, 17, 0),
    gsSP2Triangles(17, 1, 0, 0, 17, 0, 16, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart21DL[] = {
    gsSPMatrix(0x0C000500, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[147], 7, 16),
    gsSP2Triangles(1, 17, 16, 0, 1, 16, 0, 0),
    gsSP2Triangles(2, 18, 17, 0, 2, 17, 1, 0),
    gsSP2Triangles(4, 19, 18, 0, 4, 18, 2, 0),
    gsSP2Triangles(5, 21, 20, 0, 5, 20, 3, 0),
    gsSP2Triangles(6, 22, 21, 0, 6, 21, 5, 0),
    gsSP2Triangles(0, 16, 22, 0, 0, 22, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart22DL[] = {
    gsSPMatrix(0x0C000540, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[154], 7, 0),
    gsSP2Triangles(17, 1, 0, 0, 17, 0, 16, 0),
    gsSP2Triangles(18, 2, 1, 0, 18, 1, 17, 0),
    gsSP2Triangles(19, 3, 2, 0, 19, 2, 18, 0),
    gsSP2Triangles(21, 5, 4, 0, 21, 4, 20, 0),
    gsSP2Triangles(22, 6, 5, 0, 22, 5, 21, 0),
    gsSP2Triangles(16, 0, 6, 0, 16, 6, 22, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart23DL[] = {
    gsSPMatrix(0x0C000580, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[161], 7, 16),
    gsSP2Triangles(0, 16, 22, 0, 0, 22, 6, 0),
    gsSP2Triangles(6, 22, 21, 0, 6, 21, 5, 0),
    gsSP2Triangles(5, 21, 19, 0, 5, 19, 4, 0),
    gsSP2Triangles(3, 20, 18, 0, 3, 18, 2, 0),
    gsSP2Triangles(2, 18, 17, 0, 2, 17, 1, 0),
    gsSP2Triangles(1, 17, 16, 0, 1, 16, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart24DL[] = {
    gsSPMatrix(0x0C0005C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[168], 7, 0),
    gsSP2Triangles(16, 0, 6, 0, 16, 6, 22, 0),
    gsSP2Triangles(22, 6, 5, 0, 22, 5, 21, 0),
    gsSP2Triangles(21, 5, 3, 0, 21, 3, 19, 0),
    gsSP2Triangles(20, 4, 2, 0, 20, 2, 18, 0),
    gsSP2Triangles(18, 2, 1, 0, 18, 1, 17, 0),
    gsSP2Triangles(17, 1, 0, 0, 17, 0, 16, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart25DL[] = {
    gsSPMatrix(0x0C000600, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[175], 7, 16),
    gsSP2Triangles(1, 17, 16, 0, 1, 16, 0, 0),
    gsSP2Triangles(2, 18, 17, 0, 2, 17, 1, 0),
    gsSP2Triangles(4, 19, 18, 0, 4, 18, 2, 0),
    gsSP2Triangles(5, 21, 20, 0, 5, 20, 3, 0),
    gsSP2Triangles(6, 22, 21, 0, 6, 21, 5, 0),
    gsSP2Triangles(0, 16, 22, 0, 0, 22, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart26DL[] = {
    gsSPMatrix(0x0C000640, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[182], 7, 0),
    gsSP2Triangles(17, 1, 0, 0, 17, 0, 16, 0),
    gsSP2Triangles(18, 2, 1, 0, 18, 1, 17, 0),
    gsSP2Triangles(19, 3, 2, 0, 19, 2, 18, 0),
    gsSP2Triangles(21, 5, 4, 0, 21, 4, 20, 0),
    gsSP2Triangles(22, 6, 5, 0, 22, 5, 21, 0),
    gsSP2Triangles(16, 0, 6, 0, 16, 6, 22, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart27DL[] = {
    gsSPMatrix(0x0C000680, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[189], 7, 16),
    gsSP2Triangles(0, 16, 22, 0, 0, 22, 6, 0),
    gsSP2Triangles(6, 22, 21, 0, 6, 21, 5, 0),
    gsSP2Triangles(5, 21, 19, 0, 5, 19, 4, 0),
    gsSP2Triangles(3, 20, 18, 0, 3, 18, 2, 0),
    gsSP2Triangles(2, 18, 17, 0, 2, 17, 1, 0),
    gsSP2Triangles(1, 17, 16, 0, 1, 16, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart28DL[] = {
    gsSPMatrix(0x0C0006C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[196], 7, 0),
    gsSP2Triangles(17, 1, 0, 0, 17, 0, 16, 0),
    gsSP2Triangles(18, 2, 1, 0, 18, 1, 17, 0),
    gsSP2Triangles(20, 3, 2, 0, 20, 2, 18, 0),
    gsSP2Triangles(21, 5, 4, 0, 21, 4, 19, 0),
    gsSP2Triangles(22, 6, 5, 0, 22, 5, 21, 0),
    gsSP2Triangles(16, 0, 6, 0, 16, 6, 22, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart29DL[] = {
    gsSPMatrix(0x0C000700, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[203], 7, 16),
    gsSP2Triangles(0, 16, 22, 0, 0, 22, 6, 0),
    gsSP2Triangles(6, 22, 21, 0, 6, 21, 5, 0),
    gsSP2Triangles(5, 21, 19, 0, 5, 19, 4, 0),
    gsSP2Triangles(3, 20, 18, 0, 3, 18, 2, 0),
    gsSP2Triangles(2, 18, 17, 0, 2, 17, 1, 0),
    gsSP2Triangles(1, 17, 16, 0, 1, 16, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart30DL[] = {
    gsSPMatrix(0x0C000740, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[210], 7, 0),
    gsSP2Triangles(16, 0, 6, 0, 16, 6, 22, 0),
    gsSP2Triangles(22, 6, 5, 0, 22, 5, 21, 0),
    gsSP2Triangles(21, 5, 3, 0, 21, 3, 19, 0),
    gsSP2Triangles(20, 4, 2, 0, 20, 2, 18, 0),
    gsSP2Triangles(18, 2, 1, 0, 18, 1, 17, 0),
    gsSP2Triangles(17, 1, 0, 0, 17, 0, 16, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart31DL[] = {
    gsSPMatrix(0x0C000780, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[217], 7, 16),
    gsSP2Triangles(1, 17, 16, 0, 1, 16, 0, 0),
    gsSP2Triangles(2, 18, 17, 0, 2, 17, 1, 0),
    gsSP2Triangles(4, 19, 18, 0, 4, 18, 2, 0),
    gsSP2Triangles(5, 21, 20, 0, 5, 20, 3, 0),
    gsSP2Triangles(6, 22, 21, 0, 6, 21, 5, 0),
    gsSP2Triangles(0, 16, 22, 0, 0, 22, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart32DL[] = {
    gsSPMatrix(0x0C0007C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[224], 7, 0),
    gsSP2Triangles(17, 1, 0, 0, 17, 0, 16, 0),
    gsSP2Triangles(18, 2, 1, 0, 18, 1, 17, 0),
    gsSP2Triangles(19, 3, 2, 0, 19, 2, 18, 0),
    gsSP2Triangles(21, 5, 4, 0, 21, 4, 20, 0),
    gsSP2Triangles(22, 6, 5, 0, 22, 5, 21, 0),
    gsSP2Triangles(16, 0, 6, 0, 16, 6, 22, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart33DL[] = {
    gsSPMatrix(0x0C000800, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[231], 7, 16),
    gsSP2Triangles(0, 16, 22, 0, 0, 22, 6, 0),
    gsSP2Triangles(6, 22, 21, 0, 6, 21, 5, 0),
    gsSP2Triangles(5, 21, 19, 0, 5, 19, 4, 0),
    gsSP2Triangles(3, 20, 18, 0, 3, 18, 2, 0),
    gsSP2Triangles(2, 18, 17, 0, 2, 17, 1, 0),
    gsSP2Triangles(1, 17, 16, 0, 1, 16, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart34DL[] = {
    gsSPMatrix(0x0C000840, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[238], 7, 0),
    gsSP2Triangles(16, 0, 6, 0, 16, 6, 22, 0),
    gsSP2Triangles(22, 6, 5, 0, 22, 5, 21, 0),
    gsSP2Triangles(21, 5, 3, 0, 21, 3, 19, 0),
    gsSP2Triangles(20, 4, 2, 0, 20, 2, 18, 0),
    gsSP2Triangles(18, 2, 1, 0, 18, 1, 17, 0),
    gsSP2Triangles(17, 1, 0, 0, 17, 0, 16, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart35DL[] = {
    gsSPMatrix(0x0C000880, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[245], 7, 16),
    gsSP2Triangles(1, 17, 16, 0, 1, 16, 0, 0),
    gsSP2Triangles(2, 18, 17, 0, 2, 17, 1, 0),
    gsSP2Triangles(4, 19, 18, 0, 4, 18, 2, 0),
    gsSP2Triangles(5, 21, 20, 0, 5, 20, 3, 0),
    gsSP2Triangles(6, 22, 21, 0, 6, 21, 5, 0),
    gsSP2Triangles(0, 16, 22, 0, 0, 22, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart36DL[] = {
    gsSPMatrix(0x0C0008C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[252], 7, 0),
    gsSP2Triangles(16, 0, 6, 0, 16, 6, 22, 0),
    gsSP2Triangles(22, 6, 5, 0, 22, 5, 21, 0),
    gsSP2Triangles(21, 5, 3, 0, 21, 3, 20, 0),
    gsSP2Triangles(19, 4, 2, 0, 19, 2, 18, 0),
    gsSP2Triangles(18, 2, 1, 0, 18, 1, 17, 0),
    gsSP2Triangles(17, 1, 0, 0, 17, 0, 16, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart37DL[] = {
    gsSPMatrix(0x0C000900, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[259], 7, 16),
    gsSP2Triangles(1, 17, 16, 0, 1, 16, 0, 0),
    gsSP2Triangles(2, 18, 17, 0, 2, 17, 1, 0),
    gsSP2Triangles(4, 19, 18, 0, 4, 18, 2, 0),
    gsSP2Triangles(5, 21, 20, 0, 5, 20, 3, 0),
    gsSP2Triangles(6, 22, 21, 0, 6, 21, 5, 0),
    gsSP2Triangles(0, 16, 22, 0, 0, 22, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart38DL[] = {
    gsSPMatrix(0x0C000940, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[266], 7, 0),
    gsSP2Triangles(17, 1, 0, 0, 17, 0, 16, 0),
    gsSP2Triangles(18, 2, 1, 0, 18, 1, 17, 0),
    gsSP2Triangles(19, 3, 2, 0, 19, 2, 18, 0),
    gsSP2Triangles(21, 5, 4, 0, 21, 4, 20, 0),
    gsSP2Triangles(22, 6, 5, 0, 22, 5, 21, 0),
    gsSP2Triangles(16, 0, 6, 0, 16, 6, 22, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart39DL[] = {
    gsSPMatrix(0x0C000980, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[273], 7, 16),
    gsSP2Triangles(0, 16, 22, 0, 0, 22, 6, 0),
    gsSP2Triangles(6, 22, 21, 0, 6, 21, 5, 0),
    gsSP2Triangles(5, 21, 19, 0, 5, 19, 4, 0),
    gsSP2Triangles(3, 20, 18, 0, 3, 18, 2, 0),
    gsSP2Triangles(2, 18, 17, 0, 2, 17, 1, 0),
    gsSP2Triangles(1, 17, 16, 0, 1, 16, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gMorphaTentaclePart40DL[] = {
    gsSPMatrix(0x0C0009C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_moVtx_006A18[280], 6, 0),
    gsSP2Triangles(16, 17, 0, 0, 17, 18, 1, 0),
    gsSP2Triangles(18, 20, 2, 0, 19, 21, 3, 0),
    gsSP2Triangles(21, 22, 4, 0, 22, 16, 5, 0),
    gsSPEndDisplayList(),
};

u8 object_mo_possiblePadding_008868[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gMorphaWaterTex[] = {
#include "assets/objects/object_mo/gMorphaWaterTex.rgba16.inc.c"
};

