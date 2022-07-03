#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "hakaana_ouke_room_2.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "hakaana_ouke_scene.h"
#include "hakaana_ouke_room_0.h"
#include "hakaana_ouke_room_1.h"

SceneCmd hakaana_ouke_room_2Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(hakaana_ouke_room_2AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(4),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x01, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&hakaana_ouke_room_2PolygonType0_0000A0),
    SCENE_CMD_OBJECT_LIST(7, hakaana_ouke_room_2ObjectList_00005C),
    SCENE_CMD_ACTOR_LIST(3, hakaana_ouke_room_2ActorList_00006C),
    SCENE_CMD_END(),
};

SceneCmd* hakaana_ouke_room_2AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    hakaana_ouke_room_2Set_0000C0,
    hakaana_ouke_room_2Set_000140,
};

s16 hakaana_ouke_room_2ObjectList_00005C[] = {
    OBJECT_HAKACH_OBJECTS,
    OBJECT_RD,
    OBJECT_SYOKUDAI,
    OBJECT_FIREFLY,
    OBJECT_BOX,
    OBJECT_EFC_FLASH,
    OBJECT_OUKE_HAKA,
};

ActorEntry hakaana_ouke_room_2ActorList_00006C[] = {
    { ACTOR_EN_OKARINA_TAG, {      0,    127,  -1200 }, {      0,      0,      0 }, 0x17FF },
    { ACTOR_OBJ_SYOKUDAI,   {     60,     60,  -1112 }, {      0,      0,      0 }, 0x2400 },
    { ACTOR_OBJ_SYOKUDAI,   {    -60,     60,  -1112 }, {      0,      0,      0 }, 0x2400 },
};

u8 hakaana_ouke_room_2_possiblePadding_00009C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 hakaana_ouke_room_2PolygonType0_0000A0 = { 
    0, 1,
    hakaana_ouke_room_2PolygonDlist_0000AC,
    hakaana_ouke_room_2PolygonDlist_0000AC + ARRAY_COUNTU(hakaana_ouke_room_2PolygonDlist_0000AC)
};

PolygonDlist hakaana_ouke_room_2PolygonDlist_0000AC[1] = {
    { hakaana_ouke_room_2DL_002738, hakaana_ouke_room_2DL_0050F8 },
};

s32 hakaana_ouke_room_2_terminatorMaybe_0000B4 = { 0x01000000 };

u8 hakaana_ouke_room_2_possiblePadding_0000B8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd hakaana_ouke_room_2Set_0000C0[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x01, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&hakaana_ouke_room_2PolygonType0_0000A0),
    SCENE_CMD_OBJECT_LIST(4, hakaana_ouke_room_2ObjectList_000100),
    SCENE_CMD_ACTOR_LIST(3, hakaana_ouke_room_2ActorList_000108),
    SCENE_CMD_END(),
};

s16 hakaana_ouke_room_2ObjectList_000100[] = {
    OBJECT_OUKE_HAKA,
    OBJECT_BWALL,
    OBJECT_SYOKUDAI,
    OBJECT_FIREFLY,
};

ActorEntry hakaana_ouke_room_2ActorList_000108[] = {
    { ACTOR_OBJ_SYOKUDAI,   {     60,     60,  -1112 }, {      0,      0,      0 }, 0x2400 },
    { ACTOR_OBJ_SYOKUDAI,   {    -60,     60,  -1112 }, {      0,      0,      0 }, 0x2400 },
    { ACTOR_EN_OKARINA_TAG, {     -1,    127,  -1202 }, {      0,      0,      0 }, 0x17FF },
};

u8 hakaana_ouke_room_2_possiblePadding_000138[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd hakaana_ouke_room_2Set_000140[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x01, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&hakaana_ouke_room_2PolygonType0_0000A0),
    SCENE_CMD_OBJECT_LIST(4, hakaana_ouke_room_2ObjectList_000180),
    SCENE_CMD_ACTOR_LIST(3, hakaana_ouke_room_2ActorList_000188),
    SCENE_CMD_END(),
};

s16 hakaana_ouke_room_2ObjectList_000180[] = {
    OBJECT_OUKE_HAKA,
    OBJECT_BWALL,
    OBJECT_SYOKUDAI,
    OBJECT_FIREFLY,
};

ActorEntry hakaana_ouke_room_2ActorList_000188[] = {
    { ACTOR_OBJ_SYOKUDAI,   {     60,     60,  -1112 }, {      0,      0,      0 }, 0x2400 },
    { ACTOR_OBJ_SYOKUDAI,   {    -60,     60,  -1112 }, {      0,      0,      0 }, 0x2400 },
    { ACTOR_EN_OKARINA_TAG, {     -1,    127,  -1202 }, {      0,      0,      0 }, 0x17FF },
};

u8 hakaana_ouke_room_2_possiblePadding_0001B8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx hakaana_ouke_room_2Vtx_0001C0[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_2Vtx_0001C0.vtx.inc"
};

Gfx hakaana_ouke_room_2DL_000560[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakaana_ouke_room_2Vtx_0001C0[50], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(hakaana_ouke_room_2Tex_003F78, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(hakaana_ouke_room_2Vtx_0001C0, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakaana_ouke_room_2Tex_004778, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&hakaana_ouke_room_2Vtx_0001C0[10], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_room_2Tex_003F78, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&hakaana_ouke_room_2Vtx_0001C0[13], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakaana_ouke_room_2Tex_004778, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&hakaana_ouke_room_2Vtx_0001C0[16], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_room_2Tex_003F78, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&hakaana_ouke_room_2Vtx_0001C0[21], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 1, 0),
    gsSP2Triangles(6, 5, 7, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakaana_ouke_room_2Tex_002778, G_IM_FMT_I, 128, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 7, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&hakaana_ouke_room_2Vtx_0001C0[38], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakaana_ouke_room_2Tex_004778, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_2Vtx_0001C0[42], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(2, 1, 7, 0, 2, 7, 6, 0),
    gsSPEndDisplayList(),
};

Vtx hakaana_ouke_room_2Vtx_000868[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_2Vtx_000868.vtx.inc"
};

Gfx hakaana_ouke_room_2DL_000A28[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakaana_ouke_room_2Vtx_000868[20], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(hakaana_ouke_room_2Tex_003778, G_IM_FMT_I, 128, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 7, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(hakaana_ouke_room_2Vtx_000868, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_room_2Tex_003F78, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&hakaana_ouke_room_2Vtx_000868[4], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(11, 14, 15, 0, 11, 15, 12, 0),
    gsSPEndDisplayList(),
};

Vtx hakaana_ouke_room_2Vtx_000B58[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_2Vtx_000B58.vtx.inc"
};

Gfx hakaana_ouke_room_2DL_000F88[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakaana_ouke_room_2Vtx_000B58[59], 8, 0),
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
    gsSPVertex(hakaana_ouke_room_2Vtx_000B58, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakaana_ouke_room_2Tex_004778, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_2Vtx_000B58[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakaana_ouke_sceneTex_0042E0, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_2Vtx_000B58[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakaana_ouke_room_2Tex_004778, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_2Vtx_000B58[12], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakaana_ouke_sceneTex_0042E0, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_2Vtx_000B58[20], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakaana_ouke_room_2Tex_004778, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_2Vtx_000B58[28], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakaana_ouke_sceneTex_0042E0, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_2Vtx_000B58[39], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(hakaana_ouke_room_2Tex_004778, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_2Vtx_000B58[43], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx hakaana_ouke_room_2Vtx_0012A8[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_2Vtx_0012A8.vtx.inc"
};

Gfx hakaana_ouke_room_2DL_001448[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakaana_ouke_room_2Vtx_0012A8[18], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(hakaana_ouke_room_2Tex_002F78, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
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
    gsSPVertex(hakaana_ouke_room_2Vtx_0012A8, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 2, 0, 0, 5, 6, 0),
    gsSP2Triangles(0, 6, 1, 0, 6, 4, 1, 0),
    gsSP2Triangles(5, 7, 8, 0, 5, 8, 6, 0),
    gsSP2Triangles(8, 4, 6, 0, 7, 3, 2, 0),
    gsSP2Triangles(7, 2, 8, 0, 2, 4, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(10, 13, 11, 0, 9, 14, 15, 0),
    gsSP2Triangles(9, 15, 10, 0, 15, 13, 10, 0),
    gsSP2Triangles(14, 16, 17, 0, 14, 17, 15, 0),
    gsSP2Triangles(17, 13, 15, 0, 16, 12, 11, 0),
    gsSP2Triangles(16, 11, 17, 0, 11, 13, 17, 0),
    gsSPEndDisplayList(),
};

Vtx hakaana_ouke_room_2Vtx_001578[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_2Vtx_001578.vtx.inc"
};

Gfx hakaana_ouke_room_2DL_001A18[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakaana_ouke_room_2Vtx_001578[66], 8, 0),
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
    gsSPVertex(hakaana_ouke_room_2Vtx_001578, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 3, 0, 4, 3, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 6, 0, 10, 6, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&hakaana_ouke_room_2Vtx_001578[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 6, 0, 10, 6, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 12, 0, 16, 12, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&hakaana_ouke_room_2Vtx_001578[62], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx hakaana_ouke_room_2Vtx_001B70[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_2Vtx_001B70.vtx.inc"
};

Gfx hakaana_ouke_room_2DL_001E30[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakaana_ouke_room_2Vtx_001B70[36], 8, 0),
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
    gsSPVertex(hakaana_ouke_room_2Vtx_001B70, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 31, 29, 0),
    gsSPVertex(&hakaana_ouke_room_2Vtx_001B70[32], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx hakaana_ouke_room_2Vtx_001F30[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_2Vtx_001F30.vtx.inc"
};

Gfx hakaana_ouke_room_2DL_002450[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakaana_ouke_room_2Vtx_001F30[74], 8, 0),
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
    gsSPVertex(hakaana_ouke_room_2Vtx_001F30, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002AE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_2Vtx_001F30[9], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_0032E0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 15, 13, 10, 255),
    gsSPVertex(&hakaana_ouke_room_2Vtx_001F30[21], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&hakaana_ouke_room_2Vtx_001F30[27], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 1, 0, 5, 0),
    gsSP2Triangles(6, 7, 1, 0, 6, 1, 5, 0),
    gsSP2Triangles(5, 0, 8, 0, 6, 5, 8, 0),
    gsSP2Triangles(1, 4, 2, 0, 1, 7, 4, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 15, 13, 10, 255),
    gsSPVertex(&hakaana_ouke_room_2Vtx_001F30[36], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&hakaana_ouke_room_2Vtx_001F30[42], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 0, 5, 4, 0),
    gsSP2Triangles(4, 3, 1, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 3, 7, 0, 3, 4, 7, 0),
    gsSP2Triangles(4, 8, 7, 0, 4, 5, 8, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 15, 13, 10, 255),
    gsSPVertex(&hakaana_ouke_room_2Vtx_001F30[51], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&hakaana_ouke_room_2Vtx_001F30[57], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 0, 5, 4, 0),
    gsSP2Triangles(4, 3, 1, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 3, 7, 0, 3, 4, 7, 0),
    gsSP2Triangles(4, 8, 7, 0, 4, 5, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(hakaana_ouke_sceneTex_002AE0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&hakaana_ouke_room_2Vtx_001F30[66], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx hakaana_ouke_room_2DL_002738[] = {
    gsSPDisplayList(hakaana_ouke_room_2DL_000560),
    gsSPDisplayList(hakaana_ouke_room_2DL_000A28),
    gsSPDisplayList(hakaana_ouke_room_2DL_000F88),
    gsSPDisplayList(hakaana_ouke_room_2DL_001448),
    gsSPDisplayList(hakaana_ouke_room_2DL_001A18),
    gsSPDisplayList(hakaana_ouke_room_2DL_001E30),
    gsSPDisplayList(hakaana_ouke_room_2DL_002450),
    gsSPEndDisplayList(),
};

u64 hakaana_ouke_room_2Tex_002778[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_2Tex_002778.i4.inc.c"
};

u64 hakaana_ouke_room_2Tex_002F78[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_2Tex_002F78.rgba16.inc.c"
};

u64 hakaana_ouke_room_2Tex_003778[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_2Tex_003778.i4.inc.c"
};

u64 hakaana_ouke_room_2Tex_003F78[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_2Tex_003F78.rgba16.inc.c"
};

u64 hakaana_ouke_room_2Tex_004778[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_2Tex_004778.i4.inc.c"
};

u8 hakaana_ouke_room_2_possiblePadding_004F78[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx hakaana_ouke_room_2Vtx_004F80[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_2Vtx_004F80.vtx.inc"
};

Gfx hakaana_ouke_room_2DL_005040[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&hakaana_ouke_room_2Vtx_004F80[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(hakaana_ouke_room_2Tex_005108, G_IM_FMT_IA, G_IM_SIZ_8b, 128, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 7, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(hakaana_ouke_room_2Vtx_004F80, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx hakaana_ouke_room_2DL_0050F8[] = {
    gsSPDisplayList(hakaana_ouke_room_2DL_005040),
    gsSPEndDisplayList(),
};

u64 hakaana_ouke_room_2Tex_005108[] = {
#include "assets/scenes/misc/hakaana_ouke/hakaana_ouke_room_2Tex_005108.ia8.inc.c"
};

