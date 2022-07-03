#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "HAKAdan_room_13.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "HAKAdan_scene.h"
#include "HAKAdan_room_0.h"
#include "HAKAdan_room_1.h"
#include "HAKAdan_room_2.h"
#include "HAKAdan_room_3.h"
#include "HAKAdan_room_4.h"
#include "HAKAdan_room_5.h"
#include "HAKAdan_room_6.h"
#include "HAKAdan_room_7.h"
#include "HAKAdan_room_8.h"
#include "HAKAdan_room_9.h"
#include "HAKAdan_room_10.h"
#include "HAKAdan_room_11.h"
#include "HAKAdan_room_12.h"
#include "HAKAdan_room_14.h"
#include "HAKAdan_room_15.h"
#include "HAKAdan_room_16.h"
#include "HAKAdan_room_17.h"
#include "HAKAdan_room_18.h"
#include "HAKAdan_room_19.h"
#include "HAKAdan_room_20.h"
#include "HAKAdan_room_21.h"
#include "HAKAdan_room_22.h"

SceneCmd HAKAdan_room_13Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&HAKAdan_room_13PolygonType2_000120),
    SCENE_CMD_OBJECT_LIST(6, HAKAdan_room_13ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(13, HAKAdan_room_13ActorList_00004C),
    SCENE_CMD_END(),
};

s16 HAKAdan_room_13ObjectList_000040[] = {
    OBJECT_HAKA_OBJECTS,
    OBJECT_HAKA_DOOR,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_FIREFLY,
    OBJECT_ST,
};

ActorEntry HAKAdan_room_13ActorList_00004C[] = {
    { ACTOR_EN_FIREFLY,   {  -4160,  -1333,  -2685 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,   {  -4456,  -1328,  -2686 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,   {  -4207,  -1238,  -2336 }, {      0, 0X8000,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,   {  -4443,  -1317,  -2339 }, {      0, 0X8000,      0 }, 0x0003 },
    { ACTOR_EN_ST,        {  -3973,  -1203,  -2570 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_EN_ST,        {  -4035,  -1203,  -2629 }, {      0, 0XC000,      0 }, 0x0002 },
    { ACTOR_EN_ST,        {  -4634,  -1203,  -2499 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_EN_ST,        {  -3971,  -1203,  -2437 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_OBJ_TSUBO,    {  -4303,  -1363,  -2657 }, {      0,      0,      0 }, 0x4C0E },
    { ACTOR_BG_HAKA_TRAP, {  -4536,  -1363,  -2511 }, {      0, 0XC000,      0 }, 0x0003 },
    { ACTOR_BG_HAKA_TRAP, {  -4076,  -1363,  -2511 }, {      0, 0XC000,      0 }, 0x0002 },
    { ACTOR_EN_BOX,       {  -3973,  -1363,  -2627 }, {      0, 0X8000,      0 }, 0x27EB },
    { ACTOR_EN_BOX,       {  -4636,  -1363,  -2632 }, {      0, 0X8000,      0 }, 0x588A },
};

u8 HAKAdan_room_13_possiblePadding_00011C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 HAKAdan_room_13PolygonType2_000120 = { 
    2, 2,
    HAKAdan_room_13PolygonDlist2_00012C,
    HAKAdan_room_13PolygonDlist2_00012C + ARRAY_COUNTU(HAKAdan_room_13PolygonDlist2_00012C)
};

PolygonDlist2 HAKAdan_room_13PolygonDlist2_00012C[2] = {
    { {  -4306,  -1363,  -2501 },    460, HAKAdan_room_13DL_0006E0, NULL },
    { {  -4306,  -1263,  -2501 },    471, HAKAdan_room_13DL_000450, NULL },
};

s32 HAKAdan_room_13_terminatorMaybe_00014C = { 0x01000000 };

Vtx HAKAdan_room_13Vtx_000150[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_13Vtx_000150.vtx.inc"
};

Gfx HAKAdan_room_13DL_000450[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_13Vtx_000150[40], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_017BC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_sceneTex_0173C0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_13Vtx_000150, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 24, 26, 0),
    gsSP2Triangles(28, 27, 26, 0, 28, 26, 29, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 31, 30, 0),
    gsSPVertex(&HAKAdan_room_13Vtx_000150[32], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(3, 1, 4, 0, 4, 5, 6, 0),
    gsSP2Triangles(7, 6, 5, 0, 7, 5, 0, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_13Vtx_0005A0[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_13Vtx_0005A0.vtx.inc"
};

Gfx HAKAdan_room_13DL_0006E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_13Vtx_0005A0[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_017BC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_room_13Tex_000818, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 96),
    gsSPVertex(HAKAdan_room_13Vtx_0005A0, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(6, 5, 8, 0, 9, 10, 4, 0),
    gsSP2Triangles(8, 10, 9, 0, 8, 9, 11, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

u8 HAKAdan_room_13_unaccounted_000800[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x04, 0x50, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0xE0, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 HAKAdan_room_13Tex_000818[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_13Tex_000818.rgba16.inc.c"
};

