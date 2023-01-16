#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "link_home_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "link_home_scene.h"

SceneCmd link_home_room_0Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(link_home_room_0AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(3),
    SCENE_CMD_ROOM_BEHAVIOR(0x02, 0x05, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&link_home_room_0MeshHeader1Single_0000A0),
    SCENE_CMD_OBJECT_LIST(3, link_home_room_0ObjectList_00005C),
    SCENE_CMD_ACTOR_LIST(5, link_home_room_0ActorList_000064),
    SCENE_CMD_END(),
};

SceneCmd* link_home_room_0AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    link_home_room_0Set_002400,
    link_home_room_0Set_002440,
};

s16 link_home_room_0ObjectList_00005C[] = {
    OBJECT_TSUBO,
    OBJECT_COW,
    OBJECT_NIW,
};

ActorEntry link_home_room_0ActorList_000064[] = {
    { ACTOR_EN_WONDER_TALK2, {     78,     38,    116 }, {      0, 0X8E39,      0 }, 0x8ABF },
    { ACTOR_EN_COW,          {    -83,      0,    -78 }, {      0, 0XF49F,      0 }, 0x0000 },
    { ACTOR_OBJ_TSUBO,       {   -118,      0,     51 }, {      0,      0,      0 }, 0x4103 },
    { ACTOR_OBJ_TSUBO,       {    -83,      0,     86 }, {      0,      0,      0 }, 0x4300 },
    { ACTOR_OBJ_TSUBO,       {     66,      0,     96 }, {      0, 0x1000,      0 }, 0x4503 },
};

u8 link_home_room_0_possiblePadding_000094[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

MeshHeader1Single link_home_room_0MeshHeader1Single_0000A0 = { 
    { 1, 1, &link_home_room_0PolygonDlist_0000C0, }, 
    link_home_room_0Background_002480, 
    0x00000000, 0x00000000, 
    320, 240, 
    0, 2, 
    0x0000, 0x0000, 
};

PolygonDlist link_home_room_0PolygonDlist_0000C0 = { 
    link_home_room_0DL_0023A8, NULL
};

u8 link_home_room_0_possiblePadding_0000C8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx link_home_room_0Vtx_0000D0[] = {
#include "assets/scenes/indoors/link_home/link_home_room_0Vtx_0000D0.vtx.inc"
};

Gfx link_home_room_0DL_001B60[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&link_home_room_0Vtx_0000D0[369], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(0, 0, 0, PRIMITIVE, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 0, 0, 255, 255),
    gsSPVertex(link_home_room_0Vtx_0000D0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0),
    gsSP2Triangles(0, 7, 8, 0, 0, 8, 9, 0),
    gsSP2Triangles(0, 9, 10, 0, 0, 10, 11, 0),
    gsSP2Triangles(0, 11, 12, 0, 0, 12, 13, 0),
    gsSP2Triangles(0, 13, 14, 0, 0, 14, 15, 0),
    gsSP2Triangles(0, 15, 16, 0, 0, 16, 17, 0),
    gsSP2Triangles(0, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 23, 26, 27, 0),
    gsSP2Triangles(23, 27, 20, 0, 23, 20, 19, 0),
    gsSP2Triangles(23, 19, 28, 0, 23, 28, 29, 0),
    gsSP2Triangles(23, 29, 30, 0, 23, 30, 31, 0),
    gsSPVertex(&link_home_room_0Vtx_0000D0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 6, 0),
    gsSP2Triangles(11, 12, 7, 0, 11, 7, 13, 0),
    gsSP2Triangles(10, 13, 7, 0, 10, 7, 6, 0),
    gsSP2Triangles(11, 14, 15, 0, 11, 15, 12, 0),
    gsSP2Triangles(14, 16, 17, 0, 14, 17, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 18, 21, 0, 22, 21, 23, 0),
    gsSP2Triangles(24, 22, 23, 0, 24, 23, 25, 0),
    gsSP2Triangles(26, 24, 25, 0, 26, 25, 27, 0),
    gsSP2Triangles(28, 26, 27, 0, 28, 27, 29, 0),
    gsSP2Triangles(30, 28, 29, 0, 30, 29, 31, 0),
    gsSPVertex(&link_home_room_0Vtx_0000D0[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 10, 13, 0, 14, 13, 15, 0),
    gsSP2Triangles(16, 14, 15, 0, 16, 15, 17, 0),
    gsSP2Triangles(18, 16, 17, 0, 18, 17, 19, 0),
    gsSP2Triangles(1, 18, 19, 0, 1, 19, 2, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&link_home_room_0Vtx_0000D0[96], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 1, 0, 0, 4, 0, 5, 0),
    gsSP2Triangles(6, 1, 4, 0, 6, 4, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(2, 10, 9, 0, 2, 9, 3, 0),
    gsSP2Triangles(12, 10, 2, 0, 12, 2, 13, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(9, 17, 16, 0, 9, 16, 3, 0),
    gsSP2Triangles(19, 17, 9, 0, 19, 9, 8, 0),
    gsSP2Triangles(18, 17, 19, 0, 18, 19, 20, 0),
    gsSP2Triangles(0, 21, 22, 0, 0, 22, 5, 0),
    gsSP2Triangles(16, 21, 0, 0, 16, 0, 3, 0),
    gsSP2Triangles(23, 21, 16, 0, 23, 16, 15, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(5, 28, 29, 0, 5, 29, 4, 0),
    gsSP2Triangles(30, 29, 28, 0, 30, 28, 31, 0),
    gsSPVertex(&link_home_room_0Vtx_0000D0[128], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 1, 0, 0, 4, 0, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 8, 7, 0, 10, 7, 11, 0),
    gsSP2Triangles(12, 8, 10, 0, 12, 10, 13, 0),
    gsSP2Triangles(9, 8, 12, 0, 9, 12, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(7, 17, 16, 0, 7, 16, 11, 0),
    gsSP2Triangles(19, 17, 7, 0, 19, 7, 6, 0),
    gsSP2Triangles(18, 17, 19, 0, 18, 19, 20, 0),
    gsSP2Triangles(2, 21, 22, 0, 2, 22, 3, 0),
    gsSP2Triangles(16, 21, 2, 0, 16, 2, 11, 0),
    gsSP2Triangles(23, 21, 16, 0, 23, 16, 15, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(3, 28, 29, 0, 3, 29, 0, 0),
    gsSP2Triangles(30, 29, 28, 0, 30, 28, 31, 0),
    gsSPVertex(&link_home_room_0Vtx_0000D0[160], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 1, 0, 0, 4, 0, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 8, 7, 0, 10, 7, 11, 0),
    gsSP2Triangles(12, 8, 10, 0, 12, 10, 13, 0),
    gsSP2Triangles(9, 8, 12, 0, 9, 12, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(7, 17, 16, 0, 7, 16, 11, 0),
    gsSP2Triangles(19, 17, 7, 0, 19, 7, 6, 0),
    gsSP2Triangles(18, 17, 19, 0, 18, 19, 20, 0),
    gsSP2Triangles(2, 21, 22, 0, 2, 22, 3, 0),
    gsSP2Triangles(16, 21, 2, 0, 16, 2, 11, 0),
    gsSP2Triangles(23, 21, 16, 0, 23, 16, 15, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 26, 25, 0, 28, 25, 29, 0),
    gsSP2Triangles(30, 26, 28, 0, 30, 28, 31, 0),
    gsSP1Triangle(27, 26, 30, 0),
    gsSPVertex(&link_home_room_0Vtx_0000D0[192], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 5, 4, 0),
    gsSP2Triangles(7, 4, 8, 0, 9, 5, 7, 0),
    gsSP2Triangles(9, 7, 10, 0, 6, 5, 9, 0),
    gsSP2Triangles(6, 9, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 15, 0, 4, 14, 13, 0),
    gsSP2Triangles(4, 13, 8, 0, 16, 14, 4, 0),
    gsSP2Triangles(16, 4, 3, 0, 15, 14, 16, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 20, 21, 0, 13, 19, 18, 0),
    gsSP2Triangles(13, 18, 8, 0, 22, 19, 13, 0),
    gsSP2Triangles(22, 13, 12, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 23, 26, 27, 0),
    gsSP2Triangles(23, 27, 28, 0, 23, 28, 29, 0),
    gsSP2Triangles(23, 29, 30, 0, 23, 30, 31, 0),
    gsSPVertex(&link_home_room_0Vtx_0000D0[224], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx link_home_room_0DL_001F58[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&link_home_room_0Vtx_0000D0[377], 8, 0),
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
    gsSPVertex(&link_home_room_0Vtx_0000D0[228], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&link_home_room_0Vtx_0000D0[260], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx link_home_room_0DL_002030[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&link_home_room_0Vtx_0000D0[385], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(0, 0, 0, PRIMITIVE, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 0, 161, 0, 255),
    gsSPVertex(&link_home_room_0Vtx_0000D0[268], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 5, 8, 9, 0),
    gsSP2Triangles(5, 9, 10, 0, 5, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx link_home_room_0DL_0020D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&link_home_room_0Vtx_0000D0[393], 8, 0),
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
    gsSPVertex(&link_home_room_0Vtx_0000D0[280], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0),
    gsSP2Triangles(0, 7, 8, 0, 9, 10, 11, 0),
    gsSP1Triangle(9, 11, 12, 0),
    gsSPEndDisplayList(),
};

Gfx link_home_room_0DL_002170[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&link_home_room_0Vtx_0000D0[401], 8, 0),
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
    gsSPVertex(&link_home_room_0Vtx_0000D0[293], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 2, 0),
    gsSP2Triangles(5, 7, 8, 0, 5, 8, 9, 0),
    gsSP2Triangles(7, 10, 11, 0, 7, 11, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx link_home_room_0DL_002210[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&link_home_room_0Vtx_0000D0[409], 8, 0),
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
    gsSPVertex(&link_home_room_0Vtx_0000D0[309], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(0, 0, 0, PRIMITIVE, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(&link_home_room_0Vtx_0000D0[325], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx link_home_room_0DL_0022D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&link_home_room_0Vtx_0000D0[417], 8, 0),
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
    gsSPVertex(&link_home_room_0Vtx_0000D0[329], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&link_home_room_0Vtx_0000D0[361], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx link_home_room_0DL_0023A8[] = {
    gsSPDisplayList(link_home_room_0DL_001B60),
    gsSPDisplayList(link_home_room_0DL_001F58),
    gsSPDisplayList(link_home_room_0DL_002030),
    gsSPDisplayList(link_home_room_0DL_0020D0),
    gsSPDisplayList(link_home_room_0DL_002170),
    gsSPDisplayList(link_home_room_0DL_002210),
    gsSPDisplayList(link_home_room_0DL_0022D0),
    gsSPEndDisplayList(),
};

u8 link_home_room_0_unaccounted_0023E8[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x23, 0xA8, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd link_home_room_0Set_002400[] = {
    SCENE_CMD_ECHO_SETTINGS(5),
    SCENE_CMD_ROOM_BEHAVIOR(0x02, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&link_home_room_0MeshHeader1Single_0000A0),
    SCENE_CMD_OBJECT_LIST(4, link_home_room_0ObjectList_002438),
    SCENE_CMD_END(),
};

s16 link_home_room_0ObjectList_002438[] = {
    OBJECT_BOX,
    OBJECT_O_ANIME,
    OBJECT_OE_ANIME,
    OBJECT_OE3,
};

SceneCmd link_home_room_0Set_002440[] = {
    SCENE_CMD_ECHO_SETTINGS(5),
    SCENE_CMD_ROOM_BEHAVIOR(0x02, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&link_home_room_0MeshHeader1Single_0000A0),
    SCENE_CMD_OBJECT_LIST(4, link_home_room_0ObjectList_002478),
    SCENE_CMD_END(),
};

s16 link_home_room_0ObjectList_002478[] = {
    OBJECT_BOX,
    OBJECT_O_ANIME,
    OBJECT_OE_ANIME,
    OBJECT_OE3,
};

u64 link_home_room_0Background_002480[SCREEN_WIDTH * SCREEN_HEIGHT / 4] = {
#include "assets/scenes/indoors/link_home/link_home_room_0Background_002480.jpg.inc.c"
};

