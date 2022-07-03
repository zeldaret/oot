#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "jyasinboss_room_2.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "jyasinboss_scene.h"
#include "jyasinboss_room_0.h"
#include "jyasinboss_room_1.h"
#include "jyasinboss_room_3.h"

SceneCmd jyasinboss_room_2Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(jyasinboss_room_2AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(4),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinboss_room_2PolygonType0_0000D0),
    SCENE_CMD_OBJECT_LIST(1, jyasinboss_room_2ObjectList_000060),
    SCENE_CMD_ACTOR_LIST(6, jyasinboss_room_2ActorList_000064),
    SCENE_CMD_END(),
};

SceneCmd* jyasinboss_room_2AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    jyasinboss_room_2Set_0000F0,
    jyasinboss_room_2Set_000130,
    jyasinboss_room_2Set_000170,
};

s16 jyasinboss_room_2ObjectList_000060[] = {
    OBJECT_JYA_DOOR,
};

ActorEntry jyasinboss_room_2ActorList_000064[] = {
    { ACTOR_EN_LIGHT, {  -1072,     65,    960 }, {      0,      0,      0 }, 0x03F4 },
    { ACTOR_EN_LIGHT, {   -949,     65,    837 }, {      0,      0,      0 }, 0x03F4 },
    { ACTOR_EN_LIGHT, {   -825,     65,    713 }, {      0,      0,      0 }, 0x03F4 },
    { ACTOR_EN_LIGHT, {   -960,     65,   1073 }, {      0,      0,      0 }, 0x03F4 },
    { ACTOR_EN_LIGHT, {   -836,     65,    949 }, {      0,      0,      0 }, 0x03F4 },
    { ACTOR_EN_LIGHT, {   -713,     65,    826 }, {      0,      0,      0 }, 0x03F4 },
};

u8 jyasinboss_room_2_possiblePadding_0000C4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 jyasinboss_room_2PolygonType0_0000D0 = { 
    0, 1,
    jyasinboss_room_2PolygonDlist_0000DC,
    jyasinboss_room_2PolygonDlist_0000DC + ARRAY_COUNTU(jyasinboss_room_2PolygonDlist_0000DC)
};

PolygonDlist jyasinboss_room_2PolygonDlist_0000DC[1] = {
    { jyasinboss_room_2DL_0021A0, NULL },
};

s32 jyasinboss_room_2_terminatorMaybe_0000E4 = { 0x01000000 };

u8 jyasinboss_room_2_possiblePadding_0000E8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd jyasinboss_room_2Set_0000F0[] = {
    SCENE_CMD_ECHO_SETTINGS(4),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinboss_room_2PolygonType0_0000D0),
    SCENE_CMD_OBJECT_LIST(1, jyasinboss_room_2ObjectList_000128),
    SCENE_CMD_END(),
};

s16 jyasinboss_room_2ObjectList_000128[] = {
    OBJECT_JYA_DOOR,
};

u8 jyasinboss_room_2_possiblePadding_00012C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

SceneCmd jyasinboss_room_2Set_000130[] = {
    SCENE_CMD_ECHO_SETTINGS(4),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinboss_room_2PolygonType0_0000D0),
    SCENE_CMD_OBJECT_LIST(1, jyasinboss_room_2ObjectList_000168),
    SCENE_CMD_END(),
};

s16 jyasinboss_room_2ObjectList_000168[] = {
    OBJECT_JYA_DOOR,
};

u8 jyasinboss_room_2_possiblePadding_00016C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

SceneCmd jyasinboss_room_2Set_000170[] = {
    SCENE_CMD_ECHO_SETTINGS(4),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinboss_room_2PolygonType0_0000D0),
    SCENE_CMD_OBJECT_LIST(1, jyasinboss_room_2ObjectList_0001A8),
    SCENE_CMD_END(),
};

s16 jyasinboss_room_2ObjectList_0001A8[] = {
    OBJECT_JYA_DOOR,
};

Vtx jyasinboss_room_2Vtx_0001B0[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_2Vtx_0001B0.vtx.inc"
};

Gfx jyasinboss_room_2DL_0004A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinboss_room_2Vtx_0001B0[39], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinboss_sceneTex_006CF0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinboss_room_2Vtx_0001B0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 0, 0, 5, 3, 0, 0),
    gsSP2Triangles(6, 0, 2, 0, 6, 2, 7, 0),
    gsSP2Triangles(8, 6, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(10, 4, 0, 0, 10, 0, 6, 0),
    gsSP2Triangles(11, 6, 8, 0, 11, 10, 6, 0),
    gsSP2Triangles(9, 12, 13, 0, 9, 13, 8, 0),
    gsSP2Triangles(8, 14, 11, 0, 14, 15, 11, 0),
    gsSP2Triangles(12, 16, 17, 0, 12, 17, 13, 0),
    gsSP2Triangles(14, 18, 19, 0, 14, 19, 15, 0),
    gsSP2Triangles(16, 20, 17, 0, 20, 21, 17, 0),
    gsSP2Triangles(18, 22, 19, 0, 18, 23, 22, 0),
    gsSP2Triangles(20, 24, 21, 0, 20, 25, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 24, 0),
    gsSP2Triangles(23, 24, 22, 0, 24, 28, 22, 0),
    gsSP2Triangles(24, 27, 29, 0, 24, 29, 28, 0),
    gsSPVertex(&jyasinboss_room_2Vtx_0001B0[30], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 5, 0, 0, 3, 5, 0),
    gsSP2Triangles(6, 7, 1, 0, 6, 1, 0, 0),
    gsSP2Triangles(8, 0, 4, 0, 8, 6, 0, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinboss_room_2Vtx_0005F8[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_2Vtx_0005F8.vtx.inc"
};

Gfx jyasinboss_room_2DL_001378[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinboss_room_2Vtx_0005F8[208], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinboss_sceneTex_007CF0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinboss_room_2Vtx_0005F8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 1, 0, 6, 1, 8, 0),
    gsSP2Triangles(9, 6, 8, 0, 9, 8, 4, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 10, 13, 0, 14, 13, 15, 0),
    gsSP2Triangles(16, 17, 11, 0, 16, 11, 10, 0),
    gsSP2Triangles(18, 16, 10, 0, 18, 10, 14, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 19, 21, 0),
    gsSP2Triangles(23, 22, 21, 0, 24, 25, 23, 0),
    gsSP2Triangles(24, 23, 21, 0, 26, 24, 21, 0),
    gsSP2Triangles(26, 21, 20, 0, 27, 28, 29, 0),
    gsSP2Triangles(19, 27, 29, 0, 19, 29, 30, 0),
    gsSP2Triangles(20, 19, 30, 0, 31, 26, 20, 0),
    gsSP1Triangle(31, 20, 30, 0),
    gsSPVertex(&jyasinboss_room_2Vtx_0005F8[32], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_room_2Tex_0021C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_2Vtx_0005F8[38], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 4, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(10, 8, 9, 0, 10, 9, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 16, 19, 0, 20, 19, 21, 0),
    gsSP2Triangles(22, 20, 21, 0, 22, 21, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_sceneTex_007CF0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_2Vtx_0005F8[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0),
    gsSP2Triangles(6, 4, 3, 0, 7, 6, 3, 0),
    gsSP2Triangles(7, 3, 2, 0, 7, 2, 8, 0),
    gsSP2Triangles(9, 7, 8, 0, 9, 8, 10, 0),
    gsSP2Triangles(11, 9, 10, 0, 8, 2, 1, 0),
    gsSP2Triangles(8, 1, 12, 0, 10, 8, 12, 0),
    gsSP2Triangles(10, 12, 13, 0, 14, 11, 10, 0),
    gsSP2Triangles(14, 10, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 16, 19, 20, 0),
    gsSP2Triangles(16, 20, 21, 0, 18, 17, 22, 0),
    gsSP2Triangles(18, 22, 23, 0, 24, 20, 25, 0),
    gsSP2Triangles(24, 25, 22, 0, 26, 27, 28, 0),
    gsSP2Triangles(26, 28, 29, 0, 27, 30, 31, 0),
    gsSP1Triangle(27, 31, 28, 0),
    gsSPVertex(&jyasinboss_room_2Vtx_0005F8[94], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 6, 8, 0),
    gsSP2Triangles(9, 8, 10, 0, 11, 9, 10, 0),
    gsSP2Triangles(12, 13, 11, 0, 12, 11, 14, 0),
    gsSP2Triangles(15, 12, 14, 0, 15, 14, 16, 0),
    gsSP2Triangles(17, 15, 16, 0, 17, 16, 7, 0),
    gsSP2Triangles(18, 17, 7, 0, 18, 7, 19, 0),
    gsSP2Triangles(20, 21, 18, 0, 20, 18, 19, 0),
    gsSP2Triangles(19, 7, 6, 0, 22, 20, 19, 0),
    gsSP1Triangle(22, 19, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_room_2Tex_0021C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_2Vtx_0005F8[117], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 4, 5, 0, 6, 5, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 8, 11, 0, 12, 11, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_sceneTex_007CF0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_2Vtx_0005F8[131], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 3, 4, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 8, 0),
    gsSP2Triangles(9, 6, 8, 0, 9, 8, 10, 0),
    gsSP2Triangles(11, 9, 10, 0, 11, 10, 1, 0),
    gsSP2Triangles(3, 5, 12, 0, 13, 3, 12, 0),
    gsSP2Triangles(14, 13, 12, 0, 15, 16, 14, 0),
    gsSP2Triangles(15, 14, 12, 0, 7, 15, 12, 0),
    gsSP1Triangle(7, 12, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_room_2Tex_0021C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_2Vtx_0005F8[148], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 4, 5, 0, 6, 5, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 8, 0, 12, 8, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_sceneTex_007CF0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_2Vtx_0005F8[162], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(15, 14, 20, 0, 15, 20, 21, 0),
    gsSP2Triangles(19, 15, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(16, 19, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&jyasinboss_room_2Vtx_0005F8[193], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 5, 4, 0, 13, 12, 4, 0),
    gsSP2Triangles(13, 4, 8, 0, 14, 13, 8, 0),
    gsSP1Triangle(14, 8, 11, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinboss_room_2Vtx_0018A0[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_2Vtx_0018A0.vtx.inc"
};

Gfx jyasinboss_room_2DL_001E60[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinboss_room_2Vtx_0018A0[84], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinboss_room_2Tex_0029C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinboss_room_2Vtx_0018A0, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP1Triangle(5, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_room_2Tex_0039C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 245, 244, 241, 255),
    gsSPVertex(&jyasinboss_room_2Vtx_0018A0[6], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_room_2Tex_0029C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&jyasinboss_room_2Vtx_0018A0[22], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(2, 1, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 6, 10, 0, 11, 7, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_room_2Tex_0039C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 245, 244, 241, 255),
    gsSPVertex(&jyasinboss_room_2Vtx_0018A0[34], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_room_2Tex_0029C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&jyasinboss_room_2Vtx_0018A0[50], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 1, 0, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 8, 10, 0, 8, 7, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_room_2Tex_0039C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 245, 244, 241, 255),
    gsSPVertex(&jyasinboss_room_2Vtx_0018A0[62], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_room_2Tex_0029C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&jyasinboss_room_2Vtx_0018A0[78], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP1Triangle(5, 1, 0, 0),
    gsSPEndDisplayList(),
};

Gfx jyasinboss_room_2DL_0021A0[] = {
    gsSPDisplayList(jyasinboss_room_2DL_0004A0),
    gsSPDisplayList(jyasinboss_room_2DL_001378),
    gsSPDisplayList(jyasinboss_room_2DL_001E60),
    gsSPEndDisplayList(),
};

u64 jyasinboss_room_2Tex_0021C0[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_2Tex_0021C0.rgba16.inc.c"
};

u64 jyasinboss_room_2Tex_0029C0[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_2Tex_0029C0.rgba16.inc.c"
};

u64 jyasinboss_room_2Tex_0039C0[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_2Tex_0039C0.rgba16.inc.c"
};

