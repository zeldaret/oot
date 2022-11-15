#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "hakaana_ouke_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "hakaana_ouke_scene.h"
#include "hakaana_ouke_room_1.h"
#include "hakaana_ouke_room_2.h"

SceneCmd hakaana_ouke_room_0Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(hakaana_ouke_room_0AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(4),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x01, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&hakaana_ouke_room_0PolygonType0_000110),
    SCENE_CMD_OBJECT_LIST(8, hakaana_ouke_room_0ObjectList_00005C),
    SCENE_CMD_ACTOR_LIST(11, hakaana_ouke_room_0ActorList_00006C),
    SCENE_CMD_END(),
};

SceneCmd* hakaana_ouke_room_0AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    hakaana_ouke_room_0Set_000130,
    hakaana_ouke_room_0Set_0001B0,
};

s16 hakaana_ouke_room_0ObjectList_00005C[] = {
    OBJECT_HAKACH_OBJECTS,
    OBJECT_RD,
    OBJECT_SYOKUDAI,
    OBJECT_FIREFLY,
    OBJECT_BOX,
    OBJECT_EFC_FLASH,
    OBJECT_OUKE_HAKA,
    OBJECT_BWALL,
};

ActorEntry hakaana_ouke_room_0ActorList_00006C[] = {
    { ACTOR_EN_FIREFLY,      {     22,    146,   1757 }, {      0, 0XC000,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,      {    281,     81,   1496 }, {      0, 0XC000,      0 }, 0x0003 },
    { ACTOR_EN_WONDER_TALK2, {    292,     36,   1426 }, {      0, 0XC000,    0X1 }, 0x06F8 },
    { ACTOR_EN_FIREFLY,      {     54,     73,   1253 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,      {    -63,     27,   1256 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_OBJ_SYOKUDAI,    {    -56,    120,   1208 }, {      0,      0,      0 }, 0x10A0 },
    { ACTOR_OBJ_SYOKUDAI,    {     55,    120,   1207 }, {      0,      0,      0 }, 0x10A0 },
    { ACTOR_EN_BOX,          {      1,    244,   1473 }, {      0,      0,   0X20 }, 0x8020 },
    { ACTOR_SHOT_SUN,        {   -210,      5,   1476 }, {      0,      0,      0 }, 0xFF40 },
    { ACTOR_EN_WONDER_TALK2, {   -247,     18,   1446 }, {      0, 0X22D8,      0 }, 0x06B9 },
    { ACTOR_BG_BREAKWALL,    {     -1,    120,   1145 }, {      0,      0,      0 }, 0x201C },
};

u8 hakaana_ouke_room_0_possiblePadding_00010C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 hakaana_ouke_room_0PolygonType0_000110 = { 
    0, 1,
    hakaana_ouke_room_0PolygonDlist_00011C,
    hakaana_ouke_room_0PolygonDlist_00011C + ARRAY_COUNTU(hakaana_ouke_room_0PolygonDlist_00011C)
};

PolygonDlist hakaana_ouke_room_0PolygonDlist_00011C[1] = {
    { hakaana_ouke_room_0DL_004F00, hakaana_ouke_room_0DL_007FD8 },
};

s32 hakaana_ouke_room_0_terminatorMaybe_000124 = { 0x01000000 };

u8 hakaana_ouke_room_0_possiblePadding_000128[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd hakaana_ouke_room_0Set_000130[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x01, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&hakaana_ouke_room_0PolygonType0_000110),
    SCENE_CMD_OBJECT_LIST(4, hakaana_ouke_room_0ObjectList_000170),
    SCENE_CMD_ACTOR_LIST(3, hakaana_ouke_room_0ActorList_000178),
    SCENE_CMD_END(),
};

s16 hakaana_ouke_room_0ObjectList_000170[] = {
    OBJECT_OUKE_HAKA,
    OBJECT_BWALL,
    OBJECT_SYOKUDAI,
    OBJECT_FIREFLY,
};

ActorEntry hakaana_ouke_room_0ActorList_000178[] = {
    { ACTOR_OBJ_SYOKUDAI, {    -56,    120,   1208 }, {      0,      0,      0 }, 0x13FF },
    { ACTOR_OBJ_SYOKUDAI, {     55,    120,   1207 }, {      0,      0,      0 }, 0x13FF },
    { ACTOR_BG_BREAKWALL, {     -1,    120,   1145 }, {      0,      0,      0 }, 0x2001 },
};

u8 hakaana_ouke_room_0_possiblePadding_0001A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd hakaana_ouke_room_0Set_0001B0[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x01, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&hakaana_ouke_room_0PolygonType0_000110),
    SCENE_CMD_OBJECT_LIST(4, hakaana_ouke_room_0ObjectList_0001F0),
    SCENE_CMD_ACTOR_LIST(3, hakaana_ouke_room_0ActorList_0001F8),
    SCENE_CMD_END(),
};

s16 hakaana_ouke_room_0ObjectList_0001F0[] = {
    OBJECT_OUKE_HAKA,
    OBJECT_BWALL,
    OBJECT_SYOKUDAI,
    OBJECT_FIREFLY,
};

ActorEntry hakaana_ouke_room_0ActorList_0001F8[] = {
    { ACTOR_OBJ_SYOKUDAI, {    -56,    120,   1208 }, {      0,      0,      0 }, 0x13FF },
    { ACTOR_OBJ_SYOKUDAI, {     55,    120,   1207 }, {      0,      0,      0 }, 0x13FF },
    { ACTOR_BG_BREAKWALL, {     -1,    120,   1145 }, {      0,      0,      0 }, 0x2001 },
};

u8 hakaana_ouke_room_0_possiblePadding_000228[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx hakaana_ouke_room_0Vtx_000230[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_0Vtx_000230.vtx.inc"
};

Gfx hakaana_ouke_room_0DL_000700[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakaana_ouke_room_0Vtx_000230[69], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(hakaana_ouke_sceneTex_0042E0, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(hakaana_ouke_room_0Vtx_000230, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 0, 5, 4, 0),
    gsSP2Triangles(5, 6, 4, 0, 6, 7, 8, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 3, 4, 0),
    gsSP2Triangles(9, 11, 10, 0, 11, 12, 10, 0),
    gsSP2Triangles(12, 3, 10, 0, 12, 1, 3, 0),
    gsSP2Triangles(9, 13, 11, 0, 7, 14, 8, 0),
    gsSP2Triangles(14, 9, 8, 0, 14, 15, 9, 0),
    gsSP2Triangles(15, 16, 9, 0, 14, 17, 15, 0),
    gsSP2Triangles(16, 13, 9, 0, 18, 19, 17, 0),
    gsSP2Triangles(17, 20, 15, 0, 18, 21, 20, 0),
    gsSP2Triangles(21, 22, 20, 0, 22, 23, 20, 0),
    gsSP2Triangles(23, 24, 20, 0, 25, 16, 15, 0),
    gsSP2Triangles(18, 26, 21, 0, 26, 22, 21, 0),
    gsSP2Triangles(23, 13, 16, 0, 26, 27, 22, 0),
    gsSP2Triangles(28, 29, 30, 0, 30, 31, 22, 0),
    gsSP2Triangles(31, 23, 22, 0, 29, 12, 30, 0),
    gsSP2Triangles(12, 11, 30, 0, 11, 31, 30, 0),
    gsSP1Triangle(11, 23, 31, 0),
    gsSPVertex(&hakaana_ouke_room_0Vtx_000230[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 1, 9, 2, 0),
    gsSP2Triangles(9, 3, 2, 0, 9, 4, 3, 0),
    gsSP2Triangles(9, 10, 4, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 11, 0),
    gsSP2Triangles(15, 11, 14, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 22, 20, 0),
    gsSP2Triangles(21, 20, 19, 0, 2, 23, 0, 0),
    gsSP2Triangles(23, 24, 0, 0, 25, 26, 27, 0),
    gsSP2Triangles(26, 28, 27, 0, 29, 30, 31, 0),
    gsSPVertex(&hakaana_ouke_room_0Vtx_000230[64], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP1Triangle(3, 2, 1, 0),
    gsSPEndDisplayList(),
};

Vtx hakaana_ouke_room_0Vtx_0008B8[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_0Vtx_0008B8.vtx.inc"
};

Gfx hakaana_ouke_room_0DL_001298[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakaana_ouke_room_0Vtx_0008B8[150], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(hakaana_ouke_sceneTex_003AE0, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(hakaana_ouke_room_0Vtx_0008B8, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(2, 1, 10, 0, 2, 10, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakaana_ouke_room_0Tex_006F30, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_0008B8[20], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&hakaana_ouke_room_0Vtx_0008B8[36], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(3, 7, 6, 0, 3, 6, 0, 0),
    gsSP2Triangles(1, 5, 4, 0, 1, 4, 2, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(hakaana_ouke_room_0Tex_006730, G_IM_FMT_I, 128, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 7, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&hakaana_ouke_room_0Vtx_0008B8[44], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakaana_ouke_sceneTex_003AE0, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_0008B8[48], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&hakaana_ouke_room_0Vtx_0008B8[60], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 5, 0, 11, 5, 4, 0),
    gsSP2Triangles(5, 10, 8, 0, 5, 8, 6, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(13, 16, 17, 0, 13, 17, 14, 0),
    gsSP2Triangles(16, 18, 19, 0, 16, 19, 17, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(hakaana_ouke_sceneTex_003AE0, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&hakaana_ouke_room_0Vtx_0008B8[80], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 9, 0),
    gsSP2Triangles(13, 9, 12, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 15, 4, 3, 0),
    gsSP2Triangles(15, 3, 16, 0, 17, 1, 0, 0),
    gsSP2Triangles(17, 0, 18, 0, 19, 20, 15, 0),
    gsSP2Triangles(19, 15, 18, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 23, 25, 26, 0),
    gsSP2Triangles(23, 26, 24, 0, 27, 21, 28, 0),
    gsSP2Triangles(27, 28, 29, 0, 28, 26, 30, 0),
    gsSP1Triangle(28, 30, 29, 0),
    gsSPVertex(&hakaana_ouke_room_0Vtx_0008B8[111], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 6, 13, 0, 12, 13, 14, 0),
    gsSP2Triangles(13, 11, 15, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 12, 17, 0, 16, 17, 18, 0),
    gsSP2Triangles(17, 15, 19, 0, 17, 19, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 20, 0, 24, 20, 23, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP1Triangle(30, 29, 28, 0),
    gsSPVertex(&hakaana_ouke_room_0Vtx_0008B8[142], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx hakaana_ouke_room_0Vtx_0016B0[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_0Vtx_0016B0.vtx.inc"
};

Gfx hakaana_ouke_room_0DL_001780[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakaana_ouke_room_0Vtx_0016B0[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(hakaana_ouke_room_0Vtx_0016B0, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsSPEndDisplayList(),
};

Vtx hakaana_ouke_room_0Vtx_001808[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_0Vtx_001808.vtx.inc"
};

Gfx hakaana_ouke_room_0DL_003778[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[495], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002EE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(hakaana_ouke_room_0Vtx_001808, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_0032E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[18], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002EE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[22], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002AE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[28], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002EE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[32], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_0032E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[50], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002EE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[54], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002AE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[60], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_0032E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[72], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 5, 4, 3, 0),
    gsSP2Triangles(5, 3, 2, 0, 0, 4, 6, 0),
    gsSP2Triangles(7, 1, 0, 0, 7, 0, 6, 0),
    gsSP2Triangles(6, 4, 8, 0, 7, 6, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 9, 12, 0, 14, 13, 12, 0),
    gsSP2Triangles(14, 12, 11, 0, 9, 13, 15, 0),
    gsSP2Triangles(16, 10, 9, 0, 16, 9, 15, 0),
    gsSP2Triangles(15, 13, 17, 0, 16, 15, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 23, 25, 24, 0),
    gsSP2Triangles(22, 18, 23, 0, 22, 19, 18, 0),
    gsSP2Triangles(18, 25, 23, 0, 26, 21, 20, 0),
    gsSP2Triangles(26, 25, 21, 0, 25, 18, 21, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002AE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[99], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002EE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[111], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002AE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[120], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002EE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[124], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002AE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[127], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002EE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[131], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_0032E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[137], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002EE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[141], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[171], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002AE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[183], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002EE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[187], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_0032E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[217], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_room_0Tex_005730, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[221], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[225], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[229], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[237], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[241], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[249], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[253], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002AE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[257], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002EE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[277], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0),
    gsSP1Triangle(27, 28, 29, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_room_0Tex_004F30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[307], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002EE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[319], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002AE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[322], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_room_0Tex_005730, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[330], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[334], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[338], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002EE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[342], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[372], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_0032E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[384], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002EE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[388], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002AE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[394], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002EE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[398], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002AE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[401], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_room_0Tex_004F30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[405], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002EE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[409], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002AE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[412], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_room_0Tex_005730, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[420], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[424], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[428], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002EE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[432], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[462], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_0032E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[474], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002EE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[478], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002AE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[484], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002EE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[488], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002AE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_0Vtx_001808[491], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSPEndDisplayList(),
};

Vtx hakaana_ouke_room_0Vtx_0048B8[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_0Vtx_0048B8.vtx.inc"
};

Gfx hakaana_ouke_room_0DL_004CB8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakaana_ouke_room_0Vtx_0048B8[56], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(hakaana_ouke_room_0Tex_006730, G_IM_FMT_I, 128, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 7, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(hakaana_ouke_room_0Vtx_0048B8, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&hakaana_ouke_room_0Vtx_0048B8[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(hakaana_ouke_room_0Tex_006730, G_IM_FMT_I, 128, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 7, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&hakaana_ouke_room_0Vtx_0048B8[12], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 7, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&hakaana_ouke_room_0Vtx_0048B8[28], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 2, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(9, 10, 8, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 11, 15, 12, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(hakaana_ouke_room_0Tex_006730, G_IM_FMT_I, 128, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 7, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&hakaana_ouke_room_0Vtx_0048B8[44], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 5, 4, 0, 8, 4, 9, 0),
    gsSP2Triangles(10, 3, 2, 0, 10, 2, 11, 0),
    gsSPEndDisplayList(),
};

Gfx hakaana_ouke_room_0DL_004F00[] = {
    gsSPDisplayList(hakaana_ouke_room_0DL_000700),
    gsSPDisplayList(hakaana_ouke_room_0DL_001298),
    gsSPDisplayList(hakaana_ouke_room_0DL_001780),
    gsSPDisplayList(hakaana_ouke_room_0DL_003778),
    gsSPDisplayList(hakaana_ouke_room_0DL_004CB8),
    gsSPEndDisplayList(),
};

u64 hakaana_ouke_room_0Tex_004F30[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_0Tex_004F30.rgba16.inc.c"
};

u64 hakaana_ouke_room_0Tex_005730[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_0Tex_005730.rgba16.inc.c"
};

u64 hakaana_ouke_room_0Tex_006730[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_0Tex_006730.i4.inc.c"
};

u64 hakaana_ouke_room_0Tex_006F30[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_0Tex_006F30.i4.inc.c"
};

Vtx hakaana_ouke_room_0Vtx_007730[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_0Vtx_007730.vtx.inc"
};

Gfx hakaana_ouke_room_0DL_0078B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakaana_ouke_room_0Vtx_007730[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(hakaana_ouke_room_0Tex_0097F8, G_IM_FMT_IA, G_IM_SIZ_16b, 128, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_WRAP, 7, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 153),
    gsSPDisplayList(0x08000000),
    gsSPVertex(hakaana_ouke_room_0Vtx_007730, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx hakaana_ouke_room_0Vtx_007988[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_0Vtx_007988.vtx.inc"
};

Gfx hakaana_ouke_room_0DL_007BB8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakaana_ouke_room_0Vtx_007988[27], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(hakaana_ouke_room_0Tex_007FF8, G_IM_FMT_IA, 32, 256, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 5, 8, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(hakaana_ouke_room_0Vtx_007988, 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 3, 5, 6, 0),
    gsSP2Triangles(3, 6, 7, 0, 3, 7, 4, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0),
    gsSP2Triangles(10, 11, 7, 0, 10, 7, 6, 0),
    gsSP2Triangles(8, 12, 13, 0, 8, 13, 9, 0),
    gsSP2Triangles(14, 15, 11, 0, 14, 11, 10, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 15, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(21, 23, 11, 0, 21, 11, 22, 0),
    gsSP2Triangles(23, 24, 7, 0, 23, 7, 11, 0),
    gsSP2Triangles(24, 25, 4, 0, 24, 4, 7, 0),
    gsSP2Triangles(25, 1, 4, 0, 25, 26, 1, 0),
    gsSP1Triangle(26, 2, 1, 0),
    gsSPEndDisplayList(),
};

Vtx hakaana_ouke_room_0Vtx_007CD8[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_0Vtx_007CD8.vtx.inc"
};

Gfx hakaana_ouke_room_0DL_007ED8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakaana_ouke_room_0Vtx_007CD8[24], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(hakaana_ouke_room_0Tex_008FF8, G_IM_FMT_IA, G_IM_SIZ_8b, 8, 256, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 8, G_TX_NOLOD, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_8b, 1, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 8, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_CLAMP, 3, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x001C, 0x03FC),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0,
                       TEXEL1, 0, PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x09000000),
    gsSPVertex(hakaana_ouke_room_0Vtx_007CD8, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Gfx hakaana_ouke_room_0DL_007FD8[] = {
    gsSPDisplayList(hakaana_ouke_room_0DL_0078B0),
    gsSPDisplayList(hakaana_ouke_room_0DL_007BB8),
    gsSPDisplayList(hakaana_ouke_room_0DL_007ED8),
    gsSPEndDisplayList(),
};

u64 hakaana_ouke_room_0Tex_007FF8[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_0Tex_007FF8.ia4.inc.c"
};

u64 hakaana_ouke_room_0Tex_008FF8[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_0Tex_008FF8.ia8.inc.c"
};

u64 hakaana_ouke_room_0Tex_0097F8[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_0Tex_0097F8.ia16.inc.c"
};

