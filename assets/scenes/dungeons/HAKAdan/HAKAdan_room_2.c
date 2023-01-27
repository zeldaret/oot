#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "HAKAdan_room_2.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "HAKAdan_scene.h"
#include "HAKAdan_room_0.h"
#include "HAKAdan_room_1.h"
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

SceneCmd HAKAdan_room_2Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, true, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&HAKAdan_room_2PolygonType2_0001A0),
    SCENE_CMD_OBJECT_LIST(7, HAKAdan_room_2ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(22, HAKAdan_room_2ActorList_00004C),
    SCENE_CMD_END(),
};

s16 HAKAdan_room_2ObjectList_000040[] = {
    OBJECT_HAKA_OBJECTS,
    OBJECT_HAKA_DOOR,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_D_HSBLOCK,
    OBJECT_DEMO_KEKKAI,
    OBJECT_VM,
};

ActorEntry HAKAdan_room_2ActorList_00004C[] = {
    { ACTOR_BG_GND_DARKMEIRO, {   1056,    -63,     55 }, {      0, 0X4000,      0 }, 0x0501 },
    { ACTOR_OBJ_SYOKUDAI,     {   1381,     75,    -65 }, {  0XAAB, 0XC000,      0 }, 0x1085 },
    { ACTOR_OBJ_SYOKUDAI,     {   1381,     75,    175 }, {  0XAAB, 0XC000,      0 }, 0x1085 },
    { ACTOR_EN_WONDER_TALK2,  {    738,    -38,     54 }, {      0,      0,    0X1 }, 0x493C },
    { ACTOR_EN_WONDER_TALK2,  {    304,     -2,    294 }, {      0, 0XC000,   0X15 }, 0x4F3D },
    { ACTOR_BG_HAKA_MEGANE,   {    326,    -63,   -185 }, {      0, 0X4000,      0 }, 0x0004 },
    { ACTOR_BG_HAKA_MEGANE,   {    326,    -63,    295 }, {      0, 0X4000,      0 }, 0x0004 },
    { ACTOR_BG_HAKA_MEGANE,   {   3358,   -543,     55 }, {      0, 0XC000,      0 }, 0x0006 },
    { ACTOR_BG_HAKA_GATE,     {    666,    -63,     55 }, {      0,      0,      0 }, 0x0B00 },
    { ACTOR_BG_HAKA_ZOU,      {    316,     17,   -185 }, {      0, 0X4000,      0 }, 0x0201 },
    { ACTOR_BG_HAKA_GATE,     {    666,    -63,     55 }, {      0,      0,      0 }, 0x0B01 },
    { ACTOR_BG_HAKA_GATE,     {    456,     17,     55 }, {      0,      0,      0 }, 0x0B03 },
    { ACTOR_BG_HAKA_GATE,     {    561,     17,   -127 }, {      0, 0XD555,      0 }, 0x0B03 },
    { ACTOR_BG_HAKA_GATE,     {    771,     17,   -127 }, {      0, 0XAAAB,      0 }, 0x0B03 },
    { ACTOR_BG_HAKA_GATE,     {    561,     17,    237 }, {      0, 0X2AAB,      0 }, 0x0B03 },
    { ACTOR_BG_HAKA_GATE,     {    771,     17,    237 }, {      0, 0X5555,      0 }, 0x0B03 },
    { ACTOR_BG_HAKA_GATE,     {   1421,    -63,     55 }, {      0,      0,      0 }, 0x0B02 },
    { ACTOR_OBJ_KIBAKO,       {    366,    336,    114 }, {      0,      0,      0 }, 0x3009 },
    { ACTOR_OBJ_KIBAKO,       {    363,    -63,     -7 }, {      0,      0,      0 }, 0x310E },
    { ACTOR_OBJ_KIBAKO,       {    363,    -63,    -62 }, {      0,      0,      0 }, 0x3904 },
    { ACTOR_OBJ_KIBAKO,       {    365,    336,     52 }, {      0,      0,      0 }, 0x3A03 },
    { ACTOR_EN_VM,            {   3358,   -543,     55 }, {      0, 0XC000,      0 }, 0x0C00 },
};

u8 HAKAdan_room_2_possiblePadding_00019C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 HAKAdan_room_2PolygonType2_0001A0 = { 
    2, 9,
    HAKAdan_room_2PolygonDlist2_0001AC,
    HAKAdan_room_2PolygonDlist2_0001AC + ARRAY_COUNTU(HAKAdan_room_2PolygonDlist2_0001AC)
};

PolygonDlist2 HAKAdan_room_2PolygonDlist2_0001AC[9] = {
    { {    866,     -3,     55 },    546, HAKAdan_room_2DL_004960, NULL },
    { {   3543,   -443,     55 },    296, HAKAdan_room_2DL_006828, NULL },
    { {   3467,   -543,     55 },    364, HAKAdan_room_2DL_005260, NULL },
    { {   2686,   -423,     55 },    438, HAKAdan_room_2DL_006A90, NULL },
    { {    981,   -468,    355 },   1536, HAKAdan_room_2DL_002248, NULL },
    { {    621,     17,     99 },    851, HAKAdan_room_2DL_003570, NULL },
    { {   3467,   -443,     55 },    388, HAKAdan_room_2DL_005B28, NULL },
    { {   1451,   -628,    155 },   1738, HAKAdan_room_2DL_006158, NULL },
    { {    606,     57,     55 },    883, HAKAdan_room_2DL_000A50, NULL },
};

s32 HAKAdan_room_2_terminatorMaybe_00023C = { 0x01000000 };

Vtx HAKAdan_room_2Vtx_000240[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_2Vtx_000240.vtx.inc"
};

Gfx HAKAdan_room_2DL_000A50[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_2Vtx_000240[121], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_room_2Tex_009BD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_room_2Tex_0091D8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_2Vtx_000240, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 22, 0, 24, 22, 26, 0),
    gsSP2Triangles(25, 23, 22, 0, 27, 28, 29, 0),
    gsSP2Triangles(27, 29, 12, 0, 15, 27, 12, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_2Vtx_000240[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 0, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 8, 9, 0, 10, 11, 7, 0),
    gsSP2Triangles(10, 7, 6, 0, 4, 12, 13, 0),
    gsSP2Triangles(4, 13, 5, 0, 14, 10, 6, 0),
    gsSP2Triangles(14, 6, 15, 0, 16, 14, 15, 0),
    gsSP2Triangles(12, 17, 13, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 24, 25, 0, 26, 27, 28, 0),
    gsSP1Triangle(26, 28, 29, 0),
    gsSPVertex(&HAKAdan_room_2Vtx_000240[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(14, 16, 17, 0, 14, 17, 18, 0),
    gsSP2Triangles(15, 14, 18, 0, 15, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(16, 22, 24, 0, 16, 24, 17, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsSP2Triangles(22, 29, 30, 0, 22, 30, 24, 0),
    gsSP1Triangle(31, 15, 19, 0),
    gsSPVertex(&HAKAdan_room_2Vtx_000240[94], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 10, 8, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 22, 21, 23, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 15, 18, 0),
    gsSP1Triangle(25, 18, 26, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_2Vtx_000C88[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_2Vtx_000C88.vtx.inc"
};

Gfx HAKAdan_room_2DL_002248[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_2Vtx_000C88[340], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_017BC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_room_2Tex_0091D8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_2Vtx_000C88, 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 3, 0, 4, 3, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(6, 9, 10, 0, 6, 11, 12, 0),
    gsSP2Triangles(6, 12, 7, 0, 9, 8, 13, 0),
    gsSP2Triangles(10, 9, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(20, 21, 17, 0, 19, 18, 22, 0),
    gsSP2Triangles(16, 23, 14, 0, 14, 24, 15, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_2Vtx_000C88[29], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_2Vtx_000C88[33], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 6, 1, 0, 2, 1, 7, 0),
    gsSP2Triangles(8, 4, 3, 0, 5, 9, 3, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_2Vtx_000C88[43], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_2Vtx_000C88[47], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_2Vtx_000C88[55], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_2Vtx_000C88[59], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_2Vtx_000C88[67], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_2Vtx_000C88[75], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 14, 16, 0),
    gsSP2Triangles(16, 14, 13, 0, 15, 17, 14, 0),
    gsSP1Triangle(15, 18, 17, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_2Vtx_000C88[94], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 3, 5, 0, 4, 5, 6, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_2Vtx_000C88[101], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 4, 5, 3, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 11, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 13, 12, 0),
    gsSP2Triangles(19, 12, 20, 0, 21, 22, 23, 0),
    gsSP1Triangle(21, 23, 24, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_2Vtx_000C88[126], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP1Triangle(16, 17, 18, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_2Vtx_000C88[145], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsSP2Triangles(21, 24, 23, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 28, 26, 0, 28, 29, 26, 0),
    gsSPVertex(&HAKAdan_room_2Vtx_000C88[175], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 26, 25, 0),
    gsSP2Triangles(28, 25, 24, 0, 28, 27, 25, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_2Vtx_000C88[207], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSP2Triangles(10, 8, 7, 0, 12, 2, 13, 0),
    gsSP2Triangles(2, 1, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(15, 17, 16, 0, 18, 19, 20, 0),
    gsSP2Triangles(19, 21, 20, 0, 21, 22, 20, 0),
    gsSP2Triangles(23, 22, 24, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&HAKAdan_room_2Vtx_000C88[237], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 11, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(24, 26, 25, 0, 27, 28, 29, 0),
    gsSP1Triangle(30, 27, 29, 0),
    gsSPVertex(&HAKAdan_room_2Vtx_000C88[268], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_2Vtx_000C88[300], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(12, 15, 16, 0, 12, 16, 17, 0),
    gsSP2Triangles(12, 17, 18, 0, 12, 18, 19, 0),
    gsSP2Triangles(12, 19, 20, 0, 12, 20, 21, 0),
    gsSP2Triangles(12, 21, 22, 0, 12, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_2Vtx_000C88[332], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_2Vtx_002790[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_2Vtx_002790.vtx.inc"
};

Gfx HAKAdan_room_2DL_003570[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_2Vtx_002790[214], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(HAKAdan_room_2Tex_00A3D8, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_2Vtx_002790, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 7, 0),
    gsSP2Triangles(9, 7, 11, 0, 12, 9, 11, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 13, 15, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 24, 26, 0, 28, 25, 24, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_2Vtx_002790[32], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_2Tex_00A7D8, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_2Vtx_002790[36], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP1Triangle(3, 2, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_2Tex_00A5D8, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_2Vtx_002790[41], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_2Tex_0099D8, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_002790[55], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_2Tex_00A5D8, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_002790[59], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_2Tex_0099D8, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_002790[65], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_2Tex_00A5D8, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_002790[73], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_2Tex_0099D8, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_002790[79], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_2Tex_00A5D8, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_002790[83], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP1Triangle(22, 23, 24, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_2Tex_00A3D8, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_002790[108], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_2Tex_00A5D8, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_002790[112], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(3, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_017BC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&HAKAdan_room_2Vtx_002790[119], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_2Tex_00A7D8, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_2Vtx_002790[123], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(1, 4, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_2Tex_00A3D8, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_2Vtx_002790[128], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_2Vtx_002790[160], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 8, 11, 0, 12, 11, 13, 0),
    gsSP2Triangles(14, 4, 7, 0, 14, 7, 15, 0),
    gsSP2Triangles(16, 14, 15, 0, 16, 15, 17, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(12, 13, 20, 0, 12, 20, 21, 0),
    gsSP2Triangles(20, 22, 23, 0, 20, 23, 21, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(24, 27, 28, 0, 24, 28, 29, 0),
    gsSPVertex(&HAKAdan_room_2Vtx_002790[190], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(9, 12, 13, 0, 9, 13, 10, 0),
    gsSP2Triangles(6, 14, 15, 0, 6, 15, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_2Tex_006BD8, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_002790[206], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_2Vtx_003C30[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_2Vtx_003C30.vtx.inc"
};

Gfx HAKAdan_room_2DL_004960[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_2Vtx_003C30[203], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_room_2Tex_0081D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_2Vtx_003C30, 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 0, 4, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 6, 0),
    gsSP2Triangles(8, 5, 9, 0, 5, 7, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 12, 11, 0),
    gsSP2Triangles(13, 14, 12, 0, 14, 10, 12, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 15, 17, 0),
    gsSP2Triangles(18, 17, 19, 0, 16, 19, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 22, 21, 0),
    gsSP2Triangles(24, 23, 21, 0, 20, 24, 21, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_2Tex_007FD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_003C30[25], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_2Tex_0073D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_003C30[37], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 8, 7, 0, 10, 7, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_2Tex_007FD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_003C30[49], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_2Tex_0073D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_003C30[53], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 1, 0, 4, 1, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 8, 7, 0, 10, 7, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_2Tex_007FD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_003C30[65], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_2Tex_0073D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_003C30[69], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 1, 0, 4, 1, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_2Tex_007FD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_003C30[81], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_2Tex_0073D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_003C30[105], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 8, 7, 0, 10, 7, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_2Tex_007FD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_003C30[117], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_2Tex_0073D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_003C30[121], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 1, 0, 4, 1, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 8, 7, 0, 10, 7, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_2Tex_007FD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_003C30[133], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_2Tex_0073D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_003C30[137], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 1, 0, 4, 1, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_2Tex_007FD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_003C30[149], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_2Tex_0073D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_003C30[173], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 8, 7, 0, 10, 7, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_2Tex_007FD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_003C30[185], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_2Tex_0073D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_003C30[189], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 1, 0, 4, 1, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_2Tex_007FD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_003C30[195], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_2Vtx_0050A0[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_2Vtx_0050A0.vtx.inc"
};

Gfx HAKAdan_room_2DL_005260[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_2Vtx_0050A0[20], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_0173C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_sceneTex_016BC0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 2),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 64),
    gsSPVertex(HAKAdan_room_2Vtx_0050A0, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 11, 0, 12, 11, 10, 0),
    gsSP2Triangles(14, 13, 12, 0, 14, 12, 15, 0),
    gsSP2Triangles(1, 16, 17, 0, 1, 17, 2, 0),
    gsSP2Triangles(16, 14, 15, 0, 16, 15, 17, 0),
    gsSP2Triangles(18, 0, 3, 0, 18, 3, 19, 0),
    gsSP2Triangles(8, 18, 19, 0, 8, 19, 9, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_2Vtx_0053A8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_2Vtx_0053A8.vtx.inc"
};

Gfx HAKAdan_room_2DL_005B28[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_2Vtx_0053A8[112], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_room_2Tex_009BD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_sceneTex_016BC0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 96),
    gsSPVertex(HAKAdan_room_2Vtx_0053A8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 18, 17, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(20, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(27, 26, 20, 0, 27, 20, 24, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_2Vtx_0053A8[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 21, 19, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 25, 23, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&HAKAdan_room_2Vtx_0053A8[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&HAKAdan_room_2Vtx_0053A8[92], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_2Vtx_005D28[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_2Vtx_005D28.vtx.inc"
};

Gfx HAKAdan_room_2DL_006158[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_2Vtx_005D28[59], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_0173C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 2, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_room_2Tex_0077D8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, 1),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_2Vtx_005D28, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 5, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(11, 10, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 10, 21, 22, 0),
    gsSP2Triangles(23, 10, 22, 0, 23, 12, 10, 0),
    gsSP2Triangles(10, 9, 24, 0, 10, 24, 21, 0),
    gsSP2Triangles(25, 16, 15, 0, 25, 15, 26, 0),
    gsSP2Triangles(20, 19, 27, 0, 20, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_2Vtx_005D28[32], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 4, 7, 8, 0),
    gsSP2Triangles(4, 8, 5, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 10, 13, 14, 0),
    gsSP2Triangles(10, 14, 11, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 16, 19, 20, 0),
    gsSP2Triangles(16, 20, 17, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 22, 25, 26, 0),
    gsSP1Triangle(22, 26, 23, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_2Vtx_0062E8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_2Vtx_0062E8.vtx.inc"
};

Gfx HAKAdan_room_2DL_006828[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_2Vtx_0062E8[76], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_room_2Tex_0073D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_2Vtx_0062E8, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_2Tex_007FD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_2Vtx_0062E8[24], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_2Vtx_0062E8[56], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_2Vtx_0069B0[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_2Vtx_0069B0.vtx.inc"
};

Gfx HAKAdan_room_2DL_006A90[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_2Vtx_0069B0[6], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_room_2Tex_0077D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_sceneTex_0163C0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_2Vtx_0069B0, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSPEndDisplayList(),
};

u8 HAKAdan_room_2_unaccounted_006B88[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0A, 0x50, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x22, 0x48, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x35, 0x70, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x49, 0x60, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x52, 0x60, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x5B, 0x28, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x61, 0x58, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x68, 0x28, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x6A, 0x90, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 HAKAdan_room_2Tex_006BD8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_2Tex_006BD8.i4.inc.c"
};

u64 HAKAdan_room_2Tex_0073D8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_2Tex_0073D8.rgba16.inc.c"
};

u64 HAKAdan_room_2Tex_0077D8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_2Tex_0077D8.rgba16.inc.c"
};

u64 HAKAdan_room_2Tex_007FD8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_2Tex_007FD8.rgba16.inc.c"
};

u64 HAKAdan_room_2Tex_0081D8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_2Tex_0081D8.rgba16.inc.c"
};

u64 HAKAdan_room_2Tex_0091D8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_2Tex_0091D8.rgba16.inc.c"
};

u64 HAKAdan_room_2Tex_0099D8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_2Tex_0099D8.i4.inc.c"
};

u64 HAKAdan_room_2Tex_009BD8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_2Tex_009BD8.rgba16.inc.c"
};

u64 HAKAdan_room_2Tex_00A3D8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_2Tex_00A3D8.i4.inc.c"
};

u64 HAKAdan_room_2Tex_00A5D8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_2Tex_00A5D8.i4.inc.c"
};

u64 HAKAdan_room_2Tex_00A7D8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_2Tex_00A7D8.i4.inc.c"
};

