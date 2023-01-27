#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_menkuri_objects.h"

u64 gGTGDoorTex[] = {
#include "assets/objects/object_menkuri_objects/gtg_door.i4.inc.c"
};

Vtx object_menkuri_objectsVtx_001000[] = {
#include "assets/objects/object_menkuri_objects/object_menkuri_objectsVtx_001000.vtx.inc"
};

Gfx gGTGDoorDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gGTGDoorTex, G_IM_FMT_I, 64, 128, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP,
                            6, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_menkuri_objectsVtx_001000, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(5, 8, 9, 0, 6, 5, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 3, 0),
    gsSPEndDisplayList(),
};

u64 gGTGFakeWallTex[] = {
#include "assets/objects/object_menkuri_objects/gtg_fake_wall.rgba16.inc.c"
};

Vtx object_menkuri_objectsVtx_002180[] = {
#include "assets/objects/object_menkuri_objects/object_menkuri_objectsVtx_002180.vtx.inc"
};

Gfx gGTGFakeWallDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gGTGFakeWallTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_menkuri_objectsVtx_002180, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(12, 11, 10, 0, 13, 12, 10, 0),
    gsSP2Triangles(14, 13, 10, 0, 15, 14, 10, 0),
    gsSPEndDisplayList(),
};

u8 object_menkuri_objects_possiblePadding_002338[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gGTGFakeCeilingTex[] = {
#include "assets/objects/object_menkuri_objects/gtg_fake_ceiling.rgba16.inc.c"
};

Vtx object_menkuri_objectsVtx_002B40[] = {
#include "assets/objects/object_menkuri_objects/object_menkuri_objectsVtx_002B40.vtx.inc"
};

Gfx gGTGFakeCeilingDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gGTGFakeCeilingTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_menkuri_objectsVtx_002B40, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

u8 object_menkuri_objects_possiblePadding_002C58[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_menkuri_objectsVtx_002C60[] = {
#include "assets/objects/object_menkuri_objects/object_menkuri_objectsVtx_002C60.vtx.inc"
};

Gfx gGTGEyeStatueEyeDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gGTGStatueEyeTex, G_IM_FMT_I, 64, 128, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR |
                            G_TX_CLAMP, 6, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, SHADE, 0, COMBINED, 0, ENVIRONMENT, 0, COMBINED, 0, ENVIRONMENT,
                       0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(object_menkuri_objectsVtx_002C60, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 5, 0),
    gsSP2Triangles(9, 10, 2, 0, 9, 2, 5, 0),
    gsSP2Triangles(10, 11, 3, 0, 10, 3, 2, 0),
    gsSPEndDisplayList(),
};

Vtx object_menkuri_objectsVtx_002DD0[] = {
#include "assets/objects/object_menkuri_objects/object_menkuri_objectsVtx_002DD0.vtx.inc"
};

Gfx gGTGRotatingRingPlatformDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gGTGRotatingRingPlatformInnerCircleTex, G_IM_FMT_I, 64, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                            G_TX_MIRROR | G_TX_WRAP, 6, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_menkuri_objectsVtx_002DD0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_menkuri_objectsVtx_002DD0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gGTGRotatingRingPlatformOuterCircleTex, G_IM_FMT_I, 128, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 7, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_menkuri_objectsVtx_002DD0[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 8, 5, 4, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 11, 0, 14, 11, 10, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 17, 0, 20, 17, 16, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(3, 2, 26, 0, 3, 26, 27, 0),
    gsSP2Triangles(28, 29, 23, 0, 28, 23, 22, 0),
    gsSPVertex(&object_menkuri_objectsVtx_002DD0[94], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 7, 0, 10, 7, 6, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 13, 0, 16, 13, 12, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&object_menkuri_objectsVtx_002DD0[124], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_menkuri_objectsVtx_002DD0[156], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSPEndDisplayList(),
};

CamData gGTGRotatingRingPlatformColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gGTGRotatingRingPlatformColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
    { 0x00200000, 0x000007C2 },
};

CollisionPoly gGTGRotatingRingPlatformColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x0004, 0x0000, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x0004, 0x0003, 0x0005, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x0006, 0x0004, 0x0005, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x0006, 0x0005, 0x0007, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x0008, 0x0006, 0x0007, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x0008, 0x0007, 0x0009, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x000A, 0x0008, 0x0009, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x000A, 0x0009, 0x000B, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x000C, 0x000A, 0x000B, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x000C, 0x000B, 0x000D, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x000E, 0x000C, 0x000D, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x000E, 0x000D, 0x000F, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x0010, 0x000E, 0x000F, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x0010, 0x000F, 0x0011, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x0012, 0x0010, 0x0011, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x0012, 0x0011, 0x0013, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x0014, 0x0012, 0x0013, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x0014, 0x0013, 0x0015, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x0016, 0x0014, 0x0015, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x0016, 0x0015, 0x0017, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x0018, 0x0016, 0x0017, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x0018, 0x0017, 0x0019, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x001A, 0x0018, 0x0019, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x001A, 0x0019, 0x001B, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x001C, 0x001A, 0x001B, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x001C, 0x001B, 0x001D, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x001E, 0x001C, 0x001D, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x001E, 0x001D, 0x001F, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x0001, 0x001E, 0x001F, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x0001, 0x001F, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x0020, 0x0008, 0x000A, 0xB8DC, 0x0000, 0x9599, 0x1041},
    {0x0000, 0x0020, 0x000A, 0x0021, 0xB8DC, 0x0000, 0x9599, 0x1041},
    {0x0000, 0x0022, 0x0006, 0x0008, 0xE708, 0x0000, 0x8276, 0x1041},
    {0x0000, 0x0022, 0x0008, 0x0020, 0xE708, 0x0000, 0x8276, 0x1041},
    {0x0000, 0x0023, 0x0004, 0x0006, 0x18F8, 0x0000, 0x8276, 0x1041},
    {0x0000, 0x0023, 0x0006, 0x0022, 0x18F8, 0x0000, 0x8276, 0x1041},
    {0x0000, 0x0024, 0x0000, 0x0004, 0x4724, 0x0000, 0x9599, 0x1041},
    {0x0000, 0x0024, 0x0004, 0x0023, 0x4724, 0x0000, 0x9599, 0x1041},
    {0x0000, 0x0025, 0x0001, 0x0000, 0x6A67, 0x0000, 0xB8DC, 0x1041},
    {0x0000, 0x0025, 0x0000, 0x0024, 0x6A67, 0x0000, 0xB8DC, 0x1041},
    {0x0000, 0x0026, 0x001E, 0x0001, 0x7D8A, 0x0000, 0xE708, 0x1041},
    {0x0000, 0x0026, 0x0001, 0x0025, 0x7D8A, 0x0000, 0xE708, 0x1041},
    {0x0000, 0x0027, 0x001C, 0x001E, 0x7D8A, 0x0000, 0x18F8, 0x1041},
    {0x0000, 0x0027, 0x001E, 0x0026, 0x7D8A, 0x0000, 0x18F8, 0x1041},
    {0x0000, 0x0028, 0x001A, 0x001C, 0x6A67, 0x0000, 0x4724, 0x1041},
    {0x0000, 0x0028, 0x001C, 0x0027, 0x6A67, 0x0000, 0x4724, 0x1041},
    {0x0000, 0x0021, 0x000A, 0x000C, 0x9599, 0x0000, 0xB8DC, 0x1041},
    {0x0000, 0x0021, 0x000C, 0x0029, 0x9599, 0x0000, 0xB8DC, 0x1041},
    {0x0000, 0x002A, 0x0018, 0x001A, 0x4724, 0x0000, 0x6A67, 0x1041},
    {0x0000, 0x002A, 0x001A, 0x0028, 0x4724, 0x0000, 0x6A67, 0x1041},
    {0x0000, 0x002B, 0x0016, 0x0018, 0x18F8, 0x0000, 0x7D8A, 0x1041},
    {0x0000, 0x002B, 0x0018, 0x002A, 0x18F8, 0x0000, 0x7D8A, 0x1041},
    {0x0000, 0x002C, 0x0014, 0x0016, 0xE708, 0x0000, 0x7D8A, 0x1041},
    {0x0000, 0x002C, 0x0016, 0x002B, 0xE708, 0x0000, 0x7D8A, 0x1041},
    {0x0000, 0x002D, 0x0012, 0x0014, 0xB8DC, 0x0000, 0x6A67, 0x1041},
    {0x0000, 0x002D, 0x0014, 0x002C, 0xB8DC, 0x0000, 0x6A67, 0x1041},
    {0x0000, 0x002E, 0x0010, 0x0012, 0x9599, 0x0000, 0x4724, 0x1041},
    {0x0000, 0x002E, 0x0012, 0x002D, 0x9599, 0x0000, 0x4724, 0x1041},
    {0x0000, 0x002F, 0x000E, 0x0010, 0x8276, 0x0000, 0x18F8, 0x1041},
    {0x0000, 0x002F, 0x0010, 0x002E, 0x8276, 0x0000, 0x18F8, 0x1041},
    {0x0000, 0x0029, 0x000C, 0x000E, 0x8276, 0x0000, 0xE708, 0x1041},
    {0x0000, 0x0029, 0x000E, 0x002F, 0x8276, 0x0000, 0xE708, 0x1041},
    {0x0001, 0x0003, 0x0030, 0x0031, 0xB8DE, 0x0000, 0x6A69, 0xE818},
    {0x0001, 0x0003, 0x0031, 0x0005, 0xB8DE, 0x0000, 0x6A69, 0xE818},
    {0x0001, 0x0005, 0x0031, 0x0032, 0xE708, 0x0000, 0x7D89, 0xE818},
    {0x0001, 0x0005, 0x0032, 0x0007, 0xE708, 0x0000, 0x7D89, 0xE818},
    {0x0001, 0x0007, 0x0032, 0x0033, 0x18F8, 0x0000, 0x7D89, 0xE818},
    {0x0001, 0x0007, 0x0033, 0x0009, 0x18F8, 0x0000, 0x7D89, 0xE818},
    {0x0001, 0x0009, 0x0033, 0x0034, 0x4722, 0x0000, 0x6A69, 0xE818},
    {0x0001, 0x0009, 0x0034, 0x000B, 0x4722, 0x0000, 0x6A69, 0xE818},
    {0x0001, 0x000B, 0x0034, 0x0035, 0x6A69, 0x0000, 0x4722, 0xE818},
    {0x0001, 0x000B, 0x0035, 0x000D, 0x6A69, 0x0000, 0x4722, 0xE818},
    {0x0001, 0x000D, 0x0035, 0x0036, 0x7D89, 0x0000, 0x18F8, 0xE818},
    {0x0001, 0x000D, 0x0036, 0x000F, 0x7D89, 0x0000, 0x18F8, 0xE818},
    {0x0001, 0x000F, 0x0036, 0x0037, 0x7D89, 0x0000, 0xE708, 0xE818},
    {0x0001, 0x000F, 0x0037, 0x0011, 0x7D89, 0x0000, 0xE708, 0xE818},
    {0x0001, 0x0011, 0x0037, 0x0038, 0x6A69, 0x0000, 0xB8DE, 0xE818},
    {0x0001, 0x0011, 0x0038, 0x0013, 0x6A69, 0x0000, 0xB8DE, 0xE818},
    {0x0001, 0x0013, 0x0038, 0x0039, 0x4722, 0x0000, 0x9597, 0xE818},
    {0x0001, 0x0013, 0x0039, 0x0015, 0x4722, 0x0000, 0x9597, 0xE818},
    {0x0001, 0x0015, 0x0039, 0x003A, 0x18F8, 0x0000, 0x8277, 0xE818},
    {0x0001, 0x0015, 0x003A, 0x0017, 0x18F8, 0x0000, 0x8277, 0xE818},
    {0x0001, 0x0017, 0x003A, 0x003B, 0xE708, 0x0000, 0x8277, 0xE818},
    {0x0001, 0x0017, 0x003B, 0x0019, 0xE708, 0x0000, 0x8277, 0xE818},
    {0x0001, 0x0019, 0x003B, 0x003C, 0xB8DE, 0x0000, 0x9597, 0xE818},
    {0x0001, 0x0019, 0x003C, 0x001B, 0xB8DE, 0x0000, 0x9597, 0xE818},
    {0x0001, 0x001B, 0x003C, 0x003D, 0x9597, 0x0000, 0xB8DE, 0xE818},
    {0x0001, 0x001B, 0x003D, 0x001D, 0x9597, 0x0000, 0xB8DE, 0xE818},
    {0x0001, 0x001D, 0x003D, 0x003E, 0x8277, 0x0000, 0xE708, 0xE818},
    {0x0001, 0x001D, 0x003E, 0x001F, 0x8277, 0x0000, 0xE708, 0xE818},
    {0x0001, 0x001F, 0x003E, 0x003F, 0x8277, 0x0000, 0x18F8, 0xE818},
    {0x0001, 0x001F, 0x003F, 0x0002, 0x8277, 0x0000, 0x18F8, 0xE818},
    {0x0001, 0x0002, 0x003F, 0x0030, 0x9597, 0x0000, 0x4722, 0xE818},
    {0x0001, 0x0002, 0x0030, 0x0003, 0x9597, 0x0000, 0x4722, 0xE818},
};

Vec3s gGTGRotatingRingPlatformColVertices[] = {
    {  -3000,    800,   3000 },
    {  -3920,    800,   1624 },
    {  -5765,    800,   2388 },
    {  -4412,    800,   4412 },
    {  -1624,    800,   3920 },
    {  -2388,    800,   5765 },
    {      0,    800,   4243 },
    {      0,    800,   6240 },
    {   1624,    800,   3920 },
    {   2388,    800,   5765 },
    {   3000,    800,   3000 },
    {   4412,    800,   4412 },
    {   3920,    800,   1624 },
    {   5765,    800,   2388 },
    {   4243,    800,      0 },
    {   6240,    800,      0 },
    {   3920,    800,  -1624 },
    {   5765,    800,  -2388 },
    {   3000,    800,  -3000 },
    {   4412,    800,  -4412 },
    {   1624,    800,  -3920 },
    {   2388,    800,  -5765 },
    {      0,    800,  -4243 },
    {      0,    800,  -6240 },
    {  -1624,    800,  -3920 },
    {  -2388,    800,  -5765 },
    {  -3000,    800,  -3000 },
    {  -4412,    800,  -4412 },
    {  -3920,    800,  -1624 },
    {  -5765,    800,  -2388 },
    {  -4243,    800,      0 },
    {  -6240,    800,      0 },
    {   1624,   -800,   3920 },
    {   3000,   -800,   3000 },
    {      0,   -800,   4243 },
    {  -1624,   -800,   3920 },
    {  -3000,   -800,   3000 },
    {  -3920,   -800,   1624 },
    {  -4243,   -800,      0 },
    {  -3920,   -800,  -1624 },
    {  -3000,   -800,  -3000 },
    {   3920,   -800,   1624 },
    {  -1624,   -800,  -3920 },
    {      0,   -800,  -4243 },
    {   1624,   -800,  -3920 },
    {   3000,   -800,  -3000 },
    {   3920,   -800,  -1624 },
    {   4243,   -800,      0 },
    {  -4412,   -800,   4412 },
    {  -2388,   -800,   5765 },
    {      0,   -800,   6240 },
    {   2388,   -800,   5765 },
    {   4412,   -800,   4412 },
    {   5765,   -800,   2388 },
    {   6240,   -800,      0 },
    {   5765,   -800,  -2388 },
    {   4412,   -800,  -4412 },
    {   2388,   -800,  -5765 },
    {      0,   -800,  -6240 },
    {  -2388,   -800,  -5765 },
    {  -4412,   -800,  -4412 },
    {  -5765,   -800,  -2388 },
    {  -6240,   -800,      0 },
    {  -5765,   -800,   2388 },
};

CollisionHeader gGTGRotatingRingPlatformCol = { 
    { -6240, -800, -6240 },
    { 6240, 800, 6240 },
    64, gGTGRotatingRingPlatformColVertices,
    96, gGTGRotatingRingPlatformColPolygons,
    gGTGRotatingRingPlatformColSurfaceType,
    gGTGRotatingRingPlatformColCamDataList,
    0, NULL
};

u8 object_menkuri_objects_possiblePadding_004304[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gGTGRotatingRingPlatformInnerCircleTex[] = {
#include "assets/objects/object_menkuri_objects/gtg_rotating_ring_platform_inner_circle.i4.inc.c"
};

u64 gGTGStatueTex[] = {
#include "assets/objects/object_menkuri_objects/gtg_statue.i4.inc.c"
};

u64 gGTGTex_6310[] = {
#include "assets/objects/object_menkuri_objects/gtg_6310.rgba16.inc.c"
};

u64 gGTGStatueEyeTex[] = {
#include "assets/objects/object_menkuri_objects/gtg_statue_eye.i4.inc.c"
};

u64 gGTGRotatingRingPlatformOuterCircleTex[] = {
#include "assets/objects/object_menkuri_objects/gtg_rotating_ring_platform_outer_circle.i4.inc.c"
};

