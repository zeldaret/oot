#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "spot13_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "spot13_scene.h"
#include "spot13_room_1.h"

SceneCmd spot13_room_0Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(30),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_WIND_SETTINGS(0, 0, 0, 0),
    SCENE_CMD_MESH(&spot13_room_0PolygonType0_0000E0),
    SCENE_CMD_OBJECT_LIST(11, spot13_room_0ObjectList_000048),
    SCENE_CMD_ACTOR_LIST(8, spot13_room_0ActorList_000060),
    SCENE_CMD_END(),
};

s16 spot13_room_0ObjectList_000048[] = {
    OBJECT_PO_FIELD,
    OBJECT_JS,
    OBJECT_REEBA,
    OBJECT_HATA,
    OBJECT_TSUBO,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_KIBAKO2,
    OBJECT_ST,
    OBJECT_KANBAN,
    OBJECT_KA,
};

ActorEntry spot13_room_0ActorList_000060[] = {
    { ACTOR_OBJ_TSUBO,    {    801,   -520,  -2460 }, {      0,      0,      0 }, 0x4103 },
    { ACTOR_OBJ_TSUBO,    {    806,   -520,  -2426 }, {      0,      0,      0 }, 0x430C },
    { ACTOR_OBJ_TSUBO,    {    485,   -520,  -2463 }, {      0,      0,      0 }, 0x4512 },
    { ACTOR_OBJ_TSUBO,    {    488,   -520,  -2424 }, {      0,      0,      0 }, 0x470F },
    { ACTOR_EN_SW,        {    637,   -393,  -2536 }, { 0X4000,      0,      0 }, 0x9602 },
    { ACTOR_OBJ_SYOKUDAI, {    713,   -500,  -2460 }, {      0,      0,      0 }, 0x109F },
    { ACTOR_OBJ_SYOKUDAI, {    562,   -500,  -2458 }, {      0,      0,      0 }, 0x109F },
    { ACTOR_EN_BOX,       {    653,   -375,  -2215 }, {      0,      0,   0X1F }, 0x8AA0 },
};

PolygonType0 spot13_room_0PolygonType0_0000E0 = { 
    0, 1,
    spot13_room_0PolygonDlist_0000EC,
    spot13_room_0PolygonDlist_0000EC + ARRAY_COUNTU(spot13_room_0PolygonDlist_0000EC)
};

PolygonDlist spot13_room_0PolygonDlist_0000EC[1] = {
    { spot13_room_0DL_0008F8, NULL },
};

s32 spot13_room_0_terminatorMaybe_0000F4 = { 0x01000000 };

u8 spot13_room_0_possiblePadding_0000F8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx spot13_room_0Vtx_000100[] = {
#include "assets/scenes/overworld/spot13/spot13_room_0Vtx_000100.vtx.inc"
};

Gfx spot13_room_0DL_000560[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot13_room_0Vtx_000100[62], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot13_sceneTex_004E30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot13_room_0Vtx_000100, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot13_sceneTex_003E30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot13_room_0Vtx_000100[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot13_sceneTex_004E30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot13_room_0Vtx_000100[8], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 1, 0, 3, 8, 1, 0),
    gsSP2Triangles(10, 11, 6, 0, 5, 10, 6, 0),
    gsSP2Triangles(12, 13, 10, 0, 12, 10, 5, 0),
    gsSP2Triangles(1, 9, 13, 0, 1, 13, 12, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 22, 18, 0),
    gsSP2Triangles(21, 18, 17, 0, 22, 21, 13, 0),
    gsSP2Triangles(23, 22, 13, 0, 24, 23, 13, 0),
    gsSP2Triangles(24, 13, 9, 0, 16, 15, 24, 0),
    gsSP2Triangles(16, 24, 9, 0, 15, 25, 24, 0),
    gsSP2Triangles(26, 22, 23, 0, 25, 26, 23, 0),
    gsSP2Triangles(25, 23, 24, 0, 27, 28, 29, 0),
    gsSP2Triangles(27, 29, 20, 0, 29, 30, 17, 0),
    gsSP1Triangle(29, 17, 20, 0),
    gsSPVertex(&spot13_room_0Vtx_000100[39], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP1Triangle(19, 21, 22, 0),
    gsSPEndDisplayList(),
};

Vtx spot13_room_0Vtx_000768[] = {
#include "assets/scenes/overworld/spot13/spot13_room_0Vtx_000768.vtx.inc"
};

Gfx spot13_room_0DL_000838[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot13_room_0Vtx_000768[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot13_sceneTex_003A30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot13_room_0Vtx_000768, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP1Triangle(0, 4, 1, 0),
    gsSPEndDisplayList(),
};

Gfx spot13_room_0DL_0008F8[] = {
    gsSPDisplayList(spot13_room_0DL_000560),
    gsSPDisplayList(spot13_room_0DL_000838),
    gsSPEndDisplayList(),
};

