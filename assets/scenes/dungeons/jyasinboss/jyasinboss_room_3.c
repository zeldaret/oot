#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "jyasinboss_room_3.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "jyasinboss_scene.h"
#include "jyasinboss_room_0.h"
#include "jyasinboss_room_1.h"
#include "jyasinboss_room_2.h"

SceneCmd jyasinboss_room_3Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(jyasinboss_room_3AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x05, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinboss_room_3PolygonType0_000080),
    SCENE_CMD_OBJECT_LIST(5, jyasinboss_room_3ObjectList_000060),
    SCENE_CMD_ACTOR_LIST(1, jyasinboss_room_3ActorList_00006C),
    SCENE_CMD_END(),
};

SceneCmd* jyasinboss_room_3AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    jyasinboss_room_3Set_0000A0,
    jyasinboss_room_3Set_000100,
    jyasinboss_room_3Set_000160,
};

s16 jyasinboss_room_3ObjectList_000060[] = {
    OBJECT_JYA_DOOR,
    OBJECT_TW,
    OBJECT_GI_HEARTS,
    OBJECT_WARP2,
    OBJECT_WARP1,
};

ActorEntry jyasinboss_room_3ActorList_00006C[] = {
    { ACTOR_BOSS_TW, {    -10,    529,      0 }, {      0, 0XE000,      0 }, 0xFFFF },
};

u8 jyasinboss_room_3_possiblePadding_00007C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 jyasinboss_room_3PolygonType0_000080 = { 
    0, 1,
    jyasinboss_room_3PolygonDlist_00008C,
    jyasinboss_room_3PolygonDlist_00008C + ARRAY_COUNTU(jyasinboss_room_3PolygonDlist_00008C)
};

PolygonDlist jyasinboss_room_3PolygonDlist_00008C[1] = {
    { jyasinboss_room_3DL_003C88, NULL },
};

s32 jyasinboss_room_3_terminatorMaybe_000094 = { 0x01000000 };

u8 jyasinboss_room_3_possiblePadding_000098[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd jyasinboss_room_3Set_0000A0[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x05, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinboss_room_3PolygonType0_000080),
    SCENE_CMD_OBJECT_LIST(5, jyasinboss_room_3ObjectList_0000E0),
    SCENE_CMD_ACTOR_LIST(1, jyasinboss_room_3ActorList_0000EC),
    SCENE_CMD_END(),
};

s16 jyasinboss_room_3ObjectList_0000E0[] = {
    OBJECT_JYA_DOOR,
    OBJECT_TW,
    OBJECT_GI_HEARTS,
    OBJECT_WARP2,
    OBJECT_WARP1,
};

ActorEntry jyasinboss_room_3ActorList_0000EC[] = {
    { ACTOR_BOSS_TW, {    -10,    529,      0 }, {      0, 0XE000,      0 }, 0xFFFF },
};

u8 jyasinboss_room_3_possiblePadding_0000FC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

SceneCmd jyasinboss_room_3Set_000100[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x05, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinboss_room_3PolygonType0_000080),
    SCENE_CMD_OBJECT_LIST(5, jyasinboss_room_3ObjectList_000140),
    SCENE_CMD_ACTOR_LIST(1, jyasinboss_room_3ActorList_00014C),
    SCENE_CMD_END(),
};

s16 jyasinboss_room_3ObjectList_000140[] = {
    OBJECT_JYA_DOOR,
    OBJECT_TW,
    OBJECT_GI_HEARTS,
    OBJECT_WARP2,
    OBJECT_WARP1,
};

ActorEntry jyasinboss_room_3ActorList_00014C[] = {
    { ACTOR_BOSS_TW, {    -10,    529,      0 }, {      0, 0XE000,      0 }, 0xFFFF },
};

u8 jyasinboss_room_3_possiblePadding_00015C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

SceneCmd jyasinboss_room_3Set_000160[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&jyasinboss_room_3PolygonType0_000080),
    SCENE_CMD_OBJECT_LIST(5, jyasinboss_room_3ObjectList_0001A0),
    SCENE_CMD_ACTOR_LIST(1, jyasinboss_room_3ActorList_0001AC),
    SCENE_CMD_END(),
};

s16 jyasinboss_room_3ObjectList_0001A0[] = {
    OBJECT_JYA_DOOR,
    OBJECT_TW,
    OBJECT_GI_HEARTS,
    OBJECT_WARP2,
    OBJECT_WARP1,
};

ActorEntry jyasinboss_room_3ActorList_0001AC[] = {
    { ACTOR_BOSS_TW, {    -10,    529,      0 }, {      0, 0XE000,      0 }, 0xFFFF },
};

Vtx jyasinboss_room_3Vtx_0001C0[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_3Vtx_0001C0.vtx.inc"
};

Gfx jyasinboss_room_3DL_000640[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinboss_room_3Vtx_0001C0[64], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinboss_room_3Tex_007F00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinboss_room_3Vtx_0001C0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&jyasinboss_room_3Vtx_0001C0[32], 32, 0),
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

Vtx jyasinboss_room_3Vtx_000778[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_3Vtx_000778.vtx.inc"
};

Gfx jyasinboss_room_3DL_000B38[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinboss_room_3Vtx_000778[52], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinboss_room_3Tex_008F00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinboss_room_3Vtx_000778, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_room_3Tex_007F00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 128, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_3Vtx_000778[32], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 6, 5, 0, 9, 5, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 11, 0),
    gsSP2Triangles(11, 14, 12, 0, 11, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 16, 15, 0, 19, 15, 18, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinboss_room_3Vtx_000CB0[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_3Vtx_000CB0.vtx.inc"
};

Gfx jyasinboss_room_3DL_001380[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinboss_room_3Vtx_000CB0[101], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(jyasinboss_room_3Tex_009F00, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, jyasinboss_room_3TLUT_003EE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinboss_room_3Vtx_000CB0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 3, 0),
    gsSP2Triangles(1, 6, 7, 0, 1, 7, 4, 0),
    gsSP2Triangles(1, 0, 8, 0, 1, 8, 6, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 12, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 10, 0),
    gsSP2Triangles(15, 16, 17, 0, 16, 18, 17, 0),
    gsSP2Triangles(16, 19, 20, 0, 16, 20, 18, 0),
    gsSP2Triangles(16, 21, 22, 0, 16, 22, 19, 0),
    gsSP2Triangles(16, 15, 23, 0, 16, 23, 21, 0),
    gsSP2Triangles(24, 25, 26, 0, 25, 27, 28, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&jyasinboss_room_3Vtx_000CB0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 8, 11, 12, 0),
    gsSP2Triangles(8, 12, 9, 0, 13, 14, 15, 0),
    gsSP2Triangles(14, 16, 15, 0, 14, 17, 18, 0),
    gsSP2Triangles(14, 18, 16, 0, 14, 19, 20, 0),
    gsSP2Triangles(14, 20, 17, 0, 14, 13, 21, 0),
    gsSP2Triangles(14, 21, 19, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 24, 25, 0, 22, 26, 27, 0),
    gsSP2Triangles(22, 27, 23, 0, 28, 29, 30, 0),
    gsSP1Triangle(31, 28, 30, 0),
    gsSPVertex(&jyasinboss_room_3Vtx_000CB0[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 4, 2, 0),
    gsSP2Triangles(6, 5, 2, 0, 7, 6, 2, 0),
    gsSP2Triangles(8, 7, 2, 0, 8, 2, 9, 0),
    gsSP2Triangles(2, 10, 9, 0, 11, 10, 2, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(24, 28, 29, 0, 24, 29, 25, 0),
    gsSPVertex(&jyasinboss_room_3Vtx_000CB0[94], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 2, 0, 5, 6, 2, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinboss_room_3Vtx_001590[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_3Vtx_001590.vtx.inc"
};

Gfx jyasinboss_room_3DL_001D10[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinboss_room_3Vtx_001590[112], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinboss_room_3Tex_00A700, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinboss_room_3Vtx_001590, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&jyasinboss_room_3Vtx_001590[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&jyasinboss_room_3Vtx_001590[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&jyasinboss_room_3Vtx_001590[96], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinboss_room_3Vtx_001EB8[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_3Vtx_001EB8.vtx.inc"
};

Gfx jyasinboss_room_3DL_002038[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinboss_room_3Vtx_001EB8[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinboss_room_3Tex_00A700, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinboss_room_3Vtx_001EB8, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinboss_room_3Vtx_002108[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_3Vtx_002108.vtx.inc"
};

Gfx jyasinboss_room_3DL_002318[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinboss_room_3Vtx_002108[25], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinboss_room_3Tex_00AF00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinboss_room_3Vtx_002108, 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 4, 7, 0, 8, 1, 6, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 8, 14, 0, 2, 1, 15, 0),
    gsSP2Triangles(16, 2, 17, 0, 5, 18, 3, 0),
    gsSP2Triangles(4, 3, 19, 0, 20, 21, 7, 0),
    gsSP2Triangles(22, 7, 23, 0, 8, 6, 24, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinboss_room_3Vtx_002400[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_3Vtx_002400.vtx.inc"
};

Gfx jyasinboss_room_3DL_002BE0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinboss_room_3Vtx_002400[118], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinboss_room_3Tex_007700, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinboss_room_3Vtx_002400, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 9, 10, 11, 0),
    gsSP2Triangles(10, 12, 11, 0, 12, 13, 11, 0),
    gsSP2Triangles(13, 8, 11, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 17, 0, 15, 10, 18, 0),
    gsSP2Triangles(15, 18, 16, 0, 18, 5, 16, 0),
    gsSP2Triangles(5, 17, 16, 0, 9, 11, 6, 0),
    gsSP2Triangles(9, 6, 5, 0, 11, 8, 6, 0),
    gsSP2Triangles(3, 2, 19, 0, 2, 20, 19, 0),
    gsSP2Triangles(20, 21, 19, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 25, 23, 0, 23, 21, 24, 0),
    gsSP2Triangles(22, 5, 4, 0, 22, 4, 25, 0),
    gsSP2Triangles(26, 27, 2, 0, 26, 28, 22, 0),
    gsSP2Triangles(26, 22, 27, 0, 26, 29, 28, 0),
    gsSP2Triangles(22, 30, 27, 0, 30, 2, 27, 0),
    gsSP1Triangle(31, 17, 5, 0),
    gsSPVertex(&jyasinboss_room_3Vtx_002400[32], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 5, 7, 8, 0),
    gsSP2Triangles(5, 8, 3, 0, 0, 8, 9, 0),
    gsSP1Triangle(0, 9, 10, 0),
    gsSPVertex(&jyasinboss_room_3Vtx_002400[43], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(4, 8, 5, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 12, 10, 0, 9, 13, 12, 0),
    gsSP2Triangles(9, 8, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 17, 0, 15, 18, 10, 0),
    gsSP2Triangles(15, 10, 16, 0, 15, 6, 18, 0),
    gsSP2Triangles(15, 14, 6, 0, 6, 5, 9, 0),
    gsSP2Triangles(6, 9, 11, 0, 5, 8, 9, 0),
    gsSP2Triangles(19, 1, 0, 0, 19, 20, 1, 0),
    gsSP2Triangles(19, 21, 20, 0, 22, 23, 24, 0),
    gsSP2Triangles(23, 25, 24, 0, 22, 21, 23, 0),
    gsSP2Triangles(25, 7, 6, 0, 25, 6, 24, 0),
    gsSP2Triangles(1, 26, 27, 0, 26, 24, 28, 0),
    gsSP2Triangles(26, 28, 27, 0, 28, 29, 27, 0),
    gsSP2Triangles(26, 30, 24, 0, 26, 1, 30, 0),
    gsSP1Triangle(31, 6, 14, 0),
    gsSPVertex(&jyasinboss_room_3Vtx_002400[75], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 5, 7, 8, 0),
    gsSP2Triangles(5, 8, 3, 0, 1, 9, 7, 0),
    gsSP1Triangle(1, 7, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_room_3Tex_006700, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_3Vtx_002400[85], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 0, 6, 0),
    gsSP2Triangles(5, 1, 0, 0, 4, 7, 8, 0),
    gsSP2Triangles(4, 8, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 12, 13, 0, 13, 12, 14, 0),
    gsSP2Triangles(13, 14, 15, 0, 15, 14, 16, 0),
    gsSP2Triangles(15, 16, 17, 0, 17, 16, 2, 0),
    gsSP2Triangles(17, 2, 1, 0, 10, 13, 15, 0),
    gsSP2Triangles(10, 15, 17, 0, 10, 17, 1, 0),
    gsSP2Triangles(10, 1, 5, 0, 9, 8, 18, 0),
    gsSP2Triangles(9, 18, 19, 0, 20, 10, 5, 0),
    gsSP2Triangles(21, 20, 5, 0, 21, 5, 19, 0),
    gsSP2Triangles(22, 11, 10, 0, 22, 10, 20, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_room_3Tex_007700, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_3Vtx_002400[108], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 5, 8, 9, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinboss_room_3Vtx_002F10[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_3Vtx_002F10.vtx.inc"
};

Gfx jyasinboss_room_3DL_0032F0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinboss_room_3Vtx_002F10[54], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinboss_room_3Tex_005700, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(jyasinboss_room_3TLUT_003CE0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinboss_room_3Vtx_002F10, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 7, 0),
    gsSP2Triangles(9, 1, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 7, 8, 0, 12, 8, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_room_3Tex_004700, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_3Vtx_002F10[14], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP1Triangle(3, 5, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_room_3Tex_004F00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_3Vtx_002F10[20], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_room_3Tex_003F00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_3Vtx_002F10[24], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_room_3Tex_005300, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_3Vtx_002F10[28], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_room_3Tex_004300, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_3Vtx_002F10[32], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(jyasinboss_room_3Tex_004700, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&jyasinboss_room_3Vtx_002F10[36], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 6, 10, 0, 9, 11, 6, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP1Triangle(14, 16, 17, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinboss_room_3Vtx_0035F8[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_3Vtx_0035F8.vtx.inc"
};

Gfx jyasinboss_room_3DL_003868[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinboss_room_3Vtx_0035F8[31], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinboss_room_3Tex_005F00, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinboss_room_3Vtx_0035F8, 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 4, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(9, 10, 8, 0, 6, 11, 7, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(16, 14, 13, 0, 17, 15, 12, 0),
    gsSP2Triangles(18, 17, 12, 0, 8, 10, 19, 0),
    gsSP2Triangles(14, 16, 20, 0, 21, 5, 3, 0),
    gsSP2Triangles(22, 23, 24, 0, 11, 6, 25, 0),
    gsSP2Triangles(26, 22, 24, 0, 27, 26, 24, 0),
    gsSP2Triangles(28, 27, 24, 0, 28, 29, 27, 0),
    gsSP2Triangles(29, 28, 30, 0, 0, 30, 1, 0),
    gsSPEndDisplayList(),
};

Vtx jyasinboss_room_3Vtx_003978[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_3Vtx_003978.vtx.inc"
};

Gfx jyasinboss_room_3DL_003B78[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&jyasinboss_room_3Vtx_003978[24], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(jyasinboss_room_3Tex_00A700, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(jyasinboss_room_3Vtx_003978, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(16, 17, 0, 0, 16, 0, 2, 0),
    gsSP2Triangles(8, 11, 17, 0, 8, 17, 16, 0),
    gsSP2Triangles(18, 19, 10, 0, 18, 10, 9, 0),
    gsSP2Triangles(5, 4, 19, 0, 5, 19, 18, 0),
    gsSP2Triangles(20, 21, 15, 0, 20, 15, 12, 0),
    gsSP2Triangles(20, 6, 7, 0, 20, 7, 21, 0),
    gsSP2Triangles(22, 23, 3, 0, 22, 3, 1, 0),
    gsSP2Triangles(22, 14, 13, 0, 22, 13, 23, 0),
    gsSPEndDisplayList(),
};

Gfx jyasinboss_room_3DL_003C88[] = {
    gsSPDisplayList(jyasinboss_room_3DL_000640),
    gsSPDisplayList(jyasinboss_room_3DL_000B38),
    gsSPDisplayList(jyasinboss_room_3DL_001380),
    gsSPDisplayList(jyasinboss_room_3DL_001D10),
    gsSPDisplayList(jyasinboss_room_3DL_002038),
    gsSPDisplayList(jyasinboss_room_3DL_002318),
    gsSPDisplayList(jyasinboss_room_3DL_002BE0),
    gsSPDisplayList(jyasinboss_room_3DL_0032F0),
    gsSPDisplayList(jyasinboss_room_3DL_003868),
    gsSPDisplayList(jyasinboss_room_3DL_003B78),
    gsSPEndDisplayList(),
};

u64 jyasinboss_room_3TLUT_003CE0[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_3TLUT_003CE0.rgba16.inc.c"
};

u64 jyasinboss_room_3TLUT_003EE0[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_3TLUT_003EE0.rgba16.inc.c"
};

u64 jyasinboss_room_3Tex_003F00[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_3Tex_003F00.ci8.inc.c"
};

u64 jyasinboss_room_3Tex_004300[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_3Tex_004300.ci8.inc.c"
};

u64 jyasinboss_room_3Tex_004700[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_3Tex_004700.ci8.inc.c"
};

u64 jyasinboss_room_3Tex_004F00[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_3Tex_004F00.ci8.inc.c"
};

u64 jyasinboss_room_3Tex_005300[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_3Tex_005300.ci8.inc.c"
};

u64 jyasinboss_room_3Tex_005700[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_3Tex_005700.ci8.inc.c"
};

u64 jyasinboss_room_3Tex_005F00[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_3Tex_005F00.rgba16.inc.c"
};

u64 jyasinboss_room_3Tex_006700[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_3Tex_006700.rgba16.inc.c"
};

u64 jyasinboss_room_3Tex_007700[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_3Tex_007700.rgba16.inc.c"
};

u64 jyasinboss_room_3Tex_007F00[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_3Tex_007F00.rgba16.inc.c"
};

u64 jyasinboss_room_3Tex_008F00[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_3Tex_008F00.rgba16.inc.c"
};

u64 jyasinboss_room_3Tex_009F00[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_3Tex_009F00.ci4.inc.c"
};

u64 jyasinboss_room_3Tex_00A700[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_3Tex_00A700.rgba16.inc.c"
};

u64 jyasinboss_room_3Tex_00AF00[] = {
#include "assets/scenes/dungeons/jyasinboss/jyasinboss_room_3Tex_00AF00.rgba16.inc.c"
};

