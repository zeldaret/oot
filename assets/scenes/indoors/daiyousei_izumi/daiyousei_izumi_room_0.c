#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "daiyousei_izumi_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "daiyousei_izumi_scene.h"

SceneCmd daiyousei_izumi_room_0Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(daiyousei_izumi_room_0AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&daiyousei_izumi_room_0PolygonType0_0000C0),
    SCENE_CMD_OBJECT_LIST(4, daiyousei_izumi_room_0ObjectList_000060),
    SCENE_CMD_ACTOR_LIST(5, daiyousei_izumi_room_0ActorList_000068),
    SCENE_CMD_END(),
};

SceneCmd* daiyousei_izumi_room_0AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    daiyousei_izumi_room_0Set_000160,
    daiyousei_izumi_room_0Set_0001E0,
    daiyousei_izumi_room_0Set_000260,
};

s16 daiyousei_izumi_room_0ObjectList_000060[] = {
    OBJECT_TRIFORCE_SPOT,
    OBJECT_EFC_LGT_SHOWER,
    OBJECT_DY_OBJ,
    OBJECT_WARP1,
};

ActorEntry daiyousei_izumi_room_0ActorList_000068[] = {
    { ACTOR_EN_LIGHT,        {   -171,    113,   -854 }, {      0,      0,      0 }, 0x03F5 },
    { ACTOR_EN_LIGHT,        {    134,    113,   -854 }, {      0,      0,      0 }, 0x03F5 },
    { ACTOR_BG_DY_YOSEIZO,   {    -19,     -2,  -1000 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_OKARINA_TAG,  {    -22,     10,   -798 }, {      0,      0,      0 }, 0x1CB8 },
    { ACTOR_EN_WONDER_TALK2, {    -22,     10,   -798 }, {      0,      0,    0XB }, 0x8AF8 },
};

u8 daiyousei_izumi_room_0_possiblePadding_0000B8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 daiyousei_izumi_room_0PolygonType0_0000C0 = { 
    0, 1,
    daiyousei_izumi_room_0PolygonDlist_0000CC,
    daiyousei_izumi_room_0PolygonDlist_0000CC + ARRAY_COUNTU(daiyousei_izumi_room_0PolygonDlist_0000CC)
};

PolygonDlist daiyousei_izumi_room_0PolygonDlist_0000CC[1] = {
    { daiyousei_izumi_room_0DL_002BB8, daiyousei_izumi_room_0DL_0038F8 },
};

s32 daiyousei_izumi_room_0_terminatorMaybe_0000D4 = { 0x01000000 };

u8 daiyousei_izumi_room_0_unaccounted_0000D8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 
    0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 
    0x10, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0xC0, 
    0x0B, 0x04, 0x00, 0x00, 0x03, 0x00, 0x01, 0x20, 0x01, 0x03, 0x00, 0x00, 0x03, 0x00, 0x01, 0x28, 
    0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x95, 0x00, 0x91, 0x00, 0x0A, 0x00, 0x48, 
    0x00, 0x0B, 0xFF, 0xED, 0xFF, 0xFE, 0xFC, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x08, 0x00, 0x86, 0x00, 0x71, 0xFC, 0xAA, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0xF0, 
    0x00, 0x08, 0xFF, 0x55, 0x00, 0x71, 0xFC, 0xAA, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0xF0, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd daiyousei_izumi_room_0Set_000160[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&daiyousei_izumi_room_0PolygonType0_0000C0),
    SCENE_CMD_OBJECT_LIST(4, daiyousei_izumi_room_0ObjectList_0001A0),
    SCENE_CMD_ACTOR_LIST(3, daiyousei_izumi_room_0ActorList_0001A8),
    SCENE_CMD_END(),
};

s16 daiyousei_izumi_room_0ObjectList_0001A0[] = {
    OBJECT_TRIFORCE_SPOT,
    OBJECT_EFC_LGT_SHOWER,
    OBJECT_DY_OBJ,
    OBJECT_WARP1,
};

ActorEntry daiyousei_izumi_room_0ActorList_0001A8[] = {
    { ACTOR_EN_LIGHT,      {   -171,    113,   -854 }, {      0,      0,      0 }, 0x03F0 },
    { ACTOR_EN_LIGHT,      {    134,    113,   -854 }, {      0,      0,      0 }, 0x03F0 },
    { ACTOR_BG_DY_YOSEIZO, {    -19,     -2,  -1000 }, {      0,      0,      0 }, 0x0000 },
};

u8 daiyousei_izumi_room_0_possiblePadding_0001D8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd daiyousei_izumi_room_0Set_0001E0[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&daiyousei_izumi_room_0PolygonType0_0000C0),
    SCENE_CMD_OBJECT_LIST(4, daiyousei_izumi_room_0ObjectList_000220),
    SCENE_CMD_ACTOR_LIST(3, daiyousei_izumi_room_0ActorList_000228),
    SCENE_CMD_END(),
};

s16 daiyousei_izumi_room_0ObjectList_000220[] = {
    OBJECT_TRIFORCE_SPOT,
    OBJECT_EFC_LGT_SHOWER,
    OBJECT_DY_OBJ,
    OBJECT_WARP1,
};

ActorEntry daiyousei_izumi_room_0ActorList_000228[] = {
    { ACTOR_EN_LIGHT,      {   -171,    113,   -854 }, {      0,      0,      0 }, 0x03F0 },
    { ACTOR_EN_LIGHT,      {    134,    113,   -854 }, {      0,      0,      0 }, 0x03F0 },
    { ACTOR_BG_DY_YOSEIZO, {    -19,     -2,  -1000 }, {      0,      0,      0 }, 0x0000 },
};

u8 daiyousei_izumi_room_0_possiblePadding_000258[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd daiyousei_izumi_room_0Set_000260[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&daiyousei_izumi_room_0PolygonType0_0000C0),
    SCENE_CMD_OBJECT_LIST(4, daiyousei_izumi_room_0ObjectList_0002A0),
    SCENE_CMD_ACTOR_LIST(3, daiyousei_izumi_room_0ActorList_0002A8),
    SCENE_CMD_END(),
};

s16 daiyousei_izumi_room_0ObjectList_0002A0[] = {
    OBJECT_TRIFORCE_SPOT,
    OBJECT_EFC_LGT_SHOWER,
    OBJECT_DY_OBJ,
    OBJECT_WARP1,
};

ActorEntry daiyousei_izumi_room_0ActorList_0002A8[] = {
    { ACTOR_EN_LIGHT,      {   -171,    113,   -854 }, {      0,      0,      0 }, 0x03F0 },
    { ACTOR_EN_LIGHT,      {    134,    113,   -854 }, {      0,      0,      0 }, 0x03F0 },
    { ACTOR_BG_DY_YOSEIZO, {    -19,     -2,  -1000 }, {      0,      0,      0 }, 0x0000 },
};

u8 daiyousei_izumi_room_0_possiblePadding_0002D8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx daiyousei_izumi_room_0Vtx_0002E0[] = {
#include "assets/scenes/indoors/daiyousei_izumi/daiyousei_izumi_room_0Vtx_0002E0.vtx.inc"
};

Gfx daiyousei_izumi_room_0DL_002280[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_0002E0[498], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(daiyousei_izumi_sceneTex_00D800, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(daiyousei_izumi_room_0Vtx_0002E0, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(11, 18, 19, 0, 11, 19, 12, 0),
    gsSP2Triangles(20, 6, 9, 0, 20, 9, 21, 0),
    gsSP2Triangles(22, 14, 17, 0, 22, 17, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(daiyousei_izumi_sceneTex_009000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_0002E0[24], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 0, 15, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(daiyousei_izumi_sceneTex_008000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_0002E0[40], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(daiyousei_izumi_sceneTex_007000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_0002E0[56], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_0002E0[68], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(daiyousei_izumi_sceneTex_005000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_0002E0[72], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(daiyousei_izumi_sceneTex_00B000, G_IM_FMT_I, G_IM_SIZ_8b, 32, 128, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_0002E0[84], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 1, 5, 0, 4, 5, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(11, 8, 12, 0, 11, 12, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(daiyousei_izumi_sceneTex_00D800, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_0002E0[98], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(16, 18, 20, 0, 18, 21, 20, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 22, 25, 0, 26, 27, 22, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(daiyousei_izumi_sceneTex_00D000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_0002E0[130], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(daiyousei_izumi_sceneTex_007000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_0002E0[136], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(daiyousei_izumi_sceneTex_00A800, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_0002E0[148], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 21, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_0002E0[178], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(daiyousei_izumi_sceneTex_005800, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_0002E0[182], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(daiyousei_izumi_sceneTex_005000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_0002E0[186], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(14, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(27, 29, 30, 0, 27, 30, 31, 0),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_0002E0[218], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(7, 8, 6, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 9, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP1Triangle(14, 17, 18, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_0002E0[237], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(daiyousei_izumi_sceneTex_00A800, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_0002E0[253], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_0002E0[285], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 24, 26, 25, 0),
    gsSP2Triangles(23, 27, 24, 0, 27, 26, 24, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_0002E0[317], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_0002E0[349], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 1, 0, 24, 1, 0, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_0002E0[379], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_0002E0[409], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(3, 10, 11, 0, 3, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_0002E0[441], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_0002E0[471], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(daiyousei_izumi_sceneTex_005000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_0002E0[474], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Gfx daiyousei_izumi_room_0DL_002BB8[] = {
    gsSPDisplayList(daiyousei_izumi_room_0DL_002280),
    gsSPEndDisplayList(),
};

u8 daiyousei_izumi_room_0_possiblePadding_002BC8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx daiyousei_izumi_room_0Vtx_002BD0[] = {
#include "assets/scenes/indoors/daiyousei_izumi/daiyousei_izumi_room_0Vtx_002BD0.vtx.inc"
};

Gfx daiyousei_izumi_room_0DL_0034A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_002BD0[133], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(daiyousei_izumi_sceneTex_004800, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, 15, 14),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 6, 15, G_TX_NOMIRROR | G_TX_WRAP,
                5, 14),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x00FC),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0,
                       TEXEL1, 0, PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(daiyousei_izumi_room_0Vtx_002BD0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 2, 4, 0),
    gsSP2Triangles(5, 6, 2, 0, 6, 0, 2, 0),
    gsSP2Triangles(7, 8, 9, 0, 8, 10, 9, 0),
    gsSP2Triangles(7, 11, 8, 0, 11, 12, 8, 0),
    gsSP2Triangles(12, 13, 8, 0, 13, 10, 8, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 17, 15, 0),
    gsSP2Triangles(15, 18, 16, 0, 17, 19, 15, 0),
    gsSP2Triangles(19, 20, 15, 0, 20, 18, 15, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(25, 26, 21, 0, 25, 21, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_002BD0[32], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(11, 14, 15, 0, 11, 15, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 16, 0, 20, 16, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(daiyousei_izumi_sceneTex_00C000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 14, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 76),
    gsSPDisplayList(0x09000000),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_002BD0[54], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(daiyousei_izumi_sceneTex_004800, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, 15, 14),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 6, 15, G_TX_NOMIRROR | G_TX_WRAP,
                5, 14),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x00FC),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0,
                       TEXEL1, 0, PRIM_LOD_FRAC, COMBINED),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_002BD0[72], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(daiyousei_izumi_sceneTex_00A000, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, 15, 14),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 6, 15, G_TX_NOMIRROR | G_TX_WRAP,
                5, 14),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x00FC),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_002BD0[88], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 5, 6, 0),
    gsSP2Triangles(5, 7, 6, 0, 7, 3, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(9, 12, 10, 0, 11, 13, 14, 0),
    gsSP2Triangles(13, 15, 14, 0, 15, 12, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(16, 20, 17, 0, 20, 21, 22, 0),
    gsSP2Triangles(21, 23, 22, 0, 23, 19, 22, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(daiyousei_izumi_sceneTex_00C800, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_002BD0[112], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 1, 5, 6, 0),
    gsSP2Triangles(2, 1, 6, 0, 2, 6, 7, 0),
    gsSP2Triangles(2, 7, 8, 0, 4, 2, 8, 0),
    gsSP2Triangles(9, 4, 8, 0, 6, 5, 10, 0),
    gsSP2Triangles(6, 10, 11, 0, 7, 6, 11, 0),
    gsSP2Triangles(8, 7, 11, 0, 12, 9, 8, 0),
    gsSP2Triangles(12, 8, 11, 0, 11, 10, 13, 0),
    gsSP2Triangles(14, 12, 11, 0, 14, 11, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(daiyousei_izumi_sceneTex_006000, G_IM_FMT_IA, 64, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                            G_TX_MIRROR | G_TX_WRAP, 6, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0, PRIM_LOD_FRAC,
                       COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_DECAL2),
    gsSPClearGeometryMode(G_FOG),
    gsSPVertex(&daiyousei_izumi_room_0Vtx_002BD0[127], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 0, 5, 4, 0),
    gsSPEndDisplayList(),
};

Gfx daiyousei_izumi_room_0DL_0038F8[] = {
    gsSPDisplayList(daiyousei_izumi_room_0DL_0034A0),
    gsSPEndDisplayList(),
};

