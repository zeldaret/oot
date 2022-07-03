#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "MIZUsin_room_20.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "MIZUsin_scene.h"
#include "MIZUsin_room_0.h"
#include "MIZUsin_room_1.h"
#include "MIZUsin_room_2.h"
#include "MIZUsin_room_3.h"
#include "MIZUsin_room_4.h"
#include "MIZUsin_room_5.h"
#include "MIZUsin_room_6.h"
#include "MIZUsin_room_7.h"
#include "MIZUsin_room_8.h"
#include "MIZUsin_room_9.h"
#include "MIZUsin_room_10.h"
#include "MIZUsin_room_11.h"
#include "MIZUsin_room_12.h"
#include "MIZUsin_room_13.h"
#include "MIZUsin_room_14.h"
#include "MIZUsin_room_15.h"
#include "MIZUsin_room_16.h"
#include "MIZUsin_room_17.h"
#include "MIZUsin_room_18.h"
#include "MIZUsin_room_19.h"
#include "MIZUsin_room_21.h"
#include "MIZUsin_room_22.h"

SceneCmd MIZUsin_room_20Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&MIZUsin_room_20PolygonType2_0001B0),
    SCENE_CMD_OBJECT_LIST(8, MIZUsin_room_20ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(22, MIZUsin_room_20ActorList_000050),
    SCENE_CMD_END(),
};

s16 MIZUsin_room_20ObjectList_000040[] = {
    OBJECT_MIZU_OBJECTS,
    OBJECT_BOX,
    OBJECT_D_HSBLOCK,
    OBJECT_KIBAKO2,
    OBJECT_ZF,
    OBJECT_ST,
    OBJECT_GI_SUTARU,
    OBJECT_SYOKUDAI,
};

ActorEntry MIZUsin_room_20ActorList_000050[] = {
    { ACTOR_EN_ZF,           {    653,    706,    953 }, {      0, 0X8000,      0 }, 0xFFFF },
    { ACTOR_EN_ZF,           {    658,    992,    184 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_WONDER_ITEM,  {    659,    536,   1034 }, {      0,      0,    0X6 }, 0x197F },
    { ACTOR_BG_MIZU_WATER,   {    620,    765,    820 }, {      0,      0,      0 }, 0xFF00 },
    { ACTOR_OBJ_KIBAKO2,     {    816,    454,    510 }, {      0, 0XC000,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {    816,    454,    570 }, {      0, 0XC000,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {    525,    470,    954 }, {      0, 0X4000,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {    524,    470,    839 }, {      0, 0X4000,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {    795,    470,    810 }, {      0, 0X4000,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {    795,    470,    870 }, {      0, 0X4000,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {    686,    470,   1016 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {    270,    460,    504 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {    437,    460,    576 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {    698,    460,    399 }, {      0, 0X4000,      0 }, 0xFFFF },
    { ACTOR_EN_SW,           {    820,    454,    540 }, {      0, 0X4000,      0 }, 0x8601 },
    { ACTOR_OBJ_SYOKUDAI,    {    742,    454,    500 }, {      0,      0,      0 }, 0x1062 },
    { ACTOR_BG_MIZU_SHUTTER, {    721,    460,    538 }, {      0, 0XC000,      0 }, 0x0FE2 },
    { ACTOR_OBJ_TSUBO,       {    512,    460,    579 }, {      0,      0,      0 }, 0x4402 },
    { ACTOR_OBJ_TSUBO,       {    602,    470,   1022 }, {      0,      0,      0 }, 0x4609 },
    { ACTOR_OBJ_TSUBO,       {    789,    470,    947 }, {      0,      0,      0 }, 0x540E },
    { ACTOR_OBJ_TSUBO,       {    768,    454,    565 }, {      0,      0,      0 }, 0x6E03 },
    { ACTOR_OBJ_TSUBO,       {    767,    454,    517 }, {      0,      0,      0 }, 0x7E03 },
};

PolygonType2 MIZUsin_room_20PolygonType2_0001B0 = { 
    2, 10,
    MIZUsin_room_20PolygonDlist2_0001BC,
    MIZUsin_room_20PolygonDlist2_0001BC + ARRAY_COUNTU(MIZUsin_room_20PolygonDlist2_0001BC)
};

PolygonDlist2 MIZUsin_room_20PolygonDlist2_0001BC[10] = {
    { {    300,    607,    580 },    697, MIZUsin_room_20DL_0018B8, NULL },
    { {    600,    830,      0 },    277, MIZUsin_room_20DL_0006E0, NULL },
    { {    720,    455,    540 },    134, MIZUsin_room_20DL_002ED8, NULL },
    { {    660,    760,    120 },     28, MIZUsin_room_20DL_002B30, NULL },
    { {    290,    465,    580 },    701, MIZUsin_room_20DL_000BA0, NULL },
    { {    660,    590,    180 },     85, MIZUsin_room_20DL_002980, NULL },
    { {    660,    570,    880 },    223, MIZUsin_room_20DL_0026D0, NULL },
    { {    660,    650,    880 },    213, MIZUsin_room_20DL_001D48, NULL },
    { {    660,    570,    880 },    234, MIZUsin_room_20DL_0022D8, NULL },
    { {    660,    555,   1040 },     54, MIZUsin_room_20DL_002CB8, NULL },
};

s32 MIZUsin_room_20_terminatorMaybe_00025C = { 0x01000000 };

Vtx MIZUsin_room_20Vtx_000260[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_20Vtx_000260.vtx.inc"
};

Gfx MIZUsin_room_20DL_0006E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_20Vtx_000260[64], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(MIZUsin_room_20Vtx_000260, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_20Tex_004840, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_20Vtx_000260[12], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 6, 7, 5, 0),
    gsSP2Triangles(3, 5, 7, 0, 4, 6, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_20Vtx_000260[20], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 1, 0, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 2, 1, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 20, 22, 0, 5, 4, 24, 0),
    gsSP2Triangles(5, 24, 25, 0, 14, 26, 27, 0),
    gsSP1Triangle(14, 27, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_20Vtx_000260[48], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_20Vtx_000260[56], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(2, 3, 4, 0, 2, 4, 5, 0),
    gsSP2Triangles(6, 5, 7, 0, 5, 4, 7, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_20Vtx_000950[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_20Vtx_000950.vtx.inc"
};

Gfx MIZUsin_room_20DL_000BA0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_20Vtx_000950[29], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_20Tex_004840, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x09000000),
    gsSPVertex(MIZUsin_room_20Vtx_000950, 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(1, 3, 4, 0, 1, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 10, 12, 11, 0),
    gsSP2Triangles(9, 11, 13, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 14, 16, 0),
    gsSP2Triangles(18, 15, 14, 0, 17, 18, 14, 0),
    gsSP2Triangles(19, 20, 21, 0, 20, 22, 21, 0),
    gsSP2Triangles(19, 21, 23, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 27, 26, 0, 26, 25, 28, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_20Vtx_000CE8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_20Vtx_000CE8.vtx.inc"
};

Gfx MIZUsin_room_20DL_0018B8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_20Vtx_000CE8[181], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_sceneTex_013C30, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x09000000),
    gsSPVertex(MIZUsin_room_20Vtx_000CE8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(1, 0, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 5, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(14, 16, 15, 0, 16, 10, 9, 0),
    gsSP2Triangles(16, 9, 15, 0, 12, 11, 14, 0),
    gsSP2Triangles(12, 14, 13, 0, 8, 17, 6, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 18, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 18, 0),
    gsSP2Triangles(24, 25, 23, 0, 22, 24, 23, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 29, 27, 0),
    gsSP2Triangles(29, 26, 30, 0, 26, 28, 30, 0),
    gsSPVertex(&MIZUsin_room_20Vtx_000CE8[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 13, 0, 18, 4, 16, 0),
    gsSP2Triangles(18, 16, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 26, 27, 0, 28, 29, 30, 0),
    gsSP1Triangle(28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_20Vtx_000CE8[63], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 1, 0, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 11, 10, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 21, 23, 0, 24, 25, 21, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP1Triangle(30, 27, 31, 0),
    gsSPVertex(&MIZUsin_room_20Vtx_000CE8[95], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 18, 19, 16, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 22, 21, 0),
    gsSP2Triangles(19, 18, 22, 0, 19, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 31, 30, 0),
    gsSP2Triangles(27, 26, 29, 0, 27, 29, 28, 0),
    gsSPVertex(&MIZUsin_room_20Vtx_000CE8[127], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 10, 0, 13, 8, 10, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(16, 18, 19, 0, 16, 19, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_20Vtx_000CE8[159], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(11, 10, 16, 0, 11, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_20Vtx_001B88[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_20Vtx_001B88.vtx.inc"
};

Gfx MIZUsin_room_20DL_001D48[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_20Vtx_001B88[20], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 4, 5),
    gsDPLoadMultiBlock(MIZUsin_room_20Tex_005040, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x09000000),
    gsSPVertex(MIZUsin_room_20Vtx_001B88, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(1, 0, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 5, 8, 0, 7, 9, 5, 0),
    gsSP2Triangles(10, 11, 12, 0, 12, 13, 10, 0),
    gsSP2Triangles(14, 15, 16, 0, 16, 17, 14, 0),
    gsSP2Triangles(15, 14, 18, 0, 13, 12, 19, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_20Vtx_001E68[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_20Vtx_001E68.vtx.inc"
};

Gfx MIZUsin_room_20DL_0022D8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_20Vtx_001E68[63], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 4, 5),
    gsDPLoadMultiBlock(MIZUsin_room_20Tex_006040, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x09000000),
    gsSPVertex(MIZUsin_room_20Vtx_001E68, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 20, 22, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 27, 25, 0),
    gsSP2Triangles(28, 29, 30, 0, 31, 28, 30, 0),
    gsSPVertex(&MIZUsin_room_20Vtx_001E68[32], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 20, 22, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 24, 26, 0),
    gsSP2Triangles(28, 25, 29, 0, 28, 29, 30, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_20Vtx_002450[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_20Vtx_002450.vtx.inc"
};

Gfx MIZUsin_room_20DL_0026D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_20Vtx_002450[32], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 4, 5),
    gsDPLoadMultiBlock(MIZUsin_room_20Tex_005840, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x09000000),
    gsSPVertex(MIZUsin_room_20Vtx_002450, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 0, 7, 1, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(15, 22, 16, 0, 8, 10, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(27, 29, 30, 0, 31, 24, 26, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_20Vtx_002800[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_20Vtx_002800.vtx.inc"
};

Gfx MIZUsin_room_20DL_002980[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_20Vtx_002800[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 4, 4),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x09000000),
    gsSPVertex(MIZUsin_room_20Vtx_002800, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_20Vtx_002A70[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_20Vtx_002A70.vtx.inc"
};

Gfx MIZUsin_room_20DL_002B30[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_20Vtx_002A70[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(MIZUsin_room_20Tex_003840, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(MIZUsin_room_20Vtx_002A70, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_20Vtx_002BE8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_20Vtx_002BE8.vtx.inc"
};

Gfx MIZUsin_room_20DL_002CB8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_20Vtx_002BE8[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_20Tex_003040, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x09000000),
    gsSPVertex(MIZUsin_room_20Vtx_002BE8, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(4, 0, 3, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_20Vtx_002DB8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_20Vtx_002DB8.vtx.inc"
};

Gfx MIZUsin_room_20DL_002ED8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_20Vtx_002DB8[10], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_20Tex_004040, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x09000000),
    gsSPVertex(MIZUsin_room_20Vtx_002DB8, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 0, 2, 0, 4, 3, 0, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 6, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSPEndDisplayList(),
};

u8 MIZUsin_room_20_unaccounted_002FE8[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0xE0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0B, 0xA0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x18, 0xB8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1D, 0x48, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x22, 0xD8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x26, 0xD0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x29, 0x80, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2B, 0x30, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2C, 0xB8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2E, 0xD8, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 MIZUsin_room_20Tex_003040[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_20Tex_003040.rgba16.inc.c"
};

u64 MIZUsin_room_20Tex_003840[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_20Tex_003840.i4.inc.c"
};

u64 MIZUsin_room_20Tex_004040[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_20Tex_004040.rgba16.inc.c"
};

u64 MIZUsin_room_20Tex_004840[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_20Tex_004840.rgba16.inc.c"
};

u64 MIZUsin_room_20Tex_005040[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_20Tex_005040.rgba16.inc.c"
};

u64 MIZUsin_room_20Tex_005840[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_20Tex_005840.rgba16.inc.c"
};

u64 MIZUsin_room_20Tex_006040[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_20Tex_006040.rgba16.inc.c"
};

