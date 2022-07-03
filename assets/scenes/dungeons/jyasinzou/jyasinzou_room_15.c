#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "jyasinzou_room_15.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "jyasinzou_scene.h"
#include "jyasinzou_room_0.h"
#include "jyasinzou_room_1.h"
#include "jyasinzou_room_2.h"
#include "jyasinzou_room_3.h"
#include "jyasinzou_room_4.h"
#include "jyasinzou_room_5.h"
#include "jyasinzou_room_6.h"
#include "jyasinzou_room_7.h"
#include "jyasinzou_room_8.h"
#include "jyasinzou_room_9.h"
#include "jyasinzou_room_10.h"
#include "jyasinzou_room_11.h"
#include "jyasinzou_room_12.h"
#include "jyasinzou_room_13.h"
#include "jyasinzou_room_14.h"
#include "jyasinzou_room_16.h"
#include "jyasinzou_room_17.h"
#include "jyasinzou_room_18.h"
#include "jyasinzou_room_19.h"
#include "jyasinzou_room_20.h"
#include "jyasinzou_room_21.h"
#include "jyasinzou_room_22.h"
#include "jyasinzou_room_23.h"
#include "jyasinzou_room_24.h"
#include "jyasinzou_room_25.h"
#include "jyasinzou_room_26.h"
#include "jyasinzou_room_27.h"
#include "jyasinzou_room_28.h"

SceneCmd jyasinzou_room_15Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinzou_room_15PolygonType2_000180),
    SCENE_CMD_OBJECT_LIST(8, jyasinzou_room_15ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(19, jyasinzou_room_15ActorList_000050),
    SCENE_CMD_END(),
};

s16 jyasinzou_room_15ObjectList_000040[] = {
    OBJECT_JYA_OBJ,
    OBJECT_JYA_DOOR,
    OBJECT_MIR_RAY,
    OBJECT_LIGHTSWITCH,
    OBJECT_SK2,
    OBJECT_WALLMASTER,
    OBJECT_MIZU_OBJECTS,
    OBJECT_TRAP,
};

ActorEntry jyasinzou_room_15ActorList_000050[] = {
    { ACTOR_EN_TEST,         {   1161,    480,  -1015 }, {      0, 0XDA50,      0 }, 0x0002 },
    { ACTOR_EN_TEST,         {   1163,    480,   -678 }, {      0, 0XB333,      0 }, 0x0002 },
    { ACTOR_EN_WALLMAS,      {   1152,    480,   -874 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_LIGHT,        {   1225,     53,   -944 }, {      0,      0,      0 }, 0x03F4 },
    { ACTOR_EN_LIGHT,        {   1225,     53,   -749 }, {      0,      0,      0 }, 0x03F4 },
    { ACTOR_BG_MIZU_SHUTTER, {   1120,    465,  -1290 }, { 0X4000, 0XC000,      0 }, 0x0FD1 },
    { ACTOR_OBJ_ROOMTIMER,   {   1146,    637,  -1258 }, {      0,      0,      0 }, 0x47FF },
    { ACTOR_EN_WALLMAS,      {    976,    480,   -910 }, {      0,      0,      0 }, 0x3A02 },
    { ACTOR_OBJ_LIGHTSWITCH, {   1355,    530,   -844 }, {      0, 0XC000,      0 }, 0x3A30 },
    { ACTOR_EN_WALLMAS,      {   1130,    480,   -812 }, {      0,      0,      0 }, 0x3B02 },
    { ACTOR_OBJ_LIGHTSWITCH, {   1353,    530,   -682 }, {      0, 0XC000,      0 }, 0x3B30 },
    { ACTOR_EN_WALLMAS,      {   1102,    480,   -937 }, {      0,      0,      0 }, 0x3D02 },
    { ACTOR_OBJ_LIGHTSWITCH, {   1355,    530,  -1014 }, {      0, 0XC000,      0 }, 0x3D30 },
    { ACTOR_MIR_RAY,         {   1047,    480,  -1021 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_OBJ_TSUBO,       {   1204,      0,   -910 }, {      0,      0,      0 }, 0x6E03 },
    { ACTOR_OBJ_TSUBO,       {   1204,      0,  -1028 }, {      0,      0,      0 }, 0x7003 },
    { ACTOR_EN_TRAP,         {   1220,      0,   -749 }, {      0, 0XC000,      0 }, 0x0410 },
    { ACTOR_EN_TRAP,         {   1020,      0,   -944 }, {      0, 0X4000,      0 }, 0x0410 },
    { ACTOR_ELF_MSG,         {    821,    480,   -850 }, {   0X64,   0X12,    0X4 }, 0x3291 },
};

PolygonType2 jyasinzou_room_15PolygonType2_000180 = { 
    2, 8,
    jyasinzou_room_15PolygonDlist2_00018C,
    jyasinzou_room_15PolygonDlist2_00018C + ARRAY_COUNTU(jyasinzou_room_15PolygonDlist2_00018C)
};

PolygonDlist2 jyasinzou_room_15PolygonDlist2_00018C[8] = {
    { {   1231,    652,   -860 },    201, NULL, jyasinzou_room_15DL_007970 },
    { {   1070,    420,   -965 },    639, jyasinzou_room_15DL_000DE0, NULL },
    { {   1380,    740,   -860 },     42, NULL, jyasinzou_room_15DL_007BC0 },
    { {   1380,    740,   -860 },     36, jyasinzou_room_15DL_002950, NULL },
    { {   1120,    100,   -836 },    294, jyasinzou_room_15DL_001A68, NULL },
    { {   1070,    480,   -965 },    482, jyasinzou_room_15DL_002380, NULL },
    { {   1226,     54,   -946 },     24, jyasinzou_room_15DL_002C10, NULL },
    { {   1226,     54,   -746 },     24, jyasinzou_room_15DL_002E90, NULL },
};

s32 jyasinzou_room_15_terminatorMaybe_00020C = { 0x01000000 };

u8 jyasinzou_room_15_unaccounted_000210[] = {
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
    0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x80, 0x01, 0x02, 0x00, 0x00, 0x03, 0x00, 0x02, 0x48, 
    0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x50, 0x04, 0x38, 0x02, 0x6C, 0xFD, 0x3A, 
    0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x10, 0x00, 0xFC, 0x04, 0x74, 0x01, 0xE0, 0xFC, 0x2C, 
    0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
    0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x80, 0x01, 0x02, 0x00, 0x00, 0x03, 0x00, 0x02, 0xA8, 
    0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x50, 0x04, 0x38, 0x02, 0x6C, 0xFD, 0x3A, 
    0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x10, 0x00, 0xFC, 0x04, 0x74, 0x01, 0xE0, 0xFC, 0x2C, 
    0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx jyasinzou_room_15Vtx_0002D0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_15Vtx_0002D0.vtx.inc"
};

Gfx jyasinzou_room_15DL_000DE0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_15Vtx_0002D0[169], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_15Tex_005CE8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_15Vtx_0002D0, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 5, 4, 0, 0),
    gsSP1Triangle(2, 5, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_15Vtx_0002D0[6], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 8, 5, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 10, 0),
    gsSP2Triangles(13, 10, 12, 0, 15, 16, 17, 0),
    gsSP2Triangles(17, 18, 19, 0, 15, 17, 20, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 18, 17, 0),
    gsSP2Triangles(17, 16, 22, 0, 21, 17, 22, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 18, 21, 0),
    gsSP2Triangles(21, 23, 25, 0, 24, 21, 25, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_15Tex_0053E8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_15Vtx_0002D0[32], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(3, 0, 2, 0, 3, 2, 5, 0),
    gsSP2Triangles(6, 4, 3, 0, 3, 5, 7, 0),
    gsSP1Triangle(6, 3, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_15Vtx_0002D0[40], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 1, 0, 0),
    gsSP2Triangles(0, 4, 6, 0, 5, 0, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 10, 8, 0),
    gsSP2Triangles(10, 11, 8, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 18, 16, 0),
    gsSP2Triangles(18, 19, 16, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 23, 21, 0, 24, 20, 22, 0),
    gsSP2Triangles(24, 23, 20, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 25, 28, 29, 0),
    gsSP2Triangles(25, 29, 30, 0, 25, 30, 31, 0),
    gsSPVertex(&jyasinzou_room_15Vtx_0002D0[72], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 18, 21, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 26, 24, 0),
    gsSP2Triangles(26, 27, 24, 0, 27, 28, 24, 0),
    gsSP1Triangle(28, 25, 24, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_15Tex_0043E8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_15Vtx_0002D0[101], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 8, 11, 0, 12, 11, 13, 0),
    gsSP2Triangles(14, 12, 13, 0, 14, 13, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_15Tex_004BE8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_15Vtx_0002D0[117], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_15Vtx_0002D0[125], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_15Tex_0060E8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_15Vtx_0002D0[129], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_15Tex_004BE8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_15Vtx_0002D0[133], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_15Vtx_0002D0[137], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 12, 13, 0, 8, 13, 9, 0),
    gsSP2Triangles(14, 13, 12, 0, 15, 14, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(16, 20, 17, 0, 16, 21, 20, 0),
    gsSP2Triangles(22, 18, 19, 0, 22, 23, 18, 0),
    gsSP2Triangles(22, 24, 23, 0, 22, 25, 24, 0),
    gsSP2Triangles(26, 27, 28, 0, 27, 29, 28, 0),
    gsSP2Triangles(27, 25, 29, 0, 27, 24, 25, 0),
    gsSP2Triangles(21, 30, 20, 0, 30, 31, 20, 0),
    gsSP2Triangles(30, 28, 31, 0, 30, 26, 28, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_15Vtx_001498[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_15Vtx_001498.vtx.inc"
};

Gfx jyasinzou_room_15DL_001A68[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_15Vtx_001498[85], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_15Tex_005CE8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_15Vtx_001498, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(0, 2, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_15Vtx_001498[5], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 2, 0, 2, 6, 7, 0),
    gsSP2Triangles(3, 2, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 10, 11, 0, 12, 13, 8, 0),
    gsSP2Triangles(12, 8, 11, 0, 14, 6, 2, 0),
    gsSP1Triangle(14, 2, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_15Tex_005CE8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_15Vtx_001498[20], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP1Triangle(3, 2, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_15Vtx_001498[25], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 3, 5, 0),
    gsSP2Triangles(3, 8, 9, 0, 3, 9, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_15Tex_006CE8, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_15Vtx_001498[35], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_15Vtx_001498[46], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_15Tex_0068E8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsSPVertex(&jyasinzou_room_15Vtx_001498[62], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 0, 5, 4, 0),
    gsSP2Triangles(0, 6, 5, 0, 6, 7, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_15Vtx_001498[70], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(0, 2, 6, 0, 2, 7, 6, 0),
    gsSP2Triangles(8, 4, 6, 0, 4, 0, 6, 0),
    gsSP2Triangles(9, 10, 4, 0, 10, 5, 4, 0),
    gsSP2Triangles(11, 10, 12, 0, 10, 9, 12, 0),
    gsSP2Triangles(8, 13, 4, 0, 13, 9, 4, 0),
    gsSP2Triangles(14, 12, 13, 0, 12, 9, 13, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_15Vtx_001F30[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_15Vtx_001F30.vtx.inc"
};

Gfx jyasinzou_room_15DL_002380[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_15Vtx_001F30[61], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_15Vtx_001F30, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 9, 11, 0, 12, 11, 13, 0),
    gsSP2Triangles(11, 14, 15, 0, 11, 15, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_15Tex_005BE8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_15Vtx_001F30[16], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 0, 5, 0, 0, 2, 5, 0),
    gsSP2Triangles(6, 4, 7, 0, 4, 5, 7, 0),
    gsSP2Triangles(8, 9, 1, 0, 9, 3, 1, 0),
    gsSP2Triangles(9, 8, 7, 0, 8, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_15Vtx_001F30[26], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 3, 5, 0, 6, 5, 8, 0),
    gsSP2Triangles(9, 0, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 1, 0, 0, 12, 4, 3, 0),
    gsSP1Triangle(2, 12, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_15Tex_005CE8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_15Vtx_001F30[39], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 5, 3, 4, 0),
    gsSP2Triangles(5, 6, 3, 0, 5, 7, 6, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(8, 10, 9, 0, 10, 11, 9, 0),
    gsSP2Triangles(10, 12, 11, 0, 0, 2, 11, 0),
    gsSP2Triangles(12, 0, 11, 0, 13, 14, 15, 0),
    gsSP2Triangles(12, 13, 15, 0, 10, 13, 12, 0),
    gsSP2Triangles(16, 14, 13, 0, 10, 16, 13, 0),
    gsSP2Triangles(8, 16, 10, 0, 17, 14, 16, 0),
    gsSP2Triangles(7, 17, 16, 0, 7, 16, 8, 0),
    gsSP2Triangles(18, 14, 17, 0, 7, 18, 17, 0),
    gsSP2Triangles(0, 19, 1, 0, 19, 0, 20, 0),
    gsSP2Triangles(19, 20, 14, 0, 19, 14, 21, 0),
    gsSP2Triangles(4, 19, 21, 0, 1, 19, 4, 0),
    gsSP2Triangles(0, 12, 15, 0, 20, 0, 15, 0),
    gsSP2Triangles(20, 15, 14, 0, 21, 14, 18, 0),
    gsSP2Triangles(18, 7, 5, 0, 4, 18, 5, 0),
    gsSP1Triangle(21, 18, 4, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_15Vtx_0026E0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_15Vtx_0026E0.vtx.inc"
};

Gfx jyasinzou_room_15DL_002950[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_15Vtx_0026E0[31], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(jyasinzou_room_15Tex_006CE8, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_15Vtx_0026E0, 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(6, 3, 10, 0, 6, 10, 7, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(11, 15, 16, 0, 11, 16, 12, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(17, 21, 22, 0, 17, 22, 18, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&jyasinzou_room_15Vtx_0026E0[23], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 0, 5, 1, 0),
    gsSP2Triangles(5, 6, 1, 0, 6, 7, 1, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_15Vtx_002AB0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_15Vtx_002AB0.vtx.inc"
};

Gfx jyasinzou_room_15DL_002C10[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_15Vtx_002AB0[14], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_15Tex_002FE8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_15Vtx_002AB0, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP1Triangle(5, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_15Tex_003FE8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 245, 244, 241, 255),
    gsSPVertex(&jyasinzou_room_15Vtx_002AB0[6], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_15Vtx_002D30[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_15Vtx_002D30.vtx.inc"
};

Gfx jyasinzou_room_15DL_002E90[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_15Vtx_002D30[14], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_15Tex_002FE8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_15Vtx_002D30, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP1Triangle(5, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_15Tex_003FE8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 245, 244, 241, 255),
    gsSPVertex(&jyasinzou_room_15Vtx_002D30[6], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

u8 jyasinzou_room_15_unaccounted_002FB0[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0D, 0xE0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1A, 0x68, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x23, 0x80, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x29, 0x50, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2C, 0x10, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2E, 0x90, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 jyasinzou_room_15Tex_002FE8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_15Tex_002FE8.rgba16.inc.c"
};

u64 jyasinzou_room_15Tex_003FE8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_15Tex_003FE8.rgba16.inc.c"
};

u64 jyasinzou_room_15Tex_0043E8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_15Tex_0043E8.ci8.inc.c"
};

u64 jyasinzou_room_15Tex_004BE8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_15Tex_004BE8.ci8.inc.c"
};

u64 jyasinzou_room_15Tex_0053E8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_15Tex_0053E8.ci8.inc.c"
};

u64 jyasinzou_room_15Tex_005BE8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_15Tex_005BE8.ci8.inc.c"
};

u64 jyasinzou_room_15Tex_005CE8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_15Tex_005CE8.ci8.inc.c"
};

u64 jyasinzou_room_15Tex_0060E8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_15Tex_0060E8.ci8.inc.c"
};

u64 jyasinzou_room_15Tex_0068E8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_15Tex_0068E8.ci8.inc.c"
};

u64 jyasinzou_room_15Tex_006CE8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_15Tex_006CE8.ci4.inc.c"
};

u8 jyasinzou_room_15_possiblePadding_0074E8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx jyasinzou_room_15Vtx_0074F0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_15Vtx_0074F0.vtx.inc"
};

Gfx jyasinzou_room_15DL_007970[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_15Vtx_0074F0[64], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, SHADE, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 254),
    gsSPVertex(jyasinzou_room_15Vtx_0074F0, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 2, 1, 5, 0),
    gsSP2Triangles(6, 2, 5, 0, 7, 6, 5, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gSpiritTempleDayEntranceTex, G_IM_FMT_IA, G_IM_SIZ_16b, 8, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA_PRIM2),
    gsSPVertex(&jyasinzou_room_15Vtx_0074F0[8], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 4, 0, 7, 8, 4, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 11, 0, 10, 14, 11, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0),
    gsSP2Triangles(20, 21, 16, 0, 19, 20, 16, 0),
    gsSP2Triangles(2, 22, 23, 0, 3, 2, 23, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 102),
    gsSPVertex(&jyasinzou_room_15Vtx_0074F0[32], 32, 0),
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

Vtx jyasinzou_room_15Vtx_007AF0[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_15Vtx_007AF0.vtx.inc"
};

Gfx jyasinzou_room_15DL_007BC0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_15Vtx_007AF0[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_15Tex_007C98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 153),
    gsSPVertex(jyasinzou_room_15Vtx_007AF0, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 1, 0, 4, 0),
    gsSPEndDisplayList(),
};

u8 jyasinzou_room_15_unaccounted_007C80[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x79, 0x70, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x7B, 0xC0, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 jyasinzou_room_15Tex_007C98[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_15Tex_007C98.rgba16.inc.c"
};

