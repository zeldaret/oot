#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "HAKAdanCH_room_2.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "HAKAdanCH_scene.h"
#include "HAKAdanCH_room_0.h"
#include "HAKAdanCH_room_1.h"
#include "HAKAdanCH_room_3.h"
#include "HAKAdanCH_room_4.h"
#include "HAKAdanCH_room_5.h"
#include "HAKAdanCH_room_6.h"

SceneCmd HAKAdanCH_room_2Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, true, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&HAKAdanCH_room_2PolygonType2_000110),
    SCENE_CMD_OBJECT_LIST(10, HAKAdanCH_room_2ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(18, HAKAdanCH_room_2ActorList_000050),
    SCENE_CMD_END(),
};

s16 HAKAdanCH_room_2ObjectList_000040[] = {
    OBJECT_HAKACH_OBJECTS,
    OBJECT_HAKA_DOOR,
    OBJECT_BOX,
    OBJECT_GI_SUTARU,
    OBJECT_RD,
    OBJECT_ST,
    OBJECT_SYOKUDAI,
    OBJECT_POH,
    OBJECT_GI_HEART,
    OBJECT_FIREFLY,
};

ActorEntry HAKAdanCH_room_2ActorList_000050[] = {
    { ACTOR_EN_RD,        {  -1753,      0,   -738 }, {      0, 0X4000,      0 }, 0x7FFE },
    { ACTOR_EN_POH,       {  -2341,     50,   -623 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_OBJ_SYOKUDAI, {  -2085,      0,   -960 }, {      0,      0,      0 }, 0x2400 },
    { ACTOR_EN_SW,        {  -2542,      0,   -918 }, {      0,      0,      0 }, 0x8904 },
    { ACTOR_OBJ_SYOKUDAI, {  -1885,      0,   -960 }, {      0,      0,      0 }, 0x100F },
    { ACTOR_BG_HAKA_HUTA, {  -1970,     40,   -800 }, {      0, 0X8000,      0 }, 0x010F },
    { ACTOR_OBJ_SYOKUDAI, {  -2085,      0,   -520 }, {      0,      0,      0 }, 0x1010 },
    { ACTOR_BG_HAKA_HUTA, {  -2120,     40,   -680 }, {      0,      0,      0 }, 0x0110 },
    { ACTOR_OBJ_SYOKUDAI, {  -2285,      0,   -960 }, {      0,      0,      0 }, 0x1011 },
    { ACTOR_BG_HAKA_HUTA, {  -2370,     40,   -800 }, {      0, 0X8000,      0 }, 0x0111 },
    { ACTOR_EN_ITEM00,    {  -1945,     10,   -863 }, {      0,      0,      0 }, 0x2003 },
    { ACTOR_EN_ITEM00,    {  -2143,     10,   -621 }, {      0,      0,      0 }, 0x2303 },
    { ACTOR_EN_ITEM00,    {  -2346,     10,   -614 }, {      0,      0,      0 }, 0x0106 },
    { ACTOR_EN_ITEM00,    {  -1947,     10,   -625 }, {      0,      0,      0 }, 0x2F03 },
    { ACTOR_EN_ITEM00,    {  -2144,     10,   -859 }, {      0,      0,      0 }, 0x2003 },
    { ACTOR_EN_RD,        {  -2070,      0,   -854 }, {      0,      0,      0 }, 0x7FFE },
    { ACTOR_BG_HAKA_HUTA, {  -2320,     40,   -680 }, {      0,      0,      0 }, 0x0212 },
    { ACTOR_OBJ_SYOKUDAI, {  -2285,      0,   -520 }, {      0,      0,      0 }, 0x1012 },
};

PolygonType2 HAKAdanCH_room_2PolygonType2_000110 = { 
    2, 3,
    HAKAdanCH_room_2PolygonDlist2_00011C,
    HAKAdanCH_room_2PolygonDlist2_00011C + ARRAY_COUNTU(HAKAdanCH_room_2PolygonDlist2_00011C)
};

PolygonDlist2 HAKAdanCH_room_2PolygonDlist2_00011C[3] = {
    { {  -1590,     60,   -740 },     84, HAKAdanCH_room_2DL_0009E0, NULL },
    { {  -2226,    102,   -740 },    414, HAKAdanCH_room_2DL_001FA8, NULL },
    { {  -2068,    120,   -740 },    603, HAKAdanCH_room_2DL_0006E0, NULL },
};

s32 HAKAdanCH_room_2_terminatorMaybe_00014C = { 0x01000000 };

Vtx HAKAdanCH_room_2Vtx_000150[] = {
#include "assets/scenes/dungeons/HAKAdanCH/HAKAdanCH_room_2Vtx_000150.vtx.inc"
};

Gfx HAKAdanCH_room_2DL_0006E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000150[81], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdanCH_sceneTex_00B590, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdanCH_room_2Vtx_000150, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(16, 20, 17, 0, 20, 21, 17, 0),
    gsSP2Triangles(20, 22, 21, 0, 20, 23, 22, 0),
    gsSP2Triangles(24, 22, 25, 0, 24, 21, 22, 0),
    gsSP2Triangles(26, 17, 24, 0, 17, 21, 24, 0),
    gsSP2Triangles(17, 26, 27, 0, 17, 27, 18, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSP2Triangles(28, 24, 25, 0, 28, 25, 29, 0),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000150[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0),
    gsSP2Triangles(0, 3, 6, 0, 0, 6, 7, 0),
    gsSP2Triangles(4, 0, 7, 0, 4, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(12, 11, 13, 0, 12, 13, 14, 0),
    gsSP2Triangles(10, 9, 15, 0, 10, 15, 16, 0),
    gsSP2Triangles(17, 18, 14, 0, 17, 14, 13, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000150[63], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 14, 0),
    gsSP2Triangles(13, 10, 12, 0, 11, 10, 14, 0),
    gsSP2Triangles(13, 7, 14, 0, 13, 15, 7, 0),
    gsSP2Triangles(14, 7, 6, 0, 14, 6, 11, 0),
    gsSP2Triangles(16, 12, 11, 0, 16, 17, 12, 0),
    gsSP2Triangles(17, 13, 12, 0, 17, 15, 13, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdanCH_room_2Vtx_0008A0[] = {
#include "assets/scenes/dungeons/HAKAdanCH/HAKAdanCH_room_2Vtx_0008A0.vtx.inc"
};

Gfx HAKAdanCH_room_2DL_0009E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdanCH_room_2Vtx_0008A0[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdanCH_room_2Tex_002958, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdanCH_room_2Vtx_0008A0, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdanCH_room_2Vtx_000AA8[] = {
#include "assets/scenes/dungeons/HAKAdanCH/HAKAdanCH_room_2Vtx_000AA8.vtx.inc"
};

Gfx HAKAdanCH_room_2DL_001FA8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[328], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(HAKAdanCH_room_2Tex_002F58, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdanCH_room_2Vtx_000AA8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsSP2Triangles(24, 25, 26, 0, 25, 27, 26, 0),
    gsSP2Triangles(22, 28, 29, 0, 28, 30, 29, 0),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(12, 13, 7, 0, 14, 12, 7, 0),
    gsSP2Triangles(15, 16, 11, 0, 17, 15, 11, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(22, 23, 24, 0, 23, 25, 24, 0),
    gsSP2Triangles(20, 26, 27, 0, 26, 28, 27, 0),
    gsSP2Triangles(24, 29, 30, 0, 29, 31, 30, 0),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[63], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(7, 12, 13, 0, 7, 13, 14, 0),
    gsSP2Triangles(11, 15, 16, 0, 11, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 21, 19, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 25, 23, 0),
    gsSP2Triangles(26, 27, 18, 0, 26, 28, 27, 0),
    gsSP2Triangles(29, 30, 22, 0, 29, 31, 30, 0),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[95], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(3, 8, 9, 0, 3, 9, 10, 0),
    gsSP2Triangles(7, 11, 12, 0, 7, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(22, 24, 23, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 16, 0, 28, 29, 30, 0),
    gsSP1Triangle(29, 31, 30, 0),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[127], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[134], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 4, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 4, 12, 0, 13, 10, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 16, 18, 17, 0),
    gsSP2Triangles(16, 19, 18, 0, 16, 20, 19, 0),
    gsSP1Triangle(16, 15, 20, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdanCH_room_2Tex_002D58, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[155], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdanCH_room_2Tex_002F58, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[159], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 16, 18, 17, 0),
    gsSP2Triangles(16, 19, 18, 0, 16, 15, 19, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[179], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(4, 6, 5, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[186], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdanCH_room_2Tex_002D58, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[189], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdanCH_room_2Tex_002B58, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[196], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdanCH_room_2Tex_002F58, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[200], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdanCH_room_2Tex_002B58, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[203], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdanCH_room_2Tex_002F58, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[207], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(3, 5, 6, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[214], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP1Triangle(5, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdanCH_room_2Tex_002D58, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[222], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 5, 4, 0),
    gsSP1Triangle(7, 8, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdanCH_room_2Tex_002F58, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[231], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 4, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 4, 12, 0, 13, 10, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 16, 18, 17, 0),
    gsSP2Triangles(16, 19, 18, 0, 16, 20, 19, 0),
    gsSP1Triangle(16, 15, 20, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdanCH_room_2Tex_002D58, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[252], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdanCH_room_2Tex_002F58, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[256], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 16, 18, 17, 0),
    gsSP2Triangles(16, 19, 18, 0, 16, 15, 19, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[276], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(4, 6, 5, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[283], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdanCH_room_2Tex_002D58, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[286], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdanCH_room_2Tex_002B58, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[293], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdanCH_room_2Tex_002F58, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[297], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdanCH_room_2Tex_002B58, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[300], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdanCH_room_2Tex_002F58, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                            | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[304], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(3, 5, 6, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[311], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP1Triangle(5, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(HAKAdanCH_room_2Tex_002D58, G_IM_FMT_I, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdanCH_room_2Vtx_000AA8[319], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 5, 4, 0),
    gsSP1Triangle(7, 8, 5, 0),
    gsSPEndDisplayList(),
};

u8 HAKAdanCH_room_2_unaccounted_002938[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0xE0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x09, 0xE0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1F, 0xA8, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 HAKAdanCH_room_2Tex_002958[] = {
#include "assets/scenes/dungeons/HAKAdanCH/HAKAdanCH_room_2Tex_002958.rgba16.inc.c"
};

u64 HAKAdanCH_room_2Tex_002B58[] = {
#include "assets/scenes/dungeons/HAKAdanCH/HAKAdanCH_room_2Tex_002B58.i4.inc.c"
};

u64 HAKAdanCH_room_2Tex_002D58[] = {
#include "assets/scenes/dungeons/HAKAdanCH/HAKAdanCH_room_2Tex_002D58.i4.inc.c"
};

u64 HAKAdanCH_room_2Tex_002F58[] = {
#include "assets/scenes/dungeons/HAKAdanCH/HAKAdanCH_room_2Tex_002F58.i4.inc.c"
};

