#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "kakusiana_room_5.h"
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
#include "kakusiana_room_6.h"
#include "kakusiana_room_7.h"
#include "kakusiana_room_8.h"
#include "kakusiana_room_9.h"
#include "kakusiana_room_10.h"
#include "kakusiana_room_11.h"
#include "kakusiana_room_12.h"
#include "kakusiana_room_13.h"

SceneCmd kakusiana_room_5Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&kakusiana_room_5PolygonType2_0000E0),
    SCENE_CMD_OBJECT_LIST(1, kakusiana_room_5ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(9, kakusiana_room_5ActorList_000044),
    SCENE_CMD_END(),
};

s16 kakusiana_room_5ObjectList_000040[] = {
    OBJECT_OKUTA,
};

ActorEntry kakusiana_room_5ActorList_000044[] = {
    { ACTOR_EN_OKUTA,  {     31,   -133,    820 }, {      0,      0,      0 }, 0xFF00 },
    { ACTOR_EN_ITEM00, {    -42,   -135,    880 }, {      0,      0,      0 }, 0x3801 },
    { ACTOR_EN_ITEM00, {     58,   -126,    803 }, {      0,      0,      0 }, 0x3901 },
    { ACTOR_EN_ITEM00, {     90,   -139,    910 }, {      0,      0,      0 }, 0x3A01 },
    { ACTOR_EN_ITEM00, {    -68,   -135,    959 }, {      0,      0,      0 }, 0x3B00 },
    { ACTOR_EN_ITEM00, {    132,   -134,    961 }, {      0,      0,      0 }, 0x3C00 },
    { ACTOR_EN_ITEM00, {    -38,   -132,    768 }, {      0,      0,      0 }, 0x3D00 },
    { ACTOR_EN_ITEM00, {    121,   -125,    784 }, {      0,      0,      0 }, 0x3E00 },
    { ACTOR_EN_ITEM00, {     32,   -129,    852 }, {      0,      0,      0 }, 0x3F02 },
};

u8 kakusiana_room_5_possiblePadding_0000D4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 kakusiana_room_5PolygonType2_0000E0 = { 
    2, 7,
    kakusiana_room_5PolygonDlist2_0000EC,
    kakusiana_room_5PolygonDlist2_0000EC + ARRAY_COUNTU(kakusiana_room_5PolygonDlist2_0000EC)
};

PolygonDlist2 kakusiana_room_5PolygonDlist2_0000EC[7] = {
    { {     23,    245,   1349 },    238, NULL, kakusiana_room_5DL_003A90 },
    { {     18,    -70,   1066 },    440, kakusiana_room_5DL_001320, NULL },
    { {     21,    -20,    888 },    348, NULL, kakusiana_room_5DL_003C68 },
    { {     23,     10,   1349 },     40, kakusiana_room_5DL_0015E8, NULL },
    { {     23,    490,   1349 },     41, kakusiana_room_5DL_0017B0, kakusiana_room_5DL_003E30 },
    { {     23,    273,   1058 },    518, kakusiana_room_5DL_000CD8, NULL },
    { {     23,    170,   1058 },    567, kakusiana_room_5DL_0007D0, NULL },
};

s32 kakusiana_room_5_terminatorMaybe_00015C = { 0x01000000 };

Vtx kakusiana_room_5Vtx_000160[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_5Vtx_000160.vtx.inc"
};

Gfx kakusiana_room_5DL_0007D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_5Vtx_000160[95], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_5Tex_002888, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_5Vtx_000160, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 7, 0, 10, 7, 6, 0),
    gsSP2Triangles(12, 13, 11, 0, 12, 11, 10, 0),
    gsSP2Triangles(3, 2, 13, 0, 3, 13, 12, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(21, 15, 20, 0, 15, 22, 20, 0),
    gsSP2Triangles(23, 19, 18, 0, 23, 24, 19, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 28, 26, 0),
    gsSP2Triangles(26, 23, 29, 0, 26, 24, 23, 0),
    gsSP2Triangles(30, 31, 25, 0, 31, 28, 25, 0),
    gsSPVertex(&kakusiana_room_5Vtx_000160[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 8, 0),
    gsSP2Triangles(5, 9, 7, 0, 9, 10, 7, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 3, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 16, 18, 17, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 5, 23, 0),
    gsSP2Triangles(5, 4, 24, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&kakusiana_room_5Vtx_000160[63], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 11, 9, 0, 8, 12, 11, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 20, 18, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 18, 0),
    gsSP2Triangles(24, 25, 26, 0, 25, 27, 26, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 31, 30, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_5Vtx_000978[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_5Vtx_000978.vtx.inc"
};

Gfx kakusiana_room_5DL_000CD8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_5Vtx_000978[46], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_sceneTex_00D020, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_5Vtx_000978, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(1, 6, 2, 0, 6, 4, 2, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(9, 11, 12, 0, 9, 12, 10, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(14, 17, 18, 0, 14, 18, 15, 0),
    gsSP2Triangles(19, 20, 13, 0, 20, 14, 13, 0),
    gsSP2Triangles(20, 17, 14, 0, 20, 21, 17, 0),
    gsSP2Triangles(22, 23, 3, 0, 22, 3, 5, 0),
    gsSP2Triangles(23, 24, 0, 0, 23, 0, 3, 0),
    gsSP2Triangles(22, 7, 10, 0, 22, 10, 23, 0),
    gsSP2Triangles(10, 12, 24, 0, 10, 24, 23, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsSP2Triangles(27, 26, 29, 0, 27, 29, 30, 0),
    gsSP1Triangle(31, 30, 29, 0),
    gsSPVertex(&kakusiana_room_5Vtx_000978[32], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 1, 0, 1, 4, 5, 0),
    gsSP2Triangles(1, 5, 6, 0, 1, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 9, 8, 13, 0),
    gsSP2Triangles(9, 13, 10, 0, 13, 11, 10, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_5Vtx_000E40[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_5Vtx_000E40.vtx.inc"
};

Gfx kakusiana_room_5DL_001320[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_5Vtx_000E40[70], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_5Tex_001888, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_5Vtx_000E40, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 1, 5, 0, 6, 5, 1, 0),
    gsSP2Triangles(1, 0, 6, 0, 7, 6, 0, 0),
    gsSP2Triangles(8, 3, 9, 0, 8, 7, 0, 0),
    gsSP2Triangles(8, 0, 3, 0, 9, 3, 10, 0),
    gsSP2Triangles(3, 2, 10, 0, 2, 11, 10, 0),
    gsSP2Triangles(4, 11, 2, 0, 2, 1, 4, 0),
    gsSP2Triangles(11, 4, 12, 0, 13, 10, 11, 0),
    gsSP2Triangles(13, 11, 12, 0, 14, 10, 13, 0),
    gsSP2Triangles(15, 9, 10, 0, 16, 6, 17, 0),
    gsSP2Triangles(6, 7, 17, 0, 18, 15, 19, 0),
    gsSP2Triangles(15, 20, 19, 0, 18, 21, 15, 0),
    gsSP2Triangles(21, 9, 15, 0, 8, 18, 22, 0),
    gsSP2Triangles(8, 21, 18, 0, 8, 9, 21, 0),
    gsSP2Triangles(23, 16, 24, 0, 16, 17, 24, 0),
    gsSP2Triangles(17, 7, 24, 0, 25, 26, 22, 0),
    gsSP2Triangles(25, 27, 26, 0, 27, 28, 26, 0),
    gsSP2Triangles(28, 22, 26, 0, 27, 29, 28, 0),
    gsSP2Triangles(29, 30, 28, 0, 30, 24, 28, 0),
    gsSP2Triangles(27, 31, 29, 0, 31, 30, 29, 0),
    gsSPVertex(&kakusiana_room_5Vtx_000E40[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(7, 8, 6, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 11, 9, 0, 12, 8, 10, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 10, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(18, 20, 21, 0, 18, 21, 19, 0),
    gsSP2Triangles(17, 22, 18, 0, 22, 20, 18, 0),
    gsSP2Triangles(17, 0, 22, 0, 17, 3, 0, 0),
    gsSP2Triangles(22, 12, 20, 0, 23, 24, 25, 0),
    gsSP2Triangles(24, 26, 25, 0, 24, 21, 26, 0),
    gsSP2Triangles(23, 27, 24, 0, 27, 28, 24, 0),
    gsSP2Triangles(28, 29, 24, 0, 29, 30, 24, 0),
    gsSP1Triangle(30, 31, 24, 0),
    gsSPVertex(&kakusiana_room_5Vtx_000E40[64], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 4, 5, 2, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_5Vtx_001508[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_5Vtx_001508.vtx.inc"
};

Gfx kakusiana_room_5DL_0015E8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_5Vtx_001508[6], 8, 0),
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
    gsSPVertex(kakusiana_room_5Vtx_001508, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_5Vtx_001670[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_5Vtx_001670.vtx.inc"
};

Gfx kakusiana_room_5DL_0017B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_5Vtx_001670[12], 8, 0),
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
    gsSPVertex(kakusiana_room_5Vtx_001670, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(3, 2, 11, 0, 3, 11, 10, 0),
    gsSPEndDisplayList(),
};

u8 kakusiana_room_5_unaccounted_001858[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x07, 0xD0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0C, 0xD8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x13, 0x20, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x15, 0xE8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x17, 0xB0, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 kakusiana_room_5Tex_001888[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_5Tex_001888.i8.inc.c"
};

u64 kakusiana_room_5Tex_002888[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_5Tex_002888.i8.inc.c"
};

u8 kakusiana_room_5_possiblePadding_003888[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx kakusiana_room_5Vtx_003890[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_5Vtx_003890.vtx.inc"
};

Gfx kakusiana_room_5DL_003A90[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_5Vtx_003890[24], 8, 0),
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
    gsSPVertex(kakusiana_room_5Vtx_003890, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_5Vtx_003B78[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_5Vtx_003B78.vtx.inc"
};

Gfx kakusiana_room_5DL_003C68[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_5Vtx_003B78[7], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_5Tex_003ED8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
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
    gsSPVertex(kakusiana_room_5Vtx_003B78, 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 5, 0, 4, 6, 5, 0),
    gsSP1Triangle(0, 5, 6, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_5Vtx_003D50[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_5Vtx_003D50.vtx.inc"
};

Gfx kakusiana_room_5DL_003E30[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_5Vtx_003D50[6], 8, 0),
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
    gsSPVertex(kakusiana_room_5Vtx_003D50, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPEndDisplayList(),
};

u8 kakusiana_room_5_unaccounted_003EB8[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3A, 0x90, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3C, 0x68, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3E, 0x30, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 kakusiana_room_5Tex_003ED8[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_5Tex_003ED8.rgba16.inc.c"
};

