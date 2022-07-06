#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "spot10_room_3.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "spot10_scene.h"
#include "spot10_room_0.h"
#include "spot10_room_1.h"
#include "spot10_room_2.h"
#include "spot10_room_4.h"
#include "spot10_room_5.h"
#include "spot10_room_6.h"
#include "spot10_room_7.h"
#include "spot10_room_8.h"
#include "spot10_room_9.h"

SceneCmd spot10_room_3Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(spot10_room_3AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(9),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot10_room_3PolygonType0_000130),
    SCENE_CMD_OBJECT_LIST(11, spot10_room_3ObjectList_000058),
    SCENE_CMD_ACTOR_LIST(12, spot10_room_3ActorList_000070),
    SCENE_CMD_END(),
};

SceneCmd* spot10_room_3AlternateHeaders0x000048[] = {
    NULL,
    spot10_room_3Set_000150,
    NULL,
    spot10_room_3Set_000210,
};

s16 spot10_room_3ObjectList_000058[] = {
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
};

ActorEntry spot10_room_3ActorList_000070[] = {
    { ACTOR_EN_RIVER_SOUND, {   1596,      0,  -1067 }, {      0,      0,      0 }, 0x000C },
    { ACTOR_OBJECT_KANKYO,  {   1735,      0,   -792 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_OKUTA,       {   2114,    -20,   -847 }, {      0, 0XC000,      0 }, 0xFF00 },
    { ACTOR_SHOT_SUN,       {   1930,      0,   -795 }, {      0,      0,      0 }, 0xFF41 },
    { ACTOR_EN_ITEM00,      {   2215,   -260,   -850 }, {      0,      0,      0 }, 0x3400 },
    { ACTOR_EN_ITEM00,      {   2164,   -260,   -850 }, {      0,      0,      0 }, 0x3500 },
    { ACTOR_EN_ITEM00,      {   2113,   -260,   -850 }, {      0,      0,      0 }, 0x3600 },
    { ACTOR_EN_ITEM00,      {   2061,   -260,   -853 }, {      0,      0,      0 }, 0x3700 },
    { ACTOR_EN_ITEM00,      {   2194,   -260,   -895 }, {      0,      0,      0 }, 0x3900 },
    { ACTOR_EN_ITEM00,      {   2156,   -260,   -937 }, {      0,      0,      0 }, 0x3A00 },
    { ACTOR_EN_ITEM00,      {   2193,   -260,   -813 }, {      0,      0,      0 }, 0x3B00 },
    { ACTOR_EN_ITEM00,      {   2153,   -260,   -779 }, {      0,      0,      0 }, 0x3C00 },
};

PolygonType0 spot10_room_3PolygonType0_000130 = { 
    0, 1,
    spot10_room_3PolygonDlist_00013C,
    spot10_room_3PolygonDlist_00013C + ARRAY_COUNTU(spot10_room_3PolygonDlist_00013C)
};

PolygonDlist spot10_room_3PolygonDlist_00013C[1] = {
    { spot10_room_3DL_0028C0, spot10_room_3DL_005298 },
};

s32 spot10_room_3_terminatorMaybe_000144 = { 0x01000000 };

u8 spot10_room_3_possiblePadding_000148[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot10_room_3Set_000150[] = {
    SCENE_CMD_ECHO_SETTINGS(9),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot10_room_3PolygonType0_000130),
    SCENE_CMD_OBJECT_LIST(12, spot10_room_3ObjectList_000190),
    SCENE_CMD_ACTOR_LIST(6, spot10_room_3ActorList_0001A8),
    SCENE_CMD_END(),
};

s16 spot10_room_3ObjectList_000190[] = {
    OBJECT_KM1,
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

ActorEntry spot10_room_3ActorList_0001A8[] = {
    { ACTOR_EN_RIVER_SOUND, {   1596,      0,  -1067 }, {      0,      0,      0 }, 0x000C },
    { ACTOR_OBJECT_KANKYO,  {   1735,      0,   -792 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_OKUTA,       {   2114,    -20,   -847 }, {      0, 0XC000,      0 }, 0xFF00 },
    { ACTOR_EN_MD,          {   1599,      0,   -980 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_WEATHER_TAG, {   2135,   -190,   -847 }, {      0,      0,      0 }, 0x0202 },
    { ACTOR_SHOT_SUN,       {   1930,      0,   -795 }, {      0,      0,      0 }, 0xFF41 },
};

u8 spot10_room_3_possiblePadding_000208[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot10_room_3Set_000210[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&spot10_room_3PolygonType0_000130),
    SCENE_CMD_END(),
};

Vtx spot10_room_3Vtx_000240[] = {
#include "assets/scenes/overworld/spot10/spot10_room_3Vtx_000240.vtx.inc"
};

Gfx spot10_room_3DL_000440[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_3Vtx_000240[24], 8, 0),
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
    gsSPVertex(spot10_room_3Vtx_000240, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(4, 7, 8, 0, 4, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(21, 20, 11, 0, 21, 11, 10, 0),
    gsSP2Triangles(0, 18, 21, 0, 0, 21, 1, 0),
    gsSP2Triangles(21, 10, 1, 0, 14, 13, 15, 0),
    gsSP2Triangles(13, 22, 15, 0, 13, 12, 22, 0),
    gsSP2Triangles(17, 16, 18, 0, 16, 23, 18, 0),
    gsSP1Triangle(23, 19, 18, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_3Vtx_000588[] = {
#include "assets/scenes/overworld/spot10/spot10_room_3Vtx_000588.vtx.inc"
};

Gfx spot10_room_3DL_000A68[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_3Vtx_000588[70], 8, 0),
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
    gsSPVertex(spot10_room_3Vtx_000588, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(1, 3, 4, 0, 3, 5, 4, 0),
    gsSP2Triangles(5, 6, 4, 0, 7, 8, 2, 0),
    gsSP2Triangles(7, 9, 8, 0, 10, 9, 7, 0),
    gsSP2Triangles(10, 11, 9, 0, 12, 11, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_3Vtx_000588[13], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 3, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_3Vtx_000588[21], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00C230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_3Vtx_000588[25], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_3Vtx_000588[33], 21, 0),
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
    gsSPVertex(&spot10_room_3Vtx_000588[54], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_3Vtx_000D50[] = {
#include "assets/scenes/overworld/spot10/spot10_room_3Vtx_000D50.vtx.inc"
};

Gfx spot10_room_3DL_0011E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_3Vtx_000D50[65], 8, 0),
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
    gsSPVertex(spot10_room_3Vtx_000D50, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(1, 3, 4, 0, 3, 5, 4, 0),
    gsSP2Triangles(5, 6, 4, 0, 7, 8, 2, 0),
    gsSP2Triangles(7, 9, 8, 0, 10, 9, 7, 0),
    gsSP2Triangles(10, 11, 9, 0, 12, 11, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_3Vtx_000D50[13], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 3, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_3Vtx_000D50[21], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00C230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_3Vtx_000D50[25], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_3Vtx_000D50[33], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 3, 5, 0, 6, 4, 5, 0),
    gsSP2Triangles(7, 6, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 10, 14, 0),
    gsSP2Triangles(14, 15, 12, 0, 6, 5, 8, 0),
    gsSP2Triangles(9, 14, 10, 0, 0, 5, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00C230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_3Vtx_000D50[49], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_3Vtx_0014B0[] = {
#include "assets/scenes/overworld/spot10/spot10_room_3Vtx_0014B0.vtx.inc"
};

Gfx spot10_room_3DL_001920[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_3Vtx_0014B0[63], 8, 0),
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
    gsSPVertex(spot10_room_3Vtx_0014B0, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(1, 3, 4, 0, 3, 5, 4, 0),
    gsSP2Triangles(5, 6, 4, 0, 7, 8, 2, 0),
    gsSP2Triangles(7, 9, 8, 0, 10, 9, 7, 0),
    gsSP2Triangles(10, 11, 9, 0, 12, 11, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_3Vtx_0014B0[13], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 3, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_3Vtx_0014B0[21], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00C230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_3Vtx_0014B0[25], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_3Vtx_0014B0[33], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 3, 5, 0, 6, 4, 5, 0),
    gsSP2Triangles(7, 6, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(2, 12, 13, 0, 12, 10, 13, 0),
    gsSP2Triangles(13, 0, 2, 0, 6, 5, 8, 0),
    gsSP2Triangles(9, 13, 10, 0, 0, 5, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00C230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_3Vtx_0014B0[47], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_3Vtx_001BF0[] = {
#include "assets/scenes/overworld/spot10/spot10_room_3Vtx_001BF0.vtx.inc"
};

Gfx spot10_room_3DL_0021D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_3Vtx_001BF0[86], 8, 0),
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
    gsSPVertex(spot10_room_3Vtx_001BF0, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_room_3Tex_0038F8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_3Vtx_001BF0[20], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_room_3Tex_0028F8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_3Vtx_001BF0[24], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_room_3Tex_0038F8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_3Vtx_001BF0[30], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 0, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 8, 5, 0, 8, 9, 5, 0),
    gsSP2Triangles(1, 3, 8, 0, 1, 8, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_room_3Tex_0048F8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_3Vtx_001BF0[40], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00DA30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_3Vtx_001BF0[44], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(18, 20, 21, 0, 18, 21, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_room_3Tex_0048F8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_3Vtx_001BF0[66], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 5, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 18, 19, 16, 0),
    gsSP2Triangles(14, 16, 19, 0, 14, 19, 12, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_3Vtx_0024F8[] = {
#include "assets/scenes/overworld/spot10/spot10_room_3Vtx_0024F8.vtx.inc"
};

Gfx spot10_room_3DL_002778[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_3Vtx_0024F8[32], 8, 0),
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
    gsSPVertex(spot10_room_3Vtx_0024F8, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot10_sceneTex_00D230, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 193, 175, 90, 255),
    gsSPVertex(&spot10_room_3Vtx_0024F8[16], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx spot10_room_3DL_0028C0[] = {
    gsSPDisplayList(spot10_room_3DL_000440),
    gsSPDisplayList(spot10_room_3DL_000A68),
    gsSPDisplayList(spot10_room_3DL_0011E0),
    gsSPDisplayList(spot10_room_3DL_001920),
    gsSPDisplayList(spot10_room_3DL_0021D0),
    gsSPDisplayList(spot10_room_3DL_002778),
    gsSPEndDisplayList(),
};

u64 spot10_room_3Tex_0028F8[] = {
#include "assets/scenes/overworld/spot10/spot10_room_3Tex_0028F8.rgba16.inc.c"
};

u64 spot10_room_3Tex_0038F8[] = {
#include "assets/scenes/overworld/spot10/spot10_room_3Tex_0038F8.rgba16.inc.c"
};

u64 spot10_room_3Tex_0048F8[] = {
#include "assets/scenes/overworld/spot10/spot10_room_3Tex_0048F8.rgba16.inc.c"
};

u8 spot10_room_3_possiblePadding_0050F8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx spot10_room_3Vtx_005100[] = {
#include "assets/scenes/overworld/spot10/spot10_room_3Vtx_005100.vtx.inc"
};

Gfx spot10_room_3DL_0051C0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_3Vtx_005100[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot10_room_3Tex_0052A8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 14, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPDisplayList(0x09000000),
    gsSPVertex(spot10_room_3Vtx_005100, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx spot10_room_3DL_005298[] = {
    gsSPDisplayList(spot10_room_3DL_0051C0),
    gsSPEndDisplayList(),
};

u64 spot10_room_3Tex_0052A8[] = {
#include "assets/scenes/overworld/spot10/spot10_room_3Tex_0052A8.rgba16.inc.c"
};

