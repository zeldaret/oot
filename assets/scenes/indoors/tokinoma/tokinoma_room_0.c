#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "tokinoma_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "tokinoma_scene.h"
#include "tokinoma_room_1.h"

SceneCmd tokinoma_room_0Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(tokinoma_room_0AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&tokinoma_room_0PolygonType0_000100),
    SCENE_CMD_OBJECT_LIST(8, tokinoma_room_0ObjectList_000080),
    SCENE_CMD_ACTOR_LIST(7, tokinoma_room_0ActorList_000090),
    SCENE_CMD_END(),
};

SceneCmd* tokinoma_room_0AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    tokinoma_room_0Set_000120,
    tokinoma_room_0Set_0001E0,
    tokinoma_room_0Set_0002F0,
    tokinoma_room_0Set_0003B0,
    tokinoma_room_0Set_000430,
    tokinoma_room_0Set_0004B0,
    tokinoma_room_0Set_000530,
    tokinoma_room_0Set_0005B0,
    tokinoma_room_0Set_000610,
    tokinoma_room_0Set_000690,
    tokinoma_room_0Set_000270,
};

s16 tokinoma_room_0ObjectList_000080[] = {
    OBJECT_TOKI_OBJECTS,
    OBJECT_XC,
    OBJECT_GI_JEWEL,
    OBJECT_GI_MELODY,
    OBJECT_EFC_STAR_FIELD,
    OBJECT_EFC_TW,
    OBJECT_EFC_FLASH,
    OBJECT_SPOT02_OBJECTS,
};

ActorEntry tokinoma_room_0ActorList_000090[] = {
    { ACTOR_DEMO_6K,           {    697,      0,   -168 }, {      0,      0,      0 }, 0x0010 },
    { ACTOR_DEMO_KANKYO,       {    195,     40,     77 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_DEMO_EFFECT,       {      0,     70,     -1 }, {      0,      0,      0 }, 0xFF0F },
    { ACTOR_BG_TOKI_SWD,       {     -1,     68,      0 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_DEMO_KANKYO,       {    -14,    939,   -652 }, {      0,      0,      0 }, 0x000E },
    { ACTOR_EN_XC,             {      0,     71,     11 }, {      0,      0,      0 }, 0x0009 },
    { ACTOR_BG_SPOT02_OBJECTS, {    697,      0,    -99 }, {      0,      0,      0 }, 0x0004 },
};

PolygonType0 tokinoma_room_0PolygonType0_000100 = { 
    0, 1,
    tokinoma_room_0PolygonDlist_00010C,
    tokinoma_room_0PolygonDlist_00010C + ARRAY_COUNTU(tokinoma_room_0PolygonDlist_00010C)
};

PolygonDlist tokinoma_room_0PolygonDlist_00010C[1] = {
    { tokinoma_room_0DL_008128, NULL },
};

s32 tokinoma_room_0_terminatorMaybe_000114 = { 0x01000000 };

u8 tokinoma_room_0_possiblePadding_000118[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd tokinoma_room_0Set_000120[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(12, 0, 0),
    SCENE_CMD_MESH(&tokinoma_room_0PolygonType0_000100),
    SCENE_CMD_OBJECT_LIST(8, tokinoma_room_0ObjectList_000160),
    SCENE_CMD_ACTOR_LIST(7, tokinoma_room_0ActorList_000170),
    SCENE_CMD_END(),
};

s16 tokinoma_room_0ObjectList_000160[] = {
    OBJECT_TOKI_OBJECTS,
    OBJECT_XC,
    OBJECT_EFC_FLASH,
    OBJECT_GI_JEWEL,
    OBJECT_GI_MELODY,
    OBJECT_EFC_STAR_FIELD,
    OBJECT_EFC_TW,
    OBJECT_SPOT02_OBJECTS,
};

ActorEntry tokinoma_room_0ActorList_000170[] = {
    { ACTOR_DEMO_6K,           {    684,    670,     89 }, {      0,      0,      0 }, 0x0010 },
    { ACTOR_DEMO_KANKYO,       {    195,     40,     77 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_DEMO_EFFECT,       {      0,     70,     -1 }, {      0,      0,      0 }, 0xFF0F },
    { ACTOR_BG_TOKI_SWD,       {     -1,     68,      0 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_DEMO_KANKYO,       {    -14,    939,   -652 }, {      0,      0,      0 }, 0x000E },
    { ACTOR_EN_XC,             {    -60,     71,      6 }, {      0, 0XFC72,      0 }, 0x0001 },
    { ACTOR_BG_SPOT02_OBJECTS, {    679,    680,     34 }, {      0,      0,      0 }, 0x0004 },
};

SceneCmd tokinoma_room_0Set_0001E0[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&tokinoma_room_0PolygonType0_000100),
    SCENE_CMD_OBJECT_LIST(2, tokinoma_room_0ObjectList_000220),
    SCENE_CMD_ACTOR_LIST(4, tokinoma_room_0ActorList_000224),
    SCENE_CMD_END(),
};

s16 tokinoma_room_0ObjectList_000220[] = {
    OBJECT_TOKI_OBJECTS,
    OBJECT_EFC_TW,
};

ActorEntry tokinoma_room_0ActorList_000224[] = {
    { ACTOR_BG_TOKI_SWD, {     -1,     68,      0 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_DEMO_EFFECT, {     -1,     70,      0 }, {      0,      0,      0 }, 0xFF0F },
    { ACTOR_DEMO_KANKYO, {    -14,    939,   -652 }, {      0,      0,      0 }, 0x000E },
    { ACTOR_END_TITLE,   {     -1,     70,     39 }, {      0,      0,      0 }, 0x0001 },
};

u8 tokinoma_room_0_possiblePadding_000264[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd tokinoma_room_0Set_000270[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&tokinoma_room_0PolygonType0_000100),
    SCENE_CMD_OBJECT_LIST(4, tokinoma_room_0ObjectList_0002B0),
    SCENE_CMD_ACTOR_LIST(3, tokinoma_room_0ActorList_0002B8),
    SCENE_CMD_END(),
};

s16 tokinoma_room_0ObjectList_0002B0[] = {
    OBJECT_TOKI_OBJECTS,
    OBJECT_EFC_CRYSTAL_LIGHT,
    OBJECT_EFC_STAR_FIELD,
    OBJECT_EFC_TW,
};

ActorEntry tokinoma_room_0ActorList_0002B8[] = {
    { ACTOR_BG_TOKI_SWD, {     -1,     68,      0 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_DEMO_EFFECT, {      0,     70,     -1 }, {      0,      0,      0 }, 0xFF0F },
    { ACTOR_DEMO_KANKYO, {    -14,    939,   -652 }, {      0,      0,      0 }, 0x000E },
};

u8 tokinoma_room_0_possiblePadding_0002E8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd tokinoma_room_0Set_0002F0[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(12, 0, 0),
    SCENE_CMD_MESH(&tokinoma_room_0PolygonType0_000100),
    SCENE_CMD_OBJECT_LIST(8, tokinoma_room_0ObjectList_000330),
    SCENE_CMD_ACTOR_LIST(7, tokinoma_room_0ActorList_000340),
    SCENE_CMD_END(),
};

s16 tokinoma_room_0ObjectList_000330[] = {
    OBJECT_TOKI_OBJECTS,
    OBJECT_XC,
    OBJECT_EFC_FLASH,
    OBJECT_GI_JEWEL,
    OBJECT_GI_MELODY,
    OBJECT_EFC_STAR_FIELD,
    OBJECT_EFC_TW,
    OBJECT_SPOT02_OBJECTS,
};

ActorEntry tokinoma_room_0ActorList_000340[] = {
    { ACTOR_DEMO_6K,           {    684,    670,     89 }, {      0,      0,      0 }, 0x0010 },
    { ACTOR_DEMO_KANKYO,       {    195,     40,     77 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_DEMO_EFFECT,       {      0,     70,     -1 }, {      0,      0,      0 }, 0xFF0F },
    { ACTOR_BG_TOKI_SWD,       {     -1,     68,      0 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_DEMO_KANKYO,       {    -14,    939,   -652 }, {      0,      0,      0 }, 0x000E },
    { ACTOR_EN_XC,             {    -60,     71,      6 }, {      0, 0XFC72,      0 }, 0x0002 },
    { ACTOR_BG_SPOT02_OBJECTS, {    679,    680,     34 }, {      0,      0,      0 }, 0x0004 },
};

SceneCmd tokinoma_room_0Set_0003B0[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&tokinoma_room_0PolygonType0_000100),
    SCENE_CMD_OBJECT_LIST(3, tokinoma_room_0ObjectList_0003F0),
    SCENE_CMD_ACTOR_LIST(3, tokinoma_room_0ActorList_0003F8),
    SCENE_CMD_END(),
};

s16 tokinoma_room_0ObjectList_0003F0[] = {
    OBJECT_TOKI_OBJECTS,
    OBJECT_EFC_STAR_FIELD,
    OBJECT_EFC_TW,
};

ActorEntry tokinoma_room_0ActorList_0003F8[] = {
    { ACTOR_DEMO_EFFECT, {      0,     70,     -1 }, {      0,      0,      0 }, 0xFF0F },
    { ACTOR_BG_TOKI_SWD, {     -1,     68,      0 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_DEMO_KANKYO, {    -14,    939,   -652 }, {      0,      0,      0 }, 0x000E },
};

u8 tokinoma_room_0_possiblePadding_000428[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd tokinoma_room_0Set_000430[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&tokinoma_room_0PolygonType0_000100),
    SCENE_CMD_OBJECT_LIST(3, tokinoma_room_0ObjectList_000470),
    SCENE_CMD_ACTOR_LIST(3, tokinoma_room_0ActorList_000478),
    SCENE_CMD_END(),
};

s16 tokinoma_room_0ObjectList_000470[] = {
    OBJECT_TOKI_OBJECTS,
    OBJECT_EFC_STAR_FIELD,
    OBJECT_EFC_TW,
};

ActorEntry tokinoma_room_0ActorList_000478[] = {
    { ACTOR_BG_TOKI_SWD, {     -1,     68,      0 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_DEMO_EFFECT, {      0,     70,     -1 }, {      0,      0,      0 }, 0xFF0F },
    { ACTOR_DEMO_KANKYO, {    -14,    939,   -652 }, {      0,      0,      0 }, 0x000E },
};

u8 tokinoma_room_0_possiblePadding_0004A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd tokinoma_room_0Set_0004B0[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&tokinoma_room_0PolygonType0_000100),
    SCENE_CMD_OBJECT_LIST(3, tokinoma_room_0ObjectList_0004F0),
    SCENE_CMD_ACTOR_LIST(3, tokinoma_room_0ActorList_0004F8),
    SCENE_CMD_END(),
};

s16 tokinoma_room_0ObjectList_0004F0[] = {
    OBJECT_TOKI_OBJECTS,
    OBJECT_EFC_STAR_FIELD,
    OBJECT_EFC_TW,
};

ActorEntry tokinoma_room_0ActorList_0004F8[] = {
    { ACTOR_BG_TOKI_SWD, {     -1,     68,      0 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_DEMO_EFFECT, {      0,     70,     -1 }, {      0,      0,      0 }, 0xFF0F },
    { ACTOR_DEMO_KANKYO, {    -14,    939,   -652 }, {      0,      0,      0 }, 0x000E },
};

u8 tokinoma_room_0_possiblePadding_000528[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd tokinoma_room_0Set_000530[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&tokinoma_room_0PolygonType0_000100),
    SCENE_CMD_OBJECT_LIST(3, tokinoma_room_0ObjectList_000570),
    SCENE_CMD_ACTOR_LIST(3, tokinoma_room_0ActorList_000578),
    SCENE_CMD_END(),
};

s16 tokinoma_room_0ObjectList_000570[] = {
    OBJECT_TOKI_OBJECTS,
    OBJECT_EFC_STAR_FIELD,
    OBJECT_EFC_TW,
};

ActorEntry tokinoma_room_0ActorList_000578[] = {
    { ACTOR_BG_TOKI_SWD, {     -1,     68,      0 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_DEMO_EFFECT, {      0,     70,     -1 }, {      0,      0,      0 }, 0xFF0F },
    { ACTOR_DEMO_KANKYO, {    -14,    939,   -652 }, {      0,      0,      0 }, 0x000E },
};

u8 tokinoma_room_0_possiblePadding_0005A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd tokinoma_room_0Set_0005B0[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&tokinoma_room_0PolygonType0_000100),
    SCENE_CMD_OBJECT_LIST(1, tokinoma_room_0ObjectList_0005F0),
    SCENE_CMD_ACTOR_LIST(1, tokinoma_room_0ActorList_0005F4),
    SCENE_CMD_END(),
};

s16 tokinoma_room_0ObjectList_0005F0[] = {
    OBJECT_TOKI_OBJECTS,
};

ActorEntry tokinoma_room_0ActorList_0005F4[] = {
    { ACTOR_DEMO_KANKYO, {    -14,    939,   -652 }, {      0,      0,      0 }, 0x000E },
};

u8 tokinoma_room_0_possiblePadding_000604[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd tokinoma_room_0Set_000610[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&tokinoma_room_0PolygonType0_000100),
    SCENE_CMD_OBJECT_LIST(4, tokinoma_room_0ObjectList_000650),
    SCENE_CMD_ACTOR_LIST(3, tokinoma_room_0ActorList_000658),
    SCENE_CMD_END(),
};

s16 tokinoma_room_0ObjectList_000650[] = {
    OBJECT_TOKI_OBJECTS,
    OBJECT_EFC_CRYSTAL_LIGHT,
    OBJECT_EFC_STAR_FIELD,
    OBJECT_EFC_TW,
};

ActorEntry tokinoma_room_0ActorList_000658[] = {
    { ACTOR_BG_TOKI_SWD, {     -1,     68,      0 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_DEMO_EFFECT, {      0,     70,     -1 }, {      0,      0,      0 }, 0xFF0F },
    { ACTOR_DEMO_KANKYO, {    -14,    939,   -652 }, {      0,      0,      0 }, 0x000E },
};

u8 tokinoma_room_0_possiblePadding_000688[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd tokinoma_room_0Set_000690[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&tokinoma_room_0PolygonType0_000100),
    SCENE_CMD_OBJECT_LIST(4, tokinoma_room_0ObjectList_0006D0),
    SCENE_CMD_ACTOR_LIST(3, tokinoma_room_0ActorList_0006D8),
    SCENE_CMD_END(),
};

s16 tokinoma_room_0ObjectList_0006D0[] = {
    OBJECT_TOKI_OBJECTS,
    OBJECT_EFC_CRYSTAL_LIGHT,
    OBJECT_EFC_STAR_FIELD,
    OBJECT_EFC_TW,
};

ActorEntry tokinoma_room_0ActorList_0006D8[] = {
    { ACTOR_BG_TOKI_SWD, {     -1,     68,      0 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_DEMO_EFFECT, {      0,     70,     -1 }, {      0,      0,      0 }, 0xFF0F },
    { ACTOR_DEMO_KANKYO, {    -14,    939,   -652 }, {      0,      0,      0 }, 0x000E },
};

u8 tokinoma_room_0_possiblePadding_000708[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx tokinoma_room_0Vtx_000710[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Vtx_000710.vtx.inc"
};

Gfx tokinoma_room_0DL_000910[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_0Vtx_000710[24], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_010FA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(tokinoma_room_0Vtx_000710, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_0Vtx_0009E0[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Vtx_0009E0.vtx.inc"
};

Gfx tokinoma_room_0DL_0010F0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_0Vtx_0009E0[105], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_011FA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(tokinoma_room_0Vtx_0009E0, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_sceneTex_010FA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_0Vtx_0009E0[6], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&tokinoma_room_0Vtx_0009E0[38], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 5, 0, 6, 7, 5, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00DFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_0Vtx_0009E0[48], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 3, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&tokinoma_room_0Vtx_0009E0[80], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 15, 16, 13, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_0Vtx_001318[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Vtx_001318.vtx.inc"
};

Gfx tokinoma_room_0DL_001818[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_0Vtx_001318[72], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00EFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(tokinoma_room_0Vtx_001318, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&tokinoma_room_0Vtx_001318[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&tokinoma_room_0Vtx_001318[64], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_0Vtx_001968[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Vtx_001968.vtx.inc"
};

Gfx tokinoma_room_0DL_001E68[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_0Vtx_001968[72], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00EFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(tokinoma_room_0Vtx_001968, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&tokinoma_room_0Vtx_001968[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&tokinoma_room_0Vtx_001968[64], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_0Vtx_001FB8[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Vtx_001FB8.vtx.inc"
};

Gfx tokinoma_room_0DL_0024B8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_0Vtx_001FB8[72], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00EFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(tokinoma_room_0Vtx_001FB8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&tokinoma_room_0Vtx_001FB8[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&tokinoma_room_0Vtx_001FB8[64], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_0Vtx_002608[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Vtx_002608.vtx.inc"
};

Gfx tokinoma_room_0DL_002AF8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_0Vtx_002608[71], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00EFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(tokinoma_room_0Vtx_002608, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&tokinoma_room_0Vtx_002608[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 12, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSPVertex(&tokinoma_room_0Vtx_002608[63], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_0Vtx_002C48[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Vtx_002C48.vtx.inc"
};

Gfx tokinoma_room_0DL_003668[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_0Vtx_002C48[154], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00EFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(tokinoma_room_0Vtx_002C48, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&tokinoma_room_0Vtx_002C48[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&tokinoma_room_0Vtx_002C48[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 5, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(10, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 15, 18, 13, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(19, 22, 3, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 23, 26, 8, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSP1Triangle(30, 29, 31, 0),
    gsSPVertex(&tokinoma_room_0Vtx_002C48[96], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 21, 24, 6, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsSP2Triangles(25, 28, 11, 0, 29, 30, 31, 0),
    gsSPVertex(&tokinoma_room_0Vtx_002C48[128], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(4, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 9, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(14, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 19, 22, 17, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 3, 0),
    gsSP1Triangle(23, 3, 22, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_0Vtx_0038B8[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Vtx_0038B8.vtx.inc"
};

Gfx tokinoma_room_0DL_003988[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_0Vtx_0038B8[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_room_0Tex_0151D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(tokinoma_room_0Vtx_0038B8, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_0Vtx_003A48[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Vtx_003A48.vtx.inc"
};

Gfx tokinoma_room_0DL_004228[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_0Vtx_003A48[118], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_011FA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(tokinoma_room_0Vtx_003A48, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 4, 7, 0, 8, 7, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_sceneTex_0107A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_0Vtx_003A48[10], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00FFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_0Vtx_003A48[14], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 3, 5, 0, 4, 5, 6, 0),
    gsSP2Triangles(7, 0, 8, 0, 7, 8, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_room_0Tex_0151D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_0Vtx_003A48[24], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00EFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_0Vtx_003A48[28], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(4, 14, 15, 0, 4, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 1, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(23, 22, 24, 0, 23, 24, 25, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00DFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_0Vtx_003A48[54], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&tokinoma_room_0Vtx_003A48[86], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00D7A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_0Vtx_003A48[98], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00CFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_0Vtx_003A48[106], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&tokinoma_room_0Vtx_003A48[110], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_0Vtx_0045F8[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Vtx_0045F8.vtx.inc"
};

Gfx tokinoma_room_0DL_004848[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_0Vtx_0045F8[29], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_0107A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(tokinoma_room_0Tex_0169D8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(tokinoma_room_0Vtx_0045F8, 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 2, 1, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 16, 19, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_0Vtx_004968[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Vtx_004968.vtx.inc"
};

Gfx tokinoma_room_0DL_004B58[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_0Vtx_004968[23], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_0107A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(tokinoma_room_0Tex_0169D8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsSPDisplayList(0x0B000000),
    gsSPVertex(tokinoma_room_0Vtx_004968, 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP1Triangle(20, 21, 22, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_0Vtx_004C68[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Vtx_004C68.vtx.inc"
};

Gfx tokinoma_room_0DL_005D68[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_0Vtx_004C68[264], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_0117A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(tokinoma_room_0Tex_0149D8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(tokinoma_room_0Vtx_004C68, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&tokinoma_room_0Vtx_004C68[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(24, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&tokinoma_room_0Vtx_004C68[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&tokinoma_room_0Vtx_004C68[95], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&tokinoma_room_0Vtx_004C68[127], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&tokinoma_room_0Vtx_004C68[159], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&tokinoma_room_0Vtx_004C68[191], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 8, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 11, 10, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(16, 19, 20, 0, 21, 17, 16, 0),
    gsSP2Triangles(22, 17, 21, 0, 23, 22, 21, 0),
    gsSP2Triangles(24, 23, 21, 0, 20, 19, 23, 0),
    gsSP2Triangles(20, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 28, 26, 0, 29, 30, 31, 0),
    gsSPVertex(&tokinoma_room_0Vtx_004C68[223], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 7, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(12, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&tokinoma_room_0Vtx_004C68[255], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP1Triangle(4, 7, 8, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_0Vtx_0060B8[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Vtx_0060B8.vtx.inc"
};

Gfx tokinoma_room_0DL_006748[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_0Vtx_0060B8[97], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_0117A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(tokinoma_room_0Tex_0149D8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsSPDisplayList(0x0B000000),
    gsSPVertex(tokinoma_room_0Vtx_0060B8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&tokinoma_room_0Vtx_0060B8[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&tokinoma_room_0Vtx_0060B8[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 19, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&tokinoma_room_0Vtx_0060B8[94], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_0Vtx_006908[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Vtx_006908.vtx.inc"
};

Gfx tokinoma_room_0DL_006AF8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_0Vtx_006908[23], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_010FA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(tokinoma_room_0Tex_0161D8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(tokinoma_room_0Vtx_006908, 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 7, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP1Triangle(20, 21, 22, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_0Vtx_006C10[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Vtx_006C10.vtx.inc"
};

Gfx tokinoma_room_0DL_006D50[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_0Vtx_006C10[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_010FA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(tokinoma_room_0Tex_0161D8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsSPDisplayList(0x0B000000),
    gsSPVertex(tokinoma_room_0Vtx_006C10, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP1Triangle(8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_0Vtx_006E50[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Vtx_006E50.vtx.inc"
};

Gfx tokinoma_room_0DL_006F80[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_0Vtx_006E50[11], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_010FA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(tokinoma_room_0Tex_0141D8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(tokinoma_room_0Vtx_006E50, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP1Triangle(7, 9, 10, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_0Vtx_007080[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Vtx_007080.vtx.inc"
};

Gfx tokinoma_room_0DL_007160[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_0Vtx_007080[6], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_010FA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(tokinoma_room_0Tex_0141D8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsSPDisplayList(0x0B000000),
    gsSPVertex(tokinoma_room_0Vtx_007080, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_0Vtx_007250[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Vtx_007250.vtx.inc"
};

Gfx tokinoma_room_0DL_007310[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_0Vtx_007250[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00FFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(tokinoma_room_0Tex_0159D8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(tokinoma_room_0Vtx_007250, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_0Vtx_007400[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Vtx_007400.vtx.inc"
};

Gfx tokinoma_room_0DL_0075B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_0Vtx_007400[19], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_sceneTex_00FFA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(tokinoma_room_0Tex_0159D8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(tokinoma_room_0Vtx_007400, 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(6, 4, 2, 0, 6, 2, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 6, 0),
    gsSP2Triangles(7, 8, 6, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 9, 0, 14, 9, 13, 0),
    gsSP2Triangles(11, 15, 16, 0, 11, 16, 17, 0),
    gsSP2Triangles(11, 17, 18, 0, 16, 1, 0, 0),
    gsSP1Triangle(16, 0, 17, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_0Vtx_0076E0[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Vtx_0076E0.vtx.inc"
};

Gfx tokinoma_room_0DL_007A70[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_0Vtx_0076E0[49], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_room_0Tex_0131D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA_PRIM, G_CC_PASS2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_DECAL2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsSPDisplayList(0x09000000),
    gsSPVertex(tokinoma_room_0Vtx_0076E0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_room_0Tex_0121D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_0Vtx_0076E0[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_room_0Tex_0111D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_0Vtx_0076E0[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_room_0Tex_0101D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_0Vtx_0076E0[12], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_room_0Tex_00F1D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_0Vtx_0076E0[16], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_room_0Tex_00E1D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_0Vtx_0076E0[20], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_room_0Tex_00D1D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_0Vtx_0076E0[25], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_room_0Tex_00C1D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_0Vtx_0076E0[29], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_room_0Tex_00B1D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_0Vtx_0076E0[33], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_room_0Tex_00A1D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_0Vtx_0076E0[37], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_room_0Tex_0091D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_0Vtx_0076E0[41], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_room_0Tex_0081D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_0Vtx_0076E0[45], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx tokinoma_room_0Vtx_007EA0[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Vtx_007EA0.vtx.inc"
};

Gfx tokinoma_room_0DL_007FD0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&tokinoma_room_0Vtx_007EA0[11], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(tokinoma_room_0Tex_00E1D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA_PRIM, G_CC_PASS2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_DECAL2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsSPDisplayList(0x08000000),
    gsSPVertex(tokinoma_room_0Vtx_007EA0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_room_0Tex_0091D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_0Vtx_007EA0[3], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(tokinoma_room_0Tex_0081D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&tokinoma_room_0Vtx_007EA0[7], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx tokinoma_room_0DL_008128[] = {
    gsSPDisplayList(tokinoma_room_0DL_000910),
    gsSPDisplayList(tokinoma_room_0DL_0010F0),
    gsSPDisplayList(tokinoma_room_0DL_001818),
    gsSPDisplayList(tokinoma_room_0DL_001E68),
    gsSPDisplayList(tokinoma_room_0DL_0024B8),
    gsSPDisplayList(tokinoma_room_0DL_002AF8),
    gsSPDisplayList(tokinoma_room_0DL_003668),
    gsSPDisplayList(tokinoma_room_0DL_003988),
    gsSPDisplayList(tokinoma_room_0DL_004228),
    gsSPDisplayList(tokinoma_room_0DL_004848),
    gsSPDisplayList(tokinoma_room_0DL_004B58),
    gsSPDisplayList(tokinoma_room_0DL_005D68),
    gsSPDisplayList(tokinoma_room_0DL_006748),
    gsSPDisplayList(tokinoma_room_0DL_006AF8),
    gsSPDisplayList(tokinoma_room_0DL_006D50),
    gsSPDisplayList(tokinoma_room_0DL_006F80),
    gsSPDisplayList(tokinoma_room_0DL_007160),
    gsSPDisplayList(tokinoma_room_0DL_007310),
    gsSPDisplayList(tokinoma_room_0DL_0075B0),
    gsSPDisplayList(tokinoma_room_0DL_007A70),
    gsSPDisplayList(tokinoma_room_0DL_007FD0),
    gsSPEndDisplayList(),
};

u64 tokinoma_room_0Tex_0081D8[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Tex_0081D8.rgba16.inc.c"
};

u64 tokinoma_room_0Tex_0091D8[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Tex_0091D8.rgba16.inc.c"
};

u64 tokinoma_room_0Tex_00A1D8[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Tex_00A1D8.rgba16.inc.c"
};

u64 tokinoma_room_0Tex_00B1D8[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Tex_00B1D8.rgba16.inc.c"
};

u64 tokinoma_room_0Tex_00C1D8[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Tex_00C1D8.rgba16.inc.c"
};

u64 tokinoma_room_0Tex_00D1D8[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Tex_00D1D8.rgba16.inc.c"
};

u64 tokinoma_room_0Tex_00E1D8[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Tex_00E1D8.rgba16.inc.c"
};

u64 tokinoma_room_0Tex_00F1D8[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Tex_00F1D8.rgba16.inc.c"
};

u64 tokinoma_room_0Tex_0101D8[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Tex_0101D8.rgba16.inc.c"
};

u64 tokinoma_room_0Tex_0111D8[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Tex_0111D8.rgba16.inc.c"
};

u64 tokinoma_room_0Tex_0121D8[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Tex_0121D8.rgba16.inc.c"
};

u64 tokinoma_room_0Tex_0131D8[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Tex_0131D8.rgba16.inc.c"
};

u64 tokinoma_room_0Tex_0141D8[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Tex_0141D8.rgba16.inc.c"
};

u64 tokinoma_room_0Tex_0149D8[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Tex_0149D8.rgba16.inc.c"
};

u64 tokinoma_room_0Tex_0151D8[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Tex_0151D8.rgba16.inc.c"
};

u64 tokinoma_room_0Tex_0159D8[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Tex_0159D8.rgba16.inc.c"
};

u64 tokinoma_room_0Tex_0161D8[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Tex_0161D8.rgba16.inc.c"
};

u64 tokinoma_room_0Tex_0169D8[] = {
#include "assets/scenes/indoors/tokinoma/tokinoma_room_0Tex_0169D8.rgba16.inc.c"
};

