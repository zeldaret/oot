#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ice_doukutu_room_8.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "ice_doukutu_scene.h"
#include "ice_doukutu_room_0.h"
#include "ice_doukutu_room_1.h"
#include "ice_doukutu_room_2.h"
#include "ice_doukutu_room_3.h"
#include "ice_doukutu_room_4.h"
#include "ice_doukutu_room_5.h"
#include "ice_doukutu_room_6.h"
#include "ice_doukutu_room_7.h"
#include "ice_doukutu_room_9.h"
#include "ice_doukutu_room_10.h"
#include "ice_doukutu_room_11.h"

SceneCmd ice_doukutu_room_8Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(ice_doukutu_room_8AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x01, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&ice_doukutu_room_8PolygonType0_0000E0),
    SCENE_CMD_OBJECT_LIST(13, ice_doukutu_room_8ObjectList_000058),
    SCENE_CMD_ACTOR_LIST(6, ice_doukutu_room_8ActorList_000074),
    SCENE_CMD_END(),
};

SceneCmd* ice_doukutu_room_8AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    ice_doukutu_room_8Set_000100,
};

s16 ice_doukutu_room_8ObjectList_000058[] = {
    OBJECT_ICE_OBJECTS,
    OBJECT_TITE,
    OBJECT_GOROIWA,
    OBJECT_FZ,
    OBJECT_DEMO_KEKKAI,
    OBJECT_ST,
    OBJECT_GI_SUTARU,
    OBJECT_TIMEBLOCK,
    OBJECT_EFC_TW,
    OBJECT_WF,
    OBJECT_BOX,
    OBJECT_KA,
    OBJECT_FIREFLY,
};

ActorEntry ice_doukutu_room_8ActorList_000074[] = {
    { ACTOR_EN_FZ,          {   1109,    172,  -1213 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_FZ,          {   1219,    172,  -1076 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_GOROIWA,     {   1470,    707,  -1243 }, {      0,      0,    0X1 }, 0x0D03 },
    { ACTOR_EN_GOROIWA,     {    897,    687,  -1687 }, {      0,      0,    0X1 }, 0x0D04 },
    { ACTOR_EN_WONDER_ITEM, {   1074,    172,   -722 }, {      0,      0,      0 }, 0x3FE7 },
    { ACTOR_EN_WONDER_ITEM, {   1110,    172,   -656 }, {      0,      0,      0 }, 0x3FE7 },
};

u8 ice_doukutu_room_8_possiblePadding_0000D4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 ice_doukutu_room_8PolygonType0_0000E0 = { 
    0, 1,
    ice_doukutu_room_8PolygonDlist_0000EC,
    ice_doukutu_room_8PolygonDlist_0000EC + ARRAY_COUNTU(ice_doukutu_room_8PolygonDlist_0000EC)
};

PolygonDlist ice_doukutu_room_8PolygonDlist_0000EC[1] = {
    { ice_doukutu_room_8DL_0018F8, NULL },
};

s32 ice_doukutu_room_8_terminatorMaybe_0000F4 = { 0x01000000 };

u8 ice_doukutu_room_8_possiblePadding_0000F8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd ice_doukutu_room_8Set_000100[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&ice_doukutu_room_8PolygonType0_0000E0),
    SCENE_CMD_OBJECT_LIST(3, ice_doukutu_room_8ObjectList_000138),
    SCENE_CMD_END(),
};

s16 ice_doukutu_room_8ObjectList_000138[] = {
    OBJECT_ICE_OBJECTS,
    OBJECT_XC,
    OBJECT_GI_MELODY,
};

Vtx ice_doukutu_room_8Vtx_000140[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_8Vtx_000140.vtx.inc"
};

Gfx ice_doukutu_room_8DL_000480[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_8Vtx_000140[44], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_sceneTex_010AC0, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 2, 2),
    gsDPLoadMultiBlock(ice_doukutu_sceneTex_00FCC0, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_8Vtx_000140, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(2, 4, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 8, 9, 0, 8, 10, 9, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 14, 12, 0),
    gsSP2Triangles(14, 15, 12, 0, 11, 16, 17, 0),
    gsSP2Triangles(11, 17, 14, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 14, 0, 19, 15, 14, 0),
    gsSP2Triangles(16, 20, 17, 0, 20, 21, 18, 0),
    gsSP2Triangles(20, 18, 17, 0, 4, 22, 23, 0),
    gsSP2Triangles(4, 23, 5, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 5, 0, 26, 6, 9, 0),
    gsSP2Triangles(26, 9, 27, 0, 9, 10, 27, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP2Triangles(27, 10, 24, 0, 27, 24, 28, 0),
    gsSP2Triangles(7, 30, 8, 0, 7, 31, 30, 0),
    gsSPVertex(&ice_doukutu_room_8Vtx_000140[32], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_8Vtx_000600[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_8Vtx_000600.vtx.inc"
};

Gfx ice_doukutu_room_8DL_001330[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_8Vtx_000600[203], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_sceneTex_0100C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(ice_doukutu_sceneTex_00FCC0, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 15),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_8Vtx_000600, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 3, 0, 4, 6, 5, 0),
    gsSP2Triangles(0, 2, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 9, 0, 8, 13, 14, 0),
    gsSP2Triangles(8, 15, 13, 0, 8, 10, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(16, 19, 20, 0, 16, 20, 21, 0),
    gsSP2Triangles(16, 21, 17, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 24, 25, 0, 22, 26, 27, 0),
    gsSP2Triangles(22, 27, 28, 0, 22, 28, 23, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_8Vtx_000600[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 0, 5, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(6, 10, 9, 0, 6, 11, 10, 0),
    gsSP2Triangles(6, 8, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 16, 0),
    gsSP2Triangles(12, 16, 17, 0, 12, 17, 13, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 21, 19, 0),
    gsSP2Triangles(18, 22, 21, 0, 18, 23, 22, 0),
    gsSP2Triangles(18, 20, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 26, 27, 0, 28, 29, 30, 0),
    gsSP1Triangle(28, 31, 29, 0),
    gsSPVertex(&ice_doukutu_room_8Vtx_000600[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(7, 10, 11, 0, 7, 11, 9, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 13, 11, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(15, 18, 19, 0, 15, 19, 16, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(21, 24, 25, 0, 21, 25, 22, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_8Vtx_000600[96], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(4, 5, 0, 0, 5, 1, 0, 0),
    gsSP2Triangles(5, 6, 1, 0, 1, 7, 2, 0),
    gsSP2Triangles(7, 8, 2, 0, 6, 9, 1, 0),
    gsSP2Triangles(9, 10, 1, 0, 10, 11, 1, 0),
    gsSP2Triangles(11, 7, 1, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 15, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 13, 0, 16, 18, 17, 0),
    gsSP2Triangles(18, 19, 17, 0, 16, 20, 18, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 23, 28, 0, 29, 30, 22, 0),
    gsSP1Triangle(30, 31, 23, 0),
    gsSPVertex(&ice_doukutu_room_8Vtx_000600[128], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 1, 0),
    gsSP2Triangles(4, 6, 5, 0, 6, 7, 5, 0),
    gsSP2Triangles(7, 8, 5, 0, 9, 10, 11, 0),
    gsSP2Triangles(10, 12, 13, 0, 14, 13, 11, 0),
    gsSP2Triangles(13, 15, 11, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 22, 17, 0, 22, 18, 17, 0),
    gsSP2Triangles(23, 24, 25, 0, 24, 26, 25, 0),
    gsSP2Triangles(27, 28, 29, 0, 28, 30, 29, 0),
    gsSP1Triangle(28, 31, 30, 0),
    gsSPVertex(&ice_doukutu_room_8Vtx_000600[160], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(4, 5, 0, 0, 4, 6, 5, 0),
    gsSP2Triangles(6, 7, 5, 0, 5, 1, 0, 0),
    gsSP2Triangles(5, 8, 1, 0, 5, 9, 8, 0),
    gsSP2Triangles(7, 10, 5, 0, 10, 11, 5, 0),
    gsSP2Triangles(10, 12, 11, 0, 11, 9, 5, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 16, 14, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 20, 0, 23, 25, 24, 0),
    gsSP2Triangles(20, 26, 21, 0, 23, 27, 28, 0),
    gsSP2Triangles(23, 28, 29, 0, 27, 21, 30, 0),
    gsSP2Triangles(27, 30, 28, 0, 30, 31, 28, 0),
    gsSP1Triangle(31, 11, 28, 0),
    gsSPVertex(&ice_doukutu_room_8Vtx_000600[192], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 7, 9, 10, 0),
    gsSP1Triangle(7, 10, 8, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_8Vtx_001690[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_8Vtx_001690.vtx.inc"
};

Gfx ice_doukutu_room_8DL_001810[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_8Vtx_001690[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_sceneTex_010EC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_8Vtx_001690, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 4, 6, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 5, 7, 0),
    gsSP2Triangles(9, 8, 10, 0, 10, 11, 7, 0),
    gsSP2Triangles(9, 12, 13, 0, 5, 0, 4, 0),
    gsSP2Triangles(9, 10, 12, 0, 14, 9, 15, 0),
    gsSP1Triangle(9, 13, 15, 0),
    gsSPEndDisplayList(),
};

Gfx ice_doukutu_room_8DL_0018F8[] = {
    gsSPDisplayList(ice_doukutu_room_8DL_000480),
    gsSPDisplayList(ice_doukutu_room_8DL_001330),
    gsSPDisplayList(ice_doukutu_room_8DL_001810),
    gsSPEndDisplayList(),
};

