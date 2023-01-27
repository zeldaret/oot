#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_jya_obj.h"

Vtx object_jya_objVtx_000000[] = {
#include "assets/objects/object_jya_obj/object_jya_objVtx_000000.vtx.inc"
};

Gfx g1fliftDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(g1fLiftBottomTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_jya_objVtx_000000, 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(23, 24, 22, 0, 23, 22, 21, 0),
    gsSP2Triangles(19, 25, 26, 0, 19, 26, 20, 0),
    gsSP2Triangles(25, 24, 23, 0, 25, 23, 26, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(g1f1fiftTopTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_jya_objVtx_000000[27], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

CamData g1fliftColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType g1fliftColSurfaceType[] = {
    { 0x0000C000, 0x000007C2 },
};

CollisionPoly g1fliftColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0004, 0x0003, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xFE70},
    {0x0000, 0x0004, 0x0002, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xFE70},
    {0x0000, 0x0005, 0x0002, 0x0001, 0x7FFF, 0x0000, 0x0000, 0xFE70},
    {0x0000, 0x0005, 0x0001, 0x0006, 0x7FFF, 0x0000, 0x0000, 0xFE70},
    {0x0000, 0x0006, 0x0001, 0x0000, 0x0000, 0x0000, 0x8001, 0xFE70},
    {0x0000, 0x0006, 0x0000, 0x0007, 0x0000, 0x0000, 0x8001, 0xFE70},
    {0x0000, 0x0007, 0x0000, 0x0003, 0x8001, 0x0000, 0x0000, 0xFE70},
    {0x0000, 0x0007, 0x0003, 0x0004, 0x8001, 0x0000, 0x0000, 0xFE70},
    {0x0000, 0x0004, 0x0008, 0x0009, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x0004, 0x0009, 0x0007, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x000A, 0x0006, 0x0007, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x000A, 0x0007, 0x0009, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x0004, 0x0005, 0x000B, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x0004, 0x000B, 0x0008, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x0005, 0x0006, 0x000A, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x0005, 0x000A, 0x000B, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x0008, 0x000B, 0x000A, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x0008, 0x000A, 0x0009, 0x0000, 0x7FFF, 0x0000, 0xFF38},
};

Vec3s g1fliftColVertices[] = {
    {   -400,      0,   -400 },
    {    400,      0,   -400 },
    {    400,      0,    400 },
    {   -400,      0,    400 },
    {   -400,    200,    400 },
    {    400,    200,    400 },
    {    400,    200,   -400 },
    {   -400,    200,   -400 },
    {   -200,    200,    200 },
    {   -200,    200,   -200 },
    {    200,    200,   -200 },
    {    200,    200,    200 },
};

CollisionHeader g1fliftCol = { 
    { -400, 0, -400 },
    { 400, 200, 400 },
    12, g1fliftColVertices,
    20, g1fliftColPolygons,
    g1fliftColSurfaceType,
    g1fliftColCamDataList,
    0, NULL
};

u8 object_jya_obj_possiblePadding_0004D4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gMegamiCrumbleTLUT[] = {
#include "assets/objects/object_jya_obj/megami_crumble_tlut.rgba16.inc.c"
};

u64 gMegamiLeftCrumble5Tex[] = {
#include "assets/objects/object_jya_obj/megami_left_crumble_5.ci4.inc.c"
};

u64 gMegamiRightCrumble1Tex[] = {
#include "assets/objects/object_jya_obj/megami_right_crumble_1.ci4.inc.c"
};

u64 gMegamiLeftCrumble1Tex[] = {
#include "assets/objects/object_jya_obj/megami_left_crumble_1.ci4.inc.c"
};

u64 gMegamiRightCrumble2Tex[] = {
#include "assets/objects/object_jya_obj/megami_right_crumble_2.ci4.inc.c"
};

u64 gMegamiRightCrumble3Tex[] = {
#include "assets/objects/object_jya_obj/megami_right_crumble_3.ci4.inc.c"
};

u64 gMegamiRightCrumble4Tex[] = {
#include "assets/objects/object_jya_obj/megami_right_crumble_4.ci4.inc.c"
};

u64 gMegamiLeftCrumble2Tex[] = {
#include "assets/objects/object_jya_obj/megami_left_crumble_2.ci4.inc.c"
};

u64 gMegamiLeftCrumble3Tex[] = {
#include "assets/objects/object_jya_obj/megami_left_crumble_3.ci4.inc.c"
};

u64 gMegamiLeftCrumble4Tex[] = {
#include "assets/objects/object_jya_obj/megami_left_crumble_4.ci4.inc.c"
};

u64 gMegamiRightCrumble5Tex[] = {
#include "assets/objects/object_jya_obj/megami_right_crumble_5.ci4.inc.c"
};

Vtx object_jya_objVtx_005500[] = {
#include "assets/objects/object_jya_obj/object_jya_objVtx_005500.vtx.inc"
};

Gfx gMegami1DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(0x08000000, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP,
                            6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gMegamiCrumbleTLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_jya_objVtx_005500, 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 3, 5, 6, 0),
    gsSP2Triangles(5, 7, 6, 0, 9, 3, 6, 0),
    gsSP2Triangles(9, 1, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 11, 0, 14, 11, 13, 0),
    gsSP2Triangles(14, 13, 16, 0, 9, 14, 16, 0),
    gsSP2Triangles(8, 17, 9, 0, 6, 8, 9, 0),
    gsSP2Triangles(18, 4, 3, 0, 18, 19, 4, 0),
    gsSP2Triangles(18, 3, 9, 0, 16, 13, 18, 0),
    gsSP2Triangles(9, 16, 18, 0, 20, 21, 18, 0),
    gsSP2Triangles(12, 20, 18, 0, 12, 18, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(0x09000000, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP,
                            6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_jya_objVtx_005500[22], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 0, 2, 0, 5, 4, 0, 0),
    gsSP2Triangles(5, 2, 6, 0, 7, 8, 6, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 6, 0),
    gsSP2Triangles(6, 12, 3, 0, 6, 3, 5, 0),
    gsSP2Triangles(2, 1, 13, 0, 1, 14, 13, 0),
    gsSP2Triangles(6, 2, 13, 0, 13, 10, 9, 0),
    gsSP2Triangles(13, 9, 6, 0, 13, 15, 16, 0),
    gsSP2Triangles(10, 13, 16, 0, 10, 16, 17, 0),
    gsSPEndDisplayList(),
};

CamData GMegamiColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType GMegamiColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly GMegamiColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x82BE, 0x1A55, 0xFC72},
    {0x0000, 0x0003, 0x0004, 0x0005, 0x9765, 0xC2A1, 0x28E9, 0xFD3E},
    {0x0000, 0x0006, 0x0007, 0x0008, 0xE919, 0xA318, 0x5503, 0xFCF6},
    {0x0000, 0x0003, 0x0005, 0x0006, 0x9D55, 0xC21D, 0x3515, 0xFD71},
    {0x0000, 0x0005, 0x0007, 0x0006, 0xE5F4, 0xA251, 0x533C, 0xFCE6},
    {0x0000, 0x0009, 0x0003, 0x0006, 0xAAB0, 0xECD2, 0x5D79, 0xFF78},
    {0x0000, 0x0009, 0x0001, 0x0000, 0xB4BD, 0x9908, 0x0ACC, 0xFD0D},
    {0x0000, 0x000A, 0x000B, 0x000C, 0x0000, 0x2365, 0x7B01, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x000A, 0x0000, 0x2356, 0x7B06, 0x0000},
    {0x0000, 0x0000, 0x000A, 0x000C, 0x0000, 0x2356, 0x7B06, 0x0000},
    {0x0000, 0x0000, 0x000C, 0x000D, 0x8993, 0x0B6C, 0x2F33, 0xFFC5},
    {0x0000, 0x0009, 0x0000, 0x000D, 0x845F, 0xF562, 0x1F68, 0xFF4B},
    {0x0000, 0x0008, 0x0001, 0x0009, 0xC8C7, 0xDA23, 0x6D16, 0xFF2D},
    {0x0000, 0x0006, 0x0008, 0x0009, 0xD934, 0xDEDE, 0x7564, 0xFF66},
    {0x0000, 0x000E, 0x0004, 0x0003, 0x93B1, 0xE244, 0x3D63, 0xFE77},
    {0x0000, 0x000E, 0x000F, 0x0004, 0x8FB4, 0xE6DF, 0x380C, 0xFE61},
    {0x0000, 0x000E, 0x0003, 0x0009, 0xB1E1, 0xE0A1, 0x606A, 0xFF32},
    {0x0000, 0x000D, 0x000C, 0x000E, 0xBF39, 0xE329, 0x6A90, 0xFF7F},
    {0x0000, 0x0009, 0x000D, 0x000E, 0xD254, 0xF614, 0x7728, 0xFFFA},
    {0x0000, 0x0010, 0x000F, 0x000E, 0x9A94, 0x3F41, 0x2DC7, 0xFED8},
    {0x0000, 0x000B, 0x0010, 0x000E, 0xCB58, 0x483D, 0x5B9B, 0x0000},
    {0x0000, 0x000B, 0x000E, 0x000C, 0xCB67, 0x2DC5, 0x6B56, 0x0000},
    {0x0000, 0x0011, 0x0012, 0x0013, 0x689B, 0xC2A1, 0x28E9, 0xFD3E},
    {0x0000, 0x0008, 0x0007, 0x0014, 0x16E7, 0xA318, 0x5503, 0xFCF6},
    {0x0000, 0x0014, 0x0011, 0x0013, 0x62AB, 0xC21D, 0x3515, 0xFD71},
    {0x0000, 0x0014, 0x0007, 0x0011, 0x1A0C, 0xA251, 0x533C, 0xFCE6},
    {0x0000, 0x0014, 0x0013, 0x0015, 0x5550, 0xECD2, 0x5D79, 0xFF78},
    {0x0000, 0x0002, 0x0001, 0x0015, 0x4B43, 0x9908, 0x0ACC, 0xFD0D},
    {0x0000, 0x0016, 0x000A, 0x0002, 0x766D, 0x0B6C, 0x2F33, 0xFFC5},
    {0x0000, 0x0016, 0x0002, 0x0015, 0x7BA1, 0xF562, 0x1F68, 0xFF4B},
    {0x0000, 0x0015, 0x0001, 0x0008, 0x3739, 0xDA23, 0x6D16, 0xFF2D},
    {0x0000, 0x0015, 0x0008, 0x0014, 0x26CC, 0xDEDE, 0x7564, 0xFF66},
    {0x0000, 0x0013, 0x0012, 0x0017, 0x6C4F, 0xE244, 0x3D63, 0xFE77},
    {0x0000, 0x0012, 0x0018, 0x0017, 0x704C, 0xE6DF, 0x380C, 0xFE61},
    {0x0000, 0x0015, 0x0013, 0x0017, 0x4E1F, 0xE0A1, 0x606A, 0xFF32},
    {0x0000, 0x0017, 0x000A, 0x0016, 0x40C7, 0xE329, 0x6A90, 0xFF7F},
    {0x0000, 0x0017, 0x0016, 0x0015, 0x2DAC, 0xF614, 0x7728, 0xFFFA},
    {0x0000, 0x0017, 0x0018, 0x0019, 0x656C, 0x3F41, 0x2DC7, 0xFED8},
    {0x0000, 0x000A, 0x0017, 0x0019, 0x2A76, 0x47C1, 0x611E, 0x0035},
    {0x0000, 0x000A, 0x0019, 0x000B, 0x41DB, 0x2F28, 0x631C, 0x0000},
};

Vec3s GMegamiColVertices[] = {
    {    -48,   -877,    252 },
    {      0,   -947,    -81 },
    {     48,   -877,    252 },
    {   -396,  -1059,   -392 },
    {   -660,   -853,   -758 },
    {   -193,  -1483,   -509 },
    {   -199,  -1253,   -252 },
    {      0,  -1518,   -488 },
    {      0,  -1238,   -182 },
    {   -145,   -845,   -119 },
    {     60,   -212,     61 },
    {      0,      0,      0 },
    {    -60,   -212,     61 },
    {   -163,   -594,   -105 },
    {   -551,   -129,   -215 },
    {   -767,   -154,   -659 },
    {   -457,    131,   -366 },
    {    193,  -1483,   -509 },
    {    660,   -853,   -758 },
    {    396,  -1059,   -392 },
    {    199,  -1253,   -252 },
    {    145,   -845,   -119 },
    {    163,   -594,   -105 },
    {    551,   -129,   -215 },
    {    767,   -154,   -659 },
    {    457,    131,   -366 },
};

CollisionHeader GMegamiCol = { 
    { -767, -1518, -758 },
    { 767, 131, 252 },
    26, GMegamiColVertices,
    40, GMegamiColPolygons,
    GMegamiColSurfaceType,
    GMegamiColCamDataList,
    0, NULL
};

u8 object_jya_obj_possiblePadding_005C78[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gMegami1TLUT[] = {
#include "assets/objects/object_jya_obj/megami_tlut_1.rgba16.inc.c"
};

u64 gMegami4TLUT[] = {
#include "assets/objects/object_jya_obj/megami_tlut_4.rgba16.inc.c"
};

u8 object_jya_obj_unaccounted_005CC0[] = {
    0x92, 0x8D, 0x59, 0x47, 0x51, 0x87, 0x59, 0x49, 0x51, 0x85, 0x49, 0x45, 0x8A, 0x4B, 0x7A, 0x49, 
    0x59, 0x07, 0x50, 0xC5, 0x7A, 0x89, 0x49, 0x47, 0x69, 0x87, 0x8A, 0x89, 0x41, 0x05, 0x49, 0x07, 
    0x82, 0x49, 0x38, 0x81, 0x92, 0x8F, 0x00, 0x01, 
};

u64 gMegami1Tex[] = {
#include "assets/objects/object_jya_obj/megami_tex_1.ci4.inc.c"
};

u64 gMegami3Tex[] = {
#include "assets/objects/object_jya_obj/megami_tex_3.ci4.inc.c"
};

u64 gMegami3TLUT[] = {
#include "assets/objects/object_jya_obj/megami_tlut_3.rgba16.inc.c"
};

u8 object_jya_obj_unaccounted_006EE8[] = {
    0x01, 0x01, 0x00, 0x00, 0x01, 0x02, 0x05, 0x07, 0x0B, 0x0B, 0x03, 0x02, 0x00, 0x09, 0x01, 0x07, 
    0x18, 0x00, 0x06, 0x01, 0x00, 0x0F, 0x01, 0x03, 0x0B, 0x0E, 0x03, 0x00, 0x07, 0x0A, 0x03, 0x00, 
    0x05, 0x02, 0x01, 0x00, 0x00, 0x02, 0x06, 0x02, 0x09, 0x00, 0x00, 0x05, 0x02, 0x06, 0x04, 0x05, 
    0x01, 0x15, 0x06, 0x04, 0x0D, 0x02, 0x00, 0x01, 0x06, 0x0B, 0x0A, 0x00, 0x07, 0x00, 0x03, 0x01, 
    0x01, 0x00, 0x02, 0x02, 0x04, 0x04, 0x02, 0x08, 0x02, 0x09, 0x00, 0x01, 0x0C, 0x08, 0x06, 0x00, 
    0x06, 0x08, 0x15, 0x02, 0x13, 0x04, 0x00, 0x02, 0x02, 0x09, 0x09, 0x01, 0x05, 0x02, 0x00, 0x0F, 
    0x01, 0x01, 0x00, 0x04, 0x02, 0x02, 0x00, 0x01, 0x03, 0x01, 0x04, 0x04, 0x01, 0x01, 0x00, 0x00, 
    0x0D, 0x04, 0x05, 0x0D, 0x04, 0x01, 0x05, 0x01, 0x05, 0x00, 0x04, 0x02, 0x03, 0x00, 0x00, 0x06, 
    0x11, 0x00, 0x02, 0x01, 0x01, 0x04, 0x07, 0x00, 0x03, 0x0E, 0x03, 0x03, 0x07, 0x05, 0x01, 0x06, 
    0x06, 0x07, 0x01, 0x06, 0x05, 0x00, 0x03, 0x01, 0x01, 0x01, 0x05, 0x04, 0x00, 0x01, 0x05, 0x09, 
    0x0F, 0x08, 0x06, 0x01, 0x06, 0x00, 0x05, 0x03, 0x05, 0x05, 0x0A, 0x00, 0x01, 0x0C, 0x07, 0x14, 
    0x05, 0x06, 0x00, 0x00, 0x04, 0x00, 0x0B, 0x03, 0x01, 0x03, 0x13, 0x01, 0x06, 0x0F, 0x08, 0x01, 
    0x01, 0x01, 0x0C, 0x00, 0x04, 0x00, 0x01, 0x01, 0x07, 0x06, 0x00, 0x00, 0x02, 0x08, 0x12, 0x06, 
    0x01, 0x02, 0x06, 0x02, 0x00, 0x01, 0x00, 0x07, 0x0F, 0x06, 0x01, 0x01, 0x00, 0x01, 0x02, 0x00, 
    0x0C, 0x0B, 0x01, 0x04, 0x02, 0x03, 0x07, 0x0A, 0x05, 0x08, 0x04, 0x04, 0x06, 0x02, 0x04, 0x08, 
    0x00, 0x00, 0x04, 0x06, 0x0D, 0x07, 0x00, 0x03, 0x05, 0x08, 0x07, 0x06, 0x00, 0x05, 0x00, 0x00, 
    0x00, 0x00, 0x03, 0x03, 0x03, 0x1D, 0x0B, 0x01, 0x07, 0x01, 0x07, 0x0C, 0x0B, 0x02, 0x0B, 0x01, 
    0x03, 0x0A, 0x01, 0x04, 0x02, 0x02, 0x00, 0x05, 0x01, 0x09, 0x02, 0x01, 0x05, 0x00, 0x05, 0x01, 
    0x0E, 0x00, 0x00, 0x0E, 0x0B, 0x00, 0x0E, 0x03, 0x0E, 0x01, 0x00, 0x10, 0x0E, 0x03, 0x02, 0x0F, 
    0x22, 0x0B, 0x0A, 0x03, 0x04, 0x04, 0x0F, 0x01, 0x05, 0x09, 0x04, 0x0C, 0x04, 0x02, 0x09, 0x01, 
    0x03, 0x03, 0x01, 0x0A, 0x03, 0x07, 0x00, 0x01, 0x0A, 0x1A, 0x01, 0x1A, 0x0A, 0x10, 0x0C, 0x0D, 
    0x01, 0x10, 0x0E, 0x0A, 0x03, 0x03, 0x02, 0x00, 0x16, 0x10, 0x09, 0x01, 0x03, 0x04, 0x0C, 0x05, 
    0x12, 0x00, 0x07, 0x01, 0x03, 0x0B, 0x0B, 0x07, 0x03, 0x01, 0x05, 0x02, 0x03, 0x0E, 0x08, 0x13, 
    0x0F, 0x03, 0x00, 0x07, 0x03, 0x0A, 0x03, 0x0C, 0x01, 0x01, 0x1D, 0x01, 0x01, 0x0A, 0x16, 0x0C, 
    0x0A, 0x00, 0x06, 0x02, 0x0F, 0x03, 0x01, 0x00, 0x00, 0x0A, 0x00, 0x02, 0x01, 0x06, 0x1B, 0x0F, 
    0x04, 0x06, 0x00, 0x05, 0x05, 0x00, 0x00, 0x04, 0x04, 0x05, 0x00, 0x02, 0x09, 0x00, 0x0F, 0x01, 
    0x02, 0x03, 0x12, 0x02, 0x08, 0x07, 0x01, 0x00, 0x04, 0x09, 0x01, 0x00, 0x04, 0x12, 0x08, 0x08, 
    0x02, 0x02, 0x02, 0x09, 0x05, 0x00, 0x02, 0x04, 0x0C, 0x04, 0x04, 0x01, 0x08, 0x08, 0x05, 0x00, 
    0x0C, 0x01, 0x0A, 0x0B, 0x11, 0x06, 0x04, 0x03, 0x01, 0x0C, 0x04, 0x00, 0x01, 0x08, 0x02, 0x00, 
    0x00, 0x04, 0x00, 0x04, 0x00, 0x02, 0x03, 0x00, 0x05, 0x07, 0x05, 0x02, 0x07, 0x00, 0x04, 0x05, 
    0x03, 0x01, 0x01, 0x03, 0x07, 0x02, 0x12, 0x10, 0x01, 0x01, 0x0B, 0x00, 0x02, 0x0C, 0x00, 0x00, 
    0x01, 0x05, 0x0F, 0x00, 0x05, 0x00, 0x01, 0x01, 0x00, 0x01, 0x03, 0x00, 0x00, 0x03, 0x00, 0x00, 
};

Vtx object_jya_objVtx_0070E8[] = {
#include "assets/objects/object_jya_obj/object_jya_objVtx_0070E8.vtx.inc"
};

Gfx gMegamiPiece1DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gMegami1Tex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP,
                            6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gMegami1TLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_jya_objVtx_0070E8, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 2, 6, 0),
    gsSP2Triangles(3, 2, 5, 0, 2, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 2, 8, 10, 0),
    gsSP1Triangle(2, 10, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMegami3TLUT, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gMegami4TLUT),
    gsSPVertex(&object_jya_objVtx_0070E8[11], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_jya_objVtx_0070E8[41], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsSPEndDisplayList(),
};

Gfx gMegamiPiece2DL[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gMegami1Tex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP,
                            6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gMegami1TLUT),
    gsSPVertex(&object_jya_objVtx_0070E8[50], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 0, 2, 0, 5, 2, 3, 0),
    gsSP2Triangles(4, 2, 6, 0, 1, 7, 6, 0),
    gsSP1Triangle(1, 6, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gMegami3Tex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP,
                            6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_jya_objVtx_0070E8[58], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(4, 3, 5, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMegami3TLUT, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gMegami4TLUT),
    gsSPVertex(&object_jya_objVtx_0070E8[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_jya_objVtx_0070E8[94], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP1Triangle(18, 19, 20, 0),
    gsSPEndDisplayList(),
};

Gfx gMegamiPiece3DL[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gMegami3Tex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP,
                            6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gMegami1TLUT),
    gsSPVertex(&object_jya_objVtx_0070E8[115], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 3, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(1, 6, 7, 0, 1, 7, 8, 0),
    gsSP1Triangle(3, 1, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMegami3TLUT, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gMegami4TLUT),
    gsSPVertex(&object_jya_objVtx_0070E8[124], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_jya_objVtx_0070E8[154], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP1Triangle(18, 19, 20, 0),
    gsSPEndDisplayList(),
};

Gfx gMegamiPiece4DL[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gMegami1Tex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP,
                            6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gMegami1TLUT),
    gsSPVertex(&object_jya_objVtx_0070E8[175], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(0, 2, 4, 0, 5, 4, 3, 0),
    gsSP2Triangles(6, 5, 3, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 0, 0),
    gsSP1Triangle(0, 10, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMegami3TLUT, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gMegami4TLUT),
    gsSPVertex(&object_jya_objVtx_0070E8[186], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 14, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_jya_objVtx_0070E8[218], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0),
    gsSPEndDisplayList(),
};

Gfx gMegamiPiece5DL[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gMegami1Tex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP,
                            6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gMegami1TLUT),
    gsSPVertex(&object_jya_objVtx_0070E8[241], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 5, 1, 0),
    gsSP2Triangles(6, 1, 0, 0, 1, 5, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMegami3TLUT, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gMegami4TLUT),
    gsSPVertex(&object_jya_objVtx_0070E8[249], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_jya_objVtx_0070E8[279], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gMegamiPiece6DL[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gMegami1Tex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP,
                            6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gMegami1TLUT),
    gsSPVertex(&object_jya_objVtx_0070E8[285], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 3, 1, 0, 1, 5, 6, 0),
    gsSP2Triangles(7, 5, 8, 0, 4, 1, 9, 0),
    gsSP2Triangles(9, 1, 10, 0, 1, 11, 10, 0),
    gsSP2Triangles(1, 12, 11, 0, 12, 13, 11, 0),
    gsSP2Triangles(12, 14, 13, 0, 12, 15, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gMegami3Tex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP,
                            6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_jya_objVtx_0070E8[301], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP1Triangle(4, 5, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMegami3TLUT, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gMegami4TLUT),
    gsSPVertex(&object_jya_objVtx_0070E8[307], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_jya_objVtx_0070E8[337], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP1Triangle(18, 19, 20, 0),
    gsSPEndDisplayList(),
};

Gfx gMegamiPiece7DL[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gMegami1Tex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP,
                            6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gMegami1TLUT),
    gsSPVertex(&object_jya_objVtx_0070E8[358], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gMegami3Tex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP,
                            6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_jya_objVtx_0070E8[361], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(4, 0, 6, 0, 6, 0, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMegami3TLUT, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gMegami4TLUT),
    gsSPVertex(&object_jya_objVtx_0070E8[368], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(2, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_jya_objVtx_0070E8[400], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gMegamiPiece8DL[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gMegami3Tex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP,
                            6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gMegami1TLUT),
    gsSPVertex(&object_jya_objVtx_0070E8[406], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(1, 4, 2, 0, 4, 1, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMegami3TLUT, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gMegami4TLUT),
    gsSPVertex(&object_jya_objVtx_0070E8[412], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 10, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_jya_objVtx_0070E8[444], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsSPEndDisplayList(),
};

Gfx gMegamiPiece9DL[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gMegami3Tex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP,
                            6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gMegami1TLUT),
    gsSPVertex(&object_jya_objVtx_0070E8[453], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 4, 2, 0),
    gsSP2Triangles(2, 6, 5, 0, 1, 6, 2, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMegami3TLUT, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gMegami4TLUT),
    gsSPVertex(&object_jya_objVtx_0070E8[462], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP1Triangle(18, 19, 20, 0),
    gsSPEndDisplayList(),
};

Gfx gMegamiPiece10DL[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gMegami1Tex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP,
                            6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gMegami1TLUT),
    gsSPVertex(&object_jya_objVtx_0070E8[483], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 4, 5, 3, 0),
    gsSP2Triangles(5, 6, 3, 0, 5, 7, 6, 0),
    gsSP1Triangle(3, 6, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMegami3TLUT, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gMegami4TLUT),
    gsSPVertex(&object_jya_objVtx_0070E8[491], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP1Triangle(24, 25, 8, 0),
    gsSPEndDisplayList(),
};

Gfx gMegamiPiece11DL[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gMegami1Tex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP,
                            6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gMegami1TLUT),
    gsSPVertex(&object_jya_objVtx_0070E8[517], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gMegami3Tex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP,
                            6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_jya_objVtx_0070E8[520], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(2, 4, 0, 0, 2, 1, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMegami3TLUT, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gMegami4TLUT),
    gsSPVertex(&object_jya_objVtx_0070E8[526], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_jya_objVtx_0070E8[556], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsSPEndDisplayList(),
};

Gfx gMegamiPiece12DL[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gMegami3Tex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP,
                            6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gMegami1TLUT),
    gsSPVertex(&object_jya_objVtx_0070E8[565], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 5, 7, 0),
    gsSP2Triangles(4, 0, 5, 0, 5, 0, 7, 0),
    gsSP1Triangle(7, 0, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMegami3TLUT, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gMegami4TLUT),
    gsSPVertex(&object_jya_objVtx_0070E8[573], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_jya_objVtx_0070E8[603], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gMegamiPiece13DL[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gMegami1Tex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP,
                            6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gMegami1TLUT),
    gsSPVertex(&object_jya_objVtx_0070E8[609], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gMegami3Tex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP,
                            6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_jya_objVtx_0070E8[612], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 2, 3, 0, 3, 5, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gMegami3TLUT, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gMegami4TLUT),
    gsSPVertex(&object_jya_objVtx_0070E8[618], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP1Triangle(22, 24, 25, 0),
    gsSPEndDisplayList(),
};

u8 object_jya_obj_possiblePadding_00AC48[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gMegami2TLUT[] = {
#include "assets/objects/object_jya_obj/megami_tlut_2.rgba16.inc.c"
};

u64 gMegami5TLUT[] = {
#include "assets/objects/object_jya_obj/megami_tlut_5.rgba16.inc.c"
};

u8 object_jya_obj_unaccounted_00AC90[] = {
    0x92, 0x8D, 0x59, 0x47, 0x51, 0x87, 0x59, 0x49, 0x51, 0x85, 0x49, 0x45, 0x8A, 0x4B, 0x7A, 0x49, 
    0x59, 0x07, 0x50, 0xC5, 0x7A, 0x89, 0x49, 0x47, 0x69, 0x87, 0x8A, 0x89, 0x41, 0x05, 0x49, 0x07, 
    0x82, 0x49, 0x38, 0x81, 0x92, 0x8F, 0x00, 0x01, 
};

u64 gMegami2Tex[] = {
#include "assets/objects/object_jya_obj/megami_tex_2.ci4.inc.c"
};

u64 object_jya_objTex_00B4B8[] = {
#include "assets/objects/object_jya_obj/object_jya_objTex_00B4B8.ci8.inc.c"
};

Vtx object_jya_objVtx_00B8B8[] = {
#include "assets/objects/object_jya_obj/object_jya_objVtx_00B8B8.vtx.inc"
};

Gfx gMegami2DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gMegami2Tex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP,
                            6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gMegami2TLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_jya_objVtx_00B8B8, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(2, 1, 5, 0, 1, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_jya_objTex_00B4B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gMegami5TLUT),
    gsSPVertex(&object_jya_objVtx_00B8B8[8], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

u8 object_jya_obj_possiblePadding_00BB48[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_jya_objVtx_00BB50[] = {
#include "assets/objects/object_jya_obj/object_jya_objVtx_00BB50.vtx.inc"
};

Gfx gBigMirror1DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gBigMirrorGradientTex, G_IM_FMT_IA, G_IM_SIZ_16b, 8, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 102),
    gsSPVertex(object_jya_objVtx_00BB50, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 8, 5, 4, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 11, 0, 12, 11, 10, 0),
    gsSP2Triangles(14, 15, 13, 0, 14, 13, 12, 0),
    gsSP2Triangles(16, 17, 15, 0, 16, 15, 14, 0),
    gsSP2Triangles(3, 2, 17, 0, 3, 17, 16, 0),
    gsSPEndDisplayList(),
};

u8 object_jya_obj_possiblePadding_00BD38[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_jya_objVtx_00BD40[] = {
#include "assets/objects/object_jya_obj/object_jya_objVtx_00BD40.vtx.inc"
};

Gfx gBigMirror2DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_jya_objTex_01B340, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_DECAL2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 102),
    gsSPVertex(object_jya_objVtx_00BD40, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx object_jya_objVtx_00BE10[] = {
#include "assets/objects/object_jya_obj/object_jya_objVtx_00BE10.vtx.inc"
};

Gfx gAmishutterDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_jya_objTex_017140, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_jya_objVtx_00BE10, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKanaamiMiddleTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&object_jya_objVtx_00BE10[32], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 0, 2, 0, 6, 0, 3, 0),
    gsSP2Triangles(0, 7, 1, 0, 8, 0, 6, 0),
    gsSP2Triangles(4, 0, 5, 0, 7, 0, 8, 0),
    gsSPEndDisplayList(),
};

CamData gAmishutterColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gAmishutterColSurfaceType[] = {
    { 0x00000000, 0x000207C0 },
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gAmishutterColPolygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0000, 0x2000, 0x0003, 0x0004, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0000, 0x2000, 0x0004, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0000, 0x2000, 0x0005, 0x0006, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0000, 0x2000, 0x0006, 0x0007, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0000, 0x2008, 0x0009, 0x000A, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0000, 0x2009, 0x000B, 0x000A, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0000, 0x200B, 0x000C, 0x000A, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0000, 0x200C, 0x000D, 0x000A, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0000, 0x200D, 0x000E, 0x000A, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0000, 0x200E, 0x000F, 0x000A, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0001, 0x200D, 0x000C, 0x0010, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0001, 0x200D, 0x0010, 0x0011, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0001, 0x200E, 0x000D, 0x0011, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0001, 0x200F, 0x000E, 0x0011, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0001, 0x200F, 0x0011, 0x0012, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0001, 0x200A, 0x000F, 0x0012, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0001, 0x200B, 0x0009, 0x0013, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0001, 0x200B, 0x0013, 0x0010, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0001, 0x200B, 0x0010, 0x000C, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0001, 0x2013, 0x0009, 0x0008, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0001, 0x2008, 0x000A, 0x0012, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0001, 0x2013, 0x0008, 0x0012, 0x0000, 0x0000, 0x8001, 0xFF9C},
    {0x0001, 0x2014, 0x0007, 0x0015, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0001, 0x2014, 0x0000, 0x0007, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0001, 0x2007, 0x0006, 0x0015, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0001, 0x2004, 0x0016, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0001, 0x2016, 0x0015, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0001, 0x2015, 0x0006, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0001, 0x2014, 0x0001, 0x0000, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0001, 0x2014, 0x0017, 0x0001, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0001, 0x2017, 0x0002, 0x0001, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0001, 0x2017, 0x0003, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0001, 0x2017, 0x0016, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0001, 0x2016, 0x0004, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
};

Vec3s gAmishutterColVertices[] = {
    {   -194,    692,    100 },
    {   -274,    500,    100 },
    {   -194,    308,    100 },
    {      0,    229,    100 },
    {    194,    308,    100 },
    {    274,    500,    100 },
    {    194,    692,    100 },
    {      0,    771,    100 },
    {      0,    771,   -100 },
    {    194,    692,   -100 },
    {   -194,    692,   -100 },
    {    274,    500,   -100 },
    {    194,    308,   -100 },
    {      0,    229,   -100 },
    {   -194,    308,   -100 },
    {   -274,    500,   -100 },
    {    506,      0,   -100 },
    {   -506,      0,   -100 },
    {   -506,   1000,   -100 },
    {    506,   1000,   -100 },
    {   -506,   1000,    100 },
    {    506,   1000,    100 },
    {    506,      0,    100 },
    {   -506,      0,    100 },
};

CollisionHeader gAmishutterCol = { 
    { -506, 0, -100 },
    { 506, 1000, 100 },
    24, gAmishutterColVertices,
    36, gAmishutterColPolygons,
    gAmishutterColSurfaceType,
    gAmishutterColCamDataList,
    0, NULL
};

u8 object_jya_obj_possiblePadding_00C4F4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_jya_objVtx_00C500[] = {
#include "assets/objects/object_jya_obj/object_jya_objVtx_00C500.vtx.inc"
};

Gfx gLiftDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(g1fLiftBottomTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_jya_objVtx_00C500, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gLiftTopTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_WRAP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_jya_objVtx_00C500[5], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(g1fLiftBottomTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_jya_objVtx_00C500[37], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(4, 5, 2, 0, 5, 6, 2, 0),
    gsSP2Triangles(6, 0, 2, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 10, 8, 0, 7, 11, 10, 0),
    gsSP2Triangles(7, 12, 11, 0, 13, 14, 7, 0),
    gsSP2Triangles(15, 13, 7, 0, 7, 9, 16, 0),
    gsSP1Triangle(16, 15, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gLiftChainTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_jya_objVtx_00C500[54], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gLiftUpperChainTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&object_jya_objVtx_00C500[70], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gLiftChainTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&object_jya_objVtx_00C500[86], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 6, 9, 0, 10, 9, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 12, 15, 0, 16, 15, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 18, 21, 0, 22, 21, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gLiftUpperChainTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&object_jya_objVtx_00C500[110], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

u8 object_jya_obj_possiblePadding_00D088[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gLiftColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gLiftColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
    { 0x00000000, 0x000207C2 },
};

CollisionPoly gLiftColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x5A82, 0x0000, 0x5A82, 0xFB07},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x5A82, 0x0000, 0x5A82, 0xFB07},
    {0x0000, 0x0004, 0x0005, 0x0001, 0x0000, 0x0000, 0x7FFF, 0xFB50},
    {0x0000, 0x0004, 0x0001, 0x0000, 0x0000, 0x0000, 0x7FFF, 0xFB50},
    {0x0000, 0x0006, 0x0007, 0x0005, 0xA57E, 0x0000, 0x5A82, 0xFB07},
    {0x0000, 0x0006, 0x0005, 0x0004, 0xA57E, 0x0000, 0x5A82, 0xFB07},
    {0x0000, 0x0008, 0x0009, 0x0007, 0x8001, 0x0000, 0x0000, 0xFB50},
    {0x0000, 0x0008, 0x0007, 0x0006, 0x8001, 0x0000, 0x0000, 0xFB50},
    {0x0000, 0x000A, 0x000B, 0x0009, 0xA57E, 0x0000, 0xA57E, 0xFB07},
    {0x0000, 0x000A, 0x0009, 0x0008, 0xA57E, 0x0000, 0xA57E, 0xFB07},
    {0x0000, 0x000C, 0x000D, 0x000B, 0x0000, 0x0000, 0x8001, 0xFB50},
    {0x0000, 0x000C, 0x000B, 0x000A, 0x0000, 0x0000, 0x8001, 0xFB50},
    {0x0000, 0x000E, 0x000F, 0x000D, 0x5A82, 0x0000, 0xA57E, 0xFB07},
    {0x0000, 0x000E, 0x000D, 0x000C, 0x5A82, 0x0000, 0xA57E, 0xFB07},
    {0x0000, 0x0003, 0x0002, 0x000F, 0x7FFF, 0x0000, 0x0000, 0xFB50},
    {0x0000, 0x0003, 0x000F, 0x000E, 0x7FFF, 0x0000, 0x0000, 0xFB50},
    {0x0000, 0x0008, 0x0006, 0x0004, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0008, 0x0004, 0x0000, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0008, 0x0000, 0x0003, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0008, 0x0003, 0x000E, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0008, 0x000E, 0x000C, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0008, 0x000C, 0x000A, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0005, 0x0007, 0x0009, 0x0000, 0x8001, 0x0000, 0xFCE0},
    {0x0000, 0x0005, 0x0009, 0x000B, 0x0000, 0x8001, 0x0000, 0xFCE0},
    {0x0000, 0x0005, 0x000B, 0x000D, 0x0000, 0x8001, 0x0000, 0xFCE0},
    {0x0000, 0x0005, 0x000D, 0x000F, 0x0000, 0x8001, 0x0000, 0xFCE0},
    {0x0000, 0x0005, 0x000F, 0x0002, 0x0000, 0x8001, 0x0000, 0xFCE0},
    {0x0000, 0x0005, 0x0002, 0x0001, 0x0000, 0x8001, 0x0000, 0xFCE0},
    {0x0000, 0x2010, 0x0011, 0x0012, 0xA57E, 0x0000, 0xA57E, 0x0425},
    {0x0000, 0x2010, 0x0012, 0x0013, 0xA57E, 0x0000, 0xA57E, 0x0425},
    {0x0000, 0x2013, 0x0012, 0x0014, 0x5A82, 0x0000, 0xA57E, 0xFFB9},
    {0x0000, 0x2013, 0x0014, 0x0015, 0x5A82, 0x0000, 0xA57E, 0xFFB9},
    {0x0000, 0x2015, 0x0014, 0x0016, 0x5A82, 0x0000, 0x5A82, 0xFB4E},
    {0x0000, 0x2015, 0x0016, 0x0017, 0x5A82, 0x0000, 0x5A82, 0xFB4E},
    {0x0000, 0x2017, 0x0016, 0x0011, 0xA57E, 0x0000, 0x5A82, 0xFFB9},
    {0x0000, 0x2017, 0x0011, 0x0010, 0xA57E, 0x0000, 0x5A82, 0xFFB9},
    {0x0000, 0x2018, 0x0019, 0x001A, 0xA57E, 0x0000, 0xA57E, 0xFFB9},
    {0x0000, 0x2018, 0x001A, 0x001B, 0xA57E, 0x0000, 0xA57E, 0xFFB9},
    {0x0000, 0x201B, 0x001A, 0x001C, 0x5A82, 0x0000, 0xA57E, 0xFB4E},
    {0x0000, 0x201B, 0x001C, 0x001D, 0x5A82, 0x0000, 0xA57E, 0xFB4E},
    {0x0000, 0x201D, 0x001C, 0x001E, 0x5A82, 0x0000, 0x5A82, 0xFFB9},
    {0x0000, 0x201D, 0x001E, 0x001F, 0x5A82, 0x0000, 0x5A82, 0xFFB9},
    {0x0000, 0x201F, 0x001E, 0x0019, 0xA57E, 0x0000, 0x5A82, 0x0425},
    {0x0000, 0x201F, 0x0019, 0x0018, 0xA57E, 0x0000, 0x5A82, 0x0425},
    {0x0000, 0x2020, 0x0021, 0x0022, 0xA57E, 0x0000, 0xA57E, 0xFB4E},
    {0x0000, 0x2020, 0x0022, 0x0023, 0xA57E, 0x0000, 0xA57E, 0xFB4E},
    {0x0000, 0x2023, 0x0022, 0x0024, 0x5A82, 0x0000, 0xA57E, 0xFFB9},
    {0x0000, 0x2023, 0x0024, 0x0025, 0x5A82, 0x0000, 0xA57E, 0xFFB9},
    {0x0000, 0x2025, 0x0024, 0x0026, 0x5A82, 0x0000, 0x5A82, 0x0425},
    {0x0000, 0x2025, 0x0026, 0x0027, 0x5A82, 0x0000, 0x5A82, 0x0425},
    {0x0000, 0x2027, 0x0026, 0x0021, 0xA57E, 0x0000, 0x5A82, 0xFFB9},
    {0x0000, 0x2027, 0x0021, 0x0020, 0xA57E, 0x0000, 0x5A82, 0xFFB9},
    {0x0000, 0x2028, 0x0029, 0x002A, 0xA57E, 0x0000, 0xA57E, 0xFFB9},
    {0x0000, 0x2028, 0x002A, 0x002B, 0xA57E, 0x0000, 0xA57E, 0xFFB9},
    {0x0000, 0x202B, 0x002A, 0x002C, 0x5A82, 0x0000, 0xA57E, 0x0425},
    {0x0000, 0x202B, 0x002C, 0x002D, 0x5A82, 0x0000, 0xA57E, 0x0425},
    {0x0000, 0x202D, 0x002C, 0x002E, 0x5A82, 0x0000, 0x5A82, 0xFFB9},
    {0x0000, 0x202D, 0x002E, 0x002F, 0x5A82, 0x0000, 0x5A82, 0xFFB9},
    {0x0000, 0x202F, 0x002E, 0x0029, 0xA57E, 0x0000, 0x5A82, 0xFB4E},
    {0x0000, 0x202F, 0x0029, 0x0028, 0xA57E, 0x0000, 0x5A82, 0xFB4E},
    {0x0001, 0x2030, 0x0028, 0x0031, 0xA57E, 0x0000, 0x5A82, 0xFB4E},
    {0x0001, 0x2030, 0x002F, 0x0028, 0xA57E, 0x0000, 0x5A82, 0xFB4E},
    {0x0001, 0x2032, 0x002F, 0x0030, 0x5A82, 0x0000, 0x5A82, 0xFFB9},
    {0x0001, 0x2032, 0x002D, 0x002F, 0x5A82, 0x0000, 0x5A82, 0xFFB9},
    {0x0001, 0x2033, 0x002D, 0x0032, 0x5A82, 0x0000, 0xA57E, 0x0425},
    {0x0001, 0x2033, 0x002B, 0x002D, 0x5A82, 0x0000, 0xA57E, 0x0425},
    {0x0001, 0x2031, 0x002B, 0x0033, 0xA57E, 0x0000, 0xA57E, 0xFFB9},
    {0x0001, 0x2031, 0x0028, 0x002B, 0xA57E, 0x0000, 0xA57E, 0xFFB9},
    {0x0001, 0x2034, 0x0020, 0x0035, 0xA57E, 0x0000, 0x5A82, 0xFFB9},
    {0x0001, 0x2034, 0x0027, 0x0020, 0xA57E, 0x0000, 0x5A82, 0xFFB9},
    {0x0001, 0x2036, 0x0027, 0x0034, 0x5A82, 0x0000, 0x5A82, 0x0425},
    {0x0001, 0x2036, 0x0025, 0x0027, 0x5A82, 0x0000, 0x5A82, 0x0425},
    {0x0001, 0x2037, 0x0025, 0x0036, 0x5A82, 0x0000, 0xA57E, 0xFFB9},
    {0x0001, 0x2037, 0x0023, 0x0025, 0x5A82, 0x0000, 0xA57E, 0xFFB9},
    {0x0001, 0x2035, 0x0023, 0x0037, 0xA57E, 0x0000, 0xA57E, 0xFB4E},
    {0x0001, 0x2035, 0x0020, 0x0023, 0xA57E, 0x0000, 0xA57E, 0xFB4E},
    {0x0001, 0x2038, 0x0018, 0x0039, 0xA57E, 0x0000, 0x5A82, 0x0425},
    {0x0001, 0x2038, 0x001F, 0x0018, 0xA57E, 0x0000, 0x5A82, 0x0425},
    {0x0001, 0x203A, 0x001F, 0x0038, 0x5A82, 0x0000, 0x5A82, 0xFFB9},
    {0x0001, 0x203A, 0x001D, 0x001F, 0x5A82, 0x0000, 0x5A82, 0xFFB9},
    {0x0001, 0x203B, 0x001D, 0x003A, 0x5A82, 0x0000, 0xA57E, 0xFB4E},
    {0x0001, 0x203B, 0x001B, 0x001D, 0x5A82, 0x0000, 0xA57E, 0xFB4E},
    {0x0001, 0x2039, 0x001B, 0x003B, 0xA57E, 0x0000, 0xA57E, 0xFFB9},
    {0x0001, 0x2039, 0x0018, 0x001B, 0xA57E, 0x0000, 0xA57E, 0xFFB9},
    {0x0001, 0x203C, 0x0010, 0x003D, 0xA57E, 0x0000, 0x5A82, 0xFFB9},
    {0x0001, 0x203C, 0x0017, 0x0010, 0xA57E, 0x0000, 0x5A82, 0xFFB9},
    {0x0001, 0x203E, 0x0017, 0x003C, 0x5A82, 0x0000, 0x5A82, 0xFB4E},
    {0x0001, 0x203E, 0x0015, 0x0017, 0x5A82, 0x0000, 0x5A82, 0xFB4E},
    {0x0001, 0x203F, 0x0015, 0x003E, 0x5A82, 0x0000, 0xA57E, 0xFFB9},
    {0x0001, 0x203F, 0x0013, 0x0015, 0x5A82, 0x0000, 0xA57E, 0xFFB9},
    {0x0001, 0x203D, 0x0013, 0x003F, 0xA57E, 0x0000, 0xA57E, 0x0425},
    {0x0001, 0x203D, 0x0010, 0x0013, 0xA57E, 0x0000, 0xA57E, 0x0425},
};

Vec3s gLiftColVertices[] = {
    {    600,      0,   1200 },
    {    600,   -800,   1200 },
    {   1200,   -800,    600 },
    {   1200,      0,    600 },
    {   -600,      0,   1200 },
    {   -600,   -800,   1200 },
    {  -1200,      0,    600 },
    {  -1200,   -800,    600 },
    {  -1200,      0,   -600 },
    {  -1200,   -800,   -600 },
    {   -600,      0,  -1200 },
    {   -600,   -800,  -1200 },
    {    600,      0,  -1200 },
    {    600,   -800,  -1200 },
    {   1200,      0,   -600 },
    {   1200,   -800,   -600 },
    {    700,   2079,    800 },
    {    700,   9300,    800 },
    {    800,   9300,    700 },
    {    800,   2079,    700 },
    {    900,   9300,    800 },
    {    900,   2079,    800 },
    {    800,   9300,    900 },
    {    800,   2079,    900 },
    {    700,   2079,   -800 },
    {    700,   9300,   -800 },
    {    800,   9300,   -900 },
    {    800,   2079,   -900 },
    {    900,   9300,   -800 },
    {    900,   2079,   -800 },
    {    800,   9300,   -700 },
    {    800,   2079,   -700 },
    {   -900,   2079,   -800 },
    {   -900,   9300,   -800 },
    {   -800,   9300,   -900 },
    {   -800,   2079,   -900 },
    {   -700,   9300,   -800 },
    {   -700,   2079,   -800 },
    {   -800,   9300,   -700 },
    {   -800,   2079,   -700 },
    {   -900,   2079,    800 },
    {   -900,   9300,    800 },
    {   -800,   9300,    700 },
    {   -800,   2079,    700 },
    {   -700,   9300,    800 },
    {   -700,   2079,    800 },
    {   -800,   9300,    900 },
    {   -800,   2079,    900 },
    {   -800,      0,    900 },
    {   -900,      0,    800 },
    {   -700,      0,    800 },
    {   -800,      0,    700 },
    {   -800,      0,   -700 },
    {   -900,      0,   -800 },
    {   -700,      0,   -800 },
    {   -800,      0,   -900 },
    {    800,      0,   -700 },
    {    700,      0,   -800 },
    {    900,      0,   -800 },
    {    800,      0,   -900 },
    {    800,      0,    900 },
    {    700,      0,    800 },
    {    900,      0,    800 },
    {    800,      0,    700 },
};

CollisionHeader gLiftCol = { 
    { -1200, -800, -1200 },
    { 1200, 9300, 1200 },
    64, gLiftColVertices,
    92, gLiftColPolygons,
    gLiftColSurfaceType,
    gLiftColCamDataList,
    0, NULL
};

u8 object_jya_obj_possiblePadding_00D814[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_jya_objVtx_00D820[] = {
#include "assets/objects/object_jya_obj/object_jya_objVtx_00D820.vtx.inc"
};

Gfx gBombchuiwaLight2DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gCobraMirrorStoneTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_DECAL2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsSPVertex(object_jya_objVtx_00D820, 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(3, 4, 1, 0, 1, 5, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 7, 0),
    gsSP2Triangles(6, 9, 8, 0, 0, 10, 11, 0),
    gsSP2Triangles(2, 10, 0, 0, 2, 5, 10, 0),
    gsSP2Triangles(5, 7, 10, 0, 7, 8, 10, 0),
    gsSP2Triangles(11, 10, 8, 0, 12, 1, 4, 0),
    gsSP2Triangles(12, 5, 1, 0, 13, 14, 4, 0),
    gsSP2Triangles(14, 12, 4, 0, 14, 5, 12, 0),
    gsSP2Triangles(15, 14, 13, 0, 16, 14, 15, 0),
    gsSP2Triangles(16, 5, 14, 0, 9, 16, 15, 0),
    gsSP2Triangles(6, 16, 9, 0, 6, 5, 16, 0),
    gsSPEndDisplayList(),
};

Gfx gBombchuiwaLight1DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gBigMirrorGradientTex, G_IM_FMT_IA, G_IM_SIZ_16b, 8, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsSPVertex(&object_jya_objVtx_00D820[17], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 12, 10, 0, 9, 13, 12, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 21, 19, 0),
    gsSP2Triangles(18, 22, 21, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&object_jya_objVtx_00D820[48], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 object_jya_obj_possiblePadding_00DD18[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_jya_objVtx_00DD20[] = {
#include "assets/objects/object_jya_obj/object_jya_objVtx_00DD20.vtx.inc"
};

Gfx gBigMirror3DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_jya_objTex_01B740, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_jya_objVtx_00DD20, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_jya_objVtx_00DD20[32], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&object_jya_objVtx_00DD20[48], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 4, 2, 1, 0),
    gsSPEndDisplayList(),
};

Gfx gBigMirror4DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gCobraMirrorMirrorTex, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPVertex(&object_jya_objVtx_00DD20[53], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 6, 7, 0),
    gsSP2Triangles(8, 0, 9, 0, 0, 10, 11, 0),
    gsSP2Triangles(0, 12, 13, 0, 14, 0, 13, 0),
    gsSP2Triangles(15, 0, 16, 0, 0, 14, 17, 0),
    gsSP2Triangles(0, 15, 18, 0, 0, 19, 1, 0),
    gsSPEndDisplayList(),
};

u8 object_jya_obj_possiblePadding_00E388[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_jya_objVtx_00E390[] = {
#include "assets/objects/object_jya_obj/object_jya_objVtx_00E390.vtx.inc"
};

Gfx gBombiwaDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gBombiwaRockTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_jya_objVtx_00E390, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 2, 0, 0, 5, 3, 0),
    gsSP2Triangles(5, 6, 3, 0, 6, 7, 3, 0),
    gsSP2Triangles(6, 8, 7, 0, 8, 9, 7, 0),
    gsSP2Triangles(9, 10, 7, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 1, 13, 0, 11, 14, 12, 0),
    gsSP2Triangles(14, 15, 12, 0, 15, 4, 12, 0),
    gsSP2Triangles(4, 1, 12, 0, 7, 13, 3, 0),
    gsSP2Triangles(13, 1, 3, 0, 7, 10, 13, 0),
    gsSP1Triangle(10, 11, 13, 0),
    gsSPEndDisplayList(),
};

u8 object_jya_obj_possiblePadding_00E568[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gBombiwaColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gBombiwaColSurfaceType[] = {
    { 0x00000000, 0x000007CB },
};

CollisionPoly gBombiwaColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x1D16, 0x3A2D, 0x6E3D, 0xFD84},
    {0x0000, 0x0000, 0x0003, 0x0001, 0x0000, 0x3151, 0x761D, 0xFDE5},
    {0x0000, 0x0001, 0x0004, 0x0002, 0x3EEB, 0x1F8A, 0x6AE9, 0xFE14},
    {0x0000, 0x0000, 0x0005, 0x0003, 0xE2EA, 0x3A2D, 0x6E3D, 0xFD84},
    {0x0000, 0x0005, 0x0006, 0x0003, 0xC115, 0x1F8A, 0x6AE9, 0xFE14},
    {0x0000, 0x0006, 0x0007, 0x0003, 0xC1A7, 0x1B0C, 0x6C77, 0xFE32},
    {0x0000, 0x0006, 0x0008, 0x0007, 0xA57E, 0x0000, 0x5A82, 0xFE58},
    {0x0000, 0x0008, 0x0009, 0x0007, 0xA57E, 0x0000, 0x5A82, 0xFE58},
    {0x0000, 0x0009, 0x000A, 0x0007, 0xC7D0, 0xE792, 0x7061, 0xFEF9},
    {0x0000, 0x000B, 0x000C, 0x000D, 0x1EDF, 0xF294, 0x7B7D, 0xFF0F},
    {0x0000, 0x000C, 0x0001, 0x000D, 0x1EE0, 0x0D65, 0x7B7E, 0xFEAE},
    {0x0000, 0x000B, 0x000E, 0x000C, 0x3830, 0xE792, 0x7061, 0xFEF9},
    {0x0000, 0x000E, 0x000F, 0x000C, 0x5A82, 0x0000, 0x5A82, 0xFE58},
    {0x0000, 0x000F, 0x0004, 0x000C, 0x5A82, 0x0000, 0x5A82, 0xFE58},
    {0x0000, 0x0004, 0x0001, 0x000C, 0x3E59, 0x1B0C, 0x6C77, 0xFE32},
    {0x0000, 0x0007, 0x000D, 0x0003, 0xE120, 0x0D65, 0x7B7E, 0xFEAE},
    {0x0000, 0x000D, 0x0001, 0x0003, 0x0000, 0x1B22, 0x7D16, 0xFE79},
    {0x0000, 0x0007, 0x000A, 0x000D, 0xE121, 0xF294, 0x7B7D, 0xFF0F},
    {0x0000, 0x000A, 0x000B, 0x000D, 0x0000, 0xE4CF, 0x7D13, 0xFF3D},
};

Vec3s gBombiwaColVertices[] = {
    {      0,   1400,      0 },
    {    200,    921,    200 },
    {    400,   1200,      0 },
    {   -200,    921,    200 },
    {    600,    801,      0 },
    {   -400,   1200,      0 },
    {   -600,    801,      0 },
    {   -400,    460,    200 },
    {   -600,    400,      0 },
    {   -600,      0,      0 },
    {   -200,      0,    200 },
    {    200,      0,    200 },
    {    400,    460,    200 },
    {      0,    460,    300 },
    {    600,      0,      0 },
    {    600,    400,      0 },
};

CollisionHeader gBombiwaCol = { 
    { -600, 0, 0 },
    { 600, 1400, 300 },
    16, gBombiwaColVertices,
    19, gBombiwaColPolygons,
    gBombiwaColSurfaceType,
    gBombiwaColCamDataList,
    0, NULL
};

Vtx object_jya_objVtx_00E740[] = {
#include "assets/objects/object_jya_obj/object_jya_objVtx_00E740.vtx.inc"
};

Gfx gBombchuiwaDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gBombiwaRockTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_jya_objVtx_00E740, 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 2, 0, 4, 5, 2, 0),
    gsSP2Triangles(6, 5, 4, 0, 6, 7, 5, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 5, 0),
    gsSP2Triangles(10, 3, 2, 0, 10, 2, 5, 0),
    gsSP2Triangles(0, 11, 12, 0, 0, 12, 1, 0),
    gsSP2Triangles(12, 4, 1, 0, 12, 6, 4, 0),
    gsSP2Triangles(11, 13, 14, 0, 11, 14, 12, 0),
    gsSP2Triangles(14, 6, 12, 0, 13, 15, 16, 0),
    gsSP2Triangles(13, 16, 14, 0, 15, 17, 18, 0),
    gsSP2Triangles(15, 18, 16, 0, 18, 6, 16, 0),
    gsSP2Triangles(6, 14, 16, 0, 17, 19, 20, 0),
    gsSP2Triangles(17, 20, 18, 0, 20, 6, 18, 0),
    gsSP2Triangles(19, 21, 22, 0, 19, 22, 20, 0),
    gsSP2Triangles(22, 6, 20, 0, 21, 23, 22, 0),
    gsSP2Triangles(21, 24, 23, 0, 24, 8, 7, 0),
    gsSP2Triangles(24, 7, 23, 0, 7, 6, 23, 0),
    gsSP1Triangle(6, 22, 23, 0),
    gsSPEndDisplayList(),
};

u8 object_jya_obj_possiblePadding_00E9E8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_jya_objVtx_00E9F0[] = {
#include "assets/objects/object_jya_obj/object_jya_objVtx_00E9F0.vtx.inc"
};

Gfx gBombiwaEffectDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gBombiwaRockTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_jya_objVtx_00E9F0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(20, 22, 23, 0, 24, 25, 26, 0),
    gsSP1Triangle(27, 28, 29, 0),
    gsSPVertex(&object_jya_objVtx_00E9F0[30], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 18, 16, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPEndDisplayList(),
};

Vtx object_jya_objVtx_00EEB0[] = {
#include "assets/objects/object_jya_obj/object_jya_objVtx_00EEB0.vtx.inc"
};

Gfx gKanaamiDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gKanaamiTopTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_jya_objVtx_00EEB0, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKanaamiMiddleTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_jya_objVtx_00EEB0[16], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 0, 3, 0, 1, 0, 4, 0),
    gsSPEndDisplayList(),
};

CamData gKanaamiColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gKanaamiColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
    { 0x00800000, 0x000007C2 },
};

CollisionPoly gKanaamiColPolygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x8001, 0x0000, 0x0000, 0xFE70},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x8001, 0x0000, 0x0000, 0xFE70},
    {0x0000, 0x2004, 0x0005, 0x0001, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x2004, 0x0001, 0x0000, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x2006, 0x0007, 0x0005, 0x7FFF, 0x0000, 0x0000, 0xFE70},
    {0x0000, 0x2006, 0x0005, 0x0004, 0x7FFF, 0x0000, 0x0000, 0xFE70},
    {0x0000, 0x2003, 0x0002, 0x0007, 0x0000, 0x7FFF, 0x0000, 0xF6A0},
    {0x0000, 0x2003, 0x0007, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xF6A0},
    {0x0001, 0x0006, 0x0004, 0x0000, 0x0000, 0x0000, 0x8001, 0x0000},
    {0x0001, 0x0006, 0x0000, 0x0003, 0x0000, 0x0000, 0x8001, 0x0000},
    {0x0001, 0x2002, 0x0001, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
    {0x0001, 0x2002, 0x0005, 0x0007, 0x0000, 0x0000, 0x7FFF, 0xFF9C},
};

Vec3s gKanaamiColVertices[] = {
    {   -400,      0,      0 },
    {   -400,      0,    100 },
    {   -400,   2400,    100 },
    {   -400,   2400,      0 },
    {    400,      0,      0 },
    {    400,      0,    100 },
    {    400,   2400,      0 },
    {    400,   2400,    100 },
};

CollisionHeader gKanaamiCol = { 
    { -400, 0, 0 },
    { 400, 2400, 100 },
    8, gKanaamiColVertices,
    12, gKanaamiColPolygons,
    gKanaamiColSurfaceType,
    gKanaamiColCamDataList,
    0, NULL
};

u8 object_jya_obj_possiblePadding_00F234[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_jya_objVtx_00F240[] = {
#include "assets/objects/object_jya_obj/object_jya_objVtx_00F240.vtx.inc"
};

Gfx gCobra1DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gCobraMirrorBorderTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_jya_objVtx_00F240, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&object_jya_objVtx_00F240[32], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 4, 5, 2, 0),
    gsSP2Triangles(5, 6, 2, 0, 6, 7, 2, 0),
    gsSP2Triangles(7, 8, 2, 0, 0, 2, 8, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gCobraMirrorStoneTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&object_jya_objVtx_00F240[41], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(4, 8, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 10, 11, 0, 10, 12, 11, 0),
    gsSP2Triangles(11, 12, 5, 0, 9, 13, 14, 0),
    gsSP2Triangles(9, 14, 10, 0, 14, 15, 12, 0),
    gsSP2Triangles(14, 12, 10, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 20, 8, 0, 19, 8, 4, 0),
    gsSP2Triangles(20, 9, 8, 0, 20, 21, 9, 0),
    gsSP2Triangles(21, 13, 9, 0, 21, 22, 13, 0),
    gsSP2Triangles(19, 23, 24, 0, 19, 24, 20, 0),
    gsSP2Triangles(25, 26, 22, 0, 25, 22, 21, 0),
    gsSP2Triangles(23, 27, 28, 0, 23, 28, 24, 0),
    gsSP2Triangles(29, 30, 26, 0, 29, 26, 25, 0),
    gsSP1Triangle(27, 31, 28, 0),
    gsSPVertex(&object_jya_objVtx_00F240[73], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 0, 7, 1, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 4, 3, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(21, 22, 20, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_jya_objVtx_00F240[105], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 18, 16, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 22, 20, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 25, 27, 28, 0),
    gsSP2Triangles(25, 28, 26, 0, 29, 30, 31, 0),
    gsSPVertex(&object_jya_objVtx_00F240[137], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(3, 5, 4, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 9, 7, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(15, 17, 16, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 22, 24, 23, 0),
    gsSP2Triangles(25, 26, 27, 0, 26, 28, 27, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_jya_objVtx_00F240[169], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 10, 9, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&object_jya_objVtx_00F240[200], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(1, 12, 2, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_jya_objVtx_00F240[232], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 20, 18, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 24, 26, 0),
    gsSP2Triangles(27, 26, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_jya_objVtx_00F240[264], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(19, 20, 17, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0),
    gsSP1Triangle(25, 27, 28, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gCobraMirrorEyeTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_jya_objVtx_00F240[293], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 6, 7, 4, 0),
    gsSP2Triangles(6, 8, 7, 0, 9, 0, 2, 0),
    gsSP2Triangles(0, 7, 1, 0, 7, 8, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gCobraMirrorHandleTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_jya_objVtx_00F240[303], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Gfx gCobra2DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gCobraMirrorMirrorTex, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 178),
    gsSPVertex(&object_jya_objVtx_00F240[327], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gCobraMirrorToothTex, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_jya_objVtx_00F240[335], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 1, 0, 5, 1, 0, 0),
    gsSPEndDisplayList(),
};

u8 object_jya_obj_possiblePadding_010D28[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gCobraColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gCobraColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
    { 0x00E00000, 0x000007C0 },
};

CollisionPoly gCobraColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0xC822, 0x4083, 0x5F66, 0xFD29},
    {0x0000, 0x0003, 0x0000, 0x0002, 0xAEA3, 0x3535, 0x5343, 0xFD89},
    {0x0000, 0x0000, 0x0003, 0x0004, 0x921E, 0xCCFC, 0x294F, 0x00D9},
    {0x0000, 0x0003, 0x0005, 0x0004, 0x9392, 0xD72F, 0x3669, 0x007A},
    {0x0000, 0x0006, 0x0007, 0x0008, 0x6C13, 0xD648, 0x366D, 0x0080},
    {0x0000, 0x0006, 0x0008, 0x0009, 0x6D75, 0xCCEA, 0x2A55, 0x00D7},
    {0x0000, 0x000A, 0x0003, 0x0002, 0x9F72, 0x500B, 0x1990, 0xFCDF},
    {0x0000, 0x000B, 0x0002, 0x0001, 0xEA50, 0x7AB7, 0x1D38, 0xFB99},
    {0x0000, 0x000B, 0x000A, 0x0002, 0xC9CE, 0x73E6, 0xFC51, 0xFBE9},
    {0x0000, 0x000C, 0x000B, 0x000D, 0x35F0, 0x7407, 0xFC9A, 0xFBE7},
    {0x0000, 0x000B, 0x0001, 0x000D, 0x15B0, 0x7AB7, 0x1D38, 0xFB99},
    {0x0000, 0x000C, 0x000D, 0x0008, 0x5FE6, 0x50BB, 0x19DD, 0xFCD9},
    {0x0000, 0x000E, 0x0003, 0x000A, 0xA19F, 0x520E, 0x1B41, 0xFCCF},
    {0x0000, 0x000E, 0x000A, 0x000F, 0x9643, 0x4040, 0xDF38, 0xFD6E},
    {0x0000, 0x000C, 0x0010, 0x0011, 0x3415, 0x3A9B, 0x9AD4, 0xFDF4},
    {0x0000, 0x000B, 0x000C, 0x0011, 0x19E6, 0x5744, 0xA604, 0xFD1A},
    {0x0000, 0x000A, 0x000B, 0x0011, 0xE60A, 0x5716, 0xA5DC, 0xFD1C},
    {0x0000, 0x000F, 0x000A, 0x0011, 0xCC45, 0x3ABF, 0x9ABB, 0xFDF3},
    {0x0000, 0x0011, 0x0010, 0x0012, 0x3373, 0x3793, 0x98D0, 0xFE0A},
    {0x0000, 0x000F, 0x0011, 0x0012, 0xCCF6, 0x3767, 0x9885, 0xFE0C},
    {0x0000, 0x0010, 0x000C, 0x0008, 0x730E, 0x37AB, 0x06CD, 0xFD9E},
    {0x0000, 0x0010, 0x0008, 0x0013, 0x59F6, 0x56D2, 0xE493, 0xFCEC},
    {0x0000, 0x0003, 0x000E, 0x0005, 0x1711, 0xD683, 0x76DE, 0x00E6},
    {0x0000, 0x0000, 0x0004, 0x0006, 0x0000, 0xA225, 0x5708, 0x01E8},
    {0x0000, 0x0000, 0x0006, 0x0009, 0x00A3, 0xA2FA, 0x57EA, 0x01E0},
    {0x0000, 0x0001, 0x0000, 0x0009, 0xFFA5, 0x33ED, 0x74FE, 0xFD73},
    {0x0000, 0x000D, 0x0001, 0x0009, 0x37CD, 0x40C6, 0x5F42, 0xFD26},
    {0x0000, 0x000D, 0x0009, 0x0008, 0x5055, 0x35FA, 0x53C4, 0xFD83},
    {0x0000, 0x0013, 0x0008, 0x0007, 0xE927, 0xD5F6, 0x76B8, 0x00E9},
    {0x0000, 0x0014, 0x0015, 0x0016, 0x6AAD, 0xF787, 0x463A, 0xFF0B},
    {0x0000, 0x0014, 0x0016, 0x0017, 0x4EF4, 0x11B0, 0x632E, 0xFEB0},
    {0x0000, 0x0017, 0x0016, 0x0007, 0x4736, 0x4B04, 0x4B65, 0xFD8B},
    {0x0000, 0x0005, 0x0018, 0x0019, 0xB8CA, 0x4B04, 0x4B65, 0xFD8B},
    {0x0000, 0x0019, 0x0018, 0x001A, 0xB290, 0xFDF8, 0x65E4, 0xFF21},
    {0x0000, 0x0019, 0x001A, 0x001B, 0x9209, 0x0B80, 0x407C, 0xFEC7},
    {0x0000, 0x001B, 0x001C, 0x001D, 0xD886, 0xF871, 0x7986, 0xFF27},
    {0x0000, 0x001C, 0x001E, 0x001D, 0xD2B0, 0x17B3, 0x7557, 0xFEEA},
    {0x0000, 0x001B, 0x001A, 0x001C, 0x96CD, 0xF1D7, 0x4786, 0xFF1F},
    {0x0000, 0x001D, 0x001E, 0x001F, 0x1A05, 0x1733, 0x7B28, 0xFF07},
    {0x0000, 0x001D, 0x001F, 0x0020, 0x0000, 0xED4B, 0x7E9F, 0xFF4B},
    {0x0000, 0x0020, 0x001F, 0x0015, 0x4DE5, 0xF4A2, 0x64ED, 0xFF3F},
    {0x0000, 0x0020, 0x0015, 0x0014, 0x58C1, 0xCBD8, 0x4C10, 0xFFBA},
    {0x0000, 0x0014, 0x001B, 0x001D, 0x0000, 0x167A, 0x7E02, 0xFEF5},
    {0x0000, 0x0014, 0x001D, 0x0020, 0x0000, 0x167A, 0x7E02, 0xFEF5},
    {0x0000, 0x0014, 0x0017, 0x0019, 0x0000, 0x1678, 0x7E02, 0xFEF5},
    {0x0000, 0x0014, 0x0019, 0x001B, 0x0000, 0x1678, 0x7E02, 0xFEF5},
    {0x0000, 0x0017, 0x0007, 0x0005, 0x0000, 0x3819, 0x730C, 0xFE3F},
    {0x0000, 0x0017, 0x0005, 0x0019, 0x0000, 0x3819, 0x730C, 0xFE3F},
    {0x0000, 0x0021, 0x0022, 0x0023, 0x35FB, 0x0000, 0x740F, 0xFF6A},
    {0x0000, 0x0021, 0x0023, 0x0024, 0x35FB, 0x0000, 0x740F, 0xFF6A},
    {0x0000, 0x0023, 0x0025, 0x0024, 0x0000, 0x0000, 0x7FFF, 0xFFA5},
    {0x0000, 0x0023, 0x0026, 0x0025, 0x615A, 0xDD75, 0x4B94, 0xFF6A},
    {0x0000, 0x0023, 0x001F, 0x0026, 0x649A, 0xF8CF, 0x4ECF, 0xFF50},
    {0x0000, 0x001F, 0x001E, 0x0027, 0x1A74, 0xFDA6, 0x7D36, 0xFF27},
    {0x0000, 0x001F, 0x0027, 0x0026, 0x18C3, 0x0097, 0x7D94, 0xFF23},
    {0x0000, 0x0027, 0x0028, 0x0026, 0x178B, 0xD859, 0x7767, 0xFF4A},
    {0x0000, 0x0026, 0x0028, 0x0025, 0x3807, 0xB347, 0x55C7, 0xFF8C},
    {0x0000, 0x0022, 0x0029, 0x0023, 0x1E47, 0x51C1, 0x5DB7, 0xFF5C},
    {0x0000, 0x0013, 0x0007, 0x0016, 0xEB17, 0xD140, 0x754E, 0x0108},
    {0x0000, 0x0005, 0x000E, 0x0018, 0x14E9, 0xD140, 0x754E, 0x0108},
    {0x0000, 0x0029, 0x0022, 0x002A, 0x7A7E, 0x22CD, 0x0CF4, 0xFF1C},
    {0x0000, 0x0022, 0x0021, 0x002A, 0x7E9F, 0x0000, 0x12B5, 0xFF2E},
    {0x0000, 0x0021, 0x002B, 0x002A, 0x7A93, 0xDB3E, 0x02A7, 0xFF3D},
    {0x0000, 0x0029, 0x001F, 0x0023, 0x6E3A, 0x25B9, 0x3502, 0xFF36},
    {0x0000, 0x0029, 0x0015, 0x001F, 0x6455, 0xB2FE, 0x13A7, 0x0014},
    {0x0000, 0x0029, 0x002C, 0x0015, 0x6E29, 0xEC42, 0xC1E3, 0xFF7A},
    {0x0000, 0x002C, 0x002D, 0x0015, 0x6A57, 0xDCC8, 0xC214, 0xFFB4},
    {0x0000, 0x002D, 0x0016, 0x0015, 0x79A9, 0xED07, 0xDD0C, 0xFF4E},
    {0x0000, 0x002D, 0x0010, 0x0013, 0x7757, 0x1AE3, 0xDA57, 0xFE5D},
    {0x0000, 0x002D, 0x0013, 0x0016, 0x7124, 0x2450, 0xD06B, 0xFE32},
    {0x0000, 0x002E, 0x002F, 0x0030, 0xA712, 0xE837, 0xA712, 0xFF1F},
    {0x0000, 0x002E, 0x0031, 0x002F, 0x972D, 0xEE1F, 0xB8C3, 0xFF24},
    {0x0000, 0x0031, 0x0032, 0x002F, 0x9CD1, 0x3A1E, 0xC7B7, 0xFF0E},
    {0x0000, 0x0031, 0x0033, 0x0032, 0xAF8C, 0x2E88, 0xA7FF, 0xFF16},
    {0x0000, 0x0032, 0x0034, 0x002F, 0x0000, 0x1C7B, 0x8336, 0xFF2D},
    {0x0000, 0x0034, 0x0035, 0x0030, 0x0000, 0x393E, 0x8D84, 0xFF29},
    {0x0000, 0x0034, 0x0030, 0x002F, 0x0000, 0x393E, 0x8D84, 0xFF29},
    {0x0000, 0x0032, 0x002A, 0x0034, 0x5E73, 0x3AF1, 0xC0DA, 0xFF02},
    {0x0000, 0x0032, 0x0029, 0x002A, 0x5776, 0x35BF, 0xB38C, 0xFF06},
    {0x0000, 0x002A, 0x002B, 0x0034, 0x65ED, 0x196D, 0xB6DF, 0xFF00},
    {0x0000, 0x002B, 0x0035, 0x0034, 0x5FF8, 0x11F4, 0xAD3B, 0xFEFD},
    {0x0000, 0x0036, 0x0032, 0x0033, 0xCD5F, 0x02B2, 0x8A79, 0xFF89},
    {0x0000, 0x0032, 0x002C, 0x0029, 0x3377, 0x00BD, 0x8ACF, 0xFF8E},
    {0x0000, 0x0036, 0x0012, 0x0032, 0xD0A6, 0xCD85, 0x9455, 0x0040},
    {0x0000, 0x0036, 0x0037, 0x0012, 0xC065, 0xDCA6, 0x96B4, 0xFFF3},
    {0x0000, 0x0012, 0x002C, 0x0032, 0x301D, 0xCDA6, 0x949C, 0x003F},
    {0x0000, 0x0012, 0x002D, 0x002C, 0x4049, 0xDC99, 0x9722, 0xFFF2},
    {0x0000, 0x0037, 0x000F, 0x0012, 0xBECD, 0x2705, 0x98FF, 0xFE66},
    {0x0000, 0x0010, 0x002D, 0x0012, 0x41E6, 0x26FC, 0x996E, 0xFE65},
    {0x0000, 0x0028, 0x0027, 0x0038, 0xCF42, 0xC5F4, 0x6724, 0xFF4A},
    {0x0000, 0x0028, 0x0038, 0x0039, 0xE056, 0xEEC3, 0x7AD0, 0xFF31},
    {0x0000, 0x0027, 0x001E, 0x003A, 0xC6CE, 0x0516, 0x7265, 0xFF03},
    {0x0000, 0x0027, 0x003A, 0x0038, 0xC977, 0x09B2, 0x7364, 0xFF00},
    {0x0000, 0x003A, 0x0033, 0x0038, 0x825C, 0x1656, 0xF60C, 0xFF22},
    {0x0000, 0x0033, 0x0031, 0x0038, 0x824A, 0x15B7, 0xF597, 0xFF23},
    {0x0000, 0x0031, 0x002E, 0x0039, 0x93C3, 0xBC0A, 0xF90A, 0xFF75},
    {0x0000, 0x0031, 0x0039, 0x0038, 0x8FAA, 0xC2D7, 0xFB31, 0xFF6D},
    {0x0000, 0x001E, 0x001C, 0x003A, 0xC6C2, 0x0000, 0x727C, 0xFF0A},
    {0x0000, 0x001C, 0x0033, 0x003A, 0x8B51, 0x349B, 0x0067, 0xFEF8},
    {0x0000, 0x001C, 0x001A, 0x0033, 0x90BB, 0xC0C3, 0xFE6E, 0xFFDD},
    {0x0000, 0x001A, 0x0036, 0x0033, 0x9134, 0xEFD9, 0xC1FB, 0xFF6D},
    {0x0000, 0x001A, 0x0018, 0x0037, 0x8657, 0xED07, 0xDD0C, 0xFF4E},
    {0x0000, 0x001A, 0x0037, 0x0036, 0x95A9, 0xDCC8, 0xC214, 0xFFB4},
    {0x0000, 0x0018, 0x000E, 0x000F, 0x8A19, 0x213D, 0xDAE4, 0xFE33},
    {0x0000, 0x0018, 0x000F, 0x0037, 0x8C48, 0x1CFC, 0xD19D, 0xFE54},
    {0x0000, 0x0005, 0x0007, 0x0006, 0x0000, 0x8225, 0x174F, 0x033F},
    {0x0000, 0x0005, 0x0006, 0x0004, 0x0000, 0x8225, 0x174F, 0x033F},
    {0x0000, 0x803B, 0x003C, 0x003D, 0x90C3, 0x0000, 0x3F52, 0xFDE2},
    {0x0000, 0x803B, 0x003D, 0x003E, 0x90C3, 0x0000, 0x3F52, 0xFDE2},
    {0x0001, 0x803E, 0x003D, 0x003F, 0x3FF6, 0x0000, 0x6EDE, 0x0048},
    {0x0001, 0x803E, 0x003F, 0x0040, 0x3FF6, 0x0000, 0x6EDE, 0x0048},
    {0x0001, 0x8041, 0x0042, 0x0043, 0xC00A, 0x0000, 0x6EDE, 0x0046},
    {0x0001, 0x8041, 0x0043, 0x0044, 0xC00A, 0x0000, 0x6EDE, 0x0046},
    {0x0000, 0x8043, 0x0042, 0x0045, 0x6F3D, 0x0000, 0x3F52, 0xFDE7},
    {0x0000, 0x8043, 0x0045, 0x0046, 0x6F3D, 0x0000, 0x3F52, 0xFDE7},
    {0x0001, 0x8046, 0x0045, 0x0047, 0x3FF6, 0x0000, 0x9122, 0xFF70},
    {0x0001, 0x8046, 0x0047, 0x0048, 0x3FF6, 0x0000, 0x9122, 0xFF70},
    {0x0001, 0x8049, 0x003C, 0x003B, 0xBFE8, 0x0000, 0x9135, 0xFF6C},
    {0x0001, 0x8049, 0x003B, 0x004A, 0xBFE8, 0x0000, 0x9135, 0xFF6C},
};

Vec3s gCobraColVertices[] = {
    {    -73,    941,    297 },
    {      0,   1124,    216 },
    {    -90,   1120,    166 },
    {   -171,   1029,    145 },
    {    -70,    890,    242 },
    {   -140,    860,     80 },
    {     70,    890,    242 },
    {    140,    860,     80 },
    {    172,   1029,    146 },
    {     73,    942,    297 },
    {   -148,   1089,     44 },
    {      0,   1159,     69 },
    {    149,   1089,     44 },
    {     90,   1120,    166 },
    {   -284,    906,    124 },
    {   -240,    908,    -14 },
    {    240,    908,    -14 },
    {      1,   1003,    -82 },
    {      2,    692,   -249 },
    {    284,    906,    124 },
    {    205,    453,    190 },
    {    274,    410,     80 },
    {    315,    719,     55 },
    {    205,    739,    139 },
    {   -315,    719,     55 },
    {   -205,    739,    139 },
    {   -274,    410,     80 },
    {   -205,    453,    190 },
    {   -180,    242,    185 },
    {    -68,    268,    223 },
    {    -70,    180,    240 },
    {     72,    180,    210 },
    {     68,    268,    223 },
    {    202,      0,     71 },
    {    202,    100,     71 },
    {    159,     93,     91 },
    {    159,      0,     91 },
    {    126,      0,     91 },
    {     64,     90,    212 },
    {    -78,     90,    240 },
    {    -47,      0,    204 },
    {    173,    246,    -47 },
    {    228,     74,   -105 },
    {    207,      0,   -160 },
    {    216,    423,    -27 },
    {    270,    681,    -81 },
    {   -153,      0,   -171 },
    {   -150,     86,   -197 },
    {    -84,      0,   -240 },
    {   -203,     74,   -116 },
    {      2,    419,   -121 },
    {   -179,    246,    -47 },
    {    159,     86,   -197 },
    {    138,      0,   -240 },
    {   -216,    423,    -27 },
    {   -270,    681,    -81 },
    {   -224,     90,    171 },
    {   -175,      0,    171 },
    {   -208,    180,    171 },
    {   -542,    400,    143 },
    {   -542,      0,    143 },
    {   -505,      0,    208 },
    {   -505,    400,    208 },
    {   -141,      0,     -2 },
    {   -141,    400,     -2 },
    {    136,      0,     -2 },
    {    500,      0,    208 },
    {    500,    400,    208 },
    {    136,    400,     -2 },
    {    537,      0,    143 },
    {    537,    400,    143 },
    {    173,      0,    -67 },
    {    173,    400,    -67 },
    {   -179,      0,    -67 },
    {   -179,    400,    -67 },
};

CollisionHeader gCobraCol = { 
    { -542, 0, -249 },
    { 537, 1159, 302 },
    75, gCobraColVertices,
    119, gCobraColPolygons,
    gCobraColSurfaceType,
    gCobraColCamDataList,
    0, NULL
};

u8 object_jya_obj_possiblePadding_0116A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_jya_objVtx_0116B0[] = {
#include "assets/objects/object_jya_obj/object_jya_objVtx_0116B0.vtx.inc"
};

Gfx gCobra3DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gBigMirrorGradientTex, G_IM_FMT_IA, G_IM_SIZ_16b, 8, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(object_jya_objVtx_0116B0, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 11, 0, 12, 11, 10, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(3, 2, 15, 0, 3, 15, 14, 0),
    gsSPEndDisplayList(),
};

Vtx object_jya_objVtx_011890[] = {
#include "assets/objects/object_jya_obj/object_jya_objVtx_011890.vtx.inc"
};

Gfx gBombchuiwa2DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gBombiwaLight1Tex, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 76),
    gsSPVertex(object_jya_objVtx_011890, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 1, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSPEndDisplayList(),
};

u64 object_jya_objTLUT_011A60[] = {
#include "assets/objects/object_jya_obj/object_jya_objTLUT_011A60.rgba16.inc.c"
};

u64 object_jya_objTex_011A80[] = {
#include "assets/objects/object_jya_obj/object_jya_objTex_011A80.ci4.inc.c"
};

Vtx object_jya_objVtx_012280[] = {
#include "assets/objects/object_jya_obj/object_jya_objVtx_012280.vtx.inc"
};

Gfx gZurerukabeDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_jya_objTex_016140, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_jya_objVtx_012280, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(object_jya_objTex_011A80, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_jya_objTLUT_011A60),
    gsSPVertex(&object_jya_objVtx_012280[4], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

CamData gZurerukabeColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gZurerukabeColSurfaceType[] = {
    { 0x00800000, 0x000007C0 },
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gZurerukabeColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0001, 0x0002, 0x0004, 0x0005, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0001, 0x0002, 0x0005, 0x0003, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0001, 0x0001, 0x0000, 0x0006, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0001, 0x0001, 0x0006, 0x0007, 0x0000, 0x0000, 0x7FFF, 0x0000},
};

Vec3s gZurerukabeColVertices[] = {
    {   1000,      0,      0 },
    {   1000,   1000,      0 },
    {  -1000,   1000,      0 },
    {  -1000,      0,      0 },
    {  -5000,   1000,      0 },
    {  -5000,      0,      0 },
    {   5000,      0,      0 },
    {   5000,   1000,      0 },
};

CollisionHeader gZurerukabeCol = { 
    { -5000, 0, 0 },
    { 5000, 1000, 0 },
    8, gZurerukabeColVertices,
    6, gZurerukabeColPolygons,
    gZurerukabeColSurfaceType,
    gZurerukabeColCamDataList,
    0, NULL
};

u8 object_jya_obj_possiblePadding_012534[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gKanaamiTopTex[] = {
#include "assets/objects/object_jya_obj/kanaami_top.rgba16.inc.c"
};

u64 gKanaamiMiddleTex[] = {
#include "assets/objects/object_jya_obj/kanaami_middle.rgba16.inc.c"
};

u64 gCobraMirrorStoneTex[] = {
#include "assets/objects/object_jya_obj/cobra_stone.rgba16.inc.c"
};

u64 gCobraMirrorMirrorTex[] = {
#include "assets/objects/object_jya_obj/cobra_mirror.ia16.inc.c"
};

u64 gCobraMirrorToothTex[] = {
#include "assets/objects/object_jya_obj/cobra_tooth.ia16.inc.c"
};

u64 gCobraMirrorEyeTex[] = {
#include "assets/objects/object_jya_obj/cobra_eye.rgba16.inc.c"
};

u64 gCobraMirrorBorderTex[] = {
#include "assets/objects/object_jya_obj/cobra_boarder.rgba16.inc.c"
};

u64 gCobraMirrorHandleTex[] = {
#include "assets/objects/object_jya_obj/cobra_handle.rgba16.inc.c"
};

u64 object_jya_objTex_016140[] = {
#include "assets/objects/object_jya_obj/object_jya_objTex_016140.rgba16.inc.c"
};

u64 object_jya_objTex_017140[] = {
#include "assets/objects/object_jya_obj/object_jya_objTex_017140.rgba16.inc.c"
};

u64 g1fLiftBottomTex[] = {
#include "assets/objects/object_jya_obj/1flift_bottom.rgba16.inc.c"
};

u64 gLiftChainTex[] = {
#include "assets/objects/object_jya_obj/lift_chain.rgba16.inc.c"
};

u64 gLiftTopTex[] = {
#include "assets/objects/object_jya_obj/lift_top.rgba16.inc.c"
};

u64 gLiftUpperChainTex[] = {
#include "assets/objects/object_jya_obj/lift_upper_chain.rgba16.inc.c"
};

u64 gBombiwaRockTex[] = {
#include "assets/objects/object_jya_obj/bombiwa_rock.rgba16.inc.c"
};

u64 gBombiwaLight1Tex[] = {
#include "assets/objects/object_jya_obj/bombiwa_light.ia16.inc.c"
};

u64 gBigMirrorGradientTex[] = {
#include "assets/objects/object_jya_obj/mirror_gradient.ia16.inc.c"
};

u64 object_jya_objTex_01B340[] = {
#include "assets/objects/object_jya_obj/object_jya_objTex_01B340.ia8.inc.c"
};

u64 object_jya_objTex_01B740[] = {
#include "assets/objects/object_jya_obj/object_jya_objTex_01B740.rgba16.inc.c"
};

u64 g1f1fiftTopTex[] = {
#include "assets/objects/object_jya_obj/1flift_top.rgba16.inc.c"
};

