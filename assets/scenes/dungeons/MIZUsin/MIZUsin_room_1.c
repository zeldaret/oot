#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "MIZUsin_room_1.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "MIZUsin_scene.h"
#include "MIZUsin_room_0.h"
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
#include "MIZUsin_room_20.h"
#include "MIZUsin_room_21.h"
#include "MIZUsin_room_22.h"

SceneCmd MIZUsin_room_1Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&MIZUsin_room_1PolygonType2_000120),
    SCENE_CMD_OBJECT_LIST(7, MIZUsin_room_1ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(13, MIZUsin_room_1ActorList_000050),
    SCENE_CMD_END(),
};

s16 MIZUsin_room_1ObjectList_000040[] = {
    OBJECT_MIZU_OBJECTS,
    OBJECT_SYOKUDAI,
    OBJECT_BOX,
    OBJECT_D_HSBLOCK,
    OBJECT_TIMEBLOCK,
    OBJECT_EFC_TW,
    OBJECT_KIBAKO2,
};

ActorEntry MIZUsin_room_1ActorList_000050[] = {
    { ACTOR_BG_MIZU_MOVEBG,  {   -180,    780,    -60 }, {      0,      0,      0 }, 0x2FFF },
    { ACTOR_BG_MIZU_WATER,   {   -180,    765,   -180 }, {      0,      0,      0 }, 0xFF00 },
    { ACTOR_EN_WONDER_TALK2, {   -300,    432,     -7 }, {      0, 0X8000,      0 }, 0x857F },
    { ACTOR_OBJ_KIBAKO2,     {   -210,    700,   -336 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {   -150,    699,   -336 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_WARP2BLOCK,  {   -181,    805,   -179 }, {      0,      0,      0 }, 0x1106 },
    { ACTOR_OBJ_WARP2BLOCK,  {   -181,    980,   -179 }, {      0,      0,      0 }, 0x9106 },
    { ACTOR_OBJ_SYOKUDAI,    {   -370,    975,   -370 }, { 0X2000, 0X2000,      0 }, 0x110A },
    { ACTOR_OBJ_SYOKUDAI,    {     10,    975,   -370 }, { 0X2000, 0XE000,      0 }, 0x110A },
    { ACTOR_OBJ_SYOKUDAI,    {   -370,    975,     10 }, { 0X2000, 0X6000,      0 }, 0x110A },
    { ACTOR_OBJ_SYOKUDAI,    {     10,    975,     10 }, { 0X2000, 0XA000,      0 }, 0x110A },
    { ACTOR_BG_MIZU_SHUTTER, {   -179,    -65,    -98 }, { 0X4000,      0,      0 }, 0x1FCA },
    { ACTOR_EN_OKARINA_TAG,  {   -300,    380,     -7 }, {      0, 0X8000,      0 }, 0x1C9D },
};

PolygonType2 MIZUsin_room_1PolygonType2_000120 = { 
    2, 12,
    MIZUsin_room_1PolygonDlist2_00012C,
    MIZUsin_room_1PolygonDlist2_00012C + ARRAY_COUNTU(MIZUsin_room_1PolygonDlist2_00012C)
};

PolygonDlist2 MIZUsin_room_1PolygonDlist2_00012C[12] = {
    { {   -255,    320,   -180 },    329, MIZUsin_room_1DL_003D70, NULL },
    { {   -120,   -280,    190 },    383, MIZUsin_room_1DL_005818, NULL },
    { {   -180,    490,   -180 },    482, MIZUsin_room_1DL_004B18, NULL },
    { {   -180,    620,   -180 },    491, MIZUsin_room_1DL_003888, NULL },
    { {   -180,    370,   -180 },    482, MIZUsin_room_1DL_0045D0, NULL },
    { {   -180,    680,   -180 },    440, MIZUsin_room_1DL_003030, NULL },
    { {   -180,    390,   -180 },    401, MIZUsin_room_1DL_002C40, NULL },
    { {   -185,    690,   -160 },    397, MIZUsin_room_1DL_004DF8, NULL },
    { {   -120,   -500,    190 },    313, MIZUsin_room_1DL_005050, NULL },
    { {   -180,    -10,   -180 },    256, MIZUsin_room_1DL_001F20, NULL },
    { {   -180,    330,   -180 },    415, MIZUsin_room_1DL_0028D8, NULL },
    { {   -180,   -210,    -60 },    184, MIZUsin_room_1DL_0053E8, NULL },
};

s32 MIZUsin_room_1_terminatorMaybe_0001EC = { 0x01000000 };

Vtx MIZUsin_room_1Vtx_0001F0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_1Vtx_0001F0.vtx.inc"
};

Gfx MIZUsin_room_1DL_001F20[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_1Vtx_0001F0[459], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_1Tex_0081D0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_1Vtx_0001F0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(0, 5, 6, 0, 3, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(9, 8, 7, 0, 12, 15, 8, 0),
    gsSP2Triangles(16, 17, 11, 0, 18, 11, 10, 0),
    gsSP2Triangles(16, 19, 20, 0, 18, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0),
    gsSP2Triangles(23, 29, 30, 0, 26, 31, 29, 0),
    gsSPVertex(&MIZUsin_room_1Vtx_0001F0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(0, 5, 6, 0, 3, 7, 8, 0),
    gsSP2Triangles(9, 4, 2, 0, 10, 11, 12, 0),
    gsSP2Triangles(9, 13, 14, 0, 10, 15, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 18, 20, 0),
    gsSP2Triangles(16, 21, 22, 0, 19, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 29, 30, 0),
    gsSP2Triangles(25, 24, 23, 0, 28, 31, 24, 0),
    gsSPVertex(&MIZUsin_room_1Vtx_0001F0[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(0, 5, 6, 0, 3, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 11, 13, 0),
    gsSP2Triangles(9, 14, 15, 0, 12, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(18, 17, 16, 0, 21, 24, 17, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 27, 29, 0),
    gsSP1Triangle(25, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_1Vtx_0001F0[96], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 3, 9, 10, 0),
    gsSP2Triangles(6, 11, 9, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 14, 16, 0, 12, 17, 18, 0),
    gsSP2Triangles(15, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 21, 20, 19, 0),
    gsSP2Triangles(24, 27, 20, 0, 28, 16, 14, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_1Vtx_0001F0[128], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(5, 10, 11, 0, 8, 2, 1, 0),
    gsSP2Triangles(12, 9, 7, 0, 13, 14, 15, 0),
    gsSP2Triangles(12, 16, 17, 0, 13, 18, 16, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 21, 23, 0),
    gsSP2Triangles(19, 24, 25, 0, 22, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&MIZUsin_room_1Vtx_0001F0[159], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 6, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 9, 11, 0, 7, 12, 13, 0),
    gsSP2Triangles(10, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 16, 22, 23, 0),
    gsSP2Triangles(19, 24, 22, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 27, 29, 0, 25, 30, 31, 0),
    gsSP1Triangle(28, 23, 22, 0),
    gsSPVertex(&MIZUsin_room_1Vtx_0001F0[191], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 6, 7, 0, 3, 8, 6, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 18, 24, 25, 0),
    gsSP2Triangles(21, 26, 24, 0, 27, 28, 29, 0),
    gsSP1Triangle(30, 29, 31, 0),
    gsSPVertex(&MIZUsin_room_1Vtx_0001F0[223], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(6, 12, 13, 0, 9, 14, 12, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 17, 19, 0),
    gsSP2Triangles(15, 20, 21, 0, 18, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(24, 23, 22, 0, 27, 30, 23, 0),
    gsSPVertex(&MIZUsin_room_1Vtx_0001F0[254], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(0, 5, 6, 0, 3, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(9, 15, 16, 0, 12, 17, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 20, 22, 0),
    gsSP2Triangles(18, 23, 24, 0, 21, 16, 15, 0),
    gsSP2Triangles(25, 22, 20, 0, 26, 27, 28, 0),
    gsSP2Triangles(25, 29, 30, 0, 26, 31, 29, 0),
    gsSPVertex(&MIZUsin_room_1Vtx_0001F0[286], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 26, 28, 0, 24, 29, 30, 0),
    gsSPVertex(&MIZUsin_room_1Vtx_0001F0[317], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 3, 2, 1, 0),
    gsSP2Triangles(6, 9, 2, 0, 10, 11, 5, 0),
    gsSP2Triangles(12, 5, 4, 0, 10, 13, 14, 0),
    gsSP2Triangles(12, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 17, 23, 24, 0),
    gsSP2Triangles(20, 25, 23, 0, 26, 27, 28, 0),
    gsSP1Triangle(29, 28, 30, 0),
    gsSPVertex(&MIZUsin_room_1Vtx_0001F0[348], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(6, 12, 13, 0, 9, 14, 12, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 17, 19, 0),
    gsSP2Triangles(15, 20, 21, 0, 18, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(24, 23, 22, 0, 27, 30, 23, 0),
    gsSPVertex(&MIZUsin_room_1Vtx_0001F0[379], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(0, 5, 6, 0, 3, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(9, 15, 16, 0, 12, 17, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 20, 22, 0),
    gsSP2Triangles(18, 23, 24, 0, 21, 16, 15, 0),
    gsSP2Triangles(25, 22, 20, 0, 26, 27, 28, 0),
    gsSP2Triangles(25, 29, 30, 0, 26, 31, 29, 0),
    gsSPVertex(&MIZUsin_room_1Vtx_0001F0[411], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(0, 5, 6, 0, 3, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(9, 8, 7, 0, 12, 15, 8, 0),
    gsSP2Triangles(16, 17, 11, 0, 18, 11, 10, 0),
    gsSP2Triangles(16, 19, 20, 0, 18, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0),
    gsSP2Triangles(23, 29, 30, 0, 26, 31, 29, 0),
    gsSPVertex(&MIZUsin_room_1Vtx_0001F0[443], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(0, 5, 6, 0, 3, 7, 8, 0),
    gsSP2Triangles(9, 4, 2, 0, 10, 11, 12, 0),
    gsSP2Triangles(9, 13, 14, 0, 10, 15, 13, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_1Vtx_0023F8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_1Vtx_0023F8.vtx.inc"
};

Gfx MIZUsin_room_1DL_0028D8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_1Vtx_0023F8[70], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 4, 4),
    gsDPLoadMultiBlock(MIZUsin_sceneTex_015030, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_1Vtx_0023F8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_1Vtx_0023F8[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 11, 17, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(3, 2, 23, 0, 3, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_1Vtx_0023F8[64], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(3, 5, 0, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_1Vtx_002A70[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_1Vtx_002A70.vtx.inc"
};

Gfx MIZUsin_room_1DL_002C40[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_1Vtx_002A70[21], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_1Tex_0091D0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_1Vtx_002A70, 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 8, 10, 12, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_1Vtx_002D60[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_1Vtx_002D60.vtx.inc"
};

Gfx MIZUsin_room_1DL_003030[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_1Vtx_002D60[37], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_1Tex_0079D0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_1Vtx_002D60, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 3, 0, 1, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 7, 0),
    gsSP2Triangles(7, 8, 9, 0, 5, 7, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(11, 14, 13, 0, 10, 14, 11, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 20, 18, 0, 19, 18, 17, 0),
    gsSP2Triangles(19, 21, 22, 0, 19, 22, 20, 0),
    gsSP2Triangles(22, 21, 16, 0, 22, 16, 15, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 25, 24, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 23, 0),
    gsSP2Triangles(26, 30, 28, 0, 26, 28, 27, 0),
    gsSP1Triangle(30, 26, 31, 0),
    gsSPVertex(&MIZUsin_room_1Vtx_002D60[32], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP1Triangle(3, 0, 2, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_1Vtx_0031A8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_1Vtx_0031A8.vtx.inc"
};

Gfx MIZUsin_room_1DL_003888[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_1Vtx_0031A8[102], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_1Tex_0069D0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_1Vtx_0031A8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 16, 0),
    gsSP2Triangles(12, 14, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 15, 16, 0, 19, 18, 16, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 24, 0),
    gsSP2Triangles(22, 21, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 28, 26, 0, 29, 25, 27, 0),
    gsSPVertex(&MIZUsin_room_1Vtx_0031A8[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 15, 17, 0, 18, 10, 12, 0),
    gsSP2Triangles(13, 15, 16, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 22, 20, 0, 22, 23, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 25, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_1Vtx_0031A8[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 12, 14, 0),
    gsSP2Triangles(13, 10, 12, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 15, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_1Vtx_0031A8[94], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_1Vtx_003A70[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_1Vtx_003A70.vtx.inc"
};

Gfx MIZUsin_room_1DL_003D70[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_1Vtx_003A70[40], 8, 0),
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
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_1Vtx_003A70, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(3, 2, 8, 0, 3, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 15, 0, 22, 15, 14, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_1Vtx_003A70[32], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_1Vtx_003EC0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_1Vtx_003EC0.vtx.inc"
};

Gfx MIZUsin_room_1DL_0045D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_1Vtx_003EC0[105], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_1Tex_0071D0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_1Vtx_003EC0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(2, 1, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 7, 0, 7, 9, 5, 0),
    gsSP2Triangles(10, 0, 11, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 12, 11, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 20, 21, 0, 22, 6, 23, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_1Vtx_003EC0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 10, 8, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 16, 17, 14, 0),
    gsSP2Triangles(18, 15, 14, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 20, 19, 25, 0),
    gsSP2Triangles(22, 24, 26, 0, 24, 20, 25, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 9, 8, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 17, 0),
    gsSPVertex(&MIZUsin_room_1Vtx_003EC0[63], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 13, 15, 0),
    gsSP2Triangles(14, 16, 12, 0, 15, 13, 17, 0),
    gsSP2Triangles(17, 13, 18, 0, 18, 19, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 22, 23, 20, 0),
    gsSP2Triangles(24, 21, 20, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_1Vtx_003EC0[95], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(3, 4, 5, 0, 6, 7, 5, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_1Vtx_0047C8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_1Vtx_0047C8.vtx.inc"
};

Gfx MIZUsin_room_1DL_004B18[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_1Vtx_0047C8[45], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_1Tex_0089D0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(MIZUsin_room_1Vtx_0047C8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(3, 4, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 9, 0, 7, 6, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(10, 12, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 17, 20, 0, 19, 21, 17, 0),
    gsSP2Triangles(16, 12, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 23, 25, 0, 14, 27, 15, 0),
    gsSP2Triangles(28, 29, 30, 0, 31, 29, 28, 0),
    gsSPVertex(&MIZUsin_room_1Vtx_0047C8[32], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 4, 0, 6, 4, 3, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 9, 11, 0),
    gsSP1Triangle(9, 12, 11, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_1Vtx_004C78[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_1Vtx_004C78.vtx.inc"
};

Gfx MIZUsin_room_1DL_004DF8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_1Vtx_004C78[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(MIZUsin_room_1Tex_0059D0, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(MIZUsin_room_1Vtx_004C78, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(MIZUsin_room_1Tex_0061D0, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_1Vtx_004C78[12], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_1Vtx_004F10[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_1Vtx_004F10.vtx.inc"
};

Gfx MIZUsin_room_1DL_005050[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_1Vtx_004F10[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_1Tex_0099D0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(MIZUsin_room_1Vtx_004F10, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 8, 6, 0, 8, 9, 6, 0),
    gsSP2Triangles(1, 10, 2, 0, 10, 11, 4, 0),
    gsSP1Triangle(10, 4, 2, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_1Vtx_005168[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_1Vtx_005168.vtx.inc"
};

Gfx MIZUsin_room_1DL_0053E8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_1Vtx_005168[32], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 4, 4),
    gsDPLoadMultiBlock(MIZUsin_sceneTex_015030, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(MIZUsin_room_1Vtx_005168, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_1Vtx_005518[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_1Vtx_005518.vtx.inc"
};

Gfx MIZUsin_room_1DL_005818[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_1Vtx_005518[40], 8, 0),
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
    gsSPDisplayList(0x0A000000),
    gsSPVertex(MIZUsin_room_1Vtx_005518, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(0, 2, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 5, 7, 0, 9, 8, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(18, 21, 22, 0, 18, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_1Vtx_005518[32], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

u8 MIZUsin_room_1_unaccounted_005968[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1F, 0x20, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x28, 0xD8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2C, 0x40, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x30, 0x30, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x38, 0x88, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3D, 0x70, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x45, 0xD0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x4B, 0x18, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x4D, 0xF8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x50, 0x50, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x53, 0xE8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x58, 0x18, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 MIZUsin_room_1Tex_0059D0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_1Tex_0059D0.i4.inc.c"
};

u64 MIZUsin_room_1Tex_0061D0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_1Tex_0061D0.i4.inc.c"
};

u64 MIZUsin_room_1Tex_0069D0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_1Tex_0069D0.rgba16.inc.c"
};

u64 MIZUsin_room_1Tex_0071D0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_1Tex_0071D0.rgba16.inc.c"
};

u64 MIZUsin_room_1Tex_0079D0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_1Tex_0079D0.rgba16.inc.c"
};

u64 MIZUsin_room_1Tex_0081D0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_1Tex_0081D0.rgba16.inc.c"
};

u64 MIZUsin_room_1Tex_0089D0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_1Tex_0089D0.rgba16.inc.c"
};

u64 MIZUsin_room_1Tex_0091D0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_1Tex_0091D0.rgba16.inc.c"
};

u64 MIZUsin_room_1Tex_0099D0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_1Tex_0099D0.rgba16.inc.c"
};

