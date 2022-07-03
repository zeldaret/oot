#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "bdan_room_15.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "bdan_scene.h"
#include "bdan_room_0.h"
#include "bdan_room_1.h"
#include "bdan_room_2.h"
#include "bdan_room_3.h"
#include "bdan_room_4.h"
#include "bdan_room_5.h"
#include "bdan_room_6.h"
#include "bdan_room_7.h"
#include "bdan_room_8.h"
#include "bdan_room_9.h"
#include "bdan_room_10.h"
#include "bdan_room_11.h"
#include "bdan_room_12.h"
#include "bdan_room_13.h"
#include "bdan_room_14.h"

SceneCmd bdan_room_15Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(bdan_room_15AlternateHeaders0x000040),
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&bdan_room_15PolygonType0_000060),
    SCENE_CMD_OBJECT_LIST(8, bdan_room_15ObjectList_000050),
    SCENE_CMD_END(),
};

SceneCmd* bdan_room_15AlternateHeaders0x000040[] = {
    NULL,
    NULL,
    NULL,
    bdan_room_15Set_000080,
};

s16 bdan_room_15ObjectList_000050[] = {
    OBJECT_BDAN_OBJECTS,
    OBJECT_RU1,
    OBJECT_OKUTA,
    OBJECT_BUBBLE,
    OBJECT_BL,
    OBJECT_VALI,
    OBJECT_EI,
    OBJECT_BROB,
};

PolygonType0 bdan_room_15PolygonType0_000060 = { 
    0, 1,
    bdan_room_15PolygonDlist_00006C,
    bdan_room_15PolygonDlist_00006C + ARRAY_COUNTU(bdan_room_15PolygonDlist_00006C)
};

PolygonDlist bdan_room_15PolygonDlist_00006C[1] = {
    { bdan_room_15DL_002688, NULL },
};

s32 bdan_room_15_terminatorMaybe_000074 = { 0x01000000 };

u8 bdan_room_15_possiblePadding_000078[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd bdan_room_15Set_000080[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&bdan_room_15PolygonType0_000060),
    SCENE_CMD_OBJECT_LIST(2, bdan_room_15ObjectList_0000B8),
    SCENE_CMD_END(),
};

s16 bdan_room_15ObjectList_0000B8[] = {
    OBJECT_BDAN_OBJECTS,
    OBJECT_RU1,
};

Vtx bdan_room_15Vtx_0000C0[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_15Vtx_0000C0.vtx.inc"
};

Gfx bdan_room_15DL_0006B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_15Vtx_0000C0[87], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(bdan_room_15Vtx_0000C0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 3, 4, 0),
    gsSP2Triangles(6, 5, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 8, 6, 9, 0),
    gsSP2Triangles(10, 8, 9, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 11, 7, 0, 12, 1, 0, 0),
    gsSP2Triangles(12, 13, 1, 0, 1, 13, 14, 0),
    gsSP2Triangles(13, 15, 14, 0, 13, 16, 15, 0),
    gsSP2Triangles(16, 13, 12, 0, 17, 16, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(18, 11, 19, 0, 11, 10, 19, 0),
    gsSP2Triangles(19, 10, 20, 0, 10, 9, 20, 0),
    gsSP2Triangles(14, 2, 1, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 22, 25, 0, 26, 27, 28, 0),
    gsSP2Triangles(29, 30, 26, 0, 28, 27, 24, 0),
    gsSP1Triangle(28, 24, 31, 0),
    gsSPVertex(&bdan_room_15Vtx_0000C0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 8, 11, 0, 7, 6, 12, 0),
    gsSP2Triangles(13, 5, 4, 0, 2, 13, 3, 0),
    gsSP2Triangles(14, 1, 0, 0, 15, 16, 14, 0),
    gsSP2Triangles(2, 17, 5, 0, 9, 17, 18, 0),
    gsSP2Triangles(18, 19, 9, 0, 1, 14, 16, 0),
    gsSP2Triangles(12, 6, 8, 0, 13, 2, 5, 0),
    gsSP2Triangles(17, 9, 8, 0, 5, 17, 6, 0),
    gsSP2Triangles(1, 17, 2, 0, 18, 17, 16, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(22, 24, 25, 0, 22, 25, 23, 0),
    gsSP2Triangles(21, 26, 27, 0, 21, 27, 22, 0),
    gsSP2Triangles(27, 28, 24, 0, 27, 24, 22, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&bdan_room_15Vtx_0000C0[64], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 7, 9, 10, 0),
    gsSP2Triangles(7, 10, 8, 0, 6, 11, 12, 0),
    gsSP2Triangles(6, 12, 7, 0, 12, 13, 9, 0),
    gsSP2Triangles(12, 9, 7, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 17, 0, 16, 18, 19, 0),
    gsSP2Triangles(16, 19, 17, 0, 11, 14, 17, 0),
    gsSP2Triangles(11, 17, 12, 0, 17, 19, 13, 0),
    gsSP2Triangles(17, 13, 12, 0, 20, 0, 2, 0),
    gsSP2Triangles(20, 2, 21, 0, 2, 4, 22, 0),
    gsSP1Triangle(2, 22, 21, 0),
    gsSPEndDisplayList(),
};

Vtx bdan_room_15Vtx_000900[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_15Vtx_000900.vtx.inc"
};

Gfx bdan_room_15DL_0010A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_15Vtx_000900[114], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(bdan_room_15Vtx_000900, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 3, 4, 0),
    gsSP2Triangles(6, 2, 7, 0, 7, 2, 8, 0),
    gsSP2Triangles(2, 5, 8, 0, 3, 9, 4, 0),
    gsSP2Triangles(9, 10, 4, 0, 1, 9, 3, 0),
    gsSP2Triangles(1, 11, 9, 0, 12, 8, 13, 0),
    gsSP2Triangles(12, 7, 8, 0, 14, 6, 12, 0),
    gsSP2Triangles(6, 7, 12, 0, 13, 8, 15, 0),
    gsSP2Triangles(8, 16, 15, 0, 8, 17, 16, 0),
    gsSP2Triangles(8, 5, 17, 0, 5, 4, 17, 0),
    gsSP2Triangles(4, 18, 17, 0, 4, 19, 18, 0),
    gsSP2Triangles(4, 10, 19, 0, 20, 6, 21, 0),
    gsSP2Triangles(6, 14, 21, 0, 22, 6, 20, 0),
    gsSP2Triangles(22, 0, 6, 0, 23, 1, 22, 0),
    gsSP2Triangles(1, 0, 22, 0, 11, 1, 24, 0),
    gsSP2Triangles(1, 23, 24, 0, 25, 21, 26, 0),
    gsSP2Triangles(25, 20, 21, 0, 27, 25, 26, 0),
    gsSP2Triangles(28, 22, 25, 0, 22, 20, 25, 0),
    gsSP2Triangles(29, 28, 25, 0, 30, 22, 28, 0),
    gsSP2Triangles(30, 23, 22, 0, 29, 30, 28, 0),
    gsSP2Triangles(23, 30, 24, 0, 30, 31, 24, 0),
    gsSPVertex(&bdan_room_15Vtx_000900[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 5, 7, 0, 6, 3, 5, 0),
    gsSP2Triangles(5, 8, 9, 0, 7, 5, 10, 0),
    gsSP2Triangles(5, 9, 10, 0, 9, 8, 11, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 9, 11, 0),
    gsSP2Triangles(11, 13, 14, 0, 12, 11, 15, 0),
    gsSP2Triangles(11, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(17, 19, 18, 0, 19, 20, 18, 0),
    gsSP2Triangles(21, 18, 22, 0, 18, 23, 22, 0),
    gsSP2Triangles(18, 20, 23, 0, 21, 22, 24, 0),
    gsSP2Triangles(22, 23, 24, 0, 23, 25, 24, 0),
    gsSP2Triangles(24, 26, 27, 0, 24, 15, 26, 0),
    gsSP2Triangles(24, 25, 15, 0, 28, 29, 6, 0),
    gsSP2Triangles(29, 30, 6, 0, 29, 31, 30, 0),
    gsSPVertex(&bdan_room_15Vtx_000900[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 5, 6, 0, 0),
    gsSP2Triangles(6, 3, 0, 0, 6, 4, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 5, 7, 0),
    gsSP2Triangles(6, 8, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 12, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 17, 19, 0, 8, 7, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 9, 8, 20, 0),
    gsSP2Triangles(9, 20, 14, 0, 11, 29, 28, 0),
    gsSP2Triangles(11, 28, 19, 0, 16, 26, 25, 0),
    gsSP2Triangles(16, 25, 30, 0, 31, 21, 23, 0),
    gsSPVertex(&bdan_room_15Vtx_000900[96], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 4, 0, 0, 7, 6, 0),
    gsSP2Triangles(5, 8, 3, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 10, 0, 14, 13, 12, 0),
    gsSP2Triangles(9, 11, 2, 0, 15, 16, 17, 0),
    gsSPEndDisplayList(),
};

Vtx bdan_room_15Vtx_001338[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_15Vtx_001338.vtx.inc"
};

Gfx bdan_room_15DL_001458[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_15Vtx_001338[10], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(bdan_room_15Vtx_001338, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(1, 6, 7, 0, 4, 3, 0, 0),
    gsSP2Triangles(1, 0, 6, 0, 1, 7, 8, 0),
    gsSP2Triangles(5, 4, 9, 0, 2, 1, 8, 0),
    gsSP2Triangles(9, 4, 2, 0, 9, 2, 8, 0),
    gsSP1Triangle(0, 2, 4, 0),
    gsSPEndDisplayList(),
};

Vtx bdan_room_15Vtx_001568[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_15Vtx_001568.vtx.inc"
};

Gfx bdan_room_15DL_001678[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_15Vtx_001568[9], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(bdan_room_15Vtx_001568, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 3, 1, 0, 4, 5, 3, 0),
    gsSP2Triangles(2, 3, 6, 0, 2, 7, 0, 0),
    gsSP2Triangles(8, 4, 0, 0, 5, 4, 8, 0),
    gsSP2Triangles(7, 2, 6, 0, 0, 4, 1, 0),
    gsSPEndDisplayList(),
};

Vtx bdan_room_15Vtx_001780[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_15Vtx_001780.vtx.inc"
};

Gfx bdan_room_15DL_001910[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_15Vtx_001780[17], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(bdan_room_15Vtx_001780, 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(3, 4, 0, 0, 5, 0, 4, 0),
    gsSP2Triangles(6, 4, 3, 0, 6, 3, 2, 0),
    gsSP2Triangles(7, 6, 2, 0, 8, 6, 7, 0),
    gsSP2Triangles(8, 9, 6, 0, 9, 10, 6, 0),
    gsSP2Triangles(10, 11, 6, 0, 11, 12, 4, 0),
    gsSP2Triangles(6, 11, 4, 0, 12, 5, 4, 0),
    gsSP2Triangles(10, 12, 11, 0, 13, 12, 10, 0),
    gsSP2Triangles(1, 14, 2, 0, 7, 2, 14, 0),
    gsSP2Triangles(8, 7, 14, 0, 14, 15, 8, 0),
    gsSP2Triangles(16, 8, 15, 0, 16, 9, 8, 0),
    gsSP2Triangles(16, 10, 9, 0, 13, 10, 16, 0),
    gsSPEndDisplayList(),
};

Vtx bdan_room_15Vtx_001A50[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_15Vtx_001A50.vtx.inc"
};

Gfx bdan_room_15DL_001B60[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_15Vtx_001A50[9], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(bdan_room_15Vtx_001A50, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 3, 1, 0, 0, 2, 5, 0),
    gsSP2Triangles(2, 3, 6, 0, 3, 4, 7, 0),
    gsSP2Triangles(4, 0, 8, 0, 5, 2, 6, 0),
    gsSP2Triangles(4, 8, 7, 0, 0, 4, 1, 0),
    gsSPEndDisplayList(),
};

Vtx bdan_room_15Vtx_001C68[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_15Vtx_001C68.vtx.inc"
};

Gfx bdan_room_15DL_001DF8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_15Vtx_001C68[17], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(bdan_room_15Vtx_001C68, 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 6, 0, 5, 0),
    gsSP2Triangles(6, 1, 0, 0, 6, 7, 1, 0),
    gsSP2Triangles(7, 8, 1, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 12, 10, 0, 3, 11, 4, 0),
    gsSP2Triangles(11, 6, 4, 0, 11, 10, 6, 0),
    gsSP2Triangles(10, 12, 6, 0, 12, 7, 6, 0),
    gsSP2Triangles(12, 8, 7, 0, 13, 5, 2, 0),
    gsSP2Triangles(2, 1, 14, 0, 11, 15, 9, 0),
    gsSP2Triangles(12, 9, 16, 0, 5, 13, 3, 0),
    gsSP2Triangles(11, 3, 15, 0, 12, 16, 8, 0),
    gsSP2Triangles(1, 8, 14, 0, 5, 0, 2, 0),
    gsSPEndDisplayList(),
};

Vtx bdan_room_15Vtx_001F38[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_15Vtx_001F38.vtx.inc"
};

Gfx bdan_room_15DL_002048[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_15Vtx_001F38[9], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(bdan_room_15Vtx_001F38, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(4, 1, 0, 0, 5, 2, 6, 0),
    gsSP2Triangles(4, 7, 8, 0, 2, 5, 3, 0),
    gsSP2Triangles(4, 3, 7, 0, 4, 8, 1, 0),
    gsSP2Triangles(2, 1, 6, 0, 3, 0, 2, 0),
    gsSPEndDisplayList(),
};

Vtx bdan_room_15Vtx_002150[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_15Vtx_002150.vtx.inc"
};

Gfx bdan_room_15DL_002330[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_15Vtx_002150[22], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(bdan_room_15Vtx_002150, 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 6, 7, 5, 0),
    gsSP2Triangles(8, 1, 0, 0, 8, 9, 1, 0),
    gsSP2Triangles(9, 10, 1, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 3, 13, 4, 0),
    gsSP2Triangles(13, 6, 4, 0, 13, 12, 6, 0),
    gsSP2Triangles(16, 15, 8, 0, 15, 9, 8, 0),
    gsSP2Triangles(15, 10, 9, 0, 17, 5, 18, 0),
    gsSP2Triangles(2, 1, 19, 0, 5, 17, 3, 0),
    gsSP2Triangles(13, 3, 20, 0, 15, 21, 10, 0),
    gsSP2Triangles(1, 10, 19, 0, 13, 20, 11, 0),
    gsSP2Triangles(15, 14, 21, 0, 5, 7, 18, 0),
    gsSPEndDisplayList(),
};

Vtx bdan_room_15Vtx_002470[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_15Vtx_002470.vtx.inc"
};

Gfx bdan_room_15DL_002580[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_15Vtx_002470[9], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(bdan_room_15Vtx_002470, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(4, 1, 0, 0, 2, 5, 3, 0),
    gsSP2Triangles(6, 2, 1, 0, 4, 3, 7, 0),
    gsSP2Triangles(1, 4, 8, 0, 5, 2, 6, 0),
    gsSP2Triangles(4, 7, 8, 0, 3, 0, 2, 0),
    gsSPEndDisplayList(),
};

Gfx bdan_room_15DL_002688[] = {
    gsSPDisplayList(bdan_room_15DL_0006B0),
    gsSPDisplayList(bdan_room_15DL_0010A0),
    gsSPDisplayList(bdan_room_15DL_001458),
    gsSPDisplayList(bdan_room_15DL_001678),
    gsSPDisplayList(bdan_room_15DL_001910),
    gsSPDisplayList(bdan_room_15DL_001B60),
    gsSPDisplayList(bdan_room_15DL_001DF8),
    gsSPDisplayList(bdan_room_15DL_002048),
    gsSPDisplayList(bdan_room_15DL_002330),
    gsSPDisplayList(bdan_room_15DL_002580),
    gsSPEndDisplayList(),
};

