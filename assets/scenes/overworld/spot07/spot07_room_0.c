#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "spot07_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "spot07_scene.h"
#include "spot07_room_1.h"

SceneCmd spot07_room_0Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(spot07_room_0AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x04, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot07_room_0PolygonType2_000150),
    SCENE_CMD_OBJECT_LIST(8, spot07_room_0ObjectList_000058),
    SCENE_CMD_ACTOR_LIST(17, spot07_room_0ActorList_000068),
    SCENE_CMD_END(),
};

SceneCmd* spot07_room_0AlternateHeaders0x000048[] = {
    NULL,
    spot07_room_0Set_000220,
    NULL,
    spot07_room_0Set_000300,
};

s16 spot07_room_0ObjectList_000058[] = {
    OBJECT_SPOT07_OBJECT,
    OBJECT_SYOKUDAI,
    OBJECT_KANBAN,
    OBJECT_TSUBO,
    OBJECT_ZO,
    OBJECT_KZ,
    OBJECT_RU1,
    OBJECT_GS,
};

ActorEntry spot07_room_0ActorList_000068[] = {
    { ACTOR_EN_RIVER_SOUND, {    642,    857,  -1691 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_KZ,          {    628,    996,  -1780 }, {      0,      0,      0 }, 0x0100 },
    { ACTOR_EN_RU1,         {    603,    996,  -1806 }, {      0,  0XD83,      0 }, 0x0005 },
    { ACTOR_BG_SPOT07_TAKI, {    445,   1008,  -1742 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_A_OBJ,       {    345,    857,  -1572 }, {      0, 0X8000,      0 }, 0x2B0A },
    { ACTOR_OBJ_SYOKUDAI,   {    462,    887,  -1275 }, {      0,      0,      0 }, 0x2400 },
    { ACTOR_OBJ_SYOKUDAI,   {    778,    887,  -1275 }, {      0,      0,      0 }, 0x2400 },
    { ACTOR_EN_KANBAN,      {    720,    890,  -1345 }, {      0,      0,      0 }, 0x0324 },
    { ACTOR_EN_DIVING_GAME, {   -149,    857,  -1020 }, {      0, 0XA2D8,      0 }, 0xFFFF },
    { ACTOR_OBJ_COMB,       {    382,   1173,  -1337 }, {      0,      0,      0 }, 0xFF02 },
    { ACTOR_OBJ_COMB,       {    948,   1217,  -1500 }, {      0,      0,      0 }, 0xFF02 },
    { ACTOR_OBJ_COMB,       {    701,   1250,  -2056 }, {      0, 0XDF4A,      0 }, 0xFF02 },
    { ACTOR_OBJ_SYOKUDAI,   {    644,    402,   -157 }, {      0, 0XA71C,      0 }, 0x2000 },
    { ACTOR_EN_GS,          {    620,    857,  -1600 }, {      0,      0,      0 }, 0x3809 },
    { ACTOR_OBJ_SYOKUDAI,   {    809,    857,  -1560 }, {      0,      0,      0 }, 0x2400 },
    { ACTOR_OBJ_SYOKUDAI,   {    428,    857,  -1560 }, {      0,      0,      0 }, 0x2400 },
    { ACTOR_EN_KANBAN,      {    230,    857,  -1440 }, {      0, 0X4000,      0 }, 0x032B },
};

u8 spot07_room_0_possiblePadding_000148[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 spot07_room_0PolygonType2_000150 = { 
    2, 12,
    spot07_room_0PolygonDlist2_00015C,
    spot07_room_0PolygonDlist2_00015C + ARRAY_COUNTU(spot07_room_0PolygonDlist2_00015C)
};

PolygonDlist2 spot07_room_0PolygonDlist2_00015C[12] = {
    { {    356,   1067,  -2019 },    970, spot07_room_0DL_0034B0, NULL },
    { {    696,    916,  -1419 },    354, spot07_room_0DL_002A28, NULL },
    { {    430,   1061,  -2019 },   1040, spot07_room_0DL_002100, NULL },
    { {    -30,    979,  -1505 },    265, spot07_room_0DL_0004D0, NULL },
    { {    467,   1207,  -2002 },   1021, spot07_room_0DL_0026F0, NULL },
    { {    666,   1057,  -1605 },    487, spot07_room_0DL_002E48, NULL },
    { {    670,    949,  -1263 },    751, spot07_room_0DL_001260, NULL },
    { {    703,    956,  -1532 },    515, spot07_room_0DL_001870, NULL },
    { {     59,   1128,  -2652 },    303, NULL, spot07_room_0DL_0061E8 },
    { {    625,   1128,  -1863 },    224, spot07_room_0DL_000BA8, spot07_room_0DL_006010 },
    { {    625,    952,  -1786 },    155, spot07_room_0DL_000838, NULL },
    { {    -67,    654,   -480 },   1125, spot07_room_0DL_003EA8, NULL },
};

s32 spot07_room_0_terminatorMaybe_00021C = { 0x01000000 };

SceneCmd spot07_room_0Set_000220[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x04, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot07_room_0PolygonType2_000150),
    SCENE_CMD_OBJECT_LIST(7, spot07_room_0ObjectList_000260),
    SCENE_CMD_ACTOR_LIST(12, spot07_room_0ActorList_000270),
    SCENE_CMD_END(),
};

s16 spot07_room_0ObjectList_000260[] = {
    OBJECT_SPOT07_OBJECT,
    OBJECT_ICE_OBJECTS,
    OBJECT_SYOKUDAI,
    OBJECT_KANBAN,
    OBJECT_TSUBO,
    OBJECT_GS,
    OBJECT_KZ,
};

ActorEntry spot07_room_0ActorList_000270[] = {
    { ACTOR_EN_KZ,          {    628,    996,  -1780 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_GS,          {    620,    857,  -1600 }, {      0,      0,      0 }, 0x3809 },
    { ACTOR_BG_SPOT07_TAKI, {    445,   1008,  -1742 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_A_OBJ,       {    345,    857,  -1572 }, {      0, 0X8000,      0 }, 0x2B0A },
    { ACTOR_OBJ_SYOKUDAI,   {    462,    887,  -1275 }, {      0,      0,      0 }, 0x2000 },
    { ACTOR_OBJ_SYOKUDAI,   {    778,    887,  -1275 }, {      0,      0,      0 }, 0x2000 },
    { ACTOR_EN_WEATHER_TAG, {   -177,      0,  -1061 }, {      0,      0,      0 }, 0x1402 },
    { ACTOR_EN_KANBAN,      {    720,    890,  -1345 }, {      0,      0,      0 }, 0x0324 },
    { ACTOR_OBJECT_KANKYO,  {    624,    857,  -1555 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_OBJ_SYOKUDAI,   {    809,    857,  -1560 }, {      0,      0,      0 }, 0x2400 },
    { ACTOR_OBJ_SYOKUDAI,   {    428,    857,  -1560 }, {      0,      0,      0 }, 0x2400 },
    { ACTOR_EN_KANBAN,      {    230,    857,  -1440 }, {      0, 0X4000,      0 }, 0x032B },
};

SceneCmd spot07_room_0Set_000300[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x04, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot07_room_0PolygonType2_000150),
    SCENE_CMD_OBJECT_LIST(3, spot07_room_0ObjectList_000340),
    SCENE_CMD_ACTOR_LIST(6, spot07_room_0ActorList_000348),
    SCENE_CMD_END(),
};

s16 spot07_room_0ObjectList_000340[] = {
    OBJECT_SPOT07_OBJECT,
    OBJECT_SYOKUDAI,
    OBJECT_KANBAN,
};

ActorEntry spot07_room_0ActorList_000348[] = {
    { ACTOR_OBJ_SYOKUDAI,   {    809,    857,  -1560 }, {      0,      0,      0 }, 0x2400 },
    { ACTOR_OBJ_SYOKUDAI,   {    428,    857,  -1560 }, {      0,      0,      0 }, 0x2400 },
    { ACTOR_EN_KANBAN,      {    720,    890,  -1345 }, {      0,      0,      0 }, 0x0324 },
    { ACTOR_EN_KANBAN,      {    230,    857,  -1440 }, {      0, 0X4000,      0 }, 0x032B },
    { ACTOR_BG_SPOT07_TAKI, {    445,   1008,  -1742 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_A_OBJ,       {    345,    857,  -1572 }, {      0, 0X8000,      0 }, 0x2B0A },
};

u8 spot07_room_0_possiblePadding_000398[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx spot07_room_0Vtx_0003A0[] = {
#include "assets/scenes/overworld/spot07/spot07_room_0Vtx_0003A0.vtx.inc"
};

Gfx spot07_room_0DL_0004D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_0Vtx_0003A0[11], 8, 0),
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
    gsSPVertex(spot07_room_0Vtx_0003A0, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 2, 1, 5, 0),
    gsSP2Triangles(4, 2, 5, 0, 6, 4, 5, 0),
    gsSP2Triangles(4, 7, 3, 0, 7, 8, 3, 0),
    gsSP2Triangles(9, 3, 8, 0, 3, 9, 10, 0),
    gsSP1Triangle(0, 3, 10, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx spot07_room_0Vtx_000638[] = {
#include "assets/scenes/overworld/spot07/spot07_room_0Vtx_000638.vtx.inc"
};

Gfx spot07_room_0DL_000838[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_0Vtx_000638[24], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot07_room_0Tex_004F48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot07_room_0Vtx_000638, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot07_room_0Tex_004748, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_0Vtx_000638[8], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot07_room_0Tex_004F48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_0Vtx_000638[16], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx spot07_room_0Vtx_0009A8[] = {
#include "assets/scenes/overworld/spot07/spot07_room_0Vtx_0009A8.vtx.inc"
};

Gfx spot07_room_0DL_000BA8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_0Vtx_0009A8[24], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot07_sceneTex_003F98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot07_room_0Vtx_0009A8, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot07_sceneTex_007F98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot07_room_0Vtx_0009A8[4], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot07_room_0Tex_005748, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot07_room_0Vtx_0009A8[12], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot07_sceneTex_003F98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_0Vtx_0009A8[20], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot07_room_0Vtx_000D70[] = {
#include "assets/scenes/overworld/spot07/spot07_room_0Vtx_000D70.vtx.inc"
};

Gfx spot07_room_0DL_001260[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_0Vtx_000D70[71], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot07_sceneTex_006F98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot07_room_0Vtx_000D70, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005398, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, spot07_sceneTLUT_003F70),
    gsSPVertex(&spot07_room_0Vtx_000D70[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005798, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_0Vtx_000D70[8], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_007798, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_0Vtx_000D70[16], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 0, 4, 0, 4, 0, 5, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 1, 4, 0),
    gsSP2Triangles(1, 7, 8, 0, 1, 8, 9, 0),
    gsSP2Triangles(10, 2, 11, 0, 10, 3, 2, 0),
    gsSP2Triangles(3, 10, 12, 0, 3, 12, 13, 0),
    gsSP2Triangles(11, 2, 14, 0, 11, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(spot07_sceneTex_006F98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_0Vtx_000D70[36], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005398, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, spot07_sceneTLUT_003F70),
    gsSPVertex(&spot07_room_0Vtx_000D70[40], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(0, 5, 6, 0, 1, 0, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005798, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_0Vtx_000D70[47], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP1Triangle(12, 13, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_004F98, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_0Vtx_000D70[62], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005798, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_0Vtx_000D70[67], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Vtx spot07_room_0Vtx_001670[] = {
#include "assets/scenes/overworld/spot07/spot07_room_0Vtx_001670.vtx.inc"
};

Gfx spot07_room_0DL_001870[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_0Vtx_001670[24], 8, 0),
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
    gsSPVertex(spot07_room_0Vtx_001670, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 4, 6, 0),
    gsSP2Triangles(4, 2, 6, 0, 5, 7, 8, 0),
    gsSP2Triangles(7, 5, 6, 0, 5, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 9, 11, 0, 12, 11, 13, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 16, 18, 17, 0),
    gsSP2Triangles(14, 15, 17, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 22, 20, 0, 23, 20, 22, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx spot07_room_0Vtx_0019F0[] = {
#include "assets/scenes/overworld/spot07/spot07_room_0Vtx_0019F0.vtx.inc"
};

Gfx spot07_room_0DL_002100[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_0Vtx_0019F0[105], 8, 0),
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
    gsSPVertex(spot07_room_0Vtx_0019F0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(10, 12, 11, 0, 10, 13, 14, 0),
    gsSP2Triangles(15, 8, 16, 0, 16, 8, 17, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(23, 22, 26, 0, 22, 27, 26, 0),
    gsSP2Triangles(27, 28, 26, 0, 28, 27, 29, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&spot07_room_0Vtx_0019F0[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 6, 4, 0, 4, 2, 7, 0),
    gsSP2Triangles(2, 8, 7, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 10, 11, 0, 8, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(15, 18, 16, 0, 16, 18, 19, 0),
    gsSP2Triangles(18, 15, 20, 0, 15, 21, 20, 0),
    gsSP2Triangles(21, 22, 20, 0, 15, 23, 21, 0),
    gsSP2Triangles(15, 24, 23, 0, 24, 25, 23, 0),
    gsSP2Triangles(25, 26, 23, 0, 27, 28, 29, 0),
    gsSPVertex(&spot07_room_0Vtx_0019F0[61], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 0, 0, 14, 12, 0, 0),
    gsSP2Triangles(11, 10, 15, 0, 11, 15, 16, 0),
    gsSP2Triangles(17, 18, 12, 0, 17, 12, 14, 0),
    gsSP2Triangles(16, 15, 19, 0, 16, 19, 20, 0),
    gsSP2Triangles(21, 18, 17, 0, 22, 21, 17, 0),
    gsSP2Triangles(9, 8, 23, 0, 0, 13, 1, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 24, 26, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&spot07_room_0Vtx_0019F0[93], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(3, 2, 8, 0, 3, 8, 9, 0),
    gsSP2Triangles(8, 10, 11, 0, 9, 8, 11, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx spot07_room_0Vtx_002360[] = {
#include "assets/scenes/overworld/spot07/spot07_room_0Vtx_002360.vtx.inc"
};

Gfx spot07_room_0DL_0026F0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_0Vtx_002360[49], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_004F98, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
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
    gsSPVertex(spot07_room_0Vtx_002360, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 3, 0, 6, 7, 5, 0),
    gsSP2Triangles(4, 8, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 14, 11, 0, 12, 11, 14, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 15, 0),
    gsSP2Triangles(15, 19, 17, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 20, 22, 0, 24, 20, 23, 0),
    gsSP2Triangles(25, 24, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 26, 27, 0, 28, 29, 30, 0),
    gsSP1Triangle(28, 30, 31, 0),
    gsSPVertex(&spot07_room_0Vtx_002360[32], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 8, 0),
    gsSP2Triangles(9, 10, 5, 0, 9, 5, 4, 0),
    gsSP2Triangles(11, 4, 8, 0, 11, 8, 12, 0),
    gsSP2Triangles(10, 9, 13, 0, 14, 10, 13, 0),
    gsSP2Triangles(11, 12, 15, 0, 16, 11, 15, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx spot07_room_0Vtx_0028B8[] = {
#include "assets/scenes/overworld/spot07/spot07_room_0Vtx_0028B8.vtx.inc"
};

Gfx spot07_room_0DL_002A28[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_0Vtx_0028B8[15], 8, 0),
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
    gsSPVertex(spot07_room_0Vtx_0028B8, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(4, 2, 5, 0, 4, 5, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(10, 9, 11, 0, 12, 11, 9, 0),
    gsSP2Triangles(13, 11, 12, 0, 14, 13, 12, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx spot07_room_0Vtx_002B88[] = {
#include "assets/scenes/overworld/spot07/spot07_room_0Vtx_002B88.vtx.inc"
};

Gfx spot07_room_0DL_002E48[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_0Vtx_002B88[36], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_007798, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_009018, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, spot07_sceneTLUT_003F70),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 100),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(spot07_room_0Vtx_002B88, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(8, 14, 9, 0, 11, 13, 15, 0),
    gsSP2Triangles(16, 12, 17, 0, 16, 13, 12, 0),
    gsSP2Triangles(18, 17, 12, 0, 18, 19, 17, 0),
    gsSP2Triangles(8, 20, 21, 0, 8, 21, 22, 0),
    gsSP2Triangles(8, 23, 20, 0, 8, 10, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(25, 24, 28, 0, 26, 25, 29, 0),
    gsSP1Triangle(26, 29, 30, 0),
    gsSPVertex(&spot07_room_0Vtx_002B88[31], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP1Triangle(4, 3, 1, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx spot07_room_0Vtx_002FF0[] = {
#include "assets/scenes/overworld/spot07/spot07_room_0Vtx_002FF0.vtx.inc"
};

Gfx spot07_room_0DL_0034B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_0Vtx_002FF0[68], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_009418, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
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
    gsSPVertex(spot07_room_0Vtx_002FF0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(1, 5, 4, 0, 1, 6, 5, 0),
    gsSP2Triangles(1, 0, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 10, 9, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(16, 11, 14, 0, 11, 17, 18, 0),
    gsSP2Triangles(11, 18, 12, 0, 17, 19, 20, 0),
    gsSP2Triangles(17, 20, 18, 0, 19, 21, 22, 0),
    gsSP2Triangles(19, 22, 20, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 16, 0, 14, 26, 23, 0),
    gsSP2Triangles(14, 23, 16, 0, 27, 28, 26, 0),
    gsSP2Triangles(27, 26, 14, 0, 29, 30, 13, 0),
    gsSP1Triangle(29, 13, 31, 0),
    gsSPVertex(&spot07_room_0Vtx_002FF0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(6, 9, 10, 0, 11, 6, 10, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(8, 7, 14, 0, 15, 16, 7, 0),
    gsSP2Triangles(16, 17, 7, 0, 7, 17, 14, 0),
    gsSP2Triangles(14, 17, 18, 0, 14, 18, 19, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(14, 19, 22, 0, 22, 21, 23, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(24, 23, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(21, 28, 23, 0, 20, 29, 21, 0),
    gsSP2Triangles(20, 30, 29, 0, 31, 29, 30, 0),
    gsSPVertex(&spot07_room_0Vtx_002FF0[64], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx spot07_room_0Vtx_0036D8[] = {
#include "assets/scenes/overworld/spot07/spot07_room_0Vtx_0036D8.vtx.inc"
};

Gfx spot07_room_0DL_003EA8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_0Vtx_0036D8[117], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_009418, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
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
    gsSPVertex(spot07_room_0Vtx_0036D8, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP1Triangle(9, 7, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005798, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&spot07_room_0Vtx_0036D8[11], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005398, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_0Vtx_0036D8[15], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005798, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_0Vtx_0036D8[20], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005798, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_009018, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 15, 15),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&spot07_room_0Vtx_0036D8[24], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 0, 3, 0, 8, 3, 9, 0),
    gsSP2Triangles(10, 7, 6, 0, 10, 6, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_007B98, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, 1),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_009018, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 3, 5),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&spot07_room_0Vtx_0036D8[36], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 1, 0, 0, 4, 5, 1, 0),
    gsSP2Triangles(6, 5, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 7, 11, 0, 7, 12, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_006B98, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_009018, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 15, 15),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&spot07_room_0Vtx_0036D8[50], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 6, 0, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 10, 5, 0, 10, 7, 5, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(14, 13, 15, 0, 16, 15, 13, 0),
    gsSP1Triangle(14, 15, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005F98, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_009018, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 15, 15),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&spot07_room_0Vtx_0036D8[68], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005398, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&spot07_room_0Vtx_0036D8[72], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005798, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_0Vtx_0036D8[76], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005398, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_0Vtx_0036D8[84], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(1, 4, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005798, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_0Vtx_0036D8[89], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 6, 5, 0, 8, 5, 9, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(spot07_sceneTex_006F98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot07_room_0Vtx_0036D8[99], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_009418, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 5, 15, 15),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_005B98, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, spot07_sceneTLUT_003F70),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetEnvColor(0, 0, 0, 156),
    gsSPVertex(&spot07_room_0Vtx_0036D8[103], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP1Triangle(3, 4, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_005398, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(spot07_sceneTex_009018, 0x0080, 1, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_WRAP, 6, 5, 15, 15),
    gsDPSetEnvColor(0, 0, 0, 100),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(&spot07_room_0Vtx_0036D8[108], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 2, 4, 0),
    gsSP2Triangles(6, 4, 2, 0, 7, 6, 1, 0),
    gsSP2Triangles(6, 2, 1, 0, 6, 8, 4, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

u8 spot07_room_0_unaccounted_0046E8[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x04, 0xD0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x08, 0x38, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0B, 0xA8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x12, 0x60, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x18, 0x70, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x21, 0x00, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x26, 0xF0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2A, 0x28, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2E, 0x48, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x34, 0xB0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3E, 0xA8, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 spot07_room_0Tex_004748[] = {
#include "assets/scenes/overworld/spot07/spot07_room_0Tex_004748.rgba16.inc.c"
};

u64 spot07_room_0Tex_004F48[] = {
#include "assets/scenes/overworld/spot07/spot07_room_0Tex_004F48.rgba16.inc.c"
};

u64 spot07_room_0Tex_005748[] = {
#include "assets/scenes/overworld/spot07/spot07_room_0Tex_005748.rgba16.inc.c"
};

u8 spot07_room_0_possiblePadding_005F48[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx spot07_room_0Vtx_005F50[] = {
#include "assets/scenes/overworld/spot07/spot07_room_0Vtx_005F50.vtx.inc"
};

Gfx spot07_room_0DL_006010[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_0Vtx_005F50[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot07_sceneTex_008798, G_IM_FMT_IA, 64, 64, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot07_room_0Vtx_005F50, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot07_room_0Vtx_0060C8[] = {
#include "assets/scenes/overworld/spot07/spot07_room_0Vtx_0060C8.vtx.inc"
};

Gfx spot07_room_0DL_0061E8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot07_room_0Vtx_0060C8[10], 8, 0),
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
    gsSPVertex(spot07_room_0Vtx_0060C8, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 4, 7, 6, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(9, 8, 1, 0, 9, 1, 0, 0),
    gsSP2Triangles(0, 3, 5, 0, 0, 5, 6, 0),
    gsSP1Triangle(0, 6, 9, 0),
    gsSPEndDisplayList(),
};

u8 spot07_room_0_unaccounted_0062D0[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x60, 0x10, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x61, 0xE8, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

