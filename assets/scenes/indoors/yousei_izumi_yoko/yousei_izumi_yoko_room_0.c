#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "yousei_izumi_yoko_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "yousei_izumi_yoko_scene.h"

SceneCmd yousei_izumi_yoko_room_0Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(yousei_izumi_yoko_room_0AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&yousei_izumi_yoko_room_0PolygonType0_0000B0),
    SCENE_CMD_OBJECT_LIST(3, yousei_izumi_yoko_room_0ObjectList_000060),
    SCENE_CMD_ACTOR_LIST(4, yousei_izumi_yoko_room_0ActorList_000068),
    SCENE_CMD_END(),
};

SceneCmd* yousei_izumi_yoko_room_0AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    yousei_izumi_yoko_room_0Set_0000D0,
    yousei_izumi_yoko_room_0Set_000170,
    yousei_izumi_yoko_room_0Set_000210,
};

s16 yousei_izumi_yoko_room_0ObjectList_000060[] = {
    OBJECT_DY_OBJ,
    OBJECT_GI_GODDESS,
    OBJECT_EFC_FLASH,
};

ActorEntry yousei_izumi_yoko_room_0ActorList_000068[] = {
    { ACTOR_EN_LIGHT,       {   -171,    113,   -854 }, {      0,      0,      0 }, 0x03F6 },
    { ACTOR_EN_LIGHT,       {    134,    113,   -854 }, {      0,      0,      0 }, 0x03F6 },
    { ACTOR_BG_DY_YOSEIZO,  {    -19,     -2,  -1000 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_OKARINA_TAG, {    -21,     10,   -802 }, {      0,      0,      0 }, 0x1CB8 },
};

u8 yousei_izumi_yoko_room_0_possiblePadding_0000A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 yousei_izumi_yoko_room_0PolygonType0_0000B0 = { 
    0, 1,
    yousei_izumi_yoko_room_0PolygonDlist_0000BC,
    yousei_izumi_yoko_room_0PolygonDlist_0000BC + ARRAY_COUNTU(yousei_izumi_yoko_room_0PolygonDlist_0000BC)
};

PolygonDlist yousei_izumi_yoko_room_0PolygonDlist_0000BC[1] = {
    { yousei_izumi_yoko_room_0DL_002B88, yousei_izumi_yoko_room_0DL_003FF8 },
};

s32 yousei_izumi_yoko_room_0_terminatorMaybe_0000C4 = { 0x01000000 };

u8 yousei_izumi_yoko_room_0_possiblePadding_0000C8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd yousei_izumi_yoko_room_0Set_0000D0[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&yousei_izumi_yoko_room_0PolygonType0_0000B0),
    SCENE_CMD_OBJECT_LIST(4, yousei_izumi_yoko_room_0ObjectList_000110),
    SCENE_CMD_ACTOR_LIST(5, yousei_izumi_yoko_room_0ActorList_000118),
    SCENE_CMD_END(),
};

s16 yousei_izumi_yoko_room_0ObjectList_000110[] = {
    OBJECT_DY_OBJ,
    OBJECT_GI_GODDESS,
    OBJECT_EFC_FLASH,
    OBJECT_WARP1,
};

ActorEntry yousei_izumi_yoko_room_0ActorList_000118[] = {
    { ACTOR_EN_LIGHT,      {   -171,    113,   -854 }, {      0,      0,      0 }, 0x03F0 },
    { ACTOR_EN_LIGHT,      {    134,    113,   -854 }, {      0,      0,      0 }, 0x03F0 },
    { ACTOR_EN_LIGHT,      {   -171,    113,   -854 }, {      0,      0,      0 }, 0x03F3 },
    { ACTOR_EN_LIGHT,      {    134,    113,   -854 }, {      0,      0,      0 }, 0x03F3 },
    { ACTOR_BG_DY_YOSEIZO, {    -19,     -2,  -1000 }, {      0,      0,      0 }, 0x0000 },
};

u8 yousei_izumi_yoko_room_0_possiblePadding_000168[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd yousei_izumi_yoko_room_0Set_000170[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&yousei_izumi_yoko_room_0PolygonType0_0000B0),
    SCENE_CMD_OBJECT_LIST(4, yousei_izumi_yoko_room_0ObjectList_0001B0),
    SCENE_CMD_ACTOR_LIST(5, yousei_izumi_yoko_room_0ActorList_0001B8),
    SCENE_CMD_END(),
};

s16 yousei_izumi_yoko_room_0ObjectList_0001B0[] = {
    OBJECT_DY_OBJ,
    OBJECT_GI_GODDESS,
    OBJECT_EFC_FLASH,
    OBJECT_WARP1,
};

ActorEntry yousei_izumi_yoko_room_0ActorList_0001B8[] = {
    { ACTOR_EN_LIGHT,      {   -171,    113,   -854 }, {      0,      0,      0 }, 0x03F0 },
    { ACTOR_EN_LIGHT,      {    134,    113,   -854 }, {      0,      0,      0 }, 0x03F0 },
    { ACTOR_EN_LIGHT,      {   -171,    113,   -854 }, {      0,      0,      0 }, 0x03F3 },
    { ACTOR_EN_LIGHT,      {    134,    113,   -854 }, {      0,      0,      0 }, 0x03F3 },
    { ACTOR_BG_DY_YOSEIZO, {    -19,     -2,  -1000 }, {      0,      0,      0 }, 0x0000 },
};

u8 yousei_izumi_yoko_room_0_possiblePadding_000208[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd yousei_izumi_yoko_room_0Set_000210[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&yousei_izumi_yoko_room_0PolygonType0_0000B0),
    SCENE_CMD_OBJECT_LIST(4, yousei_izumi_yoko_room_0ObjectList_000250),
    SCENE_CMD_ACTOR_LIST(5, yousei_izumi_yoko_room_0ActorList_000258),
    SCENE_CMD_END(),
};

s16 yousei_izumi_yoko_room_0ObjectList_000250[] = {
    OBJECT_DY_OBJ,
    OBJECT_GI_GODDESS,
    OBJECT_EFC_FLASH,
    OBJECT_WARP1,
};

ActorEntry yousei_izumi_yoko_room_0ActorList_000258[] = {
    { ACTOR_EN_LIGHT,      {   -171,    113,   -854 }, {      0,      0,      0 }, 0x03F0 },
    { ACTOR_EN_LIGHT,      {    134,    113,   -854 }, {      0,      0,      0 }, 0x03F0 },
    { ACTOR_EN_LIGHT,      {   -171,    113,   -854 }, {      0,      0,      0 }, 0x03F3 },
    { ACTOR_EN_LIGHT,      {    134,    113,   -854 }, {      0,      0,      0 }, 0x03F3 },
    { ACTOR_BG_DY_YOSEIZO, {    -19,     -2,  -1000 }, {      0,      0,      0 }, 0x0000 },
};

u8 yousei_izumi_yoko_room_0_possiblePadding_0002A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx yousei_izumi_yoko_room_0Vtx_0002B0[] = {
#include "assets/scenes/indoors/yousei_izumi_yoko/yousei_izumi_yoko_room_0Vtx_0002B0.vtx.inc"
};

Gfx yousei_izumi_yoko_room_0DL_002250[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_0002B0[498], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(yousei_izumi_yoko_sceneTex_00C5A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(yousei_izumi_yoko_room_0Vtx_0002B0, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(11, 18, 19, 0, 11, 19, 12, 0),
    gsSP2Triangles(20, 6, 9, 0, 20, 9, 21, 0),
    gsSP2Triangles(22, 14, 17, 0, 22, 17, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(yousei_izumi_yoko_sceneTex_0085A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_0002B0[24], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 0, 15, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(yousei_izumi_yoko_sceneTex_0075A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_0002B0[40], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(yousei_izumi_yoko_sceneTex_0065A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_0002B0[56], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_0002B0[68], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(yousei_izumi_yoko_sceneTex_0045A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_0002B0[72], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(yousei_izumi_yoko_sceneTex_009DA0, G_IM_FMT_I, G_IM_SIZ_8b, 32, 128, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_0002B0[84], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 1, 5, 0, 4, 5, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(11, 8, 12, 0, 11, 12, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(yousei_izumi_yoko_sceneTex_00C5A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_0002B0[98], 32, 0),
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
    gsDPLoadTextureBlock(yousei_izumi_yoko_sceneTex_00BDA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_0002B0[130], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(yousei_izumi_yoko_sceneTex_0065A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_0002B0[136], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(yousei_izumi_yoko_sceneTex_0095A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_0002B0[148], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 21, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_0002B0[178], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(yousei_izumi_yoko_sceneTex_004DA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_0002B0[182], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(yousei_izumi_yoko_sceneTex_0045A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_0002B0[186], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(14, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(27, 29, 30, 0, 27, 30, 31, 0),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_0002B0[218], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(7, 8, 6, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 9, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP1Triangle(14, 17, 18, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_0002B0[237], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(yousei_izumi_yoko_sceneTex_0095A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_0002B0[253], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_0002B0[285], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 24, 26, 25, 0),
    gsSP2Triangles(23, 27, 24, 0, 27, 26, 24, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_0002B0[317], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_0002B0[349], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 1, 0, 24, 1, 0, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_0002B0[379], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_0002B0[409], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(3, 10, 11, 0, 3, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_0002B0[441], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_0002B0[471], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(yousei_izumi_yoko_sceneTex_0045A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_0002B0[474], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Gfx yousei_izumi_yoko_room_0DL_002B88[] = {
    gsSPDisplayList(yousei_izumi_yoko_room_0DL_002250),
    gsSPEndDisplayList(),
};

u8 yousei_izumi_yoko_room_0_possiblePadding_002B98[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx yousei_izumi_yoko_room_0Vtx_002BA0[] = {
#include "assets/scenes/indoors/yousei_izumi_yoko/yousei_izumi_yoko_room_0Vtx_002BA0.vtx.inc"
};

Gfx yousei_izumi_yoko_room_0DL_003AD0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_002BA0[235], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(yousei_izumi_yoko_sceneTex_003DA0, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, 15, 14),
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
    gsSPVertex(yousei_izumi_yoko_room_0Vtx_002BA0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 2, 4, 0),
    gsSP2Triangles(5, 6, 2, 0, 6, 0, 2, 0),
    gsSP2Triangles(7, 8, 9, 0, 8, 10, 9, 0),
    gsSP2Triangles(7, 11, 8, 0, 11, 12, 8, 0),
    gsSP2Triangles(12, 13, 8, 0, 13, 10, 8, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 17, 15, 0),
    gsSP2Triangles(15, 18, 16, 0, 17, 19, 15, 0),
    gsSP2Triangles(19, 20, 21, 0, 20, 18, 15, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 27, 29, 28, 0),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_002BA0[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(9, 10, 8, 0, 9, 11, 10, 0),
    gsSP2Triangles(9, 12, 11, 0, 12, 13, 11, 0),
    gsSP2Triangles(12, 14, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 18, 16, 0, 18, 19, 16, 0),
    gsSP2Triangles(18, 20, 19, 0, 18, 21, 20, 0),
    gsSP2Triangles(21, 22, 20, 0, 21, 8, 22, 0),
    gsSP2Triangles(21, 23, 8, 0, 23, 6, 8, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 31, 30, 0),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_002BA0[62], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 5, 4, 3, 0),
    gsSP2Triangles(5, 3, 6, 0, 7, 5, 6, 0),
    gsSP2Triangles(8, 7, 6, 0, 8, 6, 9, 0),
    gsSP2Triangles(10, 8, 9, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 11, 13, 0, 14, 13, 15, 0),
    gsSP2Triangles(16, 14, 15, 0, 0, 16, 15, 0),
    gsSP2Triangles(0, 15, 17, 0, 0, 17, 1, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(12, 10, 13, 0, 10, 22, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(yousei_izumi_yoko_sceneTex_00ADA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 14, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 76),
    gsSPDisplayList(0x09000000),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_002BA0[85], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(yousei_izumi_yoko_sceneTex_003DA0, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, 15, 14),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 6, 15, G_TX_NOMIRROR | G_TX_WRAP,
                5, 14),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x00FC),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0,
                       TEXEL1, 0, PRIM_LOD_FRAC, COMBINED),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_002BA0[103], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(13, 16, 14, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 20, 19, 0, 21, 22, 23, 0),
    gsSP2Triangles(22, 24, 23, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 28, 26, 0, 29, 30, 31, 0),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_002BA0[135], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 10, 8, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 14, 12, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 15, 18, 0),
    gsSP2Triangles(23, 18, 24, 0, 22, 21, 25, 0),
    gsSP2Triangles(22, 25, 26, 0, 27, 23, 24, 0),
    gsSP2Triangles(27, 24, 28, 0, 26, 25, 29, 0),
    gsSP2Triangles(26, 29, 30, 0, 31, 27, 28, 0),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_002BA0[167], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 0, 0),
    gsSP2Triangles(7, 0, 2, 0, 9, 10, 6, 0),
    gsSP2Triangles(9, 6, 5, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 11, 14, 0),
    gsSP2Triangles(19, 14, 20, 0, 18, 17, 21, 0),
    gsSP2Triangles(18, 21, 22, 0, 23, 19, 20, 0),
    gsSP2Triangles(23, 20, 24, 0, 22, 21, 25, 0),
    gsSP2Triangles(22, 25, 26, 0, 27, 23, 24, 0),
    gsSP2Triangles(27, 24, 28, 0, 26, 25, 29, 0),
    gsSP1Triangle(26, 29, 30, 0),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_002BA0[198], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(yousei_izumi_yoko_sceneTex_00B5A0, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_002BA0[214], 15, 0),
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
    gsDPLoadTextureBlock_4b(yousei_izumi_yoko_sceneTex_0055A0, G_IM_FMT_IA, 64, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                            G_TX_MIRROR | G_TX_WRAP, 6, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0, PRIM_LOD_FRAC,
                       COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_DECAL2),
    gsSPClearGeometryMode(G_FOG),
    gsSPVertex(&yousei_izumi_yoko_room_0Vtx_002BA0[229], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 0, 5, 4, 0),
    gsSPEndDisplayList(),
};

Gfx yousei_izumi_yoko_room_0DL_003FF8[] = {
    gsSPDisplayList(yousei_izumi_yoko_room_0DL_003AD0),
    gsSPEndDisplayList(),
};

