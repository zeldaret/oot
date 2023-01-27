#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_spot01_matoyab.h"

u64 gKakarikoConstructionSiteTLUT[] = {
#include "assets/objects/object_spot01_matoyab/construction_site_tlut.rgba16.inc.c"
};

u8 object_spot01_matoyab_unaccounted_000200[] = {
    0x00, 0x00, 0x02, 0x01, 0x6D, 0x60, 0x3C, 0xFF, 
};

u64 gKakarikoConstructionSiteBrickWithGrassTex[] = {
#include "assets/objects/object_spot01_matoyab/construction_site_brick_with_grass.ci8.inc.c"
};

u64 gKakarikoConstructionSiteBrickTex[] = {
#include "assets/objects/object_spot01_matoyab/construction_site_brick.ci8.inc.c"
};

u64 gKakarikoConstructionSitRailingTex[] = {
#include "assets/objects/object_spot01_matoyab/construction_site_railing.ci8.inc.c"
};

u64 gKakarikoConstructionSiteWoodTex[] = {
#include "assets/objects/object_spot01_matoyab/construction_site_wood.ci8.inc.c"
};

Vtx object_spot01_matoyabVtx_000888[] = {
#include "assets/objects/object_spot01_matoyab/object_spot01_matoyabVtx_000888.vtx.inc"
};

Gfx gKakarikoConstructionSiteDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gKakarikoConstructionSiteWoodTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gKakarikoConstructionSiteTLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot01_matoyabVtx_000888, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_spot01_matoyabVtx_000888[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(18, 20, 21, 0, 18, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSPVertex(&object_spot01_matoyabVtx_000888[63], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 3, 5, 0, 4, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKakarikoConstructionSiteBrickTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot01_matoyabVtx_000888[70], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKakarikoConstructionSiteBrickWithGrassTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR
                         | G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot01_matoyabVtx_000888[74], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKakarikoConstructionSitRailingTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 8, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot01_matoyabVtx_000888[86], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKakarikoConstructionSiteBrickWithGrassTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR
                         | G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot01_matoyabVtx_000888[94], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKakarikoConstructionSiteBrickTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot01_matoyabVtx_000888[114], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 31, 30, 0),
    gsSPVertex(&object_spot01_matoyabVtx_000888[146], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKakarikoConstructionSiteWoodTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_DECAL2),
    gsSPVertex(&object_spot01_matoyabVtx_000888[150], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 object_spot01_matoyab_possiblePadding_0015E8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData object_spot01_matoyab_colCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_spot01_matoyab_colSurfaceType[] = {
    { 0x00000000, 0x000007CA },
    { 0x00000000, 0x000007C2 },
};

CollisionPoly object_spot01_matoyab_colPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFA88},
    {0x0000, 0x0000, 0x0003, 0x0001, 0x0000, 0x7FFF, 0x0000, 0xFA88},
    {0x0000, 0x0004, 0x0005, 0x0006, 0x8001, 0x0000, 0x0000, 0x05DC},
    {0x0000, 0x0004, 0x0006, 0x0000, 0x8001, 0x0000, 0x0000, 0x05DC},
    {0x0000, 0x0007, 0x0006, 0x0005, 0x84AC, 0xDDBE, 0x0000, 0x06C6},
    {0x0000, 0x0007, 0x0005, 0x0008, 0x84AC, 0xDDBE, 0x0000, 0x06C6},
    {0x0000, 0x0009, 0x000A, 0x0004, 0x8001, 0x0000, 0x0000, 0x05DC},
    {0x0000, 0x0009, 0x0004, 0x0002, 0x8001, 0x0000, 0x0000, 0x05DC},
    {0x0000, 0x0005, 0x000A, 0x0008, 0x0000, 0x0000, 0x7FFF, 0x05DC},
    {0x0000, 0x000B, 0x0009, 0x0002, 0x0000, 0x0000, 0x8001, 0xF8F8},
    {0x0000, 0x000B, 0x0002, 0x0001, 0x0000, 0x0000, 0x8001, 0xF8F8},
    {0x0000, 0x000C, 0x000D, 0x000E, 0x0000, 0x7FFF, 0x0000, 0xFFF6},
    {0x0000, 0x000C, 0x000E, 0x000F, 0x0000, 0x7FFF, 0x0000, 0xFFF6},
    {0x0000, 0x0006, 0x0010, 0x0011, 0x0000, 0x8001, 0x0000, 0x0438},
    {0x0000, 0x0006, 0x0011, 0x0012, 0x0000, 0x8001, 0x0000, 0x0438},
    {0x0000, 0x0013, 0x0014, 0x0010, 0x8001, 0x0000, 0x0000, 0x05DC},
    {0x0000, 0x0013, 0x0010, 0x0006, 0x8001, 0x0000, 0x0000, 0x05DC},
    {0x0000, 0x0015, 0x0016, 0x0012, 0x7FFF, 0x0000, 0x0000, 0x05DC},
    {0x0000, 0x0015, 0x0012, 0x0011, 0x7FFF, 0x0000, 0x0000, 0x05DC},
    {0x0000, 0x0017, 0x0018, 0x0019, 0x8001, 0x0000, 0x0000, 0xF8F8},
    {0x0000, 0x0017, 0x0019, 0x001A, 0x8001, 0x0000, 0x0000, 0xF8F8},
    {0x0000, 0x0003, 0x0000, 0x0017, 0x0000, 0x7FFF, 0x0000, 0xFA88},
    {0x0000, 0x0000, 0x0018, 0x0017, 0x0000, 0x7FFF, 0x0000, 0xFA88},
    {0x0000, 0x0007, 0x0013, 0x0006, 0x0000, 0x0000, 0x8001, 0x05DC},
    {0x0000, 0x0000, 0x0006, 0x0012, 0x0000, 0x0000, 0x8001, 0x05DC},
    {0x0000, 0x0000, 0x0012, 0x0018, 0x0000, 0x0000, 0x8001, 0x05DC},
    {0x0000, 0x0016, 0x0019, 0x0018, 0x0000, 0x0000, 0x8001, 0x05DC},
    {0x0000, 0x0016, 0x0018, 0x0012, 0x0000, 0x0000, 0x8001, 0x05DC},
    {0x0000, 0x0011, 0x0017, 0x001B, 0x0000, 0x0000, 0x7FFF, 0xF8F8},
    {0x0000, 0x0011, 0x001B, 0x001C, 0x0000, 0x0000, 0x7FFF, 0xF8F8},
    {0x0000, 0x0017, 0x0011, 0x0010, 0x0000, 0x0000, 0x7FFF, 0xF8F8},
    {0x0000, 0x0017, 0x0010, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xF8F8},
    {0x0000, 0x0003, 0x0010, 0x001D, 0x0000, 0x0000, 0x7FFF, 0xF8F8},
    {0x0000, 0x0010, 0x001E, 0x001D, 0x0000, 0x0000, 0x7FFF, 0xF8F8},
    {0x0001, 0x001F, 0x0020, 0x0021, 0x0000, 0x7FFF, 0x0000, 0xFDA8},
    {0x0001, 0x001F, 0x0021, 0x0022, 0x0000, 0x7FFF, 0x0000, 0xFDA8},
    {0x0000, 0x0023, 0x001D, 0x0024, 0x0000, 0x0000, 0x7FFF, 0xF8F8},
    {0x0000, 0x001D, 0x001E, 0x0024, 0x0000, 0x0000, 0x7FFF, 0xF8F8},
    {0x0000, 0x0025, 0x0026, 0x0024, 0x7FFF, 0x0000, 0x0000, 0xF830},
    {0x0000, 0x0027, 0x0025, 0x0024, 0x7FFF, 0x0000, 0x0000, 0xF830},
    {0x0000, 0x0028, 0x0029, 0x000B, 0x8001, 0x0000, 0x0000, 0x0708},
    {0x0000, 0x0028, 0x000B, 0x002A, 0x8001, 0x0000, 0x0000, 0x0708},
    {0x0001, 0x001D, 0x0023, 0x002B, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0001, 0x001D, 0x002B, 0x0028, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0001, 0x002C, 0x002D, 0x0027, 0x0000, 0x7FFF, 0x0000, 0xFE70},
    {0x0001, 0x002C, 0x0027, 0x0024, 0x0000, 0x7FFF, 0x0000, 0xFE70},
    {0x0000, 0x0026, 0x0029, 0x0028, 0x0000, 0x0000, 0x8001, 0xF830},
    {0x0000, 0x0026, 0x0028, 0x002B, 0x0000, 0x0000, 0x8001, 0xF830},
    {0x0000, 0x0014, 0x002E, 0x002C, 0x0000, 0x0000, 0x8001, 0x0708},
    {0x0000, 0x0014, 0x002C, 0x001E, 0x0000, 0x0000, 0x8001, 0x0708},
    {0x0000, 0x002F, 0x002D, 0x002C, 0x8001, 0x0000, 0x0000, 0xF830},
    {0x0000, 0x002F, 0x002C, 0x002E, 0x8001, 0x0000, 0x0000, 0xF830},
    {0x0000, 0x0025, 0x0027, 0x002D, 0x0000, 0x0000, 0x7FFF, 0xF830},
    {0x0000, 0x0025, 0x002D, 0x002F, 0x0000, 0x0000, 0x7FFF, 0xF830},
    {0x0000, 0x0024, 0x0026, 0x002B, 0x7FFF, 0x0000, 0x0000, 0xF830},
    {0x0000, 0x0024, 0x002B, 0x0023, 0x7FFF, 0x0000, 0x0000, 0xF830},
    {0x0001, 0x0030, 0x0031, 0x0020, 0x0000, 0x0000, 0x7FFF, 0x0258},
    {0x0001, 0x0030, 0x0020, 0x001F, 0x0000, 0x0000, 0x7FFF, 0x0258},
    {0x0001, 0x0032, 0x0033, 0x0022, 0x0000, 0x0000, 0x8001, 0xFC18},
    {0x0001, 0x0032, 0x0022, 0x0034, 0x0000, 0x0000, 0x8001, 0xFC18},
    {0x0001, 0x0020, 0x0031, 0x0035, 0x7FFF, 0x0000, 0x0000, 0xFF38},
    {0x0001, 0x0020, 0x0035, 0x0021, 0x7FFF, 0x0000, 0x0000, 0xFF38},
    {0x0001, 0x0022, 0x0033, 0x0030, 0x8001, 0x0000, 0x0000, 0xFCE0},
    {0x0001, 0x0022, 0x0030, 0x001F, 0x8001, 0x0000, 0x0000, 0xFCE0},
    {0x0001, 0x0036, 0x0037, 0x0038, 0x8001, 0x0000, 0x0000, 0xFE70},
    {0x0001, 0x0036, 0x0038, 0x0032, 0x8001, 0x0000, 0x0000, 0xFE70},
    {0x0001, 0x0039, 0x0037, 0x0036, 0x0000, 0x7FFF, 0x0000, 0xFB50},
    {0x0001, 0x0039, 0x0036, 0x003A, 0x0000, 0x7FFF, 0x0000, 0xFB50},
    {0x0001, 0x003B, 0x0039, 0x003A, 0x7FFF, 0x0000, 0x0000, 0xFE70},
    {0x0001, 0x003B, 0x003A, 0x003C, 0x7FFF, 0x0000, 0x0000, 0xFE70},
    {0x0001, 0x003B, 0x0038, 0x0037, 0x0000, 0x0000, 0x8001, 0xF768},
    {0x0001, 0x003B, 0x0037, 0x0039, 0x0000, 0x0000, 0x8001, 0xF768},
    {0x0001, 0x0036, 0x0021, 0x003A, 0x0000, 0x0000, 0x7FFF, 0x03E8},
    {0x0001, 0x003C, 0x003A, 0x0021, 0x0000, 0x0000, 0x7FFF, 0x03E8},
    {0x0001, 0x003C, 0x0021, 0x0035, 0x0000, 0x0000, 0x7FFF, 0x03E8},
    {0x0001, 0x0034, 0x0021, 0x0036, 0x0000, 0x0000, 0x7FFF, 0x03E8},
    {0x0000, 0x002A, 0x0001, 0x0003, 0x7FFF, 0x0000, 0x0000, 0xF8F8},
    {0x0000, 0x002A, 0x0003, 0x001D, 0x7FFF, 0x0000, 0x0000, 0xF8F8},
};

Vec3s object_spot01_matoyab_colVertices[] = {
    {   1500,   1400,   1500 },
    {   1800,   1400,  -1800 },
    {   1500,   1400,  -1800 },
    {   1800,   1400,   1800 },
    {   1500,   1400,  -1500 },
    {   1500,   1080,  -1500 },
    {   1500,   1080,   1500 },
    {   1800,      0,   1500 },
    {   1800,      0,  -1500 },
    {   1500,      0,  -1800 },
    {   1500,      0,  -1500 },
    {   1800,      0,  -1800 },
    {   -800,     10,  -2400 },
    {   -800,     10,   -400 },
    {    400,     10,   -400 },
    {    400,     10,  -2400 },
    {   1500,   1080,   1800 },
    {  -1500,   1080,   1800 },
    {  -1500,   1080,   1500 },
    {   1500,      0,   1500 },
    {   1500,      0,   1800 },
    {  -1500,      0,   1800 },
    {  -1500,      0,   1500 },
    {  -1800,   1400,   1800 },
    {  -1800,   1400,   1500 },
    {  -1800,      0,   1500 },
    {  -1800,      0,   1800 },
    {  -1800,    400,   1800 },
    {  -1500,    400,   1800 },
    {   1800,    800,   1800 },
    {   1500,    400,   1800 },
    {   -800,    600,   -600 },
    {    200,    600,   -600 },
    {    200,    600,  -1000 },
    {   -800,    600,  -1000 },
    {   2000,    800,   1800 },
    {   2000,    400,   1800 },
    {   2000,      0,   2000 },
    {   2000,      0,  -2000 },
    {   2000,    400,   2000 },
    {   1800,    800,  -2000 },
    {   1800,      0,  -2000 },
    {   1800,    800,  -1800 },
    {   2000,    800,  -2000 },
    {  -2000,    400,   1800 },
    {  -2000,    400,   2000 },
    {  -2000,      0,   1800 },
    {  -2000,      0,   2000 },
    {   -800,      0,   -600 },
    {    200,      0,   -600 },
    {   -400,      0,  -1000 },
    {   -800,      0,  -1000 },
    {   -400,    600,  -1000 },
    {    200,      0,  -1000 },
    {   -400,   1200,  -1000 },
    {   -400,   1200,  -2200 },
    {   -400,      0,  -2200 },
    {    400,   1200,  -2200 },
    {    400,   1200,  -1000 },
    {    400,      0,  -2200 },
    {    400,      0,  -1000 },
};

CollisionHeader object_spot01_matoyab_col = { 
    { -2000, 0, -2400 },
    { 2000, 1400, 2000 },
    61, object_spot01_matoyab_colVertices,
    78, object_spot01_matoyab_colPolygons,
    object_spot01_matoyab_colSurfaceType,
    object_spot01_matoyab_colCamDataList,
    0, NULL
};

u8 object_spot01_matoyab_possiblePadding_001C84[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_spot01_matoyabVtx_001C90[] = {
#include "assets/objects/object_spot01_matoyab/object_spot01_matoyabVtx_001C90.vtx.inc"
};

Gfx gKakarikoGuardGateDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gKakarikoGuardGateMetalSidebarDL, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 3, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot01_matoyabVtx_001C90, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

CamData gKakarikoGuardGateColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gKakarikoGuardGateColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gKakarikoGuardGateColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0x0000},
};

Vec3s gKakarikoGuardGateColVertices[] = {
    {    100,      0,      0 },
    {    100,    120,      0 },
    {   -100,    120,      0 },
    {   -100,      0,      0 },
};

CollisionHeader gKakarikoGuardGateCol = { 
    { -100, 0, 0 },
    { 100, 120, 0 },
    4, gKakarikoGuardGateColVertices,
    2, gKakarikoGuardGateColPolygons,
    gKakarikoGuardGateColSurfaceType,
    gKakarikoGuardGateColCamDataList,
    0, NULL
};

u8 object_spot01_matoyab_possiblePadding_001DD4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gKakarikoGuardGateMetalSidebarDL[] = {
#include "assets/objects/object_spot01_matoyab/guard_gate_metal_sidebar.rgba16.inc.c"
};

