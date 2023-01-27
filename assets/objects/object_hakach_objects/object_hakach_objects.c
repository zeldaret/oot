#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_hakach_objects.h"

Vtx object_hakach_objectsVtx_000000[] = {
#include "assets/objects/object_hakach_objects/object_hakach_objectsVtx_000000.vtx.inc"
};

Gfx gBotwHoleTrap1DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gBotwTex_0030F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gBotwTex_0048F0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPVertex(object_hakach_objectsVtx_000000, 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(11, 14, 15, 0, 11, 15, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(17, 20, 21, 0, 17, 21, 18, 0),
    gsSP2Triangles(22, 23, 3, 0, 22, 3, 2, 0),
    gsSP2Triangles(1, 24, 25, 0, 1, 25, 26, 0),
    gsSPEndDisplayList(),
};

Vtx object_hakach_objectsVtx_0002C0[] = {
#include "assets/objects/object_hakach_objects/object_hakach_objectsVtx_0002C0.vtx.inc"
};

Gfx gBotwHoleTrap2DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gBotwTex_0030F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gBotwTex_0048F0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPVertex(object_hakach_objectsVtx_0002C0, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 6, 9, 0, 10, 9, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_hakach_objectsTex_0062F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&object_hakach_objectsVtx_0002C0[12], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 6, 0),
    gsSPEndDisplayList(),
};

u8 object_hakach_objects_possiblePadding_000538[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_hakach_objectsVtx_000540[] = {
#include "assets/objects/object_hakach_objects/object_hakach_objectsVtx_000540.vtx.inc"
};

Gfx gBotwCoffinLidDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gBotwTex_0060F0, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_hakach_objectsVtx_000540, 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 2, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 10, 8, 0),
    gsSP2Triangles(11, 12, 13, 0, 12, 14, 13, 0),
    gsSP2Triangles(15, 16, 17, 0, 16, 18, 17, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 22, 20, 0),
    gsSPEndDisplayList(),
};

u8 object_hakach_objects_possiblePadding_000768[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gBotwCoffinLidColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gBotwCoffinLidColSurfaceType[] = {
    { 0x00000000, 0x000007CA },
};

CollisionPoly gBotwCoffinLidColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x5A82, 0xA57E, 0x0000},
    {0x0000, 0x0000, 0x0003, 0x0001, 0x0000, 0x5A82, 0xA57E, 0x0000},
    {0x0000, 0x0004, 0x0005, 0x0003, 0xB900, 0x6A80, 0x0000, 0xFEEB},
    {0x0000, 0x0005, 0x0001, 0x0003, 0xB900, 0x6A80, 0x0000, 0xFEEB},
    {0x0000, 0x0000, 0x0002, 0x0006, 0x4700, 0x6A80, 0x0000, 0x0000},
    {0x0000, 0x0002, 0x0007, 0x0006, 0x4700, 0x6A80, 0x0000, 0x0000},
    {0x0000, 0x0007, 0x0004, 0x0006, 0x0000, 0x5A82, 0x5A82, 0xFCAF},
    {0x0000, 0x0007, 0x0005, 0x0004, 0x0000, 0x5A82, 0x5A82, 0xFCAF},
    {0x0000, 0x0007, 0x0002, 0x0001, 0x0000, 0x7FFF, 0x0000, 0xFF9C},
    {0x0000, 0x0007, 0x0001, 0x0005, 0x0000, 0x7FFF, 0x0000, 0xFF9C},
    {0x0000, 0x0000, 0x0006, 0x0004, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0004, 0x0003, 0x0000, 0x8001, 0x0000, 0x0000},
};

Vec3s gBotwCoffinLidColVertices[] = {
    {      0,      0,      0 },
    {   -350,    100,    100 },
    {   -150,    100,    100 },
    {   -500,      0,      0 },
    {   -500,      0,   1200 },
    {   -350,    100,   1100 },
    {      0,      0,   1200 },
    {   -150,    100,   1100 },
};

CollisionHeader gBotwCoffinLidCol = { 
    { -500, 0, 0 },
    { 0, 100, 1200 },
    8, gBotwCoffinLidColVertices,
    12, gBotwCoffinLidColPolygons,
    gBotwCoffinLidColSurfaceType,
    gBotwCoffinLidColCamDataList,
    0, NULL
};

Vtx object_hakach_objectsVtx_0008A0[] = {
#include "assets/objects/object_hakach_objects/object_hakach_objectsVtx_0008A0.vtx.inc"
};

Gfx gBotwBombSpotDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gBotwTex_0050F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gBotwTex_0058F0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 160),
    gsSPVertex(object_hakach_objectsVtx_0008A0, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 2, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 6, 8, 0),
    gsSP2Triangles(6, 5, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 10, 9, 0, 10, 2, 9, 0),
    gsSP2Triangles(8, 5, 10, 0, 7, 9, 1, 0),
    gsSP1Triangle(9, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gBotwTex_0058F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&object_hakach_objectsVtx_0008A0[11], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 6, 2, 0, 3, 7, 4, 0),
    gsSP2Triangles(8, 7, 3, 0, 9, 8, 3, 0),
    gsSP2Triangles(2, 10, 11, 0, 2, 6, 10, 0),
    gsSPEndDisplayList(),
};

CamData gBotwBombSpotColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gBotwBombSpotColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gBotwBombSpotColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x727C, 0x393E, 0xFF51},
    {0x0000, 0x0002, 0x0001, 0x0003, 0x0000, 0x7A99, 0x24C8, 0xFF79},
    {0x0000, 0x0002, 0x0003, 0x0004, 0xFB56, 0x7B67, 0x21A8, 0xFF69},
    {0x0000, 0x0005, 0x0004, 0x0003, 0x2CCD, 0x7779, 0xF5E0, 0xFF42},
    {0x0000, 0x0005, 0x0003, 0x0001, 0x324F, 0x759C, 0x0483, 0xFF73},
    {0x0000, 0x0005, 0x0001, 0x0006, 0x3607, 0x73C7, 0x07B8, 0xFF67},
    {0x0000, 0x0000, 0x0006, 0x0001, 0x0F9D, 0x6813, 0x48DA, 0xFF1D},
};

Vec3s gBotwBombSpotColVertices[] = {
    {   -605,   -240,    871 },
    {    195,     60,    271 },
    {   -605,     60,    271 },
    {   -172,    240,   -329 },
    {   -605,    360,   -829 },
    {    995,   -240,   -829 },
    {    795,   -240,    571 },
};

CollisionHeader gBotwBombSpotCol = { 
    { -605, -240, -829 },
    { 995, 360, 871 },
    7, gBotwBombSpotColVertices,
    7, gBotwBombSpotColPolygons,
    gBotwBombSpotColSurfaceType,
    gBotwBombSpotColCamDataList,
    0, NULL
};

u8 object_hakach_objects_possiblePadding_000C58[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_hakach_objectsVtx_000C60[] = {
#include "assets/objects/object_hakach_objects/object_hakach_objectsVtx_000C60.vtx.inc"
};

Gfx gBotwFakeWallsAndFloorsDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gBotwTex_0030F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gBotwTex_0048F0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPVertex(object_hakach_objectsVtx_000C60, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hakach_objectsVtx_000C60[4], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gBotwTex_0040F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gBotwTex_0048F0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 3),
    gsSPVertex(&object_hakach_objectsVtx_000C60[24], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hakach_objectsVtx_000C60[28], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPEndDisplayList(),
};

Gfx gBotwBloodSplatterDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gBotwBloodSplatterTex, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 204),
    gsSPVertex(&object_hakach_objectsVtx_000C60[60], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

CamData gBotw1ColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gBotw1ColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gBotw1ColPolygons[] = {
    {0x0000, 0xC000, 0x0001, 0x0002, 0x7FFF, 0x0000, 0x0000, 0x1C20},
    {0x0000, 0xC000, 0x0002, 0x0003, 0x7FFF, 0x0000, 0x0000, 0x1C20},
    {0x0000, 0xC004, 0x0005, 0x0006, 0x0000, 0x0000, 0x7FFF, 0xE638},
    {0x0000, 0xC004, 0x0006, 0x0007, 0x0000, 0x0000, 0x7FFF, 0xE638},
    {0x0000, 0xC008, 0x0009, 0x000A, 0x0000, 0x0000, 0x7FFF, 0xEE08},
    {0x0000, 0xC008, 0x000A, 0x000B, 0x0000, 0x0000, 0x7FFF, 0xEE08},
    {0x0000, 0xC00C, 0x000D, 0x000E, 0x7FFF, 0x0000, 0x0000, 0xEA20},
    {0x0000, 0xC00C, 0x000E, 0x000F, 0x7FFF, 0x0000, 0x0000, 0xEA20},
    {0x0000, 0xC010, 0x0011, 0x0012, 0x7FFF, 0x0000, 0x0000, 0xEA20},
    {0x0000, 0xC010, 0x0012, 0x0013, 0x7FFF, 0x0000, 0x0000, 0xEA20},
    {0x0000, 0xC014, 0x0015, 0x0016, 0x8001, 0x0000, 0x0000, 0xEBB0},
    {0x0000, 0xC014, 0x0016, 0x0017, 0x8001, 0x0000, 0x0000, 0xEBB0},
    {0x0000, 0xC018, 0x0019, 0x001A, 0x0000, 0x0000, 0x8001, 0xE958},
    {0x0000, 0xC018, 0x001A, 0x001B, 0x0000, 0x0000, 0x8001, 0xE958},
    {0x0000, 0xC01C, 0x001D, 0x001E, 0x7FFF, 0x0000, 0x0000, 0x12C0},
    {0x0000, 0xC01C, 0x001E, 0x001F, 0x7FFF, 0x0000, 0x0000, 0x12C0},
    {0x0000, 0xC020, 0x0021, 0x0022, 0x0000, 0x0000, 0x8001, 0x2C88},
    {0x0000, 0xC020, 0x0022, 0x0023, 0x0000, 0x0000, 0x8001, 0x2C88},
    {0x0000, 0xC024, 0x0025, 0x0026, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0xC024, 0x0026, 0x0027, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0xC028, 0x0029, 0x002A, 0x0000, 0x0000, 0x7FFF, 0xD1E8},
    {0x0000, 0xC028, 0x002A, 0x002B, 0x0000, 0x0000, 0x7FFF, 0xD1E8},
    {0x0000, 0xC02C, 0x002D, 0x002E, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0xC02C, 0x002E, 0x002F, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0xC030, 0x0031, 0x0032, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0xC030, 0x0032, 0x0033, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0xC034, 0x0035, 0x0036, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0xC034, 0x0036, 0x0037, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0xC038, 0x0039, 0x003A, 0x8001, 0x0000, 0x0000, 0xE890},
    {0x0000, 0xC038, 0x003A, 0x003B, 0x8001, 0x0000, 0x0000, 0xE890},
    {0x0000, 0xC03C, 0x003D, 0x003E, 0x8001, 0x0000, 0x0000, 0x14B4},
    {0x0000, 0xC03C, 0x003E, 0x003F, 0x8001, 0x0000, 0x0000, 0x14B4},
    {0x0000, 0xC040, 0x0041, 0x0042, 0x8001, 0x0000, 0x0000, 0x14B4},
    {0x0000, 0xC040, 0x0042, 0x0043, 0x8001, 0x0000, 0x0000, 0x14B4},
    {0x0000, 0xC044, 0x0045, 0x0046, 0x8001, 0x0000, 0x0000, 0xEC14},
    {0x0000, 0xC044, 0x0046, 0x0047, 0x8001, 0x0000, 0x0000, 0xEC14},
    {0x0000, 0xC048, 0x0049, 0x004A, 0x8001, 0x0000, 0x0000, 0xE2B4},
    {0x0000, 0xC048, 0x004A, 0x004B, 0x8001, 0x0000, 0x0000, 0xE2B4},
    {0x0000, 0xC04C, 0x004D, 0x004E, 0x7FFF, 0x0000, 0x0000, 0x1324},
    {0x0000, 0xC04C, 0x004E, 0x004F, 0x7FFF, 0x0000, 0x0000, 0x1324},
    {0x0000, 0xC050, 0x0051, 0x0052, 0x7FFF, 0x0000, 0x0000, 0x1644},
    {0x0000, 0xC050, 0x0052, 0x0053, 0x7FFF, 0x0000, 0x0000, 0x1644},
    {0x0000, 0xC054, 0x0055, 0x0056, 0x0000, 0x0000, 0x8001, 0x10CC},
    {0x0000, 0xC054, 0x0056, 0x0057, 0x0000, 0x0000, 0x8001, 0x10CC},
    {0x0000, 0xC058, 0x0059, 0x005A, 0x0000, 0x0000, 0x8001, 0x189C},
    {0x0000, 0xC058, 0x005A, 0x005B, 0x0000, 0x0000, 0x8001, 0x189C},
    {0x0000, 0xC05C, 0x005D, 0x005E, 0x0000, 0x0000, 0x7FFF, 0x157C},
    {0x0000, 0xC05C, 0x005E, 0x005F, 0x0000, 0x0000, 0x7FFF, 0x157C},
};

Vec3s gBotw1ColVertices[] = {
    {  -7200,      0,   8600 },
    {  -7200,      0,   6600 },
    {  -7200,   2000,   6600 },
    {  -7200,   2000,   8600 },
    {  -3800,   1200,   6600 },
    {  -5000,   1200,   6600 },
    {  -5000,      0,   6600 },
    {  -3800,      0,   6600 },
    {    600,   2000,   4600 },
    {   -600,   2000,   4600 },
    {   -600,      0,   4600 },
    {    600,      0,   4600 },
    {   5600,      0,   6200 },
    {   5600,      0,   5000 },
    {   5600,   1200,   5000 },
    {   5600,   1200,   6200 },
    {   5600,   2000,   -600 },
    {   5600,   2000,    600 },
    {   5600,      0,    600 },
    {   5600,      0,   -600 },
    {  -5200,      0,    600 },
    {  -5200,   2000,    600 },
    {  -5200,   2000,   -600 },
    {  -5200,      0,   -600 },
    {   -600,      0,  -5800 },
    {   -600,   2000,  -5800 },
    {    600,   2000,  -5800 },
    {    600,      0,  -5800 },
    {  -4800,   1000,   4200 },
    {  -4800,      0,   4200 },
    {  -4800,      0,   3000 },
    {  -4800,   1000,   3000 },
    {   -300,    800,  11400 },
    {    300,    800,  11400 },
    {    300,      0,  11400 },
    {   -300,      0,  11400 },
    {   6800,      0,  -8200 },
    {   6000,      0,  -8200 },
    {   6000,      0,  -7600 },
    {   6800,      0,  -7600 },
    {   -300,    800,  11800 },
    {   -300,      0,  11800 },
    {    300,      0,  11800 },
    {    300,    800,  11800 },
    {   -400,      0,   -400 },
    {   -400,      0,    400 },
    {    400,      0,    400 },
    {    400,      0,   -400 },
    {  -2500,      0,   2600 },
    {  -2500,      0,   1400 },
    {  -3700,      0,   1400 },
    {  -3700,      0,   2600 },
    {  -8400,      0,  -8200 },
    {  -9600,      0,  -8200 },
    {  -9600,      0,  -7000 },
    {  -8400,      0,  -7000 },
    {  -6000,   1000,   3000 },
    {  -6000,      0,   3000 },
    {  -6000,      0,   4200 },
    {  -6000,   1000,   4200 },
    {   5300,      0,   -600 },
    {   5300,      0,    600 },
    {   5300,   2000,    600 },
    {   5300,   2000,   -600 },
    {   5300,   1200,   6200 },
    {   5300,   1200,   5000 },
    {   5300,      0,   5000 },
    {   5300,      0,   6200 },
    {  -5100,   1000,   3000 },
    {  -5100,      0,   3000 },
    {  -5100,      0,   4200 },
    {  -5100,   1000,   4200 },
    {  -7500,   2000,   8600 },
    {  -7500,   2000,   6600 },
    {  -7500,      0,   6600 },
    {  -7500,      0,   8600 },
    {  -4900,      0,   -600 },
    {  -4900,   2000,   -600 },
    {  -4900,   2000,    600 },
    {  -4900,      0,    600 },
    {  -5700,   1000,   4200 },
    {  -5700,      0,   4200 },
    {  -5700,      0,   3000 },
    {  -5700,   1000,   3000 },
    {    600,      0,   4300 },
    {   -600,      0,   4300 },
    {   -600,   2000,   4300 },
    {    600,   2000,   4300 },
    {  -3800,      0,   6300 },
    {  -5000,      0,   6300 },
    {  -5000,   1200,   6300 },
    {  -3800,   1200,   6300 },
    {    600,      0,  -5500 },
    {    600,   2000,  -5500 },
    {   -600,   2000,  -5500 },
    {   -600,      0,  -5500 },
};

CollisionHeader gBotw1Col = { 
    { -9600, 0, -8200 },
    { 6800, 2000, 11800 },
    96, gBotw1ColVertices,
    48, gBotw1ColPolygons,
    gBotw1ColSurfaceType,
    gBotw1ColCamDataList,
    0, NULL
};

Vtx object_hakach_objectsVtx_001860[] = {
#include "assets/objects/object_hakach_objects/object_hakach_objectsVtx_001860.vtx.inc"
};

Gfx gBotwThreeFakeFloorsDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gBotwTex_0030F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gBotwTex_0048F0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPVertex(object_hakach_objectsVtx_001860, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

CamData gBotw2ColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gBotw2ColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gBotw2ColPolygons[] = {
    {0x0000, 0xC000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0xC000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0xC004, 0x0005, 0x0006, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0xC004, 0x0006, 0x0007, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0xC008, 0x0009, 0x000A, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0xC008, 0x000A, 0x000B, 0x0000, 0x7FFF, 0x0000, 0x0000},
};

Vec3s gBotw2ColVertices[] = {
    {   1600,      0,  -2000 },
    {      0,      0,  -2000 },
    {      0,      0,   -800 },
    {   1600,      0,   -800 },
    {   -400,      0,   -800 },
    {  -1800,      0,   -800 },
    {  -1800,      0,    600 },
    {   -400,      0,    600 },
    {   1000,      0,   2000 },
    {   1000,      0,   1000 },
    {   -400,      0,   1000 },
    {   -400,      0,   2000 },
};

CollisionHeader gBotw2Col = { 
    { -1800, 0, -2000 },
    { 1600, 0, 2000 },
    12, gBotw2ColVertices,
    6, gBotw2ColPolygons,
    gBotw2ColSurfaceType,
    gBotw2ColCamDataList,
    0, NULL
};

u8 object_hakach_objects_possiblePadding_001AE4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_hakach_objectsVtx_001AF0[] = {
#include "assets/objects/object_hakach_objects/object_hakach_objectsVtx_001AF0.vtx.inc"
};

Gfx gBotwWaterRingDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gBotwWater1Tex, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 13, 14),
    gsDPLoadMultiBlock(gBotwWater2Tex, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 13),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0,
                       COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_hakach_objectsVtx_001AF0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_hakach_objectsVtx_001AF0[32], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 9, 0),
    gsSP2Triangles(13, 11, 9, 0, 14, 13, 9, 0),
    gsSP2Triangles(8, 14, 9, 0, 14, 8, 15, 0),
    gsSP2Triangles(16, 13, 14, 0, 16, 14, 15, 0),
    gsSP2Triangles(11, 13, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 4, 0, 20, 4, 17, 0),
    gsSP1Triangle(20, 17, 19, 0),
    gsSPEndDisplayList(),
};

u8 object_hakach_objects_possiblePadding_001FA8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_hakach_objectsVtx_001FB0[] = {
#include "assets/objects/object_hakach_objects/object_hakach_objectsVtx_001FB0.vtx.inc"
};

Gfx gBotwWaterFallDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gBotwWater1Tex, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 13, 14),
    gsDPLoadMultiBlock(gBotwWater2Tex, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 13),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0,
                       COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_hakach_objectsVtx_001FB0, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPEndDisplayList(),
};

u8 object_hakach_objects_possiblePadding_0020E8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gBotwWater2Tex[] = {
#include "assets/objects/object_hakach_objects/water_2.rgba16.inc.c"
};

u64 gBotwWater1Tex[] = {
#include "assets/objects/object_hakach_objects/water_1.ia16.inc.c"
};

u64 gBotwTex_0030F0[] = {
#include "assets/objects/object_hakach_objects/gBotwTex_0030F0.rgba16.inc.c"
};

u64 gBotwBloodSplatterTex[] = {
#include "assets/objects/object_hakach_objects/blood_splatter.ia16.inc.c"
};

u64 gBotwTex_0040F0[] = {
#include "assets/objects/object_hakach_objects/gBotwTex_0040F0.rgba16.inc.c"
};

u64 gBotwTex_0048F0[] = {
#include "assets/objects/object_hakach_objects/gBotwTex_0048F0.rgba16.inc.c"
};

u64 gBotwTex_0050F0[] = {
#include "assets/objects/object_hakach_objects/gBotwTex_0050F0.rgba16.inc.c"
};

u64 gBotwTex_0058F0[] = {
#include "assets/objects/object_hakach_objects/gBotwTex_0058F0.rgba16.inc.c"
};

u64 gBotwTex_0060F0[] = {
#include "assets/objects/object_hakach_objects/gBotwTex_0060F0.i4.inc.c"
};

u64 object_hakach_objectsTex_0062F0[] = {
#include "assets/objects/object_hakach_objects/object_hakach_objectsTex_0062F0.rgba16.inc.c"
};

