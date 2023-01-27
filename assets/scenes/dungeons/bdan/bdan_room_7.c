#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "bdan_room_7.h"
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
#include "bdan_room_8.h"
#include "bdan_room_9.h"
#include "bdan_room_10.h"
#include "bdan_room_11.h"
#include "bdan_room_12.h"
#include "bdan_room_13.h"
#include "bdan_room_14.h"
#include "bdan_room_15.h"

SceneCmd bdan_room_7Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(bdan_room_7AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&bdan_room_7PolygonType0_000130),
    SCENE_CMD_OBJECT_LIST(11, bdan_room_7ObjectList_000058),
    SCENE_CMD_ACTOR_LIST(14, bdan_room_7ActorList_00006C),
    SCENE_CMD_END(),
};

SceneCmd* bdan_room_7AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    bdan_room_7Set_000150,
};

s16 bdan_room_7ObjectList_000058[] = {
    OBJECT_BDAN_OBJECTS,
    OBJECT_TP,
    OBJECT_BXA,
    OBJECT_BUBBLE,
    OBJECT_VALI,
    OBJECT_YDAN_OBJECTS,
    OBJECT_KUSA,
    OBJECT_BOMBIWA,
    OBJECT_ZF,
    OBJECT_VALI,
    OBJECT_BL,
};

ActorEntry bdan_room_7ActorList_00006C[] = {
    { ACTOR_EN_ZF,          {      0,   -340,  -4846 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_RU1,         {      6,   -340,  -4354 }, {      0, 0X8000,      0 }, 0x0206 },
    { ACTOR_BG_BDAN_SWITCH, {      1,   -341,  -5178 }, {      0,      0,      0 }, 0x0D00 },
    { ACTOR_OBJ_BOMBIWA,    {    -37,   -340,  -5173 }, {      0,      0,      0 }, 0x001C },
    { ACTOR_OBJ_BOMBIWA,    {     31,   -340,  -5177 }, {      0, 0X5BBC,      0 }, 0x001C },
    { ACTOR_OBJ_KIBAKO,     {   -666,   -340,  -4671 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO,     {   -512,   -340,  -4592 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_BG_YDAN_SP,     {    827,   -340,  -4687 }, {      0, 0XC000,      0 }, 0x1FD6 },
    { ACTOR_ELF_MSG,        {   -840,   -340,  -4685 }, {   0X1E,    0XB,      0 }, 0x3432 },
    { ACTOR_ELF_MSG,        {   -655,   -340,  -4955 }, {   0X1E,    0XB,      0 }, 0x3532 },
    { ACTOR_EN_BX,          {   -655,   -340,  -4955 }, {      0,      0,      0 }, 0x0A82 },
    { ACTOR_EN_BX,          {   -840,   -340,  -4685 }, {      0, 0X4000,      0 }, 0x0A82 },
    { ACTOR_EN_VALI,        {   -410,   -220,  -4550 }, {      0, 0X2EEF,      0 }, 0xFFFF },
    { ACTOR_EN_VALI,        {    410,   -220,  -4550 }, {      0, 0XD49F,      0 }, 0xFFFF },
};

u8 bdan_room_7_possiblePadding_00012C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 bdan_room_7PolygonType0_000130 = { 
    0, 1,
    bdan_room_7PolygonDlist_00013C,
    bdan_room_7PolygonDlist_00013C + ARRAY_COUNTU(bdan_room_7PolygonDlist_00013C)
};

PolygonDlist bdan_room_7PolygonDlist_00013C[1] = {
    { bdan_room_7DL_002CB8, NULL },
};

s32 bdan_room_7_terminatorMaybe_000144 = { 0x01000000 };

u8 bdan_room_7_possiblePadding_000148[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd bdan_room_7Set_000150[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&bdan_room_7PolygonType0_000130),
    SCENE_CMD_OBJECT_LIST(4, bdan_room_7ObjectList_000190),
    SCENE_CMD_ACTOR_LIST(7, bdan_room_7ActorList_000198),
    SCENE_CMD_END(),
};

s16 bdan_room_7ObjectList_000190[] = {
    OBJECT_BDAN_OBJECTS,
    OBJECT_RU1,
    OBJECT_BXA,
    OBJECT_VALI,
};

ActorEntry bdan_room_7ActorList_000198[] = {
    { ACTOR_EN_VALI,        {   -410,   -220,  -4550 }, {      0, 0X2EEF,      0 }, 0xFFFF },
    { ACTOR_EN_VALI,        {    410,   -220,  -4550 }, {      0, 0XD49F,      0 }, 0xFFFF },
    { ACTOR_EN_BX,          {     -1,   -340,  -5218 }, {      0,      0,      0 }, 0x3B8F },
    { ACTOR_EN_BX,          {    658,   -340,  -5100 }, {      0,      0,      0 }, 0x3B8F },
    { ACTOR_EN_BX,          {   -660,   -340,  -5100 }, {      0,      0,      0 }, 0x3C8F },
    { ACTOR_BG_BDAN_SWITCH, {   -901,   -340,  -4683 }, {      0,      0,      0 }, 0x3F00 },
    { ACTOR_BG_BDAN_SWITCH, {    901,   -340,  -4683 }, {      0,      0,      0 }, 0x3F01 },
};

u8 bdan_room_7_possiblePadding_000208[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx bdan_room_7Vtx_000210[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_7Vtx_000210.vtx.inc"
};

Gfx bdan_room_7DL_001030[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_7Vtx_000210[218], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_room_7Tex_002CD0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_8b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 1, G_TX_NOMIRROR | G_TX_WRAP,
                5, 1),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(bdan_room_7Vtx_000210, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 8, 5, 4, 0),
    gsSP2Triangles(3, 2, 10, 0, 3, 10, 11, 0),
    gsSP2Triangles(12, 13, 1, 0, 12, 1, 0, 0),
    gsSP2Triangles(7, 6, 14, 0, 7, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(19, 18, 24, 0, 19, 24, 25, 0),
    gsSP2Triangles(26, 27, 21, 0, 26, 21, 20, 0),
    gsSP2Triangles(28, 29, 17, 0, 28, 17, 16, 0),
    gsSP2Triangles(23, 22, 30, 0, 23, 30, 31, 0),
    gsSPVertex(&bdan_room_7Vtx_000210[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 8, 9, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(13, 14, 12, 0, 15, 16, 17, 0),
    gsSP2Triangles(16, 18, 17, 0, 18, 19, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(21, 24, 25, 0, 21, 25, 22, 0),
    gsSP2Triangles(23, 26, 27, 0, 23, 27, 28, 0),
    gsSP2Triangles(26, 25, 29, 0, 26, 29, 27, 0),
    gsSPVertex(&bdan_room_7Vtx_000210[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(3, 6, 7, 0, 3, 7, 8, 0),
    gsSP2Triangles(6, 5, 9, 0, 6, 9, 7, 0),
    gsSP2Triangles(8, 7, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(7, 9, 12, 0, 7, 12, 10, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(14, 17, 18, 0, 14, 18, 15, 0),
    gsSP2Triangles(17, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(21, 22, 20, 0, 19, 13, 23, 0),
    gsSP2Triangles(19, 23, 21, 0, 4, 24, 25, 0),
    gsSP2Triangles(24, 26, 25, 0, 26, 27, 25, 0),
    gsSP2Triangles(24, 0, 28, 0, 24, 28, 26, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&bdan_room_7Vtx_000210[94], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 7, 9, 10, 0),
    gsSP2Triangles(7, 10, 8, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 1, 0, 13, 14, 3, 0),
    gsSP2Triangles(13, 3, 1, 0, 15, 16, 2, 0),
    gsSP2Triangles(15, 2, 4, 0, 16, 17, 0, 0),
    gsSP2Triangles(16, 0, 2, 0, 9, 7, 18, 0),
    gsSP2Triangles(9, 18, 19, 0, 7, 6, 20, 0),
    gsSP2Triangles(7, 20, 18, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 23, 25, 26, 0),
    gsSP2Triangles(23, 26, 24, 0, 19, 18, 16, 0),
    gsSP2Triangles(19, 16, 15, 0, 18, 20, 17, 0),
    gsSP2Triangles(18, 17, 16, 0, 12, 21, 24, 0),
    gsSP2Triangles(12, 24, 13, 0, 24, 26, 14, 0),
    gsSP2Triangles(24, 14, 13, 0, 27, 28, 29, 0),
    gsSP2Triangles(27, 30, 28, 0, 27, 31, 30, 0),
    gsSPVertex(&bdan_room_7Vtx_000210[126], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(4, 8, 7, 0, 7, 9, 10, 0),
    gsSP2Triangles(7, 10, 5, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 10, 0, 12, 14, 6, 0),
    gsSP2Triangles(12, 6, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 16, 19, 20, 0),
    gsSP2Triangles(16, 20, 17, 0, 18, 17, 21, 0),
    gsSP2Triangles(18, 21, 22, 0, 17, 20, 23, 0),
    gsSP2Triangles(17, 23, 21, 0, 22, 24, 25, 0),
    gsSP2Triangles(22, 25, 2, 0, 24, 23, 26, 0),
    gsSP2Triangles(24, 26, 25, 0, 1, 27, 28, 0),
    gsSP2Triangles(1, 28, 29, 0, 27, 30, 31, 0),
    gsSP1Triangle(27, 31, 28, 0),
    gsSPVertex(&bdan_room_7Vtx_000210[158], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(6, 10, 9, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 14, 12, 0, 11, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(16, 20, 19, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 24, 22, 0, 21, 25, 24, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP2Triangles(30, 31, 8, 0, 30, 8, 7, 0),
    gsSPVertex(&bdan_room_7Vtx_000210[190], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 1, 0, 8, 1, 0, 0),
    gsSP2Triangles(7, 6, 10, 0, 7, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(15, 14, 25, 0, 15, 25, 24, 0),
    gsSP2Triangles(23, 22, 17, 0, 23, 17, 16, 0),
    gsSPEndDisplayList(),
};

Vtx bdan_room_7Vtx_001418[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_7Vtx_001418.vtx.inc"
};

Gfx bdan_room_7DL_002698[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_7Vtx_001418[288], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_room_7Tex_0030D0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_0139F0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(bdan_room_7Vtx_001418, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(3, 2, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(2, 5, 8, 0, 2, 8, 6, 0),
    gsSP2Triangles(7, 6, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(6, 8, 11, 0, 6, 11, 9, 0),
    gsSP2Triangles(10, 9, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(9, 11, 14, 0, 9, 14, 12, 0),
    gsSP2Triangles(13, 12, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(12, 14, 17, 0, 12, 17, 15, 0),
    gsSP2Triangles(16, 15, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(15, 17, 20, 0, 15, 20, 18, 0),
    gsSP2Triangles(19, 18, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(18, 20, 23, 0, 18, 23, 21, 0),
    gsSP2Triangles(22, 21, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(21, 23, 26, 0, 21, 26, 24, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSPVertex(&bdan_room_7Vtx_001418[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 3, 5, 0, 4, 5, 6, 0),
    gsSP2Triangles(3, 2, 7, 0, 3, 7, 5, 0),
    gsSP2Triangles(6, 5, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(5, 7, 10, 0, 5, 10, 8, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(12, 15, 16, 0, 12, 16, 13, 0),
    gsSP2Triangles(14, 13, 17, 0, 14, 17, 18, 0),
    gsSP2Triangles(13, 16, 19, 0, 13, 19, 17, 0),
    gsSP2Triangles(18, 17, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(17, 19, 22, 0, 17, 22, 20, 0),
    gsSP2Triangles(21, 20, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(20, 22, 25, 0, 20, 25, 23, 0),
    gsSP2Triangles(24, 23, 0, 0, 24, 0, 26, 0),
    gsSP2Triangles(23, 25, 1, 0, 23, 1, 0, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSPVertex(&bdan_room_7Vtx_001418[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 4, 0, 6, 0),
    gsSP2Triangles(5, 7, 1, 0, 5, 1, 0, 0),
    gsSP2Triangles(8, 9, 5, 0, 8, 5, 4, 0),
    gsSP2Triangles(9, 10, 7, 0, 9, 7, 5, 0),
    gsSP2Triangles(11, 12, 9, 0, 11, 9, 8, 0),
    gsSP2Triangles(12, 13, 10, 0, 12, 10, 9, 0),
    gsSP2Triangles(14, 15, 12, 0, 14, 12, 11, 0),
    gsSP2Triangles(15, 16, 13, 0, 15, 13, 12, 0),
    gsSP2Triangles(17, 18, 15, 0, 17, 15, 14, 0),
    gsSP2Triangles(18, 19, 16, 0, 18, 16, 15, 0),
    gsSP2Triangles(20, 21, 18, 0, 20, 18, 17, 0),
    gsSP2Triangles(21, 22, 19, 0, 21, 19, 18, 0),
    gsSP2Triangles(23, 24, 21, 0, 23, 21, 20, 0),
    gsSP2Triangles(24, 25, 22, 0, 24, 22, 21, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP2Triangles(27, 30, 31, 0, 27, 31, 28, 0),
    gsSPVertex(&bdan_room_7Vtx_001418[94], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 1, 0, 6, 1, 0, 0),
    gsSP2Triangles(7, 8, 4, 0, 7, 4, 1, 0),
    gsSP2Triangles(9, 10, 7, 0, 9, 7, 6, 0),
    gsSP2Triangles(10, 11, 8, 0, 10, 8, 7, 0),
    gsSP2Triangles(12, 13, 10, 0, 12, 10, 9, 0),
    gsSP2Triangles(13, 14, 11, 0, 13, 11, 10, 0),
    gsSP2Triangles(15, 16, 13, 0, 15, 13, 12, 0),
    gsSP2Triangles(16, 17, 14, 0, 16, 14, 13, 0),
    gsSP2Triangles(18, 19, 16, 0, 18, 16, 15, 0),
    gsSP2Triangles(19, 20, 17, 0, 19, 17, 16, 0),
    gsSP2Triangles(21, 22, 19, 0, 21, 19, 18, 0),
    gsSP2Triangles(22, 23, 20, 0, 22, 20, 19, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(25, 28, 29, 0, 25, 29, 26, 0),
    gsSP2Triangles(27, 26, 30, 0, 27, 30, 31, 0),
    gsSPVertex(&bdan_room_7Vtx_001418[126], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 3, 5, 0, 4, 5, 6, 0),
    gsSP2Triangles(3, 2, 7, 0, 3, 7, 5, 0),
    gsSP2Triangles(6, 5, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(5, 7, 10, 0, 5, 10, 8, 0),
    gsSP2Triangles(9, 8, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(8, 10, 13, 0, 8, 13, 11, 0),
    gsSP2Triangles(12, 11, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(11, 13, 16, 0, 11, 16, 14, 0),
    gsSP2Triangles(15, 14, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(14, 16, 19, 0, 14, 19, 17, 0),
    gsSP2Triangles(18, 17, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(17, 19, 22, 0, 17, 22, 20, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsSPVertex(&bdan_room_7Vtx_001418[149], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 0, 0, 9, 1, 0, 0),
    gsSP2Triangles(7, 10, 11, 0, 7, 6, 10, 0),
    gsSP2Triangles(3, 12, 13, 0, 3, 2, 12, 0),
    gsSP2Triangles(14, 15, 4, 0, 15, 5, 4, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(19, 18, 24, 0, 18, 25, 24, 0),
    gsSP2Triangles(26, 21, 20, 0, 26, 27, 21, 0),
    gsSP2Triangles(28, 17, 16, 0, 28, 29, 17, 0),
    gsSP2Triangles(23, 22, 30, 0, 22, 31, 30, 0),
    gsSPVertex(&bdan_room_7Vtx_001418[181], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 4, 1, 0, 24, 1, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 27, 29, 28, 0),
    gsSP2Triangles(30, 23, 22, 0, 30, 31, 23, 0),
    gsSPVertex(&bdan_room_7Vtx_001418[213], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(3, 2, 8, 0, 3, 8, 9, 0),
    gsSP2Triangles(7, 6, 10, 0, 7, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(13, 16, 17, 0, 13, 17, 14, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(19, 22, 23, 0, 19, 23, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 27, 25, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 25, 0),
    gsSP2Triangles(30, 31, 14, 0, 31, 15, 14, 0),
    gsSPVertex(&bdan_room_7Vtx_001418[245], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 4, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(11, 14, 15, 0, 11, 15, 12, 0),
    gsSP2Triangles(7, 6, 16, 0, 7, 16, 1, 0),
    gsSP2Triangles(9, 7, 1, 0, 9, 1, 0, 0),
    gsSP2Triangles(13, 12, 17, 0, 13, 17, 18, 0),
    gsSP2Triangles(12, 15, 19, 0, 12, 19, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsSP2Triangles(20, 24, 21, 0, 24, 23, 21, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_7Tex_0030D0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_0139F0),
    gsSPVertex(&bdan_room_7Vtx_001418[270], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(1, 4, 7, 0, 1, 7, 2, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 8, 11, 0, 12, 11, 13, 0),
    gsSP2Triangles(9, 14, 15, 0, 9, 15, 10, 0),
    gsSP2Triangles(14, 16, 17, 0, 14, 17, 15, 0),
    gsSP2Triangles(5, 12, 13, 0, 5, 13, 6, 0),
    gsSPEndDisplayList(),
};

Gfx bdan_room_7DL_002CB8[] = {
    gsSPDisplayList(bdan_room_7DL_001030),
    gsSPDisplayList(bdan_room_7DL_002698),
    gsSPEndDisplayList(),
};

u64 bdan_room_7Tex_002CD0[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_7Tex_002CD0.ci8.inc.c"
};

u64 bdan_room_7Tex_0030D0[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_7Tex_0030D0.ci8.inc.c"
};

