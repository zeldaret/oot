#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "bdan_room_4.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "bdan_scene.h"
#include "bdan_room_0.h"
#include "bdan_room_1.h"
#include "bdan_room_2.h"
#include "bdan_room_3.h"
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

SceneCmd bdan_room_4Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(bdan_room_4AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&bdan_room_4PolygonType0_000150),
    SCENE_CMD_OBJECT_LIST(10, bdan_room_4ObjectList_000058),
    SCENE_CMD_ACTOR_LIST(14, bdan_room_4ActorList_00006C),
    SCENE_CMD_END(),
};

SceneCmd* bdan_room_4AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    bdan_room_4Set_000170,
};

s16 bdan_room_4ObjectList_000058[] = {
    OBJECT_BDAN_OBJECTS,
    OBJECT_KUSA,
    OBJECT_D_HSBLOCK,
    OBJECT_RR,
    OBJECT_ZF,
    OBJECT_BROB,
    OBJECT_D_LIFT,
    OBJECT_COW,
    OBJECT_GI_SHIELD_1,
    OBJECT_GI_SHIELD_2,
};

ActorEntry bdan_room_4ActorList_00006C[] = {
    { ACTOR_OBJ_HSBLOCK,    {  -1381,    -17,  -2115 }, {      0,      0,      0 }, 0x3DC1 },
    { ACTOR_OBJ_HSBLOCK,    {  -1341,    -17,  -2115 }, {      0,      0,      0 }, 0x3DC1 },
    { ACTOR_OBJ_HSBLOCK,    {  -1237,    -81,  -1585 }, {      0, 0X4000, 0X4000 }, 0x3DC1 },
    { ACTOR_OBJ_HSBLOCK,    {  -1277,    -81,  -1586 }, { 0X4000,      0,      0 }, 0x3DC1 },
    { ACTOR_EN_KUSA,        {  -1089,    -40,  -1489 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_BROB,        {  -1353,    -20,  -1740 }, {      0,      0,      0 }, 0x00FF },
    { ACTOR_EN_BROB,        {  -1113,    -40,  -1711 }, {      0,      0,      0 }, 0x00FF },
    { ACTOR_EN_ZF,          {  -1229,    632,  -1446 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_COW,         {  -1316,    256,  -1211 }, {      0, 0X80B6,      0 }, 0x0000 },
    { ACTOR_EN_COW,         {  -1257,   -108,  -1552 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_BDAN_SWITCH, {   -813,     79,  -1707 }, {      0,      0,      0 }, 0x1200 },
    { ACTOR_OBJ_KIBAKO,     {  -1341,    -12,  -2116 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO,     {  -1381,    -12,  -2115 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_WONDER_ITEM, {  -1315,    271,  -1259 }, {      0,      0,    0X4 }, 0x19BD },
};

u8 bdan_room_4_possiblePadding_00014C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 bdan_room_4PolygonType0_000150 = { 
    0, 1,
    bdan_room_4PolygonDlist_00015C,
    bdan_room_4PolygonDlist_00015C + ARRAY_COUNTU(bdan_room_4PolygonDlist_00015C)
};

PolygonDlist bdan_room_4PolygonDlist_00015C[1] = {
    { bdan_room_4DL_002B20, bdan_room_4DL_0040F0 },
};

s32 bdan_room_4_terminatorMaybe_000164 = { 0x01000000 };

u8 bdan_room_4_possiblePadding_000168[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd bdan_room_4Set_000170[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&bdan_room_4PolygonType0_000150),
    SCENE_CMD_OBJECT_LIST(4, bdan_room_4ObjectList_0001B0),
    SCENE_CMD_ACTOR_LIST(3, bdan_room_4ActorList_0001B8),
    SCENE_CMD_END(),
};

s16 bdan_room_4ObjectList_0001B0[] = {
    OBJECT_BDAN_OBJECTS,
    OBJECT_RU1,
    OBJECT_OKUTA,
    OBJECT_BROB,
};

ActorEntry bdan_room_4ActorList_0001B8[] = {
    { ACTOR_EN_OKUTA, {  -1223,    -40,  -1479 }, {      0, 0X80B6,      0 }, 0x0000 },
    { ACTOR_EN_BROB,  {  -1104,    -40,  -1700 }, {      0, 0XC000,      0 }, 0x00FF },
    { ACTOR_EN_BROB,  {  -1363,    -40,  -1700 }, {      0, 0X80B6,      0 }, 0x00FF },
};

u8 bdan_room_4_possiblePadding_0001E8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx bdan_room_4Vtx_0001F0[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_4Vtx_0001F0.vtx.inc"
};

Gfx bdan_room_4DL_001DA0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_4Vtx_0001F0[435], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_room_4Tex_002B30, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_0139F0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(bdan_room_4Vtx_0001F0, 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 4, 5, 3, 0),
    gsSP1Triangle(5, 6, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_4Tex_002F30, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_4Vtx_0001F0[7], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 1, 4, 0, 2, 4, 3, 0),
    gsSP1Triangle(6, 5, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_4Tex_002B30, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_4Vtx_0001F0[14], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_4Tex_003730, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_4Vtx_0001F0[17], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 12, 0),
    gsSP2Triangles(8, 10, 11, 0, 3, 13, 0, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(18, 20, 22, 0, 20, 23, 22, 0),
    gsSP2Triangles(20, 21, 24, 0, 21, 25, 24, 0),
    gsSP2Triangles(20, 24, 23, 0, 24, 26, 23, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 30, 28, 0),
    gsSP2Triangles(27, 29, 19, 0, 29, 21, 19, 0),
    gsSP1Triangle(29, 28, 31, 0),
    gsSPVertex(&bdan_room_4Vtx_0001F0[49], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(2, 5, 4, 0, 6, 7, 8, 0),
    gsSP2Triangles(7, 9, 8, 0, 6, 8, 10, 0),
    gsSP2Triangles(8, 11, 10, 0, 8, 9, 12, 0),
    gsSP2Triangles(9, 13, 12, 0, 8, 12, 11, 0),
    gsSP2Triangles(12, 14, 11, 0, 15, 9, 7, 0),
    gsSP2Triangles(15, 16, 9, 0, 16, 17, 9, 0),
    gsSP2Triangles(17, 13, 9, 0, 18, 19, 20, 0),
    gsSP2Triangles(19, 21, 20, 0, 22, 18, 23, 0),
    gsSP2Triangles(18, 20, 23, 0, 24, 22, 23, 0),
    gsSP2Triangles(25, 24, 26, 0, 24, 23, 26, 0),
    gsSP2Triangles(27, 25, 26, 0, 27, 26, 15, 0),
    gsSP2Triangles(26, 16, 15, 0, 20, 21, 28, 0),
    gsSP2Triangles(21, 29, 28, 0, 23, 20, 30, 0),
    gsSP2Triangles(20, 28, 30, 0, 26, 23, 31, 0),
    gsSP1Triangle(23, 30, 31, 0),
    gsSPVertex(&bdan_room_4Vtx_0001F0[81], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(8, 9, 14, 0, 9, 15, 14, 0),
    gsSP2Triangles(13, 8, 16, 0, 8, 14, 16, 0),
    gsSP2Triangles(12, 13, 17, 0, 13, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(18, 20, 7, 0, 20, 9, 7, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsSP2Triangles(20, 22, 9, 0, 22, 15, 9, 0),
    gsSP2Triangles(24, 25, 18, 0, 25, 19, 18, 0),
    gsSP2Triangles(24, 18, 26, 0, 18, 7, 26, 0),
    gsSP2Triangles(27, 26, 6, 0, 26, 7, 6, 0),
    gsSP2Triangles(28, 29, 27, 0, 30, 28, 6, 0),
    gsSP1Triangle(28, 27, 6, 0),
    gsSPVertex(&bdan_room_4Vtx_0001F0[112], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 0, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(14, 10, 12, 0, 12, 13, 15, 0),
    gsSP2Triangles(13, 16, 15, 0, 17, 15, 18, 0),
    gsSP2Triangles(15, 16, 18, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 20, 19, 0, 21, 22, 23, 0),
    gsSP2Triangles(22, 24, 23, 0, 21, 23, 25, 0),
    gsSP2Triangles(23, 26, 25, 0, 27, 25, 28, 0),
    gsSP2Triangles(25, 26, 28, 0, 27, 28, 29, 0),
    gsSP2Triangles(28, 30, 29, 0, 27, 29, 31, 0),
    gsSPVertex(&bdan_room_4Vtx_0001F0[144], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 1, 0, 0, 5, 6, 4, 0),
    gsSP2Triangles(5, 4, 0, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 7, 0, 13, 8, 7, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 13, 12, 0, 19, 15, 14, 0),
    gsSP2Triangles(3, 20, 19, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 27, 25, 0),
    gsSP2Triangles(24, 28, 27, 0, 24, 29, 28, 0),
    gsSP2Triangles(28, 30, 27, 0, 27, 31, 25, 0),
    gsSPVertex(&bdan_room_4Vtx_0001F0[176], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 2, 4, 0, 2, 5, 4, 0),
    gsSP2Triangles(6, 1, 0, 0, 0, 4, 7, 0),
    gsSP2Triangles(6, 0, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 11, 9, 0, 8, 10, 1, 0),
    gsSP2Triangles(10, 3, 1, 0, 12, 11, 8, 0),
    gsSP2Triangles(8, 1, 6, 0, 12, 8, 6, 0),
    gsSP2Triangles(13, 14, 15, 0, 14, 16, 15, 0),
    gsSP2Triangles(13, 15, 11, 0, 15, 9, 11, 0),
    gsSP2Triangles(17, 14, 13, 0, 13, 11, 12, 0),
    gsSP2Triangles(17, 13, 12, 0, 18, 16, 14, 0),
    gsSP2Triangles(18, 19, 16, 0, 20, 21, 18, 0),
    gsSP2Triangles(18, 14, 17, 0, 20, 18, 17, 0),
    gsSP2Triangles(22, 21, 20, 0, 22, 20, 23, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 21, 0),
    gsSP2Triangles(25, 21, 22, 0, 27, 25, 22, 0),
    gsSP2Triangles(28, 27, 22, 0, 28, 22, 24, 0),
    gsSP2Triangles(28, 24, 29, 0, 30, 31, 4, 0),
    gsSP1Triangle(31, 7, 4, 0),
    gsSPVertex(&bdan_room_4Vtx_0001F0[208], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(4, 7, 0, 0, 0, 2, 8, 0),
    gsSP2Triangles(4, 0, 8, 0, 4, 8, 9, 0),
    gsSP2Triangles(4, 9, 10, 0, 5, 4, 10, 0),
    gsSP2Triangles(5, 10, 11, 0, 12, 13, 5, 0),
    gsSP2Triangles(13, 6, 5, 0, 12, 5, 14, 0),
    gsSP2Triangles(5, 11, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 15, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 20, 15, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 22, 25, 23, 0),
    gsSP2Triangles(25, 26, 23, 0, 17, 16, 26, 0),
    gsSP2Triangles(25, 17, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(27, 29, 30, 0, 30, 29, 21, 0),
    gsSP1Triangle(30, 21, 24, 0),
    gsSPVertex(&bdan_room_4Vtx_0001F0[239], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 11, 13, 0, 13, 12, 0, 0),
    gsSP2Triangles(12, 1, 0, 0, 11, 14, 10, 0),
    gsSP2Triangles(11, 10, 9, 0, 2, 5, 4, 0),
    gsSP2Triangles(3, 2, 4, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 18, 16, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 20, 23, 24, 0),
    gsSP2Triangles(20, 24, 21, 0, 25, 19, 22, 0),
    gsSP2Triangles(25, 22, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(28, 30, 29, 0),
    gsSPVertex(&bdan_room_4Vtx_0001F0[270], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_4Tex_002F30, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_4Vtx_0001F0[274], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_4Tex_002B30, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_4Vtx_0001F0[277], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_4Tex_002F30, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_4Vtx_0001F0[280], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_4Tex_003730, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_4Vtx_0001F0[284], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(2, 4, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 1, 0, 0, 8, 9, 1, 0),
    gsSP1Triangle(10, 9, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_4Tex_002B30, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_4Vtx_0001F0[295], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_4Tex_003730, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_4Vtx_0001F0[302], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 7, 6, 0, 8, 9, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_4Tex_002B30, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_4Vtx_0001F0[312], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 3, 5, 1, 0),
    gsSP2Triangles(5, 6, 1, 0, 1, 7, 2, 0),
    gsSP1Triangle(8, 9, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_4Tex_003730, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_4Vtx_0001F0[323], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_4Tex_002B30, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_4Vtx_0001F0[327], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 3, 8, 0),
    gsSP1Triangle(3, 6, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_4Tex_003730, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_4Vtx_0001F0[336], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_4Tex_002F30, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_4Vtx_0001F0[342], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(3, 4, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_4Tex_002B30, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_4Vtx_0001F0[347], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_4Tex_003730, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_4Vtx_0001F0[352], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_4Tex_002B30, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_4Vtx_0001F0[358], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_4Tex_003730, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_4Vtx_0001F0[363], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(7, 10, 11, 0, 7, 11, 8, 0),
    gsSP2Triangles(12, 13, 7, 0, 12, 7, 6, 0),
    gsSP2Triangles(13, 14, 10, 0, 13, 10, 7, 0),
    gsSP2Triangles(1, 0, 15, 0, 1, 15, 16, 0),
    gsSP2Triangles(0, 4, 17, 0, 0, 17, 15, 0),
    gsSP2Triangles(16, 15, 13, 0, 16, 13, 12, 0),
    gsSP2Triangles(15, 17, 14, 0, 15, 14, 13, 0),
    gsSP2Triangles(18, 19, 5, 0, 18, 5, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_4Tex_002B30, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_4Vtx_0001F0[383], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(4, 0, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_4Tex_003730, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_4Vtx_0001F0[388], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(10, 9, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 14, 5, 0, 15, 5, 4, 0),
    gsSP2Triangles(16, 17, 8, 0, 16, 8, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_4Tex_002B30, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_4Vtx_0001F0[406], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_4Tex_003730, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_4Vtx_0001F0[410], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_4Tex_002B30, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_4Vtx_0001F0[414], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(3, 4, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_4Tex_003730, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_4Vtx_0001F0[419], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 13, 11, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0),
    gsSP2Triangles(14, 0, 3, 0, 14, 3, 15, 0),
    gsSPEndDisplayList(),
};

Gfx bdan_room_4DL_002B20[] = {
    gsSPDisplayList(bdan_room_4DL_001DA0),
    gsSPEndDisplayList(),
};

u64 bdan_room_4Tex_002B30[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_4Tex_002B30.ci8.inc.c"
};

u64 bdan_room_4Tex_002F30[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_4Tex_002F30.ci8.inc.c"
};

u64 bdan_room_4Tex_003730[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_4Tex_003730.ci8.inc.c"
};

Vtx bdan_room_4Vtx_003F30[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_4Vtx_003F30.vtx.inc"
};

Gfx bdan_room_4DL_004000[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_4Vtx_003F30[5], 8, 0),
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
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPVertex(bdan_room_4Vtx_003F30, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 1, 0, 4, 0),
    gsSPEndDisplayList(),
};

Gfx bdan_room_4DL_0040F0[] = {
    gsSPDisplayList(bdan_room_4DL_004000),
    gsSPEndDisplayList(),
};

