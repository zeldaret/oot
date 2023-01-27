#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "gameplay_dangeon_keep.h"

u64 gameplay_dangeon_keepTex_000000[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepTex_000000.i8.inc.c"
};

u64 gameplay_dangeon_keepTex_000200[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepTex_000200.i8.inc.c"
};

Vtx gameplay_dangeon_keepVtx_000400[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepVtx_000400.vtx.inc"
};

Gfx gUnusedCandleDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_000000, G_IM_FMT_I, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gameplay_dangeon_keepTex_000200, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, 1, 15),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, 1, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(gameplay_dangeon_keepVtx_000400, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_dangeon_keepVtx_000500[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepVtx_000500.vtx.inc"
};

Gfx gBrownFragmentDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_0005C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR |
                         G_TX_CLAMP, G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_dangeon_keepVtx_000500, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u64 gameplay_dangeon_keepTex_0005C0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepTex_0005C0.rgba16.inc.c"
};

u64 gUnusedStoneTex[] = {
#include "assets/objects/gameplay_dangeon_keep/unused_stone.rgba16.inc.c"
};

Vtx gameplay_dangeon_keepVtx_000FC0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepVtx_000FC0.vtx.inc"
};

Gfx gDoorLockDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_001280, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                         G_TX_CLAMP, G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_dangeon_keepVtx_000FC0, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_dangeon_keepVtx_0011B0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepVtx_0011B0.vtx.inc"
};

Gfx gDoorChainsDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gDoorChainTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 128, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR |
                         G_TX_CLAMP, 4, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_dangeon_keepVtx_0011B0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u64 gameplay_dangeon_keepTex_001280[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepTex_001280.rgba16.inc.c"
};

u64 gUnusedGoldLockTex[] = {
#include "assets/objects/gameplay_dangeon_keep/unused_gold_lock.rgba16.inc.c"
};

u64 gDoorChainTex[] = {
#include "assets/objects/gameplay_dangeon_keep/door_chain.rgba16.inc.c"
};

Vtx gameplay_dangeon_keepVtx_003280[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepVtx_003280.vtx.inc"
};

Gfx gUnusedBombBagDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_0164B0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_dangeon_keepVtx_003280, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u64 gPushBlockSilverTex[] = {
#include "assets/objects/gameplay_dangeon_keep/block_silver.i4.inc.c"
};

u64 gPushBlockBaseTex[] = {
#include "assets/objects/gameplay_dangeon_keep/block_base.i4.inc.c"
};

u64 gPushBlockGrayTex[] = {
#include "assets/objects/gameplay_dangeon_keep/block_gray.i4.inc.c"
};

Vtx gameplay_dangeon_keepVtx_004B50[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepVtx_004B50.vtx.inc"
};

Gfx gPushBlockDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(0x08000000, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP,
                            6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_dangeon_keepVtx_004B50, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

u8 gameplay_dangeon_keep_possiblePadding_004D88[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gPushBlockColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gPushBlockColSurfaceType[] = {
    { 0x00E00000, 0x000007C2 },
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gPushBlockColPolygons[] = {
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

Vec3s gPushBlockColVertices[] = {
    {   -300,      0,    300 },
    {    300,      0,    300 },
    {    300,    600,    300 },
    {   -300,    600,    300 },
    {    300,      0,   -300 },
    {   -300,      0,   -300 },
    {    300,    600,   -300 },
    {   -300,    600,   -300 },
};

CollisionHeader gPushBlockCol = { 
    { -300, 0, -300 },
    { 300, 600, 300 },
    8, gPushBlockColVertices,
    12, gPushBlockColPolygons,
    gPushBlockColSurfaceType,
    gPushBlockColCamDataList,
    0, NULL
};

u8 gameplay_dangeon_keep_possiblePadding_004EC4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx gameplay_dangeon_keepVtx_004ED0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepVtx_004ED0.vtx.inc"
};

Gfx gWoodenPlatofrmDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_00F8A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_dangeon_keepVtx_004ED0, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

u8 gameplay_dangeon_keep_possiblePadding_005108[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx gameplay_dangeon_keepVtx_005110[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepVtx_005110.vtx.inc"
};

Gfx gSmallWoodenBoxDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_011CA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_dangeon_keepVtx_005110, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

u8 gameplay_dangeon_keep_possiblePadding_005348[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx gameplay_dangeon_keepVtx_005350[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepVtx_005350.vtx.inc"
};

Gfx gSmallWoodenBoxFragmentDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_012CA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_dangeon_keepVtx_005350, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_dangeon_keepVtx_005410[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepVtx_005410.vtx.inc"
};

Gfx gBetaKokiriSwordSpriteDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_0154B0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_dangeon_keepVtx_005410, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_dangeon_keepVtx_0054E0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepVtx_0054E0.vtx.inc"
};

Gfx gMagicJarSpriteDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_015CB0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_dangeon_keepVtx_0054E0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_dangeon_keepVtx_0055B0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepVtx_0055B0.vtx.inc"
};

Gfx gBetaSlingshotSpriteDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_016CB0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_dangeon_keepVtx_0055B0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_dangeon_keepVtx_005680[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepVtx_005680.vtx.inc"
};

Gfx gFloorSwitch1DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_007CA0, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_dangeon_keepVtx_005680, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_0078A0, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gameplay_dangeon_keepVtx_005680[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_007CA0, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gameplay_dangeon_keepVtx_005680[8], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

u8 gameplay_dangeon_keep_possiblePadding_005948[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx gameplay_dangeon_keepVtx_005950[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepVtx_005950.vtx.inc"
};

Gfx gRustyFloorSwitchDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_00D8A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_dangeon_keepVtx_005950, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_00E0A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gameplay_dangeon_keepVtx_005950[4], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_dangeon_keepVtx_005BD0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepVtx_005BD0.vtx.inc"
};

Gfx gFloorSwitch2DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_007CA0, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 178, 178, 178, 255),
    gsSPVertex(gameplay_dangeon_keepVtx_005BD0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_0078A0, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gameplay_dangeon_keepVtx_005BD0[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_007CA0, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gameplay_dangeon_keepVtx_005BD0[8], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

u8 gameplay_dangeon_keep_possiblePadding_005E98[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gFloorSwitchColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gFloorSwitchColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gFloorSwitchColPolygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFFF6},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xFFF6},
    {0x0000, 0x2004, 0x0005, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xFF92},
    {0x0000, 0x2004, 0x0006, 0x0007, 0x0000, 0x7FFF, 0x0000, 0xFF92},
    {0x0000, 0x2008, 0x0005, 0x0004, 0x5A82, 0x5A82, 0x0000, 0xFF6C},
    {0x0000, 0x2008, 0x0004, 0x0009, 0x5A82, 0x5A82, 0x0000, 0xFF6C},
    {0x0000, 0x200A, 0x0006, 0x0005, 0x0000, 0x5A82, 0xA57E, 0xFF6C},
    {0x0000, 0x200A, 0x0005, 0x0008, 0x0000, 0x5A82, 0xA57E, 0xFF6C},
    {0x0000, 0x200B, 0x0007, 0x0006, 0xA57E, 0x5A82, 0x0000, 0xFF6C},
    {0x0000, 0x200B, 0x0006, 0x000A, 0xA57E, 0x5A82, 0x0000, 0xFF6C},
    {0x0000, 0x2009, 0x0004, 0x0007, 0x0000, 0x5A82, 0x5A82, 0xFF6C},
    {0x0000, 0x2009, 0x0007, 0x000B, 0x0000, 0x5A82, 0x5A82, 0xFF6C},
};

Vec3s gFloorSwitchColVertices[] = {
    {    240,     10,    240 },
    {    240,     10,   -240 },
    {   -240,     10,   -240 },
    {   -240,     10,    240 },
    {    100,    110,    100 },
    {    100,    110,   -100 },
    {   -100,    110,   -100 },
    {   -100,    110,    100 },
    {    200,     10,   -200 },
    {    200,     10,    200 },
    {   -200,     10,   -200 },
    {   -200,     10,    200 },
};

CollisionHeader gFloorSwitchCol = { 
    { -240, 10, -240 },
    { 240, 110, 240 },
    12, gFloorSwitchColVertices,
    12, gFloorSwitchColPolygons,
    gFloorSwitchColSurfaceType,
    gFloorSwitchColCamDataList,
    0, NULL
};

u8 gameplay_dangeon_keep_possiblePadding_005FE4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx gameplay_dangeon_keepVtx_005FF0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepVtx_005FF0.vtx.inc"
};

Gfx gFloorSwitch3DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_007CA0, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 178, 178, 178, 255),
    gsSPVertex(gameplay_dangeon_keepVtx_005FF0, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_0078A0, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gameplay_dangeon_keepVtx_005FF0[20], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_dangeon_keepVtx_006270[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepVtx_006270.vtx.inc"
};

Gfx gBetaFloorSwitchDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_0080A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_dangeon_keepVtx_006270, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_0088A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gameplay_dangeon_keepVtx_006270[4], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_dangeon_keepVtx_0064F0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepVtx_0064F0.vtx.inc"
};

Gfx gEyeSwitch1DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_dangeon_keepVtx_0064F0, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 9, 0, 12, 9, 8, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&gameplay_dangeon_keepVtx_0064F0[14], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_dangeon_keepVtx_0066E0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepVtx_0066E0.vtx.inc"
};

Gfx gEyeSwitch2DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_dangeon_keepVtx_0066E0, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&gameplay_dangeon_keepVtx_0066E0[15], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_dangeon_keepVtx_0068E0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepVtx_0068E0.vtx.inc"
};

Gfx gCrystalSwitchCoreOpaDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gameplay_dangeon_keepTex_013CB0, G_IM_FMT_I, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_dangeon_keepVtx_0068E0, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_0134A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetPrimColor(0, 0, 51, 51, 51, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&gameplay_dangeon_keepVtx_0068E0[20], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0),
    gsSPEndDisplayList(),
};

Gfx gCrystalSwitchCoreXluDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x2710, 0x2710, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_013CA0, G_IM_FMT_IA, G_IM_SIZ_8b, 4, 4, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 2, 2, 2, 2),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA_PRIM, G_CC_PASS2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&gameplay_dangeon_keepVtx_0068E0[43], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&gameplay_dangeon_keepVtx_0068E0[46], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP1Triangle(18, 19, 20, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_dangeon_keepVtx_006F10[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepVtx_006F10.vtx.inc"
};

Gfx gCrystalSwitchDiamondOpaDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gameplay_dangeon_keepTex_013CB0, G_IM_FMT_I, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_dangeon_keepVtx_006F10, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(0x09000000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&gameplay_dangeon_keepVtx_006F10[20], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0),
    gsSPEndDisplayList(),
};

Gfx gCrystalSwitchDiamondXluDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x2710, 0x2710, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_013CA0, G_IM_FMT_IA, G_IM_SIZ_8b, 4, 4, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 2, 2, 2, 2),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA_PRIM, G_CC_PASS2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&gameplay_dangeon_keepVtx_006F10[43], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&gameplay_dangeon_keepVtx_006F10[46], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP1Triangle(18, 19, 20, 0),
    gsSPEndDisplayList(),
};

u8 gameplay_dangeon_keep_possiblePadding_007538[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx gameplay_dangeon_keepVtx_007540[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepVtx_007540.vtx.inc"
};

Gfx gBetaCrystalSwitchDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gDungeonkeepTex_00D0A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_dangeon_keepVtx_007540, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&gameplay_dangeon_keepVtx_007540[20], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(9, 16, 17, 0, 1, 18, 12, 0),
    gsSPEndDisplayList(),
};

u64 gameplay_dangeon_keepTex_0078A0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepTex_0078A0.i8.inc.c"
};

u64 gameplay_dangeon_keepTex_007CA0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepTex_007CA0.i8.inc.c"
};

u64 gameplay_dangeon_keepTex_0080A0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepTex_0080A0.rgba16.inc.c"
};

u64 gameplay_dangeon_keepTex_0088A0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepTex_0088A0.rgba16.inc.c"
};

u64 gEyeSwitchGoldClosedTex[] = {
#include "assets/objects/gameplay_dangeon_keep/eye_gold_closed.rgba16.inc.c"
};

u64 gEyeSwitchGoldOpeningTex[] = {
#include "assets/objects/gameplay_dangeon_keep/eye_gold_opening.rgba16.inc.c"
};

u64 gEyeSwitchGoldClosingTex[] = {
#include "assets/objects/gameplay_dangeon_keep/eye_gold_closing.rgba16.inc.c"
};

u64 gEyeSwitchGoldOpenTex[] = {
#include "assets/objects/gameplay_dangeon_keep/eye_gold_open.rgba16.inc.c"
};

u64 gEyeSwitchSilverOpenTex[] = {
#include "assets/objects/gameplay_dangeon_keep/eye_silver_open.rgba16.inc.c"
};

u64 gEyeSwitchSilverHalfTex[] = {
#include "assets/objects/gameplay_dangeon_keep/eye_silver_half.rgba16.inc.c"
};

u64 gEyeSwitchSilverClosedTex[] = {
#include "assets/objects/gameplay_dangeon_keep/eye_silver_closed.rgba16.inc.c"
};

u64 gDungeonKeepTex_00C8A0[] = {
#include "assets/objects/gameplay_dangeon_keep/dungeon_keep_tex_00C8A0.rgba16.inc.c"
};

u64 gDungeonkeepTex_00D0A0[] = {
#include "assets/objects/gameplay_dangeon_keep/dungeon_keep_tex_00D0A0.rgba16.inc.c"
};

u64 gameplay_dangeon_keepTex_00D8A0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepTex_00D8A0.rgba16.inc.c"
};

u64 gameplay_dangeon_keepTex_00E0A0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepTex_00E0A0.rgba16.inc.c"
};

u64 gDungeonKeepTex_00E8A0[] = {
#include "assets/objects/gameplay_dangeon_keep/dungeon_keep_tex_00E8A0.i8.inc.c"
};

u64 gDungeonKeepTex_00ECA0[] = {
#include "assets/objects/gameplay_dangeon_keep/dungeon_keep_tex_00ECA0.i8.inc.c"
};

u64 gDungeonKeepTex_00F0A0[] = {
#include "assets/objects/gameplay_dangeon_keep/dungeon_keep_tex_00F0A0.rgba16.inc.c"
};

u64 gameplay_dangeon_keepTex_00F8A0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepTex_00F8A0.rgba16.inc.c"
};

u64 gameplay_dangeon_keepTex_0108A0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepTex_0108A0.rgba16.inc.c"
};

u64 gameplay_dangeon_keepTex_0118A0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepTex_0118A0.rgba16.inc.c"
};

u64 gameplay_dangeon_keepTex_011AA0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepTex_011AA0.rgba16.inc.c"
};

u64 gameplay_dangeon_keepTex_011CA0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepTex_011CA0.rgba16.inc.c"
};

u64 gameplay_dangeon_keepTex_012CA0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepTex_012CA0.rgba16.inc.c"
};

u64 gameplay_dangeon_keepTex_0134A0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepTex_0134A0.rgba16.inc.c"
};

u64 gameplay_dangeon_keepTex_013CA0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepTex_013CA0.ia8.inc.c"
};

u64 gameplay_dangeon_keepTex_013CB0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepTex_013CB0.i4.inc.c"
};

u64 gCrstalSwitchRedTex[] = {
#include "assets/objects/gameplay_dangeon_keep/crystal_red.rgba16.inc.c"
};

u64 gCrstalSwitchBlueTex[] = {
#include "assets/objects/gameplay_dangeon_keep/crystal_blue.rgba16.inc.c"
};

u64 gameplay_dangeon_keepTex_0154B0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepTex_0154B0.rgba16.inc.c"
};

u64 gameplay_dangeon_keepTex_015CB0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepTex_015CB0.rgba16.inc.c"
};

u64 gameplay_dangeon_keepTex_0164B0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepTex_0164B0.rgba16.inc.c"
};

u64 gameplay_dangeon_keepTex_016CB0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepTex_016CB0.rgba16.inc.c"
};

Vtx gameplay_dangeon_keepVtx_0174B0[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepVtx_0174B0.vtx.inc"
};

Gfx gPotDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_0108A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_dangeon_keepVtx_0174B0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 2, 0),
    gsSP2Triangles(1, 0, 10, 0, 1, 10, 11, 0),
    gsSP2Triangles(12, 13, 9, 0, 12, 9, 8, 0),
    gsSP2Triangles(14, 15, 4, 0, 14, 4, 3, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&gameplay_dangeon_keepVtx_0174B0[31], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_0118A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&gameplay_dangeon_keepVtx_0174B0[34], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_0108A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&gameplay_dangeon_keepVtx_0174B0[38], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(3, 1, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 2, 0, 10, 11, 9, 0),
    gsSP2Triangles(10, 9, 8, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 2, 0, 16, 15, 17, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSPEndDisplayList(),
};

Vtx gameplay_dangeon_keepVtx_017A30[] = {
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keepVtx_017A30.vtx.inc"
};

Gfx gPotFragmentDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gameplay_dangeon_keepTex_011AA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gameplay_dangeon_keepVtx_017A30, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

