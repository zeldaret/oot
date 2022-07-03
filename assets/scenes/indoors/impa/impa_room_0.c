#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "impa_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "impa_scene.h"

SceneCmd impa_room_0Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(1),
    SCENE_CMD_ROOM_BEHAVIOR(0x02, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&impa_room_0MeshHeader1Single_000090),
    SCENE_CMD_OBJECT_LIST(11, impa_room_0ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(3, impa_room_0ActorList_000058),
    SCENE_CMD_END(),
};

s16 impa_room_0ObjectList_000040[] = {
    OBJECT_TSUBO,
    OBJECT_OS_ANIME,
    OBJECT_AOB,
    OBJECT_AHG,
    OBJECT_CNE,
    OBJECT_BBA,
    OBJECT_BJI,
    OBJECT_BOJ,
    OBJECT_BOB,
    OBJECT_DOG,
    OBJECT_KIBAKO2,
};

ActorEntry impa_room_0ActorList_000058[] = {
    { ACTOR_EN_RIVER_SOUND, {   -178,      0,    119 }, {      0,      0,      0 }, 0x0014 },
    { ACTOR_EN_HY,          {     74,      0,    -32 }, {      0, 0XE9F5,      0 }, 0x0780 },
    { ACTOR_OBJ_KIBAKO2,    {    176,      0,    170 }, {    0X1, 0X4000,   0X20 }, 0xFFFF },
};

u8 impa_room_0_possiblePadding_000088[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

MeshHeader1Single impa_room_0MeshHeader1Single_000090 = { 
    { 1, 1, &impa_room_0PolygonDlist_0000B0, }, 
    impa_room_0Background_0017A0, 
    0x00000000, 0x00000000, 
    320, 240, 
    0, 2, 
    0x0000, 0x0000, 
};

PolygonDlist impa_room_0PolygonDlist_0000B0 = { 
    impa_room_0DL_001758, NULL
};

u8 impa_room_0_possiblePadding_0000B8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx impa_room_0Vtx_0000C0[] = {
#include "assets/scenes/indoors/impa/impa_room_0Vtx_0000C0.vtx.inc"
};

Gfx impa_room_0DL_001210[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&impa_room_0Vtx_0000C0[237], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 0, 255),
    gsSPVertex(impa_room_0Vtx_0000C0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(24, 27, 28, 0, 24, 28, 29, 0),
    gsSP2Triangles(24, 29, 30, 0, 24, 30, 31, 0),
    gsSPVertex(&impa_room_0Vtx_0000C0[32], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSPEndDisplayList(),
};

Gfx impa_room_0DL_0012F0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&impa_room_0Vtx_0000C0[245], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(0, 0, 0, PRIMITIVE, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 0, 255, 0, 255),
    gsSPVertex(&impa_room_0Vtx_0000C0[40], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0),
    gsSP2Triangles(0, 7, 8, 0, 0, 8, 9, 0),
    gsSP1Triangle(0, 9, 10, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&impa_room_0Vtx_0000C0[51], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0),
    gsSP2Triangles(0, 7, 8, 0, 0, 8, 9, 0),
    gsSP2Triangles(0, 9, 10, 0, 0, 10, 11, 0),
    gsSP2Triangles(0, 11, 12, 0, 0, 12, 13, 0),
    gsSP2Triangles(0, 13, 14, 0, 0, 14, 15, 0),
    gsSP2Triangles(0, 15, 16, 0, 0, 16, 17, 0),
    gsSP2Triangles(0, 17, 18, 0, 0, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(20, 23, 24, 0, 20, 24, 25, 0),
    gsSP2Triangles(20, 25, 26, 0, 20, 26, 27, 0),
    gsSP2Triangles(20, 27, 28, 0, 20, 28, 29, 0),
    gsSP2Triangles(20, 29, 30, 0, 20, 30, 31, 0),
    gsSPVertex(&impa_room_0Vtx_0000C0[83], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0),
    gsSP2Triangles(0, 7, 8, 0, 0, 8, 9, 0),
    gsSP2Triangles(0, 9, 10, 0, 0, 10, 11, 0),
    gsSP2Triangles(0, 11, 12, 0, 0, 12, 13, 0),
    gsSP2Triangles(0, 13, 14, 0, 0, 14, 15, 0),
    gsSP2Triangles(0, 15, 16, 0, 0, 16, 17, 0),
    gsSP2Triangles(0, 17, 18, 0, 0, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(20, 23, 24, 0, 20, 24, 25, 0),
    gsSP2Triangles(20, 25, 26, 0, 20, 26, 27, 0),
    gsSP2Triangles(20, 27, 28, 0, 20, 28, 29, 0),
    gsSP2Triangles(20, 29, 30, 0, 20, 30, 31, 0),
    gsSPVertex(&impa_room_0Vtx_0000C0[115], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0),
    gsSP2Triangles(0, 7, 8, 0, 0, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 10, 13, 0, 14, 13, 15, 0),
    gsSP2Triangles(16, 14, 15, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 18, 17, 0, 17, 19, 21, 0),
    gsSP2Triangles(22, 17, 21, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 24, 23, 0, 27, 25, 28, 0),
    gsSP1Triangle(29, 27, 28, 0),
    gsSPVertex(&impa_room_0Vtx_0000C0[145], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP1Triangle(7, 6, 8, 0),
    gsSPEndDisplayList(),
};

Gfx impa_room_0DL_001518[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&impa_room_0Vtx_0000C0[253], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 0, 255, 0, 255),
    gsSPVertex(&impa_room_0Vtx_0000C0[154], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(3, 2, 5, 0, 3, 5, 4, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 14, 17, 0, 18, 17, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 25, 0, 28, 25, 24, 0),
    gsSP2Triangles(30, 31, 29, 0, 30, 29, 28, 0),
    gsSPVertex(&impa_room_0Vtx_0000C0[186], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 12, 13, 0, 8, 13, 14, 0),
    gsSP2Triangles(8, 14, 15, 0, 8, 15, 16, 0),
    gsSP2Triangles(8, 16, 17, 0, 18, 19, 20, 0),
    gsSP1Triangle(18, 20, 21, 0),
    gsSPEndDisplayList(),
};

Gfx impa_room_0DL_001628[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&impa_room_0Vtx_0000C0[261], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 0, 255, 0, 255),
    gsSPVertex(&impa_room_0Vtx_0000C0[208], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(3, 8, 5, 0, 3, 5, 4, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSPEndDisplayList(),
};

Gfx impa_room_0DL_0016D8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&impa_room_0Vtx_0000C0[269], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(0, 0, 0, PRIMITIVE, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 0, 255, 0, 255),
    gsSPVertex(&impa_room_0Vtx_0000C0[233], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx impa_room_0DL_001758[] = {
    gsSPDisplayList(impa_room_0DL_001210),
    gsSPDisplayList(impa_room_0DL_0012F0),
    gsSPDisplayList(impa_room_0DL_001518),
    gsSPDisplayList(impa_room_0DL_001628),
    gsSPDisplayList(impa_room_0DL_0016D8),
    gsSPEndDisplayList(),
};

u8 impa_room_0_unaccounted_001788[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x17, 0x58, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 impa_room_0Background_0017A0[SCREEN_WIDTH * SCREEN_HEIGHT / 4] = {
#include "assets/scenes/indoors/impa/impa_room_0Background_0017A0.jpg.inc.c"
};

