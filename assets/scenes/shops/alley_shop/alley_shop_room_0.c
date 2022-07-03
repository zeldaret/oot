#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "alley_shop_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "alley_shop_scene.h"

SceneCmd alley_shop_room_0Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(4),
    SCENE_CMD_ROOM_BEHAVIOR(0x02, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&alley_shop_room_0MeshHeader1Single_000090),
    SCENE_CMD_OBJECT_LIST(13, alley_shop_room_0ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(3, alley_shop_room_0ActorList_00005C),
    SCENE_CMD_END(),
};

s16 alley_shop_room_0ObjectList_000040[] = {
    OBJECT_DS2,
    OBJECT_SHOP_DUNGEN,
    OBJECT_GI_LIQUID,
    OBJECT_GI_FIRE,
    OBJECT_GI_INSECT,
    OBJECT_GI_BUTTERFLY,
    OBJECT_GI_FISH,
    OBJECT_GI_GHOST,
    OBJECT_GI_SOUL,
    OBJECT_OS_ANIME,
    OBJECT_BJI,
    OBJECT_DOG,
    OBJECT_GI_NUTS,
};

ActorEntry alley_shop_room_0ActorList_00005C[] = {
    { ACTOR_EN_OSSAN, {     40,      0,    -80 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_TANA,  {     40,      0,    -40 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_HY,    {    -11,      0,     86 }, {      0, 0X3F4A,      0 }, 0x0793 },
};

u8 alley_shop_room_0_possiblePadding_00008C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

MeshHeader1Single alley_shop_room_0MeshHeader1Single_000090 = { 
    { 1, 1, &alley_shop_room_0PolygonDlist_0000B0, }, 
    alley_shop_room_0Background_001430, 
    0x00000000, 0x00000000, 
    320, 240, 
    0, 2, 
    0x0000, 0x0000, 
};

PolygonDlist alley_shop_room_0PolygonDlist_0000B0 = { 
    alley_shop_room_0DL_0013E0, NULL
};

u8 alley_shop_room_0_possiblePadding_0000B8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx alley_shop_room_0Vtx_0000C0[] = {
#include "assets/scenes/shops/alley_shop/alley_shop_room_0Vtx_0000C0.vtx.inc"
};

Gfx alley_shop_room_0DL_000F50[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&alley_shop_room_0Vtx_0000C0[185], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 0, 255, 255, 255),
    gsSPVertex(alley_shop_room_0Vtx_0000C0, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx alley_shop_room_0DL_000FD8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&alley_shop_room_0Vtx_0000C0[193], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 127, 255),
    gsSPVertex(&alley_shop_room_0Vtx_0000C0[8], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(7, 6, 16, 0, 7, 16, 17, 0),
    gsSP2Triangles(9, 8, 18, 0, 9, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(13, 12, 24, 0, 13, 24, 25, 0),
    gsSP2Triangles(21, 20, 26, 0, 21, 26, 27, 0),
    gsSPEndDisplayList(),
};

Gfx alley_shop_room_0DL_001098[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&alley_shop_room_0Vtx_0000C0[201], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 127, 255),
    gsSPVertex(&alley_shop_room_0Vtx_0000C0[36], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx alley_shop_room_0DL_001118[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&alley_shop_room_0Vtx_0000C0[209], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 212, 0, 255, 255),
    gsSPVertex(&alley_shop_room_0Vtx_0000C0[40], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(12, 15, 16, 0, 12, 16, 17, 0),
    gsSP2Triangles(12, 17, 18, 0, 12, 19, 20, 0),
    gsSP2Triangles(12, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 24, 25, 0, 26, 27, 28, 0),
    gsSP1Triangle(26, 28, 29, 0),
    gsSPVertex(&alley_shop_room_0Vtx_0000C0[70], 32, 0),
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

Gfx alley_shop_room_0DL_001220[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&alley_shop_room_0Vtx_0000C0[217], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 0, 0, 255),
    gsSPVertex(&alley_shop_room_0Vtx_0000C0[102], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx alley_shop_room_0DL_0012B8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&alley_shop_room_0Vtx_0000C0[225], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 161, 80, 0, 255),
    gsSPVertex(&alley_shop_room_0Vtx_0000C0[118], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 3, 0, 8, 9, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 11, 0),
    gsSP2Triangles(15, 16, 14, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 24, 25, 0, 22, 25, 26, 0),
    gsSP2Triangles(22, 26, 27, 0, 22, 27, 28, 0),
    gsSP2Triangles(22, 28, 29, 0, 22, 29, 30, 0),
    gsSP1Triangle(22, 30, 31, 0),
    gsSPVertex(&alley_shop_room_0Vtx_0000C0[150], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0),
    gsSP2Triangles(0, 7, 8, 0, 0, 8, 9, 0),
    gsSP2Triangles(0, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 26, 25, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 30, 11, 13, 0),
    gsSP1Triangle(13, 12, 31, 0),
    gsSPVertex(&alley_shop_room_0Vtx_0000C0[182], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx alley_shop_room_0DL_0013E0[] = {
    gsSPDisplayList(alley_shop_room_0DL_000F50),
    gsSPDisplayList(alley_shop_room_0DL_000FD8),
    gsSPDisplayList(alley_shop_room_0DL_001098),
    gsSPDisplayList(alley_shop_room_0DL_001118),
    gsSPDisplayList(alley_shop_room_0DL_001220),
    gsSPDisplayList(alley_shop_room_0DL_0012B8),
    gsSPEndDisplayList(),
};

u8 alley_shop_room_0_unaccounted_001418[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x13, 0xE0, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 alley_shop_room_0Background_001430[SCREEN_WIDTH * SCREEN_HEIGHT / 4] = {
#include "assets/scenes/shops/alley_shop/alley_shop_room_0Background_001430.jpg.inc.c"
};

