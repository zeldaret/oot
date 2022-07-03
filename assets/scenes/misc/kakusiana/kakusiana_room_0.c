#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "kakusiana_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "kakusiana_scene.h"
#include "kakusiana_room_1.h"
#include "kakusiana_room_2.h"
#include "kakusiana_room_3.h"
#include "kakusiana_room_4.h"
#include "kakusiana_room_5.h"
#include "kakusiana_room_6.h"
#include "kakusiana_room_7.h"
#include "kakusiana_room_8.h"
#include "kakusiana_room_9.h"
#include "kakusiana_room_10.h"
#include "kakusiana_room_11.h"
#include "kakusiana_room_12.h"
#include "kakusiana_room_13.h"

SceneCmd kakusiana_room_0Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&kakusiana_room_0PolygonType2_0000F0),
    SCENE_CMD_OBJECT_LIST(2, kakusiana_room_0ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(10, kakusiana_room_0ActorList_000044),
    SCENE_CMD_END(),
};

s16 kakusiana_room_0ObjectList_000040[] = {
    OBJECT_BOX,
    OBJECT_GS,
};

ActorEntry kakusiana_room_0ActorList_000044[] = {
    { ACTOR_EN_TORCH, {     43,    -36,   -473 }, {      0, 0X8000,      0 }, 0x0000 },
    { ACTOR_EN_FISH,  {     95,    -60,   -314 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_EN_KUSA,  {     13,    -40,   -508 }, {      0,      0,      0 }, 0x0200 },
    { ACTOR_EN_KUSA,  {     -3,    -39,   -454 }, {      0,      0,      0 }, 0x0200 },
    { ACTOR_EN_KUSA,  {     88,    -36,   -449 }, {      0,      0,      0 }, 0x0210 },
    { ACTOR_EN_KUSA,  {      3,    -45,   -257 }, {      0,      0,      0 }, 0x0210 },
    { ACTOR_OBJ_MURE, {    -20,     44,    203 }, {      0,      0,      0 }, 0x3324 },
    { ACTOR_OBJ_COMB, {   -144,    111,   -451 }, { 0X2000, 0XC000,      0 }, 0xFF01 },
    { ACTOR_OBJ_COMB, {    121,     71,   -545 }, { 0XE000, 0XE000,      0 }, 0xFF02 },
    { ACTOR_EN_GS,    {    -38,    -51,   -236 }, {      0,      0,      0 }, 0x3818 },
};

u8 kakusiana_room_0_possiblePadding_0000E4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 kakusiana_room_0PolygonType2_0000F0 = { 
    2, 9,
    kakusiana_room_0PolygonDlist2_0000FC,
    kakusiana_room_0PolygonDlist2_0000FC + ARRAY_COUNTU(kakusiana_room_0PolygonDlist2_0000FC)
};

PolygonDlist2 kakusiana_room_0PolygonDlist2_0000FC[9] = {
    { {     23,    245,    149 },    238, NULL, kakusiana_room_0DL_0064A0 },
    { {     23,    490,    149 },     41, kakusiana_room_0DL_0021C0, kakusiana_room_0DL_0069F0 },
    { {     20,    -39,   -134 },    436, kakusiana_room_0DL_000E58, NULL },
    { {     23,      2,    150 },    202, NULL, kakusiana_room_0DL_0066A8 },
    { {     33,     22,    170 },    154, kakusiana_room_0DL_001DC8, NULL },
    { {     20,    212,   -142 },    545, kakusiana_room_0DL_0007D0, NULL },
    { {     21,    -56,   -379 },    233, NULL, kakusiana_room_0DL_006838 },
    { {     23,     10,    149 },     40, kakusiana_room_0DL_001600, NULL },
    { {     20,    273,   -142 },    518, kakusiana_room_0DL_0013B8, NULL },
};

s32 kakusiana_room_0_terminatorMaybe_00018C = { 0x01000000 };

Vtx kakusiana_room_0Vtx_000190[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_0Vtx_000190.vtx.inc"
};

Gfx kakusiana_room_0DL_0007D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_0Vtx_000190[92], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_0Tex_004AA0, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_0Vtx_000190, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 7, 0, 10, 7, 6, 0),
    gsSP2Triangles(12, 13, 11, 0, 12, 11, 10, 0),
    gsSP2Triangles(3, 2, 13, 0, 3, 13, 12, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 20, 0),
    gsSP2Triangles(21, 15, 22, 0, 15, 23, 22, 0),
    gsSP2Triangles(24, 19, 18, 0, 24, 25, 19, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 29, 27, 0),
    gsSP2Triangles(27, 24, 30, 0, 27, 25, 24, 0),
    gsSPVertex(&kakusiana_room_0Vtx_000190[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 12, 0),
    gsSP2Triangles(9, 13, 11, 0, 13, 14, 11, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 7, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 20, 22, 21, 0),
    gsSP2Triangles(23, 24, 25, 0, 24, 9, 25, 0),
    gsSP2Triangles(9, 8, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(28, 30, 29, 0, 28, 31, 30, 0),
    gsSPVertex(&kakusiana_room_0Vtx_000190[63], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(3, 5, 2, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 10, 0),
    gsSP2Triangles(12, 14, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 22, 20, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 20, 0, 24, 26, 27, 0),
    gsSP1Triangle(26, 28, 27, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_0Vtx_000978[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_0Vtx_000978.vtx.inc"
};

Gfx kakusiana_room_0DL_000E58[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_0Vtx_000978[70], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_0Tex_005AA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 15, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_0Vtx_000978, 32, 0),
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
    gsSPVertex(&kakusiana_room_0Vtx_000978[32], 32, 0),
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
    gsSPVertex(&kakusiana_room_0Vtx_000978[64], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 4, 5, 2, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_0Vtx_001058[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_0Vtx_001058.vtx.inc"
};

Gfx kakusiana_room_0DL_0013B8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_0Vtx_001058[46], 8, 0),
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
    gsSPVertex(kakusiana_room_0Vtx_001058, 32, 0),
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
    gsSPVertex(&kakusiana_room_0Vtx_001058[32], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 1, 0, 1, 4, 5, 0),
    gsSP2Triangles(1, 5, 6, 0, 1, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 9, 8, 13, 0),
    gsSP2Triangles(9, 13, 10, 0, 13, 11, 10, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_0Vtx_001520[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_0Vtx_001520.vtx.inc"
};

Gfx kakusiana_room_0DL_001600[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_0Vtx_001520[6], 8, 0),
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
    gsSPVertex(kakusiana_room_0Vtx_001520, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_0Vtx_001688[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_0Vtx_001688.vtx.inc"
};

Gfx kakusiana_room_0DL_001DC8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_0Vtx_001688[108], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_0Tex_0042A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_0Vtx_001688, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_room_0Tex_0032A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_0Vtx_001688[24], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_room_0Tex_0022A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_0Vtx_001688[28], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_room_0Tex_0032A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_0Vtx_001688[44], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(kakusiana_room_0Tex_0042A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&kakusiana_room_0Vtx_001688[60], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 27, 25, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 31, 29, 0),
    gsSPVertex(&kakusiana_room_0Vtx_001688[92], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_0Vtx_002080[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_0Vtx_002080.vtx.inc"
};

Gfx kakusiana_room_0DL_0021C0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_0Vtx_002080[12], 8, 0),
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
    gsSPVertex(kakusiana_room_0Vtx_002080, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(3, 2, 11, 0, 3, 11, 10, 0),
    gsSPEndDisplayList(),
};

u8 kakusiana_room_0_unaccounted_002268[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x07, 0xD0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0E, 0x58, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x13, 0xB8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x16, 0x00, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1D, 0xC8, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x21, 0xC0, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 kakusiana_room_0Tex_0022A0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_0Tex_0022A0.rgba16.inc.c"
};

u64 kakusiana_room_0Tex_0032A0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_0Tex_0032A0.rgba16.inc.c"
};

u64 kakusiana_room_0Tex_0042A0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_0Tex_0042A0.rgba16.inc.c"
};

u64 kakusiana_room_0Tex_004AA0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_0Tex_004AA0.i8.inc.c"
};

u64 kakusiana_room_0Tex_005AA0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_0Tex_005AA0.rgba16.inc.c"
};

Vtx kakusiana_room_0Vtx_0062A0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_0Vtx_0062A0.vtx.inc"
};

Gfx kakusiana_room_0DL_0064A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_0Vtx_0062A0[24], 8, 0),
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
    gsSPVertex(kakusiana_room_0Vtx_0062A0, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_0Vtx_006588[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_0Vtx_006588.vtx.inc"
};

Gfx kakusiana_room_0DL_0066A8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_0Vtx_006588[10], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(kakusiana_sceneTex_00B820, G_IM_FMT_IA, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                            | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(kakusiana_room_0Vtx_006588, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 5, 0, 5, 4, 6, 0),
    gsSP2Triangles(6, 7, 5, 0, 5, 7, 8, 0),
    gsSP2Triangles(2, 8, 9, 0, 2, 9, 0, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_0Vtx_006778[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_0Vtx_006778.vtx.inc"
};

Gfx kakusiana_room_0DL_006838[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_0Vtx_006778[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(kakusiana_room_0Tex_006AA0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 14, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPDisplayList(0x09000000),
    gsSPVertex(kakusiana_room_0Vtx_006778, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx kakusiana_room_0Vtx_006910[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_0Vtx_006910.vtx.inc"
};

Gfx kakusiana_room_0DL_0069F0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&kakusiana_room_0Vtx_006910[6], 8, 0),
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
    gsSPVertex(kakusiana_room_0Vtx_006910, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSPEndDisplayList(),
};

u8 kakusiana_room_0_unaccounted_006A78[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x64, 0xA0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x66, 0xA8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x68, 0x38, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x69, 0xF0, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 kakusiana_room_0Tex_006AA0[] = {
#include "assets/scenes/misc/kakusiana/kakusiana_room_0Tex_006AA0.rgba16.inc.c"
};

