#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "HAKAdan_room_17.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "HAKAdan_scene.h"
#include "HAKAdan_room_0.h"
#include "HAKAdan_room_1.h"
#include "HAKAdan_room_2.h"
#include "HAKAdan_room_3.h"
#include "HAKAdan_room_4.h"
#include "HAKAdan_room_5.h"
#include "HAKAdan_room_6.h"
#include "HAKAdan_room_7.h"
#include "HAKAdan_room_8.h"
#include "HAKAdan_room_9.h"
#include "HAKAdan_room_10.h"
#include "HAKAdan_room_11.h"
#include "HAKAdan_room_12.h"
#include "HAKAdan_room_13.h"
#include "HAKAdan_room_14.h"
#include "HAKAdan_room_15.h"
#include "HAKAdan_room_16.h"
#include "HAKAdan_room_18.h"
#include "HAKAdan_room_19.h"
#include "HAKAdan_room_20.h"
#include "HAKAdan_room_21.h"
#include "HAKAdan_room_22.h"

SceneCmd HAKAdan_room_17Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&HAKAdan_room_17PolygonType2_000160),
    SCENE_CMD_OBJECT_LIST(8, HAKAdan_room_17ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(17, HAKAdan_room_17ActorList_000050),
    SCENE_CMD_END(),
};

s16 HAKAdan_room_17ObjectList_000040[] = {
    OBJECT_HAKA_OBJECTS,
    OBJECT_HAKA_DOOR,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_WALLMASTER,
    OBJECT_DH,
    OBJECT_BOMBF,
    OBJECT_KANBAN,
};

ActorEntry HAKAdan_room_17ActorList_000050[] = {
    { ACTOR_EN_DH,     {  -4304,  -1363,   -458 }, {      0, 0X8000,      0 }, 0xFFFF },
    { ACTOR_OBJ_TSUBO, {  -4575,  -1363,   -811 }, {      0,      0,      0 }, 0x660B },
    { ACTOR_OBJ_TSUBO, {  -4036,  -1363,   -811 }, {      0,      0,      0 }, 0x680A },
    { ACTOR_EN_BOMBF,  {  -4528,  -1363,   -362 }, {      0, 0X216C,      0 }, 0xFFFF },
    { ACTOR_EN_BOMBF,  {  -4508,  -1363,   -694 }, {      0, 0X27D2,      0 }, 0xFFFF },
    { ACTOR_EN_BOMBF,  {  -4474,  -1363,   -413 }, {      0, 0XD1C7,      0 }, 0xFFFF },
    { ACTOR_EN_BOMBF,  {  -4456,  -1363,   -610 }, {      0, 0XDD28,      0 }, 0xFFFF },
    { ACTOR_EN_BOMBF,  {  -4398,  -1363,   -430 }, {      0, 0X6C17,      0 }, 0xFFFF },
    { ACTOR_EN_BOMBF,  {  -4358,  -1363,   -700 }, {      0, 0XF99A,      0 }, 0xFFFF },
    { ACTOR_EN_BOMBF,  {  -4259,  -1363,   -648 }, {      0, 0X149F,      0 }, 0xFFFF },
    { ACTOR_EN_BOMBF,  {  -4199,  -1363,   -327 }, {      0, 0X1555,      0 }, 0xFFFF },
    { ACTOR_EN_BOMBF,  {  -4171,  -1363,   -510 }, {      0, 0X1777,      0 }, 0xFFFF },
    { ACTOR_EN_BOMBF,  {  -4143,  -1363,   -378 }, {      0, 0XA16C,      0 }, 0xFFFF },
    { ACTOR_EN_BOMBF,  {  -4139,  -1363,   -782 }, {      0, 0X22D8,      0 }, 0xFFFF },
    { ACTOR_EN_BOMBF,  {  -4114,  -1363,   -709 }, {      0, 0XB8E4,      0 }, 0xFFFF },
    { ACTOR_EN_BOMBF,  {  -4105,  -1363,   -459 }, {      0, 0XE444,      0 }, 0xFFFF },
    { ACTOR_EN_BOX,    {  -4305,  -1363,   -363 }, {      0,      0,      0 }, 0x794D },
};

PolygonType2 HAKAdan_room_17PolygonType2_000160 = { 
    2, 5,
    HAKAdan_room_17PolygonDlist2_00016C,
    HAKAdan_room_17PolygonDlist2_00016C + ARRAY_COUNTU(HAKAdan_room_17PolygonDlist2_00016C)
};

PolygonDlist2 HAKAdan_room_17PolygonDlist2_00016C[5] = {
    { {  -4411,  -1263,   -552 },    374, HAKAdan_room_17DL_000D28, NULL },
    { {  -4306,  -1363,   -542 },    424, HAKAdan_room_17DL_000610, NULL },
    { {  -4046,  -1334,   -282 },     64, HAKAdan_room_17DL_001128, NULL },
    { {  -4306,  -1263,   -542 },    435, HAKAdan_room_17DL_000400, NULL },
    { {  -4306,  -1359,   -542 },    169, NULL, HAKAdan_room_17DL_002510 },
};

s32 HAKAdan_room_17_terminatorMaybe_0001BC = { 0x01000000 };

Vtx HAKAdan_room_17Vtx_0001C0[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_17Vtx_0001C0.vtx.inc"
};

Gfx HAKAdan_room_17DL_000400[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_17Vtx_0001C0[28], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_017BC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_room_17Tex_001448, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_17Vtx_0001C0, 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 8, 10, 0),
    gsSP2Triangles(7, 10, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(3, 5, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(4, 19, 5, 0, 11, 5, 19, 0),
    gsSP2Triangles(20, 2, 21, 0, 1, 21, 2, 0),
    gsSP2Triangles(0, 2, 20, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 24, 25, 0, 13, 12, 25, 0),
    gsSP2Triangles(13, 25, 24, 0, 16, 26, 17, 0),
    gsSP2Triangles(27, 16, 18, 0, 27, 26, 16, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_17Vtx_000540[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_17Vtx_000540.vtx.inc"
};

Gfx HAKAdan_room_17DL_000610[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_17Vtx_000540[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_017BC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_room_17Tex_001448, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 4, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_17Vtx_000540, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 0, 4, 1, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_17Vtx_000708[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_17Vtx_000708.vtx.inc"
};

Gfx HAKAdan_room_17DL_000D28[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_17Vtx_000708[90], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_room_17Tex_001248, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_17Vtx_000708, 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_17Tex_002048, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&HAKAdan_room_17Vtx_000708[28], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_17Tex_001C48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_17Vtx_000708[40], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_17Tex_002048, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_17Vtx_000708[48], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_17Tex_001C48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_17Vtx_000708[60], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(HAKAdan_room_17Tex_002048, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&HAKAdan_room_17Vtx_000708[68], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(13, 12, 20, 0, 13, 20, 21, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdan_room_17Vtx_001058[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_17Vtx_001058.vtx.inc"
};

Gfx HAKAdan_room_17DL_001128[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_17Vtx_001058[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_sceneTex_016BC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdan_sceneTex_0163C0, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 2, 2),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_17Vtx_001058, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 3, 1, 0, 0, 4, 1, 0),
    gsSPEndDisplayList(),
};

u8 HAKAdan_room_17_unaccounted_001220[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x04, 0x00, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x10, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0D, 0x28, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x11, 0x28, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 HAKAdan_room_17Tex_001248[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_17Tex_001248.rgba16.inc.c"
};

u64 HAKAdan_room_17Tex_001448[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_17Tex_001448.rgba16.inc.c"
};

u64 HAKAdan_room_17Tex_001C48[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_17Tex_001C48.rgba16.inc.c"
};

u64 HAKAdan_room_17Tex_002048[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_17Tex_002048.rgba16.inc.c"
};

u8 HAKAdan_room_17_possiblePadding_002448[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx HAKAdan_room_17Vtx_002450[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_17Vtx_002450.vtx.inc"
};

Gfx HAKAdan_room_17DL_002510[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdan_room_17Vtx_002450[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdan_room_17Tex_0025D8, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdan_room_17Vtx_002450, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 HAKAdan_room_17_unaccounted_0025C8[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x25, 0x10, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 HAKAdan_room_17Tex_0025D8[] = {
#include "assets/scenes/dungeons/HAKAdan/HAKAdan_room_17Tex_0025D8.ia16.inc.c"
};

