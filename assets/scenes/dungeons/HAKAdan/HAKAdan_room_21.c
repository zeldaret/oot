#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "HAKAdan_room_21.h"
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
#include "HAKAdan_room_22.h"

SceneCmd HAKAdan_room_21Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&HAKAdan_room_21PolygonType2_000270),
    SCENE_CMD_OBJECT_LIST(13, HAKAdan_room_21ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(34, HAKAdan_room_21ActorList_00005C),
    SCENE_CMD_END(),
};

s16 HAKAdan_room_21ObjectList_000040[] = {
    OBJECT_HAKA_OBJECTS,
    OBJECT_HAKA_DOOR,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_BOMBF,
    OBJECT_D_HSBLOCK,
    OBJECT_SK2,
    OBJECT_ST,
    OBJECT_GI_SUTARU,
    OBJECT_KA,
    OBJECT_EFC_TW,
    OBJECT_TIMEBLOCK,
    OBJECT_GI_HEART,
};

ActorEntry HAKAdan_room_21ActorList_00005C[] = {
    { ACTOR_OBJ_HSBLOCK,    {  -3542,  -1003,   -893 }, {      0, 0X4000,      0 }, 0x0CC1 },
    { ACTOR_OBJ_HSBLOCK,    {  -3254,  -1363,   -886 }, {      0,      0,      0 }, 0x0CC1 },
    { ACTOR_EN_OKARINA_TAG, {   4670,  -1160,  -2005 }, {      0, 0XC000,    0X1 }, 0x1CB8 },
    { ACTOR_EN_SW,          {   3878,   -950,  -1495 }, {      0, 0X4000,      0 }, 0x0000 },
    { ACTOR_EN_ST,          {   3911,  -1123,  -1486 }, {      0, 0X4000,      0 }, 0x0002 },
    { ACTOR_EN_KAKASI2,     {   3972,  -1043,  -1632 }, {      0, 0X4000,    0X3 }, 0x0539 },
    { ACTOR_OBJ_OSHIHIKI,   {   3938,  -1363,  -1486 }, {      0,      0,      0 }, 0x1D02 },
    { ACTOR_OBJ_OSHIHIKI,   {   4478,  -1378,  -1586 }, {      0,      0,      0 }, 0x1DC6 },
    { ACTOR_OBJ_BLOCKSTOP,  {   4478,  -1378,  -1586 }, {      0,      0,      0 }, 0x001D },
    { ACTOR_EN_ITEM00,      {   3971,  -1043,  -1716 }, {      0,      0,      0 }, 0x2203 },
    { ACTOR_EN_ITEM00,      {   3970,  -1043,  -1560 }, {      0,      0,      0 }, 0x2303 },
    { ACTOR_EN_ITEM00,      {  -3473,  -1003,   -927 }, {      0,      0,      0 }, 0x3903 },
    { ACTOR_EN_ITEM00,      {  -3471,  -1003,   -884 }, {      0,      0,      0 }, 0x3A03 },
    { ACTOR_EN_ITEM00,      {  -3164,  -1201,   -646 }, {      0,      0,      0 }, 0x3C03 },
    { ACTOR_EN_SW,          {  -2049,  -1483,  -1419 }, { 0X4000,      0,      0 }, 0x8810 },
    { ACTOR_OBJ_TIMEBLOCK,  {  -3170,  -1363,   -750 }, {      0,      0,    0X2 }, 0xB8FF },
    { ACTOR_EN_TEST,        {   1209,   -974,  -1982 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_TEST,        {   2746,   -991,  -2011 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_ELF_MSG2,       {  -2724,  -1293,   -596 }, {    0X6,   0X11,   0X1E }, 0x2084 },
    { ACTOR_OBJ_TSUBO,      {  -2400,  -1363,  -1470 }, {      0,      0,      0 }, 0x7009 },
    { ACTOR_OBJ_TSUBO,      {  -2230,  -1363,  -1470 }, {      0,      0,      0 }, 0x7609 },
    { ACTOR_OBJ_TSUBO,      {  -2859,  -1363,   -497 }, {      0,      0,      0 }, 0x7A0A },
    { ACTOR_OBJ_TSUBO,      {  -2624,  -1363,   -492 }, {      0,      0,      0 }, 0x7C0E },
    { ACTOR_OBJ_SWITCH,     {  -3536,  -1003,   -941 }, {      0,      0,      0 }, 0x1A00 },
    { ACTOR_EN_BOMBF,       {  -2321,  -1363,   -770 }, {      0, 0X8000,      0 }, 0xFFFF },
    { ACTOR_EN_BOMBF,       {  -2291,  -1363,   -877 }, {      0, 0X8000,      0 }, 0xFFFF },
    { ACTOR_EN_BOMBF,       {  -2270,  -1363,   -743 }, {      0, 0X8000,      0 }, 0xFFFF },
    { ACTOR_EN_BOMBF,       {  -2250,  -1363,   -835 }, {      0, 0X8000,      0 }, 0xFFFF },
    { ACTOR_EN_BOMBF,       {  -2229,  -1363,   -781 }, {      0, 0X8000,      0 }, 0xFFFF },
    { ACTOR_OBJ_SWITCH,     {  -3173,  -1328,   -700 }, {      0, 0X8000,      0 }, 0x0C02 },
    { ACTOR_BG_HAKA_ZOU,    {  -2257,  -1323,   -699 }, {      0,      0,      0 }, 0x1000 },
    { ACTOR_BG_HAKA_SHIP,   {   4738,  -1395,  -2006 }, {      0,      0,      0 }, 0x3800 },
    { ACTOR_EN_BOX,         {   3930,  -1203,  -1366 }, {      0, 0XC000,      0 }, 0x684E },
    { ACTOR_ELF_MSG,        {   4670,  -1172,  -2075 }, {   0x25,      0,      0 }, 0x1F83 },
};

u8 HAKAdan_room_21_possiblePadding_00026C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 HAKAdan_room_21PolygonType2_000270 = { 
    2, 12,
    HAKAdan_room_21PolygonDlist2_00027C,
    HAKAdan_room_21PolygonDlist2_00027C + ARRAY_COUNTU(HAKAdan_room_21PolygonDlist2_00027C)
};

PolygonDlist2 HAKAdan_room_21PolygonDlist2_00027C[12] = {
    { {   4488,  -1383,  -1706 },   1252, HAKAdan_room_21DL_006690, NULL },
    { {   4308,  -1703,  -1906 },   1616, HAKAdan_room_21DL_001A60, NULL },
    { {  -2732,  -1543,  -1261 },   1530, HAKAdan_room_21DL_005110, NULL },
    { {  -2428,  -1703,  -1486 },   1920, HAKAdan_room_21DL_003DB8, NULL },
    { {   4508,  -1203,  -1586 },    669, HAKAdan_room_21DL_000AA8, NULL },
    { {  -2742,  -1363,  -1001 },   1107, HAKAdan_room_21DL_005768, NULL },
    { {   4088,   -893,  -1391 },    624, HAKAdan_room_21DL_000710, NULL },
    { {    706,  -1423,  -1894 },   4556, NULL, HAKAdan_room_21DL_00ACC0 },
    { {  -2537,  -1363,   -686 },   1048, HAKAdan_room_21DL_005500, NULL },
    { {    -42,  -1560,  -1709 },   3858, HAKAdan_room_21DL_002CE8, NULL },
    { {   4508,  -1903,  -1841 },   1370, HAKAdan_room_21DL_0010D0, NULL },
    { {  -2742,  -1903,  -1251 },   1732, HAKAdan_room_21DL_0047A0, NULL },
};

s32 HAKAdan_room_21_terminatorMaybe_00033C = { 0x01000000 };

Vtx HAKAdan_room_21Vtx_000340[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_21Vtx_000340.vtx.inc"
};

Gfx HAKAdan_room_21DL_000710[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_21Vtx_000340[53], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_017BC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_sceneTex_0173C0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 2, 2),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_21Vtx_000340, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(13, 16, 17, 0, 13, 17, 14, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(7, 5, 22, 0, 7, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(26, 28, 27, 0, 28, 26, 29, 0),
    gsSP1Triangle(20, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_21Vtx_000340[32], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 10, 7, 0, 9, 7, 6, 0),
    gsSP2Triangles(11, 12, 10, 0, 11, 10, 9, 0),
    gsSP2Triangles(11, 5, 8, 0, 11, 8, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_21Vtx_000888[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_21Vtx_000888.vtx.inc"
};

Gfx HAKAdan_room_21DL_000AA8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_21Vtx_000888[26], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_0173C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_sceneTex_016BC0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 64),
    gsSPVertex(HAKAdan_room_21Vtx_000888, 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 3, 0),
    gsSP2Triangles(7, 3, 6, 0, 1, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 14, 12, 0),
    gsSP2Triangles(15, 16, 17, 0, 16, 18, 17, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(23, 24, 11, 0, 16, 15, 25, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_21Vtx_000BE0[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_21Vtx_000BE0.vtx.inc"
};

Gfx HAKAdan_room_21DL_0010D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_21Vtx_000BE0[71], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_room_21Tex_00A000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_sceneTex_0173C0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_21Vtx_000BE0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(1, 0, 5, 0, 6, 1, 5, 0),
    gsSP2Triangles(6, 5, 4, 0, 5, 0, 4, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 8, 11, 0),
    gsSP2Triangles(8, 7, 11, 0, 11, 7, 12, 0),
    gsSP2Triangles(12, 13, 10, 0, 10, 11, 12, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 14, 16, 0),
    gsSP2Triangles(18, 14, 17, 0, 14, 18, 19, 0),
    gsSP2Triangles(14, 19, 15, 0, 20, 21, 22, 0),
    gsSP2Triangles(22, 21, 23, 0, 24, 22, 23, 0),
    gsSP2Triangles(24, 20, 22, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_21Vtx_000BE0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(3, 2, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 3, 9, 4, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 10, 13, 0),
    gsSP2Triangles(11, 14, 12, 0, 11, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 15, 0),
    gsSP2Triangles(18, 15, 17, 0, 16, 20, 17, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(3, 25, 26, 0, 3, 26, 9, 0),
    gsSP2Triangles(27, 9, 26, 0, 27, 26, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_21Vtx_000BE0[64], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(3, 5, 6, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_21Vtx_001290[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_21Vtx_001290.vtx.inc"
};

Gfx HAKAdan_room_21DL_001A60[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_21Vtx_001290[117], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(HAKAdan_room_21Tex_00A800, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_21Vtx_001290, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 0, 0, 12, 0, 3, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 14, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 26, 28, 0),
    gsSPVertex(&HAKAdan_room_21Vtx_001290[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(9, 14, 10, 0, 11, 15, 12, 0),
    gsSP2Triangles(8, 16, 9, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_21Vtx_001290[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&HAKAdan_room_21Vtx_001290[93], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_21Vtx_001C18[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_21Vtx_001C18.vtx.inc"
};

Gfx HAKAdan_room_21DL_002CE8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_21Vtx_001C18[261], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_0173C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 2, 2),
    gsDPLoadMultiBlock(HAKAdan_room_21Tex_006E00, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 96),
    gsSPVertex(HAKAdan_room_21Vtx_001C18, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 7, 8, 5, 0),
    gsSP2Triangles(9, 7, 5, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 24, 25, 0, 26, 27, 28, 0),
    gsSP1Triangle(26, 28, 29, 0),
    gsSPVertex(&HAKAdan_room_21Vtx_001C18[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(3, 2, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(5, 4, 6, 0, 10, 8, 7, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSPVertex(&HAKAdan_room_21Vtx_001C18[61], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0),
    gsSP2Triangles(16, 15, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(23, 25, 24, 0, 26, 27, 22, 0),
    gsSP2Triangles(26, 28, 27, 0, 29, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_21Vtx_001C18[93], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(3, 1, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_21Vtx_001C18[125], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 8, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 15, 13, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 18, 19, 0, 20, 21, 9, 0),
    gsSP2Triangles(22, 10, 23, 0, 24, 22, 23, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 25, 27, 0),
    gsSP2Triangles(29, 22, 24, 0, 30, 29, 24, 0),
    gsSP2Triangles(21, 29, 31, 0, 29, 21, 20, 0),
    gsSP2Triangles(20, 9, 8, 0, 10, 22, 8, 0),
    gsSPVertex(&HAKAdan_room_21Vtx_001C18[157], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 0, 4, 0, 1, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 6, 8, 0, 11, 8, 10, 0),
    gsSP2Triangles(11, 12, 6, 0, 13, 9, 14, 0),
    gsSP2Triangles(9, 15, 14, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 18, 5, 0, 1, 5, 18, 0),
    gsSP2Triangles(19, 0, 20, 0, 3, 20, 0, 0),
    gsSP2Triangles(6, 20, 21, 0, 6, 12, 20, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_21Vtx_001C18[189], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&HAKAdan_room_21Vtx_001C18[220], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 5, 4, 7, 0),
    gsSP2Triangles(7, 4, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 9, 11, 0, 13, 8, 4, 0),
    gsSP2Triangles(4, 3, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 7, 8, 0, 18, 17, 8, 0),
    gsSP2Triangles(19, 15, 14, 0, 3, 6, 20, 0),
    gsSP2Triangles(20, 6, 21, 0, 18, 22, 17, 0),
    gsSP2Triangles(23, 1, 24, 0, 1, 23, 2, 0),
    gsSP2Triangles(23, 25, 2, 0, 16, 26, 14, 0),
    gsSP2Triangles(27, 28, 29, 0, 29, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_21Vtx_001C18[252], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP1Triangle(8, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_21Vtx_003088[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_21Vtx_003088.vtx.inc"
};

Gfx HAKAdan_room_21DL_003DB8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_21Vtx_003088[203], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(HAKAdan_room_21Tex_00A800, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_21Vtx_003088, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 1, 0, 8, 1, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 24, 25, 0, 26, 27, 28, 0),
    gsSP1Triangle(26, 28, 29, 0),
    gsSPVertex(&HAKAdan_room_21Vtx_003088[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(25, 30, 26, 0, 28, 31, 29, 0),
    gsSPVertex(&HAKAdan_room_21Vtx_003088[62], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 4, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 4, 12, 0, 13, 8, 14, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_21Vtx_003088[77], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(3, 6, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_21Tex_00AA00, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_21Vtx_003088[84], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_21Tex_00A800, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_21Vtx_003088[88], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_21Tex_00AA00, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_21Vtx_003088[91], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_21Tex_00A800, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_21Vtx_003088[95], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 3, 5, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_21Vtx_003088[102], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(23, 25, 24, 0, 25, 23, 26, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 25, 27, 0),
    gsSP1Triangle(20, 29, 21, 0),
    gsSPVertex(&HAKAdan_room_21Vtx_003088[132], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_21Vtx_003088[137], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(4, 6, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_21Tex_00AA00, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_21Vtx_003088[144], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 0, 4, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_21Tex_00A800, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_21Vtx_003088[150], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(3, 5, 6, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_21Vtx_003088[157], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 9, 10, 0),
    gsSP2Triangles(10, 11, 12, 0, 5, 10, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 14, 17, 0),
    gsSP2Triangles(18, 14, 19, 0, 20, 14, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&HAKAdan_room_21Vtx_003088[187], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP1Triangle(9, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_21Vtx_004260[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_21Vtx_004260.vtx.inc"
};

Gfx HAKAdan_room_21DL_0047A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_21Vtx_004260[76], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_room_21Tex_00A000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_sceneTex_0173C0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_21Vtx_004260, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 2, 6, 4, 0),
    gsSP2Triangles(2, 4, 3, 0, 7, 1, 0, 0),
    gsSP2Triangles(7, 8, 1, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 9, 0, 9, 13, 10, 0),
    gsSP2Triangles(12, 9, 11, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 17, 15, 0, 18, 19, 14, 0),
    gsSP2Triangles(18, 14, 16, 0, 14, 19, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_21Vtx_004260[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(8, 10, 11, 0, 9, 8, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_21Vtx_004260[64], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_21Vtx_004950[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_21Vtx_004950.vtx.inc"
};

Gfx HAKAdan_room_21DL_005110[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_21Vtx_004950[116], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_room_21Tex_007600, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_21Vtx_004950, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_21Vtx_004950[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_21Vtx_004950[64], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_0163C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_21Vtx_004950[80], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(7, 6, 8, 0, 9, 8, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(11, 13, 17, 0, 16, 15, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 11, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_21Tex_007600, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_21Vtx_004950[104], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_0163C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_21Vtx_004950[112], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_21Vtx_005390[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_21Vtx_005390.vtx.inc"
};

Gfx HAKAdan_room_21DL_005500[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_21Vtx_005390[15], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_room_21Tex_006E00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 15),
    gsDPLoadMultiBlock(HAKAdan_sceneTex_016BC0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 96),
    gsSPVertex(HAKAdan_room_21Vtx_005390, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 2, 0, 4, 2, 1, 0),
    gsSP2Triangles(0, 3, 6, 0, 0, 6, 7, 0),
    gsSP2Triangles(5, 4, 6, 0, 4, 7, 6, 0),
    gsSP2Triangles(1, 8, 9, 0, 1, 9, 10, 0),
    gsSP2Triangles(1, 10, 4, 0, 11, 12, 9, 0),
    gsSP2Triangles(12, 10, 9, 0, 13, 8, 1, 0),
    gsSP2Triangles(13, 1, 14, 0, 12, 11, 13, 0),
    gsSP1Triangle(12, 13, 14, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_21Vtx_005648[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_21Vtx_005648.vtx.inc"
};

Gfx HAKAdan_room_21DL_005768[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_21Vtx_005648[10], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_0173C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_sceneTex_016BC0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 64),
    gsSPVertex(HAKAdan_room_21Vtx_005648, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 3, 2, 0, 1, 0, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_21Vtx_005880[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_21Vtx_005880.vtx.inc"
};

Gfx HAKAdan_room_21DL_006690[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_21Vtx_005880[217], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_room_21Tex_007800, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_21Vtx_005880, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_21Tex_007600, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_21Vtx_005880[4], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_21Tex_009800, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_21Vtx_005880[32], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_21Tex_007600, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_21Vtx_005880[40], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_21Vtx_005880[72], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_21Vtx_005880[104], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_21Vtx_005880[136], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_21Tex_008800, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&HAKAdan_room_21Vtx_005880[160], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_21Vtx_005880[164], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_21Tex_007600, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&HAKAdan_room_21Vtx_005880[167], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_21Tex_008800, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&HAKAdan_room_21Vtx_005880[171], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_21Tex_007600, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&HAKAdan_room_21Vtx_005880[174], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_21Tex_008800, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&HAKAdan_room_21Vtx_005880[178], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_21Tex_007800, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_21Vtx_005880[183], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 1, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 5, 7, 0),
    gsSP2Triangles(9, 6, 5, 0, 8, 9, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_21Tex_007600, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_21Vtx_005880[193], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_21Tex_009000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_21Vtx_005880[201], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_21Tex_009800, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_21Vtx_005880[209], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_21Tex_007600, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_21Vtx_005880[213], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 HAKAdan_room_21_unaccounted_006DA0[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x07, 0x10, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0A, 0xA8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x10, 0xD0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1A, 0x60, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2C, 0xE8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3D, 0xB8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x47, 0xA0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x51, 0x10, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x55, 0x00, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x57, 0x68, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x66, 0x90, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 HAKAdan_room_21Tex_006E00[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_21Tex_006E00.rgba16.inc.c"
};

u64 HAKAdan_room_21Tex_007600[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_21Tex_007600.rgba16.inc.c"
};

u64 HAKAdan_room_21Tex_007800[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_21Tex_007800.rgba16.inc.c"
};

u64 HAKAdan_room_21Tex_008800[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_21Tex_008800.rgba16.inc.c"
};

u64 HAKAdan_room_21Tex_009000[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_21Tex_009000.rgba16.inc.c"
};

u64 HAKAdan_room_21Tex_009800[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_21Tex_009800.rgba16.inc.c"
};

u64 HAKAdan_room_21Tex_00A000[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_21Tex_00A000.rgba16.inc.c"
};

u64 HAKAdan_room_21Tex_00A800[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_21Tex_00A800.i4.inc.c"
};

u64 HAKAdan_room_21Tex_00AA00[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_21Tex_00AA00.i4.inc.c"
};

Vtx HAKAdan_room_21Vtx_00AC00[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_21Vtx_00AC00.vtx.inc"
};

Gfx HAKAdan_room_21DL_00ACC0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_21Vtx_00AC00[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_room_21Tex_00ADA8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 15, G_TX_NOMIRROR |
                G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 51),
    gsSPDisplayList(0x08000000),
    gsSPVertex(HAKAdan_room_21Vtx_00AC00, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 HAKAdan_room_21_unaccounted_00AD98[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0xAC, 0xC0, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 HAKAdan_room_21Tex_00ADA8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_21Tex_00ADA8.rgba16.inc.c"
};

