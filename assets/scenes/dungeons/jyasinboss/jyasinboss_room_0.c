#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "jyasinboss_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "jyasinboss_scene.h"
#include "jyasinboss_room_1.h"
#include "jyasinboss_room_2.h"
#include "jyasinboss_room_3.h"

SceneCmd jyasinboss_room_0Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(jyasinboss_room_0AlternateHeaders0x000040),
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinboss_room_0PolygonType0_000060),
    SCENE_CMD_OBJECT_LIST(2, jyasinboss_room_0ObjectList_000058),
    SCENE_CMD_END(),
};

SceneCmd* jyasinboss_room_0AlternateHeaders0x000040[] = {
    NULL,
    NULL,
    NULL,
    jyasinboss_room_0Set_000080,
    jyasinboss_room_0Set_0000C0,
    jyasinboss_room_0Set_000100,
};

s16 jyasinboss_room_0ObjectList_000058[] = {
    OBJECT_JYA_DOOR,
    OBJECT_BDOOR,
};

u8 jyasinboss_room_0_possiblePadding_00005C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 jyasinboss_room_0PolygonType0_000060 = { 
    0, 1,
    jyasinboss_room_0PolygonDlist_00006C,
    jyasinboss_room_0PolygonDlist_00006C + ARRAY_COUNTU(jyasinboss_room_0PolygonDlist_00006C)
};

PolygonDlist jyasinboss_room_0PolygonDlist_00006C[1] = {
    { jyasinboss_room_0DL_0007B0, NULL },
};

s32 jyasinboss_room_0_terminatorMaybe_000074 = { 0x01000000 };

u8 jyasinboss_room_0_possiblePadding_000078[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd jyasinboss_room_0Set_000080[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinboss_room_0PolygonType0_000060),
    SCENE_CMD_OBJECT_LIST(1, jyasinboss_room_0ObjectList_0000B8),
    SCENE_CMD_END(),
};

s16 jyasinboss_room_0ObjectList_0000B8[] = {
    OBJECT_JYA_DOOR,
};

u8 jyasinboss_room_0_possiblePadding_0000BC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

SceneCmd jyasinboss_room_0Set_0000C0[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinboss_room_0PolygonType0_000060),
    SCENE_CMD_OBJECT_LIST(1, jyasinboss_room_0ObjectList_0000F8),
    SCENE_CMD_END(),
};

s16 jyasinboss_room_0ObjectList_0000F8[] = {
    OBJECT_JYA_DOOR,
};

u8 jyasinboss_room_0_possiblePadding_0000FC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

SceneCmd jyasinboss_room_0Set_000100[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinboss_room_0PolygonType0_000060),
    SCENE_CMD_OBJECT_LIST(2, jyasinboss_room_0ObjectList_000138),
    SCENE_CMD_END(),
};

s16 jyasinboss_room_0ObjectList_000138[] = {
    OBJECT_JYA_DOOR,
    OBJECT_BDOOR,
};

Vtx jyasinboss_room_0Vtx_000140[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_0Vtx_000140.vtx.inc"
};

Gfx jyasinboss_room_0DL_000380[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinboss_room_0Vtx_000140[28], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinboss_room_0Tex_0007C8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinboss_room_0Vtx_000140, 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(6, 4, 7, 0, 4, 2, 7, 0),
    gsSP2Triangles(6, 8, 4, 0, 9, 8, 10, 0),
    gsSP2Triangles(9, 11, 8, 0, 9, 12, 11, 0),
    gsSP2Triangles(13, 11, 12, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 17, 15, 0, 16, 18, 14, 0),
    gsSP2Triangles(16, 19, 18, 0, 18, 20, 1, 0),
    gsSP2Triangles(20, 21, 1, 0, 2, 1, 21, 0),
    gsSP2Triangles(8, 11, 22, 0, 8, 22, 23, 0),
    gsSP2Triangles(17, 14, 24, 0, 17, 24, 25, 0),
    gsSP2Triangles(22, 11, 13, 0, 22, 13, 26, 0),
    gsSP2Triangles(24, 14, 18, 0, 24, 18, 27, 0),
    gsSP2Triangles(5, 4, 8, 0, 5, 8, 23, 0),
    gsSP2Triangles(18, 1, 0, 0, 18, 0, 27, 0),
    gsSP1Triangle(2, 21, 7, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinboss_room_0Vtx_0004B0[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_0Vtx_0004B0.vtx.inc"
};

Gfx jyasinboss_room_0DL_0006A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinboss_room_0Vtx_0004B0[23], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinboss_room_0Tex_0007C8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinboss_room_0Vtx_0004B0, 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 6, 12, 0),
    gsSP2Triangles(6, 7, 12, 0, 10, 13, 14, 0),
    gsSP2Triangles(15, 13, 16, 0, 10, 9, 17, 0),
    gsSP2Triangles(7, 5, 18, 0, 7, 18, 19, 0),
    gsSP2Triangles(5, 3, 18, 0, 17, 20, 13, 0),
    gsSP2Triangles(17, 13, 10, 0, 21, 18, 3, 0),
    gsSP2Triangles(21, 3, 0, 0, 16, 22, 2, 0),
    gsSP2Triangles(22, 0, 2, 0, 16, 13, 22, 0),
    gsSP2Triangles(13, 20, 22, 0, 20, 21, 22, 0),
    gsSP1Triangle(21, 0, 22, 0),
    gsSPEndDisplayList(),
};

Gfx jyasinboss_room_0DL_0007B0[] = {
    gsSPDisplayList(jyasinboss_room_0DL_000380),
    gsSPDisplayList(jyasinboss_room_0DL_0006A0),
    gsSPEndDisplayList(),
};

u64 jyasinboss_room_0Tex_0007C8[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_0Tex_0007C8.rgba16.inc.c"
};

