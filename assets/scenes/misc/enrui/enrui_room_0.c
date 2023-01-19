#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "enrui_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "enrui_scene.h"

SceneCmd enrui_room_0Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(5),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x04, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&enrui_room_0MeshHeader1Single_000060),
    SCENE_CMD_OBJECT_LIST(1, enrui_room_0ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(2, enrui_room_0ActorList_000044),
    SCENE_CMD_END(),
};

s16 enrui_room_0ObjectList_000040[] = {
    OBJECT_HORSE,
};

ActorEntry enrui_room_0ActorList_000044[] = {
    { ACTOR_EN_WEATHER_TAG, {      0,      0,   3060 }, {      0,      0,      0 }, 0x0200 },
    { ACTOR_EN_HORSE,       {   -152,      0,   3060 }, {      0, 0x8000,      0 }, 0x0FFF },
};

u8 enrui_room_0_possiblePadding_000054[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

MeshHeader1Single enrui_room_0MeshHeader1Single_000060 = { 
    { 1, 1, &enrui_room_0PolygonDlist_000080, }, 
    enrui_room_0Background_000360, 
    0x00000000, 0x00000000, 
    320, 240, 
    0, 2, 
    0x0000, 0x0000, 
};

PolygonDlist enrui_room_0PolygonDlist_000080 = { 
    enrui_room_0DL_000338, NULL
};

u8 enrui_room_0_possiblePadding_000088[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx enrui_room_0Vtx_000090[] = {
#include "assets/scenes/misc/enrui/enrui_room_0Vtx_000090.vtx.inc"
};

Gfx enrui_room_0DL_000290[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&enrui_room_0Vtx_000090[24], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 0, 161, 0, 255),
    gsSPVertex(enrui_room_0Vtx_000090, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Gfx enrui_room_0DL_000338[] = {
    gsSPDisplayList(enrui_room_0DL_000290),
    gsSPEndDisplayList(),
};

u8 enrui_room_0_unaccounted_000348[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x03, 0x38, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 enrui_room_0Background_000360[SCREEN_WIDTH * SCREEN_HEIGHT / 4] = {
#include "assets/scenes/misc/enrui/enrui_room_0Background_000360.jpg.inc.c"
};

