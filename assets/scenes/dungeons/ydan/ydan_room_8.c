#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ydan_room_8.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "ydan_scene.h"
#include "ydan_room_0.h"
#include "ydan_room_1.h"
#include "ydan_room_2.h"
#include "ydan_room_3.h"
#include "ydan_room_4.h"
#include "ydan_room_5.h"
#include "ydan_room_6.h"
#include "ydan_room_7.h"
#include "ydan_room_9.h"
#include "ydan_room_10.h"
#include "ydan_room_11.h"

SceneCmd ydan_room_8Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&ydan_room_8PolygonType2_000110),
    SCENE_CMD_OBJECT_LIST(10, ydan_room_8ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(11, ydan_room_8ActorList_000054),
    SCENE_CMD_END(),
};

s16 ydan_room_8ObjectList_000040[] = {
    OBJECT_YDAN_OBJECTS,
    OBJECT_GOL,
    OBJECT_ST,
    OBJECT_DEKUBABA,
    OBJECT_HINTNUTS,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_KUSA,
    OBJECT_GI_HEART,
    OBJECT_GI_SUTARU,
};

ActorEntry ydan_room_8ActorList_000054[] = {
    { ACTOR_EN_KUSA,     {  -2732,  -1818,   -674 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_KUSA,     {  -2489,  -1822,   -753 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_DEKUBABA, {  -2675,   -760,   -703 }, {      0, 0X2000,      0 }, 0x0001 },
    { ACTOR_EN_SW,       {  -2717,   -626,   -746 }, {      0, 0X2000,      0 }, 0x8101 },
    { ACTOR_EN_KUSA,     {  -2553,   -760,   -433 }, {      0,      0,      0 }, 0xFF02 },
    { ACTOR_EN_KUSA,     {  -2395,   -760,   -587 }, {      0,      0,      0 }, 0xFF02 },
    { ACTOR_EN_KUSA,     {  -2708,   -760,   -522 }, {      0,      0,      0 }, 0xFF02 },
    { ACTOR_EN_GOMA,     {  -2500,   -760,   -675 }, {      0,      0,      0 }, 0x0007 },
    { ACTOR_EN_GOMA,     {  -2651,   -760,   -509 }, {      0,      0,      0 }, 0x0007 },
    { ACTOR_EN_GOMA,     {  -2575,   -760,   -750 }, {      0,      0,      0 }, 0x0007 },
    { ACTOR_EN_GOMA,     {  -2719,   -760,   -606 }, {      0,      0,      0 }, 0x0007 },
};

u8 ydan_room_8_possiblePadding_000104[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 ydan_room_8PolygonType2_000110 = { 
    2, 1,
    ydan_room_8PolygonDlist2_00011C,
    ydan_room_8PolygonDlist2_00011C + ARRAY_COUNTU(ydan_room_8PolygonDlist2_00011C)
};

PolygonDlist2 ydan_room_8PolygonDlist2_00011C[1] = {
    { {  -2576,   -640,   -609 },    253, ydan_room_8DL_000760, NULL },
};

s32 ydan_room_8_terminatorMaybe_00012C = { 0x01000000 };

Vtx ydan_room_8Vtx_000130[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_8Vtx_000130.vtx.inc"
};

Gfx ydan_room_8DL_000760[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ydan_room_8Vtx_000130[91], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ydan_room_8Tex_000988, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ydan_sceneTLUT_00B810),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ydan_room_8Vtx_000130, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 6, 1, 0, 7, 1, 0, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 9, 0, 16, 9, 8, 0),
    gsSP2Triangles(18, 19, 13, 0, 18, 13, 12, 0),
    gsSP2Triangles(20, 21, 17, 0, 20, 17, 16, 0),
    gsSP2Triangles(22, 23, 19, 0, 22, 19, 18, 0),
    gsSP2Triangles(24, 25, 21, 0, 24, 21, 20, 0),
    gsSP2Triangles(26, 27, 25, 0, 26, 25, 24, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&ydan_room_8Vtx_000130[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 1, 0, 8, 1, 0, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 9, 0, 14, 9, 8, 0),
    gsSP2Triangles(16, 17, 11, 0, 16, 11, 10, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(20, 22, 24, 0, 20, 24, 25, 0),
    gsSP2Triangles(24, 22, 21, 0, 20, 25, 18, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP2Triangles(26, 29, 30, 0, 26, 30, 31, 0),
    gsSPVertex(&ydan_room_8Vtx_000130[64], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 8, 0),
    gsSP2Triangles(4, 8, 5, 0, 8, 9, 5, 0),
    gsSP2Triangles(7, 10, 8, 0, 4, 11, 7, 0),
    gsSP2Triangles(12, 4, 13, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 7, 16, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 5, 9, 0, 18, 9, 19, 0),
    gsSP2Triangles(17, 16, 20, 0, 17, 20, 12, 0),
    gsSP2Triangles(21, 10, 7, 0, 21, 7, 15, 0),
    gsSP2Triangles(9, 22, 23, 0, 9, 23, 19, 0),
    gsSP2Triangles(13, 24, 18, 0, 13, 18, 14, 0),
    gsSP2Triangles(23, 8, 25, 0, 10, 21, 26, 0),
    gsSP2Triangles(10, 26, 25, 0, 10, 25, 8, 0),
    gsSPEndDisplayList(),
};

u8 ydan_room_8_unaccounted_000978[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x07, 0x60, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 ydan_room_8Tex_000988[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_8Tex_000988.ci8.inc.c"
};

