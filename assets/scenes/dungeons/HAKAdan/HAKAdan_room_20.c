#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "HAKAdan_room_20.h"
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
#include "HAKAdan_room_21.h"
#include "HAKAdan_room_22.h"

SceneCmd HAKAdan_room_20Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&HAKAdan_room_20PolygonType2_000100),
    SCENE_CMD_OBJECT_LIST(8, HAKAdan_room_20ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(11, HAKAdan_room_20ActorList_000050),
    SCENE_CMD_END(),
};

s16 HAKAdan_room_20ObjectList_000040[] = {
    OBJECT_HAKA_OBJECTS,
    OBJECT_HAKA_DOOR,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_HAKACH_OBJECTS,
    OBJECT_RD,
    OBJECT_ST,
    OBJECT_GI_SUTARU,
};

ActorEntry HAKAdan_room_20ActorList_000050[] = {
    { ACTOR_EN_RD,        {   4253,  -1363,  -1070 }, {      0, 0X1555,      0 }, 0x7FFE },
    { ACTOR_EN_RD,        {   4527,  -1363,  -1081 }, {      0, 0XEAAB,      0 }, 0x7FFE },
    { ACTOR_EN_SW,        {   4195,  -1363,  -1299 }, {      0, 0X1C72,      0 }, 0x8808 },
    { ACTOR_OBJ_TSUBO,    {   4222,  -1363,   -916 }, {      0,      0,      0 }, 0x5C01 },
    { ACTOR_OBJ_TSUBO,    {   4549,  -1363,   -922 }, {      0,      0,      0 }, 0x640C },
    { ACTOR_EN_TUBO_TRAP, {   4230,  -1363,  -1180 }, {      0,      0,      0 }, 0x00F6 },
    { ACTOR_EN_TUBO_TRAP, {   4547,  -1363,  -1183 }, {      0,      0,      0 }, 0x03F7 },
    { ACTOR_BG_HAKA_ZOU,  {   4207,  -1337,  -1311 }, {      0,      0,      0 }, 0x1302 },
    { ACTOR_BG_HAKA_ZOU,  {   4569,  -1337,   -743 }, {      0, 0X8000,      0 }, 0x1C02 },
    { ACTOR_EN_BOX,       {   4583,  -1363,   -755 }, {      0, 0X4000,      0 }, 0x6934 },
    { ACTOR_EN_BOX,       {   4393,  -1363,  -1076 }, {      0, 0X8000,      0 }, 0x7888 },
};

PolygonType2 HAKAdan_room_20PolygonType2_000100 = { 
    2, 3,
    HAKAdan_room_20PolygonDlist2_00010C,
    HAKAdan_room_20PolygonDlist2_00010C + ARRAY_COUNTU(HAKAdan_room_20PolygonDlist2_00010C)
};

PolygonDlist2 HAKAdan_room_20PolygonDlist2_00010C[3] = {
    { {   4388,  -1163,  -1026 },    441, HAKAdan_room_20DL_0013D0, NULL },
    { {   4388,  -1363,  -1026 },    393, HAKAdan_room_20DL_0002B0, NULL },
    { {   4388,  -1163,  -1026 },    441, HAKAdan_room_20DL_000818, NULL },
};

s32 HAKAdan_room_20_terminatorMaybe_00013C = { 0x01000000 };

Vtx HAKAdan_room_20Vtx_000140[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_20Vtx_000140.vtx.inc"
};

Gfx HAKAdan_room_20DL_0002B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_20Vtx_000140[15], 8, 0),
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
    gsSPVertex(HAKAdan_room_20Vtx_000140, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 5, 6, 4, 0),
    gsSP2Triangles(5, 4, 3, 0, 7, 8, 5, 0),
    gsSP2Triangles(7, 5, 9, 0, 5, 3, 9, 0),
    gsSP2Triangles(10, 9, 3, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 12, 9, 0, 10, 2, 13, 0),
    gsSP2Triangles(10, 13, 14, 0, 10, 3, 2, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_20Vtx_0003E8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_20Vtx_0003E8.vtx.inc"
};

Gfx HAKAdan_room_20DL_000818[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_20Vtx_0003E8[59], 8, 0),
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
    gsSPVertex(HAKAdan_room_20Vtx_0003E8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(2, 1, 4, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 16, 15, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 24, 25, 0, 26, 15, 17, 0),
    gsSP2Triangles(26, 18, 15, 0, 27, 28, 29, 0),
    gsSPVertex(&HAKAdan_room_20Vtx_0003E8[30], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 8, 7, 0),
    gsSP2Triangles(11, 7, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 12, 15, 16, 0),
    gsSP2Triangles(12, 16, 14, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 17, 20, 0),
    gsSP2Triangles(22, 23, 20, 0, 22, 20, 24, 0),
    gsSP2Triangles(21, 20, 23, 0, 21, 23, 25, 0),
    gsSP2Triangles(23, 26, 25, 0, 27, 28, 26, 0),
    gsSP1Triangle(27, 26, 23, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_20Vtx_0009A0[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_20Vtx_0009A0.vtx.inc"
};

Gfx HAKAdan_room_20DL_0013D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_20Vtx_0009A0[155], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_room_20Tex_001640, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_sceneTex_0173C0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_20Vtx_0009A0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 9, 13, 14, 0),
    gsSP2Triangles(9, 14, 7, 0, 12, 11, 15, 0),
    gsSP2Triangles(12, 15, 16, 0, 9, 8, 10, 0),
    gsSP2Triangles(9, 10, 12, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 0, 25, 1, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&HAKAdan_room_20Vtx_0009A0[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_20Vtx_0009A0[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdan_room_20Vtx_0009A0[94], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 23, 0),
    gsSPVertex(&HAKAdan_room_20Vtx_0009A0[124], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 3, 7, 0, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPEndDisplayList(),
};

u8 HAKAdan_room_20_unaccounted_001620[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x02, 0xB0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x08, 0x18, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x13, 0xD0, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 HAKAdan_room_20Tex_001640[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_20Tex_001640.rgba16.inc.c"
};

