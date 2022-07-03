#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "kakusiana_room_8.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "kakusiana_scene.h"
#include "kakusiana_room_0.h"
#include "kakusiana_room_1.h"
#include "kakusiana_room_2.h"
#include "kakusiana_room_3.h"
#include "kakusiana_room_4.h"
#include "kakusiana_room_5.h"
#include "kakusiana_room_6.h"
#include "kakusiana_room_7.h"
#include "kakusiana_room_9.h"
#include "kakusiana_room_10.h"
#include "kakusiana_room_11.h"
#include "kakusiana_room_12.h"
#include "kakusiana_room_13.h"

SceneCmd kakusiana_room_8Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&kakusiana_room_8PolygonType2_000130),
    SCENE_CMD_OBJECT_LIST(4, kakusiana_room_8ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(14, kakusiana_room_8ActorList_000048),
    SCENE_CMD_END(),
};

s16 kakusiana_room_8ObjectList_000040[] = {
    OBJECT_BWALL,
    OBJECT_GS,
    OBJECT_ST,
    OBJECT_TSUBO,
};

ActorEntry kakusiana_room_8ActorList_000048[] = {
    { ACTOR_EN_SW,        {   1651,     94,   1497 }, {      0, 0X5555,      0 }, 0x0000 },
    { ACTOR_EN_SW,        {   2031,    115,   1439 }, {      0, 0XAB61,      0 }, 0x0000 },
    { ACTOR_OBJ_MURE2,    {   1811,    -36,    733 }, {      0,      0,      0 }, 0x0202 },
    { ACTOR_OBJ_MURE,     {   1923,    -30,    795 }, {      0,      0,      0 }, 0x5323 },
    { ACTOR_OBJ_MURE,     {   1809,    -13,   1023 }, {      0,      0,      0 }, 0x5323 },
    { ACTOR_EN_SW,        {   1610,    123,   1424 }, {      0, 0X53E9,      0 }, 0x8F02 },
    { ACTOR_OBJ_TSUBO,    {   1843,    -14,   1014 }, {      0,      0,      0 }, 0x4502 },
    { ACTOR_OBJ_TSUBO,    {   1857,    -31,    897 }, {      0,      0,      0 }, 0x4704 },
    { ACTOR_BG_BREAKWALL, {   1826,     -4,   1142 }, {      0,      0,      0 }, 0xA023 },
    { ACTOR_OBJ_TSUBO,    {   1769,    -19,    954 }, {      0,      0,      0 }, 0x4908 },
    { ACTOR_BG_BREAKWALL, {   1648,      0,   1453 }, {      0, 0X5555,      0 }, 0xA024 },
    { ACTOR_OBJ_TSUBO,    {   1764,    -36,    847 }, {      0,      0,      0 }, 0x4B0C },
    { ACTOR_BG_BREAKWALL, {   1999,      0,   1451 }, {      0, 0XAAAB,      0 }, 0x2025 },
    { ACTOR_EN_GS,        {   1809,    -36,    735 }, {      0,      0,      0 }, 0x3813 },
};

u8 kakusiana_room_8_possiblePadding_000128[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 kakusiana_room_8PolygonType2_000130 = { 
    2, 6,
    kakusiana_room_8PolygonDlist2_00013C,
    kakusiana_room_8PolygonDlist2_00013C + ARRAY_COUNTU(kakusiana_room_8PolygonDlist2_00013C)
};

PolygonDlist2 kakusiana_room_8PolygonDlist2_00013C[6] = {
    { {   1823,    245,   1349 },    238, NULL, kakusiana_room_8DL_0033C0 },
    { {   1825,    -23,   1088 },    496, kakusiana_room_8DL_0014B8, NULL },
    { {   1823,     10,   1349 },     40, kakusiana_room_8DL_001720, NULL },
    { {   1823,    490,   1349 },     41, kakusiana_room_8DL_0018E8, kakusiana_room_8DL_003588 },
    { {   1833,    478,   1344 },    248, kakusiana_room_8DL_001048, NULL },
    { {   1825,    217,   1064 },    580, kakusiana_room_8DL_000B20, NULL },
};

s32 kakusiana_room_8_terminatorMaybe_00019C = { 0x01000000 };

Vtx kakusiana_room_8Vtx_0001A0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_8Vtx_0001A0.vtx.inc"
};

Gfx kakusiana_room_8DL_000B20[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_8Vtx_0001A0[144], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_8Tex_0019C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_8Vtx_0001A0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 3, 0, 4, 3, 2, 0),
    gsSP2Triangles(2, 1, 6, 0, 1, 7, 6, 0),
    gsSP2Triangles(4, 2, 6, 0, 4, 6, 8, 0),
    gsSP2Triangles(9, 10, 0, 0, 9, 0, 3, 0),
    gsSP2Triangles(5, 11, 9, 0, 5, 9, 3, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0),
    gsSP2Triangles(14, 13, 6, 0, 13, 8, 6, 0),
    gsSP2Triangles(15, 14, 6, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 18, 19, 0, 20, 21, 17, 0),
    gsSP2Triangles(20, 17, 16, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 24, 25, 0, 26, 27, 23, 0),
    gsSP2Triangles(26, 23, 22, 0, 28, 29, 27, 0),
    gsSP2Triangles(28, 27, 26, 0, 19, 18, 29, 0),
    gsSP1Triangle(19, 29, 28, 0),
    gsSPVertex(&kakusiana_room_8Vtx_0001A0[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 1, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 20, 19, 0, 18, 21, 20, 0),
    gsSP2Triangles(22, 23, 24, 0, 23, 25, 24, 0),
    gsSP2Triangles(25, 26, 24, 0, 25, 27, 26, 0),
    gsSP2Triangles(25, 28, 29, 0, 25, 29, 30, 0),
    gsSPVertex(&kakusiana_room_8Vtx_0001A0[61], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(9, 10, 7, 0, 7, 10, 11, 0),
    gsSP2Triangles(10, 12, 11, 0, 12, 13, 11, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 16, 0),
    gsSP2Triangles(15, 12, 17, 0, 16, 18, 19, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 18, 20, 0),
    gsSP2Triangles(18, 21, 20, 0, 18, 22, 21, 0),
    gsSP2Triangles(21, 22, 23, 0, 22, 24, 23, 0),
    gsSP2Triangles(24, 25, 23, 0, 26, 27, 28, 0),
    gsSP2Triangles(26, 28, 29, 0, 26, 29, 30, 0),
    gsSPVertex(&kakusiana_room_8Vtx_0001A0[92], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(5, 2, 7, 0, 6, 8, 9, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_sceneTex_00D020, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_8Vtx_0001A0[102], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 5, 1, 0),
    gsSP1Triangle(5, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_room_8Tex_0019C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_8Vtx_0001A0[108], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP1Triangle(8, 11, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_sceneTex_00D020, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_8Vtx_0001A0[121], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 5, 1, 0),
    gsSP1Triangle(5, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_room_8Tex_0019C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_8Vtx_0001A0[127], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP1Triangle(15, 16, 14, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_8Vtx_000EB8[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_8Vtx_000EB8.vtx.inc"
};

Gfx kakusiana_room_8DL_001048[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_8Vtx_000EB8[17], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_8Vtx_000EB8, 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0),
    gsSP2Triangles(6, 5, 4, 0, 7, 8, 0, 0),
    gsSP2Triangles(7, 0, 3, 0, 7, 9, 8, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 11, 12, 0, 12, 11, 13, 0),
    gsSP2Triangles(12, 13, 14, 0, 4, 15, 6, 0),
    gsSP2Triangles(14, 13, 16, 0, 14, 16, 4, 0),
    gsSP1Triangle(16, 15, 4, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_8Vtx_001108[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_8Vtx_001108.vtx.inc"
};

Gfx kakusiana_room_8DL_0014B8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_8Vtx_001108[51], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_8Tex_0029C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_8Vtx_001108, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(14, 16, 17, 0, 14, 17, 15, 0),
    gsSP2Triangles(5, 18, 3, 0, 18, 19, 3, 0),
    gsSP2Triangles(19, 20, 3, 0, 20, 0, 3, 0),
    gsSP2Triangles(19, 21, 20, 0, 21, 0, 20, 0),
    gsSP2Triangles(19, 22, 21, 0, 22, 17, 21, 0),
    gsSP2Triangles(5, 23, 24, 0, 23, 19, 24, 0),
    gsSP2Triangles(23, 25, 19, 0, 25, 26, 19, 0),
    gsSP2Triangles(25, 6, 26, 0, 6, 9, 27, 0),
    gsSP2Triangles(9, 19, 27, 0, 9, 28, 19, 0),
    gsSP2Triangles(9, 11, 28, 0, 11, 29, 28, 0),
    gsSP2Triangles(29, 19, 28, 0, 29, 30, 19, 0),
    gsSP2Triangles(30, 31, 19, 0, 30, 12, 31, 0),
    gsSPVertex(&kakusiana_room_8Vtx_001108[32], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(7, 10, 11, 0, 7, 11, 8, 0),
    gsSP2Triangles(11, 12, 8, 0, 12, 9, 8, 0),
    gsSP2Triangles(11, 13, 12, 0, 12, 14, 9, 0),
    gsSP2Triangles(13, 15, 12, 0, 15, 16, 12, 0),
    gsSP2Triangles(16, 17, 12, 0, 17, 18, 12, 0),
    gsSP1Triangle(18, 14, 12, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_8Vtx_001640[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_8Vtx_001640.vtx.inc"
};

Gfx kakusiana_room_8DL_001720[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_8Vtx_001640[6], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_8Vtx_001640, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_8Vtx_0017A8[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_8Vtx_0017A8.vtx.inc"
};

Gfx kakusiana_room_8DL_0018E8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_8Vtx_0017A8[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_8Vtx_0017A8, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(3, 2, 11, 0, 3, 11, 10, 0),
    gsSPEndDisplayList(),
};

u8 kakusiana_room_8_unaccounted_001990[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0B, 0x20, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x10, 0x48, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x14, 0xB8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x17, 0x20, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x18, 0xE8, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 kakusiana_room_8Tex_0019C0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_8Tex_0019C0.rgba16.inc.c"
};

u64 kakusiana_room_8Tex_0029C0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_8Tex_0029C0.rgba16.inc.c"
};

Vtx kakusiana_room_8Vtx_0031C0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_8Vtx_0031C0.vtx.inc"
};

Gfx kakusiana_room_8DL_0033C0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_8Vtx_0031C0[24], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_sceneTex_00C020, G_IM_FMT_IA, G_IM_SIZ_16b, 128, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 7, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 204),
    gsSPDisplayList(0x08000000),
    gsSPVertex(kakusiana_room_8Vtx_0031C0, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_8Vtx_0034A8[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_8Vtx_0034A8.vtx.inc"
};

Gfx kakusiana_room_8DL_003588[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_8Vtx_0034A8[6], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 204),
    gsSPVertex(kakusiana_room_8Vtx_0034A8, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPEndDisplayList(),
};

u8 kakusiana_room_8_unaccounted_003610[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x33, 0xC0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x35, 0x88, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

