#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "HAKAdan_room_1.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "HAKAdan_scene.h"
#include "HAKAdan_room_0.h"
#include "HAKAdan_room_2.h"
#include "HAKAdan_room_3.h"
#include "HAKAdan_room_4.h"
#include "HAKAdan_room_5.h"
#include "HAKAdan_room_6.h"
#include "HAKAdan_room_7.h"
#include "HAKAdan_room_8.h"
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

SceneCmd HAKAdan_room_1Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&HAKAdan_room_1PolygonType2_0000C0),
    SCENE_CMD_OBJECT_LIST(7, HAKAdan_room_1ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(7, HAKAdan_room_1ActorList_000050),
    SCENE_CMD_END(),
};

s16 HAKAdan_room_1ObjectList_000040[] = {
    OBJECT_HAKA_OBJECTS,
    OBJECT_HAKA_DOOR,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_TIMEBLOCK,
    OBJECT_EFC_TW,
    OBJECT_RD,
};

ActorEntry HAKAdan_room_1ActorList_000050[] = {
    { ACTOR_EN_RD,     {   -857,    -63,   -862 }, {      0, 0X60B6,      0 }, 0x7F02 },
    { ACTOR_EN_RD,     {   -828,    -63,   -939 }, {      0, 0X25B0,      0 }, 0x7F02 },
    { ACTOR_EN_RD,     {   -764,    -63,   -853 }, {      0, 0X9A50,      0 }, 0x7F02 },
    { ACTOR_EN_RD,     {   -743,    -63,   -962 }, {      0, 0XD8E4,      0 }, 0x7F02 },
    { ACTOR_OBJ_TSUBO, {   -657,    -63,   -949 }, {      0,      0,      0 }, 0x4E03 },
    { ACTOR_OBJ_TSUBO, {   -713,    -63,  -1016 }, {      0,      0,      0 }, 0x5803 },
    { ACTOR_EN_BOX,    {   -794,    -63,  -1000 }, {      0, 0X8000,      0 }, 0x1801 },
};

PolygonType2 HAKAdan_room_1PolygonType2_0000C0 = { 
    2, 3,
    HAKAdan_room_1PolygonDlist2_0000CC,
    HAKAdan_room_1PolygonDlist2_0000CC + ARRAY_COUNTU(HAKAdan_room_1PolygonDlist2_0000CC)
};

PolygonDlist2 HAKAdan_room_1PolygonDlist2_0000CC[3] = {
    { {   -794,     87,   -885 },    278, HAKAdan_room_1DL_001110, NULL },
    { {   -794,    -63,   -885 },    234, HAKAdan_room_1DL_000270, NULL },
    { {   -794,     87,   -875 },    284, HAKAdan_room_1DL_0008F8, NULL },
};

s32 HAKAdan_room_1_terminatorMaybe_0000FC = { 0x01000000 };

Vtx HAKAdan_room_1Vtx_000100[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_1Vtx_000100.vtx.inc"
};

Gfx HAKAdan_room_1DL_000270[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_1Vtx_000100[15], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_0173C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 2, 2),
    gsDPLoadMultiBlock(HAKAdan_sceneTex_016BC0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 96),
    gsSPVertex(HAKAdan_room_1Vtx_000100, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 3, 5, 6, 0),
    gsSP2Triangles(3, 6, 7, 0, 3, 7, 4, 0),
    gsSP2Triangles(5, 3, 8, 0, 5, 8, 9, 0),
    gsSP2Triangles(5, 9, 10, 0, 3, 11, 12, 0),
    gsSP2Triangles(3, 12, 8, 0, 3, 13, 11, 0),
    gsSP2Triangles(3, 2, 14, 0, 3, 14, 13, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_1Vtx_0003A8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_1Vtx_0003A8.vtx.inc"
};

Gfx HAKAdan_room_1DL_0008F8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_1Vtx_0003A8[77], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_016BC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_sceneTex_0163C0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 2, 2),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_1Vtx_0003A8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(1, 14, 15, 0, 1, 15, 2, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(17, 20, 18, 0, 17, 21, 20, 0),
    gsSP2Triangles(20, 22, 18, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_1Vtx_0003A8[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(11, 14, 15, 0, 11, 15, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0),
    gsSP2Triangles(20, 19, 18, 0, 20, 18, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 16, 25, 17, 0),
    gsSP2Triangles(19, 26, 16, 0, 26, 25, 16, 0),
    gsSP1Triangle(27, 28, 29, 0),
    gsSPVertex(&HAKAdan_room_1Vtx_0003A8[62], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0),
    gsSP2Triangles(2, 5, 6, 0, 2, 6, 7, 0),
    gsSP2Triangles(1, 8, 9, 0, 1, 9, 4, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 11, 0),
    gsSP1Triangle(10, 14, 13, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_1Vtx_000AB0[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_1Vtx_000AB0.vtx.inc"
};

Gfx HAKAdan_room_1DL_001110[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_1Vtx_000AB0[94], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_room_1Tex_0012E8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_sceneTex_0173C0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_1Vtx_000AB0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 5, 25, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 28, 2, 0, 27, 2, 29, 0),
    gsSPVertex(&HAKAdan_room_1Vtx_000AB0[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_1Vtx_000AB0[62], 32, 0),
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

u8 HAKAdan_room_1_unaccounted_0012C8[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x02, 0x70, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x08, 0xF8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x11, 0x10, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 HAKAdan_room_1Tex_0012E8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_1Tex_0012E8.rgba16.inc.c"
};

