#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_ddan_objects.h"

Vtx object_ddan_objectsVtx_000000[] = {
#include "assets/objects/object_ddan_objects/object_ddan_objectsVtx_000000.vtx.inc"
};

Gfx gDodongoDoorDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gDodongoDoorLeftSideTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_ddan_objectsVtx_000000, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPVertex(&object_ddan_objectsVtx_000000[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPVertex(&object_ddan_objectsVtx_000000[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx object_ddan_objectsVtx_000170[] = {
#include "assets/objects/object_ddan_objects/object_ddan_objectsVtx_000170.vtx.inc"
};

Gfx gDodongoBarsDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gDodongoBarsBottomTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_ddan_objectsVtx_000170, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gDodongoBarsTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ddan_objectsVtx_000170[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u64 gDodongo1TLUT[] = {
#include "assets/objects/object_ddan_objects/tlut_1.rgba16.inc.c"
};

u64 gDodongoTex_0410[] = {
#include "assets/objects/object_ddan_objects/tex_0410.ci8.inc.c"
};

Vtx object_ddan_objectsVtx_000C10[] = {
#include "assets/objects/object_ddan_objects/object_ddan_objectsVtx_000C10.vtx.inc"
};

Gfx gDodongoLowerJawDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gDodongoTex_0410, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gDodongo1TLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_ddan_objectsVtx_000C10, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 0, 2, 0, 7, 3, 5, 0),
    gsSP2Triangles(8, 7, 5, 0, 9, 8, 5, 0),
    gsSP2Triangles(9, 5, 10, 0, 6, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 12, 14, 13, 0),
    gsSP2Triangles(15, 16, 17, 0, 16, 18, 17, 0),
    gsSP2Triangles(17, 18, 19, 0, 13, 20, 11, 0),
    gsSP2Triangles(13, 17, 19, 0, 13, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(21, 24, 2, 0, 21, 2, 1, 0),
    gsSP2Triangles(22, 4, 3, 0, 23, 22, 3, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 29, 30, 0),
    gsSPVertex(&object_ddan_objectsVtx_000C10[31], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 5, 8, 0),
    gsSP2Triangles(9, 8, 10, 0, 11, 12, 9, 0),
    gsSP2Triangles(10, 11, 9, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 16, 17, 0, 18, 13, 19, 0),
    gsSP2Triangles(20, 21, 17, 0, 20, 17, 16, 0),
    gsSP2Triangles(22, 23, 15, 0, 15, 14, 22, 0),
    gsSP2Triangles(14, 24, 22, 0, 14, 13, 25, 0),
    gsSP1Triangle(14, 25, 24, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gDodongoTex_6F60, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ddan_objectsVtx_000C10[57], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(gDodongoTex_0410, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gDodongo1TLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ddan_objectsVtx_000C10[61], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gDodongoTex_6F60, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ddan_objectsVtx_000C10[64], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(gDodongoTex_0410, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gDodongo1TLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_ddan_objectsVtx_000C10[68], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(7, 6, 8, 0, 9, 7, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 11, 0),
    gsSP2Triangles(13, 14, 11, 0, 13, 15, 14, 0),
    gsSP2Triangles(15, 16, 14, 0, 15, 17, 16, 0),
    gsSP2Triangles(18, 19, 3, 0, 20, 21, 0, 0),
    gsSP2Triangles(19, 20, 0, 0, 19, 0, 3, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 25, 23, 0),
    gsSP2Triangles(22, 26, 25, 0, 25, 27, 23, 0),
    gsSP2Triangles(27, 28, 23, 0, 29, 30, 31, 0),
    gsSPVertex(&object_ddan_objectsVtx_000C10[100], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 6, 4, 0, 6, 0, 4, 0),
    gsSP2Triangles(1, 0, 7, 0, 1, 7, 8, 0),
    gsSP2Triangles(0, 6, 9, 0, 0, 9, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 10, 0, 14, 10, 13, 0),
    gsSPEndDisplayList(),
};

u8 object_ddan_objects_possiblePadding_001768[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gDodongoLowerJawColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gDodongoLowerJawColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
    { 0x00000000, 0x000007C2 },
    { 0x00000000, 0x000007D2 },
};

CollisionPoly gDodongoLowerJawColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x8F21, 0x0000, 0xC3A4, 0x095B},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x8F21, 0x0000, 0xC3A4, 0x095B},
    {0x0000, 0x0004, 0x0005, 0x0006, 0x70DF, 0x0000, 0xC3A4, 0x095B},
    {0x0000, 0x0007, 0x0004, 0x0006, 0x70DF, 0x0000, 0xC3A4, 0x095B},
    {0x0001, 0x0002, 0x0001, 0x0008, 0x0002, 0x7E51, 0xEB55, 0x02BA},
    {0x0001, 0x0004, 0x0002, 0x0008, 0x0000, 0x7E51, 0xEB55, 0x02BA},
    {0x0001, 0x0004, 0x0008, 0x0009, 0x0000, 0x7E51, 0xEB55, 0x02BA},
    {0x0001, 0x0005, 0x0004, 0x0009, 0xFFFE, 0x7E51, 0xEB55, 0x02BA},
    {0x0000, 0x000A, 0x000B, 0x000C, 0x0000, 0x8001, 0x0000, 0xF9C0},
    {0x0000, 0x000B, 0x000D, 0x000C, 0x0000, 0x8001, 0x0000, 0xF9C0},
    {0x0000, 0x000E, 0x000F, 0x0010, 0x0000, 0x8001, 0x0000, 0xF9C0},
    {0x0000, 0x000F, 0x0011, 0x0010, 0x0000, 0x8001, 0x0000, 0xF9C0},
    {0x0000, 0x0010, 0x0011, 0x0012, 0x946A, 0xC38F, 0x21FE, 0xFA7E},
    {0x0000, 0x000C, 0x0013, 0x000A, 0x6B96, 0xC38F, 0x21FE, 0xFA7E},
    {0x0000, 0x000C, 0x0010, 0x0012, 0x0000, 0x84C8, 0x22A6, 0xF963},
    {0x0000, 0x000C, 0x0012, 0x0013, 0x0000, 0x84C8, 0x22A6, 0xF963},
    {0x0000, 0x0014, 0x0015, 0x0016, 0x0000, 0x367A, 0x73D3, 0x0000},
    {0x0000, 0x0014, 0x0016, 0x0017, 0x0000, 0x367A, 0x73D3, 0x0000},
    {0x0000, 0x0014, 0x0017, 0x0018, 0xFFFE, 0x3671, 0x73D7, 0x0000},
    {0x0000, 0x0014, 0x0018, 0x0019, 0x0000, 0x3668, 0x73DB, 0x0000},
    {0x0000, 0x0015, 0x001A, 0x001B, 0x0000, 0x3668, 0x73DB, 0x0000},
    {0x0000, 0x0016, 0x0015, 0x001B, 0x0002, 0x3671, 0x73D7, 0x0000},
    {0x0000, 0x001C, 0x0016, 0x001B, 0x6B74, 0x0A4C, 0x44C7, 0xF87C},
    {0x0000, 0x0018, 0x0017, 0x001D, 0x948C, 0x0A4C, 0x44C7, 0xF87C},
    {0x0001, 0x001E, 0x001F, 0x0020, 0x0000, 0x7231, 0xC62E, 0x07A0},
    {0x0001, 0x0004, 0x001E, 0x0020, 0x0000, 0x7205, 0xC5D8, 0x07AC},
    {0x0001, 0x0004, 0x0020, 0x0002, 0x0000, 0x7205, 0xC5D8, 0x07AC},
    {0x0000, 0x0020, 0x001F, 0x0021, 0x2A9A, 0x14CC, 0x76E5, 0xEED3},
    {0x0000, 0x0020, 0x0021, 0x0022, 0x30EC, 0x0E49, 0x7569, 0xEF04},
    {0x0000, 0x0002, 0x0020, 0x0022, 0x7178, 0x0727, 0x3ACC, 0xF6D8},
    {0x0000, 0x0002, 0x0022, 0x0023, 0x729F, 0x0000, 0x38F7, 0xF712},
    {0x0000, 0x0024, 0x0025, 0x0002, 0x7544, 0xFFE4, 0x334E, 0xF7C9},
    {0x0000, 0x0023, 0x0024, 0x0002, 0x7552, 0x0000, 0x332C, 0xF7CD},
    {0x0000, 0x0021, 0x0026, 0x0027, 0xDA3A, 0xADEB, 0x5AA8, 0xF292},
    {0x0000, 0x0021, 0x0027, 0x0023, 0x0000, 0x95C5, 0x4766, 0xF549},
    {0x0000, 0x0022, 0x0021, 0x0023, 0x25C6, 0xADEB, 0x5AA8, 0xF292},
    {0x0000, 0x0028, 0x0024, 0x0023, 0x0000, 0x9799, 0x4A0C, 0xF4F5},
    {0x0000, 0x0028, 0x0023, 0x0027, 0x0000, 0x9799, 0x4A0C, 0xF4F5},
    {0x0000, 0x0004, 0x0028, 0x0027, 0x8AAE, 0x0000, 0x332C, 0xF7CD},
    {0x0000, 0x0027, 0x0026, 0x0004, 0x8D61, 0x0000, 0x38F7, 0xF712},
    {0x0000, 0x0026, 0x001E, 0x0004, 0x8E88, 0x0727, 0x3ACC, 0xF6D8},
    {0x0000, 0x0026, 0x0021, 0x001F, 0xCF66, 0x1467, 0x74A4, 0xEF26},
    {0x0000, 0x0026, 0x001F, 0x001E, 0xD60D, 0x0E9B, 0x780B, 0xEEB2},
    {0x0002, 0x0009, 0x0019, 0x0018, 0x0000, 0x7D07, 0x1B67, 0x0000},
    {0x0002, 0x001B, 0x001A, 0x0008, 0x0000, 0x7D07, 0x1B67, 0x0000},
    {0x0000, 0x0025, 0x0001, 0x0002, 0x6D2E, 0xE7F4, 0x3E53, 0xF66E},
    {0x0002, 0x0005, 0x0009, 0x0018, 0x014C, 0x7D44, 0x1A44, 0x0017},
    {0x0002, 0x0001, 0x001B, 0x0008, 0xFEB4, 0x7D44, 0x1A44, 0x0017},
    {0x0000, 0x0025, 0x0024, 0x0028, 0x0000, 0x8001, 0x0000, 0xFCE0},
    {0x0000, 0x0025, 0x0028, 0x0029, 0x0000, 0x8001, 0x0000, 0xFCE0},
    {0x0000, 0x000B, 0x001C, 0x001B, 0x71A1, 0xED4F, 0x37E0, 0xF80D},
    {0x0000, 0x000D, 0x000B, 0x001B, 0x7BAE, 0xF848, 0x200B, 0xF759},
    {0x0000, 0x000D, 0x001B, 0x0001, 0x7A81, 0xFA13, 0x249E, 0xF76E},
    {0x0000, 0x0025, 0x000D, 0x0001, 0x6CB0, 0xDE31, 0x3A8B, 0xF68E},
    {0x0000, 0x0004, 0x0029, 0x0028, 0x8ABC, 0xFFE4, 0x334E, 0xF7C9},
    {0x0000, 0x0004, 0x0005, 0x0029, 0x92D2, 0xE7F4, 0x3E53, 0xF66E},
    {0x0000, 0x0005, 0x000E, 0x0029, 0x9350, 0xDE31, 0x3A8B, 0xF68E},
    {0x0000, 0x0005, 0x0018, 0x000E, 0x857F, 0xFA13, 0x249E, 0xF76E},
    {0x0000, 0x0018, 0x000F, 0x000E, 0x8452, 0xF848, 0x200B, 0xF759},
    {0x0000, 0x0018, 0x001D, 0x000F, 0x8E5F, 0xED4F, 0x37E0, 0xF80D},
    {0x0000, 0x000E, 0x0010, 0x0029, 0x0000, 0x865C, 0x27D5, 0xF960},
    {0x0000, 0x000C, 0x000D, 0x0025, 0x0000, 0x865C, 0x27D5, 0xF960},
    {0x0000, 0x0010, 0x000C, 0x0025, 0x0000, 0x865C, 0x27D5, 0xF960},
    {0x0000, 0x0010, 0x0025, 0x0029, 0x0000, 0x865C, 0x27D5, 0xF960},
    {0x0000, 0x001A, 0x002A, 0x0008, 0x80C7, 0x06E2, 0xF3BD, 0x031B},
    {0x0000, 0x001A, 0x002B, 0x002A, 0x8001, 0x0000, 0x0000, 0x0320},
    {0x0000, 0x001A, 0x0015, 0x002B, 0x8DED, 0xC7CB, 0x0E84, 0x02C9},
    {0x0000, 0x002B, 0x002C, 0x002A, 0x8001, 0x0000, 0x0000, 0x0320},
    {0x0000, 0x002C, 0x002D, 0x002A, 0x8001, 0x0000, 0x0000, 0x0320},
    {0x0000, 0x002E, 0x0019, 0x002F, 0x7FFF, 0x0000, 0x0000, 0x0320},
    {0x0000, 0x002E, 0x0014, 0x0019, 0x7213, 0xC7CB, 0x0E84, 0x02C9},
    {0x0000, 0x0019, 0x0009, 0x002F, 0x7F39, 0x06E2, 0xF3BD, 0x031B},
    {0x0000, 0x0030, 0x0031, 0x002F, 0x7FFF, 0x0000, 0x0000, 0x0320},
    {0x0000, 0x0031, 0x002E, 0x002F, 0x7FFF, 0x0000, 0x0000, 0x0320},
    {0x0000, 0x0014, 0x002E, 0x002B, 0x0000, 0x8DF5, 0x3A1E, 0x0190},
    {0x0000, 0x0014, 0x002B, 0x0015, 0x0000, 0x8DF5, 0x3A1E, 0x0190},
    {0x0000, 0x002E, 0x0031, 0x002C, 0x0000, 0x8DD7, 0x39E1, 0x018C},
    {0x0000, 0x002E, 0x002C, 0x002B, 0x0000, 0x8DD7, 0x39E1, 0x018C},
    {0x0001, 0x002F, 0x0009, 0x0008, 0x0000, 0x720C, 0xC5E6, 0x04B0},
    {0x0001, 0x002F, 0x0008, 0x002A, 0x0000, 0x720C, 0xC5E6, 0x04B0},
    {0x0001, 0x002D, 0x0030, 0x002F, 0x0000, 0x71F7, 0xC5BC, 0x04AD},
    {0x0001, 0x002D, 0x002F, 0x002A, 0x0000, 0x71F7, 0xC5BC, 0x04AD},
};

Vec3s gDodongoLowerJawColVertices[] = {
    {   1711,   -200,   1879 },
    {   1711,   -400,   1879 },
    {    404,      0,   4323 },
    {    404,    200,   4323 },
    {   -404,      0,   4323 },
    {  -1711,   -400,   1879 },
    {  -1711,   -200,   1879 },
    {   -404,    200,   4323 },
    {    600,   -405,   1848 },
    {   -600,   -405,   1848 },
    {   1000,  -1600,   -702 },
    {   2374,  -1600,   -702 },
    {    600,  -1600,    564 },
    {   2046,  -1600,    564 },
    {  -2046,  -1600,    564 },
    {  -2374,  -1600,   -702 },
    {   -600,  -1600,    564 },
    {  -1000,  -1600,   -702 },
    {   -800,  -1956,   -702 },
    {    800,  -1956,   -702 },
    {   -600,    362,   -170 },
    {    600,    362,   -170 },
    {   2456,    800,   -376 },
    {  -2456,    800,   -376 },
    {  -2292,      0,      0 },
    {   -800,      0,      0 },
    {    800,      0,      0 },
    {   2292,      0,      0 },
    {   2703,    400,   -702 },
    {  -2703,    400,   -702 },
    {   -240,    152,   4621 },
    {      0,    192,   4700 },
    {    240,    152,   4621 },
    {      0,   -111,   4753 },
    {    240,   -111,   4653 },
    {    404,   -400,   4323 },
    {    650,   -800,   3759 },
    {    979,   -800,   3007 },
    {   -240,   -111,   4653 },
    {   -404,   -400,   4323 },
    {   -650,   -800,   3759 },
    {   -979,   -800,   3007 },
    {    800,  -1886,  -1059 },
    {    800,   -461,  -1785 },
    {    800,   -642,  -2142 },
    {    800,  -2068,  -1415 },
    {   -800,   -461,  -1785 },
    {   -800,  -1886,  -1059 },
    {   -800,  -2068,  -1415 },
    {   -800,   -642,  -2142 },
};

CollisionHeader gDodongoLowerJawCol = { 
    { -2703, -2068, -2142 },
    { 2703, 800, 4753 },
    50, gDodongoLowerJawColVertices,
    82, gDodongoLowerJawColPolygons,
    gDodongoLowerJawColSurfaceType,
    gDodongoLowerJawColCamDataList,
    0, NULL
};

u8 object_ddan_objects_possiblePadding_001E08[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gDodongo2TLUT[] = {
#include "assets/objects/object_ddan_objects/tlut_2.rgba16.inc.c"
};

u8 object_ddan_objects_unaccounted_002010[] = {
    0x00, 0x00, 0x02, 0xC8, 0x00, 0x25, 0x00, 0x2E, 
};

u64 gDodongoRisingPlatformSide1Tex[] = {
#include "assets/objects/object_ddan_objects/rising_platform_side_1.ci8.inc.c"
};

u64 gDodongoRisingPlatformTopTex[] = {
#include "assets/objects/object_ddan_objects/rising_platform_top.ci8.inc.c"
};

u64 gDodongoRisingPlatformSide2Tex[] = {
#include "assets/objects/object_ddan_objects/rising_platform_side_2.ci8.inc.c"
};

Vtx object_ddan_objectsVtx_003418[] = {
#include "assets/objects/object_ddan_objects/object_ddan_objectsVtx_003418.vtx.inc"
};

Gfx gDodongoRisingPlatformDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gDodongoRisingPlatformSide1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gDodongo2TLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_ddan_objectsVtx_003418, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gDodongoRisingPlatformTopTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ddan_objectsVtx_003418[16], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gDodongoRisingPlatformSide1Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ddan_objectsVtx_003418[24], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gDodongoRisingPlatformSide2Tex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_ddan_objectsVtx_003418[40], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(0, 16, 17, 0, 0, 17, 1, 0),
    gsSP2Triangles(8, 15, 14, 0, 8, 14, 9, 0),
    gsSP2Triangles(4, 11, 10, 0, 4, 10, 5, 0),
    gsSP2Triangles(12, 3, 2, 0, 12, 2, 13, 0),
    gsSPEndDisplayList(),
};

CamData gDodongoRisingPlatformColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gDodongoRisingPlatformColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gDodongoRisingPlatformColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x0004, 0x0005, 0x0006, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0004, 0x0006, 0x0007, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0008, 0x0009, 0x000A, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0008, 0x000A, 0x000B, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x000C, 0x000D, 0x000E, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x000C, 0x000E, 0x000F, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x000A, 0x0009, 0x0000, 0x5A82, 0x0000, 0xA57E, 0xFD3D},
    {0x0000, 0x000A, 0x0000, 0x0003, 0x5A82, 0x0000, 0xA57E, 0xFD3D},
    {0x0000, 0x0006, 0x0005, 0x0008, 0x5A82, 0x0000, 0x5A82, 0xFD3D},
    {0x0000, 0x0006, 0x0008, 0x000B, 0x5A82, 0x0000, 0x5A82, 0xFD3D},
    {0x0000, 0x000E, 0x000D, 0x0004, 0xA57E, 0x0000, 0x5A82, 0xFD3D},
    {0x0000, 0x000E, 0x0004, 0x0007, 0xA57E, 0x0000, 0x5A82, 0xFD3D},
    {0x0000, 0x0002, 0x0001, 0x000C, 0xA57E, 0x0000, 0xA57E, 0xFD3D},
    {0x0000, 0x0002, 0x000C, 0x000F, 0xA57E, 0x0000, 0xA57E, 0xFD3D},
    {0x0000, 0x000F, 0x000E, 0x0007, 0x0000, 0x7FFF, 0x0000, 0xFE70},
    {0x0000, 0x000F, 0x0007, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xFE70},
    {0x0000, 0x000F, 0x0006, 0x000B, 0x0000, 0x7FFF, 0x0000, 0xFE70},
    {0x0000, 0x000F, 0x000B, 0x000A, 0x0000, 0x7FFF, 0x0000, 0xFE70},
    {0x0000, 0x000F, 0x000A, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xFE70},
    {0x0000, 0x000F, 0x0003, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFE70},
    {0x0000, 0x0010, 0x000C, 0x0001, 0xA57E, 0x0000, 0xA57E, 0xFD3D},
    {0x0000, 0x0010, 0x0001, 0x0011, 0xA57E, 0x0000, 0xA57E, 0xFD3D},
    {0x0000, 0x0012, 0x0004, 0x000D, 0xA57E, 0x0000, 0x5A82, 0xFD3D},
    {0x0000, 0x0012, 0x000D, 0x0013, 0xA57E, 0x0000, 0x5A82, 0xFD3D},
    {0x0000, 0x0014, 0x0008, 0x0005, 0x5A82, 0x0000, 0x5A82, 0xFD3D},
    {0x0000, 0x0014, 0x0005, 0x0015, 0x5A82, 0x0000, 0x5A82, 0xFD3D},
    {0x0000, 0x0016, 0x0000, 0x0009, 0x5A82, 0x0000, 0xA57E, 0xFD3D},
    {0x0000, 0x0016, 0x0009, 0x0017, 0x5A82, 0x0000, 0xA57E, 0xFD3D},
    {0x0000, 0x0010, 0x0013, 0x000D, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0010, 0x000D, 0x000C, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0014, 0x0017, 0x0009, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0014, 0x0009, 0x0008, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0012, 0x0015, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0012, 0x0005, 0x0004, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0016, 0x0011, 0x0001, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x0016, 0x0001, 0x0000, 0x0000, 0x0000, 0x8001, 0xFDA8},
};

Vec3s gDodongoRisingPlatformColVertices[] = {
    {    400,  -1400,   -600 },
    {   -400,  -1400,   -600 },
    {   -400,    400,   -600 },
    {    400,    400,   -600 },
    {   -400,  -1400,    600 },
    {    400,  -1400,    600 },
    {    400,    400,    600 },
    {   -400,    400,    600 },
    {    600,  -1400,    400 },
    {    600,  -1400,   -400 },
    {    600,    400,   -400 },
    {    600,    400,    400 },
    {   -600,  -1400,   -400 },
    {   -600,  -1400,    400 },
    {   -600,    400,    400 },
    {   -600,    400,   -400 },
    {   -600,  -7600,   -400 },
    {   -400,  -7600,   -600 },
    {   -400,  -7600,    600 },
    {   -600,  -7600,    400 },
    {    600,  -7600,    400 },
    {    400,  -7600,    600 },
    {    400,  -7600,   -600 },
    {    600,  -7600,   -400 },
};

CollisionHeader gDodongoRisingPlatformCol = { 
    { -600, -7600, -600 },
    { 600, 400, 600 },
    24, gDodongoRisingPlatformColVertices,
    38, gDodongoRisingPlatformColPolygons,
    gDodongoRisingPlatformColSurfaceType,
    gDodongoRisingPlatformColCamDataList,
    0, NULL
};

u8 object_ddan_objects_possiblePadding_003D0C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

u64 gDodongo3TLUT[] = {
#include "assets/objects/object_ddan_objects/tlut_3.rgba16.inc.c"
};

u8 object_ddan_objects_unaccounted_003F10[] = {
    0x00, 0x00, 0x00, 0xF8, 0x00, 0x00, 0x00, 0x00, 
};

u64 gDodongoFallingStairsTex[] = {
#include "assets/objects/object_ddan_objects/falling_stairs.ci8.inc.c"
};

Vtx object_ddan_objectsVtx_004318[] = {
#include "assets/objects/object_ddan_objects/object_ddan_objectsVtx_004318.vtx.inc"
};

Gfx gDodongoFallingStairsDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gDodongoFallingStairsTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gDodongo3TLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_ddan_objectsVtx_004318, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_ddan_objectsVtx_004318[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(12, 15, 16, 0, 17, 18, 16, 0),
    gsSP2Triangles(19, 20, 17, 0, 21, 22, 19, 0),
    gsSP2Triangles(23, 24, 21, 0, 25, 26, 23, 0),
    gsSP2Triangles(15, 27, 25, 0, 28, 29, 30, 0),
    gsSPVertex(&object_ddan_objectsVtx_004318[63], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 8, 5, 0),
    gsSP2Triangles(9, 10, 7, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 13, 15, 16, 0),
    gsSP1Triangle(13, 16, 14, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gDodongoFallingStairsVinesTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&object_ddan_objectsVtx_004318[80], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(gDodongoFallingStairsTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gDodongo3TLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&object_ddan_objectsVtx_004318[84], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsSPEndDisplayList(),
};

CamData gDodongoFallingStairsColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gDodongoFallingStairsColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
    { 0x00800000, 0x000007C2 },
};

CollisionPoly gDodongoFallingStairsColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0003, 0x0002, 0x0004, 0x7FFF, 0x0000, 0x0000, 0xF1F0},
    {0x0000, 0x0003, 0x0004, 0x0005, 0x7FFF, 0x0000, 0x0000, 0xF1F0},
    {0x0000, 0x0005, 0x0004, 0x0006, 0x0000, 0x7FFF, 0x0000, 0x0190},
    {0x0000, 0x0005, 0x0006, 0x0007, 0x0000, 0x7FFF, 0x0000, 0x0190},
    {0x0000, 0x0007, 0x0006, 0x0008, 0x7FFF, 0x0000, 0x0000, 0xF060},
    {0x0000, 0x0007, 0x0008, 0x0009, 0x7FFF, 0x0000, 0x0000, 0xF060},
    {0x0000, 0x0009, 0x0008, 0x000A, 0x0000, 0x7FFF, 0x0000, 0x0320},
    {0x0000, 0x0009, 0x000A, 0x000B, 0x0000, 0x7FFF, 0x0000, 0x0320},
    {0x0000, 0x000B, 0x000A, 0x000C, 0x7FFF, 0x0000, 0x0000, 0xEED0},
    {0x0000, 0x000B, 0x000C, 0x000D, 0x7FFF, 0x0000, 0x0000, 0xEED0},
    {0x0000, 0x000D, 0x000C, 0x000E, 0x0000, 0x7FFF, 0x0000, 0x04B0},
    {0x0000, 0x000D, 0x000E, 0x000F, 0x0000, 0x7FFF, 0x0000, 0x04B0},
    {0x0000, 0x000F, 0x000E, 0x0010, 0x7FFF, 0x0000, 0x0000, 0xED40},
    {0x0000, 0x000F, 0x0010, 0x0011, 0x7FFF, 0x0000, 0x0000, 0xED40},
    {0x0000, 0x0011, 0x0010, 0x0012, 0x0000, 0x7FFF, 0x0000, 0x0640},
    {0x0000, 0x0011, 0x0012, 0x0013, 0x0000, 0x7FFF, 0x0000, 0x0640},
    {0x0000, 0x0013, 0x0012, 0x0014, 0x7FFF, 0x0000, 0x0000, 0xEBB0},
    {0x0000, 0x0013, 0x0014, 0x0015, 0x7FFF, 0x0000, 0x0000, 0xEBB0},
    {0x0000, 0x0015, 0x0014, 0x0016, 0x0000, 0x7FFF, 0x0000, 0x07D0},
    {0x0000, 0x0015, 0x0016, 0x0017, 0x0000, 0x7FFF, 0x0000, 0x07D0},
    {0x0000, 0x0018, 0x0019, 0x0000, 0x0000, 0x0000, 0x8001, 0xFCE0},
    {0x0000, 0x0018, 0x0000, 0x001A, 0x0000, 0x0000, 0x8001, 0xFCE0},
    {0x0000, 0x0018, 0x001A, 0x001B, 0x0000, 0x0000, 0x8001, 0xFCE0},
    {0x0000, 0x0015, 0x0017, 0x001B, 0x0000, 0x0000, 0x8001, 0xFCE0},
    {0x0000, 0x0011, 0x0013, 0x0015, 0x0000, 0x0000, 0x8001, 0xFCE0},
    {0x0000, 0x000D, 0x000F, 0x0011, 0x0000, 0x0000, 0x8001, 0xFCE0},
    {0x0000, 0x0009, 0x000B, 0x000D, 0x0000, 0x0000, 0x8001, 0xFCE0},
    {0x0000, 0x0005, 0x0007, 0x0009, 0x0000, 0x0000, 0x8001, 0xFCE0},
    {0x0000, 0x001A, 0x0003, 0x0005, 0x0000, 0x0000, 0x8001, 0xFCE0},
    {0x0000, 0x0004, 0x0002, 0x001C, 0x0000, 0x0000, 0x7FFF, 0xFCE0},
    {0x0000, 0x0008, 0x0006, 0x0004, 0x0000, 0x0000, 0x7FFF, 0xFCE0},
    {0x0000, 0x000C, 0x000A, 0x0008, 0x0000, 0x0000, 0x7FFF, 0xFCE0},
    {0x0000, 0x0010, 0x000E, 0x000C, 0x0000, 0x0000, 0x7FFF, 0xFCE0},
    {0x0000, 0x0014, 0x0012, 0x0010, 0x0000, 0x0000, 0x7FFF, 0xFCE0},
    {0x0000, 0x001D, 0x0016, 0x0014, 0x0000, 0x0000, 0x7FFF, 0xFCE0},
    {0x0000, 0x0017, 0x0016, 0x001D, 0x7FFF, 0x0000, 0x0000, 0xEA20},
    {0x0000, 0x0017, 0x001D, 0x001B, 0x7FFF, 0x0000, 0x0000, 0xEA20},
    {0x0000, 0x001D, 0x001E, 0x0018, 0x7FFF, 0x0000, 0x0000, 0xEA20},
    {0x0000, 0x001D, 0x0018, 0x001B, 0x7FFF, 0x0000, 0x0000, 0xEA20},
    {0x0000, 0x001F, 0x0001, 0x0020, 0x0000, 0x0000, 0x7FFF, 0xFCE0},
    {0x0000, 0x001C, 0x0021, 0x0022, 0x0000, 0x0000, 0x7FFF, 0xFCE0},
    {0x0000, 0x001E, 0x0022, 0x0020, 0x0000, 0x0000, 0x7FFF, 0xFCE0},
    {0x0000, 0x001E, 0x0020, 0x0023, 0x0000, 0x0000, 0x7FFF, 0xFCE0},
    {0x0000, 0x001C, 0x0022, 0x001E, 0x0000, 0x0000, 0x7FFF, 0xFCE0},
    {0x0000, 0x001C, 0x001E, 0x001D, 0x0000, 0x0000, 0x7FFF, 0xFCE0},
    {0x0000, 0x0023, 0x0020, 0x0001, 0x0000, 0x0000, 0x7FFF, 0xFCE0},
    {0x0001, 0x0021, 0x001F, 0x0020, 0x0000, 0x0000, 0x7FFF, 0xFCE0},
    {0x0001, 0x0021, 0x0020, 0x0022, 0x0000, 0x0000, 0x7FFF, 0xFCE0},
};

Vec3s gDodongoFallingStairsColVertices[] = {
    {      0,      0,   -800 },
    {      0,      0,    800 },
    {   3600,      0,    800 },
    {   3600,      0,   -800 },
    {   3600,   -400,    800 },
    {   3600,   -400,   -800 },
    {   4000,   -400,    800 },
    {   4000,   -400,   -800 },
    {   4000,   -800,    800 },
    {   4000,   -800,   -800 },
    {   4400,   -800,    800 },
    {   4400,   -800,   -800 },
    {   4400,  -1200,    800 },
    {   4400,  -1200,   -800 },
    {   4800,  -1200,    800 },
    {   4800,  -1200,   -800 },
    {   4800,  -1600,    800 },
    {   4800,  -1600,   -800 },
    {   5200,  -1600,    800 },
    {   5200,  -1600,   -800 },
    {   5200,  -2000,    800 },
    {   5200,  -2000,   -800 },
    {   5600,  -2000,    800 },
    {   5600,  -2000,   -800 },
    {   5600,  -6400,   -800 },
    {      0,  -6400,   -800 },
    {   3200,      0,   -800 },
    {   5600,  -2400,   -800 },
    {   3200,      0,    800 },
    {   5600,  -2400,    800 },
    {   5600,  -6400,    800 },
    {    800,      0,    800 },
    {    800,  -1800,    800 },
    {   1600,      0,    800 },
    {   1600,  -1800,    800 },
    {      0,  -6400,    800 },
};

CollisionHeader gDodongoFallingStairsCol = { 
    { 0, -6400, -800 },
    { 5600, 0, 840 },
    36, gDodongoFallingStairsColVertices,
    50, gDodongoFallingStairsColPolygons,
    gDodongoFallingStairsColSurfaceType,
    gDodongoFallingStairsColCamDataList,
    0, NULL
};

u8 object_ddan_objects_possiblePadding_004F5C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

u64 gDodongoDoorLeftSideTex[] = {
#include "assets/objects/object_ddan_objects/door_left_side.rgba16.inc.c"
};

u64 gDodongoBarsTex[] = {
#include "assets/objects/object_ddan_objects/door_bars.rgba16.inc.c"
};

u64 gDodongoBarsBottomTex[] = {
#include "assets/objects/object_ddan_objects/door_bars_bottom.rgba16.inc.c"
};

u64 gDodongoTex_6F60[] = {
#include "assets/objects/object_ddan_objects/tex_6F60.rgba16.inc.c"
};

u64 gDodongoFallingStairsVinesTex[] = {
#include "assets/objects/object_ddan_objects/falling_stairs_vines.rgba16.inc.c"
};

