#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "spot10_room_2.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "spot10_scene.h"
#include "spot10_room_0.h"
#include "spot10_room_1.h"
#include "spot10_room_3.h"
#include "spot10_room_4.h"
#include "spot10_room_5.h"
#include "spot10_room_6.h"
#include "spot10_room_7.h"
#include "spot10_room_8.h"
#include "spot10_room_9.h"

SceneCmd spot10_room_2Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(spot10_room_2AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(9),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot10_room_2PolygonType0_0000F0),
    SCENE_CMD_OBJECT_LIST(12, spot10_room_2ObjectList_000058),
    SCENE_CMD_ACTOR_LIST(8, spot10_room_2ActorList_000070),
    SCENE_CMD_END(),
};

SceneCmd* spot10_room_2AlternateHeaders0x000048[] = {
    NULL,
    spot10_room_2Set_000110,
    NULL,
    spot10_room_2Set_0001F0,
};

s16 spot10_room_2ObjectList_000058[] = {
    OBJECT_SKJ,
    OBJECT_SHOPNUTS,
    OBJECT_DNK,
    OBJECT_YABUSAME_POINT,
    OBJECT_OWL,
    OBJECT_MAMENOKI,
    OBJECT_BOMBIWA,
    OBJECT_GS,
    OBJECT_HINTNUTS,
    OBJECT_GI_DEKUPOUCH,
    OBJECT_ST,
    OBJECT_OKUTA,
};

ActorEntry spot10_room_2ActorList_000070[] = {
    { ACTOR_EN_RIVER_SOUND, {   1061,      0,   -803 }, {      0,      0,      0 }, 0x000C },
    { ACTOR_OBJECT_KANKYO,  {    798,      0,   -897 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_KUSA,        {    645,      0,   -638 }, {      0, 0XC000,      0 }, 0x0200 },
    { ACTOR_EN_KUSA,        {    633,      0,   -676 }, {      0, 0XC000,      0 }, 0x0200 },
    { ACTOR_EN_KUSA,        {    676,      0,   -651 }, {      0, 0XC000,      0 }, 0x0210 },
    { ACTOR_EN_OWL,         {    955,    210,   -798 }, {      0, 0XC000,      0 }, 0x02C7 },
    { ACTOR_OBJ_BOMBIWA,    {    915,     -5,   -925 }, {      0,      0,      0 }, 0x8011 },
    { ACTOR_DOOR_ANA,       {    915,      0,   -925 }, {      0, 0XE000,      0 }, 0x0014 },
};

PolygonType0 spot10_room_2PolygonType0_0000F0 = { 
    0, 1,
    spot10_room_2PolygonDlist_0000FC,
    spot10_room_2PolygonDlist_0000FC + ARRAY_COUNTU(spot10_room_2PolygonDlist_0000FC)
};

PolygonDlist spot10_room_2PolygonDlist_0000FC[1] = {
    { spot10_room_2DL_0023B0, NULL },
};

s32 spot10_room_2_terminatorMaybe_000104 = { 0x01000000 };

u8 spot10_room_2_possiblePadding_000108[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot10_room_2Set_000110[] = {
    SCENE_CMD_ECHO_SETTINGS(9),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot10_room_2PolygonType0_0000F0),
    SCENE_CMD_OBJECT_LIST(12, spot10_room_2ObjectList_000150),
    SCENE_CMD_ACTOR_LIST(8, spot10_room_2ActorList_000168),
    SCENE_CMD_END(),
};

s16 spot10_room_2ObjectList_000150[] = {
    OBJECT_OKUTA,
    OBJECT_KW1,
    OBJECT_MD,
    OBJECT_FA,
    OBJECT_MAMENOKI,
    OBJECT_GS,
    OBJECT_HS,
    OBJECT_ST,
    OBJECT_BOMBIWA,
    OBJECT_OS_ANIME,
    OBJECT_MM,
    OBJECT_SKJ,
};

ActorEntry spot10_room_2ActorList_000168[] = {
    { ACTOR_EN_RIVER_SOUND, {   1061,      0,   -803 }, {      0,      0,      0 }, 0x000C },
    { ACTOR_OBJECT_KANKYO,  {    798,      0,   -897 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_DOOR_ANA,       {    915,      0,   -925 }, {      0, 0XE000,      0 }, 0x0014 },
    { ACTOR_EN_WEATHER_TAG, {    798,    -80,  -1220 }, {      0,      0,      0 }, 0x0304 },
    { ACTOR_EN_KUSA,        {    645,      0,   -638 }, {      0, 0XC000,      0 }, 0x0700 },
    { ACTOR_EN_KUSA,        {    676,      0,   -651 }, {      0, 0XC000,      0 }, 0x0700 },
    { ACTOR_EN_KUSA,        {    633,      0,   -676 }, {      0, 0XC000,      0 }, 0x0700 },
    { ACTOR_OBJ_BOMBIWA,    {    915,     -5,   -925 }, {      0,      0,      0 }, 0x8011 },
};

u8 spot10_room_2_possiblePadding_0001E8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot10_room_2Set_0001F0[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&spot10_room_2PolygonType0_0000F0),
    SCENE_CMD_END(),
};

Vtx spot10_room_2Vtx_000220[] = {
#include "assets/scenes/overworld/spot10/spot10_room_2Vtx_000220.vtx.inc"
};

Gfx spot10_room_2DL_000320[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_2Vtx_000220[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot10_sceneTex_00FC30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 1),
    gsDPLoadMultiBlock(spot10_sceneTex_00EA30, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 14),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot10_room_2Vtx_000220, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0),
    gsSP2Triangles(4, 3, 6, 0, 3, 7, 6, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_2Vtx_000420[] = {
#include "assets/scenes/overworld/spot10/spot10_room_2Vtx_000420.vtx.inc"
};

Gfx spot10_room_2DL_0008B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_2Vtx_000420[65], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot10_sceneTex_00DA30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot10_room_2Vtx_000420, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(1, 3, 4, 0, 3, 5, 4, 0),
    gsSP2Triangles(5, 6, 4, 0, 7, 8, 2, 0),
    gsSP2Triangles(7, 9, 8, 0, 10, 9, 7, 0),
    gsSP2Triangles(10, 11, 9, 0, 12, 11, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_2Vtx_000420[13], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 3, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_2Vtx_000420[21], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00C230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_2Vtx_000420[25], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_2Vtx_000420[33], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 3, 5, 0, 6, 4, 5, 0),
    gsSP2Triangles(7, 6, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 10, 14, 0),
    gsSP2Triangles(14, 15, 12, 0, 6, 5, 8, 0),
    gsSP2Triangles(9, 14, 10, 0, 0, 5, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00C230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_2Vtx_000420[49], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_2Vtx_000B80[] = {
#include "assets/scenes/overworld/spot10/spot10_room_2Vtx_000B80.vtx.inc"
};

Gfx spot10_room_2DL_001060[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_2Vtx_000B80[70], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot10_sceneTex_00DA30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot10_room_2Vtx_000B80, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(1, 3, 4, 0, 3, 5, 4, 0),
    gsSP2Triangles(5, 6, 4, 0, 7, 8, 2, 0),
    gsSP2Triangles(7, 9, 8, 0, 10, 9, 7, 0),
    gsSP2Triangles(10, 11, 9, 0, 12, 11, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_2Vtx_000B80[13], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 3, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_2Vtx_000B80[21], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00C230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_2Vtx_000B80[25], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_2Vtx_000B80[33], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 7, 10, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 11, 10, 0, 14, 13, 7, 0),
    gsSP2Triangles(15, 14, 7, 0, 16, 15, 5, 0),
    gsSP2Triangles(3, 17, 18, 0, 19, 20, 0, 0),
    gsSP2Triangles(20, 17, 0, 0, 0, 2, 19, 0),
    gsSP2Triangles(15, 7, 5, 0, 3, 0, 17, 0),
    gsSP1Triangle(10, 7, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00C230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_2Vtx_000B80[54], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_2Vtx_001348[] = {
#include "assets/scenes/overworld/spot10/spot10_room_2Vtx_001348.vtx.inc"
};

Gfx spot10_room_2DL_0017B8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_2Vtx_001348[63], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot10_sceneTex_00DA30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot10_room_2Vtx_001348, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(1, 3, 4, 0, 3, 5, 4, 0),
    gsSP2Triangles(5, 6, 4, 0, 7, 8, 2, 0),
    gsSP2Triangles(7, 9, 8, 0, 10, 9, 7, 0),
    gsSP2Triangles(10, 11, 9, 0, 12, 11, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_2Vtx_001348[13], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 3, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_2Vtx_001348[21], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00C230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_2Vtx_001348[25], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_2Vtx_001348[33], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 3, 5, 0, 6, 4, 5, 0),
    gsSP2Triangles(7, 6, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(2, 12, 13, 0, 12, 10, 13, 0),
    gsSP2Triangles(13, 0, 2, 0, 6, 5, 8, 0),
    gsSP2Triangles(9, 13, 10, 0, 0, 5, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00C230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_2Vtx_001348[47], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_2Vtx_001A88[] = {
#include "assets/scenes/overworld/spot10/spot10_room_2Vtx_001A88.vtx.inc"
};

Gfx spot10_room_2DL_001DD8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_2Vtx_001A88[45], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot10_room_2Tex_0043E8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot10_room_2Vtx_001A88, 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(2, 1, 6, 0, 2, 6, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00DA30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_2Vtx_001A88[19], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_room_2Tex_0023E8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_2Vtx_001A88[27], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 2, 0, 1, 5, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_room_2Tex_0033E8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_2Vtx_001A88[33], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSP2Triangles(4, 2, 8, 0, 4, 8, 7, 0),
    gsSP2Triangles(2, 1, 10, 0, 2, 10, 8, 0),
    gsSP2Triangles(1, 0, 11, 0, 1, 11, 10, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_2Vtx_001FE8[] = {
#include "assets/scenes/overworld/spot10/spot10_room_2Vtx_001FE8.vtx.inc"
};

Gfx spot10_room_2DL_002268[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_2Vtx_001FE8[32], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot10_sceneTex_00CA30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 230, 250, 156, 255),
    gsSPVertex(spot10_room_2Vtx_001FE8, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot10_sceneTex_00D230, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 193, 175, 90, 255),
    gsSPVertex(&spot10_room_2Vtx_001FE8[16], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx spot10_room_2DL_0023B0[] = {
    gsSPDisplayList(spot10_room_2DL_000320),
    gsSPDisplayList(spot10_room_2DL_0008B0),
    gsSPDisplayList(spot10_room_2DL_001060),
    gsSPDisplayList(spot10_room_2DL_0017B8),
    gsSPDisplayList(spot10_room_2DL_001DD8),
    gsSPDisplayList(spot10_room_2DL_002268),
    gsSPEndDisplayList(),
};

u64 spot10_room_2Tex_0023E8[] = {
#include "assets/scenes/overworld/spot10/spot10_room_2Tex_0023E8.rgba16.inc.c"
};

u64 spot10_room_2Tex_0033E8[] = {
#include "assets/scenes/overworld/spot10/spot10_room_2Tex_0033E8.rgba16.inc.c"
};

u64 spot10_room_2Tex_0043E8[] = {
#include "assets/scenes/overworld/spot10/spot10_room_2Tex_0043E8.rgba16.inc.c"
};

