#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_fd.h"

Vtx object_fdVtx_000000[] = {
#include "assets/objects/object_fd/object_fdVtx_000000.vtx.inc"
};

Gfx gVolvagiaPlatformDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_fdTex_000A78, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_fdTLUT_000A58),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_fdVtx_000000, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_fdTex_000658, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_fdTLUT_000438),
    gsSPVertex(&object_fdVtx_000000[16], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 9, 0, 12, 9, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_fdTex_000458, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_fdTLUT_000438),
    gsSPVertex(&object_fdVtx_000000[31], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(0, 3, 1, 0, 1, 4, 2, 0),
    gsSPEndDisplayList(),
};

u64 object_fdTLUT_000438[] = {
#include "assets/objects/object_fd/object_fdTLUT_000438.rgba16.inc.c"
};

u64 object_fdTex_000458[] = {
#include "assets/objects/object_fd/object_fdTex_000458.ci4.inc.c"
};

u64 object_fdTex_000658[] = {
#include "assets/objects/object_fd/object_fdTex_000658.ci4.inc.c"
};

u64 object_fdTLUT_000A58[] = {
#include "assets/objects/object_fd/object_fdTLUT_000A58.rgba16.inc.c"
};

u64 object_fdTex_000A78[] = {
#include "assets/objects/object_fd/object_fdTex_000A78.ci4.inc.c"
};

u8 object_fd_possiblePadding_000C78[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gVolvagiaPlatformColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gVolvagiaPlatformColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gVolvagiaPlatformColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xF830},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xF830},
    {0x0001, 0x0004, 0x0005, 0x0001, 0x0000, 0x0000, 0x7FFF, 0xFCE0},
    {0x0001, 0x0004, 0x0001, 0x0000, 0x0000, 0x0000, 0x7FFF, 0xFCE0},
    {0x0001, 0x0002, 0x0001, 0x0005, 0x7FFF, 0x0000, 0x0000, 0xFCE0},
    {0x0001, 0x0002, 0x0005, 0x0006, 0x7FFF, 0x0000, 0x0000, 0xFCE0},
    {0x0001, 0x0003, 0x0002, 0x0006, 0x0000, 0x0000, 0x8001, 0xFCE0},
    {0x0001, 0x0003, 0x0006, 0x0007, 0x0000, 0x0000, 0x8001, 0xFCE0},
    {0x0001, 0x0000, 0x0003, 0x0007, 0x8001, 0x0000, 0x0000, 0xFCE0},
    {0x0001, 0x0000, 0x0007, 0x0004, 0x8001, 0x0000, 0x0000, 0xFCE0},
};

Vec3s gVolvagiaPlatformColVertices[] = {
    {   -800,   2000,    800 },
    {    800,   2000,    800 },
    {    800,   2000,   -800 },
    {   -800,   2000,   -800 },
    {   -800,      0,    800 },
    {    800,      0,    800 },
    {    800,      0,   -800 },
    {   -800,      0,   -800 },
};

CollisionHeader gVolvagiaPlatformCol = { 
    { -800, 0, -800 },
    { 800, 2000, 800 },
    8, gVolvagiaPlatformColVertices,
    10, gVolvagiaPlatformColPolygons,
    gVolvagiaPlatformColSurfaceType,
    gVolvagiaPlatformColCamDataList,
    0, NULL
};

u8 object_fd_possiblePadding_000D94[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_fdVtx_000DA0[] = {
#include "assets/objects/object_fd/object_fdVtx_000DA0.vtx.inc"
};

Gfx gVolvagiaHeadSkelLimbsLimb_01163CDL_001DB0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fdTex_0040A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_fdTex_0048A8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, 1, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_fdVtx_000DA0, 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 3, 0, 0, 0, 2, 5, 0),
    gsSP2Triangles(4, 3, 6, 0, 0, 3, 1, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 1, 4, 0),
    gsSP2Triangles(2, 1, 7, 0, 8, 2, 7, 0),
    gsSP2Triangles(5, 2, 9, 0, 7, 4, 10, 0),
    gsSP2Triangles(7, 10, 8, 0, 4, 6, 11, 0),
    gsSP2Triangles(9, 2, 8, 0, 11, 10, 4, 0),
    gsSP2Triangles(12, 8, 10, 0, 12, 9, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 12, 11, 13, 0),
    gsSP2Triangles(14, 15, 9, 0, 15, 5, 9, 0),
    gsSP2Triangles(16, 13, 11, 0, 6, 16, 11, 0),
    gsSP2Triangles(14, 9, 12, 0, 6, 17, 16, 0),
    gsSP2Triangles(18, 5, 15, 0, 19, 18, 15, 0),
    gsSP1Triangle(20, 21, 22, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fdTex_0054A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_fdTex_0052A8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                       G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&object_fdVtx_000DA0[23], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(4, 5, 0, 0, 2, 4, 0, 0),
    gsSP2Triangles(0, 6, 1, 0, 7, 6, 0, 0),
    gsSP2Triangles(0, 5, 8, 0, 0, 8, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 7, 0),
    gsSP1Triangle(1, 11, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(0x09000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(object_fdTLUT_0032A8),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&object_fdVtx_000DA0[35], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 0, 5, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(6, 4, 7, 0, 4, 10, 3, 0),
    gsSP2Triangles(4, 6, 10, 0, 11, 9, 12, 0),
    gsSP2Triangles(11, 8, 9, 0, 13, 3, 10, 0),
    gsSP2Triangles(13, 14, 3, 0, 14, 13, 15, 0),
    gsSP2Triangles(13, 11, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 19, 17, 0, 20, 21, 17, 0),
    gsSP2Triangles(21, 18, 17, 0, 22, 23, 19, 0),
    gsSP2Triangles(23, 24, 19, 0, 21, 20, 25, 0),
    gsSP2Triangles(20, 26, 25, 0, 24, 27, 26, 0),
    gsSP2Triangles(27, 25, 26, 0, 24, 23, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 21, 30, 0),
    gsSP2Triangles(21, 25, 30, 0, 25, 31, 30, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaHeadSkelLimbsLimb_011630DL_0020A8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fdTex_0056A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_fdVtx_000DA0[67], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 0, 4, 0, 0, 5, 6, 0),
    gsSP2Triangles(6, 4, 0, 0, 5, 0, 2, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 10, 8, 0),
    gsSP2Triangles(8, 11, 12, 0, 9, 12, 13, 0),
    gsSP2Triangles(12, 9, 8, 0, 11, 8, 10, 0),
    gsSP2Triangles(7, 14, 10, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 17, 16, 0, 15, 19, 16, 0),
    gsSP2Triangles(19, 18, 16, 0, 20, 19, 21, 0),
    gsSP2Triangles(20, 22, 19, 0, 22, 18, 19, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaHeadSkelLimbsLimb_01160CDL_002180[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fdTex_0054A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_fdTex_0052A8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                       G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_fdVtx_000DA0[90], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 3, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 7, 9, 10, 0),
    gsSP1Triangle(7, 8, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fdTex_0040A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_fdTex_0048A8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, 1, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_fdVtx_000DA0[101], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 5, 4, 0),
    gsSP2Triangles(9, 4, 10, 0, 11, 8, 3, 0),
    gsSP2Triangles(6, 8, 11, 0, 5, 6, 11, 0),
    gsSP2Triangles(9, 6, 5, 0, 12, 6, 9, 0),
    gsSP2Triangles(13, 14, 9, 0, 10, 13, 9, 0),
    gsSP2Triangles(14, 12, 9, 0, 12, 15, 6, 0),
    gsSP2Triangles(6, 16, 7, 0, 12, 14, 15, 0),
    gsSP2Triangles(6, 15, 16, 0, 1, 0, 17, 0),
    gsSP2Triangles(18, 13, 19, 0, 16, 2, 20, 0),
    gsSP2Triangles(0, 2, 16, 0, 3, 5, 11, 0),
    gsSP2Triangles(18, 17, 13, 0, 18, 1, 17, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaHeadSkelLimbsLimb_011618DL_002358[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fdTex_0050A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_fdVtx_000DA0[122], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 4, 3, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 2, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(12, 11, 13, 0, 0, 14, 15, 0),
    gsSP2Triangles(8, 9, 15, 0, 0, 15, 1, 0),
    gsSP2Triangles(1, 9, 2, 0, 16, 17, 18, 0),
    gsSP2Triangles(7, 5, 4, 0, 8, 15, 14, 0),
    gsSP2Triangles(19, 18, 17, 0, 19, 16, 18, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaHeadSkelLimbsLimb_011624DL_002420[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fdTex_0050A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_fdVtx_000DA0[142], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 6, 4, 7, 0),
    gsSP2Triangles(8, 0, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 11, 10, 0, 14, 15, 2, 0),
    gsSP2Triangles(14, 8, 9, 0, 1, 14, 2, 0),
    gsSP2Triangles(0, 8, 1, 0, 16, 17, 18, 0),
    gsSP2Triangles(4, 3, 7, 0, 15, 14, 9, 0),
    gsSP2Triangles(17, 16, 19, 0, 16, 18, 19, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaLeftArmSkelLimbsLimb_011480DL_0024E8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fdTex_0040A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_fdTex_0048A8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, 1, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_fdVtx_000DA0[162], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fdTex_0040A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_fdTex_0048A8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, 1, 3),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_fdVtx_000DA0[165], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(2, 4, 0, 0, 4, 5, 6, 0),
    gsSP2Triangles(7, 5, 2, 0, 1, 7, 2, 0),
    gsSP2Triangles(8, 4, 6, 0, 4, 8, 3, 0),
    gsSP2Triangles(0, 4, 3, 0, 5, 7, 6, 0),
    gsSP2Triangles(3, 8, 7, 0, 3, 7, 1, 0),
    gsSP1Triangle(7, 8, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaLeftArmSkelLimbsLimb_01148CDL_002678[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fdTex_0040A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_fdTex_0048A8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, 1, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_fdVtx_000DA0[174], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(1, 0, 4, 0, 4, 5, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 4, 3, 0),
    gsSP2Triangles(3, 6, 5, 0, 1, 5, 7, 0),
    gsSP2Triangles(2, 3, 0, 0, 6, 2, 7, 0),
    gsSP2Triangles(2, 6, 3, 0, 2, 1, 7, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaLeftArmSkelLimbsLimb_011498DL_002770[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fdTex_0040A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_fdTex_0048A8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, 1, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_fdVtx_000DA0[182], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 0, 3, 0),
    gsSP2Triangles(2, 4, 3, 0, 4, 2, 1, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaLeftArmSkelLimbsLimb_0114A4DL_002850[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fdTex_0040A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_fdTex_0048A8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, 1, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_fdVtx_000DA0[187], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP1Triangle(1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fdTex_0050A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_fdVtx_000DA0[191], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP1Triangle(2, 3, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaLeftArmSkelLimbsLimb_0114BCDL_002990[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fdTex_0040A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_fdTex_0048A8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, 1, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_fdVtx_000DA0[195], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP1Triangle(1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fdTex_0050A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_fdVtx_000DA0[199], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP1Triangle(2, 3, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaLeftArmSkelLimbsLimb_0114B0DL_002AD0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fdTex_0040A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_fdTex_0048A8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, 1, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_fdVtx_000DA0[203], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fdTex_0050A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_fdVtx_000DA0[207], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP1Triangle(2, 3, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaRightArmSkelLimbsLimb_011540DL_002C10[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fdTex_0040A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_fdTex_0048A8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, 1, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_fdVtx_000DA0[211], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(3, 5, 4, 0, 4, 0, 2, 0),
    gsSP2Triangles(6, 1, 0, 0, 2, 1, 7, 0),
    gsSP2Triangles(2, 7, 3, 0, 6, 0, 8, 0),
    gsSP2Triangles(5, 8, 0, 0, 5, 0, 4, 0),
    gsSP2Triangles(6, 7, 1, 0, 7, 8, 5, 0),
    gsSP2Triangles(3, 7, 5, 0, 6, 8, 7, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaRightArmSkelLimbsLimb_01154CDL_002D10[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fdTex_0040A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_fdTex_0048A8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, 1, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_fdVtx_000DA0[220], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(3, 2, 1, 0, 1, 5, 3, 0),
    gsSP2Triangles(6, 7, 5, 0, 4, 3, 5, 0),
    gsSP2Triangles(5, 7, 4, 0, 6, 5, 1, 0),
    gsSP2Triangles(2, 4, 0, 0, 6, 0, 7, 0),
    gsSP2Triangles(4, 7, 0, 0, 6, 1, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaRightArmSkelLimbsLimb_011558DL_002E08[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fdTex_0040A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_fdTex_0048A8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, 1, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_fdVtx_000DA0[228], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(3, 4, 0, 0, 1, 0, 4, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaRightArmSkelLimbsLimb_011570DL_002EE8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fdTex_0040A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_fdTex_0048A8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, 1, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_fdVtx_000DA0[233], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fdTex_0050A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_fdVtx_000DA0[237], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP1Triangle(2, 3, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaRightArmSkelLimbsLimb_011564DL_003028[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fdTex_0040A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_fdTex_0048A8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, 1, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_fdVtx_000DA0[241], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fdTex_0050A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_fdVtx_000DA0[245], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP1Triangle(2, 3, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaRightArmSkelLimbsLimb_01157CDL_003168[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fdTex_0040A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_fdTex_0048A8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, 1, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_fdVtx_000DA0[249], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fdTex_0050A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_fdVtx_000DA0[253], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP1Triangle(2, 3, 0, 0),
    gsSPEndDisplayList(),
};

u64 object_fdTLUT_0032A8[] = {
#include "assets/objects/object_fd/object_fdTLUT_0032A8.rgba16.inc.c"
};

u64 gVolvagiaEyeHalfTex[] = {
#include "assets/objects/object_fd/volvagia_eye_half.i8.inc.c"
};

u64 gVolvagiaEyeOpenTex[] = {
#include "assets/objects/object_fd/volvagia_eye_open.i8.inc.c"
};

u64 gVolvagiaEyeClosedTex[] = {
#include "assets/objects/object_fd/volvagia_eye_closed.i8.inc.c"
};

u64 object_fdTex_0040A8[] = {
#include "assets/objects/object_fd/object_fdTex_0040A8.rgba16.inc.c"
};

u64 object_fdTex_0048A8[] = {
#include "assets/objects/object_fd/object_fdTex_0048A8.rgba16.inc.c"
};

u64 object_fdTex_0050A8[] = {
#include "assets/objects/object_fd/object_fdTex_0050A8.rgba16.inc.c"
};

u64 object_fdTex_0052A8[] = {
#include "assets/objects/object_fd/object_fdTex_0052A8.rgba16.inc.c"
};

u64 object_fdTex_0054A8[] = {
#include "assets/objects/object_fd/object_fdTex_0054A8.rgba16.inc.c"
};

u64 object_fdTex_0056A8[] = {
#include "assets/objects/object_fd/object_fdTex_0056A8.rgba16.inc.c"
};

Vtx object_fdVtx_0058A8[] = {
#include "assets/objects/object_fd/object_fdVtx_0058A8.vtx.inc"
};

Gfx gVolvagiaBrokenFaceDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fdTex_005B60, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_fdTex_005F60, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                       G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_fdVtx_0058A8, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 0, 3, 0, 5, 1, 0, 0),
    gsSP2Triangles(2, 6, 3, 0, 7, 1, 8, 0),
    gsSP2Triangles(9, 10, 3, 0, 3, 10, 11, 0),
    gsSP2Triangles(12, 2, 1, 0, 2, 12, 6, 0),
    gsSP2Triangles(6, 9, 3, 0, 1, 7, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fdTex_005D60, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_fdVtx_0058A8[13], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 7, 4, 0),
    gsSP1Triangle(7, 3, 4, 0),
    gsSPEndDisplayList(),
};

u64 object_fdTex_005B60[] = {
#include "assets/objects/object_fd/object_fdTex_005B60.rgba16.inc.c"
};

u64 object_fdTex_005D60[] = {
#include "assets/objects/object_fd/object_fdTex_005D60.rgba16.inc.c"
};

u64 object_fdTex_005F60[] = {
#include "assets/objects/object_fd/object_fdTex_005F60.rgba16.inc.c"
};

s16 sVolvagiaBodyStaticAnimFrameData[] = {
    0x0000, 0x4000, 
};

JointIndex sVolvagiaBodyStaticAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gVolvagiaBodyStaticAnim = { 
    { 100 }, sVolvagiaBodyStaticAnimFrameData,
    sVolvagiaBodyStaticAnimJointIndices, 2
};

u8 object_fd_possiblePadding_0061E8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_fdVtx_0061F0[] = {
#include "assets/objects/object_fd/object_fdVtx_0061F0.vtx.inc"
};

Gfx gVolvagiaBodySeg1DL[] = {
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPLoadTextureBlock(object_fdTex_0040A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_fdTex_0048A8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, 1, 3),
    gsSPDisplayList(0x08000000),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fdVtx_0061F0[345], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 1, 0),
    gsSP2Triangles(10, 11, 9, 0, 12, 13, 7, 0),
    gsSP2Triangles(14, 15, 9, 0, 16, 17, 15, 0),
    gsSP2Triangles(18, 19, 13, 0, 20, 21, 15, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 19, 26, 0),
    gsSP2Triangles(21, 19, 23, 0, 27, 23, 6, 0),
    gsSP2Triangles(28, 24, 23, 0, 29, 30, 1, 0),
    gsSPVertex(&object_fdVtx_0061F0[376], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaBodySeg2DL[] = {
    gsSPVertex(&object_fdVtx_0061F0[310], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 6, 2, 0, 7, 8, 6, 0),
    gsSP2Triangles(9, 1, 6, 0, 10, 5, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 1, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 18, 16, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(19, 18, 26, 0, 27, 5, 25, 0),
    gsSP2Triangles(28, 8, 5, 0, 29, 30, 31, 0),
    gsSP1Triangle(18, 30, 23, 0),
    gsSPVertex(&object_fdVtx_0061F0[342], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_fdVtx_0061F0[294], 16, 7),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_fdVtx_0061F0[287], 7, 0),
    gsSP2Triangles(0, 7, 8, 0, 0, 9, 10, 0),
    gsSP2Triangles(1, 9, 0, 0, 11, 2, 0, 0),
    gsSP2Triangles(12, 1, 3, 0, 13, 9, 1, 0),
    gsSP2Triangles(4, 14, 15, 0, 2, 8, 16, 0),
    gsSP2Triangles(17, 5, 2, 0, 18, 3, 6, 0),
    gsSP2Triangles(19, 20, 3, 0, 21, 22, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaBodySeg3DL[] = {
    gsSPVertex(&object_fdVtx_0061F0[284], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_fdVtx_0061F0[274], 10, 6),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_fdVtx_0061F0[268], 6, 0),
    gsSP2Triangles(0, 6, 1, 0, 6, 0, 7, 0),
    gsSP2Triangles(0, 8, 7, 0, 0, 2, 8, 0),
    gsSP2Triangles(9, 3, 10, 0, 8, 2, 3, 0),
    gsSP2Triangles(11, 3, 4, 0, 12, 13, 5, 0),
    gsSP2Triangles(1, 14, 4, 0, 3, 13, 10, 0),
    gsSP1Triangle(15, 1, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaBodySeg4DL[] = {
    gsSPVertex(&object_fdVtx_0061F0[265], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_fdVtx_0061F0[256], 9, 5),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_fdVtx_0061F0[251], 5, 0),
    gsSP2Triangles(5, 0, 6, 0, 0, 5, 1, 0),
    gsSP2Triangles(0, 7, 6, 0, 0, 2, 7, 0),
    gsSP2Triangles(8, 3, 9, 0, 7, 2, 3, 0),
    gsSP2Triangles(10, 4, 1, 0, 11, 12, 4, 0),
    gsSP2Triangles(3, 12, 9, 0, 3, 4, 12, 0),
    gsSP1Triangle(1, 5, 13, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaBodySeg5DL[] = {
    gsSPVertex(&object_fdVtx_0061F0[248], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_fdVtx_0061F0[238], 10, 5),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_fdVtx_0061F0[233], 5, 0),
    gsSP2Triangles(5, 0, 1, 0, 6, 0, 7, 0),
    gsSP2Triangles(0, 6, 8, 0, 0, 8, 2, 0),
    gsSP2Triangles(9, 3, 10, 0, 7, 1, 3, 0),
    gsSP2Triangles(3, 4, 11, 0, 12, 4, 2, 0),
    gsSP2Triangles(13, 11, 4, 0, 3, 11, 10, 0),
    gsSP1Triangle(2, 8, 14, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaBodySeg6DL[] = {
    gsSPVertex(&object_fdVtx_0061F0[230], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_fdVtx_0061F0[221], 9, 5),
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_fdVtx_0061F0[216], 5, 0),
    gsSP2Triangles(5, 0, 1, 0, 6, 2, 7, 0),
    gsSP2Triangles(5, 1, 2, 0, 3, 8, 2, 0),
    gsSP2Triangles(9, 3, 4, 0, 10, 11, 3, 0),
    gsSP2Triangles(0, 5, 12, 0, 13, 0, 12, 0),
    gsSP2Triangles(0, 13, 4, 0, 11, 7, 2, 0),
    gsSP1Triangle(4, 13, 10, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaBodySeg7DL[] = {
    gsSPVertex(&object_fdVtx_0061F0[213], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_fdVtx_0061F0[204], 9, 6),
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_fdVtx_0061F0[198], 6, 0),
    gsSP2Triangles(6, 0, 7, 0, 8, 1, 0, 0),
    gsSP2Triangles(0, 9, 7, 0, 2, 9, 0, 0),
    gsSP2Triangles(3, 1, 8, 0, 3, 8, 10, 0),
    gsSP2Triangles(2, 4, 11, 0, 12, 9, 5, 0),
    gsSP2Triangles(13, 3, 10, 0, 3, 13, 4, 0),
    gsSP1Triangle(4, 14, 11, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaBodySeg8DL[] = {
    gsSPVertex(&object_fdVtx_0061F0[195], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_fdVtx_0061F0[184], 11, 5),
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_fdVtx_0061F0[179], 5, 0),
    gsSP2Triangles(5, 6, 0, 0, 1, 6, 7, 0),
    gsSP2Triangles(0, 6, 1, 0, 0, 2, 8, 0),
    gsSP2Triangles(9, 3, 1, 0, 10, 1, 7, 0),
    gsSP2Triangles(11, 4, 9, 0, 12, 4, 11, 0),
    gsSP2Triangles(4, 12, 2, 0, 13, 4, 3, 0),
    gsSP1Triangle(14, 15, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaBodySeg9DL[] = {
    gsSPVertex(&object_fdVtx_0061F0[176], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_fdVtx_0061F0[165], 11, 5),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_fdVtx_0061F0[160], 5, 0),
    gsSP2Triangles(5, 0, 6, 0, 7, 8, 1, 0),
    gsSP2Triangles(9, 0, 2, 0, 10, 1, 3, 0),
    gsSP2Triangles(1, 8, 4, 0, 4, 8, 11, 0),
    gsSP2Triangles(6, 2, 4, 0, 12, 0, 5, 0),
    gsSP2Triangles(0, 12, 3, 0, 13, 4, 11, 0),
    gsSP1Triangle(14, 3, 15, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaBodySeg10DL[] = {
    gsSPVertex(&object_fdVtx_0061F0[157], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_fdVtx_0061F0[146], 11, 5),
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_fdVtx_0061F0[141], 5, 0),
    gsSP2Triangles(5, 0, 1, 0, 2, 3, 6, 0),
    gsSP2Triangles(7, 8, 2, 0, 9, 1, 10, 0),
    gsSP2Triangles(4, 11, 12, 0, 13, 4, 0, 0),
    gsSP2Triangles(11, 4, 5, 0, 2, 8, 1, 0),
    gsSP2Triangles(1, 8, 10, 0, 4, 12, 3, 0),
    gsSP1Triangle(14, 15, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaBodySeg11DL[] = {
    gsSPVertex(&object_fdVtx_0061F0[138], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_fdVtx_0061F0[127], 11, 6),
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_fdVtx_0061F0[121], 6, 0),
    gsSP2Triangles(0, 6, 1, 0, 7, 2, 3, 0),
    gsSP2Triangles(1, 6, 8, 0, 4, 9, 10, 0),
    gsSP2Triangles(11, 9, 2, 0, 4, 10, 6, 0),
    gsSP2Triangles(2, 9, 4, 0, 4, 6, 0, 0),
    gsSP2Triangles(12, 1, 13, 0, 14, 5, 1, 0),
    gsSP1Triangle(15, 5, 16, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaBodySeg12DL[] = {
    gsSPVertex(&object_fdVtx_0061F0[118], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_fdVtx_0061F0[106], 12, 5),
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_fdVtx_0061F0[101], 5, 0),
    gsSP2Triangles(5, 6, 0, 0, 1, 7, 2, 0),
    gsSP2Triangles(8, 0, 3, 0, 9, 2, 10, 0),
    gsSP2Triangles(2, 11, 4, 0, 12, 13, 4, 0),
    gsSP2Triangles(14, 3, 4, 0, 15, 0, 6, 0),
    gsSP2Triangles(2, 7, 10, 0, 7, 1, 0, 0),
    gsSP1Triangle(16, 5, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaBodySeg13DL[] = {
    gsSPVertex(&object_fdVtx_0061F0[98], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_fdVtx_0061F0[85], 13, 6),
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_fdVtx_0061F0[79], 6, 0),
    gsSP2Triangles(6, 0, 7, 0, 1, 2, 7, 0),
    gsSP2Triangles(1, 8, 0, 0, 9, 2, 10, 0),
    gsSP2Triangles(11, 3, 4, 0, 2, 12, 10, 0),
    gsSP2Triangles(3, 12, 2, 0, 13, 12, 3, 0),
    gsSP2Triangles(14, 0, 15, 0, 16, 5, 0, 0),
    gsSP1Triangle(17, 5, 18, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaBodySeg14DL[] = {
    gsSPVertex(&object_fdVtx_0061F0[76], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_fdVtx_0061F0[65], 11, 5),
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_fdVtx_0061F0[60], 5, 0),
    gsSP2Triangles(5, 0, 1, 0, 6, 1, 2, 0),
    gsSP2Triangles(2, 7, 6, 0, 8, 0, 6, 0),
    gsSP2Triangles(9, 2, 3, 0, 7, 2, 10, 0),
    gsSP2Triangles(3, 11, 10, 0, 0, 12, 4, 0),
    gsSP2Triangles(0, 13, 12, 0, 4, 14, 3, 0),
    gsSP1Triangle(15, 14, 4, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaBodySeg15DL[] = {
    gsSPVertex(&object_fdVtx_0061F0[52], 8, 6),
    gsSPMatrix(0x0D000340, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_fdVtx_0061F0[46], 6, 0),
    gsSP2Triangles(6, 0, 1, 0, 2, 6, 7, 0),
    gsSP2Triangles(0, 6, 2, 0, 8, 1, 9, 0),
    gsSP2Triangles(10, 1, 3, 0, 9, 1, 11, 0),
    gsSP2Triangles(12, 3, 4, 0, 11, 3, 13, 0),
    gsSP2Triangles(5, 13, 4, 0, 2, 7, 13, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaBodySeg16DL[] = {
    gsSPVertex(&object_fdVtx_0061F0[35], 11, 5),
    gsSPMatrix(0x0D000380, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_fdVtx_0061F0[30], 5, 0),
    gsSP2Triangles(5, 0, 6, 0, 7, 1, 0, 0),
    gsSP2Triangles(2, 8, 9, 0, 3, 8, 2, 0),
    gsSP2Triangles(10, 2, 11, 0, 12, 4, 2, 0),
    gsSP2Triangles(6, 0, 4, 0, 13, 4, 12, 0),
    gsSP2Triangles(14, 3, 7, 0, 15, 3, 1, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaBodySeg17DL[] = {
    gsSPVertex(&object_fdVtx_0061F0[20], 10, 5),
    gsSPMatrix(0x0D0003C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_fdVtx_0061F0[15], 5, 0),
    gsSP2Triangles(0, 1, 5, 0, 0, 5, 6, 0),
    gsSP2Triangles(7, 1, 8, 0, 0, 9, 2, 0),
    gsSP2Triangles(3, 2, 10, 0, 11, 4, 3, 0),
    gsSP2Triangles(3, 10, 11, 0, 12, 1, 4, 0),
    gsSP2Triangles(13, 2, 9, 0, 0, 6, 9, 0),
    gsSP2Triangles(14, 8, 4, 0, 10, 2, 13, 0),
    gsSP1Triangle(4, 11, 14, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaBodySeg18DL[] = {
    gsSPVertex(&object_fdVtx_0061F0[9], 6, 9),
    gsSPMatrix(0x0D000400, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(object_fdVtx_0061F0, 9, 0),
    gsSP2Triangles(0, 1, 9, 0, 1, 2, 9, 0),
    gsSP2Triangles(3, 10, 9, 0, 4, 5, 9, 0),
    gsSP2Triangles(9, 6, 4, 0, 2, 7, 11, 0),
    gsSP2Triangles(11, 9, 2, 0, 12, 7, 6, 0),
    gsSP2Triangles(13, 6, 9, 0, 5, 8, 10, 0),
    gsSP2Triangles(0, 9, 10, 0, 14, 8, 0, 0),
    gsSPEndDisplayList(),
};

u64 gVolvagiaBodyTex[] = {
#include "assets/objects/object_fd/volvagia_body.rgba16.inc.c"
};

Vtx object_fdVtx_009128[] = {
#include "assets/objects/object_fd/object_fdVtx_009128.vtx.inc"
};

Gfx gVolvagiaManeMaterialDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fdTex_009208, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_BLENDPEDECALA, G_CC_PASS2),
    gsDPSetEnvColor(255, 10, 0, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaManeModelDL[] = {
    gsSPVertex(object_fdVtx_009128, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP1Triangle(1, 3, 2, 0),
    gsSPEndDisplayList(),
};

u64 object_fdTex_009208[] = {
#include "assets/objects/object_fd/object_fdTex_009208.i8.inc.c"
};

Vtx object_fdVtx_009308[] = {
#include "assets/objects/object_fd/object_fdVtx_009308.vtx.inc"
};

Gfx gVolvagiaDL_009668[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fdTex_009780, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_fdTex_009980, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_fdVtx_009308, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 6, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 11, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 16, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 30, 27, 31, 0),
    gsSPVertex(&object_fdVtx_009308[32], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 17, 21, 0),
    gsSPEndDisplayList(),
};

u64 object_fdTex_009780[] = {
#include "assets/objects/object_fd/object_fdTex_009780.rgba16.inc.c"
};

u64 object_fdTex_009980[] = {
#include "assets/objects/object_fd/object_fdTex_009980.rgba16.inc.c"
};

Vtx object_fdVtx_009B80[] = {
#include "assets/objects/object_fd/object_fdVtx_009B80.vtx.inc"
};

Gfx gVolvagiaRockDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fdTex_00A050, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_fdVtx_009B80, 32, 0),
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
    gsSPVertex(&object_fdVtx_009B80[31], 27, 0),
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

u64 object_fdTex_00A050[] = {
#include "assets/objects/object_fd/object_fdTex_00A050.rgba16.inc.c"
};

Vtx object_fdVtx_00A850[] = {
#include "assets/objects/object_fd/object_fdVtx_00A850.vtx.inc"
};

Gfx gVolvagiaEmberMaterialDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fdTex_00A918, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR
                         | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0,
                       0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetEnvColor(255, 255, 255, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaEmberModelDL[] = {
    gsSPVertex(object_fdVtx_00A850, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u64 object_fdTex_00A918[] = {
#include "assets/objects/object_fd/object_fdTex_00A918.i8.inc.c"
};

u64 object_fdTex_00AA18[] = {
#include "assets/objects/object_fd/object_fdTex_00AA18.rgba16.inc.c"
};

Vtx object_fdVtx_00B218[] = {
#include "assets/objects/object_fd/object_fdVtx_00B218.vtx.inc"
};

Gfx gVolvagiaRibsDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fdTex_00AA18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA_PRIM, G_CC_PASS2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_fdVtx_00B218, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 4, 0, 2, 0),
    gsSP2Triangles(6, 5, 4, 0, 6, 4, 7, 0),
    gsSP2Triangles(8, 6, 7, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaDustMaterialDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaDustModelDL[] = {
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(object_fdVtx_00B418, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx object_fdVtx_00B418[] = {
#include "assets/objects/object_fd/object_fdVtx_00B418.vtx.inc"
};

u64 object_fdTex_00B458[] = {
#include "assets/objects/object_fd/object_fdTex_00B458.rgba16.inc.c"
};

u64 object_fdTex_00BC58[] = {
#include "assets/objects/object_fd/object_fdTex_00BC58.rgba16.inc.c"
};

u64 object_fdTex_00BE58[] = {
#include "assets/objects/object_fd/object_fdTex_00BE58.rgba16.inc.c"
};

u64 object_fdTex_00C058[] = {
#include "assets/objects/object_fd/object_fdTex_00C058.rgba16.inc.c"
};

Vtx object_fdVtx_00C258[] = {
#include "assets/objects/object_fd/object_fdVtx_00C258.vtx.inc"
};

Gfx gVolvagiaSkullDL[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fdTex_00C058, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 170, 172, 134, 255),
    gsSPVertex(object_fdVtx_00C258, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 2, 1, 5, 0),
    gsSP2Triangles(6, 2, 5, 0, 1, 7, 5, 0),
    gsSP1Triangle(6, 5, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fdTex_00BE58, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_fdVtx_00C258[8], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 2, 3, 0, 2, 6, 0, 0),
    gsSP2Triangles(5, 7, 8, 0, 4, 7, 5, 0),
    gsSP2Triangles(1, 0, 9, 0, 6, 3, 5, 0),
    gsSP2Triangles(10, 0, 11, 0, 11, 0, 6, 0),
    gsSP2Triangles(5, 11, 6, 0, 12, 11, 5, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(17, 19, 18, 0, 20, 21, 13, 0),
    gsSP2Triangles(22, 23, 24, 0, 20, 13, 25, 0),
    gsSP2Triangles(13, 26, 25, 0, 18, 19, 23, 0),
    gsSP2Triangles(22, 18, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 25, 24, 0, 24, 23, 28, 0),
    gsSP2Triangles(24, 28, 27, 0, 29, 30, 31, 0),
    gsSPVertex(&object_fdVtx_00C258[40], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 2, 0, 6, 3, 7, 0),
    gsSP2Triangles(8, 1, 0, 0, 2, 1, 6, 0),
    gsSP2Triangles(1, 9, 6, 0, 10, 9, 1, 0),
    gsSP2Triangles(8, 4, 11, 0, 10, 11, 9, 0),
    gsSP2Triangles(3, 11, 4, 0, 10, 1, 8, 0),
    gsSP2Triangles(8, 11, 10, 0, 9, 11, 3, 0),
    gsSP1Triangle(6, 9, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fdTex_00BC58, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_fdVtx_00C258[52], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 4, 6, 5, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 8, 13, 0),
    gsSP2Triangles(7, 14, 8, 0, 16, 9, 8, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 18, 17, 0),
    gsSP2Triangles(7, 15, 14, 0, 10, 12, 21, 0),
    gsSP2Triangles(21, 12, 22, 0, 22, 12, 11, 0),
    gsSP2Triangles(16, 13, 15, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 26, 24, 0, 27, 23, 25, 0),
    gsSP2Triangles(27, 28, 23, 0, 25, 29, 27, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&object_fdVtx_00C258[83], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 2, 5, 0, 0),
    gsSP2Triangles(5, 6, 0, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 7, 9, 0, 9, 8, 11, 0),
    gsSP2Triangles(10, 9, 11, 0, 12, 8, 7, 0),
    gsSP2Triangles(12, 7, 10, 0, 11, 8, 12, 0),
    gsSP2Triangles(11, 12, 10, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 18, 17, 19, 0),
    gsSP2Triangles(19, 17, 20, 0, 21, 13, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 24, 23, 0),
    gsSP2Triangles(27, 28, 15, 0, 27, 21, 22, 0),
    gsSP2Triangles(14, 27, 15, 0, 13, 21, 14, 0),
    gsSP2Triangles(29, 30, 31, 0, 17, 16, 20, 0),
    gsSP1Triangle(28, 27, 22, 0),
    gsSPVertex(&object_fdVtx_00C258[115], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fdTex_00B458, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_fdVtx_00C258[119], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(4, 7, 8, 0, 4, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 10, 12, 0),
    gsSP2Triangles(14, 13, 12, 0, 15, 14, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 18, 10, 19, 0),
    gsSP2Triangles(16, 18, 19, 0, 20, 19, 10, 0),
    gsSP2Triangles(13, 20, 10, 0, 17, 16, 21, 0),
    gsSP2Triangles(22, 17, 21, 0, 13, 23, 24, 0),
    gsSP2Triangles(20, 13, 24, 0, 25, 21, 24, 0),
    gsSP2Triangles(25, 24, 23, 0, 26, 27, 28, 0),
    gsSP2Triangles(29, 26, 28, 0, 26, 29, 7, 0),
    gsSP2Triangles(26, 7, 30, 0, 27, 2, 1, 0),
    gsSP2Triangles(27, 1, 31, 0, 6, 3, 30, 0),
    gsSP2Triangles(6, 30, 7, 0, 3, 6, 0, 0),
    gsSPEndDisplayList(),
};

Vtx object_fdVtx_00CF60[] = {
#include "assets/objects/object_fd/object_fdVtx_00CF60.vtx.inc"
};

Gfx gVolvagiaJawboneDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fdTex_00BC58, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 195, 191, 155, 255),
    gsSPVertex(object_fdVtx_00CF60, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 1, 5, 0, 4, 5, 6, 0),
    gsSP2Triangles(6, 5, 7, 0, 0, 3, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 14, 0),
    gsSP2Triangles(3, 18, 9, 0, 16, 19, 6, 0),
    gsSP2Triangles(15, 11, 10, 0, 16, 14, 13, 0),
    gsSP2Triangles(12, 3, 9, 0, 16, 6, 17, 0),
    gsSP1Triangle(15, 10, 13, 0),
    gsSPEndDisplayList(),
};

u64 object_fdTex_00D170[] = {
#include "assets/objects/object_fd/object_fdTex_00D170.rgba16.inc.c"
};

Vtx object_fdVtx_00D370[] = {
#include "assets/objects/object_fd/object_fdVtx_00D370.vtx.inc"
};

Gfx gVolvagiaDebrisMaterialDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_fdTex_00D170, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaDebrisModelDL[] = {
    gsSPVertex(object_fdVtx_00D370, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u64 object_fdTex_00D438[] = {
#include "assets/objects/object_fd/object_fdTex_00D438.rgba16.inc.c"
};

Vtx object_fdVtx_00D638[] = {
#include "assets/objects/object_fd/object_fdVtx_00D638.vtx.inc"
};

Gfx gVolvagiaSkullPieceMaterialDL[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_fdTex_00D438, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA_PRIM, G_CC_PASS2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPEndDisplayList(),
};

Gfx gVolvagiaSkullPieceModelDL[] = {
    gsSPVertex(object_fdVtx_00D638, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u64 gVolvagiaBossTitleCardTex[] = {
#include "assets/objects/object_fd/volvagia_boss_title_card.i8.inc.c"
};

StandardLimb gVolvagiaBodySkelLimbsLimb_011300 = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    gVolvagiaBodySeg1DL
};

StandardLimb gVolvagiaBodySkelLimbsLimb_01130C = { 
    { 800, 0, 0 }, 0x02, LIMB_DONE,
    gVolvagiaBodySeg2DL
};

StandardLimb gVolvagiaBodySkelLimbsLimb_011318 = { 
    { 800, 0, 0 }, 0x03, LIMB_DONE,
    gVolvagiaBodySeg3DL
};

StandardLimb gVolvagiaBodySkelLimbsLimb_011324 = { 
    { 800, 0, 0 }, 0x04, LIMB_DONE,
    gVolvagiaBodySeg4DL
};

StandardLimb gVolvagiaBodySkelLimbsLimb_011330 = { 
    { 800, 0, 0 }, 0x05, LIMB_DONE,
    gVolvagiaBodySeg5DL
};

StandardLimb gVolvagiaBodySkelLimbsLimb_01133C = { 
    { 800, 0, 0 }, 0x06, LIMB_DONE,
    gVolvagiaBodySeg6DL
};

StandardLimb gVolvagiaBodySkelLimbsLimb_011348 = { 
    { 800, 0, 0 }, 0x07, LIMB_DONE,
    gVolvagiaBodySeg7DL
};

StandardLimb gVolvagiaBodySkelLimbsLimb_011354 = { 
    { 800, 0, 0 }, 0x08, LIMB_DONE,
    gVolvagiaBodySeg8DL
};

StandardLimb gVolvagiaBodySkelLimbsLimb_011360 = { 
    { 800, 0, 0 }, 0x09, LIMB_DONE,
    gVolvagiaBodySeg9DL
};

StandardLimb gVolvagiaBodySkelLimbsLimb_01136C = { 
    { 800, 0, 0 }, 0x0A, LIMB_DONE,
    gVolvagiaBodySeg10DL
};

StandardLimb gVolvagiaBodySkelLimbsLimb_011378 = { 
    { 800, 0, 0 }, 0x0B, LIMB_DONE,
    gVolvagiaBodySeg11DL
};

StandardLimb gVolvagiaBodySkelLimbsLimb_011384 = { 
    { 800, 0, 0 }, 0x0C, LIMB_DONE,
    gVolvagiaBodySeg12DL
};

StandardLimb gVolvagiaBodySkelLimbsLimb_011390 = { 
    { 800, 0, 0 }, 0x0D, LIMB_DONE,
    gVolvagiaBodySeg13DL
};

StandardLimb gVolvagiaBodySkelLimbsLimb_01139C = { 
    { 800, 0, 0 }, 0x0E, LIMB_DONE,
    gVolvagiaBodySeg14DL
};

StandardLimb gVolvagiaBodySkelLimbsLimb_0113A8 = { 
    { 800, 0, 0 }, 0x0F, LIMB_DONE,
    gVolvagiaBodySeg15DL
};

StandardLimb gVolvagiaBodySkelLimbsLimb_0113B4 = { 
    { 800, 0, 0 }, 0x10, LIMB_DONE,
    gVolvagiaBodySeg16DL
};

StandardLimb gVolvagiaBodySkelLimbsLimb_0113C0 = { 
    { 800, 0, 0 }, 0x11, LIMB_DONE,
    gVolvagiaBodySeg17DL
};

StandardLimb gVolvagiaBodySkelLimbsLimb_0113CC = { 
    { 800, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gVolvagiaBodySeg18DL
};

void* gVolvagiaBodySkelLimbs[] = {
    &gVolvagiaBodySkelLimbsLimb_011300,
    &gVolvagiaBodySkelLimbsLimb_01130C,
    &gVolvagiaBodySkelLimbsLimb_011318,
    &gVolvagiaBodySkelLimbsLimb_011324,
    &gVolvagiaBodySkelLimbsLimb_011330,
    &gVolvagiaBodySkelLimbsLimb_01133C,
    &gVolvagiaBodySkelLimbsLimb_011348,
    &gVolvagiaBodySkelLimbsLimb_011354,
    &gVolvagiaBodySkelLimbsLimb_011360,
    &gVolvagiaBodySkelLimbsLimb_01136C,
    &gVolvagiaBodySkelLimbsLimb_011378,
    &gVolvagiaBodySkelLimbsLimb_011384,
    &gVolvagiaBodySkelLimbsLimb_011390,
    &gVolvagiaBodySkelLimbsLimb_01139C,
    &gVolvagiaBodySkelLimbsLimb_0113A8,
    &gVolvagiaBodySkelLimbsLimb_0113B4,
    &gVolvagiaBodySkelLimbsLimb_0113C0,
    &gVolvagiaBodySkelLimbsLimb_0113CC,
};

FlexSkeletonHeader gVolvagiaBodySkel = { 
    { gVolvagiaBodySkelLimbs, ARRAY_COUNT(gVolvagiaBodySkelLimbs) }, 18
};

u8 object_fd_possiblePadding_01142C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 sVolvagiaLeftArmEmergeAnimFrameData[] = {
    0x0000, 0x2000, 0x4000, 0xE000, 
};

JointIndex sVolvagiaLeftArmEmergeAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0002, 0x0003 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gVolvagiaLeftArmEmergeAnim = { 
    { 2 }, sVolvagiaLeftArmEmergeAnimFrameData,
    sVolvagiaLeftArmEmergeAnimJointIndices, 4
};

u8 object_fd_possiblePadding_011474[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

StandardLimb gVolvagiaLeftArmSkelLimbsLimb_011480 = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    gVolvagiaLeftArmSkelLimbsLimb_011480DL_0024E8
};

StandardLimb gVolvagiaLeftArmSkelLimbsLimb_01148C = { 
    { 7200, 0, 0 }, 0x02, LIMB_DONE,
    gVolvagiaLeftArmSkelLimbsLimb_01148CDL_002678
};

StandardLimb gVolvagiaLeftArmSkelLimbsLimb_011498 = { 
    { 7700, 0, 0 }, 0x03, LIMB_DONE,
    gVolvagiaLeftArmSkelLimbsLimb_011498DL_002770
};

StandardLimb gVolvagiaLeftArmSkelLimbsLimb_0114A4 = { 
    { 2500, 600, 800 }, LIMB_DONE, 0x04,
    gVolvagiaLeftArmSkelLimbsLimb_0114A4DL_002850
};

StandardLimb gVolvagiaLeftArmSkelLimbsLimb_0114B0 = { 
    { 2200, -900, 0 }, LIMB_DONE, 0x05,
    gVolvagiaLeftArmSkelLimbsLimb_0114B0DL_002AD0
};

StandardLimb gVolvagiaLeftArmSkelLimbsLimb_0114BC = { 
    { 2500, 600, -800 }, LIMB_DONE, LIMB_DONE,
    gVolvagiaLeftArmSkelLimbsLimb_0114BCDL_002990
};

void* gVolvagiaLeftArmSkelLimbs[] = {
    &gVolvagiaLeftArmSkelLimbsLimb_011480,
    &gVolvagiaLeftArmSkelLimbsLimb_01148C,
    &gVolvagiaLeftArmSkelLimbsLimb_011498,
    &gVolvagiaLeftArmSkelLimbsLimb_0114A4,
    &gVolvagiaLeftArmSkelLimbsLimb_0114B0,
    &gVolvagiaLeftArmSkelLimbsLimb_0114BC,
};

SkeletonHeader gVolvagiaLeftArmSkel = { 
    gVolvagiaLeftArmSkelLimbs, ARRAY_COUNT(gVolvagiaLeftArmSkelLimbs)
};

u8 object_fd_possiblePadding_0114E8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sVolvagiaRightArmEmergeAnimFrameData[] = {
    0x0000, 0xE000, 0x4000, 0x2000, 
};

JointIndex sVolvagiaRightArmEmergeAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0002, 0x0003 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gVolvagiaRightArmEmergeAnim = { 
    { 30 }, sVolvagiaRightArmEmergeAnimFrameData,
    sVolvagiaRightArmEmergeAnimJointIndices, 4
};

u8 object_fd_possiblePadding_011534[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

StandardLimb gVolvagiaRightArmSkelLimbsLimb_011540 = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    gVolvagiaRightArmSkelLimbsLimb_011540DL_002C10
};

StandardLimb gVolvagiaRightArmSkelLimbsLimb_01154C = { 
    { 7200, 0, 0 }, 0x02, LIMB_DONE,
    gVolvagiaRightArmSkelLimbsLimb_01154CDL_002D10
};

StandardLimb gVolvagiaRightArmSkelLimbsLimb_011558 = { 
    { 7700, 0, 0 }, 0x03, LIMB_DONE,
    gVolvagiaRightArmSkelLimbsLimb_011558DL_002E08
};

StandardLimb gVolvagiaRightArmSkelLimbsLimb_011564 = { 
    { 2500, 600, 800 }, LIMB_DONE, 0x04,
    gVolvagiaRightArmSkelLimbsLimb_011564DL_003028
};

StandardLimb gVolvagiaRightArmSkelLimbsLimb_011570 = { 
    { 2500, 600, -800 }, LIMB_DONE, 0x05,
    gVolvagiaRightArmSkelLimbsLimb_011570DL_002EE8
};

StandardLimb gVolvagiaRightArmSkelLimbsLimb_01157C = { 
    { 2200, -900, 0 }, LIMB_DONE, LIMB_DONE,
    gVolvagiaRightArmSkelLimbsLimb_01157CDL_003168
};

void* gVolvagiaRightArmSkelLimbs[] = {
    &gVolvagiaRightArmSkelLimbsLimb_011540,
    &gVolvagiaRightArmSkelLimbsLimb_01154C,
    &gVolvagiaRightArmSkelLimbsLimb_011558,
    &gVolvagiaRightArmSkelLimbsLimb_011564,
    &gVolvagiaRightArmSkelLimbsLimb_011570,
    &gVolvagiaRightArmSkelLimbsLimb_01157C,
};

SkeletonHeader gVolvagiaRightArmSkel = { 
    gVolvagiaRightArmSkelLimbs, ARRAY_COUNT(gVolvagiaRightArmSkelLimbs)
};

u8 object_fd_possiblePadding_0115A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sVolvagiaHeadEmergeAnimFrameData[] = {
    0x0000, 0x4000, 0xC000, 0x0000, 
};

JointIndex sVolvagiaHeadEmergeAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0002, 0x0001 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0002 },
    { 0x0000, 0x0000, 0x0002 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gVolvagiaHeadEmergeAnim = { 
    { 2 }, sVolvagiaHeadEmergeAnimFrameData,
    sVolvagiaHeadEmergeAnimJointIndices, 3
};

u8 object_fd_possiblePadding_0115F4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

StandardLimb gVolvagiaHeadSkelLimbsLimb_011600 = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gVolvagiaHeadSkelLimbsLimb_01160C = { 
    { 3000, -200, 0 }, LIMB_DONE, 0x02,
    gVolvagiaHeadSkelLimbsLimb_01160CDL_002180
};

StandardLimb gVolvagiaHeadSkelLimbsLimb_011618 = { 
    { 3800, -2100, 700 }, LIMB_DONE, 0x03,
    gVolvagiaHeadSkelLimbsLimb_011618DL_002358
};

StandardLimb gVolvagiaHeadSkelLimbsLimb_011624 = { 
    { 3800, -2100, -700 }, LIMB_DONE, 0x04,
    gVolvagiaHeadSkelLimbsLimb_011624DL_002420
};

StandardLimb gVolvagiaHeadSkelLimbsLimb_011630 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x05,
    gVolvagiaHeadSkelLimbsLimb_011630DL_0020A8
};

StandardLimb gVolvagiaHeadSkelLimbsLimb_01163C = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gVolvagiaHeadSkelLimbsLimb_01163CDL_001DB0
};

void* gVolvagiaHeadSkelLimbs[] = {
    &gVolvagiaHeadSkelLimbsLimb_011600,
    &gVolvagiaHeadSkelLimbsLimb_01160C,
    &gVolvagiaHeadSkelLimbsLimb_011618,
    &gVolvagiaHeadSkelLimbsLimb_011624,
    &gVolvagiaHeadSkelLimbsLimb_011630,
    &gVolvagiaHeadSkelLimbsLimb_01163C,
};

SkeletonHeader gVolvagiaHeadSkel = { 
    gVolvagiaHeadSkelLimbs, ARRAY_COUNT(gVolvagiaHeadSkelLimbs)
};

