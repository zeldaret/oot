#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ganontika_room_3.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "ganontika_scene.h"
#include "ganontika_room_0.h"
#include "ganontika_room_1.h"
#include "ganontika_room_2.h"
#include "ganontika_room_4.h"
#include "ganontika_room_5.h"
#include "ganontika_room_6.h"
#include "ganontika_room_7.h"
#include "ganontika_room_8.h"
#include "ganontika_room_9.h"
#include "ganontika_room_10.h"
#include "ganontika_room_11.h"
#include "ganontika_room_12.h"
#include "ganontika_room_13.h"
#include "ganontika_room_14.h"
#include "ganontika_room_15.h"
#include "ganontika_room_16.h"
#include "ganontika_room_17.h"
#include "ganontika_room_18.h"
#include "ganontika_room_19.h"

SceneCmd ganontika_room_3Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(6),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x01, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&ganontika_room_3PolygonType2_000170),
    SCENE_CMD_OBJECT_LIST(6, ganontika_room_3ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(18, ganontika_room_3ActorList_00004C),
    SCENE_CMD_END(),
};

s16 ganontika_room_3ObjectList_000040[] = {
    OBJECT_DEMO_KEKKAI,
    OBJECT_ICE_OBJECTS,
    OBJECT_FZ,
    OBJECT_FIREFLY,
    OBJECT_BOX,
    OBJECT_EFC_FLASH,
};

ActorEntry ganontika_room_3ActorList_00004C[] = {
    { ACTOR_EN_FIREFLY,      {   2892,    -34,   -659 }, {      0, 0X2889,      0 }, 0x0004 },
    { ACTOR_BG_GND_ICEBLOCK, {   3032,   -320,   -900 }, {      0, 0X4000,      0 }, 0x0000 },
    { ACTOR_BG_GND_ICEBLOCK, {   2792,   -320,  -1020 }, {      0, 0X4000,      0 }, 0x0000 },
    { ACTOR_EN_FIREFLY,      {   2817,   -288,   -589 }, {      0, 0X84FA,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,      {   2975,   -286,   -692 }, {      0, 0XC38E,      0 }, 0x8003 },
    { ACTOR_EN_FIREFLY,      {   3011,    -95,  -1030 }, {      0, 0X25B0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_SHELTER,  {   2906,   -120,  -1482 }, {      0,      0,      0 }, 0x00FF },
    { ACTOR_EN_G_SWITCH,     {   2757,   -420,   -765 }, {      0,      0,      0 }, 0x1142 },
    { ACTOR_EN_G_SWITCH,     {   2912,   -219,   -971 }, {      0,      0,      0 }, 0x1142 },
    { ACTOR_EN_G_SWITCH,     {   2905,   -120,  -1478 }, {      0,      0,      0 }, 0x1142 },
    { ACTOR_EN_G_SWITCH,     {   3253,   -314,   -649 }, {      0,      0,      0 }, 0x1142 },
    { ACTOR_EN_G_SWITCH,     {   2905,   -320,  -1263 }, {      0,      0,      0 }, 0x1142 },
    { ACTOR_EN_G_SWITCH,     {   2582,   -320,   -802 }, {      0,      0,      0 }, 0x0142 },
    { ACTOR_BG_ICE_SHELTER,  {   3370,   -240,   -950 }, {      0, 0XC000,      0 }, 0x0006 },
    { ACTOR_BG_ICE_SHELTER,  {   3370,   -240,   -889 }, {      0, 0XC000,      0 }, 0x0006 },
    { ACTOR_BG_ICE_SHELTER,  {   3370,   -240,   -834 }, {      0, 0XC000,      0 }, 0x0006 },
    { ACTOR_BG_ICE_SHELTER,  {   3370,   -240,   -776 }, {      0, 0XC000,      0 }, 0x0006 },
    { ACTOR_BG_ICE_SHELTER,  {   3370,   -240,   -729 }, {      0, 0XC000,      0 }, 0x0006 },
};

u8 ganontika_room_3_possiblePadding_00016C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 ganontika_room_3PolygonType2_000170 = { 
    2, 10,
    ganontika_room_3PolygonDlist2_00017C,
    ganontika_room_3PolygonDlist2_00017C + ARRAY_COUNTU(ganontika_room_3PolygonDlist2_00017C)
};

PolygonDlist2 ganontika_room_3PolygonDlist2_00017C[10] = {
    { {   2822,   -299,   -570 },     37, ganontika_room_3DL_003410, NULL },
    { {   3002,   -299,   -690 },     37, ganontika_room_3DL_003838, NULL },
    { {   3463,   -140,   -840 },    122, ganontika_room_3DL_003A60, ganontika_room_3DL_008910 },
    { {   2362,   -160,   -840 },    108, ganontika_room_3DL_003D40, NULL },
    { {   2842,   -210,  -1024 },    811, ganontika_room_3DL_000FF0, NULL },
    { {   2912,   -320,   -900 },    593, ganontika_room_3DL_001550, NULL },
    { {   3349,    -18,   -838 },    192, ganontika_room_3DL_001990, NULL },
    { {   2422,   -240,   -840 },     92, ganontika_room_3DL_001C70, NULL },
    { {   2912,   -170,  -1024 },    689, ganontika_room_3DL_0028E8, NULL },
    { {   3412,   -120,   -840 },    187, ganontika_room_3DL_002F48, NULL },
};

s32 ganontika_room_3_terminatorMaybe_00021C = { 0x01000000 };

Vtx ganontika_room_3Vtx_000220[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_3Vtx_000220.vtx.inc"
};

Gfx ganontika_room_3DL_000FF0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_3Vtx_000220[213], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_3Tex_0066D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, 1),
    gsDPLoadMultiBlock(ganontika_room_3Tex_004ED8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_3Vtx_000220, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 3, 2, 0, 4, 2, 5, 0),
    gsSP2Triangles(6, 4, 5, 0, 6, 5, 7, 0),
    gsSP2Triangles(8, 6, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 17, 15, 0),
    gsSP2Triangles(18, 15, 17, 0, 19, 18, 17, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 22, 20, 0),
    gsSP2Triangles(19, 17, 22, 0, 23, 19, 21, 0),
    gsSP2Triangles(23, 21, 24, 0, 25, 24, 21, 0),
    gsSP2Triangles(25, 26, 24, 0, 27, 28, 29, 0),
    gsSP2Triangles(27, 30, 28, 0, 28, 31, 29, 0),
    gsSPVertex(&ganontika_room_3Vtx_000220[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(4, 5, 0, 0, 5, 6, 0, 0),
    gsSP2Triangles(6, 7, 0, 0, 7, 1, 0, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 16, 0),
    gsSP2Triangles(14, 18, 15, 0, 14, 19, 18, 0),
    gsSP2Triangles(19, 20, 18, 0, 20, 21, 18, 0),
    gsSP2Triangles(22, 23, 24, 0, 23, 25, 24, 0),
    gsSP2Triangles(25, 26, 24, 0, 26, 17, 24, 0),
    gsSP2Triangles(26, 16, 17, 0, 27, 28, 29, 0),
    gsSP2Triangles(28, 30, 29, 0, 27, 31, 28, 0),
    gsSPVertex(&ganontika_room_3Vtx_000220[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 13, 11, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(20, 17, 21, 0, 17, 16, 21, 0),
    gsSP2Triangles(22, 23, 19, 0, 22, 19, 18, 0),
    gsSP2Triangles(24, 25, 26, 0, 25, 27, 26, 0),
    gsSP2Triangles(25, 28, 27, 0, 29, 5, 30, 0),
    gsSPVertex(&ganontika_room_3Vtx_000220[95], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 4, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(11, 12, 10, 0, 0, 2, 13, 0),
    gsSP2Triangles(2, 14, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(16, 18, 17, 0, 16, 19, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsSP2Triangles(20, 24, 25, 0, 20, 25, 21, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&ganontika_room_3Vtx_000220[125], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 28, 31, 0),
    gsSPVertex(&ganontika_room_3Vtx_000220[157], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 16, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 20, 22, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&ganontika_room_3Vtx_000220[189], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 20, 23, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_3Vtx_001310[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_3Vtx_001310.vtx.inc"
};

Gfx ganontika_room_3DL_001550[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_3Vtx_001310[28], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_3Tex_005ED8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(ganontika_room_3Tex_0056D8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, 15),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_3Vtx_001310, 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 7, 0, 10, 6, 11, 0),
    gsSP2Triangles(6, 12, 11, 0, 10, 13, 8, 0),
    gsSP2Triangles(14, 15, 13, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 11, 17, 0, 11, 19, 17, 0),
    gsSP2Triangles(11, 20, 19, 0, 11, 12, 20, 0),
    gsSP2Triangles(16, 21, 11, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 24, 25, 0, 22, 10, 23, 0),
    gsSP2Triangles(21, 24, 23, 0, 21, 16, 24, 0),
    gsSP2Triangles(16, 26, 24, 0, 6, 10, 7, 0),
    gsSP2Triangles(10, 8, 7, 0, 10, 22, 13, 0),
    gsSP1Triangle(22, 27, 13, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_3Vtx_0016A0[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_3Vtx_0016A0.vtx.inc"
};

Gfx ganontika_room_3DL_001990[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_3Vtx_0016A0[39], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_3Tex_003ED8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsDPLoadMultiBlock(ganontika_room_3Tex_004ED8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_3Vtx_0016A0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 3, 5, 0, 3, 6, 5, 0),
    gsSP2Triangles(0, 7, 8, 0, 0, 8, 1, 0),
    gsSP2Triangles(1, 8, 9, 0, 1, 9, 3, 0),
    gsSP2Triangles(3, 10, 6, 0, 10, 11, 6, 0),
    gsSP2Triangles(10, 12, 11, 0, 10, 13, 12, 0),
    gsSP2Triangles(10, 9, 13, 0, 10, 3, 9, 0),
    gsSP2Triangles(9, 14, 13, 0, 9, 15, 14, 0),
    gsSP2Triangles(9, 16, 15, 0, 8, 17, 16, 0),
    gsSP2Triangles(8, 16, 9, 0, 7, 18, 17, 0),
    gsSP2Triangles(7, 17, 8, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 20, 19, 0, 23, 24, 22, 0),
    gsSP2Triangles(23, 22, 25, 0, 20, 26, 27, 0),
    gsSP2Triangles(20, 27, 21, 0, 22, 28, 26, 0),
    gsSP2Triangles(22, 26, 20, 0, 24, 29, 22, 0),
    gsSP2Triangles(24, 30, 29, 0, 30, 31, 29, 0),
    gsSP2Triangles(31, 13, 29, 0, 29, 28, 22, 0),
    gsSP2Triangles(29, 13, 28, 0, 13, 14, 28, 0),
    gsSP1Triangle(14, 15, 28, 0),
    gsSPVertex(&ganontika_room_3Vtx_0016A0[32], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(2, 3, 4, 0, 4, 3, 5, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_3Vtx_001B30[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_3Vtx_001B30.vtx.inc"
};

Gfx ganontika_room_3DL_001C70[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_3Vtx_001B30[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_3Tex_004ED8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsDPLoadMultiBlock(ganontika_room_3Tex_0046D8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_3Vtx_001B30, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 5, 0, 0),
    gsSP2Triangles(6, 4, 3, 0, 6, 7, 4, 0),
    gsSP2Triangles(8, 3, 2, 0, 8, 6, 3, 0),
    gsSP2Triangles(0, 5, 9, 0, 5, 10, 9, 0),
    gsSP2Triangles(11, 0, 9, 0, 11, 1, 0, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_3Vtx_001D88[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_3Vtx_001D88.vtx.inc"
};

Gfx ganontika_room_3DL_0028E8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_3Vtx_001D88[174], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_3Tex_003ED8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsDPLoadMultiBlock(ganontika_room_3Tex_004ED8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_3Vtx_001D88, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(0, 2, 4, 0, 1, 5, 2, 0),
    gsSP2Triangles(1, 6, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 8, 11, 10, 0),
    gsSP2Triangles(12, 11, 8, 0, 13, 12, 14, 0),
    gsSP2Triangles(12, 8, 14, 0, 8, 7, 14, 0),
    gsSP2Triangles(7, 15, 14, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 20, 22, 23, 0),
    gsSP2Triangles(22, 24, 25, 0, 24, 26, 27, 0),
    gsSP2Triangles(26, 16, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&ganontika_room_3Vtx_001D88[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 3, 6, 0, 7, 5, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(13, 15, 16, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 20, 22, 23, 0),
    gsSP2Triangles(22, 12, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(26, 28, 29, 0, 28, 30, 31, 0),
    gsSPVertex(&ganontika_room_3Vtx_001D88[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 11, 9, 0, 12, 13, 14, 0),
    gsSP2Triangles(13, 15, 14, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(25, 27, 28, 0, 25, 28, 26, 0),
    gsSP1Triangle(26, 28, 29, 0),
    gsSPVertex(&ganontika_room_3Vtx_001D88[94], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(10, 9, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 12, 14, 0, 12, 15, 16, 0),
    gsSP2Triangles(13, 12, 16, 0, 2, 13, 16, 0),
    gsSP2Triangles(2, 16, 17, 0, 0, 2, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 0, 19, 0),
    gsSP2Triangles(19, 0, 17, 0, 19, 17, 21, 0),
    gsSP2Triangles(20, 19, 21, 0, 22, 20, 21, 0),
    gsSP2Triangles(23, 22, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 28, 26, 0),
    gsSP2Triangles(29, 30, 25, 0, 30, 31, 25, 0),
    gsSP1Triangle(31, 28, 25, 0),
    gsSPVertex(&ganontika_room_3Vtx_001D88[126], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 7, 2, 5, 0),
    gsSP2Triangles(8, 9, 7, 0, 9, 2, 7, 0),
    gsSP2Triangles(9, 0, 2, 0, 8, 10, 9, 0),
    gsSP2Triangles(8, 11, 10, 0, 12, 13, 10, 0),
    gsSP2Triangles(13, 9, 10, 0, 13, 0, 9, 0),
    gsSP2Triangles(14, 13, 12, 0, 14, 15, 13, 0),
    gsSP2Triangles(15, 16, 13, 0, 16, 0, 13, 0),
    gsSP2Triangles(17, 18, 14, 0, 18, 19, 14, 0),
    gsSP2Triangles(19, 20, 14, 0, 21, 20, 19, 0),
    gsSP2Triangles(20, 15, 14, 0, 15, 20, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 24, 26, 25, 0),
    gsSP2Triangles(24, 1, 26, 0, 1, 0, 26, 0),
    gsSP2Triangles(27, 23, 25, 0, 23, 28, 24, 0),
    gsSP2Triangles(28, 29, 24, 0, 29, 30, 24, 0),
    gsSP2Triangles(30, 1, 24, 0, 21, 27, 25, 0),
    gsSP2Triangles(21, 25, 20, 0, 25, 26, 20, 0),
    gsSP2Triangles(26, 22, 20, 0, 26, 0, 22, 0),
    gsSP1Triangle(3, 5, 31, 0),
    gsSPVertex(&ganontika_room_3Vtx_001D88[158], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(3, 5, 4, 0, 6, 7, 8, 0),
    gsSP2Triangles(7, 6, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 10, 12, 0, 14, 11, 15, 0),
    gsSP1Triangle(13, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_3Vtx_002BE8[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_3Vtx_002BE8.vtx.inc"
};

Gfx ganontika_room_3DL_002F48[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_3Vtx_002BE8[46], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_sceneTex_020B80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_3Vtx_002BE8, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 4, 5, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsSPVertex(&ganontika_room_3Vtx_002BE8[6], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsSP2Triangles(21, 24, 23, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 28, 26, 0, 26, 29, 27, 0),
    gsSP2Triangles(26, 28, 24, 0, 26, 24, 21, 0),
    gsSP2Triangles(30, 31, 17, 0, 30, 17, 16, 0),
    gsSPVertex(&ganontika_room_3Vtx_002BE8[38], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(ganontika_room_3Tex_0076D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_3Vtx_002BE8[42], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_3Vtx_003140[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_3Vtx_003140.vtx.inc"
};

Gfx ganontika_room_3DL_003410[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_3Vtx_003140[37], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_3Tex_0066D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_3Vtx_003140, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 11, 0, 12, 11, 10, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(3, 2, 15, 0, 3, 15, 14, 0),
    gsSP2Triangles(2, 1, 18, 0, 2, 18, 19, 0),
    gsSP2Triangles(1, 5, 20, 0, 1, 20, 18, 0),
    gsSP2Triangles(5, 21, 20, 0, 5, 7, 21, 0),
    gsSP2Triangles(7, 9, 22, 0, 7, 22, 21, 0),
    gsSP2Triangles(9, 11, 23, 0, 9, 23, 22, 0),
    gsSP2Triangles(11, 13, 24, 0, 11, 24, 23, 0),
    gsSP2Triangles(16, 15, 25, 0, 16, 25, 26, 0),
    gsSP2Triangles(15, 2, 19, 0, 15, 19, 25, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSP1Triangle(27, 30, 31, 0),
    gsSPVertex(&ganontika_room_3Vtx_003140[32], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_3Vtx_003568[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_3Vtx_003568.vtx.inc"
};

Gfx ganontika_room_3DL_003838[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_3Vtx_003568[37], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_3Tex_0066D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_3Vtx_003568, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 11, 0, 12, 11, 10, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(3, 2, 15, 0, 3, 15, 14, 0),
    gsSP2Triangles(2, 1, 18, 0, 2, 18, 19, 0),
    gsSP2Triangles(1, 5, 20, 0, 1, 20, 18, 0),
    gsSP2Triangles(5, 7, 21, 0, 5, 21, 20, 0),
    gsSP2Triangles(7, 9, 22, 0, 7, 22, 21, 0),
    gsSP2Triangles(9, 11, 23, 0, 9, 23, 22, 0),
    gsSP2Triangles(11, 13, 24, 0, 11, 24, 23, 0),
    gsSP2Triangles(16, 15, 25, 0, 16, 25, 26, 0),
    gsSP2Triangles(15, 2, 19, 0, 15, 19, 25, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSP1Triangle(27, 30, 31, 0),
    gsSPVertex(&ganontika_room_3Vtx_003568[32], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_3Vtx_003990[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_3Vtx_003990.vtx.inc"
};

Gfx ganontika_room_3DL_003A60[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_3Vtx_003990[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(ganontika_room_3Tex_006ED8, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, ganontika_room_3TLUT_003EB8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_3Vtx_003990, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_3Vtx_003B50[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_3Vtx_003B50.vtx.inc"
};

Gfx ganontika_room_3DL_003D40[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_3Vtx_003B50[23], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_3Vtx_003B50, 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(15, 16, 13, 0, 13, 17, 18, 0),
    gsSP2Triangles(13, 16, 17, 0, 17, 19, 18, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 18, 20, 0),
    gsSP1Triangle(21, 22, 18, 0),
    gsSPEndDisplayList(),
};

u8 ganontika_room_3_unaccounted_003E60[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0F, 0xF0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x15, 0x50, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x19, 0x90, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1C, 0x70, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x28, 0xE8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2F, 0x48, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x34, 0x10, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x38, 0x38, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3A, 0x60, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3D, 0x40, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 ganontika_room_3TLUT_003EB8[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_3TLUT_003EB8.rgba16.inc.c"
};

u64 ganontika_room_3Tex_003ED8[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_3Tex_003ED8.rgba16.inc.c"
};

u64 ganontika_room_3Tex_0046D8[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_3Tex_0046D8.rgba16.inc.c"
};

u64 ganontika_room_3Tex_004ED8[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_3Tex_004ED8.rgba16.inc.c"
};

u64 ganontika_room_3Tex_0056D8[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_3Tex_0056D8.rgba16.inc.c"
};

u64 ganontika_room_3Tex_005ED8[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_3Tex_005ED8.rgba16.inc.c"
};

u64 ganontika_room_3Tex_0066D8[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_3Tex_0066D8.rgba16.inc.c"
};

u64 ganontika_room_3Tex_006ED8[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_3Tex_006ED8.ci4.inc.c"
};

u64 ganontika_room_3Tex_0076D8[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_3Tex_0076D8.rgba16.inc.c"
};

u8 ganontika_room_3_possiblePadding_0086D8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx ganontika_room_3Vtx_0086E0[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_3Vtx_0086E0.vtx.inc"
};

Gfx ganontika_room_3DL_008910[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_3Vtx_0086E0[27], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_3Tex_008A38, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 254),
    gsSPVertex(ganontika_room_3Vtx_0086E0, 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 1, 0),
    gsSP2Triangles(4, 6, 5, 0, 6, 7, 5, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(9, 11, 1, 0, 9, 1, 10, 0),
    gsSP2Triangles(11, 12, 1, 0, 11, 13, 12, 0),
    gsSP2Triangles(12, 2, 1, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 17, 0, 16, 18, 19, 0),
    gsSP2Triangles(16, 19, 17, 0, 18, 20, 19, 0),
    gsSP2Triangles(20, 21, 19, 0, 18, 22, 20, 0),
    gsSP2Triangles(15, 23, 16, 0, 23, 24, 16, 0),
    gsSP2Triangles(24, 25, 18, 0, 24, 18, 16, 0),
    gsSP2Triangles(25, 26, 18, 0, 26, 22, 18, 0),
    gsSPEndDisplayList(),
};

u8 ganontika_room_3_unaccounted_008A28[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x89, 0x10, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 ganontika_room_3Tex_008A38[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_3Tex_008A38.ia8.inc.c"
};

