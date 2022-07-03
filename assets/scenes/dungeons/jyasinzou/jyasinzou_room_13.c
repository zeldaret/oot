#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "jyasinzou_room_13.h"
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
#include "jyasinzou_room_14.h"
#include "jyasinzou_room_15.h"
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

SceneCmd jyasinzou_room_13Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinzou_room_13PolygonType2_000170),
    SCENE_CMD_OBJECT_LIST(10, jyasinzou_room_13ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(17, jyasinzou_room_13ActorList_000054),
    SCENE_CMD_END(),
};

s16 jyasinzou_room_13ObjectList_000040[] = {
    OBJECT_JYA_OBJ,
    OBJECT_JYA_DOOR,
    OBJECT_GOROIWA,
    OBJECT_MIZU_OBJECTS,
    OBJECT_TIMEBLOCK,
    OBJECT_EFC_TW,
    OBJECT_SPOT15_OBJ,
    OBJECT_LIGHTSWITCH,
    OBJECT_GOROIWA,
    OBJECT_MB,
};

ActorEntry jyasinzou_room_13ActorList_000054[] = {
    { ACTOR_BG_SPOT15_RRBOX, {   1303,    123,  -1352 }, {      0,      0,      0 }, 0x00FF },
    { ACTOR_EN_MB,           {   1569,   -130,  -1453 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_GOROIWA,      {   1466,    -80,  -1423 }, {      0,      0,      0 }, 0x0301 },
    { ACTOR_EN_GOROIWA,      {   1673,    -80,   -743 }, {      0,      0,      0 }, 0x0302 },
    { ACTOR_OBJ_LIGHTSWITCH, {   1331,    133,   -814 }, {      0, 0X4000,      0 }, 0x0300 },
    { ACTOR_BG_MIZU_SHUTTER, {   1315,    -33,  -1083 }, {      0, 0X4000,      0 }, 0x0FF8 },
    { ACTOR_BG_MIZU_SHUTTER, {   1825,    -33,  -1218 }, {      0, 0XC000,      0 }, 0x0FF9 },
    { ACTOR_BG_MIZU_SHUTTER, {   1315,    -33,   -813 }, {      0, 0X4000,      0 }, 0x0FFA },
    { ACTOR_BG_MIZU_SHUTTER, {   1315,    -33,  -1353 }, {      0, 0X4000,      0 }, 0x0FFB },
    { ACTOR_OBJ_SWITCH,      {   1569,     30,   -609 }, {      0,      0,      0 }, 0x3C01 },
    { ACTOR_BG_MIZU_SHUTTER, {   1825,    -33,   -947 }, {      0, 0XC000,      0 }, 0x0FFC },
    { ACTOR_OBJ_TIMEBLOCK,   {   1836,    169,   -948 }, {      0,      0,      0 }, 0x81FF },
    { ACTOR_EN_OKARINA_TAG,  {   1249,    -33,  -1353 }, {      0,      0,      0 }, 0x1C7A },
    { ACTOR_EN_OKARINA_TAG,  {   1249,    -33,  -1083 }, {      0,      0,      0 }, 0x1C82 },
    { ACTOR_EN_OKARINA_TAG,  {   1249,    -33,   -813 }, {      0,      0,      0 }, 0x1CF9 },
    { ACTOR_EN_OKARINA_TAG,  {   1888,    -33,   -947 }, {      0,      0,      0 }, 0x1D3B },
    { ACTOR_EN_OKARINA_TAG,  {   1888,    -33,  -1218 }, {      0,      0,      0 }, 0x1D78 },
};

u8 jyasinzou_room_13_possiblePadding_000164[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 jyasinzou_room_13PolygonType2_000170 = { 
    2, 2,
    jyasinzou_room_13PolygonDlist2_00017C,
    jyasinzou_room_13PolygonDlist2_00017C + ARRAY_COUNTU(jyasinzou_room_13PolygonDlist2_00017C)
};

PolygonDlist2 jyasinzou_room_13PolygonDlist2_00017C[2] = {
    { {   1569,    100,  -1034 },    625, jyasinzou_room_13DL_001B60, NULL },
    { {   1569,     30,   -579 },    265, jyasinzou_room_13DL_002710, NULL },
};

s32 jyasinzou_room_13_terminatorMaybe_00019C = { 0x01000000 };

u8 jyasinzou_room_13_unaccounted_0001A0[] = {
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
    0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x70, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 
    0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x70, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx jyasinzou_room_13Vtx_000200[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_13Vtx_000200.vtx.inc"
};

Gfx jyasinzou_room_13DL_001B60[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_13Vtx_000200[398], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_13Tex_0044A8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_13Vtx_000200, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP1Triangle(3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_13Tex_0028A8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_13Vtx_000200[5], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(1, 4, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_13Vtx_000200[10], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 13, 11, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(18, 21, 22, 0, 18, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&jyasinzou_room_13Vtx_000200[41], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 2, 0, 1, 5, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 7, 0, 10, 7, 6, 0),
    gsSP2Triangles(12, 13, 11, 0, 12, 11, 10, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 17, 18, 0),
    gsSP2Triangles(14, 18, 15, 0, 17, 19, 18, 0),
    gsSP2Triangles(20, 14, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 24, 17, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 25, 27, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_13Tex_0030A8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_13Vtx_000200[70], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_13Vtx_000200[74], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_13Tex_0030A8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_13Vtx_000200[77], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_13Vtx_000200[81], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP1Triangle(4, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_13Tex_003CA8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_13Vtx_000200[86], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_13Vtx_000200[94], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(4, 7, 8, 0, 4, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 17, 18, 0),
    gsSP2Triangles(14, 18, 15, 0, 17, 19, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 21, 0, 24, 21, 20, 0),
    gsSP2Triangles(26, 27, 25, 0, 26, 25, 24, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&jyasinzou_room_13Vtx_000200[125], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 4, 0, 6, 0),
    gsSP2Triangles(7, 8, 1, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 9, 11, 0, 12, 11, 13, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 15, 16, 0),
    gsSP2Triangles(12, 14, 16, 0, 17, 15, 14, 0),
    gsSP2Triangles(15, 17, 18, 0, 18, 19, 20, 0),
    gsSP1Triangle(19, 18, 21, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_sceneTex_018820, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsSPVertex(&jyasinzou_room_13Vtx_000200[147], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 5, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 17, 16, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 20, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
    gsSPVertex(&jyasinzou_room_13Vtx_000200[171], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 0, 2, 0, 5, 4, 2, 0),
    gsSP2Triangles(6, 5, 2, 0, 7, 6, 2, 0),
    gsSP2Triangles(2, 3, 8, 0, 7, 2, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 10, 12, 11, 0),
    gsSP2Triangles(12, 13, 11, 0, 13, 14, 11, 0),
    gsSP2Triangles(14, 15, 11, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(22, 23, 20, 0, 11, 17, 24, 0),
    gsSP2Triangles(22, 20, 25, 0, 20, 11, 25, 0),
    gsSP2Triangles(11, 24, 25, 0, 26, 27, 28, 0),
    gsSP2Triangles(27, 29, 28, 0, 29, 30, 28, 0),
    gsSPVertex(&jyasinzou_room_13Vtx_000200[202], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 6, 2, 0),
    gsSP2Triangles(7, 8, 9, 0, 2, 9, 10, 0),
    gsSP2Triangles(5, 2, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 15, 0),
    gsSP2Triangles(14, 17, 15, 0, 15, 18, 19, 0),
    gsSP2Triangles(20, 15, 19, 0, 20, 19, 21, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_room_13Tex_0050A8, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_13Vtx_000200[230], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinzou_room_13Vtx_000200[234], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(21, 24, 25, 0, 21, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 28, 30, 31, 0),
    gsSP1Triangle(28, 31, 29, 0),
    gsSPVertex(&jyasinzou_room_13Vtx_000200[266], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 8, 7, 0),
    gsSP2Triangles(19, 7, 20, 0, 21, 22, 12, 0),
    gsSP2Triangles(21, 12, 11, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&jyasinzou_room_13Vtx_000200[297], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 1, 0, 12, 1, 0, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP2Triangles(30, 19, 18, 0, 30, 18, 31, 0),
    gsSPVertex(&jyasinzou_room_13Vtx_000200[329], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 5, 0, 16, 5, 4, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(14, 13, 22, 0, 14, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&jyasinzou_room_13Vtx_000200[361], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(2, 1, 12, 0, 2, 12, 8, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(15, 17, 18, 0, 15, 18, 16, 0),
    gsSP2Triangles(19, 20, 21, 0, 20, 22, 21, 0),
    gsSP2Triangles(23, 22, 24, 0, 22, 25, 24, 0),
    gsSP2Triangles(22, 26, 25, 0, 27, 28, 29, 0),
    gsSP2Triangles(28, 30, 29, 0, 30, 31, 29, 0),
    gsSPVertex(&jyasinzou_room_13Vtx_000200[393], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP1Triangle(1, 4, 3, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinzou_room_13Vtx_002580[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_13Vtx_002580.vtx.inc"
};

Gfx jyasinzou_room_13DL_002710[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinzou_room_13Vtx_002580[17], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinzou_room_13Tex_0038A8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017BE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinzou_room_13Vtx_002580, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 4, 5, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(9, 11, 10, 0, 11, 12, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinzou_room_13Tex_004CA8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
    gsSPVertex(&jyasinzou_room_13Vtx_002580[13], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSPEndDisplayList(),
};

u8 jyasinzou_room_13_unaccounted_002890[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1B, 0x60, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x27, 0x10, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 jyasinzou_room_13Tex_0028A8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_13Tex_0028A8.ci8.inc.c"
};

u64 jyasinzou_room_13Tex_0030A8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_13Tex_0030A8.ci8.inc.c"
};

u64 jyasinzou_room_13Tex_0038A8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_13Tex_0038A8.ci8.inc.c"
};

u64 jyasinzou_room_13Tex_003CA8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_13Tex_003CA8.ci8.inc.c"
};

u64 jyasinzou_room_13Tex_0044A8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_13Tex_0044A8.ci8.inc.c"
};

u64 jyasinzou_room_13Tex_004CA8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_13Tex_004CA8.ci8.inc.c"
};

u64 jyasinzou_room_13Tex_0050A8[] = {
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_room_13Tex_0050A8.ci4.inc.c"
};

