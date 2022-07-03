#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "spot04_room_2.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "spot04_scene.h"
#include "spot04_room_0.h"
#include "spot04_room_1.h"

SceneCmd spot04_room_2Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(spot04_room_2AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(1),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot04_room_2PolygonType2_000150),
    SCENE_CMD_OBJECT_LIST(4, spot04_room_2ObjectList_00007C),
    SCENE_CMD_ACTOR_LIST(12, spot04_room_2ActorList_000084),
    SCENE_CMD_END(),
};

SceneCmd* spot04_room_2AlternateHeaders0x000048[] = {
    NULL,
    spot04_room_2Set_0001D0,
    spot04_room_2Set_000200,
    spot04_room_2Set_000230,
    spot04_room_2Set_000260,
    spot04_room_2Set_000290,
    spot04_room_2Set_0002C0,
    spot04_room_2Set_0002F0,
    spot04_room_2Set_000320,
    spot04_room_2Set_000350,
    spot04_room_2Set_000380,
    spot04_room_2Set_0003B0,
    spot04_room_2Set_0003E0,
};

s16 spot04_room_2ObjectList_00007C[] = {
    OBJECT_KANBAN,
    OBJECT_GOROIWA,
    OBJECT_BOX,
    OBJECT_KUSA,
};

ActorEntry spot04_room_2ActorList_000084[] = {
    { ACTOR_EN_ITEM00,      {  -1009,    120,   1556 }, {      0,      0,      0 }, 0x0F01 },
    { ACTOR_EN_ITEM00,      {   -712,    120,   1857 }, {      0,      0,      0 }, 0x0E01 },
    { ACTOR_EN_KUSA,        {   -995,    120,   1531 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_KUSA,        {   -701,    120,   1882 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_KUSA,        {   -295,    160,   2297 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_WONDER_ITEM, {   -590,    120,   1635 }, {      0,      0,    0X1 }, 0x123F },
    { ACTOR_EN_WONDER_ITEM, {   -584,    120,   1762 }, {      0,      0,    0X1 }, 0x123F },
    { ACTOR_EN_KANBAN,      {   -784,    120,   1675 }, {      0, 0X8000,      0 }, 0x0340 },
    { ACTOR_EN_KANBAN,      {   -273,    160,   2173 }, {      0, 0X6000,      0 }, 0x0345 },
    { ACTOR_EN_KUSA,        {   -757,    120,    708 }, {      0,      0,      0 }, 0xFF00 },
    { ACTOR_EN_GOROIWA,     {   -245,    120,   1870 }, {      0, 0X8000,    0X1 }, 0x0C02 },
    { ACTOR_EN_BOX,         {   -232,    178,   2245 }, {      0,      0,      0 }, 0x04E0 },
};

u8 spot04_room_2_possiblePadding_000144[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 spot04_room_2PolygonType2_000150 = { 
    2, 7,
    spot04_room_2PolygonDlist2_00015C,
    spot04_room_2PolygonDlist2_00015C + ARRAY_COUNTU(spot04_room_2PolygonDlist2_00015C)
};

PolygonDlist2 spot04_room_2PolygonDlist2_00015C[7] = {
    { {   -804,    140,   1161 },   1346, spot04_room_2DL_000840, spot04_room_2DL_004F80 },
    { {   -610,    330,   1854 },    792, spot04_room_2DL_001AC0, NULL },
    { {   -486,    320,    460 },   1916, spot04_room_2DL_001378, NULL },
    { {   -537,    134,   1733 },    188, spot04_room_2DL_002730, NULL },
    { {   -708,    140,    780 },    367, spot04_room_2DL_002AD0, NULL },
    { {   -785,    139,   1219 },    165, spot04_room_2DL_001EC0, NULL },
    { {   -238,    169,   2236 },    109, spot04_room_2DL_002338, NULL },
};

s32 spot04_room_2_terminatorMaybe_0001CC = { 0x01000000 };

SceneCmd spot04_room_2Set_0001D0[] = {
    SCENE_CMD_ECHO_SETTINGS(1),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot04_room_2PolygonType2_000150),
    SCENE_CMD_END(),
};

SceneCmd spot04_room_2Set_000200[] = {
    SCENE_CMD_ECHO_SETTINGS(1),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot04_room_2PolygonType2_000150),
    SCENE_CMD_END(),
};

SceneCmd spot04_room_2Set_000230[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(12, 0, 0),
    SCENE_CMD_MESH(&spot04_room_2PolygonType2_000150),
    SCENE_CMD_END(),
};

SceneCmd spot04_room_2Set_000260[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(12, 0, 0),
    SCENE_CMD_MESH(&spot04_room_2PolygonType2_000150),
    SCENE_CMD_END(),
};

SceneCmd spot04_room_2Set_000290[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(12, 0, 0),
    SCENE_CMD_MESH(&spot04_room_2PolygonType2_000150),
    SCENE_CMD_END(),
};

SceneCmd spot04_room_2Set_0002C0[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(12, 0, 0),
    SCENE_CMD_MESH(&spot04_room_2PolygonType2_000150),
    SCENE_CMD_END(),
};

SceneCmd spot04_room_2Set_0002F0[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&spot04_room_2PolygonType2_000150),
    SCENE_CMD_END(),
};

SceneCmd spot04_room_2Set_000320[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&spot04_room_2PolygonType2_000150),
    SCENE_CMD_END(),
};

SceneCmd spot04_room_2Set_000350[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&spot04_room_2PolygonType2_000150),
    SCENE_CMD_END(),
};

SceneCmd spot04_room_2Set_000380[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&spot04_room_2PolygonType2_000150),
    SCENE_CMD_END(),
};

SceneCmd spot04_room_2Set_0003B0[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(12, 0, 0),
    SCENE_CMD_MESH(&spot04_room_2PolygonType2_000150),
    SCENE_CMD_END(),
};

SceneCmd spot04_room_2Set_0003E0[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&spot04_room_2PolygonType2_000150),
    SCENE_CMD_END(),
};

Vtx spot04_room_2Vtx_000410[] = {
#include "assets/scenes/overworld/spot04/spot04_room_2Vtx_000410.vtx.inc"
};

Gfx spot04_room_2DL_000840[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot04_room_2Vtx_000410[59], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot04_sceneTex_010618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsDPLoadMultiBlock(spot04_sceneTex_00FE18, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 14),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot04_room_2Vtx_000410, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 8, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(10, 8, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(13, 15, 14, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 18, 20, 0, 19, 16, 18, 0),
    gsSP2Triangles(21, 20, 22, 0, 4, 23, 24, 0),
    gsSP2Triangles(4, 24, 25, 0, 26, 27, 28, 0),
    gsSP2Triangles(27, 29, 30, 0, 27, 30, 28, 0),
    gsSP1Triangle(29, 31, 30, 0),
    gsSPVertex(&spot04_room_2Vtx_000410[32], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 4, 0),
    gsSP2Triangles(4, 8, 5, 0, 6, 9, 4, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 11, 0),
    gsSP2Triangles(14, 13, 10, 0, 10, 15, 16, 0),
    gsSP2Triangles(10, 12, 15, 0, 16, 14, 10, 0),
    gsSP2Triangles(15, 17, 18, 0, 15, 18, 19, 0),
    gsSP2Triangles(15, 19, 16, 0, 19, 20, 16, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 24, 22, 0),
    gsSP2Triangles(25, 23, 22, 0, 23, 25, 26, 0),
    gsSPEndDisplayList(),
};

Vtx spot04_room_2Vtx_0009D8[] = {
#include "assets/scenes/overworld/spot04/spot04_room_2Vtx_0009D8.vtx.inc"
};

Gfx spot04_room_2DL_001378[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot04_room_2Vtx_0009D8[146], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot04_sceneTex_00FA18, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(spot04_sceneTLUT_00E010),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot04_room_2Vtx_0009D8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 17, 0, 20, 17, 16, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&spot04_room_2Vtx_0009D8[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&spot04_room_2Vtx_0009D8[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 8, 0, 24, 8, 11, 0),
    gsSP2Triangles(18, 26, 27, 0, 18, 27, 19, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&spot04_room_2Vtx_0009D8[94], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0),
    gsSP2Triangles(24, 25, 26, 0, 25, 27, 28, 0),
    gsSP2Triangles(25, 28, 26, 0, 29, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot04_room_2Tex_002BF8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot04_room_2Vtx_0009D8[126], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot04_sceneTex_00FA18, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot04_room_2Vtx_0009D8[134], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot04_room_2Tex_002BF8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot04_room_2Vtx_0009D8[138], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot04_room_2Tex_002DF8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot04_room_2Vtx_0009D8[142], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot04_room_2Vtx_0016C0[] = {
#include "assets/scenes/overworld/spot04/spot04_room_2Vtx_0016C0.vtx.inc"
};

Gfx spot04_room_2DL_001AC0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot04_room_2Vtx_0016C0[56], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot04_sceneTex_00EA18, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 193, 175, 90, 255),
    gsSPVertex(spot04_room_2Vtx_0016C0, 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot04_sceneTex_00E218, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 230, 250, 156, 255),
    gsSPVertex(&spot04_room_2Vtx_0016C0[28], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSPEndDisplayList(),
};

Vtx spot04_room_2Vtx_001C40[] = {
#include "assets/scenes/overworld/spot04/spot04_room_2Vtx_001C40.vtx.inc"
};

Gfx spot04_room_2DL_001EC0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot04_room_2Vtx_001C40[32], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot04_room_2Tex_0043F8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(spot04_sceneTLUT_00E010),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot04_room_2Vtx_001C40, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 2, 0),
    gsSP2Triangles(4, 6, 5, 0, 6, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 8, 10, 0, 12, 10, 13, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 13, 14, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 88, 88, 88, 255),
    gsSPVertex(&spot04_room_2Vtx_001C40[16], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx spot04_room_2Vtx_002008[] = {
#include "assets/scenes/overworld/spot04/spot04_room_2Vtx_002008.vtx.inc"
};

Gfx spot04_room_2DL_002338[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot04_room_2Vtx_002008[43], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot04_room_2Tex_002FF8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(spot04_sceneTLUT_00E010),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot04_room_2Vtx_002008, 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 1, 0, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 6, 5, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 9, 8, 14, 0),
    gsSP2Triangles(15, 13, 16, 0, 3, 17, 18, 0),
    gsSP2Triangles(17, 19, 18, 0, 16, 13, 12, 0),
    gsSP2Triangles(3, 20, 4, 0, 21, 10, 22, 0),
    gsSP2Triangles(10, 9, 22, 0, 9, 14, 22, 0),
    gsSP2Triangles(14, 23, 22, 0, 23, 14, 15, 0),
    gsSP2Triangles(14, 13, 15, 0, 16, 18, 15, 0),
    gsSP2Triangles(18, 19, 15, 0, 3, 2, 17, 0),
    gsSP2Triangles(2, 24, 17, 0, 24, 2, 25, 0),
    gsSP2Triangles(2, 1, 25, 0, 1, 7, 25, 0),
    gsSP2Triangles(7, 26, 25, 0, 26, 7, 27, 0),
    gsSP2Triangles(7, 6, 27, 0, 6, 11, 27, 0),
    gsSP1Triangle(11, 28, 27, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot04_room_2Tex_0043F8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot04_room_2Vtx_002008[29], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 9, 0),
    gsSP2Triangles(0, 2, 8, 0, 0, 10, 3, 0),
    gsSP2Triangles(11, 10, 0, 0, 5, 7, 12, 0),
    gsSP2Triangles(5, 12, 13, 0, 11, 5, 13, 0),
    gsSPEndDisplayList(),
};

Vtx spot04_room_2Vtx_002510[] = {
#include "assets/scenes/overworld/spot04/spot04_room_2Vtx_002510.vtx.inc"
};

Gfx spot04_room_2DL_002730[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot04_room_2Vtx_002510[26], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot04_room_2Tex_0033F8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 15, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot04_room_2Vtx_002510, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 4, 5, 2, 0),
    gsSP2Triangles(6, 7, 2, 0, 2, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot04_room_2Tex_003BF8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&spot04_room_2Vtx_002510[8], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 8, 5, 4, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSPEndDisplayList(),
};

Vtx spot04_room_2Vtx_002890[] = {
#include "assets/scenes/overworld/spot04/spot04_room_2Vtx_002890.vtx.inc"
};

Gfx spot04_room_2DL_002AD0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot04_room_2Vtx_002890[28], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot04_room_2Tex_0045F8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot04_room_2Vtx_002890, 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSPEndDisplayList(),
};

Gfx gSpot04DL_002BB8[] = {
    gsSPDisplayList(spot04_room_2DL_000840),
    gsSPDisplayList(spot04_room_2DL_001378),
    gsSPDisplayList(spot04_room_2DL_001AC0),
    gsSPDisplayList(spot04_room_2DL_001EC0),
    gsSPDisplayList(spot04_room_2DL_002338),
    gsSPDisplayList(spot04_room_2DL_002730),
    gsSPDisplayList(spot04_room_2DL_002AD0),
    gsSPEndDisplayList(),
};

u64 spot04_room_2Tex_002BF8[] = {
#include "assets/scenes/overworld/spot04/spot04_room_2Tex_002BF8.ci8.inc.c"
};

u64 spot04_room_2Tex_002DF8[] = {
#include "assets/scenes/overworld/spot04/spot04_room_2Tex_002DF8.ci8.inc.c"
};

u64 spot04_room_2Tex_002FF8[] = {
#include "assets/scenes/overworld/spot04/spot04_room_2Tex_002FF8.ci8.inc.c"
};

u64 spot04_room_2Tex_0033F8[] = {
#include "assets/scenes/overworld/spot04/spot04_room_2Tex_0033F8.rgba16.inc.c"
};

u64 spot04_room_2Tex_003BF8[] = {
#include "assets/scenes/overworld/spot04/spot04_room_2Tex_003BF8.rgba16.inc.c"
};

u64 spot04_room_2Tex_0043F8[] = {
#include "assets/scenes/overworld/spot04/spot04_room_2Tex_0043F8.ci8.inc.c"
};

u64 spot04_room_2Tex_0045F8[] = {
#include "assets/scenes/overworld/spot04/spot04_room_2Tex_0045F8.rgba16.inc.c"
};

u8 spot04_room_2_possiblePadding_004DF8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx spot04_room_2Vtx_004E00[] = {
#include "assets/scenes/overworld/spot04/spot04_room_2Vtx_004E00.vtx.inc"
};

Gfx spot04_room_2DL_004F80[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot04_room_2Vtx_004E00[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(spot04_sceneTex_00F218, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_OVL_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 130, 110, 60, 160),
    gsSPVertex(spot04_room_2Vtx_004E00, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx gSpot04DL_005058[] = {
    gsSPDisplayList(spot04_room_2DL_004F80),
    gsSPEndDisplayList(),
};

