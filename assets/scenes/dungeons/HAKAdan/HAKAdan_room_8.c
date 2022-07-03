#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "HAKAdan_room_8.h"
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
#include "HAKAdan_room_9.h"
#include "HAKAdan_room_10.h"
#include "HAKAdan_room_11.h"
#include "HAKAdan_room_12.h"
#include "HAKAdan_room_13.h"
#include "HAKAdan_room_14.h"
#include "HAKAdan_room_15.h"
#include "HAKAdan_room_16.h"
#include "HAKAdan_room_17.h"
#include "HAKAdan_room_18.h"
#include "HAKAdan_room_19.h"
#include "HAKAdan_room_20.h"
#include "HAKAdan_room_21.h"
#include "HAKAdan_room_22.h"

SceneCmd HAKAdan_room_8Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&HAKAdan_room_8PolygonType2_0000D0),
    SCENE_CMD_OBJECT_LIST(8, HAKAdan_room_8ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(8, HAKAdan_room_8ActorList_000050),
    SCENE_CMD_END(),
};

s16 HAKAdan_room_8ObjectList_000040[] = {
    OBJECT_HAKA_OBJECTS,
    OBJECT_HAKA_DOOR,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_VM,
    OBJECT_ST,
    OBJECT_TRAP,
    OBJECT_D_HSBLOCK,
};

ActorEntry HAKAdan_room_8ActorList_000050[] = {
    { ACTOR_OBJ_HSBLOCK,  {   4258,   -663,    424 }, { 0X4000,      0,      0 }, 0xFFC2 },
    { ACTOR_EN_ST,        {   4258,   -580,    253 }, {      0, 0X4000,      0 }, 0x0001 },
    { ACTOR_EN_VM,        {   4898,   -663,    253 }, {      0, 0X8000,      0 }, 0x0400 },
    { ACTOR_EN_VM,        {   4258,   -983,    862 }, {      0, 0X8000,      0 }, 0x0700 },
    { ACTOR_EN_TRAP,      {   4447,   -787,    296 }, {      0, 0X8000, 0XF333 }, 0x0210 },
    { ACTOR_EN_TRAP,      {   4592,   -738,    216 }, {      0,      0,  0XCCD }, 0x0210 },
    { ACTOR_BG_HAKA_TRAP, {   4258,   -835,    614 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA_TRAP, {   4258,   -835,   1114 }, {      0,      0,      0 }, 0x0000 },
};

PolygonType2 HAKAdan_room_8PolygonType2_0000D0 = { 
    2, 4,
    HAKAdan_room_8PolygonDlist2_0000DC,
    HAKAdan_room_8PolygonDlist2_0000DC + ARRAY_COUNTU(HAKAdan_room_8PolygonDlist2_0000DC)
};

PolygonDlist2 HAKAdan_room_8PolygonDlist2_0000DC[4] = {
    { {   4338,   -683,    709 },    983, HAKAdan_room_8DL_000E70, NULL },
    { {   4338,   -763,    789 },   1059, HAKAdan_room_8DL_002418, NULL },
    { {   4258,   -833,    864 },    310, HAKAdan_room_8DL_002CC8, NULL },
    { {   4338,   -683,    789 },   1078, HAKAdan_room_8DL_001CE8, NULL },
};

s32 HAKAdan_room_8_terminatorMaybe_00011C = { 0x01000000 };

Vtx HAKAdan_room_8Vtx_000120[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_8Vtx_000120.vtx.inc"
};

Gfx HAKAdan_room_8DL_000E70[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_8Vtx_000120[205], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_room_8Tex_004C98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_8Vtx_000120, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 8, 6, 0, 8, 9, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(11, 14, 12, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 18, 20, 0),
    gsSP2Triangles(21, 20, 22, 0, 23, 24, 17, 0),
    gsSP2Triangles(16, 23, 17, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 28, 26, 0, 29, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_8Vtx_000120[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 7, 9, 0, 10, 9, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(13, 16, 14, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 20, 22, 0),
    gsSP2Triangles(23, 22, 24, 0, 25, 26, 19, 0),
    gsSP2Triangles(18, 25, 19, 0, 27, 28, 29, 0),
    gsSP1Triangle(28, 30, 29, 0),
    gsSPVertex(&HAKAdan_room_8Vtx_000120[63], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(11, 12, 9, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 16, 14, 0, 16, 17, 14, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 18, 20, 0),
    gsSP2Triangles(21, 20, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 26, 24, 0, 26, 27, 24, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&HAKAdan_room_8Vtx_000120[94], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 4, 7, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 12, 10, 0, 12, 13, 10, 0),
    gsSP2Triangles(14, 15, 16, 0, 16, 17, 14, 0),
    gsSP2Triangles(14, 18, 15, 0, 14, 19, 18, 0),
    gsSP2Triangles(20, 19, 14, 0, 17, 20, 14, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 24, 22, 0),
    gsSP2Triangles(21, 25, 24, 0, 26, 25, 21, 0),
    gsSP2Triangles(23, 27, 21, 0, 27, 26, 21, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 31, 30, 0),
    gsSPVertex(&HAKAdan_room_8Vtx_000120[126], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 6, 8, 0),
    gsSP2Triangles(7, 10, 8, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 11, 12, 0, 8, 12, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_8Tex_003098, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_8Vtx_000120[139], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_8Tex_004C98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_8Vtx_000120[151], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 6, 5, 7, 0),
    gsSP2Triangles(8, 9, 2, 0, 1, 8, 2, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 16, 14, 0, 13, 17, 16, 0),
    gsSP2Triangles(18, 10, 19, 0, 10, 12, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 20, 24, 0),
    gsSP2Triangles(20, 22, 24, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&HAKAdan_room_8Vtx_000120[182], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 14, 12, 0, 11, 15, 14, 0),
    gsSP2Triangles(16, 8, 17, 0, 8, 10, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP1Triangle(22, 18, 21, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_8Vtx_0011C8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_8Vtx_0011C8.vtx.inc"
};

Gfx HAKAdan_room_8DL_001CE8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_8Vtx_0011C8[170], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_017BC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_room_8Tex_004298, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 2, 2),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 96),
    gsSPVertex(HAKAdan_room_8Vtx_0011C8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 1, 0, 0, 4, 0, 3, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 5, 8, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 24, 25, 0, 26, 27, 28, 0),
    gsSP2Triangles(26, 28, 29, 0, 30, 31, 27, 0),
    gsSP1Triangle(30, 27, 26, 0),
    gsSPVertex(&HAKAdan_room_8Vtx_0011C8[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 8, 7, 0),
    gsSP2Triangles(11, 7, 10, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 19, 17, 0, 19, 16, 20, 0),
    gsSP2Triangles(16, 18, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(22, 21, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(22, 25, 23, 0, 26, 27, 28, 0),
    gsSP1Triangle(26, 28, 29, 0),
    gsSPVertex(&HAKAdan_room_8Vtx_0011C8[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 1, 4, 0, 2, 4, 3, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 7, 0),
    gsSP2Triangles(9, 8, 6, 0, 5, 9, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 11, 0),
    gsSP2Triangles(14, 13, 10, 0, 14, 10, 12, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 18, 16, 0),
    gsSP2Triangles(16, 19, 17, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0),
    gsSP2Triangles(20, 24, 23, 0, 24, 20, 25, 0),
    gsSP2Triangles(20, 26, 25, 0, 20, 22, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 28, 30, 29, 0),
    gsSP1Triangle(30, 31, 29, 0),
    gsSPVertex(&HAKAdan_room_8Vtx_0011C8[94], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 2, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 9, 11, 0, 12, 13, 9, 0),
    gsSP2Triangles(13, 10, 9, 0, 14, 15, 16, 0),
    gsSP2Triangles(15, 17, 16, 0, 15, 18, 17, 0),
    gsSP2Triangles(15, 14, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 21, 20, 0, 22, 23, 21, 0),
    gsSP2Triangles(23, 19, 21, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 25, 24, 0, 27, 24, 28, 0),
    gsSP2Triangles(24, 26, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_8Vtx_0011C8[126], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 3, 5, 0, 5, 4, 11, 0),
    gsSP2Triangles(10, 5, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 15, 13, 0, 15, 16, 13, 0),
    gsSP2Triangles(16, 14, 13, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 20, 19, 0, 18, 21, 20, 0),
    gsSP2Triangles(18, 17, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 24, 25, 0, 26, 27, 28, 0),
    gsSP2Triangles(26, 29, 27, 0, 29, 30, 27, 0),
    gsSP1Triangle(27, 30, 28, 0),
    gsSPVertex(&HAKAdan_room_8Vtx_0011C8[157], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 2, 0, 2, 4, 3, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_8Vtx_001FE8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_8Vtx_001FE8.vtx.inc"
};

Gfx HAKAdan_room_8DL_002418[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_8Vtx_001FE8[59], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_0173C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_sceneTex_0163C0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 64),
    gsSPVertex(HAKAdan_room_8Vtx_001FE8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 2, 3, 0, 2, 4, 0, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 6, 0),
    gsSP2Triangles(5, 9, 8, 0, 9, 5, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 10, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 13, 14, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 18, 17, 20, 0),
    gsSP2Triangles(17, 21, 20, 0, 17, 19, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 23, 22, 25, 0),
    gsSP2Triangles(22, 26, 25, 0, 22, 24, 26, 0),
    gsSP2Triangles(10, 14, 13, 0, 12, 15, 14, 0),
    gsSP2Triangles(12, 14, 10, 0, 27, 28, 29, 0),
    gsSP2Triangles(28, 30, 29, 0, 31, 28, 27, 0),
    gsSPVertex(&HAKAdan_room_8Vtx_001FE8[32], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 0, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 10, 6, 0, 10, 9, 11, 0),
    gsSP2Triangles(11, 7, 6, 0, 11, 6, 10, 0),
    gsSP2Triangles(7, 12, 13, 0, 12, 7, 14, 0),
    gsSP2Triangles(12, 15, 13, 0, 14, 16, 15, 0),
    gsSP2Triangles(14, 15, 12, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 20, 19, 0, 17, 21, 18, 0),
    gsSP2Triangles(21, 20, 18, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 24, 25, 0, 26, 22, 25, 0),
    gsSP1Triangle(22, 26, 23, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_8Vtx_0025E8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_8Vtx_0025E8.vtx.inc"
};

Gfx HAKAdan_room_8DL_002CC8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_8Vtx_0025E8[102], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(HAKAdan_room_8Tex_004A98, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_8Vtx_0025E8, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_8Tex_003298, G_IM_FMT_IA, 128, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                            | G_TX_CLAMP, 7, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_8Vtx_0025E8[8], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 0, 4, 0, 5, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_8Tex_004A98, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_8Vtx_0025E8[16], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_8Tex_003298, G_IM_FMT_IA, 128, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                            | G_TX_CLAMP, 7, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_8Vtx_0025E8[24], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(4, 2, 1, 0, 5, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_8Tex_004A98, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_8Vtx_0025E8[32], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_8Vtx_0025E8[40], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_8Vtx_0025E8[46], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_8Vtx_0025E8[62], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_8Vtx_0025E8[68], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_8Tex_003298, G_IM_FMT_IA, 128, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                            | G_TX_CLAMP, 7, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_8Vtx_0025E8[92], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 4, 2, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 7, 0),
    gsSP2Triangles(6, 9, 8, 0, 6, 5, 9, 0),
    gsSPEndDisplayList(),
};

u8 HAKAdan_room_8_unaccounted_003070[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0E, 0x70, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1C, 0xE8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x24, 0x18, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2C, 0xC8, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 HAKAdan_room_8Tex_003098[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_8Tex_003098.rgba16.inc.c"
};

u64 HAKAdan_room_8Tex_003298[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_8Tex_003298.ia4.inc.c"
};

u64 HAKAdan_room_8Tex_004298[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_8Tex_004298.rgba16.inc.c"
};

u64 HAKAdan_room_8Tex_004A98[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_8Tex_004A98.i4.inc.c"
};

u64 HAKAdan_room_8Tex_004C98[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_8Tex_004C98.rgba16.inc.c"
};

