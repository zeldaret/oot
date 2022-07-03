#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "kakusiana_room_10.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "kakusiana_scene.h"
#include "kakusiana_room_0.h"
#include "kakusiana_room_1.h"
#include "kakusiana_room_2.h"
#include "kakusiana_room_3.h"
#include "kakusiana_room_4.h"
#include "kakusiana_room_5.h"
#include "kakusiana_room_6.h"
#include "kakusiana_room_7.h"
#include "kakusiana_room_8.h"
#include "kakusiana_room_9.h"
#include "kakusiana_room_11.h"
#include "kakusiana_room_12.h"
#include "kakusiana_room_13.h"

SceneCmd kakusiana_room_10Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&kakusiana_room_10PolygonType2_000090),
    SCENE_CMD_OBJECT_LIST(1, kakusiana_room_10ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(4, kakusiana_room_10ActorList_000044),
    SCENE_CMD_END(),
};

s16 kakusiana_room_10ObjectList_000040[] = {
    OBJECT_TITE,
};

ActorEntry kakusiana_room_10ActorList_000044[] = {
    { ACTOR_OBJ_MURE,  {   3006,   -137,    787 }, {      0,      0,      0 }, 0x5322 },
    { ACTOR_OBJ_MURE,  {   3010,   -207,    831 }, {      0,      0,      0 }, 0x5322 },
    { ACTOR_EN_TITE,   {   3034,    -20,    768 }, {      0,      0,      0 }, 0xFFFE },
    { ACTOR_EN_ITEM00, {   3016,   -340,    743 }, {      0,      0,      0 }, 0x0106 },
};

u8 kakusiana_room_10_possiblePadding_000084[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 kakusiana_room_10PolygonType2_000090 = { 
    2, 8,
    kakusiana_room_10PolygonDlist2_00009C,
    kakusiana_room_10PolygonDlist2_00009C + ARRAY_COUNTU(kakusiana_room_10PolygonDlist2_00009C)
};

PolygonDlist2 kakusiana_room_10PolygonDlist2_00009C[8] = {
    { {   3023,    245,   1349 },    238, NULL, kakusiana_room_10DL_004DE0 },
    { {   3016,   -340,    809 },    192, kakusiana_room_10DL_001330, NULL },
    { {   3028,    -23,   1285 },    231, kakusiana_room_10DL_001088, NULL },
    { {   3021,    -20,    888 },    348, NULL, kakusiana_room_10DL_004FB8 },
    { {   3023,     10,   1349 },     40, kakusiana_room_10DL_001538, NULL },
    { {   3023,    490,   1349 },     41, kakusiana_room_10DL_001700, kakusiana_room_10DL_005180 },
    { {   3018,    -34,    885 },    397, kakusiana_room_10DL_000D18, NULL },
    { {   3020,    235,   1308 },    333, kakusiana_room_10DL_000700, NULL },
};

s32 kakusiana_room_10_terminatorMaybe_00011C = { 0x01000000 };

Vtx kakusiana_room_10Vtx_000120[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_10Vtx_000120.vtx.inc"
};

Gfx kakusiana_room_10DL_000700[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_10Vtx_000120[86], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_10Tex_002BE0, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_10Vtx_000120, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 4, 0),
    gsSP2Triangles(7, 4, 3, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 10, 0),
    gsSP2Triangles(13, 10, 9, 0, 15, 16, 14, 0),
    gsSP2Triangles(15, 14, 13, 0, 6, 5, 16, 0),
    gsSP2Triangles(6, 16, 15, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 20, 19, 0, 21, 22, 23, 0),
    gsSP2Triangles(22, 24, 23, 0, 22, 25, 24, 0),
    gsSP2Triangles(25, 18, 26, 0, 18, 23, 26, 0),
    gsSP2Triangles(18, 17, 23, 0, 27, 22, 21, 0),
    gsSP2Triangles(27, 28, 22, 0, 29, 30, 31, 0),
    gsSPVertex(&kakusiana_room_10Vtx_000120[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 5, 0, 4, 6, 5, 0),
    gsSP2Triangles(1, 7, 4, 0, 8, 9, 10, 0),
    gsSP2Triangles(9, 0, 10, 0, 9, 3, 0, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 14, 12, 0),
    gsSP2Triangles(15, 16, 17, 0, 16, 18, 17, 0),
    gsSP2Triangles(19, 11, 20, 0, 19, 14, 11, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 24, 22, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsSP2Triangles(26, 29, 30, 0, 26, 30, 27, 0),
    gsSPVertex(&kakusiana_room_10Vtx_000120[63], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 1, 5, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(8, 7, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 11, 10, 0, 13, 14, 6, 0),
    gsSP2Triangles(13, 6, 9, 0, 13, 15, 14, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(14, 17, 18, 0, 18, 17, 19, 0),
    gsSP2Triangles(18, 19, 20, 0, 10, 21, 12, 0),
    gsSP2Triangles(20, 19, 22, 0, 20, 22, 10, 0),
    gsSP1Triangle(22, 21, 10, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_10Vtx_0008C8[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_10Vtx_0008C8.vtx.inc"
};

Gfx kakusiana_room_10DL_000D18[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_10Vtx_0008C8[61], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_10Tex_001FE0, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(kakusiana_room_10Tex_0027E0, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0D000000),
    gsSPVertex(kakusiana_room_10Vtx_0008C8, 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(0, 2, 3, 0, 3, 5, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 6, 0, 10, 6, 9, 0),
    gsSP2Triangles(9, 8, 12, 0, 9, 12, 13, 0),
    gsSP2Triangles(10, 9, 13, 0, 10, 13, 14, 0),
    gsSP2Triangles(15, 7, 6, 0, 15, 16, 7, 0),
    gsSP2Triangles(11, 15, 6, 0, 11, 17, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 18, 20, 0),
    gsSP2Triangles(20, 19, 14, 0, 20, 14, 13, 0),
    gsSP2Triangles(12, 21, 20, 0, 12, 20, 13, 0),
    gsSPVertex(&kakusiana_room_10Vtx_0008C8[22], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&kakusiana_room_10Vtx_0008C8[25], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 11, 14, 0),
    gsSP2Triangles(15, 14, 16, 0, 17, 16, 18, 0),
    gsSP2Triangles(19, 20, 0, 0, 21, 19, 0, 0),
    gsSP2Triangles(2, 21, 0, 0, 22, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 25, 27, 0),
    gsSP2Triangles(29, 28, 27, 0, 3, 29, 27, 0),
    gsSP1Triangle(30, 3, 27, 0),
    gsSPVertex(&kakusiana_room_10Vtx_0008C8[56], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_10Vtx_000ED8[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_10Vtx_000ED8.vtx.inc"
};

Gfx kakusiana_room_10DL_001088[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_10Vtx_000ED8[19], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_10Tex_0017E0, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_10Vtx_000ED8, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_room_10Tex_003BE0, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_10Vtx_000ED8[6], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 0, 5, 1, 0),
    gsSP2Triangles(5, 6, 1, 0, 6, 7, 1, 0),
    gsSP2Triangles(7, 8, 1, 0, 8, 9, 1, 0),
    gsSP2Triangles(9, 10, 1, 0, 10, 11, 1, 0),
    gsSP2Triangles(11, 12, 1, 0, 12, 4, 1, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_10Vtx_0011C0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_10Vtx_0011C0.vtx.inc"
};

Gfx kakusiana_room_10DL_001330[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_10Vtx_0011C0[15], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_10Tex_0017E0, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(kakusiana_room_10Tex_0027E0, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0D000000),
    gsSPVertex(kakusiana_room_10Vtx_0011C0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&kakusiana_room_10Vtx_0011C0[3], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(3, 0, 2, 0, 5, 3, 2, 0),
    gsSP2Triangles(2, 6, 7, 0, 2, 7, 8, 0),
    gsSP2Triangles(9, 5, 2, 0, 10, 9, 2, 0),
    gsSP2Triangles(11, 10, 2, 0, 11, 2, 8, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_10Vtx_001458[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_10Vtx_001458.vtx.inc"
};

Gfx kakusiana_room_10DL_001538[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_10Vtx_001458[6], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_10Vtx_001458, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_10Vtx_0015C0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_10Vtx_0015C0.vtx.inc"
};

Gfx kakusiana_room_10DL_001700[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_10Vtx_0015C0[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_10Vtx_0015C0, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(3, 2, 11, 0, 3, 11, 10, 0),
    gsSPEndDisplayList(),
};

u8 kakusiana_room_10_unaccounted_0017A8[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x07, 0x00, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0D, 0x18, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x10, 0x88, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x13, 0x30, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x15, 0x38, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x17, 0x00, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 kakusiana_room_10Tex_0017E0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_10Tex_0017E0.i8.inc.c"
};

u64 kakusiana_room_10Tex_001FE0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_10Tex_001FE0.i8.inc.c"
};

u64 kakusiana_room_10Tex_0027E0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_10Tex_0027E0.i8.inc.c"
};

u64 kakusiana_room_10Tex_002BE0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_10Tex_002BE0.i8.inc.c"
};

u64 kakusiana_room_10Tex_003BE0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_10Tex_003BE0.i8.inc.c"
};

Vtx kakusiana_room_10Vtx_004BE0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_10Vtx_004BE0.vtx.inc"
};

Gfx kakusiana_room_10DL_004DE0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_10Vtx_004BE0[24], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_sceneTex_00C020, G_IM_FMT_IA, G_IM_SIZ_16b, 128, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 7, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 204),
    gsSPDisplayList(0x08000000),
    gsSPVertex(kakusiana_room_10Vtx_004BE0, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_10Vtx_004EC8[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_10Vtx_004EC8.vtx.inc"
};

Gfx kakusiana_room_10DL_004FB8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_10Vtx_004EC8[7], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_10Tex_005228, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 14, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPDisplayList(0x09000000),
    gsSPVertex(kakusiana_room_10Vtx_004EC8, 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 5, 0, 4, 6, 5, 0),
    gsSP1Triangle(0, 5, 6, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_10Vtx_0050A0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_10Vtx_0050A0.vtx.inc"
};

Gfx kakusiana_room_10DL_005180[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_10Vtx_0050A0[6], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 204),
    gsSPVertex(kakusiana_room_10Vtx_0050A0, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPEndDisplayList(),
};

u8 kakusiana_room_10_unaccounted_005208[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x4D, 0xE0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x4F, 0xB8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x51, 0x80, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 kakusiana_room_10Tex_005228[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_10Tex_005228.rgba16.inc.c"
};

