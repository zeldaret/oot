#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ganontika_room_18.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "ganontika_scene.h"
#include "ganontika_room_0.h"
#include "ganontika_room_1.h"
#include "ganontika_room_2.h"
#include "ganontika_room_3.h"
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
#include "ganontika_room_19.h"

SceneCmd ganontika_room_18Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(6),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&ganontika_room_18PolygonType2_000250),
    SCENE_CMD_OBJECT_LIST(12, ganontika_room_18ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(31, ganontika_room_18ActorList_000058),
    SCENE_CMD_END(),
};

s16 ganontika_room_18ObjectList_000040[] = {
    OBJECT_DEMO_KEKKAI,
    OBJECT_LIGHTSWITCH,
    OBJECT_MIR_RAY,
    OBJECT_BOX,
    OBJECT_EFC_FLASH,
    OBJECT_SYOKUDAI,
    OBJECT_BOMBIWA,
    OBJECT_WALLMASTER,
    OBJECT_BOX,
    OBJECT_EFC_FLASH,
    OBJECT_RD,
    OBJECT_BB,
};

ActorEntry ganontika_room_18ActorList_000058[] = {
    { ACTOR_EN_LIGHT,         {  -1798,    215,    867 }, {      0, 0X2B61,      0 }, 0x83F0 },
    { ACTOR_EN_LIGHT,         {  -1803,    215,    852 }, { 0XFF4A, 0X2AAB,      0 }, 0x83F0 },
    { ACTOR_EN_LIGHT,         {  -1814,    215,    871 }, {      0, 0X2B61,      0 }, 0x83F0 },
    { ACTOR_EN_LIGHT,         {  -1568,    215,    469 }, { 0XFF4A, 0X2AAB,      0 }, 0x83F0 },
    { ACTOR_EN_LIGHT,         {  -1573,    215,    453 }, {   0XB6, 0X2AAB,      0 }, 0x83F0 },
    { ACTOR_EN_LIGHT,         {  -1584,    215,    473 }, { 0XFF4A, 0X2AAB,      0 }, 0x83F0 },
    { ACTOR_EN_RD,            {  -1429,    150,   1045 }, {      0, 0XAAAB,      0 }, 0x7FFE },
    { ACTOR_EN_RD,            {  -1090,    150,   1053 }, {      0, 0XEAAB,      0 }, 0x7F02 },
    { ACTOR_EN_RD,            {  -1179,    150,   1194 }, {      0, 0XCD83,      0 }, 0x7F01 },
    { ACTOR_EN_BB,            {  -1513,    190,    567 }, {      0, 0X3333,      0 }, 0x42FB },
    { ACTOR_EN_BB,            {  -1683,    270,    854 }, {      0, 0X693F,      0 }, 0x52FB },
    { ACTOR_EN_BOX,           {  -1350,    150,   1244 }, {      0, 0XC71C,   0X3C }, 0xB6C6 },
    { ACTOR_EN_BOX,           {  -1130,    250,   1380 }, {      0,  0XAAB,   0X3E }, 0x8907 },
    { ACTOR_OBJ_SWITCH,       {  -1584,    370,    847 }, { 0X8000,      0,      0 }, 0x0803 },
    { ACTOR_EN_BOX,           {  -1011,    250,   1151 }, {      0, 0X4AAB,   0X3D }, 0x8848 },
    { ACTOR_EN_BOX,           {  -1227,    250,   1024 }, {      0, 0X8AAB,   0X38 }, 0x8909 },
    { ACTOR_BG_GND_SOULMEIRO, {  -1175,    449,   1196 }, {      0, 0X2AAB,      0 }, 0x0A01 },
    { ACTOR_BG_GND_SOULMEIRO, {  -1175,    150,   1196 }, {      0, 0X2AAB,      0 }, 0x0A02 },
    { ACTOR_BG_GND_SOULMEIRO, {  -1175,    390,   1196 }, {      0, 0X2AAB,      0 }, 0x0A00 },
    { ACTOR_EN_BOX,           {  -1586,    150,    543 }, {      0, 0XAAAB,      0 }, 0x506A },
    { ACTOR_OBJ_LIGHTSWITCH,  {  -1288,    325,   1390 }, {      0, 0X6AAB,      0 }, 0x0E00 },
    { ACTOR_EN_BOX,           {  -1791,    150,    894 }, {      0, 0XAAAB,      0 }, 0x6954 },
    { ACTOR_EN_WONDER_ITEM,   {  -1284,    150,    671 }, {      0,      0,      0 }, 0x3FF7 },
    { ACTOR_OBJ_LIGHTSWITCH,  {  -1229,    310,   1001 }, {      0,  0XAAB,      0 }, 0x3830 },
    { ACTOR_EN_WALLMAS,       {  -1201,    150,   1237 }, {      0,      0,      0 }, 0x3902 },
    { ACTOR_OBJ_LIGHTSWITCH,  {  -1350,    340,   1095 }, {      0, 0X2AAB,      0 }, 0x3930 },
    { ACTOR_OBJ_LIGHTSWITCH,  {  -1073,    270,   1022 }, {      0, 0XEAAB,      0 }, 0x3A30 },
    { ACTOR_OBJ_LIGHTSWITCH,  {   -998,    270,   1293 }, {      0, 0XAAAB,      0 }, 0x3B30 },
    { ACTOR_OBJ_LIGHTSWITCH,  {  -1377,    310,   1250 }, {      0, 0X47D2,      0 }, 0x3C30 },
    { ACTOR_OBJ_LIGHTSWITCH,  {   -982,    310,   1141 }, {      0, 0XCAAB,      0 }, 0x3D30 },
    { ACTOR_OBJ_LIGHTSWITCH,  {  -1115,    310,   1400 }, {      0, 0X8E39,      0 }, 0x3E30 },
};

u8 ganontika_room_18_possiblePadding_000248[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 ganontika_room_18PolygonType2_000250 = { 
    2, 10,
    ganontika_room_18PolygonDlist2_00025C,
    ganontika_room_18PolygonDlist2_00025C + ARRAY_COUNTU(ganontika_room_18PolygonDlist2_00025C)
};

PolygonDlist2 ganontika_room_18PolygonDlist2_00025C[10] = {
    { {  -1176,    419,   1195 },     81, ganontika_room_18DL_002E80, NULL },
    { {  -1176,    150,   1195 },    141, ganontika_room_18DL_0028E0, NULL },
    { {  -1287,    250,   1385 },    123, ganontika_room_18DL_001720, ganontika_room_18DL_00B5B0 },
    { {  -1524,    250,    754 },    372, ganontika_room_18DL_001FC8, NULL },
    { {  -1533,    350,    754 },    351, ganontika_room_18DL_003108, NULL },
    { {  -1533,    250,    755 },    122, ganontika_room_18DL_003530, NULL },
    { {  -1646,    250,    690 },    117, ganontika_room_18DL_003B70, NULL },
    { {  -1582,    195,    458 },     34, ganontika_room_18DL_003E48, NULL },
    { {  -1812,    195,    857 },     34, ganontika_room_18DL_004188, NULL },
    { {  -1227,    270,   1198 },    341, ganontika_room_18DL_000D70, NULL },
};

s32 ganontika_room_18_terminatorMaybe_0002FC = { 0x01000000 };

Vtx ganontika_room_18Vtx_000300[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_18Vtx_000300.vtx.inc"
};

Gfx ganontika_room_18DL_000D70[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_18Vtx_000300[159], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_18Tex_00A380, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_18Vtx_000300, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 13, 11, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0),
    gsSP2Triangles(14, 3, 2, 0, 14, 2, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsSPVertex(&ganontika_room_18Vtx_000300[16], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 3, 0, 7, 4, 3, 0),
    gsSP2Triangles(0, 8, 1, 0, 8, 9, 1, 0),
    gsSP2Triangles(9, 3, 1, 0, 9, 6, 3, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(11, 14, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(16, 10, 17, 0, 16, 11, 10, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(ganontika_room_18Tex_007F80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_18Vtx_000300[34], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(9, 10, 3, 0, 9, 3, 8, 0),
    gsSP2Triangles(10, 4, 3, 0, 0, 11, 1, 0),
    gsSP2Triangles(11, 12, 5, 0, 11, 5, 1, 0),
    gsSP1Triangle(12, 6, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsSPVertex(&ganontika_room_18Vtx_000300[47], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 11, 0, 14, 11, 10, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(ganontika_room_18Tex_007F80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_18Vtx_000300[63], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsSPVertex(&ganontika_room_18Vtx_000300[69], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 7, 0, 6, 4, 3, 0),
    gsSP2Triangles(8, 6, 7, 0, 0, 8, 1, 0),
    gsSP2Triangles(8, 9, 1, 0, 8, 7, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_18Tex_005380, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_18Vtx_000300[79], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_020380, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_18Vtx_000300[103], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_18Vtx_000300[107], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_020380, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_18Vtx_000300[111], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_18Vtx_000300[115], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_020380, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_18Vtx_000300[119], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_18Vtx_000300[123], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_020380, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_18Vtx_000300[127], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_18Vtx_000300[131], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_020380, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_18Vtx_000300[135], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_18Vtx_000300[139], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_020380, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_18Vtx_000300[143], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_18Vtx_000300[147], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_18Vtx_001590[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_18Vtx_001590.vtx.inc"
};

Gfx ganontika_room_18DL_001720[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_18Vtx_001590[17], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
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
    gsSPVertex(ganontika_room_18Vtx_001590, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(ganontika_room_18Tex_009980, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, ganontika_room_18TLUT_004360),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&ganontika_room_18Vtx_001590[12], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_18Vtx_0018B8[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_18Vtx_0018B8.vtx.inc"
};

Gfx ganontika_room_18DL_001FC8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_18Vtx_0018B8[105], 8, 0),
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
    gsSPVertex(ganontika_room_18Vtx_0018B8, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 3, 0, 2, 5, 4, 0),
    gsSP2Triangles(5, 6, 4, 0, 5, 7, 6, 0),
    gsSP2Triangles(2, 1, 5, 0, 5, 1, 7, 0),
    gsSP2Triangles(1, 8, 7, 0, 9, 8, 1, 0),
    gsSP2Triangles(0, 9, 1, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 12, 13, 0, 14, 15, 16, 0),
    gsSP1Triangle(14, 16, 17, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(ganontika_room_18Tex_007F80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_18Vtx_0018B8[18], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(1, 4, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsSPVertex(&ganontika_room_18Vtx_0018B8[23], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F580, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_18Vtx_0018B8[27], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsSPVertex(&ganontika_room_18Vtx_0018B8[31], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F580, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_18Vtx_0018B8[35], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsSPVertex(&ganontika_room_18Vtx_0018B8[39], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(ganontika_room_18Tex_007F80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_18Vtx_0018B8[43], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 0, 7, 0, 6, 3, 0, 0),
    gsSP2Triangles(6, 8, 3, 0, 8, 9, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsSPVertex(&ganontika_room_18Vtx_0018B8[53], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 7, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 10, 9, 0),
    gsSP2Triangles(5, 11, 6, 0, 11, 12, 6, 0),
    gsSP2Triangles(11, 13, 12, 0, 12, 8, 6, 0),
    gsSP2Triangles(13, 14, 12, 0, 14, 8, 12, 0),
    gsSP2Triangles(14, 10, 8, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP1Triangle(19, 21, 22, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F580, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_18Vtx_0018B8[76], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsSPVertex(&ganontika_room_18Vtx_0018B8[80], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(ganontika_room_18Tex_007F80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_18Vtx_0018B8[85], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(ganontika_sceneTex_01F780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ganontika_sceneTLUT_01F380),
    gsSPVertex(&ganontika_room_18Vtx_0018B8[91], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 6, 0),
    gsSP2Triangles(8, 9, 6, 0, 9, 7, 6, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(ganontika_room_18Tex_007F80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_18Vtx_0018B8[101], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_18Vtx_002710[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_18Vtx_002710.vtx.inc"
};

Gfx ganontika_room_18DL_0028E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_18Vtx_002710[21], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_18Tex_007F80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_18Vtx_002710, 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 3, 6, 0),
    gsSP2Triangles(3, 2, 7, 0, 3, 7, 6, 0),
    gsSP2Triangles(2, 4, 7, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 8, 9, 0, 7, 4, 8, 0),
    gsSP2Triangles(4, 10, 11, 0, 10, 12, 13, 0),
    gsSP2Triangles(10, 13, 11, 0, 12, 0, 14, 0),
    gsSP2Triangles(12, 10, 1, 0, 12, 1, 0, 0),
    gsSP2Triangles(10, 4, 1, 0, 9, 15, 16, 0),
    gsSP2Triangles(9, 8, 17, 0, 9, 17, 15, 0),
    gsSP2Triangles(8, 4, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(15, 18, 19, 0, 17, 4, 18, 0),
    gsSP2Triangles(20, 19, 13, 0, 19, 18, 11, 0),
    gsSP2Triangles(19, 11, 13, 0, 18, 4, 11, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_18Vtx_002A00[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_18Vtx_002A00.vtx.inc"
};

Gfx ganontika_room_18DL_002E80[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_18Vtx_002A00[64], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_18Tex_004380, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_18Vtx_002A00, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsSP2Triangles(24, 25, 26, 0, 25, 27, 26, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 31, 30, 0),
    gsSPVertex(&ganontika_room_18Vtx_002A00[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsSP2Triangles(24, 25, 26, 0, 25, 27, 26, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 31, 30, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_18Vtx_002FB8[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_18Vtx_002FB8.vtx.inc"
};

Gfx ganontika_room_18DL_003108[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_18Vtx_002FB8[13], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_18Tex_00A380, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_18Vtx_002FB8, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 0, 7, 6, 0),
    gsSP2Triangles(7, 8, 6, 0, 8, 5, 6, 0),
    gsSP2Triangles(4, 1, 0, 0, 4, 0, 6, 0),
    gsSP2Triangles(9, 0, 10, 0, 9, 7, 0, 0),
    gsSP2Triangles(11, 5, 8, 0, 11, 12, 5, 0),
    gsSP1Triangle(12, 3, 5, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_18Vtx_0031F0[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_18Vtx_0031F0.vtx.inc"
};

Gfx ganontika_room_18DL_003530[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_18Vtx_0031F0[44], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_18Tex_009180, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_18Vtx_0031F0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_18Tex_008F80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&ganontika_room_18Vtx_0031F0[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_18Tex_009180, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&ganontika_room_18Vtx_0031F0[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_18Tex_008F80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&ganontika_room_18Vtx_0031F0[12], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_18Tex_009180, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&ganontika_room_18Vtx_0031F0[16], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_18Tex_008F80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&ganontika_room_18Vtx_0031F0[20], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_18Vtx_0037F0[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_18Vtx_0037F0.vtx.inc"
};

Gfx ganontika_room_18DL_003B70[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_18Vtx_0037F0[48], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(ganontika_room_18Tex_00A180, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_18Vtx_0037F0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(5, 22, 7, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 1, 3, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&ganontika_room_18Vtx_0037F0[32], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_18Vtx_003C88[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_18Vtx_003C88.vtx.inc"
};

Gfx ganontika_room_18DL_003E48[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_18Vtx_003C88[20], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_18Tex_005780, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_18Vtx_003C88, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_18Tex_006780, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_18Vtx_003C88[6], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_18Tex_007780, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&ganontika_room_18Vtx_003C88[15], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 1, 0, 0, 1, 4, 3, 0),
    gsSPEndDisplayList(),
};

Vtx ganontika_room_18Vtx_003FC8[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_18Vtx_003FC8.vtx.inc"
};

Gfx ganontika_room_18DL_004188[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_18Vtx_003FC8[20], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_18Tex_005780, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ganontika_room_18Vtx_003FC8, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_18Tex_006780, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ganontika_room_18Vtx_003FC8[6], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ganontika_room_18Tex_007780, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&ganontika_room_18Vtx_003FC8[15], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(2, 1, 4, 0, 3, 4, 1, 0),
    gsSPEndDisplayList(),
};

u8 ganontika_room_18_unaccounted_004308[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0D, 0x70, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x17, 0x20, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1F, 0xC8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x28, 0xE0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2E, 0x80, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x31, 0x08, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x35, 0x30, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3B, 0x70, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3E, 0x48, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x41, 0x88, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 ganontika_room_18TLUT_004360[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_18TLUT_004360.rgba16.inc.c"
};

u64 ganontika_room_18Tex_004380[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_18Tex_004380.rgba16.inc.c"
};

u64 ganontika_room_18Tex_005380[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_18Tex_005380.ci8.inc.c"
};

u64 ganontika_room_18Tex_005780[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_18Tex_005780.rgba16.inc.c"
};

u64 ganontika_room_18Tex_006780[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_18Tex_006780.rgba16.inc.c"
};

u64 ganontika_room_18Tex_007780[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_18Tex_007780.rgba16.inc.c"
};

u64 ganontika_room_18Tex_007F80[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_18Tex_007F80.rgba16.inc.c"
};

u64 ganontika_room_18Tex_008F80[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_18Tex_008F80.rgba16.inc.c"
};

u64 ganontika_room_18Tex_009180[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_18Tex_009180.rgba16.inc.c"
};

u64 ganontika_room_18Tex_009980[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_18Tex_009980.ci4.inc.c"
};

u64 ganontika_room_18Tex_00A180[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_18Tex_00A180.i4.inc.c"
};

u64 ganontika_room_18Tex_00A380[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_18Tex_00A380.rgba16.inc.c"
};

Vtx ganontika_room_18Vtx_00B380[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_18Vtx_00B380.vtx.inc"
};

Gfx ganontika_room_18DL_00B5B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ganontika_room_18Vtx_00B380[27], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ganontika_room_18Tex_00B6E0, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 254),
    gsSPVertex(ganontika_room_18Vtx_00B380, 27, 0),
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

u8 ganontika_room_18_unaccounted_00B6D0[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xB5, 0xB0, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 ganontika_room_18Tex_00B6E0[] = {
#include "assets/scenes/dungeons/ganontika/ganontika_room_18Tex_00B6E0.ia8.inc.c"
};

