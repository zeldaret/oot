#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ganon_tou_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "ganon_tou_scene.h"

SceneCmd ganon_tou_room_0Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(ganon_tou_room_0AlternateHeaders0x000050),
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(18, 30, 0),
    SCENE_CMD_WIND_SETTINGS(0, 0, 15, 50),
    SCENE_CMD_MESH(&ganon_tou_room_0PolygonType0_000140),
    SCENE_CMD_OBJECT_LIST(8, ganon_tou_room_0ObjectList_000060),
    SCENE_CMD_ACTOR_LIST(14, ganon_tou_room_0ActorList_000070),
    SCENE_CMD_END(),
};

SceneCmd* ganon_tou_room_0AlternateHeaders0x000050[] = {
    NULL,
    NULL,
    NULL,
    ganon_tou_room_0Set_000160,
};

s16 ganon_tou_room_0ObjectList_000060[] = {
    OBJECT_GJYO_OBJECTS,
    OBJECT_GNDD,
    OBJECT_ZL2,
    OBJECT_HORSE,
    OBJECT_MAMENOKI,
    OBJECT_HEAVY_OBJECT,
    OBJECT_ST,
    OBJECT_EFC_FLASH,
};

ActorEntry ganon_tou_room_0ActorList_000070[] = {
    { ACTOR_BG_GJYO_BRIDGE,  {   -197,   1571,   1037 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_BG_HEAVY_BLOCK,  {   3004,   1186,    517 }, {      0, 0XC000,      0 }, 0x0100 },
    { ACTOR_EN_SW,           {   1059,   1448,    792 }, { 0X4000, 0X6AAB,      0 }, 0x8F01 },
    { ACTOR_OBJ_HAMISHI,     {   2324,   1168,    533 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_OBJ_HAMISHI,     {   1590,   1264,    787 }, {      0,      0,      0 }, 0x0005 },
    { ACTOR_OBJ_HAMISHI,     {   1661,   1269,    748 }, {      0,      0,      0 }, 0x0006 },
    { ACTOR_EN_ISHI,         {   2260,   1169,    560 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_ISHI,         {   1606,   1286,    685 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_ISHI,         {   1766,   1263,    726 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_ISHI,         {   1701,   1272,    661 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_DEMO_EFFECT,     {   -335,   1626,    583 }, {      0,      0,      0 }, 0x1012 },
    { ACTOR_DEMO_6K,         {    100,   1358,   1466 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_WONDER_TALK2, {   2896,   1237,    521 }, {      0, 0XC000,   0X33 }, 0x8EC1 },
    { ACTOR_EN_HORSE,        {   -852,   1375,   2396 }, {      0, 0x4111,      0 }, 0x0FFF },
};

PolygonType0 ganon_tou_room_0PolygonType0_000140 = { 
    0, 1,
    ganon_tou_room_0PolygonDlist_00014C,
    ganon_tou_room_0PolygonDlist_00014C + ARRAY_COUNTU(ganon_tou_room_0PolygonDlist_00014C)
};

PolygonDlist ganon_tou_room_0PolygonDlist_00014C[1] = {
    { ganon_tou_room_0DL_0084A8, ganon_tou_room_0DL_0124B8 },
};

s32 ganon_tou_room_0_terminatorMaybe_000154 = { 0x01000000 };

u8 ganon_tou_room_0_possiblePadding_000158[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd ganon_tou_room_0Set_000160[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x01, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_WIND_SETTINGS(0, 0, 15, 50),
    SCENE_CMD_MESH(&ganon_tou_room_0PolygonType0_000140),
    SCENE_CMD_OBJECT_LIST(5, ganon_tou_room_0ObjectList_0001A8),
    SCENE_CMD_ACTOR_LIST(3, ganon_tou_room_0ActorList_0001B4),
    SCENE_CMD_END(),
};

s16 ganon_tou_room_0ObjectList_0001A8[] = {
    OBJECT_MJIN,
    OBJECT_MJIN_OKA,
    OBJECT_HORSE,
    OBJECT_EFC_FLASH,
    OBJECT_GJYO_OBJECTS,
};

ActorEntry ganon_tou_room_0ActorList_0001B4[] = {
    { ACTOR_BG_GJYO_BRIDGE, {   -197,   1571,   1037 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_DEMO_6K,        {    100,   1358,   1466 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_DEMO_EFFECT,    {   -335,   1626,    583 }, {      0,      0,      0 }, 0x1012 },
};

u8 ganon_tou_room_0_possiblePadding_0001E4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx ganon_tou_room_0Vtx_0001F0[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Vtx_0001F0.vtx.inc"
};

Gfx ganon_tou_room_0DL_000630[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_0001F0[60], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_00E750, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganon_tou_room_0Vtx_0001F0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(11, 12, 9, 0, 13, 14, 15, 0),
    gsSP2Triangles(14, 16, 15, 0, 14, 17, 18, 0),
    gsSP2Triangles(14, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_0001F0[31], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(9, 12, 11, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 21, 23, 0, 25, 26, 27, 0),
    gsSP1Triangle(25, 27, 28, 0),
    gsSPEndDisplayList(),
};

Vtx ganon_tou_room_0Vtx_000768[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Vtx_000768.vtx.inc"
};

Gfx ganon_tou_room_0DL_000C48[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_000768[70], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_00D750, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, ENVIRONMENT, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 140, 140, 140, 255),
    gsSPVertex(ganon_tou_room_0Vtx_000768, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 4, 9, 0),
    gsSP2Triangles(8, 11, 9, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 7, 0, 15, 11, 14, 0),
    gsSP2Triangles(13, 15, 14, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 18, 12, 0, 19, 15, 18, 0),
    gsSP2Triangles(17, 19, 18, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 22, 16, 0, 21, 23, 19, 0),
    gsSP2Triangles(21, 19, 22, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 26, 20, 0, 25, 27, 23, 0),
    gsSP2Triangles(25, 23, 26, 0, 28, 29, 30, 0),
    gsSP1Triangle(31, 28, 30, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_000768[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(5, 8, 6, 0, 6, 9, 10, 0),
    gsSP2Triangles(6, 8, 9, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 14, 12, 0, 11, 15, 14, 0),
    gsSP2Triangles(11, 10, 15, 0, 10, 9, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 13, 17, 0),
    gsSP2Triangles(16, 11, 13, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 18, 20, 0, 19, 16, 18, 0),
    gsSP2Triangles(22, 23, 21, 0, 23, 19, 21, 0),
    gsSP2Triangles(24, 25, 23, 0, 23, 22, 26, 0),
    gsSP2Triangles(23, 26, 24, 0, 25, 24, 27, 0),
    gsSP2Triangles(24, 28, 27, 0, 29, 28, 30, 0),
    gsSP1Triangle(29, 27, 28, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_000768[63], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 5, 2, 6, 0),
    gsSP1Triangle(2, 3, 6, 0),
    gsSPEndDisplayList(),
};

Vtx ganon_tou_room_0Vtx_000DF8[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Vtx_000DF8.vtx.inc"
};

Gfx ganon_tou_room_0DL_0012F8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_000DF8[72], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_008550, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 14),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 14, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 14),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0B000000),
    gsSPVertex(ganon_tou_room_0Vtx_000DF8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 22, 21, 0, 24, 21, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_000DF8[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 16, 0),
    gsSP2Triangles(21, 22, 16, 0, 16, 23, 24, 0),
    gsSP2Triangles(16, 25, 26, 0, 27, 28, 16, 0),
    gsSP1Triangle(29, 30, 16, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_000DF8[61], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 6, 0, 0, 7, 8, 0, 0),
    gsSP1Triangle(0, 9, 10, 0),
    gsSPEndDisplayList(),
};

Vtx ganon_tou_room_0Vtx_001470[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Vtx_001470.vtx.inc"
};

Gfx ganon_tou_room_0DL_0016A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_001470[27], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_00E750, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 216, 216, 216, 255),
    gsSPVertex(ganon_tou_room_0Vtx_001470, 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 6, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 14, 9, 0, 13, 9, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP1Triangle(24, 25, 26, 0),
    gsSPEndDisplayList(),
};

Vtx ganon_tou_room_0Vtx_001788[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Vtx_001788.vtx.inc"
};

Gfx ganon_tou_room_0DL_001CA8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_001788[74], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_00D750, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganon_tou_room_0Vtx_001788, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(20, 22, 21, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_001788[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 1, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 7, 6, 0, 8, 6, 9, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 1, 17, 20, 0),
    gsSP2Triangles(4, 17, 1, 0, 2, 1, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 26, 27, 0, 28, 29, 30, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_001788[63], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 7, 9, 0),
    gsSP1Triangle(9, 7, 10, 0),
    gsSPEndDisplayList(),
};

Vtx ganon_tou_room_0Vtx_001DF8[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Vtx_001DF8.vtx.inc"
};

Gfx ganon_tou_room_0DL_002658[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_001DF8[126], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_00D750, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganon_tou_room_0Vtx_001DF8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(9, 14, 10, 0, 11, 15, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(16, 20, 21, 0, 16, 21, 17, 0),
    gsSP2Triangles(21, 19, 17, 0, 20, 22, 23, 0),
    gsSP2Triangles(20, 23, 21, 0, 23, 19, 21, 0),
    gsSP2Triangles(22, 24, 23, 0, 24, 25, 23, 0),
    gsSP2Triangles(22, 26, 24, 0, 26, 27, 25, 0),
    gsSP2Triangles(26, 25, 24, 0, 28, 29, 30, 0),
    gsSP1Triangle(29, 31, 30, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_001DF8[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 3, 1, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 14, 12, 0, 15, 16, 8, 0),
    gsSP2Triangles(15, 8, 10, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 13, 0),
    gsSP2Triangles(26, 11, 13, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 30, 28, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_001DF8[63], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 12, 11, 0),
    gsSP2Triangles(14, 13, 15, 0, 11, 15, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 21, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(12, 30, 31, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_001DF8[95], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP1Triangle(25, 24, 26, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 0, 0, 0, 255),
    gsSPVertex(&ganon_tou_room_0Vtx_001DF8[122], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx ganon_tou_room_0Vtx_002870[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Vtx_002870.vtx.inc"
};

Gfx ganon_tou_room_0DL_002D60[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_002870[71], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_00D750, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganon_tou_room_0Vtx_002870, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(4, 6, 5, 0, 6, 7, 5, 0),
    gsSP2Triangles(6, 8, 7, 0, 8, 9, 7, 0),
    gsSP2Triangles(8, 10, 9, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 11, 15, 12, 0),
    gsSP2Triangles(15, 16, 12, 0, 16, 17, 12, 0),
    gsSP2Triangles(17, 18, 12, 0, 19, 20, 21, 0),
    gsSP2Triangles(20, 22, 21, 0, 20, 23, 22, 0),
    gsSP2Triangles(23, 24, 22, 0, 23, 25, 24, 0),
    gsSP2Triangles(25, 26, 24, 0, 27, 28, 29, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_002870[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 2, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 5, 4, 0),
    gsSP2Triangles(13, 14, 5, 0, 14, 15, 5, 0),
    gsSP2Triangles(15, 14, 16, 0, 9, 17, 8, 0),
    gsSP2Triangles(9, 18, 17, 0, 19, 8, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 26, 27, 0, 28, 29, 30, 0),
    gsSP1Triangle(31, 30, 29, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_002870[62], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 3, 4, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsSPEndDisplayList(),
};

Vtx ganon_tou_room_0Vtx_002EE0[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Vtx_002EE0.vtx.inc"
};

Gfx ganon_tou_room_0DL_003530[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_002EE0[93], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_00FF50, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 38, 63, 58, 255),
    gsSPVertex(ganon_tou_room_0Vtx_002EE0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_002EE0[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_002EE0[60], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_002EE0[90], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx ganon_tou_room_0Vtx_003678[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Vtx_003678.vtx.inc"
};

Gfx ganon_tou_room_0DL_0037B8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_003678[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 12, 12, 12, 255),
    gsSPVertex(ganon_tou_room_0Vtx_003678, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_00FB50, G_IM_FMT_I, G_IM_SIZ_8b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 140, 140, 140, 255),
    gsSPVertex(&ganon_tou_room_0Vtx_003678[4], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx ganon_tou_room_0Vtx_0038B8[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Vtx_0038B8.vtx.inc"
};

Gfx ganon_tou_room_0DL_003A38[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_0038B8[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_00BF50, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganon_tou_room_0Vtx_0038B8, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx ganon_tou_room_0Vtx_003B08[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Vtx_003B08.vtx.inc"
};

Gfx ganon_tou_room_0DL_004568[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_003B08[158], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 10, 12, 15, 255),
    gsSPVertex(ganon_tou_room_0Vtx_003B08, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_00BF50, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetPrimColor(0, 0, 114, 114, 114, 255),
    gsSPVertex(&ganon_tou_room_0Vtx_003B08[12], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_tou_sceneTex_003280, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&ganon_tou_room_0Vtx_003B08[36], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_00BF50, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganon_tou_room_0Vtx_003B08[68], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_00B950, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganon_tou_room_0Vtx_003B08[72], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 0, 3, 0, 8, 3, 9, 0),
    gsSP2Triangles(10, 4, 7, 0, 10, 7, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(13, 16, 17, 0, 13, 17, 14, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(23, 26, 27, 0, 23, 27, 24, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_003B08[104], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(17, 20, 21, 0, 17, 21, 18, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP2Triangles(30, 22, 25, 0, 30, 25, 31, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_003B08[136], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(13, 16, 17, 0, 13, 17, 14, 0),
    gsSP2Triangles(18, 4, 7, 0, 18, 7, 19, 0),
    gsSP2Triangles(20, 8, 11, 0, 20, 11, 21, 0),
    gsSPEndDisplayList(),
};

Vtx ganon_tou_room_0Vtx_004890[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Vtx_004890.vtx.inc"
};

Gfx ganon_tou_room_0DL_005010[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_004890[112], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_00BF50, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 204, 204, 204, 255),
    gsSPVertex(ganon_tou_room_0Vtx_004890, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_tou_sceneTex_003280, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&ganon_tou_room_0Vtx_004890[20], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_004890[52], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_004890[84], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSPEndDisplayList(),
};

Vtx ganon_tou_room_0Vtx_005200[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Vtx_005200.vtx.inc"
};

Gfx ganon_tou_room_0DL_0058F0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_005200[103], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 12, 12, 12, 255),
    gsSPVertex(ganon_tou_room_0Vtx_005200, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_00B950, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&ganon_tou_room_0Vtx_005200[16], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 31, 30, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_005200[48], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_005200[79], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_00B550, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganon_tou_room_0Vtx_005200[87], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx ganon_tou_room_0Vtx_005AF8[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Vtx_005AF8.vtx.inc"
};

Gfx ganon_tou_room_0DL_005DF8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_005AF8[40], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_00B550, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 204, 204, 204, 255),
    gsSPVertex(ganon_tou_room_0Vtx_005AF8, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 242, 242, 242, 255),
    gsSPVertex(&ganon_tou_room_0Vtx_005AF8[8], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 204, 204, 204, 255),
    gsSPVertex(&ganon_tou_room_0Vtx_005AF8[20], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(3, 2, 8, 0, 3, 8, 9, 0),
    gsSP2Triangles(7, 6, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 1, 0, 0),
    gsSP2Triangles(14, 13, 5, 0, 14, 5, 4, 0),
    gsSPEndDisplayList(),
};

Vtx ganon_tou_room_0Vtx_005F48[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Vtx_005F48.vtx.inc"
};

Gfx ganon_tou_room_0DL_006088[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_005F48[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_00CF50, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganon_tou_room_0Vtx_005F48, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx ganon_tou_room_0Vtx_006148[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Vtx_006148.vtx.inc"
};

Gfx ganon_tou_room_0DL_006548[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_006148[56], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_00BD50, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 104, 140, 150, 255),
    gsSPVertex(ganon_tou_room_0Vtx_006148, 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 5, 4, 3, 0),
    gsSP2Triangles(5, 3, 6, 0, 7, 5, 6, 0),
    gsSP2Triangles(2, 1, 8, 0, 2, 8, 9, 0),
    gsSP2Triangles(3, 2, 9, 0, 3, 9, 10, 0),
    gsSP2Triangles(11, 3, 10, 0, 11, 10, 12, 0),
    gsSP2Triangles(13, 7, 11, 0, 13, 11, 12, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(16, 18, 19, 0, 16, 19, 17, 0),
    gsSP2Triangles(18, 20, 21, 0, 18, 21, 19, 0),
    gsSP2Triangles(20, 22, 23, 0, 20, 23, 21, 0),
    gsSP2Triangles(15, 24, 25, 0, 24, 18, 25, 0),
    gsSP2Triangles(24, 26, 18, 0, 26, 27, 18, 0),
    gsSP2Triangles(27, 20, 18, 0, 27, 22, 20, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 193, 193, 163, 255),
    gsSPVertex(&ganon_tou_room_0Vtx_006148[28], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSP2Triangles(1, 10, 11, 0, 10, 4, 11, 0),
    gsSP2Triangles(10, 12, 4, 0, 12, 13, 4, 0),
    gsSP2Triangles(13, 6, 4, 0, 13, 8, 6, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(16, 18, 19, 0, 16, 19, 17, 0),
    gsSP2Triangles(18, 20, 21, 0, 18, 21, 19, 0),
    gsSP2Triangles(20, 22, 23, 0, 20, 23, 21, 0),
    gsSP2Triangles(15, 24, 25, 0, 24, 18, 25, 0),
    gsSP2Triangles(24, 26, 18, 0, 26, 27, 18, 0),
    gsSP2Triangles(27, 20, 18, 0, 27, 22, 20, 0),
    gsSPEndDisplayList(),
};

Vtx ganon_tou_room_0Vtx_0066F0[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Vtx_0066F0.vtx.inc"
};

Gfx ganon_tou_room_0DL_006C50[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_0066F0[78], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_00B150, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganon_tou_room_0Vtx_0066F0, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_010550, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 15, 13, 10, 255),
    gsSPVertex(&ganon_tou_room_0Vtx_0066F0[24], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&ganon_tou_room_0Vtx_0066F0[36], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 4, 7, 0, 9, 8, 7, 0),
    gsSP2Triangles(9, 7, 6, 0, 4, 8, 10, 0),
    gsSP2Triangles(11, 5, 4, 0, 11, 4, 10, 0),
    gsSP2Triangles(10, 8, 12, 0, 11, 10, 12, 0),
    gsSP2Triangles(0, 13, 1, 0, 0, 14, 13, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(13, 3, 1, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 3, 22, 0, 3, 13, 22, 0),
    gsSP2Triangles(13, 23, 22, 0, 13, 14, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_010150, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganon_tou_room_0Vtx_0066F0[60], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_00B150, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganon_tou_room_0Vtx_0066F0[72], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPEndDisplayList(),
};

Vtx ganon_tou_room_0Vtx_006EB0[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Vtx_006EB0.vtx.inc"
};

Gfx ganon_tou_room_0DL_007600[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_006EB0[109], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_00FF50, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganon_tou_room_0Vtx_006EB0, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_00F750, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetPrimColor(0, 0, 178, 178, 178, 255),
    gsSPVertex(&ganon_tou_room_0Vtx_006EB0[24], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 246, 246, 241, 255),
    gsSPVertex(&ganon_tou_room_0Vtx_006EB0[34], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(24, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_006EB0[66], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_006EB0[97], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx ganon_tou_room_0Vtx_0077F0[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Vtx_0077F0.vtx.inc"
};

Gfx ganon_tou_room_0DL_0079B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_0077F0[20], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_00A150, G_IM_FMT_RGBA, G_IM_SIZ_16b, 128, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 7, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 246, 246, 241, 255),
    gsSPVertex(ganon_tou_room_0Vtx_0077F0, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_009150, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganon_tou_room_0Vtx_0077F0[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_008F50, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganon_tou_room_0Vtx_0077F0[12], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_008D50, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganon_tou_room_0Vtx_0077F0[16], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx ganon_tou_room_0Vtx_007B60[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Vtx_007B60.vtx.inc"
};

Gfx ganon_tou_room_0DL_0082C0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_007B60[110], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_00F750, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 17, 8, 11, 255),
    gsSPVertex(ganon_tou_room_0Vtx_007B60, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&ganon_tou_room_0Vtx_007B60[10], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 7, 6, 0, 8, 6, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(10, 13, 14, 0, 10, 14, 15, 0),
    gsSP2Triangles(16, 0, 3, 0, 16, 3, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_007B60[40], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_007B60[72], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 8, 11, 0, 12, 11, 13, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0),
    gsSP2Triangles(16, 0, 17, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(27, 8, 28, 0, 27, 28, 29, 0),
    gsSP1Triangle(30, 4, 31, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_007B60[104], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPEndDisplayList(),
};

Gfx ganon_tou_room_0DL_0084A8[] = {
    gsSPDisplayList(ganon_tou_room_0DL_000630),
    gsSPDisplayList(ganon_tou_room_0DL_000C48),
    gsSPDisplayList(ganon_tou_room_0DL_0012F8),
    gsSPDisplayList(ganon_tou_room_0DL_0016A0),
    gsSPDisplayList(ganon_tou_room_0DL_001CA8),
    gsSPDisplayList(ganon_tou_room_0DL_002658),
    gsSPDisplayList(ganon_tou_room_0DL_002D60),
    gsSPDisplayList(ganon_tou_room_0DL_003530),
    gsSPDisplayList(ganon_tou_room_0DL_0037B8),
    gsSPDisplayList(ganon_tou_room_0DL_003A38),
    gsSPDisplayList(ganon_tou_room_0DL_004568),
    gsSPDisplayList(ganon_tou_room_0DL_005010),
    gsSPDisplayList(ganon_tou_room_0DL_0058F0),
    gsSPDisplayList(ganon_tou_room_0DL_005DF8),
    gsSPDisplayList(ganon_tou_room_0DL_006088),
    gsSPDisplayList(ganon_tou_room_0DL_006548),
    gsSPDisplayList(ganon_tou_room_0DL_006C50),
    gsSPDisplayList(ganon_tou_room_0DL_007600),
    gsSPDisplayList(ganon_tou_room_0DL_0079B0),
    gsSPDisplayList(ganon_tou_room_0DL_0082C0),
    gsSPEndDisplayList(),
};

u64 ganon_tou_room_0Tex_008550[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Tex_008550.rgba16.inc.c"
};

u64 ganon_tou_room_0Tex_008D50[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Tex_008D50.rgba16.inc.c"
};

u64 ganon_tou_room_0Tex_008F50[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Tex_008F50.rgba16.inc.c"
};

u64 ganon_tou_room_0Tex_009150[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Tex_009150.rgba16.inc.c"
};

u64 ganon_tou_room_0Tex_00A150[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Tex_00A150.rgba16.inc.c"
};

u64 ganon_tou_room_0Tex_00B150[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Tex_00B150.rgba16.inc.c"
};

u64 ganon_tou_room_0Tex_00B550[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Tex_00B550.i8.inc.c"
};

u64 ganon_tou_room_0Tex_00B950[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Tex_00B950.i8.inc.c"
};

u64 ganon_tou_room_0Tex_00BD50[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Tex_00BD50.rgba16.inc.c"
};

u64 ganon_tou_room_0Tex_00BF50[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Tex_00BF50.i8.inc.c"
};

u64 ganon_tou_room_0Tex_00CF50[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Tex_00CF50.rgba16.inc.c"
};

u64 ganon_tou_room_0Tex_00D750[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Tex_00D750.rgba16.inc.c"
};

u64 ganon_tou_room_0Tex_00E750[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Tex_00E750.rgba16.inc.c"
};

u64 ganon_tou_room_0Tex_00F750[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Tex_00F750.i8.inc.c"
};

u64 ganon_tou_room_0Tex_00FB50[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Tex_00FB50.i8.inc.c"
};

u64 ganon_tou_room_0Tex_00FF50[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Tex_00FF50.rgba16.inc.c"
};

u64 ganon_tou_room_0Tex_010150[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Tex_010150.rgba16.inc.c"
};

u64 ganon_tou_room_0Tex_010550[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Tex_010550.rgba16.inc.c"
};

Vtx ganon_tou_room_0Vtx_010D50[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Vtx_010D50.vtx.inc"
};

Gfx ganon_tou_room_0DL_010E50[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_010D50[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(ganon_tou_room_0Tex_0125F0, G_IM_FMT_IA, 128, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 7, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganon_tou_room_0Vtx_010D50, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx ganon_tou_room_0Vtx_010F10[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Vtx_010F10.vtx.inc"
};

Gfx ganon_tou_room_0DL_011550[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_010F10[92], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_0139F0, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganon_tou_room_0Vtx_010F10, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_010F10[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_010F10[64], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganon_tou_sceneTex_003280, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&ganon_tou_room_0Vtx_010F10[88], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx ganon_tou_room_0Vtx_011718[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Vtx_011718.vtx.inc"
};

Gfx ganon_tou_room_0DL_011A98[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_011718[48], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(ganon_tou_room_0Tex_012DF0, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_4b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 6, 15, G_TX_NOMIRROR | G_TX_WRAP,
                6, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x00FC, 0x00FC),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0,
                       TEXEL1, 0, PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(ganon_tou_room_0Vtx_011718, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(6, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 8, 0, 11, 8, 7, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 13, 0),
    gsSP2Triangles(14, 13, 12, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 16, 0, 17, 16, 15, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 19, 0),
    gsSP2Triangles(20, 19, 18, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 22, 0, 23, 22, 21, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP2Triangles(26, 29, 30, 0, 26, 30, 31, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_011718[32], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(6, 9, 10, 0, 6, 10, 0, 0),
    gsSP2Triangles(6, 0, 5, 0, 11, 12, 2, 0),
    gsSP2Triangles(11, 2, 1, 0, 11, 1, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 11, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx ganon_tou_room_0Vtx_011C10[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Vtx_011C10.vtx.inc"
};

Gfx ganon_tou_room_0DL_011FD0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_011C10[52], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(ganon_tou_room_0Tex_012DF0, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x09000000),
    gsSPVertex(ganon_tou_room_0Vtx_011C10, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 4, 3, 0),
    gsSP2Triangles(5, 3, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 10, 0),
    gsSP2Triangles(6, 10, 7, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 11, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(16, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 21, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 2, 0),
    gsSP2Triangles(26, 2, 1, 0, 29, 9, 8, 0),
    gsSP2Triangles(29, 8, 30, 0, 29, 30, 31, 0),
    gsSPVertex(&ganon_tou_room_0Vtx_011C10[32], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 5, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(10, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 15, 18, 19, 0),
    gsSPEndDisplayList(),
};

Vtx ganon_tou_room_0Vtx_012120[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Vtx_012120.vtx.inc"
};

Gfx ganon_tou_room_0DL_0121E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_012120[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_0135F0, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 229, 229, 229, 255),
    gsSPVertex(ganon_tou_room_0Vtx_012120, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx ganon_tou_room_0Vtx_012298[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Vtx_012298.vtx.inc"
};

Gfx ganon_tou_room_0DL_0123D8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_012298[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganon_tou_room_0Tex_0124F0, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganon_tou_room_0Vtx_012298, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(&ganon_tou_room_0Vtx_012298[3], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsSPEndDisplayList(),
};

Gfx ganon_tou_room_0DL_0124B8[] = {
    gsSPDisplayList(ganon_tou_room_0DL_010E50),
    gsSPDisplayList(ganon_tou_room_0DL_011550),
    gsSPDisplayList(ganon_tou_room_0DL_011A98),
    gsSPDisplayList(ganon_tou_room_0DL_011FD0),
    gsSPDisplayList(ganon_tou_room_0DL_0121E0),
    gsSPDisplayList(ganon_tou_room_0DL_0123D8),
    gsSPEndDisplayList(),
};

u64 ganon_tou_room_0Tex_0124F0[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Tex_0124F0.ia8.inc.c"
};

u64 ganon_tou_room_0Tex_0125F0[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Tex_0125F0.ia4.inc.c"
};

u64 ganon_tou_room_0Tex_012DF0[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Tex_012DF0.i4.inc.c"
};

u64 ganon_tou_room_0Tex_0135F0[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Tex_0135F0.ia8.inc.c"
};

u64 ganon_tou_room_0Tex_0139F0[] = {
#include "assets/scenes/dungeons/ganon_tou/ganon_tou_room_0Tex_0139F0.ia8.inc.c"
};

