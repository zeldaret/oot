#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "spot07_room_1.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "spot07_scene.h"
#include "spot07_room_0.h"

SceneCmd spot07_room_1Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(spot07_room_1AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x04, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot07_room_1PolygonType2_000210),
    SCENE_CMD_OBJECT_LIST(7, spot07_room_1ObjectList_000058),
    SCENE_CMD_ACTOR_LIST(26, spot07_room_1ActorList_000068),
    SCENE_CMD_END(),
};

SceneCmd* spot07_room_1AlternateHeaders0x000048[] = {
    NULL,
    spot07_room_1Set_000360,
    NULL,
    spot07_room_1Set_0004C0,
};

s16 spot07_room_1ObjectList_000058[] = {
    OBJECT_SPOT07_OBJECT,
    OBJECT_SYOKUDAI,
    OBJECT_KANBAN,
    OBJECT_TSUBO,
    OBJECT_ZO,
    OBJECT_BOX,
    OBJECT_EFC_FLASH,
};

ActorEntry spot07_room_1ActorList_000068[] = {
    { ACTOR_EN_RIVER_SOUND, {   -189,     17,   -941 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_ZO,          {   -786,     14,   -486 }, {      0, 0XFF4A,      0 }, 0xFFC0 },
    { ACTOR_EN_ZO,          {    841,     24,     39 }, {      0, 0XC7D2,      0 }, 0xFFC1 },
    { ACTOR_EN_ZO,          {    241,    -75,   -384 }, {      0, 0XF8E4,      0 }, 0xFFC2 },
    { ACTOR_EN_ZO,          {   -298,   -200,   -217 }, {      0, 0XDDDE,      0 }, 0xFFC3 },
    { ACTOR_EN_ZO,          {   -589,   -120,   -621 }, {      0, 0X2D83,      0 }, 0xFFC4 },
    { ACTOR_EN_ZO,          {   -936,   -319,   -352 }, {      0, 0XF1C7,      0 }, 0xFFC5 },
    { ACTOR_BG_SPOT07_TAKI, {      0,      0,      0 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_A_OBJ,       {    217,    178,    150 }, {      0, 0X2EEF,      0 }, 0x3B0A },
    { ACTOR_OBJ_MURE,       {    653,    -10,   -485 }, {      0,      0,      0 }, 0x5322 },
    { ACTOR_OBJ_MURE2,      {    462,    -20,   -776 }, {      0,      0,      0 }, 0x0202 },
    { ACTOR_EN_KANBAN,      {   -980,    210,   -210 }, {      0, 0XD1C7,      0 }, 0x030E },
    { ACTOR_EN_KANBAN,      {    477,     60,    318 }, {      0, 0X1C72,      0 }, 0x0333 },
    { ACTOR_EN_DIVING_GAME, {   -149,    857,  -1020 }, {      0, 0XA2D8,      0 }, 0xFFFF },
    { ACTOR_DOOR_ANA,       {   -860,     14,   -470 }, {      0, 0XD555,      0 }, 0x11FF },
    { ACTOR_EN_BOX,         {   -210,      8,  -1079 }, {      0, 0X8000,   0X1F }, 0xB7C0 },
    { ACTOR_OBJ_SYOKUDAI,   {    644,    402,   -157 }, {      0, 0XA71C,      0 }, 0x2000 },
    { ACTOR_OBJ_SYOKUDAI,   {    586,     51,    204 }, {      0,      0, 0XFF4A }, 0x111F },
    { ACTOR_OBJ_SYOKUDAI,   {    552,    -20,   -910 }, {      0,      0, 0XFF4A }, 0x111F },
    { ACTOR_OBJ_SYOKUDAI,   {   -260,      8,  -1030 }, {      0,      0, 0XFF4A }, 0x111F },
    { ACTOR_OBJ_SYOKUDAI,   {   -130,      8,  -1030 }, {      0,      0, 0XFF4A }, 0x111F },
    { ACTOR_OBJ_TSUBO,      {    614,     67,    419 }, {      0,      0,      0 }, 0x4101 },
    { ACTOR_OBJ_TSUBO,      {    289,    114,    415 }, {      0,      0,      0 }, 0x4303 },
    { ACTOR_OBJ_TSUBO,      {    676,     53,    377 }, {      0,      0,      0 }, 0x4503 },
    { ACTOR_OBJ_TSUBO,      {    289,    128,    289 }, {      0,      0,      0 }, 0x470C },
    { ACTOR_OBJ_TSUBO,      {    220,    130,    384 }, {      0,      0,      0 }, 0x490D },
};

u8 spot07_room_1_possiblePadding_000208[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 spot07_room_1PolygonType2_000210 = { 
    2, 20,
    spot07_room_1PolygonDlist2_00021C,
    spot07_room_1PolygonDlist2_00021C + ARRAY_COUNTU(spot07_room_1PolygonDlist2_00021C)
};

PolygonDlist2 spot07_room_1PolygonDlist2_00021C[20] = {
    { {   -199,     80,  -1046 },    174, spot07_room_1DL_004860, NULL },
    { {  -1045,     90,   -294 },    135, spot07_room_1DL_001838, NULL },
    { {    405,    954,  -1751 },   1156, spot07_room_1DL_0068E0, spot07_room_1DL_00BEC0 },
    { {  -1406,    367,    -59 },    251, NULL, spot07_room_1DL_00C0A0 },
    { {   -396,    734,      1 },    834, spot07_room_1DL_0038A0, NULL },
    { {   -376,    500,    131 },    897, spot07_room_1DL_003BE0, NULL },
    { {   -376,    269,      8 },    852, spot07_room_1DL_003EE0, NULL },
    { {   -340,    201,    -82 },    840, spot07_room_1DL_004200, NULL },
    { {   -447,    455,   -833 },    742, spot07_room_1DL_004508, NULL },
    { {   -388,    929,   -772 },    529, spot07_room_1DL_004B98, NULL },
    { {    -20,    329,   -475 },   1158, spot07_room_1DL_004E70, NULL },
    { {    -20,    700,   -465 },   1212, spot07_room_1DL_005160, NULL },
    { {    255,    605,   -511 },    587, spot07_room_1DL_0053D0, NULL },
    { {    153,    478,   -657 },    965, spot07_room_1DL_0035B0, NULL },
    { {   -199,    967,  -1179 },    222, spot07_room_1DL_005D08, NULL },
    { {    585,    406,   -128 },    161, spot07_room_1DL_005AB8, NULL },
    { {   -354,    367,    -46 },   1343, spot07_room_1DL_002710, spot07_room_1DL_00BCE0 },
    { {    585,    596,   -372 },    399, spot07_room_1DL_005798, NULL },
    { {    -20,    338,   -614 },   1306, spot07_room_1DL_0012C0, NULL },
    { {   -169,   -174,   -153 },     95, spot07_room_1DL_007488, NULL },
};

s32 spot07_room_1_terminatorMaybe_00035C = { 0x01000000 };

SceneCmd spot07_room_1Set_000360[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x04, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot07_room_1PolygonType2_000210),
    SCENE_CMD_OBJECT_LIST(7, spot07_room_1ObjectList_0003A0),
    SCENE_CMD_ACTOR_LIST(17, spot07_room_1ActorList_0003B0),
    SCENE_CMD_END(),
};

s16 spot07_room_1ObjectList_0003A0[] = {
    OBJECT_SPOT07_OBJECT,
    OBJECT_ICE_OBJECTS,
    OBJECT_SYOKUDAI,
    OBJECT_KANBAN,
    OBJECT_TSUBO,
    OBJECT_GS,
    OBJECT_ST,
};

ActorEntry spot07_room_1ActorList_0003B0[] = {
    { ACTOR_BG_SPOT07_TAKI, {      0,      0,      0 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_OBJ_TSUBO,      {    220,    130,    384 }, {      0,      0,      0 }, 0x410D },
    { ACTOR_OBJ_TSUBO,      {    289,    114,    415 }, {      0,      0,      0 }, 0x4303 },
    { ACTOR_OBJ_TSUBO,      {    289,    128,    289 }, {      0,      0,      0 }, 0x450C },
    { ACTOR_OBJ_TSUBO,      {    614,     67,    419 }, {      0,      0,      0 }, 0x4701 },
    { ACTOR_OBJ_TSUBO,      {    676,     53,    377 }, {      0,      0,      0 }, 0x4903 },
    { ACTOR_EN_A_OBJ,       {    217,    178,    150 }, {      0, 0X2EEF,      0 }, 0x3B0A },
    { ACTOR_EN_SW,          {    -10,    897,   -909 }, { 0X4000,      0,      0 }, 0xB240 },
    { ACTOR_OBJ_SYOKUDAI,   {    586,     51,    204 }, {      0,      0,      0 }, 0x13FF },
    { ACTOR_OBJ_SYOKUDAI,   {    552,    -20,   -910 }, {      0,      0,      0 }, 0x13FF },
    { ACTOR_EN_WEATHER_TAG, {   -177,      0,  -1061 }, {      0,      0,      0 }, 0x1402 },
    { ACTOR_OBJ_MURE2,      {    462,    -20,   -776 }, {      0,      0,      0 }, 0x0202 },
    { ACTOR_EN_KANBAN,      {   -980,    210,   -210 }, {      0, 0XD1C7,      0 }, 0x030E },
    { ACTOR_EN_KANBAN,      {    477,     60,    318 }, {      0, 0X1C72,      0 }, 0x0333 },
    { ACTOR_OBJECT_KANKYO,  {   -375,      0,   -261 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_BG_ICE_SHELTER, {    483,     53,    214 }, {      0, 0X2000,      0 }, 0x0304 },
    { ACTOR_DOOR_ANA,       {   -860,     14,   -470 }, {      0, 0XD555,      0 }, 0x11FF },
};

SceneCmd spot07_room_1Set_0004C0[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x04, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot07_room_1PolygonType2_000210),
    SCENE_CMD_OBJECT_LIST(3, spot07_room_1ObjectList_000500),
    SCENE_CMD_ACTOR_LIST(1, spot07_room_1ActorList_000508),
    SCENE_CMD_END(),
};

s16 spot07_room_1ObjectList_000500[] = {
    OBJECT_SPOT07_OBJECT,
    OBJECT_SYOKUDAI,
    OBJECT_KANBAN,
};

ActorEntry spot07_room_1ActorList_000508[] = {
    { ACTOR_BG_SPOT07_TAKI, {      0,      0,      0 }, {      0,      0,      0 }, 0x0000 },
};

u8 spot07_room_1_possiblePadding_000518[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx spot07_room_1Vtx_000520[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Vtx_000520.vtx.inc"
};

Gfx spot07_room_1DL_0012C0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_1Vtx_000520[210], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_006398, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_009018, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 15, 15),
    gsDPLoadTLUT_pal16(0, spot07_sceneTLUT_003F70),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 100),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(spot07_room_1Vtx_000520, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(5, 3, 4, 0, 6, 3, 7, 0),
    gsSP2Triangles(6, 8, 3, 0, 9, 8, 6, 0),
    gsSP2Triangles(10, 8, 9, 0, 11, 10, 9, 0),
    gsSP2Triangles(12, 10, 11, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 16, 14, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 13, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 25, 23, 0, 26, 27, 28, 0),
    gsSP1Triangle(29, 30, 28, 0),
    gsSPVertex(&spot07_room_1Vtx_000520[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 5, 7, 0, 9, 10, 8, 0),
    gsSP2Triangles(8, 10, 11, 0, 12, 13, 11, 0),
    gsSP2Triangles(14, 15, 4, 0, 14, 4, 16, 0),
    gsSP2Triangles(4, 6, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 19, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 28, 22, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&spot07_room_1Vtx_000520[63], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(3, 1, 0, 0, 4, 3, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_009418, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_009018, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 15, 15),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&spot07_room_1Vtx_000520[72], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 2, 6, 0, 4, 6, 5, 0),
    gsSP2Triangles(7, 8, 6, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 11, 10, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(16, 18, 17, 0, 18, 16, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsSP2Triangles(23, 24, 22, 0, 23, 25, 24, 0),
    gsSP2Triangles(25, 26, 24, 0, 27, 8, 28, 0),
    gsSP2Triangles(8, 29, 28, 0, 27, 30, 8, 0),
    gsSP1Triangle(26, 31, 24, 0),
    gsSPVertex(&spot07_room_1Vtx_000520[104], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(6, 10, 9, 0, 6, 11, 10, 0),
    gsSP2Triangles(10, 12, 9, 0, 13, 14, 8, 0),
    gsSP2Triangles(14, 6, 8, 0, 14, 15, 6, 0),
    gsSP2Triangles(16, 7, 9, 0, 16, 9, 17, 0),
    gsSP2Triangles(9, 12, 18, 0, 17, 9, 18, 0),
    gsSP2Triangles(18, 12, 19, 0, 12, 10, 19, 0),
    gsSP2Triangles(10, 11, 19, 0, 11, 20, 19, 0),
    gsSP2Triangles(21, 13, 8, 0, 8, 7, 16, 0),
    gsSP2Triangles(21, 8, 16, 0, 1, 0, 22, 0),
    gsSP2Triangles(0, 23, 22, 0, 23, 24, 22, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&spot07_room_1Vtx_000520[134], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 0, 3, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 7, 9, 0),
    gsSP2Triangles(7, 10, 5, 0, 4, 11, 5, 0),
    gsSP2Triangles(11, 7, 5, 0, 12, 13, 14, 0),
    gsSP2Triangles(13, 1, 14, 0, 13, 15, 1, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(20, 21, 17, 0, 15, 22, 16, 0),
    gsSP2Triangles(15, 13, 22, 0, 22, 23, 16, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 27, 25, 0),
    gsSP2Triangles(25, 28, 26, 0, 28, 5, 26, 0),
    gsSP2Triangles(0, 29, 1, 0, 0, 30, 29, 0),
    gsSP2Triangles(31, 30, 0, 0, 27, 12, 14, 0),
    gsSP2Triangles(1, 29, 14, 0, 12, 27, 24, 0),
    gsSPVertex(&spot07_room_1Vtx_000520[166], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 9, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 16, 0),
    gsSP2Triangles(17, 18, 16, 0, 19, 20, 21, 0),
    gsSP2Triangles(20, 22, 21, 0, 22, 14, 21, 0),
    gsSP2Triangles(23, 19, 24, 0, 18, 25, 24, 0),
    gsSP1Triangle(25, 23, 24, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_009418, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&spot07_room_1Vtx_000520[192], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(1, 16, 17, 0, 1, 17, 2, 0),
    gsSPEndDisplayList(),
};

Vtx spot07_room_1Vtx_001738[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Vtx_001738.vtx.inc"
};

Gfx spot07_room_1DL_001838[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_1Vtx_001738[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot07_room_1Tex_00A3D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot07_room_1Vtx_001738, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot07_room_1Tex_009BD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_001738[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot07_room_1Vtx_001940[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Vtx_001940.vtx.inc"
};

Gfx spot07_room_1DL_002710[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_1Vtx_001940[213], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005798, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, spot07_sceneTLUT_003F70),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot07_room_1Vtx_001940, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005398, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_001940[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005798, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_001940[12], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_009418, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, 15, 15),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_005B98, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetEnvColor(0, 0, 0, 156),
    gsSPVertex(&spot07_room_1Vtx_001940[16], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_009418, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, 15, 15),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_006798, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_001940[20], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 5, 6, 0, 7, 8, 9, 0),
    gsSP1Triangle(7, 9, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_006398, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&spot07_room_1Vtx_001940[31], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 2, 0),
    gsSP2Triangles(6, 7, 5, 0, 7, 6, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005798, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_001940[40], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005398, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_001940[44], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005798, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_001940[49], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(4, 1, 0, 0, 5, 3, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_004F98, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_001940[55], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(spot07_room_1Tex_007ED8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_001940[58], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot07_room_1Tex_0076D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_001940[64], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_004F98, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, spot07_sceneTLUT_003F70),
    gsSPVertex(&spot07_room_1Vtx_001940[68], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(spot07_room_1Tex_007ED8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_001940[71], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot07_room_1Tex_0076D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_001940[76], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_004F98, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, spot07_sceneTLUT_003F70),
    gsSPVertex(&spot07_room_1Vtx_001940[79], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005798, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_001940[82], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 0, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_004F98, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_001940[90], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005798, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_001940[93], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(5, 6, 0, 0, 0, 4, 5, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 10, 8, 0),
    gsSP2Triangles(9, 8, 11, 0, 12, 13, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_004F98, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_001940[107], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005798, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_001940[114], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(2, 4, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_room_1Tex_008AD8, G_IM_FMT_CI, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_001940[119], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 4, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005798, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_001940[125], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005398, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_001940[128], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005798, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_001940[132], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 9, 0),
    gsSP2Triangles(6, 10, 8, 0, 6, 5, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 17, 0, 18, 19, 20, 0),
    gsSP1Triangle(19, 18, 21, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005398, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_001940[154], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005798, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_001940[159], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 1, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005398, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_001940[166], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_room_1Tex_008AD8, G_IM_FMT_CI, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_001940[169], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 1, 0, 0, 4, 5, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_009418, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, 15, 15),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_005B98, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&spot07_room_1Vtx_001940[175], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 7, 8, 5, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 9, 13, 0),
    gsSP2Triangles(14, 9, 12, 0, 15, 14, 12, 0),
    gsSP2Triangles(16, 17, 14, 0, 18, 19, 16, 0),
    gsSP1Triangle(19, 17, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_009418, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, 15, 15),
    gsDPLoadMultiBlock_4b(spot07_room_1Tex_0086D8, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_001940[195], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 10, 11, 0, 10, 12, 11, 0),
    gsSP2Triangles(8, 11, 13, 0, 12, 10, 14, 0),
    gsSP2Triangles(15, 12, 14, 0, 15, 14, 16, 0),
    gsSP1Triangle(17, 15, 16, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx spot07_room_1Vtx_0033E0[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Vtx_0033E0.vtx.inc"
};

Gfx spot07_room_1DL_0035B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_1Vtx_0033E0[21], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005798, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_009018, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 15, 15),
    gsDPLoadTLUT_pal16(0, spot07_sceneTLUT_003F70),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 100),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(spot07_room_1Vtx_0033E0, 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 0, 3, 0, 8, 3, 9, 0),
    gsSP2Triangles(10, 7, 6, 0, 10, 6, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 16, 0),
    gsSP2Triangles(13, 17, 15, 0, 18, 19, 13, 0),
    gsSP1Triangle(20, 17, 13, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx spot07_room_1Vtx_003720[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Vtx_003720.vtx.inc"
};

Gfx spot07_room_1DL_0038A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_1Vtx_003720[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_007B98, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_009018, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 15, 15),
    gsDPLoadTLUT_pal16(0, spot07_sceneTLUT_003F70),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 100),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(spot07_room_1Vtx_003720, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 2, 0, 4, 2, 3, 0),
    gsSP2Triangles(6, 5, 4, 0, 6, 7, 5, 0),
    gsSP2Triangles(8, 7, 6, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 9, 13, 0, 9, 14, 15, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx spot07_room_1Vtx_003A00[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Vtx_003A00.vtx.inc"
};

Gfx spot07_room_1DL_003BE0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_1Vtx_003A00[22], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_006B98, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_009018, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 15, 15),
    gsDPLoadTLUT_pal16(0, spot07_sceneTLUT_003F70),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 100),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(spot07_room_1Vtx_003A00, 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 2, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 10, 5, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 14, 9, 0, 14, 11, 9, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(18, 17, 19, 0, 20, 19, 17, 0),
    gsSP1Triangle(18, 19, 21, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx spot07_room_1Vtx_003D50[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Vtx_003D50.vtx.inc"
};

Gfx spot07_room_1DL_003EE0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_1Vtx_003D50[17], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_009418, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, 15, 15),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_006798, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, spot07_sceneTLUT_003F70),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 156),
    gsSPVertex(spot07_room_1Vtx_003D50, 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 1, 6, 0, 6, 7, 2, 0),
    gsSP2Triangles(6, 8, 7, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 9, 0, 12, 10, 9, 0),
    gsSP2Triangles(12, 13, 10, 0, 14, 3, 15, 0),
    gsSP2Triangles(15, 3, 5, 0, 16, 14, 15, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx spot07_room_1Vtx_004040[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Vtx_004040.vtx.inc"
};

Gfx spot07_room_1DL_004200[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_1Vtx_004040[20], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_006398, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_009018, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 15, 15),
    gsDPLoadTLUT_pal16(0, spot07_sceneTLUT_003F70),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 100),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(spot07_room_1Vtx_004040, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 4, 0, 0, 5, 3, 2, 0),
    gsSP2Triangles(1, 6, 2, 0, 7, 2, 8, 0),
    gsSP2Triangles(6, 8, 2, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 12, 11, 0),
    gsSP2Triangles(14, 13, 11, 0, 14, 11, 15, 0),
    gsSP2Triangles(16, 14, 17, 0, 18, 16, 17, 0),
    gsSP2Triangles(18, 19, 16, 0, 16, 13, 14, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx spot07_room_1Vtx_004378[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Vtx_004378.vtx.inc"
};

Gfx spot07_room_1DL_004508[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_1Vtx_004378[17], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot07_room_1Tex_0097D8, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_009018, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 15, 15),
    gsDPLoadTLUT_pal16(0, spot07_sceneTLUT_003F70),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 100),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(spot07_room_1Vtx_004378, 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(2, 5, 6, 0, 2, 6, 7, 0),
    gsSP2Triangles(2, 7, 3, 0, 2, 1, 8, 0),
    gsSP2Triangles(9, 4, 10, 0, 1, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 4, 14, 0),
    gsSP2Triangles(2, 4, 13, 0, 1, 0, 16, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx spot07_room_1Vtx_004670[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Vtx_004670.vtx.inc"
};

Gfx spot07_room_1DL_004860[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_1Vtx_004670[23], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_007B98, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, spot07_sceneTLUT_003F70),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot07_room_1Vtx_004670, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(3, 2, 8, 0, 7, 9, 4, 0),
    gsSP2Triangles(3, 8, 9, 0, 3, 9, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_009418, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_004670[10], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 0, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_009418, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, 15, 15),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_005B98, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 216, 223, 220, 255),
    gsDPSetEnvColor(0, 0, 0, 156),
    gsSPVertex(&spot07_room_1Vtx_004670[16], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 1, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx spot07_room_1Vtx_004A78[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Vtx_004A78.vtx.inc"
};

Gfx spot07_room_1DL_004B98[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_1Vtx_004A78[10], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot07_room_1Tex_0093D8, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_009018, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 15, 15),
    gsDPLoadTLUT_pal16(0, spot07_sceneTLUT_003F70),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 100),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(spot07_room_1Vtx_004A78, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(3, 2, 1, 0, 5, 6, 0, 0),
    gsSP2Triangles(5, 7, 6, 0, 8, 9, 4, 0),
    gsSP1Triangle(3, 8, 4, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx spot07_room_1Vtx_004CF0[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Vtx_004CF0.vtx.inc"
};

Gfx spot07_room_1DL_004E70[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_1Vtx_004CF0[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot07_room_1Tex_008FD8, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_009018, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 15, 15),
    gsDPLoadTLUT_pal16(0, spot07_sceneTLUT_003F70),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 100),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(spot07_room_1Vtx_004CF0, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(3, 4, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 11, 0, 12, 11, 10, 0),
    gsSP2Triangles(14, 15, 13, 0, 14, 13, 12, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx spot07_room_1Vtx_004FD0[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Vtx_004FD0.vtx.inc"
};

Gfx spot07_room_1DL_005160[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_1Vtx_004FD0[17], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005F98, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_009018, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 15, 15),
    gsDPLoadTLUT_pal16(0, spot07_sceneTLUT_003F70),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 100),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(spot07_room_1Vtx_004FD0, 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 6, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 12, 11, 0, 10, 14, 11, 0),
    gsSP2Triangles(14, 15, 11, 0, 14, 16, 15, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx spot07_room_1Vtx_0052C0[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Vtx_0052C0.vtx.inc"
};

Gfx spot07_room_1DL_0053D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_1Vtx_0052C0[9], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot07_room_1Tex_008BD8, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_009018, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 15, 15),
    gsDPLoadTLUT_pal16(0, spot07_sceneTLUT_003F70),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 100),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(spot07_room_1Vtx_0052C0, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 6, 5, 0, 0),
    gsSP2Triangles(0, 2, 6, 0, 7, 3, 6, 0),
    gsSP1Triangle(7, 6, 8, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx spot07_room_1Vtx_005528[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Vtx_005528.vtx.inc"
};

Gfx spot07_room_1DL_005798[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_1Vtx_005528[31], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005398, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, spot07_sceneTLUT_003F70),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot07_room_1Vtx_005528, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005798, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_005528[4], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005398, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_005528[12], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(1, 4, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005798, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_005528[17], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 6, 5, 0, 8, 5, 9, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(spot07_sceneTex_006F98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_005528[27], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot07_room_1Vtx_0059E8[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Vtx_0059E8.vtx.inc"
};

Gfx spot07_room_1DL_005AB8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_1Vtx_0059E8[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_009418, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, 15, 15),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_005B98, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, spot07_sceneTLUT_003F70),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 156),
    gsSPVertex(spot07_room_1Vtx_0059E8, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP1Triangle(3, 4, 0, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx spot07_room_1Vtx_005BF8[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Vtx_005BF8.vtx.inc"
};

Gfx spot07_room_1DL_005D08[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_1Vtx_005BF8[9], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005398, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_009018, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 15, 15),
    gsDPLoadTLUT_pal16(0, spot07_sceneTLUT_003F70),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 100),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(spot07_room_1Vtx_005BF8, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 2, 4, 0),
    gsSP2Triangles(6, 4, 2, 0, 7, 6, 1, 0),
    gsSP2Triangles(6, 2, 1, 0, 6, 8, 4, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx spot07_room_1Vtx_005E60[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Vtx_005E60.vtx.inc"
};

Gfx spot07_room_1DL_0068E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_1Vtx_005E60[160], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005398, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_009018, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 15, 15),
    gsDPLoadTLUT_pal16(0, spot07_sceneTLUT_003F70),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 100),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(spot07_room_1Vtx_005E60, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 2, 1, 5, 0),
    gsSP2Triangles(4, 2, 5, 0, 6, 4, 5, 0),
    gsSP2Triangles(4, 7, 3, 0, 7, 8, 3, 0),
    gsSP2Triangles(9, 3, 8, 0, 3, 9, 10, 0),
    gsSP1Triangle(0, 3, 10, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(spot07_sceneTex_003F98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot07_room_1Vtx_005E60[11], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot07_sceneTex_007F98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot07_room_1Vtx_005E60[15], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot07_sceneTex_003F98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot07_room_1Vtx_005E60[23], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot07_sceneTex_006F98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot07_room_1Vtx_005E60[27], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005398, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, spot07_sceneTLUT_003F70),
    gsSPVertex(&spot07_room_1Vtx_005E60[31], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005798, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_005E60[35], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005398, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_005E60[43], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_004F98, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_005E60[46], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005798, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_009018, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 15, 15),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&spot07_room_1Vtx_005E60[49], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(4, 2, 5, 0, 4, 5, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(7, 13, 14, 0, 7, 14, 15, 0),
    gsSP2Triangles(16, 17, 10, 0, 18, 16, 10, 0),
    gsSP2Triangles(15, 14, 19, 0, 15, 19, 20, 0),
    gsSP2Triangles(21, 22, 16, 0, 21, 16, 18, 0),
    gsSP2Triangles(13, 7, 9, 0, 10, 17, 11, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 23, 25, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSP1Triangle(30, 29, 31, 0),
    gsSPVertex(&spot07_room_1Vtx_005E60[81], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 2, 1, 7, 0),
    gsSP2Triangles(2, 7, 8, 0, 7, 9, 10, 0),
    gsSP1Triangle(8, 7, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_004F98, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_009018, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 15, 15),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&spot07_room_1Vtx_005E60[92], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(6, 9, 10, 0, 11, 12, 9, 0),
    gsSP2Triangles(9, 13, 11, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 15, 14, 0, 18, 17, 14, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(21, 25, 26, 0, 21, 26, 27, 0),
    gsSP2Triangles(28, 29, 22, 0, 28, 22, 21, 0),
    gsSP2Triangles(30, 21, 27, 0, 30, 27, 31, 0),
    gsSPVertex(&spot07_room_1Vtx_005E60[124], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_007798, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_009018, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 15, 15),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&spot07_room_1Vtx_005E60[132], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_009418, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_009018, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 15, 15),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&spot07_room_1Vtx_005E60[140], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(1, 5, 4, 0, 1, 6, 5, 0),
    gsSP2Triangles(1, 0, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 10, 9, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 11, 14, 15, 0),
    gsSP2Triangles(16, 11, 15, 0, 16, 15, 17, 0),
    gsSP2Triangles(16, 17, 18, 0, 13, 12, 19, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx spot07_room_1Vtx_0070B8[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Vtx_0070B8.vtx.inc"
};

Gfx spot07_room_1DL_007488[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_1Vtx_0070B8[53], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_009418, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, spot07_sceneTLUT_003F70),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot07_room_1Vtx_0070B8, 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 6, 0),
    gsSP2Triangles(7, 1, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 6, 0, 10, 6, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(spot07_room_1Tex_00ABD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_1Vtx_0070B8[17], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 9, 0, 12, 9, 14, 0),
    gsSP2Triangles(15, 6, 16, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 24, 27, 0, 26, 27, 28, 0),
    gsSP2Triangles(29, 30, 19, 0, 29, 19, 31, 0),
    gsSPVertex(&spot07_room_1Vtx_0070B8[49], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 spot07_room_1_unaccounted_007638[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x12, 0xC0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x18, 0x38, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x27, 0x10, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x35, 0xB0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x38, 0xA0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3B, 0xE0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3E, 0xE0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x42, 0x00, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x45, 0x08, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x48, 0x60, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x4B, 0x98, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x4E, 0x70, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x51, 0x60, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x53, 0xD0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x57, 0x98, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x5A, 0xB8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x5D, 0x08, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x68, 0xE0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x74, 0x88, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 spot07_room_1Tex_0076D8[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Tex_0076D8.rgba16.inc.c"
};

u64 spot07_room_1Tex_007ED8[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Tex_007ED8.rgba16.inc.c"
};

u64 spot07_room_1Tex_0086D8[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Tex_0086D8.ci4.inc.c"
};

u64 spot07_room_1Tex_008AD8[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Tex_008AD8.ci4.inc.c"
};

u64 spot07_room_1Tex_008BD8[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Tex_008BD8.ci4.inc.c"
};

u64 spot07_room_1Tex_008FD8[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Tex_008FD8.ci4.inc.c"
};

u64 spot07_room_1Tex_0093D8[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Tex_0093D8.ci4.inc.c"
};

u64 spot07_room_1Tex_0097D8[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Tex_0097D8.ci4.inc.c"
};

u64 spot07_room_1Tex_009BD8[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Tex_009BD8.rgba16.inc.c"
};

u64 spot07_room_1Tex_00A3D8[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Tex_00A3D8.rgba16.inc.c"
};

u64 spot07_room_1Tex_00ABD8[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Tex_00ABD8.rgba16.inc.c"
};

u8 spot07_room_1_possiblePadding_00BBD8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx spot07_room_1Vtx_00BBE0[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Vtx_00BBE0.vtx.inc"
};

Gfx spot07_room_1DL_00BCE0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_1Vtx_00BBE0[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gZorasDomainNightEntranceTex, G_IM_FMT_IA, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_DECAL2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot07_room_1Vtx_00BBE0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot07_room_1Tex_00C1A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, PRIMITIVE, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 249),
    gsSPVertex(&spot07_room_1Vtx_00BBE0[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot07_room_1Vtx_00BE00[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Vtx_00BE00.vtx.inc"
};

Gfx spot07_room_1DL_00BEC0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_1Vtx_00BE00[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_008798, G_IM_FMT_IA, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot07_room_1Vtx_00BE00, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot07_room_1Vtx_00BF80[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Vtx_00BF80.vtx.inc"
};

Gfx spot07_room_1DL_00C0A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_1Vtx_00BF80[10], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_IA, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot07_room_1Vtx_00BF80, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 0, 0),
    gsSP2Triangles(2, 6, 4, 0, 2, 4, 3, 0),
    gsSP2Triangles(7, 6, 2, 0, 8, 7, 2, 0),
    gsSP2Triangles(9, 7, 8, 0, 0, 5, 9, 0),
    gsSP1Triangle(0, 9, 1, 0),
    gsSPEndDisplayList(),
};

u8 spot07_room_1_unaccounted_00C180[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xBC, 0xE0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xBE, 0xC0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xC0, 0xA0, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 spot07_room_1Tex_00C1A0[] = {
#include "assets/scenes/overworld/spot07/spot07_room_1Tex_00C1A0.rgba16.inc.c"
};

