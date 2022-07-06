#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "hakaana_ouke_room_1.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "hakaana_ouke_scene.h"
#include "hakaana_ouke_room_0.h"
#include "hakaana_ouke_room_2.h"

SceneCmd hakaana_ouke_room_1Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(hakaana_ouke_room_1AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(4),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x01, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&hakaana_ouke_room_1PolygonType0_0000A0),
    SCENE_CMD_OBJECT_LIST(7, hakaana_ouke_room_1ObjectList_00005C),
    SCENE_CMD_ACTOR_LIST(3, hakaana_ouke_room_1ActorList_00006C),
    SCENE_CMD_END(),
};

SceneCmd* hakaana_ouke_room_1AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    hakaana_ouke_room_1Set_0000C0,
    hakaana_ouke_room_1Set_000100,
};

s16 hakaana_ouke_room_1ObjectList_00005C[] = {
    OBJECT_HAKACH_OBJECTS,
    OBJECT_RD,
    OBJECT_SYOKUDAI,
    OBJECT_FIREFLY,
    OBJECT_BOX,
    OBJECT_EFC_FLASH,
    OBJECT_OUKE_HAKA,
};

ActorEntry hakaana_ouke_room_1ActorList_00006C[] = {
    { ACTOR_EN_RD, {    130,      0,    177 }, {      0, 0XC000,      0 }, 0x7F00 },
    { ACTOR_EN_RD, {    215,      0,    446 }, {      0,      0,      0 }, 0x7F00 },
    { ACTOR_EN_RD, {   -196,      0,    428 }, {      0, 0X4000,      0 }, 0x7F00 },
};

u8 hakaana_ouke_room_1_possiblePadding_00009C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 hakaana_ouke_room_1PolygonType0_0000A0 = { 
    0, 1,
    hakaana_ouke_room_1PolygonDlist_0000AC,
    hakaana_ouke_room_1PolygonDlist_0000AC + ARRAY_COUNTU(hakaana_ouke_room_1PolygonDlist_0000AC)
};

PolygonDlist hakaana_ouke_room_1PolygonDlist_0000AC[1] = {
    { hakaana_ouke_room_1DL_001FA0, hakaana_ouke_room_1DL_003FF0 },
};

s32 hakaana_ouke_room_1_terminatorMaybe_0000B4 = { 0x01000000 };

u8 hakaana_ouke_room_1_possiblePadding_0000B8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd hakaana_ouke_room_1Set_0000C0[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x01, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&hakaana_ouke_room_1PolygonType0_0000A0),
    SCENE_CMD_OBJECT_LIST(4, hakaana_ouke_room_1ObjectList_0000F8),
    SCENE_CMD_END(),
};

s16 hakaana_ouke_room_1ObjectList_0000F8[] = {
    OBJECT_DDAN_OBJECTS,
    OBJECT_RD,
    OBJECT_SYOKUDAI,
    OBJECT_FIREFLY,
};

SceneCmd hakaana_ouke_room_1Set_000100[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x01, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&hakaana_ouke_room_1PolygonType0_0000A0),
    SCENE_CMD_OBJECT_LIST(4, hakaana_ouke_room_1ObjectList_000138),
    SCENE_CMD_END(),
};

s16 hakaana_ouke_room_1ObjectList_000138[] = {
    OBJECT_DDAN_OBJECTS,
    OBJECT_RD,
    OBJECT_SYOKUDAI,
    OBJECT_FIREFLY,
};

Vtx hakaana_ouke_room_1Vtx_000140[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_1Vtx_000140.vtx.inc"
};

Gfx hakaana_ouke_room_1DL_0008D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakaana_ouke_room_1Vtx_000140[113], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(hakaana_ouke_sceneTex_0042E0, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(hakaana_ouke_room_1Vtx_000140, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 3, 0, 4, 3, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 3, 0),
    gsSP2Triangles(8, 0, 3, 0, 8, 3, 7, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 14, 12, 0, 13, 12, 11, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSPVertex(&hakaana_ouke_room_1Vtx_000140[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSP2Triangles(6, 10, 8, 0, 10, 11, 8, 0),
    gsSP2Triangles(11, 12, 8, 0, 13, 9, 8, 0),
    gsSP2Triangles(9, 13, 14, 0, 15, 5, 7, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 5, 0),
    gsSP2Triangles(16, 15, 14, 0, 16, 14, 18, 0),
    gsSP2Triangles(18, 14, 13, 0, 18, 13, 19, 0),
    gsSP2Triangles(16, 20, 17, 0, 3, 2, 20, 0),
    gsSP2Triangles(2, 17, 20, 0, 11, 21, 12, 0),
    gsSP2Triangles(18, 19, 21, 0, 19, 12, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&hakaana_ouke_room_1Vtx_000140[61], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&hakaana_ouke_room_1Vtx_000140[93], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSPEndDisplayList(),
};

Vtx hakaana_ouke_room_1Vtx_000AC8[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_1Vtx_000AC8.vtx.inc"
};

Gfx hakaana_ouke_room_1DL_001008[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakaana_ouke_room_1Vtx_000AC8[76], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(hakaana_ouke_sceneTex_003AE0, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(hakaana_ouke_room_1Vtx_000AC8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(10, 9, 2, 0, 10, 2, 1, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&hakaana_ouke_room_1Vtx_000AC8[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 31, 30, 0),
    gsSPVertex(&hakaana_ouke_room_1Vtx_000AC8[64], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx hakaana_ouke_room_1Vtx_001168[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_1Vtx_001168.vtx.inc"
};

Gfx hakaana_ouke_room_1DL_001478[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakaana_ouke_room_1Vtx_001168[41], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(hakaana_ouke_room_1Tex_001FC8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 1, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 1),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(hakaana_ouke_room_1Vtx_001168, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(3, 0, 2, 0, 2, 1, 5, 0),
    gsSP2Triangles(6, 3, 2, 0, 6, 2, 5, 0),
    gsSP2Triangles(5, 1, 7, 0, 8, 6, 5, 0),
    gsSP2Triangles(8, 5, 7, 0, 7, 1, 0, 0),
    gsSP2Triangles(8, 7, 0, 0, 8, 0, 4, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 9, 0),
    gsSP2Triangles(12, 9, 11, 0, 11, 10, 14, 0),
    gsSP2Triangles(15, 12, 11, 0, 15, 11, 14, 0),
    gsSP2Triangles(14, 10, 16, 0, 17, 15, 14, 0),
    gsSP2Triangles(17, 14, 16, 0, 16, 10, 9, 0),
    gsSP2Triangles(17, 16, 9, 0, 17, 9, 13, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(19, 22, 20, 0, 18, 23, 24, 0),
    gsSP2Triangles(18, 24, 19, 0, 24, 22, 19, 0),
    gsSP2Triangles(23, 25, 26, 0, 23, 26, 24, 0),
    gsSP2Triangles(26, 22, 24, 0, 25, 21, 20, 0),
    gsSP2Triangles(25, 20, 26, 0, 20, 22, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSP1Triangle(28, 31, 29, 0),
    gsSPVertex(&hakaana_ouke_room_1Vtx_001168[32], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 3, 0, 1, 5, 6, 0),
    gsSP2Triangles(1, 6, 2, 0, 6, 4, 2, 0),
    gsSP2Triangles(5, 7, 8, 0, 5, 8, 6, 0),
    gsSP1Triangle(8, 4, 6, 0),
    gsSPEndDisplayList(),
};

Vtx hakaana_ouke_room_1Vtx_001618[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_1Vtx_001618.vtx.inc"
};

Gfx hakaana_ouke_room_1DL_001B58[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakaana_ouke_room_1Vtx_001618[76], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002EE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(hakaana_ouke_room_1Vtx_001618, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_0032E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_1Vtx_001618[18], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002EE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_1Vtx_001618[22], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002AE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_1Vtx_001618[31], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002EE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_1Vtx_001618[35], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002AE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_1Vtx_001618[38], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002EE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_1Vtx_001618[46], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002AE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_1Vtx_001618[49], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002EE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_1Vtx_001618[53], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002AE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_1Vtx_001618[56], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_room_1Tex_0027C8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&hakaana_ouke_room_1Vtx_001618[64], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&hakaana_ouke_room_1Vtx_001618[68], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&hakaana_ouke_room_1Vtx_001618[72], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSPEndDisplayList(),
};

Gfx hakaana_ouke_room_1DL_001FA0[] = {
    gsSPDisplayList(hakaana_ouke_room_1DL_0008D0),
    gsSPDisplayList(hakaana_ouke_room_1DL_001008),
    gsSPDisplayList(hakaana_ouke_room_1DL_001478),
    gsSPDisplayList(hakaana_ouke_room_1DL_001B58),
    gsSPEndDisplayList(),
};

u64 hakaana_ouke_room_1Tex_001FC8[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_1Tex_001FC8.rgba16.inc.c"
};

u64 hakaana_ouke_room_1Tex_0027C8[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_1Tex_0027C8.rgba16.inc.c"
};

u8 hakaana_ouke_room_1_possiblePadding_0037C8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx hakaana_ouke_room_1Vtx_0037D0[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_1Vtx_0037D0.vtx.inc"
};

Gfx hakaana_ouke_room_1DL_003E50[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakaana_ouke_room_1Vtx_0037D0[96], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(hakaana_ouke_room_1Tex_004000, G_IM_FMT_I, G_IM_SIZ_8b, 16, 128, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 2, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 7, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_CLAMP, 4, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x003C, 0x01FC),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, COMBINED, 0, SHADE, 0,
                       TEXEL1, 0, PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0B000000),
    gsSPVertex(hakaana_ouke_room_1Vtx_0037D0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&hakaana_ouke_room_1Vtx_0037D0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&hakaana_ouke_room_1Vtx_0037D0[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPEndDisplayList(),
};

Gfx hakaana_ouke_room_1DL_003FF0[] = {
    gsSPDisplayList(hakaana_ouke_room_1DL_003E50),
    gsSPEndDisplayList(),
};

u64 hakaana_ouke_room_1Tex_004000[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_1Tex_004000.i8.inc.c"
};

