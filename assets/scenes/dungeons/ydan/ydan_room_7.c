#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ydan_room_7.h"
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
#include "ydan_room_8.h"
#include "ydan_room_9.h"
#include "ydan_room_10.h"
#include "ydan_room_11.h"

SceneCmd ydan_room_7Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&ydan_room_7PolygonType2_0002B0),
    SCENE_CMD_OBJECT_LIST(13, ydan_room_7ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(37, ydan_room_7ActorList_00005C),
    SCENE_CMD_END(),
};

s16 ydan_room_7ObjectList_000040[] = {
    OBJECT_YDAN_OBJECTS,
    OBJECT_GOL,
    OBJECT_ST,
    OBJECT_DEKUBABA,
    OBJECT_SYOKUDAI,
    OBJECT_KUSA,
    OBJECT_GI_HEART,
    OBJECT_GI_SUTARU,
    OBJECT_FIREFLY,
    OBJECT_SHOPNUTS,
    OBJECT_EFC_TW,
    OBJECT_TIMEBLOCK,
    OBJECT_HAKA,
};

ActorEntry ydan_room_7ActorList_00005C[] = {
    { ACTOR_EN_KAREBABA,    {  -1703,   -760,    324 }, {      0, 0X5A50,      0 }, 0x0001 },
    { ACTOR_EN_FIREFLY,     {  -1961,   -701,     10 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,     {  -1874,   -700,     95 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,     {  -2045,   -700,     97 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,     {  -1958,   -700,    185 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_KUSA,        {  -1901,   -760,    604 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_DEKUBABA,    {  -1522,   -777,      1 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_EN_DEKUBABA,    {  -2244,   -760,   -267 }, {      0, 0X2000,      0 }, 0x0000 },
    { ACTOR_EN_SW,          {  -2002,   -280,     91 }, {      0,      0,      0 }, 0x8104 },
    { ACTOR_EN_WONDER_ITEM, {  -2273,   -740,    130 }, {      0,      0,      0 }, 0x193F },
    { ACTOR_EN_WONDER_ITEM, {  -2083,   -740,    -87 }, {      0,      0,      0 }, 0x193F },
    { ACTOR_EN_WONDER_ITEM, {  -1773,   -740,    298 }, {      0,      0,      0 }, 0x193F },
    { ACTOR_EN_WONDER_ITEM, {  -1734,   -740,   -160 }, {      0,      0,      0 }, 0x193F },
    { ACTOR_EN_KUSA,        {  -2215,   -760,     56 }, {      0,      0,      0 }, 0xFF02 },
    { ACTOR_EN_KUSA,        {  -2165,   -760,    350 }, {      0,      0,      0 }, 0xFF02 },
    { ACTOR_EN_KUSA,        {  -1700,   -760,    196 }, {      0,      0,      0 }, 0xFF02 },
    { ACTOR_EN_KUSA,        {  -1678,   -760,   -120 }, {      0,      0,      0 }, 0xFF02 },
    { ACTOR_OBJ_TIMEBLOCK,  {  -2142,   -760,     93 }, {      0,      0,      0 }, 0x39FF },
    { ACTOR_OBJ_TIMEBLOCK,  {  -2085,   -701,    217 }, {      0, 0X2000,      0 }, 0x39FF },
    { ACTOR_OBJ_TIMEBLOCK,  {  -1972,   -635,    290 }, {      0,      0,      0 }, 0x39FF },
    { ACTOR_OBJ_TIMEBLOCK,  {  -1846,   -564,    242 }, {      0, 0X6000,      0 }, 0x39FF },
    { ACTOR_OBJ_TIMEBLOCK,  {  -1798,   -493,    115 }, {      0,      0,      0 }, 0x39FF },
    { ACTOR_OBJ_SYOKUDAI,   {  -1961,   -760,      5 }, {      0,      0,      0 }, 0x03F8 },
    { ACTOR_OBJ_SYOKUDAI,   {  -1957,   -760,    181 }, {      0,      0,      0 }, 0x03F8 },
    { ACTOR_OBJ_SYOKUDAI,   {  -2045,   -760,     91 }, {      0,      0,      0 }, 0x03F8 },
    { ACTOR_OBJ_SYOKUDAI,   {  -1875,   -760,     89 }, {      0,      0,      0 }, 0x03F8 },
    { ACTOR_OBJ_SWITCH,     {  -1959,   -760,     90 }, {      0,      0,      0 }, 0x3820 },
    { ACTOR_BG_HAKA,        {  -2280,   -775,    129 }, {      0, 0X4000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,        {  -2283,   -775,    -20 }, {      0, 0X4000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,        {  -2079,   -775,    277 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,        {  -1811,   -775,    -23 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,        {  -1770,   -775,    282 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,        {  -1628,   -775,    180 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,        {  -1723,   -775,   -177 }, {      0, 0XE222,      0 }, 0x0000 },
    { ACTOR_BG_HAKA,        {  -2084,   -775,   -104 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_YDAN_SP,     {  -1355,   -820,      3 }, {      0, 0XC000,      0 }, 0x1FC7 },
    { ACTOR_BG_YDAN_SP,     {  -2297,   -760,   -327 }, {      0, 0X2000,      0 }, 0x1FCF },
};

u8 ydan_room_7_possiblePadding_0002AC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 ydan_room_7PolygonType2_0002B0 = { 
    2, 2,
    ydan_room_7PolygonDlist2_0002BC,
    ydan_room_7PolygonDlist2_0002BC + ARRAY_COUNTU(ydan_room_7PolygonDlist2_0002BC)
};

PolygonDlist2 ydan_room_7PolygonDlist2_0002BC[2] = {
    { {     98,   -790,      0 },    172, NULL, ydan_room_7DL_0079C0 },
    { {  -1172,   -720,    137 },   1393, ydan_room_7DL_001DE0, NULL },
};

s32 ydan_room_7_terminatorMaybe_0002DC = { 0x01000000 };

Vtx ydan_room_7Vtx_0002E0[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_7Vtx_0002E0.vtx.inc"
};

Gfx ydan_room_7DL_001DE0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ydan_room_7Vtx_0002E0[424], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ydan_room_7Tex_004C98, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ydan_sceneTLUT_00B810),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ydan_room_7Vtx_0002E0, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_006098, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_004C98, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[12], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 1, 0, 6, 7, 8, 0),
    gsSP2Triangles(7, 9, 8, 0, 10, 11, 8, 0),
    gsSP2Triangles(8, 12, 13, 0, 8, 13, 1, 0),
    gsSP2Triangles(4, 1, 3, 0, 6, 8, 11, 0),
    gsSP2Triangles(8, 1, 5, 0, 8, 5, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_005898, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[26], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 2, 0, 1, 5, 4, 0),
    gsSP2Triangles(6, 7, 1, 0, 6, 1, 0, 0),
    gsSP2Triangles(7, 8, 5, 0, 7, 5, 1, 0),
    gsSP2Triangles(9, 10, 7, 0, 9, 7, 6, 0),
    gsSP2Triangles(10, 8, 7, 0, 11, 12, 10, 0),
    gsSP2Triangles(11, 10, 9, 0, 13, 14, 12, 0),
    gsSP2Triangles(13, 12, 11, 0, 14, 15, 12, 0),
    gsSP2Triangles(16, 17, 14, 0, 16, 14, 13, 0),
    gsSP2Triangles(17, 18, 15, 0, 17, 15, 14, 0),
    gsSP2Triangles(19, 20, 17, 0, 19, 17, 16, 0),
    gsSP2Triangles(20, 21, 17, 0, 21, 18, 17, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(25, 24, 26, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 25, 27, 0, 27, 26, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&ydan_room_7Vtx_0002E0[57], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 3, 2, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 5, 7, 0, 9, 10, 11, 0),
    gsSP2Triangles(10, 12, 11, 0, 13, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_002C98, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[73], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 1, 3, 5, 0),
    gsSP2Triangles(4, 7, 8, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_005898, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[82], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_002C98, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[92], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 3, 0),
    gsSP2Triangles(8, 9, 6, 0, 3, 1, 8, 0),
    gsSP1Triangle(4, 6, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_005898, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[103], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 4, 3, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 9, 11, 0),
    gsSP2Triangles(10, 11, 12, 0, 12, 11, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 14, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_007098, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[121], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(3, 4, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_005898, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[126], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 3, 0, 4, 3, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 9, 0, 12, 9, 8, 0),
    gsSP2Triangles(14, 15, 13, 0, 14, 13, 12, 0),
    gsSP2Triangles(16, 17, 14, 0, 17, 15, 14, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 21, 23, 0),
    gsSP2Triangles(27, 23, 28, 0, 26, 25, 29, 0),
    gsSP2Triangles(26, 29, 19, 0, 27, 28, 30, 0),
    gsSP2Triangles(29, 20, 19, 0, 20, 30, 31, 0),
    gsSP2Triangles(20, 31, 18, 0, 30, 28, 31, 0),
    gsSPVertex(&ydan_room_7Vtx_0002E0[158], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 1, 6, 0, 5, 7, 3, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(11, 12, 9, 0, 11, 13, 12, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 15, 0),
    gsSP1Triangle(17, 15, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_003498, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[177], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 1, 0, 5, 6, 1, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 11, 8, 0),
    gsSP2Triangles(12, 13, 7, 0, 14, 15, 10, 0),
    gsSP2Triangles(16, 17, 1, 0, 3, 16, 1, 0),
    gsSP1Triangle(1, 17, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_006C98, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[195], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 2, 0, 6, 7, 8, 0),
    gsSP2Triangles(7, 9, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(4, 2, 1, 0, 8, 9, 11, 0),
    gsSP2Triangles(9, 2, 5, 0, 9, 5, 10, 0),
    gsSP2Triangles(0, 12, 13, 0, 0, 13, 14, 0),
    gsSP2Triangles(14, 13, 15, 0, 14, 15, 9, 0),
    gsSP2Triangles(9, 15, 16, 0, 9, 16, 2, 0),
    gsSP2Triangles(2, 16, 12, 0, 2, 12, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_005898, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[212], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_002C98, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[218], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_005898, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[222], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 3, 7, 0, 3, 0, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(8, 5, 12, 0, 8, 12, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 9, 0),
    gsSP2Triangles(11, 9, 14, 0, 11, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_002C98, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[238], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_005898, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[242], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 1, 0, 4, 1, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_002C98, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[248], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_005898, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[252], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 1, 0, 4, 1, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_002C98, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[258], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 5, 0, 4, 6, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_005898, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[265], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_004C98, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[269], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 1, 0, 0, 4, 9, 7, 0),
    gsSP2Triangles(4, 10, 9, 0, 1, 8, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_005498, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[281], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_004C98, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[313], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 1, 4, 0, 1, 5, 4, 0),
    gsSP2Triangles(6, 7, 3, 0, 6, 8, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_003498, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[322], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0),
    gsSP1Triangle(5, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_003C98, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[328], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_003498, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[331], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(2, 4, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 10, 0, 10, 13, 11, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_003C98, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[347], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(4, 1, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 8, 6, 9, 0),
    gsSP1Triangle(9, 6, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_003498, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[358], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(0, 2, 4, 0, 2, 5, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 7, 6, 0),
    gsSP2Triangles(6, 8, 10, 0, 8, 11, 10, 0),
    gsSP2Triangles(11, 12, 10, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 16, 13, 0, 17, 18, 19, 0),
    gsSP2Triangles(13, 19, 14, 0, 19, 18, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_006898, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[378], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(2, 5, 4, 0, 1, 6, 2, 0),
    gsSP2Triangles(2, 6, 7, 0, 5, 2, 8, 0),
    gsSP1Triangle(2, 7, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_003498, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[387], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(12, 13, 10, 0, 12, 10, 9, 0),
    gsSP2Triangles(8, 14, 15, 0, 8, 15, 16, 0),
    gsSP2Triangles(16, 15, 12, 0, 15, 17, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_004498, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[405], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 8, 0),
    gsSP2Triangles(9, 6, 8, 0, 9, 8, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ydan_room_7Tex_006898, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ydan_room_7Vtx_0002E0[416], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(0, 4, 3, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 6, 5, 7, 0),
    gsSPEndDisplayList(),
};

u8 ydan_room_7_unaccounted_002C88[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1D, 0xE0, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 ydan_room_7Tex_002C98[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_7Tex_002C98.ci8.inc.c"
};

u64 ydan_room_7Tex_003498[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_7Tex_003498.ci8.inc.c"
};

u64 ydan_room_7Tex_003C98[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_7Tex_003C98.ci8.inc.c"
};

u64 ydan_room_7Tex_004498[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_7Tex_004498.ci8.inc.c"
};

u64 ydan_room_7Tex_004C98[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_7Tex_004C98.ci8.inc.c"
};

u64 ydan_room_7Tex_005498[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_7Tex_005498.ci8.inc.c"
};

u64 ydan_room_7Tex_005898[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_7Tex_005898.ci8.inc.c"
};

u64 ydan_room_7Tex_006098[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_7Tex_006098.ci8.inc.c"
};

u64 ydan_room_7Tex_006898[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_7Tex_006898.ci8.inc.c"
};

u64 ydan_room_7Tex_006C98[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_7Tex_006C98.ci8.inc.c"
};

u64 ydan_room_7Tex_007098[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_7Tex_007098.ci8.inc.c"
};

u8 ydan_room_7_possiblePadding_007898[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx ydan_room_7Vtx_0078A0[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_7Vtx_0078A0.vtx.inc"
};

Gfx ydan_room_7DL_0079C0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ydan_room_7Vtx_0078A0[10], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ydan_room_7Tex_007A98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPVertex(ydan_room_7Vtx_0078A0, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 1, 0, 0, 7, 5, 4, 0),
    gsSP2Triangles(6, 8, 1, 0, 7, 4, 9, 0),
    gsSPEndDisplayList(),
};

u8 ydan_room_7_unaccounted_007A88[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x79, 0xC0, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 ydan_room_7Tex_007A98[] = {
#include "assets/scenes/dungeons/ydan/ydan_room_7Tex_007A98.rgba16.inc.c"
};

