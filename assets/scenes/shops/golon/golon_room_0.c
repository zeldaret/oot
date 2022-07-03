#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "golon_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "golon_scene.h"

SceneCmd golon_room_0Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(4),
    SCENE_CMD_ROOM_BEHAVIOR(0x02, 0x04, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&golon_room_0MeshHeader1Single_000080),
    SCENE_CMD_OBJECT_LIST(10, golon_room_0ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(2, golon_room_0ActorList_000054),
    SCENE_CMD_END(),
};

s16 golon_room_0ObjectList_000040[] = {
    OBJECT_OF1D_MAP,
    OBJECT_GI_HEART,
    OBJECT_GI_STICK,
    OBJECT_GI_BOMB_1,
    OBJECT_SHOP_DUNGEN,
    OBJECT_GI_LIQUID,
    OBJECT_GI_CLOTHES,
    OBJECT_GI_LONGSWORD,
    OBJECT_MASTERGOLON,
    OBJECT_SPOT18_OBJ,
};

ActorEntry golon_room_0ActorList_000054[] = {
    { ACTOR_EN_OSSAN, {      0,      0,   -180 }, {      0,      0,      0 }, 0x0008 },
    { ACTOR_EN_TANA,  {      0,      0,   -140 }, {      0,      0,      0 }, 0x0001 },
};

u8 golon_room_0_possiblePadding_000074[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

MeshHeader1Single golon_room_0MeshHeader1Single_000080 = { 
    { 1, 1, &golon_room_0PolygonDlist_0000A0, }, 
    golon_room_0Background_0009D0, 
    0x00000000, 0x00000000, 
    320, 240, 
    0, 2, 
    0x0000, 0x0000, 
};

PolygonDlist golon_room_0PolygonDlist_0000A0 = { 
    golon_room_0DL_0009B0, NULL
};

u8 golon_room_0_possiblePadding_0000A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx golon_room_0Vtx_0000B0[] = {
#include "assets/scenes/shops/golon/golon_room_0Vtx_0000B0.vtx.inc"
};

Gfx golon_room_0DL_000830[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&golon_room_0Vtx_0000B0[112], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 127, 255, 0, 255),
    gsSPVertex(golon_room_0Vtx_0000B0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 0, 255, 127, 255),
    gsSPVertex(&golon_room_0Vtx_0000B0[4], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(1, 0, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(11, 16, 17, 0, 17, 9, 11, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(13, 15, 24, 0, 25, 2, 26, 0),
    gsSP2Triangles(5, 27, 28, 0, 28, 3, 5, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&golon_room_0Vtx_0000B0[36], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP1Triangle(30, 5, 31, 0),
    gsSPVertex(&golon_room_0Vtx_0000B0[68], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&golon_room_0Vtx_0000B0[98], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 9, 6, 0),
    gsSP2Triangles(1, 10, 2, 0, 11, 12, 13, 0),
    gsSPEndDisplayList(),
};

Gfx golon_room_0DL_0009B0[] = {
    gsSPDisplayList(golon_room_0DL_000830),
    gsSPEndDisplayList(),
};

u8 golon_room_0_unaccounted_0009C0[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x09, 0xB0, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 golon_room_0Background_0009D0[SCREEN_WIDTH * SCREEN_HEIGHT / 4] = {
#include "assets/scenes/shops/golon/golon_room_0Background_0009D0.jpg.inc.c"
};

