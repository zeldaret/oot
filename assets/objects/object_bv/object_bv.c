#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_bv.h"

s16 sBarinadeBariAnimFrameData[] = {
    0x0000, 0x0000, 
};

JointIndex sBarinadeBariAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gBarinadeBariAnim = { 
    { 2 }, sBarinadeBariAnimFrameData,
    sBarinadeBariAnimJointIndices, 1
};

u8 object_bv_possiblePadding_000034[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_bvTex_000040[] = {
#include "assets/objects/object_bv/object_bvTex_000040.ia16.inc.c"
};

u64 object_bvTex_000840[] = {
#include "assets/objects/object_bv/object_bvTex_000840.ia16.inc.c"
};

u64 object_bvTex_000A40[] = {
#include "assets/objects/object_bv/object_bvTex_000A40.i8.inc.c"
};

Vtx object_bvVtx_000C40[] = {
#include "assets/objects/object_bv/object_bvVtx_000C40.vtx.inc"
};

Gfx gBarinadeDL_000FA0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_000A40, G_IM_FMT_I, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 2, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_WRAP, 4, 1),
    gsDPSetTileSize(1, 0, 0, 0x003C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 200, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(object_bvVtx_000C40, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(3, 6, 1, 0, 3, 4, 6, 0),
    gsSP2Triangles(11, 2, 9, 0, 11, 0, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeBariSkelLimbsLimb_004E48DL_001070[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_000840, G_IM_FMT_IA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_bvVtx_000C40[12], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 4, 3, 0, 7, 1, 0, 0),
    gsSP2Triangles(8, 9, 6, 0, 10, 11, 7, 0),
    gsSP2Triangles(4, 12, 5, 0, 4, 10, 12, 0),
    gsSP2Triangles(4, 6, 13, 0, 11, 4, 13, 0),
    gsSP2Triangles(3, 5, 6, 0, 12, 1, 8, 0),
    gsSP2Triangles(13, 6, 9, 0, 10, 2, 12, 0),
    gsSP2Triangles(13, 7, 11, 0, 6, 5, 8, 0),
    gsSP2Triangles(0, 2, 7, 0, 13, 1, 7, 0),
    gsSP2Triangles(8, 5, 12, 0, 8, 1, 9, 0),
    gsSP2Triangles(13, 9, 1, 0, 7, 2, 10, 0),
    gsSP2Triangles(10, 4, 11, 0, 12, 2, 1, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeBariSkelLimbsLimb_004E54DL_001158[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_000040, G_IM_FMT_IA, G_IM_SIZ_16b, 16, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 229),
    gsSPVertex(&object_bvVtx_000C40[26], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 0, 10, 0),
    gsSP2Triangles(11, 6, 12, 0, 0, 11, 13, 0),
    gsSP2Triangles(3, 9, 14, 0, 5, 9, 3, 0),
    gsSP2Triangles(15, 7, 6, 0, 9, 5, 1, 0),
    gsSP2Triangles(0, 9, 1, 0, 11, 2, 16, 0),
    gsSP2Triangles(6, 11, 16, 0, 11, 0, 2, 0),
    gsSP2Triangles(15, 6, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 18, 23, 0),
    gsSP2Triangles(24, 19, 25, 0, 26, 20, 27, 0),
    gsSPEndDisplayList(),
};

u64 gBarinadeTitleCardTex[] = {
#include "assets/objects/object_bv/barinade_title_card.i8.inc.c"
};

StandardLimb gBarinadeBariSkelLimbsLimb_004E30 = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeBariSkelLimbsLimb_004E3C = { 
    { 0, 0, 0 }, LIMB_DONE, 0x02,
    gBarinadeDL_000FA0
};

StandardLimb gBarinadeBariSkelLimbsLimb_004E48 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x03,
    gBarinadeBariSkelLimbsLimb_004E48DL_001070
};

StandardLimb gBarinadeBariSkelLimbsLimb_004E54 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBarinadeBariSkelLimbsLimb_004E54DL_001158
};

void* gBarinadeBariSkelLimbs[] = {
    &gBarinadeBariSkelLimbsLimb_004E30,
    &gBarinadeBariSkelLimbsLimb_004E3C,
    &gBarinadeBariSkelLimbsLimb_004E48,
    &gBarinadeBariSkelLimbsLimb_004E54,
};

SkeletonHeader gBarinadeBariSkel = { 
    gBarinadeBariSkelLimbs, ARRAY_COUNT(gBarinadeBariSkelLimbs)
};

u8 object_bv_unaccounted_004E78[] = {
    0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sBarinadeBodyAnimFrameData[] = {
    0x0000, 0x2000, 0x5555, 0xAAAB, 0xAD1C, 0x0006, 0x400C, 0x2D1C, 0x4000, 0x2D0A, 0x3330, 0x3FED, 0xAD13, 0x1993, 
    0xBFF0, 0xAD17, 0xE66A, 0xC008, 0xCCD0, 0x4013, 0xAD07, 0x4016, 0x999A, 0x2D13, 0xAD2E, 0x3336, 0x599A, 0x9555, 
    0x2AAB, 0x8CCD, 0xC000, 0xF333, 0x2666, 0xD555, 0xC000, 0xC0EC, 0xC2A2, 0xC38E, 0xC285, 0xC03E, 0xBDF7, 0xBCEE, 
    0xBDD9, 0xBFDF, 0xC1E5, 0xC2D1, 0xC1FD, 0xC02C, 0xBE5A, 0xBD86, 0xBE3C, 0xBFCB, 0xC15A, 0xC210, 0xC17F, 0xC040, 
    0xBF01, 0xBE6F, 0xBEDC, 0xBFCB, 0xC0BA, 0xC127, 0xC0D8, 0xC02C, 0xBF7F, 0xBF30, 0xBF64, 0xBFD6, 0xC048, 0xC07C, 
    0xC05A, 0xC010, 0xBFC7, 0xBFA5, 0x0000, 0xFF14, 0xFD5E, 0xFC72, 0xFD7C, 0xFFC6, 0x020F, 0x031A, 0x022F, 0x002A, 
    0xFE25, 0xFD3A, 0xFE09, 0xFFD1, 0x0198, 0x0267, 0x01B4, 0x002A, 0xFEA0, 0xFDEC, 0xFE83, 0xFFCD, 0x0117, 0x01AE, 
    0x0132, 0x0023, 0xFF13, 0xFE98, 0xFEF8, 0xFFCB, 0x009F, 0x00FF, 0x00B7, 0x0019, 0xFF7C, 0xFF34, 0xFF64, 0xFFCF, 
    0x0039, 0x006A, 0x0000, 0xFE86, 0xFBC9, 0xFA50, 0xFBFE, 0xFFB2, 0x0365, 0x0514, 0x038E, 0x0035, 0xFCDB, 0xFB56, 
    0xFCB4, 0xFFB5, 0x02B7, 0x0415, 0x02E2, 0x003E, 0xFD9A, 0xFC67, 0xFD6D, 0xFFAE, 0x01EF, 0x02F5, 0x0220, 0x004B, 
    0xFE75, 0xFDA0, 0xFE4B, 0xFFC4, 0x013D, 0x01E8, 0x0167, 0x004B, 0xFF2F, 0xFEAD, 0xFEFE, 0xFFAE, 0x005F, 0x00AF, 
    0xC000, 0xBE28, 0xBABC, 0xB8E4, 0xBB07, 0xBFBD, 0xC472, 0xC696, 0xC4A7, 0xC068, 0xBC28, 0xBA3A, 0xBBDF, 0xBF7D, 
    0xC31B, 0xC4C0, 0xC372, 0xC093, 0xBDB5, 0xBC67, 0xBD72, 0xBFBE, 0xC20B, 0xC316, 0xC23E, 0xC062, 0xBE87, 0xBDAF, 
    0xBE56, 0xBFC6, 0xC136, 0xC1DD, 0xC171, 0xC083, 0xBF95, 0xBF29, 0xBF5F, 0xBFD6, 0xC04D, 0xC083, 
};

JointIndex sBarinadeBodyAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0000, 0x0000 },
    { 0x0001, 0x0002, 0x0000 },
    { 0x0001, 0x0003, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0022 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0004, 0x0005, 0x0006 },
    { 0x0007, 0x0000, 0x0008 },
    { 0x0009, 0x000A, 0x000B },
    { 0x000C, 0x000D, 0x000E },
    { 0x000F, 0x0010, 0x0011 },
    { 0x0009, 0x0012, 0x0013 },
    { 0x0014, 0x0012, 0x0015 },
    { 0x0004, 0x0016, 0x0008 },
    { 0x0017, 0x000D, 0x000E },
    { 0x0018, 0x0019, 0x0013 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x001A, 0x0008 },
    { 0x0000, 0x0000, 0x001B },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x001C },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x001D, 0x0008 },
    { 0x0000, 0x0000, 0x001B },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x001C },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x001E, 0x0001 },
    { 0x0000, 0x0000, 0x001B },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x001C },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x001F, 0x0008 },
    { 0x0000, 0x0000, 0x001B },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x001C },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0020, 0x0008 },
    { 0x0000, 0x0000, 0x001B },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x001C },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0021, 0x0003, 0x0000 },
    { 0x0021, 0x0000, 0x0000 },
    { 0x0021, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x004A, 0x0072, 0x009A },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gBarinadeBodyAnim = { 
    { 40 }, sBarinadeBodyAnimFrameData,
    sBarinadeBodyAnimJointIndices, 34
};

u8 object_bv_possiblePadding_005194[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_bvTex_0051A0[] = {
#include "assets/objects/object_bv/object_bvTex_0051A0.rgba16.inc.c"
};

u64 object_bvTex_0052A0[] = {
#include "assets/objects/object_bv/object_bvTex_0052A0.rgba16.inc.c"
};

u64 object_bvTex_0053A0[] = {
#include "assets/objects/object_bv/object_bvTex_0053A0.rgba16.inc.c"
};

u64 object_bvTex_0055A0[] = {
#include "assets/objects/object_bv/object_bvTex_0055A0.ia16.inc.c"
};

u64 object_bvTex_0059A0[] = {
#include "assets/objects/object_bv/object_bvTex_0059A0.ia16.inc.c"
};

u64 object_bvTex_005DA0[] = {
#include "assets/objects/object_bv/object_bvTex_005DA0.ia16.inc.c"
};

u64 object_bvTex_0065A0[] = {
#include "assets/objects/object_bv/object_bvTex_0065A0.i8.inc.c"
};

Vtx object_bvVtx_0067A0[] = {
#include "assets/objects/object_bv/object_bvVtx_0067A0.vtx.inc"
};

Gfx gBarinadeBodySkelLimbsLimb_01583CDL_007F40[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_0051A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bvVtx_0067A0, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 3, 5, 8, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeBodySkelLimbsLimb_015770DL_007FD8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 63, 63, 191, 255),
    gsSPVertex(&object_bvVtx_0067A0[9], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_bvVtx_0067A0[39], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_bvVtx_0067A0[69], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeBodySkelLimbsLimb_01580CDL_0080B0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_0052A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_bvTex_0053A0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_bvVtx_0067A0[99], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 3, 6, 0, 7, 5, 8, 0),
    gsSP2Triangles(9, 7, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 11, 15, 0, 16, 14, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 12, 18, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&object_bvVtx_0067A0[130], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_bvVtx_0067A0[160], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 18, 0, 26, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_bvVtx_0067A0[192], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_bvVtx_0067A0[222], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_bvVtx_0067A0[252], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSPVertex(&object_bvVtx_0067A0[270], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeBodySkelLimbsLimb_015A04DL_0082A8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_0051A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_bvVtx_0067A0[273], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 9, 1, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSP2Triangles(2, 3, 0, 0, 1, 0, 10, 0),
    gsSPVertex(&object_bvVtx_0067A0[305], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 4, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeBodySkelLimbsLimb_015854DL_008388[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_0051A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_bvVtx_0067A0[322], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 3, 9, 0),
    gsSP1Triangle(6, 8, 10, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&object_bvVtx_0067A0[333], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP1Triangle(0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeBodySkelLimbsLimb_015878DL_008458[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_0055A0, G_IM_FMT_IA, G_IM_SIZ_16b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_bvVtx_0067A0[338], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeBodySkelLimbsLimb_015890DL_0084E8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_0059A0, G_IM_FMT_IA, G_IM_SIZ_16b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_bvVtx_0067A0[342], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeBodySkelLimbsLimb_0158C0DL_008578[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_0055A0, G_IM_FMT_IA, G_IM_SIZ_16b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_bvVtx_0067A0[346], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeBodySkelLimbsLimb_0158D8DL_008608[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_0059A0, G_IM_FMT_IA, G_IM_SIZ_16b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_bvVtx_0067A0[350], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeBodySkelLimbsLimb_015908DL_008698[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_0055A0, G_IM_FMT_IA, G_IM_SIZ_16b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_bvVtx_0067A0[354], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeBodySkelLimbsLimb_015920DL_008728[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_0059A0, G_IM_FMT_IA, G_IM_SIZ_16b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_bvVtx_0067A0[358], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeBodySkelLimbsLimb_015950DL_0087B8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_0055A0, G_IM_FMT_IA, G_IM_SIZ_16b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_bvVtx_0067A0[362], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeBodySkelLimbsLimb_015968DL_008848[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_0059A0, G_IM_FMT_IA, G_IM_SIZ_16b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_bvVtx_0067A0[366], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeBodySkelLimbsLimb_015998DL_0088D8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_0055A0, G_IM_FMT_IA, G_IM_SIZ_16b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_bvVtx_0067A0[370], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeBodySkelLimbsLimb_0159B0DL_008968[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_0059A0, G_IM_FMT_IA, G_IM_SIZ_16b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_bvVtx_0067A0[374], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Vtx object_bvVtx_0089F8[] = {
#include "assets/objects/object_bv/object_bvVtx_0089F8.vtx.inc"
};

Gfx gBarinadeDL_008BB8[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_bvTex_005DA0, G_IM_FMT_IA, G_IM_SIZ_16b, 16, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 229),
    gsSPVertex(object_bvVtx_0089F8, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 3, 6, 0, 7, 6, 8, 0),
    gsSP1Triangle(9, 0, 10, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bvVtx_0089F8[11], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 0, 10, 0),
    gsSP2Triangles(11, 6, 12, 0, 0, 11, 13, 0),
    gsSP2Triangles(3, 9, 14, 0, 5, 9, 3, 0),
    gsSP2Triangles(15, 7, 6, 0, 9, 5, 1, 0),
    gsSP2Triangles(0, 9, 1, 0, 11, 2, 16, 0),
    gsSP2Triangles(6, 11, 16, 0, 11, 0, 2, 0),
    gsSP1Triangle(15, 6, 16, 0),
    gsSPEndDisplayList(),
};

Vtx object_bvVtx_008CB0[] = {
#include "assets/objects/object_bv/object_bvVtx_008CB0.vtx.inc"
};

Gfx gBarinadeDL_008D70[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_bvTex_0065A0, G_IM_FMT_I, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 2, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 15, G_TX_NOMIRROR | G_TX_WRAP,
                4, 1),
    gsDPSetTileSize(1, 0, 0, 0x003C, 0x007C),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, SHADE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 128, 255, 255, 255),
    gsDPSetEnvColor(0, 100, 255, 0),
    gsSPDisplayList(0x09000000),
    gsSPVertex(object_bvVtx_008CB0, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(6, 8, 11, 0, 6, 11, 7, 0),
    gsSPEndDisplayList(),
};

Vtx object_bvVtx_008E48[] = {
#include "assets/objects/object_bv/object_bvVtx_008E48.vtx.inc"
};

Gfx gBarinadeDL_008E88[] = {
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_008F88, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                       COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPEndDisplayList(),
};

Gfx gBarinadeDL_008EF0[] = {
    gsSPVertex(object_bvVtx_008E48, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeDL_008F08[] = {
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_008F88, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                       COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_DECAL2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPEndDisplayList(),
};

Gfx gBarinadeDL_008F70[] = {
    gsSPVertex(object_bvVtx_008E48, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u64 object_bvTex_008F88[] = {
#include "assets/objects/object_bv/object_bvTex_008F88.i8.inc.c"
};

Gfx gBarinadeDL_009388[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, ENVIRONMENT,
                       TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeDL_0093A0[] = {
    gsDPLoadTextureBlock_4b(0x08000000, G_IM_FMT_I, 32, 96, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(object_bvVtx_0093F0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx object_bvVtx_0093F0[] = {
#include "assets/objects/object_bv/object_bvVtx_0093F0.vtx.inc"
};

Gfx gBarinadeDL_009430[] = {
    gsSPMatrix(0x01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                       COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPEndDisplayList(),
};

Gfx gBarinadeDL_009468[] = {
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(object_bvVtx_0094B8, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx object_bvVtx_0094B8[] = {
#include "assets/objects/object_bv/object_bvVtx_0094B8.vtx.inc"
};

Gfx gBarinadeDL_0094F8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_0052A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_bvTex_0053A0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPEndDisplayList(),
};

Gfx gBarinadeDL_0095B0[] = {
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_bvVtx_0067A0[99], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 3, 6, 0, 7, 5, 8, 0),
    gsSP2Triangles(9, 7, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 11, 15, 0, 16, 14, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 12, 18, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&object_bvVtx_0067A0[130], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_bvVtx_0067A0[160], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 18, 0, 26, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_bvVtx_0067A0[192], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_bvVtx_0067A0[222], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_bvVtx_0067A0[252], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSPVertex(&object_bvVtx_0067A0[270], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u64 gBarinadeSparkBall1Tex[] = {
#include "assets/objects/object_bv/gBarinadeSparkBall1Tex.i8.inc.c"
};

u64 gBarinadeSparkBall2Tex[] = {
#include "assets/objects/object_bv/gBarinadeSparkBall2Tex.i8.inc.c"
};

u64 gBarinadeSparkBall3Tex[] = {
#include "assets/objects/object_bv/gBarinadeSparkBall3Tex.i8.inc.c"
};

u64 gBarinadeSparkBall4Tex[] = {
#include "assets/objects/object_bv/gBarinadeSparkBall4Tex.i8.inc.c"
};

u64 gBarinadeSparkBall5Tex[] = {
#include "assets/objects/object_bv/gBarinadeSparkBall5Tex.i8.inc.c"
};

u64 gBarinadeSparkBall6Tex[] = {
#include "assets/objects/object_bv/gBarinadeSparkBall6Tex.i8.inc.c"
};

u64 gBarinadeSparkBall7Tex[] = {
#include "assets/objects/object_bv/gBarinadeSparkBall7Tex.i8.inc.c"
};

u64 gBarinadeSparkBall8Tex[] = {
#include "assets/objects/object_bv/gBarinadeSparkBall8Tex.i8.inc.c"
};

Vtx object_bvVtx_0116F8[] = {
#include "assets/objects/object_bv/object_bvVtx_0116F8.vtx.inc"
};

Gfx gBarinadeDL_011738[] = {
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                       COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPEndDisplayList(),
};

Gfx gBarinadeDL_011768[] = {
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(object_bvVtx_0116F8, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u64 object_bvTex_0117B8[] = {
#include "assets/objects/object_bv/object_bvTex_0117B8.rgba16.inc.c"
};

u64 object_bvTex_0119B8[] = {
#include "assets/objects/object_bv/object_bvTex_0119B8.rgba16.inc.c"
};

u64 object_bvTex_011BB8[] = {
#include "assets/objects/object_bv/object_bvTex_011BB8.rgba16.inc.c"
};

Vtx object_bvVtx_011DB8[] = {
#include "assets/objects/object_bv/object_bvVtx_011DB8.vtx.inc"
};

Gfx gBarinadeDL_0128B8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_0117B8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 4, 1, G_TX_NOMIRROR |
                G_TX_WRAP, 4, 1),
    gsDPSetTileSize(1, 0, 0, 0x003C, 0x003C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0, 0,
                       0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPEndDisplayList(),
};

Gfx gBarinadeDL_012948[] = {
    gsSPVertex(object_bvVtx_011DB8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 26, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_bvVtx_011DB8[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_bvVtx_011DB8[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_bvVtx_011DB8[94], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_bvVtx_011DB8[124], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 20, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_bvVtx_011DB8[156], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP1Triangle(17, 18, 19, 0),
    gsSPEndDisplayList(),
};

Vtx object_bvVtx_012A80[] = {
#include "assets/objects/object_bv/object_bvVtx_012A80.vtx.inc"
};

Gfx gBarinadeDL_012BA0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_011BB8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_bvTex_0119B8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 4, 1, 1),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, PRIMITIVE,
                       0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPEndDisplayList(),
};

Gfx gBarinadeDL_012C50[] = {
    gsSPVertex(object_bvVtx_012A80, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 6, 4, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 10, 8, 0, 9, 11, 12, 0),
    gsSP2Triangles(2, 1, 13, 0, 13, 14, 12, 0),
    gsSP2Triangles(15, 1, 0, 0, 15, 10, 9, 0),
    gsSP2Triangles(13, 1, 15, 0, 5, 10, 15, 0),
    gsSP2Triangles(15, 14, 13, 0, 15, 6, 5, 0),
    gsSP2Triangles(0, 6, 15, 0, 9, 14, 15, 0),
    gsSP2Triangles(12, 11, 16, 0, 12, 16, 17, 0),
    gsSP2Triangles(16, 11, 7, 0, 16, 3, 17, 0),
    gsSP2Triangles(8, 11, 9, 0, 4, 3, 16, 0),
    gsSP2Triangles(13, 17, 2, 0, 4, 16, 7, 0),
    gsSP2Triangles(12, 17, 13, 0, 17, 3, 2, 0),
    gsSP2Triangles(4, 6, 0, 0, 12, 14, 9, 0),
    gsSP2Triangles(8, 10, 5, 0, 7, 11, 8, 0),
    gsSP2Triangles(2, 3, 0, 0, 4, 7, 5, 0),
    gsSPEndDisplayList(),
};

u64 object_bvTex_012CE0[] = {
#include "assets/objects/object_bv/object_bvTex_012CE0.i8.inc.c"
};

Vtx object_bvVtx_0134E0[] = {
#include "assets/objects/object_bv/object_bvVtx_0134E0.vtx.inc"
};

Gfx gBarinadeDL_0135B0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_012CE0, G_IM_FMT_I, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 6, 5, 15, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_CLAMP, 5, G_TX_NOLOD, G_TX_MIRROR |
                G_TX_WRAP, 6, 14),
    gsDPSetTileSize(1, 0, 0, 0x00FC, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPEndDisplayList(),
};

Gfx gBarinadeDL_013638[] = {
    gsSPVertex(object_bvVtx_0134E0, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 6, 7, 0, 8, 0, 9, 0),
    gsSP2Triangles(10, 8, 11, 0, 6, 3, 12, 0),
    gsSPEndDisplayList(),
};

u64 object_bvTex_013660[] = {
#include "assets/objects/object_bv/object_bvTex_013660.ia16.inc.c"
};

Vtx object_bvVtx_015660[] = {
#include "assets/objects/object_bv/object_bvVtx_015660.vtx.inc"
};

Gfx gBarinadeDL_0156A0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_013660, G_IM_FMT_IA, G_IM_SIZ_16b, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, ENVIRONMENT, COMBINED, ENVIRONMENT, 0, 0, 0,
                       COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPEndDisplayList(),
};

Gfx gBarinadeDL_015710[] = {
    gsSPVertex(object_bvVtx_015660, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

StandardLimb gBarinadeBodySkelLimbsLimb_015728 = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_015734 = { 
    { 0, 1754, 0 }, LIMB_DONE, 0x02,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_015740 = { 
    { 0, 1754, 0 }, LIMB_DONE, 0x03,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_01574C = { 
    { 0, 1754, 0 }, LIMB_DONE, 0x04,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_015758 = { 
    { 0, 1477, 0 }, 0x05, 0x38,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_015764 = { 
    { 0, 0, 0 }, 0x06, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_015770 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x07,
    gBarinadeBodySkelLimbsLimb_015770DL_007FD8
};

StandardLimb gBarinadeBodySkelLimbsLimb_01577C = { 
    { 0, 0, 0 }, 0x08, 0x14,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_015788 = { 
    { 477, 0, 0 }, 0x09, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_015794 = { 
    { 245, 0, -490 }, LIMB_DONE, 0x0A,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_0157A0 = { 
    { -245, 0, 490 }, LIMB_DONE, 0x0B,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_0157AC = { 
    { -245, 466, 152 }, LIMB_DONE, 0x0C,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_0157B8 = { 
    { -245, 288, -397 }, LIMB_DONE, 0x0D,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_0157C4 = { 
    { -245, -288, -397 }, LIMB_DONE, 0x0E,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_0157D0 = { 
    { -245, -466, 152 }, LIMB_DONE, 0x0F,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_0157DC = { 
    { 245, 466, -152 }, LIMB_DONE, 0x10,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_0157E8 = { 
    { 245, 288, 397 }, LIMB_DONE, 0x11,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_0157F4 = { 
    { 245, -288, 397 }, LIMB_DONE, 0x12,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_015800 = { 
    { 245, -466, -152 }, LIMB_DONE, 0x13,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_01580C = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBarinadeBodySkelLimbsLimb_01580CDL_0080B0
};

StandardLimb gBarinadeBodySkelLimbsLimb_015818 = { 
    { 954, 0, 0 }, 0x15, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_015824 = { 
    { 187, 0, 0 }, 0x16, 0x18,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_015830 = { 
    { 487, 0, 0 }, LIMB_DONE, 0x17,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_01583C = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBarinadeBodySkelLimbsLimb_01583CDL_007F40
};

StandardLimb gBarinadeBodySkelLimbsLimb_015848 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x19,
    gBarinadeDL_008D70
};

StandardLimb gBarinadeBodySkelLimbsLimb_015854 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x1A,
    gBarinadeBodySkelLimbsLimb_015854DL_008388
};

StandardLimb gBarinadeBodySkelLimbsLimb_015860 = { 
    { 61, 111, 151 }, 0x1B, 0x20,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_01586C = { 
    { 0, 0, 0 }, 0x1C, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_015878 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x1D,
    gBarinadeBodySkelLimbsLimb_015878DL_008458
};

StandardLimb gBarinadeBodySkelLimbsLimb_015884 = { 
    { 250, 0, 0 }, 0x1E, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_015890 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x1F,
    gBarinadeBodySkelLimbsLimb_015890DL_0084E8
};

StandardLimb gBarinadeBodySkelLimbsLimb_01589C = { 
    { 250, 0, 0 }, LIMB_DONE, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_0158A8 = { 
    { 61, 178, -58 }, 0x21, 0x26,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_0158B4 = { 
    { 0, 0, 0 }, 0x22, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_0158C0 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x23,
    gBarinadeBodySkelLimbsLimb_0158C0DL_008578
};

StandardLimb gBarinadeBodySkelLimbsLimb_0158CC = { 
    { 250, 0, 0 }, 0x24, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_0158D8 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x25,
    gBarinadeBodySkelLimbsLimb_0158D8DL_008608
};

StandardLimb gBarinadeBodySkelLimbsLimb_0158E4 = { 
    { 250, 0, 0 }, LIMB_DONE, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_0158F0 = { 
    { 61, 0, -187 }, 0x27, 0x2C,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_0158FC = { 
    { 0, 0, 0 }, 0x28, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_015908 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x29,
    gBarinadeBodySkelLimbsLimb_015908DL_008698
};

StandardLimb gBarinadeBodySkelLimbsLimb_015914 = { 
    { 250, 0, 0 }, 0x2A, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_015920 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x2B,
    gBarinadeBodySkelLimbsLimb_015920DL_008728
};

StandardLimb gBarinadeBodySkelLimbsLimb_01592C = { 
    { 250, 0, 0 }, LIMB_DONE, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_015938 = { 
    { 61, -178, -58 }, 0x2D, 0x32,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_015944 = { 
    { 0, 0, 0 }, 0x2E, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_015950 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x2F,
    gBarinadeBodySkelLimbsLimb_015950DL_0087B8
};

StandardLimb gBarinadeBodySkelLimbsLimb_01595C = { 
    { 250, 0, 0 }, 0x30, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_015968 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x31,
    gBarinadeBodySkelLimbsLimb_015968DL_008848
};

StandardLimb gBarinadeBodySkelLimbsLimb_015974 = { 
    { 250, 0, 0 }, LIMB_DONE, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_015980 = { 
    { 61, -110, 152 }, 0x33, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_01598C = { 
    { 0, 0, 0 }, 0x34, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_015998 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x35,
    gBarinadeBodySkelLimbsLimb_015998DL_0088D8
};

StandardLimb gBarinadeBodySkelLimbsLimb_0159A4 = { 
    { 250, 0, 0 }, 0x36, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_0159B0 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x37,
    gBarinadeBodySkelLimbsLimb_0159B0DL_008968
};

StandardLimb gBarinadeBodySkelLimbsLimb_0159BC = { 
    { 250, 0, 0 }, LIMB_DONE, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_0159C8 = { 
    { 0, 1734, 0 }, LIMB_DONE, 0x39,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_0159D4 = { 
    { 0, 1734, 0 }, LIMB_DONE, 0x3A,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_0159E0 = { 
    { 0, 1734, 0 }, LIMB_DONE, 0x3B,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_0159EC = { 
    { 0, 1885, 0 }, 0x3C, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_0159F8 = { 
    { 0, 0, 0 }, 0x3D, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeBodySkelLimbsLimb_015A04 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x3E,
    gBarinadeBodySkelLimbsLimb_015A04DL_0082A8
};

StandardLimb gBarinadeBodySkelLimbsLimb_015A10 = { 
    { 237, 0, 0 }, LIMB_DONE, LIMB_DONE,
    NULL
};

void* gBarinadeBodySkelLimbs[] = {
    &gBarinadeBodySkelLimbsLimb_015728,
    &gBarinadeBodySkelLimbsLimb_015734,
    &gBarinadeBodySkelLimbsLimb_015740,
    &gBarinadeBodySkelLimbsLimb_01574C,
    &gBarinadeBodySkelLimbsLimb_015758,
    &gBarinadeBodySkelLimbsLimb_015764,
    &gBarinadeBodySkelLimbsLimb_015770,
    &gBarinadeBodySkelLimbsLimb_01577C,
    &gBarinadeBodySkelLimbsLimb_015788,
    &gBarinadeBodySkelLimbsLimb_015794,
    &gBarinadeBodySkelLimbsLimb_0157A0,
    &gBarinadeBodySkelLimbsLimb_0157AC,
    &gBarinadeBodySkelLimbsLimb_0157B8,
    &gBarinadeBodySkelLimbsLimb_0157C4,
    &gBarinadeBodySkelLimbsLimb_0157D0,
    &gBarinadeBodySkelLimbsLimb_0157DC,
    &gBarinadeBodySkelLimbsLimb_0157E8,
    &gBarinadeBodySkelLimbsLimb_0157F4,
    &gBarinadeBodySkelLimbsLimb_015800,
    &gBarinadeBodySkelLimbsLimb_01580C,
    &gBarinadeBodySkelLimbsLimb_015818,
    &gBarinadeBodySkelLimbsLimb_015824,
    &gBarinadeBodySkelLimbsLimb_015830,
    &gBarinadeBodySkelLimbsLimb_01583C,
    &gBarinadeBodySkelLimbsLimb_015848,
    &gBarinadeBodySkelLimbsLimb_015854,
    &gBarinadeBodySkelLimbsLimb_015860,
    &gBarinadeBodySkelLimbsLimb_01586C,
    &gBarinadeBodySkelLimbsLimb_015878,
    &gBarinadeBodySkelLimbsLimb_015884,
    &gBarinadeBodySkelLimbsLimb_015890,
    &gBarinadeBodySkelLimbsLimb_01589C,
    &gBarinadeBodySkelLimbsLimb_0158A8,
    &gBarinadeBodySkelLimbsLimb_0158B4,
    &gBarinadeBodySkelLimbsLimb_0158C0,
    &gBarinadeBodySkelLimbsLimb_0158CC,
    &gBarinadeBodySkelLimbsLimb_0158D8,
    &gBarinadeBodySkelLimbsLimb_0158E4,
    &gBarinadeBodySkelLimbsLimb_0158F0,
    &gBarinadeBodySkelLimbsLimb_0158FC,
    &gBarinadeBodySkelLimbsLimb_015908,
    &gBarinadeBodySkelLimbsLimb_015914,
    &gBarinadeBodySkelLimbsLimb_015920,
    &gBarinadeBodySkelLimbsLimb_01592C,
    &gBarinadeBodySkelLimbsLimb_015938,
    &gBarinadeBodySkelLimbsLimb_015944,
    &gBarinadeBodySkelLimbsLimb_015950,
    &gBarinadeBodySkelLimbsLimb_01595C,
    &gBarinadeBodySkelLimbsLimb_015968,
    &gBarinadeBodySkelLimbsLimb_015974,
    &gBarinadeBodySkelLimbsLimb_015980,
    &gBarinadeBodySkelLimbsLimb_01598C,
    &gBarinadeBodySkelLimbsLimb_015998,
    &gBarinadeBodySkelLimbsLimb_0159A4,
    &gBarinadeBodySkelLimbsLimb_0159B0,
    &gBarinadeBodySkelLimbsLimb_0159BC,
    &gBarinadeBodySkelLimbsLimb_0159C8,
    &gBarinadeBodySkelLimbsLimb_0159D4,
    &gBarinadeBodySkelLimbsLimb_0159E0,
    &gBarinadeBodySkelLimbsLimb_0159EC,
    &gBarinadeBodySkelLimbsLimb_0159F8,
    &gBarinadeBodySkelLimbsLimb_015A04,
    &gBarinadeBodySkelLimbsLimb_015A10,
};

SkeletonHeader gBarinadeBodySkel = { 
    gBarinadeBodySkelLimbs, ARRAY_COUNT(gBarinadeBodySkelLimbs)
};

s16 sBarinadeAnim_015D10FrameData[] = {
    0x0000, 0x004C, 0x4000, 0x4000, 0x3C86, 0x35E3, 0x31C7, 0x30F8, 0x306B, 0x3017, 0x2FF4, 0x2FF9, 0x301E, 0x305B, 
    0x30A7, 0x30FA, 0x314B, 0x3193, 0x31C7, 0x31F1, 0x321F, 0x3251, 0x3289, 0x32C8, 0x330F, 0x335F, 0x33B8, 0x341C, 
    0x348C, 0x3508, 0x3593, 0x363C, 0x370D, 0x37FE, 0x3904, 0x3A17, 0x3B2D, 0x3C3C, 0x3D3B, 0x3E21, 0x3EE5, 0x3F7C, 
    0x3FDD, 0x4000, 0x05CA, 0x00DF, 0xF77B, 0xF1AB, 0xF086, 0xEFBE, 0xEF47, 0xEF15, 0xEF1D, 0xEF51, 0xEFA8, 0xF013, 
    0xF089, 0xF0FC, 0xF160, 0xF1AB, 0xF1E6, 0xF227, 0xF26E, 0xF2BE, 0xF317, 0xF37B, 0xF3EB, 0xF469, 0xF4F7, 0xF595, 
    0xF645, 0xF709, 0xF7F8, 0xF921, 0xFA76, 0xFBE9, 0xFD6E, 0xFEF7, 0x0077, 0x01E0, 0x0325, 0x043A, 0x050F, 0x0599, 
    0x05CA, 0xEF07, 0xF6CB, 0x05A0, 0x0ECE, 0x109D, 0x11D9, 0x1294, 0x12E3, 0x12D7, 0x1283, 0x11FB, 0x1151, 0x1098, 
    0x0FE2, 0x0F44, 0x0ECE, 0x0E70, 0x0E0A, 0x0D99, 0x0D1C, 0x0C8F, 0x0BF1, 0x0B40, 0x0A78, 0x0999, 0x089F, 0x0789, 
    0x0653, 0x04DA, 0x0305, 0x00EB, 0xFEA1, 0xFC3B, 0xF9CE, 0xF770, 0xF536, 0xF334, 0xF180, 0xF02E, 0xEF54, 0xEF07, 
    0xEB68, 0xF728, 0x0D98, 0x1B7C, 0x1E38, 0x2015, 0x2131, 0x21A8, 0x2196, 0x2118, 0x204A, 0x1F48, 0x1E30, 0x1D1E, 
    0x1C2D, 0x1B7C, 0x1AEE, 0x1A53, 0x19A9, 0x18EB, 0x1816, 0x1727, 0x161A, 0x14ED, 0x139B, 0x1221, 0x107C, 0x0EA8, 
    0x0C6C, 0x09A8, 0x067A, 0x0303, 0xFF62, 0xFBB7, 0xF822, 0xF4C3, 0xF1BA, 0xEF26, 0xED27, 0xEBDD, 0xEB68, 0x0D5A, 
    0x05FC, 0xF7EA, 0xEF34, 0xED7D, 0xEC51, 0xEB9F, 0xEB55, 0xEB60, 0xEBAF, 0xEC30, 0xECD2, 0xED82, 0xEE2E, 0xEEC4, 
    0xEF34, 0xEF7E, 0xEFB8, 0xEFEC, 0xF024, 0xF06A, 0xF0C9, 0xF14B, 0xF1F9, 0xF2DE, 0xF405, 0xF577, 0xF73F, 0xFA64, 
    0xFF4D, 0x0512, 0x0ACC, 0x0F94, 0x1281, 0x1378, 0x1338, 0x1224, 0x10A1, 0x0F11, 0x0DD9, 0x0D5A, 
};

JointIndex sBarinadeAnim_015D10JointIndices[] = {
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x002C },
    { 0x0000, 0x0000, 0x0055 },
    { 0x0000, 0x0000, 0x007E },
    { 0x0000, 0x0000, 0x00A7 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gBarinadeAnim_015D10 = { 
    { 41 }, sBarinadeAnim_015D10FrameData,
    sBarinadeAnim_015D10JointIndices, 3
};

s16 sBarinadeAnim_015F10FrameData[] = {
    0x0000, 0x004C, 0x4000, 0x4000, 0x3C8E, 0x35F4, 0x31C7, 0x30E4, 0x3061, 0x302B, 0x3034, 0x3069, 0x30BA, 0x3117, 
    0x316D, 0x31AE, 0x31C7, 0x31AB, 0x316D, 0x312F, 0x3113, 0x313B, 0x31C7, 0x32A3, 0x339E, 0x34B5, 0x35E1, 0x371E, 
    0x3867, 0x39B6, 0x3B08, 0x3C57, 0x3D9E, 0x3ED8, 0x4000, 0x4135, 0x4279, 0x439C, 0x446E, 0x44BE, 0x4401, 0x425F, 
    0x40BE, 0x4000, 0x05CA, 0x00EB, 0xF792, 0xF1AB, 0xF06A, 0xEFAF, 0xEF64, 0xEF70, 0xEFBB, 0xF02E, 0xF0B1, 0xF12C, 
    0xF187, 0xF1AB, 0xF183, 0xF12B, 0xF0D4, 0xF0AC, 0xF0E4, 0xF1AB, 0xF2E6, 0xF455, 0xF5EF, 0xF7AA, 0xF97D, 0xFB5E, 
    0xFD44, 0xFF27, 0x00FB, 0x02B9, 0x0457, 0x05CA, 0x06F9, 0x07D2, 0x0860, 0x08AF, 0x08C6, 0x084F, 0x0748, 0x0642, 
    0x05CA, 0xEF07, 0xF6B9, 0x057B, 0x0ECE, 0x10C9, 0x11EF, 0x1266, 0x1253, 0x11DC, 0x1127, 0x1058, 0x0F96, 0x0F07, 
    0x0ECE, 0x0F0D, 0x0F97, 0x1021, 0x1060, 0x1008, 0x0ECE, 0x0CDA, 0x0A8E, 0x07FD, 0x0536, 0x0249, 0xFF46, 0xFC3F, 
    0xF943, 0xF662, 0xF3AD, 0xF133, 0xEF07, 0xED80, 0xECC5, 0xEC91, 0xECA3, 0xECB7, 0xED14, 0xEDDF, 0xEEAA, 0xEF07, 
    0xEB68, 0xF70C, 0x0D60, 0x1B7C, 0x1E7B, 0x2038, 0x20EB, 0x20CF, 0x201B, 0x1F09, 0x1DD0, 0x1CAB, 0x1BD1, 0x1B7C, 
    0x1BDB, 0x1CAC, 0x1D7D, 0x1DDC, 0x1D57, 0x1B7C, 0x1889, 0x1518, 0x1140, 0x0D18, 0x08B7, 0x0434, 0xFFA6, 0xFB25, 
    0xF6C7, 0xF2A3, 0xEED1, 0xEB68, 0xE8C2, 0xE708, 0xE60A, 0xE596, 0xE57A, 0xE667, 0xE871, 0xEA7B, 0xEB68, 0x0D5A, 
    0x060D, 0xF80D, 0xEF34, 0xED53, 0xEC3C, 0xEBCB, 0xEBDD, 0xEC4E, 0xECFA, 0xEDBE, 0xEE76, 0xEEFE, 0xEF34, 0xEEF8, 
    0xEE75, 0xEDF2, 0xEDB7, 0xEE0A, 0xEF34, 0xF121, 0xF37C, 0xF62E, 0xF91D, 0xFC2F, 0xFF4D, 0x025B, 0x0542, 0x07E8, 
    0x0A34, 0x0C0D, 0x0D5A, 0x0C9C, 0x0968, 0x053E, 0x01A4, 0x001A, 0x022C, 0x06BA, 0x0B48, 0x0D5A, 
};

JointIndex sBarinadeAnim_015F10JointIndices[] = {
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x002C },
    { 0x0000, 0x0000, 0x0055 },
    { 0x0000, 0x0000, 0x007E },
    { 0x0000, 0x0000, 0x00A7 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gBarinadeAnim_015F10 = { 
    { 41 }, sBarinadeAnim_015F10FrameData,
    sBarinadeAnim_015F10JointIndices, 3
};

s16 sBarinadeSupportDamage1AnimFrameData[] = {
    0x0000, 0x004C, 0x4000, 0x0000, 0x020C, 0x05AD, 0x071C, 0x0485, 0xFFFD, 0xFBA4, 0xF99A, 0xFB5B, 0xFF77, 0x03AB, 
    0x05B0, 0x0428, 0x0089, 0xFCD2, 0xFB06, 0xFC55, 0xFF77, 0x02B0, 0x0444, 0x032E, 0x0089, 0xFDCD, 0xFC72, 0xFD50, 
    0xFF77, 0x01B6, 0x02D8, 0x0233, 0x0089, 0xFEC7, 0xFDDE, 0xFE4A, 0xFF77, 0x00BC, 0x016C, 0x013E, 0x0096, 0xFFD1, 
    0xFF4A, 0x0000, 0x4000, 0x3F14, 0x3D5E, 0x3C72, 0x3D00, 0x3E39, 0x3F72, 0x4000, 0x3F72, 0x3E39, 0x3D00, 0x3C72, 
    0x3D00, 0x3E39, 0x3F72, 0x4000, 0x3F72, 0x3E39, 0x3D00, 0x3C72, 0x3D00, 0x3E39, 0x3F72, 0x4000, 0x3F72, 0x3E39, 
    0x3D00, 0x3C72, 0x3D00, 0x3E39, 0x3F72, 0x4000, 0x3F72, 0x3E39, 0x3D00, 0x3C72, 0x3D00, 0x3E39, 0x3F72, 0x4000, 
    0x4000, 0x0000, 0x01CA, 0x04F7, 0x0639, 0x03F7, 0x0003, 0xFC38, 0xFA6E, 0xFBEE, 0xFF78, 0x0319, 0x04DC, 0x038D, 
    0x0072, 0xFD4B, 0xFBDA, 0xFD3A, 0x0044, 0x035A, 0x04DC, 0x03D7, 0x0155, 0xFEB1, 0xFD46, 0xFDC8, 0xFF61, 0x011C, 
    0x0204, 0x01A1, 0x0089, 0xFF59, 0xFEB2, 0xFEE0, 0xFF83, 0x0037, 0x0098, 0x007B, 0x001B, 0xFFAD, 0xFF68, 0x0000, 
    0x05CA, 0xFC9E, 0xEBD5, 0xE38E, 0xEAFB, 0xF9A6, 0x0830, 0x0F39, 0x09E4, 0xFD19, 0xF018, 0xEA26, 0xEFC5, 0xFC3A, 
    0x08EA, 0x0F39, 0x0B17, 0x00CF, 0xF64D, 0xF17B, 0xF5EE, 0xFFD1, 0x09F9, 0x0F39, 0x0C83, 0x052A, 0xFD8C, 0xFA09, 
    0xFD0D, 0x03D7, 0x0B06, 0x0F39, 0x0ED7, 0x0BE9, 0x0880, 0x06AA, 0x0764, 0x096D, 0x0B83, 0x0C5F, 0x05CA, 0x0000, 
    0xFDE3, 0xFA31, 0xF8E4, 0xFBF6, 0x012B, 0x0626, 0x0889, 0x06B5, 0x0243, 0xFDA6, 0xFB51, 0xFCB0, 0x0032, 0x03D5, 
    0x0596, 0x044C, 0x013F, 0xFE15, 0xFC75, 0xFD4C, 0xFF8F, 0x01F1, 0x0324, 0x0278, 0x00BB, 0xFEE0, 0xFDD8, 0xFE28, 
    0xFF38, 0x004F, 0x00B2, 0xFFD5, 0xFE3A, 0xFCBC, 0xFC37, 0xFD3C, 0xFF39, 0x0156, 0x02BC, 0x0000, 0xEF07, 0xF7D4, 
    0x07F7, 0x1007, 0x090A, 0xFB1A, 0xED71, 0xE749, 0xEDA6, 0xFBA8, 0x09A9, 0x1007, 0x09D3, 0xFC17, 0xEE23, 0xE749, 
    0xEBF0, 0xF761, 0x033A, 0x091A, 0x056C, 0xFC37, 0xF287, 0xED65, 0xEF73, 0xF592, 0xFC30, 0xFFBB, 0xFE9A, 0xFAEB, 
    0xF6B0, 0xF3EA, 0xF386, 0xF451, 0xF51C, 0xF4BB, 0xF259, 0xEEC4, 0xEB3C, 0xE905, 0xEF07, 0x0000, 0xFCDA, 0xF755, 
    0xF555, 0xF9FF, 0x01EF, 0x0943, 0x0C17, 0x075E, 0xFDD8, 0xF450, 0xEF91, 0xF280, 0xFA05, 0x01EF, 0x060F, 0x0412, 
    0xFE9A, 0xF8E9, 0xF640, 0xF883, 0xFD9D, 0x02DE, 0x0592, 0x042B, 0x0061, 0xFC6A, 0xFA7D, 0xFBD4, 0xFF0A, 0x0267, 
    0x042F, 0x0382, 0x016F, 0xFF25, 0xFDD4, 0xFDF2, 0xFED2, 0xFFE9, 0x00AE, 0x0000, 0xEB68, 0xF8DA, 0x11FA, 0x1FF7, 
    0x1964, 0x09B5, 0xF971, 0xF11C, 0xF5A9, 0x01A9, 0x0E0B, 0x13BE, 0x0E7E, 0x02DC, 0xF702, 0xF11C, 0xF52E, 0xFF24, 
    0x0903, 0x0CD1, 0x0659, 0xF9AB, 0xED30, 0xE755, 0xECB3, 0xF8E7, 0x04E0, 0x098E, 0x024E, 0xF3CF, 0xE4FB, 0xDCBD, 
    0xDEA3, 0xE66A, 0xEF44, 0xF45F, 0xF47B, 0xF263, 0xEF58, 0xEC99, 0xEB68, 0x0000, 0xFB5F, 0xF2D9, 0xEE7B, 0xF17C, 
    0xF7CA, 0xFE83, 0x02C5, 0x02EF, 0x00D5, 0xFEC2, 0xFF06, 0x03D4, 0x0B6A, 0x1224, 0x145F, 0x0F10, 0x04D8, 0xFA96, 
    0xF52A, 0xF761, 0xFE22, 0x056F, 0x094A, 0x07AC, 0x0309, 0xFE1A, 0xFB9A, 0xFCBB, 0xFFE1, 0x038E, 0x0646, 0x080D, 
    0x098A, 0x0A36, 0x0989, 0x069D, 0x01FB, 0xFD42, 0xFA0D, 0x0000, 0x0D5A, 0x0606, 0xF617, 0xE6A5, 0xD827, 0xD082, 
    0xDF18, 0xECC2, 0xDF0F, 0xCF3B, 0xD3B4, 0xDA6C, 0xD37C, 0xCEE1, 0xDE9F, 0xECC2, 0xE285, 0xD462, 0xD221, 0xD317, 
    0xD206, 0xD46B, 0xE3BB, 0xEECC, 0xE90B, 0xDE0C, 0xD276, 0xCAF1, 0xCD82, 0xD730, 0xE789, 0xF417, 0xF34F, 0xEE3E, 
    0xE8F1, 0xE776, 0xEB3F, 0xF202, 0xFA39, 0x025A, 0x0D5A, 0x0000, 
};

JointIndex sBarinadeSupportDamage1AnimJointIndices[] = {
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0003, 0x002C },
    { 0x0000, 0x0055, 0x007E },
    { 0x0000, 0x00A7, 0x00D0 },
    { 0x0000, 0x00F9, 0x0122 },
    { 0x0000, 0x014B, 0x0174 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gBarinadeSupportDamage1Anim = { 
    { 41 }, sBarinadeSupportDamage1AnimFrameData,
    sBarinadeSupportDamage1AnimJointIndices, 3
};

u8 object_bv_possiblePadding_0162BC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 sBarinadeSupportDamage2AnimFrameData[] = {
    0x0000, 0x004C, 0x4000, 0x4000, 0x3C78, 0x35C6, 0x31C7, 0x3156, 0x3157, 0x31B3, 0x3251, 0x331A, 0x33F7, 0x34D0, 
    0x358D, 0x3617, 0x3655, 0x3631, 0x3593, 0x34FC, 0x34ED, 0x354C, 0x3600, 0x36EF, 0x3800, 0x3918, 0x3A1E, 0x3AF8, 
    0x3B8C, 0x3BC1, 0x3B7E, 0x3B1D, 0x3B04, 0x3B28, 0x3B7D, 0x3BF8, 0x3C8F, 0x3D36, 0x3DE2, 0x3E87, 0x3F1B, 0x3F93, 
    0x3FE3, 0x4000, 0x05CA, 0x00CB, 0xF752, 0xF1AB, 0xF103, 0xF0F2, 0xF158, 0xF21A, 0xF318, 0xF436, 0xF555, 0xF65A, 
    0xF725, 0xF799, 0xF79A, 0xF709, 0xF67F, 0xF692, 0xF725, 0xF81A, 0xF953, 0xFAB1, 0xFC17, 0xFD66, 0xFE81, 0xFF49, 
    0xFFA1, 0xFF69, 0xFF11, 0xFF0E, 0xFF54, 0xFFD4, 0x0082, 0x014E, 0x022C, 0x030E, 0x03E5, 0x04A5, 0x053F, 0x05A5, 
    0x05CA, 0xEF07, 0xF6EB, 0x05E0, 0x0ECE, 0x0FE0, 0x1016, 0x0F9A, 0x0E94, 0x0D2E, 0x0B90, 0x09E4, 0x0853, 0x0706, 
    0x0627, 0x05DD, 0x0653, 0x06C6, 0x066F, 0x0576, 0x0401, 0x0237, 0x003F, 0xFE3F, 0xFC5F, 0xFAC4, 0xF996, 0xF8FB, 
    0xF919, 0xF962, 0xF938, 0xF8AF, 0xF7D9, 0xF6C9, 0xF592, 0xF447, 0xF2FB, 0xF1C1, 0xF0AC, 0xEFCE, 0xEF3C, 0xEF07, 
    0xEB68, 0xF759, 0x0DF9, 0x1B7C, 0x1D23, 0x1D8D, 0x1CF2, 0x1B8C, 0x1993, 0x1743, 0x14D3, 0x127D, 0x107B, 0x0F06, 
    0x0E57, 0x0EA8, 0x0EF8, 0x0E42, 0x0CBB, 0x0A93, 0x07FE, 0x052F, 0x0258, 0xFFAD, 0xFD5F, 0xFBA2, 0xFAA9, 0xFAA5, 
    0xFAD8, 0xFA70, 0xF988, 0xF83A, 0xF6A0, 0xF4D5, 0xF2F1, 0xF111, 0xEF4D, 0xEDC0, 0xEC84, 0xEBB3, 0xEB68, 0x0D5A, 
    0x0696, 0xF91E, 0xEF34, 0xEAEB, 0xE782, 0xE4FD, 0xE35F, 0xE2A8, 0xE2DD, 0xE4F7, 0xE924, 0xEE3A, 0xF30D, 0xF673, 
    0xF73F, 0xF7B2, 0xFA3A, 0xFDF7, 0x0206, 0x0586, 0x0795, 0x081A, 0x07C4, 0x06E0, 0x05B7, 0x0498, 0x03CC, 0x046A, 
    0x06CF, 0x0A33, 0x0DCD, 0x10D5, 0x1281, 0x12C2, 0x123C, 0x1132, 0x0FEC, 0x0EAD, 0x0DBA, 0x0D5A, 
};

JointIndex sBarinadeSupportDamage2AnimJointIndices[] = {
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x002C },
    { 0x0000, 0x0000, 0x0055 },
    { 0x0000, 0x0000, 0x007E },
    { 0x0000, 0x0000, 0x00A7 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gBarinadeSupportDamage2Anim = { 
    { 41 }, sBarinadeSupportDamage2AnimFrameData,
    sBarinadeSupportDamage2AnimJointIndices, 3
};

s16 sBarinadeSupportAttachedAnimFrameData[] = {
    0x0000, 0x004C, 0x4000, 0x4000, 0x402A, 0x408C, 0x40FD, 0x4156, 0x416C, 0x4146, 0x4109, 0x40BA, 0x4060, 0x4000, 
    0x3FA0, 0x3F46, 0x3EF7, 0x3EBA, 0x3E94, 0x3E9F, 0x3EE0, 0x3F40, 0x3FA8, 0x4000, 0x4058, 0x40C0, 0x4120, 0x4161, 
    0x416C, 0x4146, 0x4109, 0x40BA, 0x4060, 0x4000, 0x3FA0, 0x3F46, 0x3EF7, 0x3EBA, 0x3E94, 0x3EAA, 0x3F03, 0x3F74, 
    0x3FD6, 0x05CA, 0x065B, 0x06F6, 0x077B, 0x0800, 0x089B, 0x092C, 0x098D, 0x099D, 0x0964, 0x0909, 0x0893, 0x080B, 
    0x077B, 0x06EB, 0x0663, 0x05ED, 0x0592, 0x0559, 0x0569, 0x05CA, 0x065B, 0x06F6, 0x077B, 0x0800, 0x089B, 0x092C, 
    0x098D, 0x099D, 0x0964, 0x0909, 0x0893, 0x080B, 0x077B, 0x06EB, 0x0663, 0x05ED, 0x0592, 0x0559, 0x0569, 0xEF07, 
    0xEEBB, 0xEED0, 0xEF52, 0xF012, 0xF0E2, 0xF193, 0xF244, 0xF313, 0xF3D4, 0xF456, 0xF46B, 0xF41F, 0xF3A5, 0xF308, 
    0xF253, 0xF193, 0xF0D3, 0xF01E, 0xEF81, 0xEF07, 0xEEBB, 0xEED0, 0xEF52, 0xF012, 0xF0E2, 0xF193, 0xF244, 0xF313, 
    0xF3D4, 0xF456, 0xF46B, 0xF41F, 0xF3A5, 0xF308, 0xF253, 0xF193, 0xF0D3, 0xF01E, 0xEF81, 0xEB68, 0xEA86, 0xE9C2, 
    0xE929, 0xE8CA, 0xE8E5, 0xE987, 0xEA78, 0xEB7B, 0xEC58, 0xED35, 0xEE39, 0xEF29, 0xEFCC, 0xEFE6, 0xEF88, 0xEEEF, 
    0xEE2A, 0xED48, 0xEC58, 0xEB68, 0xEA86, 0xE9C2, 0xE929, 0xE8CA, 0xE8E5, 0xE987, 0xEA78, 0xEB7B, 0xEC58, 0xED35, 
    0xEE39, 0xEF29, 0xEFCC, 0xEFE6, 0xEF88, 0xEEEF, 0xEE2A, 0xED48, 0xEC58, 0x0D5A, 0x0B3F, 0x05F6, 0xFF09, 0xF806, 
    0xF276, 0xEE3D, 0xEA52, 0xE6E2, 0xE41C, 0xE22A, 0xE218, 0xE403, 0xE6B9, 0xECFB, 0xF621, 0xFE31, 0x04A2, 0x0976, 
    0x0D22, 0x0D5A, 0x09CB, 0x0453, 0xFDF2, 0xF7A9, 0xF276, 0xEE3D, 0xEA52, 0xE6E2, 0xE41C, 0xE22A, 0xE218, 0xE403, 
    0xE6B9, 0xECFB, 0xF621, 0xFE31, 0x04A2, 0x08F5, 0x0C20, 0x0000, 
};

JointIndex sBarinadeSupportAttachedAnimJointIndices[] = {
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x002B },
    { 0x0000, 0x0000, 0x0053 },
    { 0x0000, 0x0000, 0x007B },
    { 0x0000, 0x0000, 0x00A3 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gBarinadeSupportAttachedAnim = { 
    { 40 }, sBarinadeSupportAttachedAnimFrameData,
    sBarinadeSupportAttachedAnimJointIndices, 3
};

u8 object_bv_possiblePadding_0166B8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_bvVtx_0166C0[] = {
#include "assets/objects/object_bv/object_bvVtx_0166C0.vtx.inc"
};

Gfx gBarinadeSupportSkelLimbsLimb_01745CDL_016BA0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bvTex_0171D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bvVtx_0166C0[54], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 5, 6, 0),
    gsSP2Triangles(8, 7, 6, 0, 9, 3, 4, 0),
    gsSP2Triangles(3, 10, 2, 0, 10, 0, 2, 0),
    gsSP1Triangle(5, 9, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bvTex_0170D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x001C),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 13, 18, 0, 19, 18, 20, 0),
    gsSP2Triangles(21, 20, 15, 0, 11, 22, 23, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeSupportSkelLimbsLimb_017450DL_016CC8[] = {
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_bvVtx_0166C0[42], 3, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bvTex_0171D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bvVtx_0166C0[45], 9, 3),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x00000200),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x02000200),
    gsSP2Triangles(0, 1, 3, 0, 0, 4, 5, 0),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x00000200),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x02000200),
    gsSP2Triangles(2, 0, 6, 0, 2, 7, 8, 0),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x00000200),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x02000200),
    gsSP2Triangles(1, 2, 9, 0, 1, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeSupportSkelLimbsLimb_017444DL_016DC8[] = {
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_bvVtx_0166C0[30], 3, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bvTex_0171D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bvVtx_0166C0[33], 9, 3),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x00A2FDA8),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x015DFDA8),
    gsSP2Triangles(0, 1, 3, 0, 0, 4, 5, 0),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x00A2FDA8),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x015DFDA8),
    gsSP2Triangles(2, 0, 6, 0, 2, 7, 8, 0),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x00A2FDA8),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x015DFDA8),
    gsSP2Triangles(1, 2, 9, 0, 1, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeSupportSkelLimbsLimb_017438DL_016EC8[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_bvVtx_0166C0[18], 3, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bvTex_0171D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bvVtx_0166C0[21], 9, 3),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x008CF94F),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x0173F94F),
    gsSP2Triangles(1, 0, 3, 0, 1, 4, 5, 0),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x008CF94F),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x0173F94F),
    gsSP2Triangles(2, 1, 6, 0, 2, 7, 8, 0),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x008CF94F),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x0173F94F),
    gsSP2Triangles(0, 2, 9, 0, 0, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeSupportSkelLimbsLimb_01742CDL_016FC8[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(object_bvVtx_0166C0, 3, 0),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bvTex_0170D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bvVtx_0166C0[3], 15, 3),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x05FF0000),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x02000000),
    gsSP1Triangle(3, 0, 2, 0),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x09FF0000),
    gsSP1Triangle(4, 1, 0, 0),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x0E000000),
    gsSP2Triangles(5, 2, 1, 0, 6, 7, 0, 0),
    gsSP1Triangle(8, 9, 1, 0),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x02000000),
    gsSP2Triangles(10, 11, 2, 0, 12, 13, 2, 0),
    gsSP2Triangles(14, 15, 0, 0, 16, 17, 1, 0),
    gsSPEndDisplayList(),
};

u64 object_bvTex_0170D8[] = {
#include "assets/objects/object_bv/object_bvTex_0170D8.rgba16.inc.c"
};

u64 object_bvTex_0171D8[] = {
#include "assets/objects/object_bv/object_bvTex_0171D8.rgba16.inc.c"
};

StandardLimb gBarinadeSupportSkelLimbsLimb_0173D8 = { 
    { 0, 76, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeSupportSkelLimbsLimb_0173E4 = { 
    { 0, 0, 0 }, 0x02, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeSupportSkelLimbsLimb_0173F0 = { 
    { 464, 0, 0 }, 0x03, 0x0B,
    NULL
};

StandardLimb gBarinadeSupportSkelLimbsLimb_0173FC = { 
    { 476, 0, 0 }, 0x04, 0x0A,
    NULL
};

StandardLimb gBarinadeSupportSkelLimbsLimb_017408 = { 
    { 474, 0, 0 }, 0x05, 0x09,
    NULL
};

StandardLimb gBarinadeSupportSkelLimbsLimb_017414 = { 
    { 476, 0, 0 }, 0x06, 0x08,
    NULL
};

StandardLimb gBarinadeSupportSkelLimbsLimb_017420 = { 
    { 200, 0, 0 }, LIMB_DONE, 0x07,
    NULL
};

StandardLimb gBarinadeSupportSkelLimbsLimb_01742C = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBarinadeSupportSkelLimbsLimb_01742CDL_016FC8
};

StandardLimb gBarinadeSupportSkelLimbsLimb_017438 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBarinadeSupportSkelLimbsLimb_017438DL_016EC8
};

StandardLimb gBarinadeSupportSkelLimbsLimb_017444 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBarinadeSupportSkelLimbsLimb_017444DL_016DC8
};

StandardLimb gBarinadeSupportSkelLimbsLimb_017450 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBarinadeSupportSkelLimbsLimb_017450DL_016CC8
};

StandardLimb gBarinadeSupportSkelLimbsLimb_01745C = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBarinadeSupportSkelLimbsLimb_01745CDL_016BA0
};

void* gBarinadeSupportSkelLimbs[] = {
    &gBarinadeSupportSkelLimbsLimb_0173D8,
    &gBarinadeSupportSkelLimbsLimb_0173E4,
    &gBarinadeSupportSkelLimbsLimb_0173F0,
    &gBarinadeSupportSkelLimbsLimb_0173FC,
    &gBarinadeSupportSkelLimbsLimb_017408,
    &gBarinadeSupportSkelLimbsLimb_017414,
    &gBarinadeSupportSkelLimbsLimb_017420,
    &gBarinadeSupportSkelLimbsLimb_01742C,
    &gBarinadeSupportSkelLimbsLimb_017438,
    &gBarinadeSupportSkelLimbsLimb_017444,
    &gBarinadeSupportSkelLimbsLimb_017450,
    &gBarinadeSupportSkelLimbsLimb_01745C,
};

FlexSkeletonHeader gBarinadeSupportSkel = { 
    { gBarinadeSupportSkelLimbs, ARRAY_COUNT(gBarinadeSupportSkelLimbs) }, 5
};

u8 object_bv_possiblePadding_0174A4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sBarinadeSupportCutAnimFrameData[] = {
    0x0000, 0x004C, 0x4000, 0x4000, 0x3CC9, 0x366A, 0x31C7, 0x3306, 0x3555, 0x338E, 0x31C7, 0x338E, 0x3555, 0x33CC, 
    0x31C7, 0x30B8, 0x2F88, 0x2E4D, 0x2D1D, 0x2C0C, 0x2B30, 0x2A9D, 0x2A6A, 0x2AAB, 0x2C28, 0x2F17, 0x32B4, 0x363A, 
    0x38E4, 0x3A8E, 0x3BA8, 0x3C42, 0x3C72, 0x3C2E, 0x3B86, 0x3AAB, 0x39D0, 0x3927, 0x38E4, 0x38E4, 0x38E4, 0x38E4, 
    0x38E4, 0x38E4, 0x0000, 0x0114, 0x02F3, 0x038E, 0xFFDE, 0xFC72, 0xFF8E, 0x02D8, 0x0014, 0xFD28, 0xFE5B, 0x00C2, 
    0x0222, 0x011A, 0xFF0B, 0xFDDE, 0xFE59, 0xFF8D, 0x00CC, 0x016C, 0x010D, 0x001C, 0xFF1D, 0xFE94, 0xFE90, 0xFEBA, 
    0xFF03, 0xFF58, 0xFFAA, 0xFFE8, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x05CA, 0xFF7A, 0xF182, 0xE358, 0xDC72, 0xDCE8, 0xDF7C, 0xE3A0, 0xE8C7, 0xEE63, 0xF3E7, 0xF8C6, 0xFC72, 
    0xFEE6, 0x00A8, 0x01F8, 0x0316, 0x0443, 0x05C0, 0x07CD, 0x0AAB, 0x0E5C, 0x12A2, 0x1759, 0x1C5C, 0x2188, 0x26B9, 
    0x2BCB, 0x309B, 0x3504, 0x38E4, 0x3B72, 0x3C72, 0x3C8E, 0x3C72, 0x3BE4, 0x3AAB, 0x3972, 0x38E4, 0x38E4, 0x38E4, 
    0x0000, 0x0155, 0x0426, 0x06AB, 0x071C, 0xFFCB, 0xF8E4, 0xFF1C, 0x05B0, 0x0029, 0xFA50, 0xFCB7, 0x0184, 0x0444, 
    0x022F, 0xFE0B, 0xFBBC, 0xFCE2, 0xFF8D, 0x0244, 0x038E, 0x0288, 0x0025, 0xFDAF, 0xFC72, 0xFCD8, 0xFE18, 0xFFAD, 
    0x0114, 0x01C7, 0x018C, 0x00BB, 0xFFAD, 0xFEB9, 0xFE39, 0xFE3E, 0xFE8A, 0xFEFD, 0xFF78, 0xFFD9, 0x0000, 0xEF07, 
    0xECB8, 0xE7DD, 0xE38E, 0xE107, 0xE000, 0xE1C7, 0xE38E, 0xE1C7, 0xE000, 0xE181, 0xE38E, 0xE4D3, 0xE657, 0xE7F7, 
    0xE98D, 0xEAF8, 0xEC12, 0xECB9, 0xECC8, 0xEC1D, 0xE6C0, 0xDD52, 0xD690, 0xD805, 0xDC39, 0xDDA9, 0xDE30, 0xDF0B, 
    0xE178, 0xE6B3, 0xF045, 0xFD5A, 0x0BA7, 0x18DE, 0x22B5, 0x28E0, 0x2CE7, 0x2F3B, 0x304D, 0x3090, 
};

JointIndex sBarinadeSupportCutAnimJointIndices[] = {
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x002C, 0x0055 },
    { 0x0000, 0x007E, 0x00A7 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gBarinadeSupportCutAnim = { 
    { 41 }, sBarinadeSupportCutAnimFrameData,
    sBarinadeSupportCutAnimJointIndices, 3
};

u8 object_bv_possiblePadding_0176A4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sBarinadeSupportDetachedAnimFrameData[] = {
    0x0000, 0x004C, 0x4000, 0xEB68, 0x0D5A, 0x38E4, 0x393C, 0x39A4, 0x3A04, 0x3A45, 0x3A50, 0x3A2A, 0x39ED, 0x399E, 
    0x3944, 0x38E4, 0x3883, 0x3829, 0x37DA, 0x379D, 0x3777, 0x3782, 0x37C3, 0x3823, 0x388B, 0x38E4, 0x393C, 0x39A4, 
    0x3A04, 0x3A45, 0x3A50, 0x3A2A, 0x39ED, 0x399E, 0x3944, 0x38E4, 0x3883, 0x3829, 0x37DA, 0x379D, 0x3777, 0x3782, 
    0x37C3, 0x3823, 0x388B, 0x38E4, 0x38E4, 0x38B1, 0x3826, 0x375A, 0x3663, 0x3555, 0x3448, 0x3350, 0x3284, 0x31FA, 
    0x31C7, 0x31FA, 0x3284, 0x3350, 0x3448, 0x3555, 0x3663, 0x375A, 0x3826, 0x38B1, 0x38E4, 0x38B1, 0x3826, 0x375A, 
    0x3663, 0x3555, 0x3448, 0x3350, 0x3284, 0x31FA, 0x31C7, 0x31FA, 0x3284, 0x3350, 0x3448, 0x3555, 0x3663, 0x375A, 
    0x3826, 0x38B1, 0x38E4, 0x3090, 0x3236, 0x3417, 0x35DA, 0x3729, 0x37AC, 0x3729, 0x35DA, 0x3417, 0x3236, 0x3090, 
    0x2EE9, 0x2D09, 0x2B45, 0x29F6, 0x2973, 0x29F6, 0x2B45, 0x2D09, 0x2EE9, 0x3090, 0x3236, 0x3417, 0x35DA, 0x3729, 
    0x37AC, 0x3729, 0x35DA, 0x3417, 0x3236, 0x3090, 0x2EE9, 0x2D09, 0x2B45, 0x29F6, 0x2973, 0x29F6, 0x2B45, 0x2D09, 
    0x2EE9, 0x3090, 
};

JointIndex sBarinadeSupportDetachedAnimJointIndices[] = {
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0005 },
    { 0x0000, 0x0000, 0x002E },
    { 0x0000, 0x0000, 0x0057 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x0004 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gBarinadeSupportDetachedAnim = { 
    { 41 }, sBarinadeSupportDetachedAnimFrameData,
    sBarinadeSupportDetachedAnimJointIndices, 5
};

u8 object_bv_possiblePadding_017804[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_bvVtx_017810[] = {
#include "assets/objects/object_bv/object_bvVtx_017810.vtx.inc"
};

Gfx gBarinadeCutSupportSkelLimbsLimb_017F94DL_017B90[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bvTex_0170D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bvVtx_017810[32], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 2, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(10, 9, 4, 0, 0, 11, 12, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bvTex_0171D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(13, 14, 15, 0, 16, 15, 17, 0),
    gsSP2Triangles(18, 17, 19, 0, 20, 18, 19, 0),
    gsSP2Triangles(21, 20, 19, 0, 22, 16, 17, 0),
    gsSP2Triangles(16, 23, 15, 0, 23, 13, 15, 0),
    gsSP1Triangle(18, 22, 17, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeCutSupportSkelLimbsLimb_017F88DL_017CB8[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_bvVtx_017810[20], 3, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bvTex_0171D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bvVtx_017810[23], 9, 3),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x00000200),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x02000200),
    gsSP2Triangles(0, 1, 3, 0, 0, 4, 5, 0),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x00000200),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x02000200),
    gsSP2Triangles(2, 0, 6, 0, 2, 7, 8, 0),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x00000200),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x02000200),
    gsSP2Triangles(1, 2, 9, 0, 1, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeCutSupportSkelLimbsLimb_017F7CDL_017DB8[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(object_bvVtx_017810, 3, 0),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bvTex_0171D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bvVtx_017810[3], 17, 3),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x00A2FDA8),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x015DFDA8),
    gsSP2Triangles(0, 1, 3, 0, 0, 4, 5, 0),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x00A2FDA8),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x015DFDA8),
    gsSP2Triangles(1, 2, 6, 0, 1, 7, 8, 0),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x00A2FDA8),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x015DFDA8),
    gsSP2Triangles(2, 0, 9, 0, 2, 10, 11, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bvTex_018770, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 12, 15, 0, 16, 15, 17, 0),
    gsSP2Triangles(18, 16, 17, 0, 18, 17, 19, 0),
    gsSPEndDisplayList(),
};

StandardLimb gBarinadeCutSupportSkelLimbsLimb_017F28 = { 
    { 0, 76, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeCutSupportSkelLimbsLimb_017F34 = { 
    { 0, 0, 0 }, 0x02, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeCutSupportSkelLimbsLimb_017F40 = { 
    { 464, 0, 0 }, 0x03, 0x09,
    NULL
};

StandardLimb gBarinadeCutSupportSkelLimbsLimb_017F4C = { 
    { 476, 0, 0 }, 0x04, 0x08,
    NULL
};

StandardLimb gBarinadeCutSupportSkelLimbsLimb_017F58 = { 
    { 474, 0, 0 }, 0x05, 0x07,
    NULL
};

StandardLimb gBarinadeCutSupportSkelLimbsLimb_017F64 = { 
    { 476, 0, 0 }, 0x06, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeCutSupportSkelLimbsLimb_017F70 = { 
    { 200, 0, 0 }, LIMB_DONE, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeCutSupportSkelLimbsLimb_017F7C = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBarinadeCutSupportSkelLimbsLimb_017F7CDL_017DB8
};

StandardLimb gBarinadeCutSupportSkelLimbsLimb_017F88 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBarinadeCutSupportSkelLimbsLimb_017F88DL_017CB8
};

StandardLimb gBarinadeCutSupportSkelLimbsLimb_017F94 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBarinadeCutSupportSkelLimbsLimb_017F94DL_017B90
};

void* gBarinadeCutSupportSkelLimbs[] = {
    &gBarinadeCutSupportSkelLimbsLimb_017F28,
    &gBarinadeCutSupportSkelLimbsLimb_017F34,
    &gBarinadeCutSupportSkelLimbsLimb_017F40,
    &gBarinadeCutSupportSkelLimbsLimb_017F4C,
    &gBarinadeCutSupportSkelLimbsLimb_017F58,
    &gBarinadeCutSupportSkelLimbsLimb_017F64,
    &gBarinadeCutSupportSkelLimbsLimb_017F70,
    &gBarinadeCutSupportSkelLimbsLimb_017F7C,
    &gBarinadeCutSupportSkelLimbsLimb_017F88,
    &gBarinadeCutSupportSkelLimbsLimb_017F94,
};

FlexSkeletonHeader gBarinadeCutSupportSkel = { 
    { gBarinadeCutSupportSkelLimbs, ARRAY_COUNT(gBarinadeCutSupportSkelLimbs) }, 3
};

u8 object_bv_possiblePadding_017FD4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sBarinadeStumpAnimFrameData[] = {
    0x0000, 0xC000, 0xB270, 0xA7EF, 0xA38E, 0xB076, 0xC86E, 0xD555, 0xC95A, 0xB318, 0xA71C, 0xB140, 0xC415, 0xCE39, 
    0xC5ED, 0xB685, 0xAE39, 0xB4AD, 0xC0A9, 0xC71C, 0xC281, 0xB9F1, 0xB555, 0xB78E, 0xBC72, 0xC155, 0xC38E, 0xC272, 
    0xC000, 0xBD8E, 0xBC72, 0xBD47, 0xBF1C, 0xC0F2, 0xC1C7, 0xC139, 0xC000, 0xBEC7, 0xBE39, 0xBE68, 0xBED9, 0xBF60, 
    0xBFD1, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0xC000, 0x0D5A, 0xFD5E, 0xF555, 
    0xFDA1, 0x0D09, 0x1555, 0x0D97, 0xFF36, 0xF777, 0xFD5E, 0x0853, 0x0E39, 0x090F, 0xFF79, 0xFA50, 0xFDA1, 0x03CB, 
    0x071C, 0x0572, 0x01C7, 0xFE1C, 0xFC72, 0xFD8E, 0x0000, 0x0272, 0x038E, 0x02AB, 0x00B6, 0xFEC1, 0xFDDE, 0xFE89, 
    0x0000, 0x0177, 0x0222, 0x0177, 0x0000, 0xFE89, 0xFDDE, 0xFE33, 0xFEFE, 0xFFF1, 0x00BC, 0x0111, 0x00F5, 0x00B1, 
    0x0060, 0x001C, 0x0000, 0x0000, 0x0000, 0x0000, 0xEB68, 0xE226, 0xD8E4, 0xE88F, 0x05AA, 0x1555, 0x07F8, 0xEF25, 
    0xE1C7, 0xED4D, 0x02B3, 0x0E39, 0x0501, 0xF3E3, 0xEAAB, 0xEFAB, 0xFAAB, 0x05AB, 0x0AAB, 0x070E, 0xFF1C, 0xF72B, 
    0xF38E, 0xF69C, 0xFD55, 0x040E, 0x071C, 0x052B, 0x00E4, 0xFC9C, 0xFAAB, 0xFC0E, 0xFF1C, 0x022B, 0x038E, 0x0272, 
    0x0000, 0xFD8E, 0xFC72, 0xFD00, 0xFE52, 0xFFE7, 0x0139, 0x01C7, 0x0180, 0x00D7, 0x000D, 0xFF63, 0xFF1C, 0xFF8E, 
    0x0000, 0x0000, 
};

JointIndex sBarinadeStumpAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0000, 0x0002 },
    { 0x0000, 0x0000, 0x0035 },
    { 0x0000, 0x0000, 0x0068 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gBarinadeStumpAnim = { 
    { 51 }, sBarinadeStumpAnimFrameData,
    sBarinadeStumpAnimJointIndices, 2
};

Vtx object_bvVtx_018160[] = {
#include "assets/objects/object_bv/object_bvVtx_018160.vtx.inc"
};

Gfx gBarinadeStumpSkelLimbsLimb_018844DL_018410[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bvTex_0170D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bvVtx_018160[32], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 6, 4, 0, 7, 3, 1, 0),
    gsSP2Triangles(8, 5, 4, 0, 9, 0, 2, 0),
    gsSP2Triangles(10, 9, 2, 0, 0, 7, 1, 0),
    gsSP1Triangle(3, 8, 4, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeStumpSkelLimbsLimb_018838DL_0184D0[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_bvVtx_018160[20], 3, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bvTex_0171D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bvVtx_018160[23], 9, 3),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x0254F4F7),
    gsSP1Triangle(3, 4, 0, 0),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0xFFACF4F7),
    gsSP1Triangle(5, 0, 1, 0),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x0254F4F7),
    gsSP1Triangle(6, 7, 1, 0),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0xFFACF4F7),
    gsSP1Triangle(8, 1, 2, 0),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x0254F4F7),
    gsSP1Triangle(9, 10, 2, 0),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0xFFACF4F7),
    gsSP1Triangle(11, 2, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeStumpSkelLimbsLimb_01882CDL_0185E8[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(object_bvVtx_018160, 3, 0),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bvTex_0171D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bvVtx_018160[3], 17, 3),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x0173F94F),
    gsSP1Triangle(3, 4, 1, 0),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x008CF94F),
    gsSP1Triangle(5, 1, 0, 0),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x0173F94F),
    gsSP1Triangle(6, 7, 2, 0),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x008CF94F),
    gsSP1Triangle(8, 2, 1, 0),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x0173F94F),
    gsSP1Triangle(9, 10, 0, 0),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x008CF94F),
    gsSP1Triangle(11, 0, 2, 0),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bvTex_018770, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(17, 12, 15, 0, 17, 15, 18, 0),
    gsSPEndDisplayList(),
};

u64 object_bvTex_018770[] = {
#include "assets/objects/object_bv/object_bvTex_018770.rgba16.inc.c"
};

StandardLimb gBarinadeStumpSkelLimbsLimb_0187F0 = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeStumpSkelLimbsLimb_0187FC = { 
    { 0, 0, 0 }, 0x02, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeStumpSkelLimbsLimb_018808 = { 
    { 200, 0, 0 }, 0x03, 0x07,
    NULL
};

StandardLimb gBarinadeStumpSkelLimbsLimb_018814 = { 
    { 476, 0, 0 }, 0x04, 0x06,
    NULL
};

StandardLimb gBarinadeStumpSkelLimbsLimb_018820 = { 
    { 474, 0, 0 }, LIMB_DONE, 0x05,
    NULL
};

StandardLimb gBarinadeStumpSkelLimbsLimb_01882C = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBarinadeStumpSkelLimbsLimb_01882CDL_0185E8
};

StandardLimb gBarinadeStumpSkelLimbsLimb_018838 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBarinadeStumpSkelLimbsLimb_018838DL_0184D0
};

StandardLimb gBarinadeStumpSkelLimbsLimb_018844 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBarinadeStumpSkelLimbsLimb_018844DL_018410
};

void* gBarinadeStumpSkelLimbs[] = {
    &gBarinadeStumpSkelLimbsLimb_0187F0,
    &gBarinadeStumpSkelLimbsLimb_0187FC,
    &gBarinadeStumpSkelLimbsLimb_018808,
    &gBarinadeStumpSkelLimbsLimb_018814,
    &gBarinadeStumpSkelLimbsLimb_018820,
    &gBarinadeStumpSkelLimbsLimb_01882C,
    &gBarinadeStumpSkelLimbsLimb_018838,
    &gBarinadeStumpSkelLimbsLimb_018844,
};

FlexSkeletonHeader gBarinadeStumpSkel = { 
    { gBarinadeStumpSkelLimbs, ARRAY_COUNT(gBarinadeStumpSkelLimbs) }, 3
};

u8 object_bv_possiblePadding_01887C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 sBarinadeAnim_018A00FrameData[] = {
    0x0000, 0x06BE, 0x4000, 0x38E4, 0x3FA4, 0x4CB9, 0x555F, 0x577F, 0x5861, 0x5858, 0x57B5, 0x56C9, 0x55E7, 0x555F, 
    0x5522, 0x54D6, 0x545C, 0x5397, 0x5268, 0x50AE, 0x4E7D, 0x4C07, 0x4981, 0x471C, 0x44B7, 0x421A, 0x3F5D, 0x3C98, 
    0x39E3, 0x3756, 0x3508, 0x3312, 0x318A, 0x3089, 0x3031, 0x307E, 0x314B, 0x3273, 0x33D3, 0x3544, 0x36A3, 0x37CB, 
    0x3897, 0x38E4, 0xE549, 0xF03E, 0x057A, 0x1385, 0x16C8, 0x17CB, 0x1740, 0x15DA, 0x144C, 0x1349, 0x1385, 0x1520, 
    0x1792, 0x1A91, 0x1DCF, 0x2102, 0x23DE, 0x2617, 0x2762, 0x2774, 0x25FF, 0x229A, 0x1D56, 0x16A6, 0x0EFB, 0x06C6, 
    0xFE7A, 0xF688, 0xEF62, 0xE979, 0xE540, 0xE2A1, 0xE11C, 0xE080, 0xE09A, 0xE139, 0xE22A, 0xE33D, 0xE43F, 0xE4FE, 
    0xE549, 0xF10C, 0xEBDB, 0xE1CC, 0xDB25, 0xD989, 0xD8E8, 0xD8FF, 0xD989, 0xDA40, 0xDAE0, 0xDB25, 0xDB5C, 0xDBCA, 
    0xDC1C, 0xDC01, 0xDB25, 0xD822, 0xD32F, 0xCE66, 0xCBE0, 0xCDB7, 0xD3BE, 0xDBF5, 0xE5BF, 0xF07B, 0xFB8B, 0x064F, 
    0x1028, 0x1877, 0x1E9D, 0x21FA, 0x220A, 0x1F26, 0x1A01, 0x134C, 0x0BB8, 0x03F8, 0xFCBB, 0xF6B4, 0xF294, 0xF10C, 
    0xDC72, 0xF174, 0x1A28, 0x3513, 0x3C14, 0x3FC1, 0x40B2, 0x3F81, 0x3CC6, 0x3919, 0x3513, 0x2C01, 0x1D38, 0x0F5C, 
    0x0912, 0x0CF1, 0x16B0, 0x22A3, 0x2D1E, 0x3276, 0x33B3, 0x3452, 0x3458, 0x33CC, 0x32B4, 0x3115, 0x2EF6, 0x2C5D, 
    0x294E, 0x25D1, 0x21EB, 0x1CA8, 0x1573, 0x0CE4, 0x0391, 0xFA10, 0xF0F7, 0xE8DF, 0xE25C, 0xDE05, 0xDC72, 0x0000, 
    
};

JointIndex sBarinadeAnim_018A00JointIndices[] = {
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x002C },
    { 0x0000, 0x0000, 0x0055 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x007E },
};

AnimationHeader gBarinadeAnim_018A00 = { 
    { 41 }, sBarinadeAnim_018A00FrameData,
    sBarinadeAnim_018A00JointIndices, 3
};

s16 sBarinadeZapperDamage1AnimFrameData[] = {
    0x0000, 0x06BE, 0x4000, 0x38E4, 0x3C20, 0x4285, 0x471C, 0xE549, 0xEE99, 0x0102, 0x0E39, 0xF10C, 0xFBBB, 0x10D9, 
    0x2000, 0xDC72, 0xECA0, 0x0C9B, 0x238E, 0x0000, 
};

JointIndex sBarinadeZapperDamage1AnimJointIndices[] = {
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0007 },
    { 0x0000, 0x0000, 0x000B },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x000F },
};

AnimationHeader gBarinadeZapperDamage1Anim = { 
    { 4 }, sBarinadeZapperDamage1AnimFrameData,
    sBarinadeZapperDamage1AnimJointIndices, 3
};

u8 object_bv_possiblePadding_018A78[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sBarinadeZapperDamage2AnimFrameData[] = {
    0x0000, 0x06BE, 0x4000, 0x4858, 0x485D, 0x47C2, 0x471C, 0x4675, 0x4587, 0x446F, 0x434A, 0x4236, 0x4150, 0x40B7, 
    0x4086, 0x40DD, 0x414C, 0x415D, 0x411B, 0x4097, 0x3FDC, 0x3EFA, 0x3DFF, 0x3CF8, 0x3BF3, 0x3AFE, 0x3A27, 0x397D, 
    0x390C, 0x38E4, 0x0F3A, 0x0F5E, 0x0EF0, 0x0E39, 0x0CCF, 0x0A58, 0x0737, 0x03D0, 0x0086, 0xFDBB, 0xFBD4, 0xFB34, 
    0xFC3D, 0xFDA0, 0xFDE6, 0xFD39, 0xFBC3, 0xF9AB, 0xF71D, 0xF441, 0xF140, 0xEE44, 0xEB77, 0xE901, 0xE70B, 0xE5C0, 
    0xE549, 0x214D, 0x2193, 0x2110, 0x2000, 0x1EC7, 0x1D8E, 0x1C3E, 0x1ABD, 0x18F3, 0x16C8, 0x1424, 0x10ED, 0x0C7D, 
    0x06AC, 0x001B, 0xF96C, 0xF342, 0xEE3F, 0xEB05, 0xE9A6, 0xE992, 0xEA6F, 0xEBE8, 0xEDA5, 0xEF4F, 0xF08E, 0xF10C, 
    0x25C8, 0x2787, 0x2749, 0x238E, 0x1A6F, 0x0D37, 0xFF2C, 0xF397, 0xEDBE, 0xF276, 0xFF48, 0x0C8B, 0x1293, 0x0E8A, 
    0x051D, 0xF9E5, 0xF07F, 0xEC85, 0xF0A9, 0xFA82, 0x0608, 0x0F32, 0x11F4, 0x0897, 0xF64E, 0xE478, 0xDC72, 0x0000, 
    
};

JointIndex sBarinadeZapperDamage2AnimJointIndices[] = {
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x001E },
    { 0x0000, 0x0000, 0x0039 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0054 },
};

AnimationHeader gBarinadeZapperDamage2Anim = { 
    { 27 }, sBarinadeZapperDamage2AnimFrameData,
    sBarinadeZapperDamage2AnimJointIndices, 3
};

s16 sBarinadeZapperIdleAnimFrameData[] = {
    0x0000, 0x06BE, 0x4000, 0x38E4, 0x38F1, 0x3917, 0x3952, 0x39A1, 0x3A00, 0x3A6D, 0x3AE4, 0x3B64, 0x3BEA, 0x3C72, 
    0x3CFA, 0x3D7F, 0x3DFF, 0x3E77, 0x3EE4, 0x3F43, 0x3F91, 0x3FCD, 0x3FF3, 0x4000, 0x3FF3, 0x3FCD, 0x3F91, 0x3F43, 
    0x3EE4, 0x3E77, 0x3DFF, 0x3D7F, 0x3CFA, 0x3C72, 0x3BEA, 0x3B64, 0x3AE4, 0x3A6D, 0x3A00, 0x39A1, 0x3952, 0x3917, 
    0x38F1, 0xE549, 0xE45A, 0xE3C3, 0xE38E, 0xE3C3, 0xE45A, 0xE549, 0xE684, 0xE800, 0xE9B3, 0xEB92, 0xED91, 0xEFA7, 
    0xF1C7, 0xF3E7, 0xF5FD, 0xF7FC, 0xF9DB, 0xFB8E, 0xFD0B, 0xFE46, 0xFF34, 0xFFCB, 0x0000, 0xFFCB, 0xFF34, 0xFE46, 
    0xFD0B, 0xFB8E, 0xF9DB, 0xF7FC, 0xF5FD, 0xF3E7, 0xF1C7, 0xEFA7, 0xED91, 0xEB92, 0xE9B3, 0xE800, 0xE684, 0xF10C, 
    0xF59A, 0xFA8F, 0xFF84, 0x0412, 0x07D3, 0x0A5E, 0x0B4F, 0x0A5E, 0x07D3, 0x0412, 0xFF84, 0xFA8F, 0xF59A, 0xF10C, 
    0xED4C, 0xEAC0, 0xE9D0, 0xEAC0, 0xED4C, 0xF10C, 0xF59A, 0xFA8F, 0xFF84, 0x0412, 0x07D3, 0x0A5E, 0x0B4F, 0x0A5E, 
    0x07D3, 0x0412, 0xFF84, 0xFA8F, 0xF59A, 0xF10C, 0xED4C, 0xEAC0, 0xE9D0, 0xEAC0, 0xED4C, 0xDC72, 0xDEC0, 0xE3C8, 
    0xEADE, 0xF350, 0xFC72, 0x0593, 0x0E06, 0x151B, 0x1A24, 0x1C72, 0x1BB1, 0x1868, 0x1330, 0x0CA1, 0x0555, 0xFDE5, 
    0xF6E9, 0xF0FB, 0xECB3, 0xEAAB, 0xEB26, 0xEDAF, 0xF1C0, 0xF6D7, 0xFC72, 0x020C, 0x0724, 0x0B35, 0x0DBD, 0x0E39, 
    0x0C30, 0x07E8, 0x01FA, 0xFAFE, 0xF38E, 0xEC42, 0xE5B4, 0xE07C, 0xDD33, 0x0000, 
};

JointIndex sBarinadeZapperIdleAnimJointIndices[] = {
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0002, 0x0000 },
    { 0x0000, 0x0000, 0x0003 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x002B },
    { 0x0000, 0x0000, 0x0053 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x007B },
};

AnimationHeader gBarinadeZapperIdleAnim = { 
    { 40 }, sBarinadeZapperIdleAnimFrameData,
    sBarinadeZapperIdleAnimJointIndices, 3
};

u8 object_bv_possiblePadding_018D28[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_bvTex_018D30[] = {
#include "assets/objects/object_bv/object_bvTex_018D30.rgba16.inc.c"
};

u64 object_bvTex_018E30[] = {
#include "assets/objects/object_bv/object_bvTex_018E30.rgba16.inc.c"
};

Vtx object_bvVtx_019030[] = {
#include "assets/objects/object_bv/object_bvVtx_019030.vtx.inc"
};

Gfx gBarinadeZapperSkelLimbsLimb_019948DL_0194A0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bvTex_018E30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bvVtx_019030[43], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 6, 8, 0),
    gsSP2Triangles(0, 10, 1, 0, 11, 3, 5, 0),
    gsSP2Triangles(3, 12, 4, 0, 13, 0, 2, 0),
    gsSP1Triangle(6, 14, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bvTex_018D30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x001C),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 17, 22, 0, 23, 20, 16, 0),
    gsSP2Triangles(24, 22, 25, 0, 26, 27, 19, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeZapperSkelLimbsLimb_019954DL_0195C8[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_bvVtx_019030[31], 3, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bvTex_018E30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bvVtx_019030[34], 9, 3),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0xFFE9001E),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x0217001E),
    gsSP2Triangles(0, 1, 3, 0, 0, 4, 5, 0),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0xFFE9001E),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x0217001E),
    gsSP2Triangles(2, 0, 6, 0, 2, 7, 8, 0),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0xFFE9001E),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x0217001E),
    gsSP2Triangles(1, 2, 9, 0, 1, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeZapperSkelLimbsLimb_01996CDL_0196C8[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_bvVtx_019030[19], 3, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bvTex_018E30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bvVtx_019030[22], 9, 3),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x00C4FCD7),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x013BFCD7),
    gsSP2Triangles(0, 1, 3, 0, 0, 4, 5, 0),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x00C4FCD7),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x013BFCD7),
    gsSP2Triangles(1, 2, 6, 0, 1, 7, 8, 0),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x00C4FCD7),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x013BFCD7),
    gsSP2Triangles(2, 0, 9, 0, 2, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx gBarinadeZapperSkelLimbsLimb_019978DL_0197C8[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(object_bvVtx_019030, 3, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bvTex_018E30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_bvVtx_019030[3], 16, 3),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x0074F8F0),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x018BF8F0),
    gsSP1Triangle(3, 0, 1, 0),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x0074F8F0),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x018BF8F0),
    gsSP1Triangle(1, 2, 4, 0),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x0074F8F0),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x018BF8F0),
    gsSP1Triangle(5, 2, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_bvTex_018D30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x001C),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(7, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(10, 14, 17, 0, 12, 9, 18, 0),
    gsSPEndDisplayList(),
};

StandardLimb gBarinadeZapperSkelLimbsLimb_019930 = { 
    { 0, 173, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeZapperSkelLimbsLimb_01993C = { 
    { 0, 0, 0 }, 0x02, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeZapperSkelLimbsLimb_019948 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x03,
    gBarinadeZapperSkelLimbsLimb_019948DL_0194A0
};

StandardLimb gBarinadeZapperSkelLimbsLimb_019954 = { 
    { 414, 0, 0 }, 0x04, LIMB_DONE,
    gBarinadeZapperSkelLimbsLimb_019954DL_0195C8
};

StandardLimb gBarinadeZapperSkelLimbsLimb_019960 = { 
    { 329, 0, 0 }, 0x05, LIMB_DONE,
    NULL
};

StandardLimb gBarinadeZapperSkelLimbsLimb_01996C = { 
    { 0, 0, 0 }, LIMB_DONE, 0x06,
    gBarinadeZapperSkelLimbsLimb_01996CDL_0196C8
};

StandardLimb gBarinadeZapperSkelLimbsLimb_019978 = { 
    { 392, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gBarinadeZapperSkelLimbsLimb_019978DL_0197C8
};

void* gBarinadeZapperSkelLimbs[] = {
    &gBarinadeZapperSkelLimbsLimb_019930,
    &gBarinadeZapperSkelLimbsLimb_01993C,
    &gBarinadeZapperSkelLimbsLimb_019948,
    &gBarinadeZapperSkelLimbsLimb_019954,
    &gBarinadeZapperSkelLimbsLimb_019960,
    &gBarinadeZapperSkelLimbsLimb_01996C,
    &gBarinadeZapperSkelLimbsLimb_019978,
};

FlexSkeletonHeader gBarinadeZapperSkel = { 
    { gBarinadeZapperSkelLimbs, ARRAY_COUNT(gBarinadeZapperSkelLimbs) }, 4
};

u8 object_bv_possiblePadding_0199AC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

u64 object_bvTLUT_0199B0[] = {
#include "assets/objects/object_bv/object_bvTLUT_0199B0.rgba16.inc.c"
};

u8 object_bv_unaccounted_019BB0[] = {
    0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x19, 0xD4, 
};

u64 object_bvTex_019BB8[] = {
#include "assets/objects/object_bv/object_bvTex_019BB8.ci8.inc.c"
};

Vtx object_bvVtx_01A3B8[] = {
#include "assets/objects/object_bv/object_bvVtx_01A3B8.vtx.inc"
};

Gfx gBarinadeDoorPiece1DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_019BB8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_bvTLUT_0199B0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bvVtx_01A3B8, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u8 object_bv_possiblePadding_01A4A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_bvTLUT_01A4B0[] = {
#include "assets/objects/object_bv/object_bvTLUT_01A4B0.rgba16.inc.c"
};

u8 object_bv_unaccounted_01A6B0[] = {
    0x00, 0x00, 0x01, 0x10, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_bvTex_01A6B8[] = {
#include "assets/objects/object_bv/object_bvTex_01A6B8.ci8.inc.c"
};

Vtx object_bvVtx_01AEB8[] = {
#include "assets/objects/object_bv/object_bvVtx_01AEB8.vtx.inc"
};

Gfx gBarinadeDoorPiece2DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_01A6B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_bvTLUT_01A4B0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bvVtx_01AEB8, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u8 object_bv_possiblePadding_01AFA8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_bvTLUT_01AFB0[] = {
#include "assets/objects/object_bv/object_bvTLUT_01AFB0.rgba16.inc.c"
};

u8 object_bv_unaccounted_01B1B0[] = {
    0x00, 0x00, 0x01, 0x10, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_bvTex_01B1B8[] = {
#include "assets/objects/object_bv/object_bvTex_01B1B8.ci8.inc.c"
};

Vtx object_bvVtx_01B9B8[] = {
#include "assets/objects/object_bv/object_bvVtx_01B9B8.vtx.inc"
};

Gfx gBarinadeDoorPiece3DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_01B1B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_bvTLUT_01AFB0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bvVtx_01B9B8, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u8 object_bv_possiblePadding_01BAA8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_bvTLUT_01BAB0[] = {
#include "assets/objects/object_bv/object_bvTLUT_01BAB0.rgba16.inc.c"
};

u8 object_bv_unaccounted_01BCB0[] = {
    0x00, 0x00, 0x01, 0x10, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_bvTex_01BCB8[] = {
#include "assets/objects/object_bv/object_bvTex_01BCB8.ci8.inc.c"
};

Vtx object_bvVtx_01C4B8[] = {
#include "assets/objects/object_bv/object_bvVtx_01C4B8.vtx.inc"
};

Gfx gBarinadeDoorPiece4DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_01BCB8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_bvTLUT_01BAB0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bvVtx_01C4B8, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u8 object_bv_possiblePadding_01C5A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_bvTLUT_01C5B0[] = {
#include "assets/objects/object_bv/object_bvTLUT_01C5B0.rgba16.inc.c"
};

u8 object_bv_unaccounted_01C7B0[] = {
    0x00, 0x00, 0x01, 0x10, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_bvTex_01C7B8[] = {
#include "assets/objects/object_bv/object_bvTex_01C7B8.ci8.inc.c"
};

Vtx object_bvVtx_01CFB8[] = {
#include "assets/objects/object_bv/object_bvVtx_01CFB8.vtx.inc"
};

Gfx gBarinadeDoorPiece5DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_01C7B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_bvTLUT_01C5B0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bvVtx_01CFB8, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u8 object_bv_possiblePadding_01D0A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_bvTLUT_01D0B0[] = {
#include "assets/objects/object_bv/object_bvTLUT_01D0B0.rgba16.inc.c"
};

u8 object_bv_unaccounted_01D2B0[] = {
    0x00, 0x00, 0x01, 0x10, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_bvTex_01D2B8[] = {
#include "assets/objects/object_bv/object_bvTex_01D2B8.ci8.inc.c"
};

Vtx object_bvVtx_01DAB8[] = {
#include "assets/objects/object_bv/object_bvVtx_01DAB8.vtx.inc"
};

Gfx gBarinadeDoorPiece6DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_01D2B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_bvTLUT_01D0B0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bvVtx_01DAB8, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u8 object_bv_possiblePadding_01DBA8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_bvTLUT_01DBB0[] = {
#include "assets/objects/object_bv/object_bvTLUT_01DBB0.rgba16.inc.c"
};

u8 object_bv_unaccounted_01DDB0[] = {
    0x00, 0x00, 0x01, 0x10, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_bvTex_01DDB8[] = {
#include "assets/objects/object_bv/object_bvTex_01DDB8.ci8.inc.c"
};

Vtx object_bvVtx_01E5B8[] = {
#include "assets/objects/object_bv/object_bvVtx_01E5B8.vtx.inc"
};

Gfx gBarinadeDoorPiece7DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_01DDB8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_bvTLUT_01DBB0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bvVtx_01E5B8, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u8 object_bv_possiblePadding_01E6A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_bvTLUT_01E6B0[] = {
#include "assets/objects/object_bv/object_bvTLUT_01E6B0.rgba16.inc.c"
};

u8 object_bv_unaccounted_01E8B0[] = {
    0x00, 0x00, 0x01, 0x10, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_bvTex_01E8B8[] = {
#include "assets/objects/object_bv/object_bvTex_01E8B8.ci8.inc.c"
};

Vtx object_bvVtx_01F0B8[] = {
#include "assets/objects/object_bv/object_bvVtx_01F0B8.vtx.inc"
};

Gfx gBarinadeDoorPiece8DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_bvTex_01E8B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_bvTLUT_01E6B0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bvVtx_01F0B8, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

