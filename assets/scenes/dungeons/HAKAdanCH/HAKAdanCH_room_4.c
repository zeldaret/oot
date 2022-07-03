#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "HAKAdanCH_room_4.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "HAKAdanCH_scene.h"
#include "HAKAdanCH_room_0.h"
#include "HAKAdanCH_room_1.h"
#include "HAKAdanCH_room_2.h"
#include "HAKAdanCH_room_3.h"
#include "HAKAdanCH_room_5.h"
#include "HAKAdanCH_room_6.h"

SceneCmd HAKAdanCH_room_4Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&HAKAdanCH_room_4PolygonType2_000110),
    SCENE_CMD_OBJECT_LIST(5, HAKAdanCH_room_4ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(12, HAKAdanCH_room_4ActorList_00004C),
    SCENE_CMD_END(),
};

s16 HAKAdanCH_room_4ObjectList_000040[] = {
    OBJECT_HAKACH_OBJECTS,
    OBJECT_HAKA_DOOR,
    OBJECT_BOX,
    OBJECT_DH,
    OBJECT_KUSA,
};

ActorEntry HAKAdanCH_room_4ActorList_00004C[] = {
    { ACTOR_EN_KUSA,     {   1458,    -20,   -130 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_KUSA,     {   1492,    -20,    -49 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_KUSA,     {   1529,    -20,      2 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_KUSA,     {   1604,    -20,      3 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_DHA,      {   1124,    -20,     58 }, {      0, 0XC000,      0 }, 0xFFFF },
    { ACTOR_EN_DHA,      {   1124,    -20,    371 }, {      0, 0XC000,      0 }, 0xFFFF },
    { ACTOR_EN_DHA,      {   1437,    -20,     54 }, {      0, 0XC000,      0 }, 0xFFFF },
    { ACTOR_EN_DHA,      {   1437,    -20,    368 }, {      0, 0XC000,      0 }, 0xFFFF },
    { ACTOR_EN_DH,       {   1276,    -16,    209 }, {      0, 0XC000,      0 }, 0xFFFF },
    { ACTOR_EN_ITEM00,   {   1604,    -20,    -88 }, {      0,      0,      0 }, 0x0211 },
    { ACTOR_EN_BOX,      {   1316,    -20,    121 }, {      0, 0XC000,      0 }, 0x1802 },
    { ACTOR_BG_HAKA_ZOU, {   1580,      0,    -90 }, {      0, 0XC000,      0 }, 0x2102 },
};

u8 HAKAdanCH_room_4_possiblePadding_00010C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 HAKAdanCH_room_4PolygonType2_000110 = { 
    2, 3,
    HAKAdanCH_room_4PolygonDlist2_00011C,
    HAKAdanCH_room_4PolygonDlist2_00011C + ARRAY_COUNTU(HAKAdanCH_room_4PolygonDlist2_00011C)
};

PolygonDlist2 HAKAdanCH_room_4PolygonDlist2_00011C[3] = {
    { {   1270,    180,    210 },    516, HAKAdanCH_room_4DL_001270, NULL },
    { {   1280,    -20,    210 },    468, HAKAdanCH_room_4DL_0002C0, NULL },
    { {   1280,    180,    210 },    509, HAKAdanCH_room_4DL_000898, NULL },
};

s32 HAKAdanCH_room_4_terminatorMaybe_00014C = { 0x01000000 };

Vtx HAKAdanCH_room_4Vtx_000150[] = {
#include "assets/scenes/dungeons/HAKAdanCH/HAKAdanCH_room_4Vtx_000150.vtx.inc"
};

Gfx HAKAdanCH_room_4DL_0002C0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdanCH_room_4Vtx_000150[15], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdanCH_sceneTex_00B590, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 2, 2),
    gsDPLoadMultiBlock(HAKAdanCH_room_4Tex_001498, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 96),
    gsSPVertex(HAKAdanCH_room_4Vtx_000150, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 7, 0, 6, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(0, 7, 10, 0, 0, 10, 11, 0),
    gsSP2Triangles(0, 11, 12, 0, 13, 14, 1, 0),
    gsSP2Triangles(13, 1, 0, 0, 13, 0, 12, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

Vtx HAKAdanCH_room_4Vtx_0003F8[] = {
#include "assets/scenes/dungeons/HAKAdanCH/HAKAdanCH_room_4Vtx_0003F8.vtx.inc"
};

Gfx HAKAdanCH_room_4DL_000898[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdanCH_room_4Vtx_0003F8[66], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdanCH_room_4Tex_001498, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdanCH_sceneTex_00AD90, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 2, 2),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdanCH_room_4Vtx_0003F8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 1, 0, 0, 4, 0, 3, 0),
    gsSP2Triangles(5, 4, 3, 0, 5, 3, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 7, 9, 0),
    gsSP2Triangles(11, 12, 7, 0, 10, 11, 7, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 19, 28, 0),
    gsSP2Triangles(27, 28, 29, 0, 19, 21, 28, 0),
    gsSP1Triangle(21, 23, 28, 0),
    gsSPVertex(&HAKAdanCH_room_4Vtx_0003F8[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 7, 0),
    gsSP2Triangles(11, 7, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(13, 15, 16, 0, 13, 16, 17, 0),
    gsSP2Triangles(13, 17, 14, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 29, 30, 0),
    gsSP1Triangle(28, 31, 29, 0),
    gsSPVertex(&HAKAdanCH_room_4Vtx_0003F8[62], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdanCH_room_4Vtx_000A30[] = {
#include "assets/scenes/dungeons/HAKAdanCH/HAKAdanCH_room_4Vtx_000A30.vtx.inc"
};

Gfx HAKAdanCH_room_4DL_001270[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdanCH_room_4Vtx_000A30[124], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdanCH_room_4Tex_001C98, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdanCH_sceneTex_00B590, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdanCH_room_4Vtx_000A30, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdanCH_room_4Vtx_000A30[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdanCH_room_4Vtx_000A30[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&HAKAdanCH_room_4Vtx_000A30[95], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(4, 11, 12, 0, 4, 12, 13, 0),
    gsSP2Triangles(6, 8, 7, 0, 13, 5, 4, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP1Triangle(26, 27, 28, 0),
    gsSPEndDisplayList(),
};

u8 HAKAdanCH_room_4_unaccounted_001478[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x02, 0xC0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x08, 0x98, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x12, 0x70, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 HAKAdanCH_room_4Tex_001498[] = {
#include "assets/scenes/dungeons/HAKAdanCH/HAKAdanCH_room_4Tex_001498.rgba16.inc.c"
};

u64 HAKAdanCH_room_4Tex_001C98[] = {
#include "assets/scenes/dungeons/HAKAdanCH/HAKAdanCH_room_4Tex_001C98.rgba16.inc.c"
};

