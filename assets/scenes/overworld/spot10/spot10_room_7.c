#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "spot10_room_7.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "spot10_scene.h"
#include "spot10_room_0.h"
#include "spot10_room_1.h"
#include "spot10_room_2.h"
#include "spot10_room_3.h"
#include "spot10_room_4.h"
#include "spot10_room_5.h"
#include "spot10_room_6.h"
#include "spot10_room_8.h"
#include "spot10_room_9.h"

SceneCmd spot10_room_7Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(spot10_room_7AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(9),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot10_room_7PolygonType0_0000D0),
    SCENE_CMD_OBJECT_LIST(11, spot10_room_7ObjectList_000058),
    SCENE_CMD_ACTOR_LIST(6, spot10_room_7ActorList_000070),
    SCENE_CMD_END(),
};

SceneCmd* spot10_room_7AlternateHeaders0x000048[] = {
    NULL,
    spot10_room_7Set_0000F0,
    NULL,
    spot10_room_7Set_0001B0,
};

s16 spot10_room_7ObjectList_000058[] = {
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

ActorEntry spot10_room_7ActorList_000070[] = {
    { ACTOR_EN_RIVER_SOUND, {   1348,      0,  -2389 }, {      0,      0,      0 }, 0x000C },
    { ACTOR_EN_KUSA,        {   1445,      0,  -2238 }, {      0, 0XC000,      0 }, 0x0200 },
    { ACTOR_EN_KUSA,        {   1433,      0,  -2276 }, {      0, 0XC000,      0 }, 0x0200 },
    { ACTOR_EN_KUSA,        {   1476,      0,  -2251 }, {      0, 0XC000,      0 }, 0x0210 },
    { ACTOR_EN_ITEM00,      {   1720,      0,  -2510 }, {      0,      0,      0 }, 0x1301 },
    { ACTOR_OBJ_BOMBIWA,    {   1720,      0,  -2510 }, {      0,      0,      0 }, 0x001E },
};

PolygonType0 spot10_room_7PolygonType0_0000D0 = { 
    0, 1,
    spot10_room_7PolygonDlist_0000DC,
    spot10_room_7PolygonDlist_0000DC + ARRAY_COUNTU(spot10_room_7PolygonDlist_0000DC)
};

PolygonDlist spot10_room_7PolygonDlist_0000DC[1] = {
    { spot10_room_7DL_002588, NULL },
};

s32 spot10_room_7_terminatorMaybe_0000E4 = { 0x01000000 };

u8 spot10_room_7_possiblePadding_0000E8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot10_room_7Set_0000F0[] = {
    SCENE_CMD_ECHO_SETTINGS(9),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot10_room_7PolygonType0_0000D0),
    SCENE_CMD_OBJECT_LIST(12, spot10_room_7ObjectList_000130),
    SCENE_CMD_ACTOR_LIST(6, spot10_room_7ActorList_000148),
    SCENE_CMD_END(),
};

s16 spot10_room_7ObjectList_000130[] = {
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

ActorEntry spot10_room_7ActorList_000148[] = {
    { ACTOR_EN_RIVER_SOUND, {   1348,      0,  -2389 }, {      0,      0,      0 }, 0x000C },
    { ACTOR_EN_ITEM00,      {   1720,      0,  -2510 }, {      0,      0,      0 }, 0x1301 },
    { ACTOR_EN_KUSA,        {   1445,      0,  -2238 }, {      0, 0XC000,      0 }, 0x0700 },
    { ACTOR_EN_KUSA,        {   1476,      0,  -2251 }, {      0, 0XC000,      0 }, 0x0700 },
    { ACTOR_EN_KUSA,        {   1433,      0,  -2276 }, {      0, 0XC000,      0 }, 0x0700 },
    { ACTOR_OBJ_BOMBIWA,    {   1720,      0,  -2510 }, {      0,      0,      0 }, 0x001E },
};

u8 spot10_room_7_possiblePadding_0001A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot10_room_7Set_0001B0[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&spot10_room_7PolygonType0_0000D0),
    SCENE_CMD_END(),
};

Vtx spot10_room_7Vtx_0001E0[] = {
#include "assets/scenes/overworld/spot10/spot10_room_7Vtx_0001E0.vtx.inc"
};

Gfx spot10_room_7DL_0002A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_7Vtx_0001E0[4], 8, 0),
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
    gsSPVertex(spot10_room_7Vtx_0001E0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_7Vtx_000390[] = {
#include "assets/scenes/overworld/spot10/spot10_room_7Vtx_000390.vtx.inc"
};

Gfx spot10_room_7DL_000820[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_7Vtx_000390[65], 8, 0),
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
    gsSPVertex(spot10_room_7Vtx_000390, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(1, 3, 4, 0, 3, 5, 4, 0),
    gsSP2Triangles(5, 6, 4, 0, 7, 8, 2, 0),
    gsSP2Triangles(7, 9, 8, 0, 10, 9, 7, 0),
    gsSP2Triangles(10, 11, 9, 0, 12, 11, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_7Vtx_000390[13], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 3, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_7Vtx_000390[21], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00C230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_7Vtx_000390[25], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_7Vtx_000390[33], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 3, 5, 0, 6, 4, 5, 0),
    gsSP2Triangles(7, 6, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 10, 14, 0),
    gsSP2Triangles(14, 15, 12, 0, 6, 5, 8, 0),
    gsSP2Triangles(9, 14, 10, 0, 0, 5, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00C230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_7Vtx_000390[49], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_7Vtx_000AF0[] = {
#include "assets/scenes/overworld/spot10/spot10_room_7Vtx_000AF0.vtx.inc"
};

Gfx spot10_room_7DL_000F80[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_7Vtx_000AF0[65], 8, 0),
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
    gsSPVertex(spot10_room_7Vtx_000AF0, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(1, 3, 4, 0, 3, 5, 4, 0),
    gsSP2Triangles(5, 6, 4, 0, 7, 8, 2, 0),
    gsSP2Triangles(7, 9, 8, 0, 10, 9, 7, 0),
    gsSP2Triangles(10, 11, 9, 0, 12, 11, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_7Vtx_000AF0[13], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 3, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_7Vtx_000AF0[21], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00C230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_7Vtx_000AF0[25], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_7Vtx_000AF0[33], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 3, 5, 0, 6, 4, 5, 0),
    gsSP2Triangles(7, 6, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 10, 14, 0),
    gsSP2Triangles(14, 15, 12, 0, 6, 5, 8, 0),
    gsSP2Triangles(9, 14, 10, 0, 0, 5, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00C230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_7Vtx_000AF0[49], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_7Vtx_001250[] = {
#include "assets/scenes/overworld/spot10/spot10_room_7Vtx_001250.vtx.inc"
};

Gfx spot10_room_7DL_001720[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_7Vtx_001250[69], 8, 0),
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
    gsSPVertex(spot10_room_7Vtx_001250, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(1, 3, 4, 0, 3, 5, 4, 0),
    gsSP2Triangles(5, 6, 4, 0, 7, 8, 2, 0),
    gsSP2Triangles(7, 9, 8, 0, 10, 9, 7, 0),
    gsSP2Triangles(10, 11, 9, 0, 12, 11, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_7Vtx_001250[13], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 3, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_7Vtx_001250[21], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00C230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_7Vtx_001250[25], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_7Vtx_001250[33], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 8, 2, 0, 2, 11, 12, 0),
    gsSP2Triangles(13, 11, 2, 0, 14, 13, 8, 0),
    gsSP2Triangles(15, 14, 8, 0, 16, 15, 7, 0),
    gsSP2Triangles(3, 17, 18, 0, 12, 19, 0, 0),
    gsSP2Triangles(19, 17, 0, 0, 0, 2, 12, 0),
    gsSP2Triangles(15, 8, 7, 0, 3, 0, 17, 0),
    gsSP1Triangle(2, 8, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00C230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_7Vtx_001250[53], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_7Vtx_001A08[] = {
#include "assets/scenes/overworld/spot10/spot10_room_7Vtx_001A08.vtx.inc"
};

Gfx spot10_room_7DL_001ED8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_7Vtx_001A08[69], 8, 0),
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
    gsSPVertex(spot10_room_7Vtx_001A08, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(1, 3, 4, 0, 3, 5, 4, 0),
    gsSP2Triangles(5, 6, 4, 0, 7, 8, 2, 0),
    gsSP2Triangles(7, 9, 8, 0, 10, 9, 7, 0),
    gsSP2Triangles(10, 11, 9, 0, 12, 11, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_7Vtx_001A08[13], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 3, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_7Vtx_001A08[21], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00C230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_7Vtx_001A08[25], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_7Vtx_001A08[33], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 8, 2, 0, 2, 11, 12, 0),
    gsSP2Triangles(13, 11, 2, 0, 14, 13, 8, 0),
    gsSP2Triangles(15, 14, 8, 0, 16, 15, 7, 0),
    gsSP2Triangles(3, 17, 18, 0, 12, 19, 0, 0),
    gsSP2Triangles(19, 17, 0, 0, 0, 2, 12, 0),
    gsSP2Triangles(15, 8, 7, 0, 3, 0, 17, 0),
    gsSP1Triangle(2, 8, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00C230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_7Vtx_001A08[53], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_7Vtx_0021C0[] = {
#include "assets/scenes/overworld/spot10/spot10_room_7Vtx_0021C0.vtx.inc"
};

Gfx spot10_room_7DL_002440[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_7Vtx_0021C0[32], 8, 0),
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
    gsSPVertex(spot10_room_7Vtx_0021C0, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot10_sceneTex_00D230, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 193, 175, 90, 255),
    gsSPVertex(&spot10_room_7Vtx_0021C0[16], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx spot10_room_7DL_002588[] = {
    gsSPDisplayList(spot10_room_7DL_0002A0),
    gsSPDisplayList(spot10_room_7DL_000820),
    gsSPDisplayList(spot10_room_7DL_000F80),
    gsSPDisplayList(spot10_room_7DL_001720),
    gsSPDisplayList(spot10_room_7DL_001ED8),
    gsSPDisplayList(spot10_room_7DL_002440),
    gsSPEndDisplayList(),
};

