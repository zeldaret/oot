#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "men_room_7.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "men_scene.h"
#include "men_room_0.h"
#include "men_room_1.h"
#include "men_room_2.h"
#include "men_room_3.h"
#include "men_room_4.h"
#include "men_room_5.h"
#include "men_room_6.h"
#include "men_room_8.h"
#include "men_room_9.h"
#include "men_room_10.h"

SceneCmd men_room_7Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&men_room_7PolygonType2_0000F0),
    SCENE_CMD_OBJECT_LIST(9, men_room_7ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(22, men_room_7ActorList_00004C),
    SCENE_CMD_END(),
};

s16 men_room_7ObjectList_000040[] = {
    OBJECT_MENKURI_OBJECTS,
    OBJECT_BOX,
    OBJECT_EFC_FLASH,
    OBJECT_AM,
    OBJECT_DODONGO,
    OBJECT_ZF,
    OBJECT_VM,
    OBJECT_HIDAN_OBJECTS,
    OBJECT_GI_HEART,
};

ActorEntry men_room_7ActorList_00004C[] = {
    { ACTOR_EN_ZF,           {   1422,    -71,   -314 }, {      0, 0XD8E4,      0 }, 0xFFFE },
    { ACTOR_EN_ZF,           {   1604,    -69,   -132 }, {      0, 0XCFA5,      0 }, 0xFFFE },
    { ACTOR_EN_ZF,           {   1228,    -80,   -198 }, {      0, 0XCC17,      0 }, 0xFFFF },
    { ACTOR_EN_DODONGO,      {   1599,    -80,   -388 }, {      0, 0XBE94,      0 }, 0xFFFF },
    { ACTOR_EN_DODONGO,      {   1550,    -80,     35 }, {      0, 0XB555,      0 }, 0xFFFF },
    { ACTOR_EN_AM,           {   1191,    -20,     97 }, {      0, 0X6000,      0 }, 0xFFFF },
    { ACTOR_EN_BOX,          {   1481,    120,   -187 }, {      0, 0X8000,   0X1E }, 0x8841 },
    { ACTOR_OBJ_ROOMTIMER,   {   1553,    -59,   -171 }, {      0,      0,      0 }, 0x7861 },
    { ACTOR_EN_WONDER_TALK2, {   1251,    -58,   -374 }, {      0,      0,   0X45 }, 0x4C9E },
    { ACTOR_EN_WONDER_ITEM,  {   1481,    112,   -560 }, {      0,      0,    0X1 }, 0x1AE7 },
    { ACTOR_EN_VM,           {   1481,    -58,   -179 }, {      0,      0,      0 }, 0x0A01 },
    { ACTOR_EN_ZF,           {   1494,    -80,     70 }, {      0, 0XB8E4,      0 }, 0xFFFE },
    { ACTOR_BG_HIDAN_FIREWALL, {   1756,    -80,   -420 }, {      0, 0XE000,      0 }, 0x00FF },
    { ACTOR_BG_HIDAN_FIREWALL, {   1819,    -80,   -264 }, {      0, 0XBF4A,      0 }, 0x00FF },
    { ACTOR_BG_HIDAN_FIREWALL, {   1730,    -80,     75 }, {      0, 0XA000,      0 }, 0x00FF },
    { ACTOR_BG_HIDAN_FIREWALL, {   1242,    -80,     96 }, {      0, 0X6000,      0 }, 0x00FF },
    { ACTOR_BG_HIDAN_FIREWALL, {   1219,    -80,   -434 }, {      0, 0X2000,      0 }, 0x00FF },
    { ACTOR_BG_HIDAN_FIREWALL, {   1397,    -80,    162 }, {      0, 0X8000,      0 }, 0x00FF },
    { ACTOR_BG_HIDAN_FIREWALL, {   1817,    -80,   -108 }, {      0, 0XC000,      0 }, 0x00FF },
    { ACTOR_BG_HIDAN_FIREWALL, {   1563,    -80,    163 }, {      0, 0X8000,      0 }, 0x00FF },
    { ACTOR_EN_ITEM00,       {   1486,    -20,    204 }, {      0,      0,      0 }, 0x2203 },
    { ACTOR_EN_ITEM00,       {   1858,    -19,   -183 }, {      0,      0,      0 }, 0x2303 },
};

u8 men_room_7_possiblePadding_0000EC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 men_room_7PolygonType2_0000F0 = { 
    2, 3,
    men_room_7PolygonDlist2_0000FC,
    men_room_7PolygonDlist2_0000FC + ARRAY_COUNTU(men_room_7PolygonDlist2_0000FC)
};

PolygonDlist2 men_room_7PolygonDlist2_0000FC[3] = {
    { {   1480,    -59,   -180 },     66, men_room_7DL_0035D8, NULL },
    { {   1480,    110,   -180 },    456, men_room_7DL_003348, NULL },
    { {   1370,    220,   -190 },    601, men_room_7DL_001EC0, NULL },
};

s32 men_room_7_terminatorMaybe_00012C = { 0x01000000 };

Vtx men_room_7Vtx_000130[] = {
#include "assets/scenes/dungeons/men/men_room_7Vtx_000130.vtx.inc"
};

Gfx men_room_7DL_001EC0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_7Vtx_000130[465], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_room_7Tex_0052B8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(men_sceneTLUT_00F6C0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_7Vtx_000130, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 4, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 6, 9, 10, 0),
    gsSP2Triangles(6, 10, 7, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 14, 15, 0, 11, 15, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(17, 20, 21, 0, 17, 21, 18, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(22, 26, 23, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&men_room_7Vtx_000130[31], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 8, 0),
    gsSP2Triangles(4, 8, 5, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 10, 13, 14, 0),
    gsSP2Triangles(10, 14, 11, 0, 15, 16, 17, 0),
    gsSP2Triangles(16, 18, 19, 0, 16, 20, 21, 0),
    gsSP1Triangle(16, 22, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_0072B8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[54], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 11, 12, 0, 8, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(17, 16, 18, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(20, 23, 24, 0, 20, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&men_room_7Vtx_000130[84], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 4, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(11, 14, 15, 0, 11, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(20, 19, 21, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(23, 26, 27, 0, 23, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&men_room_7Vtx_000130[116], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(3, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_sceneTex_010CC0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[123], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&men_room_7Vtx_000130[155], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 4, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(12, 15, 16, 0, 13, 12, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_0042B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[172], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_0072B8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[184], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 14, 17, 0, 18, 17, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 20, 23, 0, 24, 23, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP2Triangles(30, 31, 27, 0, 30, 27, 26, 0),
    gsSPVertex(&men_room_7Vtx_000130[216], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(14, 17, 18, 0, 14, 18, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_007AB8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[236], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(6, 10, 9, 0, 11, 9, 10, 0),
    gsSP2Triangles(9, 11, 12, 0, 9, 12, 13, 0),
    gsSP2Triangles(13, 14, 9, 0, 15, 14, 13, 0),
    gsSP2Triangles(15, 13, 16, 0, 13, 17, 16, 0),
    gsSP2Triangles(13, 18, 17, 0, 13, 19, 18, 0),
    gsSP2Triangles(13, 12, 19, 0, 20, 14, 21, 0),
    gsSP2Triangles(20, 22, 14, 0, 20, 23, 22, 0),
    gsSP2Triangles(21, 14, 15, 0, 24, 25, 22, 0),
    gsSP2Triangles(24, 22, 23, 0, 26, 27, 25, 0),
    gsSP2Triangles(26, 25, 24, 0, 28, 27, 26, 0),
    gsSP2Triangles(28, 29, 27, 0, 28, 30, 29, 0),
    gsSPVertex(&men_room_7Vtx_000130[267], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_0072B8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[270], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_007AB8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[273], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_003AB8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[281], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_sceneTex_010CC0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[309], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_003AB8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[312], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_sceneTex_010CC0, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[316], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 2, 4, 0, 5, 0, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 8, 10, 0),
    gsSP2Triangles(9, 6, 8, 0, 8, 11, 10, 0),
    gsSP2Triangles(8, 7, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 15, 13, 0, 15, 16, 13, 0),
    gsSP2Triangles(12, 14, 17, 0, 12, 18, 19, 0),
    gsSP2Triangles(12, 19, 20, 0, 18, 12, 21, 0),
    gsSP2Triangles(12, 17, 21, 0, 19, 22, 20, 0),
    gsSP2Triangles(22, 23, 20, 0, 22, 21, 17, 0),
    gsSP2Triangles(22, 17, 23, 0, 23, 24, 20, 0),
    gsSP2Triangles(24, 25, 20, 0, 25, 26, 20, 0),
    gsSP2Triangles(25, 27, 26, 0, 28, 29, 30, 0),
    gsSP1Triangle(28, 30, 31, 0),
    gsSPVertex(&men_room_7Vtx_000130[348], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 4, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 8, 6, 0, 9, 5, 10, 0),
    gsSP2Triangles(9, 8, 5, 0, 5, 7, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 11, 15, 0),
    gsSP2Triangles(14, 12, 11, 0, 11, 16, 15, 0),
    gsSP2Triangles(11, 13, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 20, 19, 0, 20, 21, 19, 0),
    gsSP2Triangles(20, 22, 21, 0, 22, 23, 21, 0),
    gsSP2Triangles(23, 24, 21, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 25, 27, 0, 28, 29, 25, 0),
    gsSP2Triangles(29, 30, 25, 0, 25, 30, 26, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_005AB8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[379], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_0072B8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[383], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_005AB8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[387], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_0072B8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[391], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_005AB8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[395], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_0072B8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[399], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_005AB8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[403], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_0072B8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[407], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_005AB8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[411], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_0072B8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[415], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_005AB8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[419], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_0072B8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[423], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_005AB8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[427], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_0072B8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[431], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_005AB8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[435], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_0072B8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[439], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_003AB8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[446], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_0072B8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR
                         | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[454], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(3, 6, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(men_room_7Tex_0036B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&men_room_7Vtx_000130[461], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx men_room_7Vtx_002CC8[] = {
#include "assets/scenes/dungeons/men/men_room_7Vtx_002CC8.vtx.inc"
};

Gfx men_room_7DL_003348[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_7Vtx_002CC8[96], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_room_7Tex_0062B8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_7Vtx_002CC8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&men_room_7Vtx_002CC8[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&men_room_7Vtx_002CC8[64], 32, 0),
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

Vtx men_room_7Vtx_0034C8[] = {
#include "assets/scenes/dungeons/men/men_room_7Vtx_0034C8.vtx.inc"
};

Gfx men_room_7DL_0035D8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&men_room_7Vtx_0034C8[9], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(men_room_7Tex_004AB8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_DECAL2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(men_room_7Vtx_0034C8, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 6, 1, 0, 7, 8, 1, 0),
    gsSPEndDisplayList(),
};

u8 men_room_7_unaccounted_003698[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1E, 0xC0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x33, 0x48, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x35, 0xD8, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 men_room_7Tex_0036B8[] = {
#include "assets/scenes/dungeons/men/men_room_7Tex_0036B8.ci8.inc.c"
};

u64 men_room_7Tex_003AB8[] = {
#include "assets/scenes/dungeons/men/men_room_7Tex_003AB8.ci8.inc.c"
};

u64 men_room_7Tex_0042B8[] = {
#include "assets/scenes/dungeons/men/men_room_7Tex_0042B8.ci8.inc.c"
};

u64 men_room_7Tex_004AB8[] = {
#include "assets/scenes/dungeons/men/men_room_7Tex_004AB8.rgba16.inc.c"
};

u64 men_room_7Tex_0052B8[] = {
#include "assets/scenes/dungeons/men/men_room_7Tex_0052B8.ci8.inc.c"
};

u64 men_room_7Tex_005AB8[] = {
#include "assets/scenes/dungeons/men/men_room_7Tex_005AB8.ci8.inc.c"
};

u64 men_room_7Tex_0062B8[] = {
#include "assets/scenes/dungeons/men/men_room_7Tex_0062B8.rgba16.inc.c"
};

u64 men_room_7Tex_0072B8[] = {
#include "assets/scenes/dungeons/men/men_room_7Tex_0072B8.ci8.inc.c"
};

u64 men_room_7Tex_007AB8[] = {
#include "assets/scenes/dungeons/men/men_room_7Tex_007AB8.ci8.inc.c"
};

