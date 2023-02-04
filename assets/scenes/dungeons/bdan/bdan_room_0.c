#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "bdan_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "bdan_scene.h"
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
#include "bdan_room_15.h"

SceneCmd bdan_room_0Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(bdan_room_0AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&bdan_room_0PolygonType0_000190),
    SCENE_CMD_OBJECT_LIST(12, bdan_room_0ObjectList_000058),
    SCENE_CMD_ACTOR_LIST(18, bdan_room_0ActorList_000070),
    SCENE_CMD_END(),
};

SceneCmd* bdan_room_0AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    bdan_room_0Set_0001B0,
};

s16 bdan_room_0ObjectList_000058[] = {
    OBJECT_BDAN_OBJECTS,
    OBJECT_RU1,
    OBJECT_KUSA,
    OBJECT_BOX,
    OBJECT_BOMBIWA,
    OBJECT_OKUTA,
    OBJECT_BUBBLE,
    OBJECT_SIOFUKI,
    OBJECT_TIMEBLOCK,
    OBJECT_EFC_TW,
    OBJECT_BOMBF,
    OBJECT_COW,
};

ActorEntry bdan_room_0ActorList_000070[] = {
    { ACTOR_EN_OKUTA,       {     -2,   -330,   -224 }, {      0,      0,      0 }, 0xFF00 },
    { ACTOR_EN_KUSA,        {    213,   -330,   -398 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_KUSA,        {   -219,   -340,    -61 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_COW,         {    232,   -211,   -573 }, {      0, 0XE666,      0 }, 0x0000 },
    { ACTOR_EN_COW,         {   -224,   -211,   -581 }, {      0, 0X199A,      0 }, 0x0000 },
    { ACTOR_BG_BDAN_SWITCH, {     -2,   -341,   -305 }, {      0,      0,      0 }, 0x3D02 },
    { ACTOR_OBJ_BOMBIWA,    {     -1,   -340,   -296 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_BUBBLE,      {   -219,   -240,   -408 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_BUBBLE,      {   -265,    -99,   -359 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_BUBBLE,      {   -251,   -190,   -267 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_ELF_MSG2,       {    197,   -182,   -527 }, {      0,   0X19,    0X1 }, 0x3F00 },
    { ACTOR_ELF_MSG2,       {   -203,   -182,   -537 }, {      0,   0X16,    0X1 }, 0x3F00 },
    { ACTOR_EN_BOX,         {    200,   -240,   -240 }, {      0, 0X4000,   0X18 }, 0x8045 },
    { ACTOR_EN_WONDER_ITEM, {   -201,   -188,   -538 }, {      0,      0,    0X4 }, 0x1915 },
    { ACTOR_EN_WONDER_ITEM, {    199,   -188,   -524 }, {      0,      0,    0X4 }, 0x1918 },
    { ACTOR_OBJ_TSUBO,      {   -183,   -330,   -449 }, {      0,      0,      0 }, 0x7804 },
    { ACTOR_OBJ_TSUBO,      {    202,   -340,    -62 }, {      0,      0,      0 }, 0x640C },
    { ACTOR_EN_BOX,         {      0,   -340,   -111 }, {      0,      0,   0X3D }, 0xB823 },
};

PolygonType0 bdan_room_0PolygonType0_000190 = { 
    0, 1,
    bdan_room_0PolygonDlist_00019C,
    bdan_room_0PolygonDlist_00019C + ARRAY_COUNTU(bdan_room_0PolygonDlist_00019C)
};

PolygonDlist bdan_room_0PolygonDlist_00019C[1] = {
    { bdan_room_0DL_002DA8, bdan_room_0DL_004130 },
};

s32 bdan_room_0_terminatorMaybe_0001A4 = { 0x01000000 };

u8 bdan_room_0_possiblePadding_0001A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd bdan_room_0Set_0001B0[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&bdan_room_0PolygonType0_000190),
    SCENE_CMD_OBJECT_LIST(4, bdan_room_0ObjectList_0001F0),
    SCENE_CMD_ACTOR_LIST(5, bdan_room_0ActorList_0001F8),
    SCENE_CMD_END(),
};

s16 bdan_room_0ObjectList_0001F0[] = {
    OBJECT_BDAN_OBJECTS,
    OBJECT_RU1,
    OBJECT_OKUTA,
    OBJECT_BUBBLE,
};

ActorEntry bdan_room_0ActorList_0001F8[] = {
    { ACTOR_EN_OKUTA,  {      0,   -330,   -250 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_OKUTA,  {     74,   -330,   -361 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_BUBBLE, {   -129,   -340,   -157 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_BUBBLE, {     93,   -330,   -268 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_BUBBLE, {    -73,   -340,   -398 }, {      0,      0,      0 }, 0xFFFF },
};

u8 bdan_room_0_possiblePadding_000248[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx bdan_room_0Vtx_000250[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_0Vtx_000250.vtx.inc"
};

Gfx bdan_room_0DL_002430[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_0Vtx_000250[534], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_room_0Tex_002DB8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(bdan_room_0Vtx_000250, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_0Tex_0031B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_0Vtx_000250[5], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 2, 5, 0, 2, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(9, 10, 8, 0, 10, 11, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(16, 12, 17, 0, 12, 14, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(22, 23, 20, 0, 23, 18, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 25, 27, 26, 0),
    gsSP2Triangles(28, 29, 26, 0, 29, 24, 26, 0),
    gsSP2Triangles(30, 31, 8, 0, 31, 6, 8, 0),
    gsSPVertex(&bdan_room_0Vtx_000250[37], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 6, 0, 9, 4, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 10, 0),
    gsSP2Triangles(13, 10, 12, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 18, 16, 0, 19, 15, 17, 0),
    gsSP2Triangles(19, 20, 15, 0, 3, 1, 21, 0),
    gsSP2Triangles(1, 22, 21, 0, 23, 24, 21, 0),
    gsSP2Triangles(24, 3, 21, 0, 6, 25, 26, 0),
    gsSP2Triangles(6, 7, 25, 0, 27, 6, 26, 0),
    gsSP2Triangles(27, 8, 6, 0, 27, 28, 29, 0),
    gsSP2Triangles(29, 8, 27, 0, 9, 8, 30, 0),
    gsSP1Triangle(31, 7, 5, 0),
    gsSPVertex(&bdan_room_0Vtx_000250[69], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 3, 2, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 20, 18, 0, 20, 21, 18, 0),
    gsSP2Triangles(21, 22, 18, 0, 22, 21, 12, 0),
    gsSP2Triangles(21, 13, 12, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 23, 27, 28, 0),
    gsSP2Triangles(23, 28, 24, 0, 28, 27, 7, 0),
    gsSP2Triangles(28, 7, 6, 0, 26, 29, 30, 0),
    gsSP2Triangles(14, 9, 8, 0, 15, 14, 8, 0),
    gsSPVertex(&bdan_room_0Vtx_000250[100], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 5, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 18, 17, 0),
    gsSP2Triangles(19, 17, 20, 0, 14, 21, 19, 0),
    gsSP2Triangles(14, 19, 20, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 24, 25, 0, 26, 25, 24, 0),
    gsSP2Triangles(26, 24, 27, 0, 26, 27, 28, 0),
    gsSP1Triangle(29, 26, 28, 0),
    gsSPVertex(&bdan_room_0Vtx_000250[130], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 10, 9, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 15, 16, 11, 0),
    gsSP2Triangles(16, 12, 11, 0, 1, 0, 15, 0),
    gsSP2Triangles(0, 16, 15, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 21, 24, 0),
    gsSP2Triangles(24, 25, 23, 0, 26, 27, 23, 0),
    gsSP2Triangles(27, 21, 23, 0, 26, 28, 27, 0),
    gsSP2Triangles(28, 18, 27, 0, 29, 30, 31, 0),
    gsSP1Triangle(30, 6, 31, 0),
    gsSPVertex(&bdan_room_0Vtx_000250[162], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 4, 6, 0, 8, 9, 4, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 10, 0),
    gsSP2Triangles(13, 10, 12, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 18, 16, 0, 15, 19, 18, 0),
    gsSP2Triangles(15, 20, 19, 0, 3, 1, 21, 0),
    gsSP2Triangles(1, 22, 21, 0, 23, 24, 21, 0),
    gsSP2Triangles(24, 3, 21, 0, 25, 5, 2, 0),
    gsSP2Triangles(5, 0, 2, 0, 26, 8, 2, 0),
    gsSP2Triangles(8, 25, 2, 0, 10, 14, 4, 0),
    gsSP2Triangles(14, 7, 4, 0, 9, 11, 4, 0),
    gsSP2Triangles(11, 10, 4, 0, 27, 28, 29, 0),
    gsSP2Triangles(27, 30, 28, 0, 30, 31, 28, 0),
    gsSPVertex(&bdan_room_0Vtx_000250[194], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_0Tex_002DB8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_0Vtx_000250[197], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 1, 5, 3, 0),
    gsSP2Triangles(5, 6, 3, 0, 5, 7, 6, 0),
    gsSP2Triangles(5, 8, 7, 0, 8, 9, 7, 0),
    gsSP2Triangles(8, 10, 11, 0, 10, 12, 13, 0),
    gsSP2Triangles(10, 14, 12, 0, 14, 15, 12, 0),
    gsSP2Triangles(14, 16, 15, 0, 14, 17, 16, 0),
    gsSP2Triangles(17, 18, 16, 0, 17, 19, 18, 0),
    gsSP2Triangles(17, 20, 19, 0, 21, 22, 4, 0),
    gsSP2Triangles(22, 1, 4, 0, 22, 23, 1, 0),
    gsSP2Triangles(23, 5, 1, 0, 24, 8, 5, 0),
    gsSP2Triangles(23, 24, 5, 0, 24, 25, 10, 0),
    gsSP2Triangles(24, 10, 8, 0, 25, 26, 14, 0),
    gsSP2Triangles(25, 14, 10, 0, 26, 17, 14, 0),
    gsSP2Triangles(26, 27, 17, 0, 27, 20, 17, 0),
    gsSP2Triangles(27, 28, 20, 0, 4, 29, 30, 0),
    gsSP1Triangle(4, 30, 21, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_0Tex_0039B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_0Vtx_000250[228], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(12, 11, 10, 0, 13, 12, 10, 0),
    gsSP2Triangles(14, 10, 9, 0, 13, 10, 14, 0),
    gsSP2Triangles(14, 9, 15, 0, 16, 13, 14, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 23, 21, 0, 23, 14, 21, 0),
    gsSP2Triangles(14, 15, 21, 0, 24, 20, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 26, 28, 0),
    gsSP1Triangle(30, 29, 31, 0),
    gsSPVertex(&bdan_room_0Vtx_000250[260], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 7, 0),
    gsSP2Triangles(9, 5, 7, 0, 10, 11, 9, 0),
    gsSP2Triangles(12, 11, 10, 0, 13, 12, 14, 0),
    gsSP2Triangles(15, 13, 14, 0, 16, 15, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 19, 18, 0, 23, 22, 18, 0),
    gsSP2Triangles(24, 25, 22, 0, 24, 22, 23, 0),
    gsSP2Triangles(26, 25, 24, 0, 26, 24, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&bdan_room_0Vtx_000250[291], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 2, 0, 1, 4, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 5, 4, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(8, 12, 11, 0, 8, 6, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 16, 14, 0),
    gsSP2Triangles(13, 9, 16, 0, 13, 10, 9, 0),
    gsSP2Triangles(17, 18, 8, 0, 17, 8, 10, 0),
    gsSP2Triangles(8, 18, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(19, 20, 13, 0, 19, 13, 15, 0),
    gsSP2Triangles(17, 10, 13, 0, 20, 17, 13, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 24, 22, 0),
    gsSP2Triangles(22, 25, 26, 0, 22, 24, 25, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 30, 28, 0),
    gsSP2Triangles(21, 28, 30, 0, 21, 23, 28, 0),
    gsSP2Triangles(9, 24, 21, 0, 9, 11, 24, 0),
    gsSP2Triangles(24, 12, 25, 0, 24, 11, 12, 0),
    gsSP2Triangles(14, 30, 27, 0, 14, 16, 30, 0),
    gsSP2Triangles(16, 9, 30, 0, 9, 21, 30, 0),
    gsSPVertex(&bdan_room_0Vtx_000250[322], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(4, 8, 9, 0, 4, 6, 8, 0),
    gsSP2Triangles(10, 8, 11, 0, 10, 9, 8, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 11, 12, 0),
    gsSP2Triangles(14, 15, 12, 0, 15, 13, 12, 0),
    gsSP2Triangles(5, 16, 17, 0, 5, 7, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 22, 24, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 29, 27, 0),
    gsSP2Triangles(18, 26, 19, 0, 18, 29, 26, 0),
    gsSP2Triangles(22, 30, 23, 0, 27, 24, 28, 0),
    gsSP2Triangles(27, 25, 24, 0, 16, 20, 17, 0),
    gsSP1Triangle(16, 21, 20, 0),
    gsSPVertex(&bdan_room_0Vtx_000250[353], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 11, 13, 0, 6, 12, 11, 0),
    gsSP2Triangles(7, 6, 11, 0, 4, 10, 5, 0),
    gsSP2Triangles(4, 8, 10, 0, 1, 0, 13, 0),
    gsSP2Triangles(0, 14, 13, 0, 2, 15, 16, 0),
    gsSP2Triangles(3, 2, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 17, 21, 22, 0),
    gsSP2Triangles(18, 17, 22, 0, 23, 24, 22, 0),
    gsSP2Triangles(21, 23, 22, 0, 23, 25, 26, 0),
    gsSP2Triangles(24, 23, 26, 0, 16, 15, 26, 0),
    gsSP2Triangles(25, 16, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 30, 28, 0),
    gsSPVertex(&bdan_room_0Vtx_000250[384], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 0, 5, 0, 0, 2, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(3, 8, 1, 0, 8, 9, 1, 0),
    gsSP2Triangles(0, 10, 3, 0, 10, 11, 3, 0),
    gsSP2Triangles(12, 10, 4, 0, 10, 0, 4, 0),
    gsSP2Triangles(13, 6, 14, 0, 6, 8, 14, 0),
    gsSP2Triangles(11, 14, 3, 0, 14, 8, 3, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(15, 18, 19, 0, 20, 15, 19, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 21, 23, 0),
    gsSP2Triangles(23, 22, 17, 0, 16, 23, 17, 0),
    gsSP2Triangles(2, 1, 15, 0, 1, 16, 15, 0),
    gsSP2Triangles(20, 5, 15, 0, 5, 2, 15, 0),
    gsSP2Triangles(9, 7, 23, 0, 7, 24, 23, 0),
    gsSP2Triangles(16, 1, 23, 0, 1, 9, 23, 0),
    gsSP2Triangles(21, 24, 25, 0, 21, 25, 26, 0),
    gsSP2Triangles(27, 26, 25, 0, 27, 25, 28, 0),
    gsSP2Triangles(27, 28, 29, 0, 30, 27, 29, 0),
    gsSP1Triangle(31, 6, 13, 0),
    gsSPVertex(&bdan_room_0Vtx_000250[416], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 1, 0, 0, 5, 4, 0, 0),
    gsSP2Triangles(6, 7, 4, 0, 6, 4, 5, 0),
    gsSP2Triangles(8, 7, 6, 0, 9, 8, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 11, 0),
    gsSP2Triangles(13, 15, 14, 0, 16, 17, 15, 0),
    gsSP2Triangles(18, 17, 16, 0, 19, 20, 18, 0),
    gsSP2Triangles(19, 21, 22, 0, 19, 22, 20, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 23, 0),
    gsSP2Triangles(26, 28, 27, 0, 29, 9, 28, 0),
    gsSP1Triangle(29, 8, 9, 0),
    gsSPVertex(&bdan_room_0Vtx_000250[446], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 3, 1, 0),
    gsSP2Triangles(3, 5, 1, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP1Triangle(11, 17, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_0Tex_002DB8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_0Vtx_000250[464], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 8, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 12, 0),
    gsSP2Triangles(3, 18, 19, 0, 3, 19, 20, 0),
    gsSP2Triangles(15, 21, 22, 0, 15, 20, 21, 0),
    gsSP2Triangles(23, 11, 24, 0, 23, 4, 11, 0),
    gsSP2Triangles(2, 1, 25, 0, 2, 25, 26, 0),
    gsSP2Triangles(6, 5, 27, 0, 6, 27, 28, 0),
    gsSP2Triangles(10, 9, 29, 0, 10, 29, 30, 0),
    gsSP2Triangles(14, 13, 31, 0, 14, 31, 29, 0),
    gsSPVertex(&bdan_room_0Vtx_000250[496], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 2, 0, 13, 7, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_0Tex_0039B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_0Vtx_000250[510], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 18, 6, 0, 21, 23, 8, 0),
    gsSPEndDisplayList(),
};

Gfx bdan_room_0DL_002DA8[] = {
    gsSPDisplayList(bdan_room_0DL_002430),
    gsSPEndDisplayList(),
};

u64 bdan_room_0Tex_002DB8[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_0Tex_002DB8.ci8.inc.c"
};

u64 bdan_room_0Tex_0031B8[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_0Tex_0031B8.ci8.inc.c"
};

u64 bdan_room_0Tex_0039B8[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_0Tex_0039B8.ci8.inc.c"
};

u8 bdan_room_0_possiblePadding_003DB8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx bdan_room_0Vtx_003DC0[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_0Vtx_003DC0.vtx.inc"
};

Gfx bdan_room_0DL_003FE0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_0Vtx_003DC0[26], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_015200, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_0139F0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, PRIMITIVE, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 63),
    gsSPVertex(bdan_room_0Vtx_003DC0, 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 4, 5, 2, 0),
    gsSP2Triangles(4, 6, 5, 0, 6, 7, 5, 0),
    gsSP2Triangles(7, 8, 5, 0, 7, 9, 8, 0),
    gsSP2Triangles(9, 10, 8, 0, 10, 11, 8, 0),
    gsSP2Triangles(11, 12, 8, 0, 12, 13, 8, 0),
    gsSP2Triangles(13, 14, 8, 0, 14, 15, 8, 0),
    gsSP2Triangles(15, 16, 8, 0, 16, 17, 8, 0),
    gsSP2Triangles(17, 18, 8, 0, 18, 5, 8, 0),
    gsSP2Triangles(18, 19, 5, 0, 19, 20, 5, 0),
    gsSP2Triangles(20, 2, 5, 0, 20, 21, 2, 0),
    gsSP2Triangles(21, 22, 2, 0, 22, 23, 2, 0),
    gsSP2Triangles(0, 2, 24, 0, 2, 25, 24, 0),
    gsSP1Triangle(2, 23, 25, 0),
    gsSPEndDisplayList(),
};

Gfx bdan_room_0DL_004130[] = {
    gsSPDisplayList(bdan_room_0DL_003FE0),
    gsSPEndDisplayList(),
};

