#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "HAKAdan_room_11.h"
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

SceneCmd HAKAdan_room_11Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&HAKAdan_room_11PolygonType2_0001C0),
    SCENE_CMD_OBJECT_LIST(7, HAKAdan_room_11ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(23, HAKAdan_room_11ActorList_000050),
    SCENE_CMD_END(),
};

s16 HAKAdan_room_11ObjectList_000040[] = {
    OBJECT_HAKA_OBJECTS,
    OBJECT_HAKA_DOOR,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_RD,
    OBJECT_DEMO_KEKKAI,
    OBJECT_D_HSBLOCK,
};

ActorEntry HAKAdan_room_11ActorList_000050[] = {
    { ACTOR_OBJ_HSBLOCK,      {   2478,   -903,   1200 }, { 0X4000,      0,      0 }, 0xFFC2 },
    { ACTOR_OBJ_HSBLOCK,      {   2478,   -903,   1404 }, { 0X4000,      0,      0 }, 0xFFC2 },
    { ACTOR_BG_GND_DARKMEIRO, {   2428,  -1043,    864 }, {      0,      0,      0 }, 0x0801 },
    { ACTOR_BG_GND_DARKMEIRO, {   2428,  -1043,    964 }, {      0,      0,      0 }, 0x0801 },
    { ACTOR_BG_GND_DARKMEIRO, {   2478,  -1183,   1200 }, {      0,      0,      0 }, 0x0801 },
    { ACTOR_BG_GND_DARKMEIRO, {   2478,  -1183,   1404 }, {      0,      0,      0 }, 0x0801 },
    { ACTOR_BG_GND_DARKMEIRO, {   2528,  -1043,    864 }, {      0,      0,      0 }, 0x0801 },
    { ACTOR_BG_GND_DARKMEIRO, {   2528,  -1043,    964 }, {      0,      0,      0 }, 0x0801 },
    { ACTOR_EN_RD,            {   2121,  -1343,   1183 }, {      0, 0X1555,      0 }, 0x0102 },
    { ACTOR_EN_RD,            {   2839,  -1343,   1217 }, {      0, 0XEAAB,      0 }, 0x0102 },
    { ACTOR_EN_G_SWITCH,      {   2042,  -1203,    849 }, {      0,      0,      0 }, 0x1FC8 },
    { ACTOR_EN_G_SWITCH,      {   2135,  -1225,   1297 }, {      0,      0,      0 }, 0x1FC8 },
    { ACTOR_EN_G_SWITCH,      {   2254,  -1203,    988 }, {      0,      0,      0 }, 0x1FC8 },
    { ACTOR_EN_G_SWITCH,      {   2478,   -975,    893 }, {      0,      0,      0 }, 0x1FC8 },
    { ACTOR_EN_G_SWITCH,      {   2478,  -1343,   1208 }, {      0,      0,      0 }, 0x1FC8 },
    { ACTOR_EN_G_SWITCH,      {   2478,  -1100,   1200 }, {      0,      0,      0 }, 0x1FC8 },
    { ACTOR_EN_G_SWITCH,      {   2478,  -1100,   1404 }, {      0,      0,      0 }, 0x1FC8 },
    { ACTOR_EN_G_SWITCH,      {   2705,  -1329,   1089 }, {      0,      0,      0 }, 0x1FC8 },
    { ACTOR_EN_G_SWITCH,      {   2730,  -1203,    876 }, {      0,      0,      0 }, 0x1FC8 },
    { ACTOR_EN_G_SWITCH,      {   2940,  -1265,   1069 }, {      0,      0,      0 }, 0x1FC8 },
    { ACTOR_EN_G_SWITCH,      {   2478,  -1343,   1076 }, {      0,      0,      0 }, 0x0288 },
    { ACTOR_BG_HAKA_MEGANE,   {   2478,  -1343,   1134 }, {      0,      0,      0 }, 0x000C },
    { ACTOR_EN_BOX,           {   2478,  -1343,   1012 }, {      0, 0X8000,      0 }, 0x7889 },
};

PolygonType2 HAKAdan_room_11PolygonType2_0001C0 = { 
    2, 6,
    HAKAdan_room_11PolygonDlist2_0001CC,
    HAKAdan_room_11PolygonDlist2_0001CC + ARRAY_COUNTU(HAKAdan_room_11PolygonDlist2_0001CC)
};

PolygonDlist2 HAKAdan_room_11PolygonDlist2_0001CC[6] = {
    { {   2278,  -1213,   1124 },    437, HAKAdan_room_11DL_0008B0, NULL },
    { {   2478,  -1253,   1134 },    583, HAKAdan_room_11DL_001928, NULL },
    { {   2468,  -1293,   1144 },    592, HAKAdan_room_11DL_0013D0, NULL },
    { {   2478,  -1203,    894 },    113, HAKAdan_room_11DL_001B78, NULL },
    { {   2478,  -1053,   1134 },    596, HAKAdan_room_11DL_000F30, NULL },
    { {   2133,  -1123,   1307 },     28, HAKAdan_room_11DL_001D58, NULL },
};

s32 HAKAdan_room_11_terminatorMaybe_00022C = { 0x01000000 };

Vtx HAKAdan_room_11Vtx_000230[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_11Vtx_000230.vtx.inc"
};

Gfx HAKAdan_room_11DL_0008B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_11Vtx_000230[96], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_room_11Tex_002A60, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_11Vtx_000230, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_11Tex_002660, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_11Vtx_000230[12], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_11Tex_002A60, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_11Vtx_000230[20], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_11Vtx_000230[52], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_11Tex_002660, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_11Vtx_000230[60], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_11Tex_002A60, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_11Vtx_000230[76], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_11Tex_002660, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_11Vtx_000230[88], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_11Vtx_000B90[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_11Vtx_000B90.vtx.inc"
};

Gfx HAKAdan_room_11DL_000F30[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_11Vtx_000B90[50], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_room_11Tex_003460, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_sceneTex_016BC0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 96),
    gsSPVertex(HAKAdan_room_11Vtx_000B90, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 9, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(15, 16, 14, 0, 17, 11, 18, 0),
    gsSP2Triangles(17, 18, 19, 0, 18, 20, 19, 0),
    gsSP2Triangles(17, 10, 11, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 21, 24, 20, 0),
    gsSP2Triangles(25, 26, 27, 0, 26, 28, 27, 0),
    gsSP2Triangles(28, 29, 27, 0, 29, 30, 27, 0),
    gsSPVertex(&HAKAdan_room_11Vtx_000B90[31], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0),
    gsSP2Triangles(9, 10, 6, 0, 6, 10, 11, 0),
    gsSP2Triangles(6, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 13, 6, 0),
    gsSP2Triangles(17, 14, 13, 0, 18, 17, 6, 0),
    gsSP2Triangles(15, 18, 16, 0, 18, 6, 16, 0),
    gsSP2Triangles(15, 14, 18, 0, 14, 17, 18, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_11Vtx_0010D0[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_11Vtx_0010D0.vtx.inc"
};

Gfx HAKAdan_room_11DL_0013D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_11Vtx_0010D0[40], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_017BC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_room_11Tex_002C60, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_11Vtx_0010D0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_11Vtx_0010D0[32], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 0, 5, 6, 0),
    gsSP2Triangles(5, 7, 6, 0, 7, 4, 6, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_11Vtx_001518[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_11Vtx_001518.vtx.inc"
};

Gfx HAKAdan_room_11DL_001928[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_11Vtx_001518[57], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(HAKAdan_room_11Tex_001E60, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_11Vtx_001518, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdan_room_11Tex_003C60, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_11Vtx_001518[5], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_11Vtx_001518[37], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_11Vtx_001AA8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_11Vtx_001AA8.vtx.inc"
};

Gfx HAKAdan_room_11DL_001B78[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_11Vtx_001AA8[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_0173C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_sceneTex_016BC0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 2, 2),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 64),
    gsSPVertex(HAKAdan_room_11Vtx_001AA8, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 4, 2, 1, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_11Vtx_001C88[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_11Vtx_001C88.vtx.inc"
};

Gfx HAKAdan_room_11DL_001D58[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_11Vtx_001C88[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(HAKAdan_room_11Tex_001E60, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_11Vtx_001C88, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 1, 0, 4, 0),
    gsSP2Triangles(1, 0, 4, 0, 1, 4, 3, 0),
    gsSP2Triangles(1, 3, 2, 0, 0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u8 HAKAdan_room_11_unaccounted_001E28[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x08, 0xB0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0F, 0x30, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x13, 0xD0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x19, 0x28, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1B, 0x78, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1D, 0x58, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 HAKAdan_room_11Tex_001E60[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_11Tex_001E60.i4.inc.c"
};

u64 HAKAdan_room_11Tex_002660[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_11Tex_002660.rgba16.inc.c"
};

u64 HAKAdan_room_11Tex_002A60[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_11Tex_002A60.rgba16.inc.c"
};

u64 HAKAdan_room_11Tex_002C60[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_11Tex_002C60.rgba16.inc.c"
};

u64 HAKAdan_room_11Tex_003460[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_11Tex_003460.rgba16.inc.c"
};

u64 HAKAdan_room_11Tex_003C60[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_11Tex_003C60.i4.inc.c"
};

