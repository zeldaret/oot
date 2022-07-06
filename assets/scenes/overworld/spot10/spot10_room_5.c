#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "spot10_room_5.h"
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
#include "spot10_room_6.h"
#include "spot10_room_7.h"
#include "spot10_room_8.h"
#include "spot10_room_9.h"

SceneCmd spot10_room_5Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(spot10_room_5AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(9),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot10_room_5PolygonType0_0000C0),
    SCENE_CMD_OBJECT_LIST(12, spot10_room_5ObjectList_000058),
    SCENE_CMD_ACTOR_LIST(5, spot10_room_5ActorList_000070),
    SCENE_CMD_END(),
};

SceneCmd* spot10_room_5AlternateHeaders0x000048[] = {
    NULL,
    spot10_room_5Set_0000E0,
    NULL,
    spot10_room_5Set_000180,
};

s16 spot10_room_5ObjectList_000058[] = {
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

ActorEntry spot10_room_5ActorList_000070[] = {
    { ACTOR_OBJECT_KANKYO,   {  -1191,   -220,   1626 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_SHOPNUTS,     {  -1137,   -200,   2180 }, {      0, 0XC000,      0 }, 0x0009 },
    { ACTOR_OBJ_MAKEKINSUTA, {  -1220,      0,    935 }, {      0,      0,      0 }, 0x4E01 },
    { ACTOR_OBJ_BEAN,        {  -1220,      0,    935 }, {      0,      0,      0 }, 0x1F04 },
    { ACTOR_EN_GS,           {  -1305,   -226,   2300 }, {      0, 0X8000,      0 }, 0x381D },
};

PolygonType0 spot10_room_5PolygonType0_0000C0 = { 
    0, 1,
    spot10_room_5PolygonDlist_0000CC,
    spot10_room_5PolygonDlist_0000CC + ARRAY_COUNTU(spot10_room_5PolygonDlist_0000CC)
};

PolygonDlist spot10_room_5PolygonDlist_0000CC[1] = {
    { spot10_room_5DL_003780, NULL },
};

s32 spot10_room_5_terminatorMaybe_0000D4 = { 0x01000000 };

u8 spot10_room_5_possiblePadding_0000D8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot10_room_5Set_0000E0[] = {
    SCENE_CMD_ECHO_SETTINGS(9),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot10_room_5PolygonType0_0000C0),
    SCENE_CMD_OBJECT_LIST(12, spot10_room_5ObjectList_000120),
    SCENE_CMD_ACTOR_LIST(4, spot10_room_5ActorList_000138),
    SCENE_CMD_END(),
};

s16 spot10_room_5ObjectList_000120[] = {
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

ActorEntry spot10_room_5ActorList_000138[] = {
    { ACTOR_OBJECT_KANKYO, {  -1191,   -220,   1626 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_GS,         {  -1305,   -227,   2300 }, {      0, 0X8000,      0 }, 0x381D },
    { ACTOR_EN_MM2,        {  -1140,   -220,   1569 }, {      0, 0XD1C7,      0 }, 0x0001 },
    { ACTOR_OBJ_BEAN,      {  -1220,      0,    935 }, {      0,      0,    0X1 }, 0x0204 },
};

u8 spot10_room_5_possiblePadding_000178[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot10_room_5Set_000180[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&spot10_room_5PolygonType0_0000C0),
    SCENE_CMD_OBJECT_LIST(3, spot10_room_5ObjectList_0001C0),
    SCENE_CMD_ACTOR_LIST(4, spot10_room_5ActorList_0001C8),
    SCENE_CMD_END(),
};

s16 spot10_room_5ObjectList_0001C0[] = {
    OBJECT_SHOPNUTS,
    OBJECT_MAMENOKI,
    OBJECT_SA,
};

ActorEntry spot10_room_5ActorList_0001C8[] = {
    { ACTOR_EN_SHOPNUTS,   {  -1121,   -200,   2183 }, {      0, 0XC000,      0 }, 0x0002 },
    { ACTOR_OBJECT_KANKYO, {  -1191,   -220,   1626 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_OBJ_BEAN,      {  -1180,   -360,   1363 }, {      0,      0,      0 }, 0x1F04 },
    { ACTOR_DEMO_SA,       {  -1208,   -220,   1602 }, {      0,      0,      0 }, 0x0005 },
};

u8 spot10_room_5_possiblePadding_000208[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx spot10_room_5Vtx_000210[] = {
#include "assets/scenes/overworld/spot10/spot10_room_5Vtx_000210.vtx.inc"
};

Gfx spot10_room_5DL_000380[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_5Vtx_000210[15], 8, 0),
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
    gsSPVertex(spot10_room_5Vtx_000210, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(6, 8, 9, 0, 8, 6, 5, 0),
    gsSP2Triangles(5, 10, 8, 0, 11, 8, 10, 0),
    gsSP2Triangles(12, 13, 11, 0, 12, 11, 14, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_5Vtx_000490[] = {
#include "assets/scenes/overworld/spot10/spot10_room_5Vtx_000490.vtx.inc"
};

Gfx spot10_room_5DL_000AC0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_5Vtx_000490[91], 8, 0),
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
    gsSPVertex(spot10_room_5Vtx_000490, 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 4, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(9, 10, 8, 0, 11, 12, 6, 0),
    gsSP2Triangles(11, 13, 12, 0, 14, 13, 11, 0),
    gsSP2Triangles(14, 15, 13, 0, 16, 15, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_5Vtx_000490[17], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 3, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_5Vtx_000490[25], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00C230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_5Vtx_000490[29], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_5Vtx_000490[37], 20, 0),
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
    gsSPVertex(&spot10_room_5Vtx_000490[57], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00DA30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_5Vtx_000490[73], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(0, 4, 5, 0, 6, 5, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 7, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP1Triangle(14, 16, 17, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_5Vtx_000E20[] = {
#include "assets/scenes/overworld/spot10/spot10_room_5Vtx_000E20.vtx.inc"
};

Gfx spot10_room_5DL_0013B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_5Vtx_000E20[81], 8, 0),
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
    gsSPVertex(spot10_room_5Vtx_000E20, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 3, 1, 0, 4, 5, 3, 0),
    gsSP2Triangles(4, 6, 5, 0, 0, 7, 8, 0),
    gsSP2Triangles(7, 9, 8, 0, 8, 9, 10, 0),
    gsSP2Triangles(9, 11, 10, 0, 10, 11, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_5Vtx_000E20[13], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 3, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_5Vtx_000E20[21], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00C230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_5Vtx_000E20[25], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_5Vtx_000E20[33], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 4, 0, 7, 8, 6, 0),
    gsSP2Triangles(9, 8, 10, 0, 11, 12, 0, 0),
    gsSP2Triangles(9, 13, 14, 0, 8, 14, 15, 0),
    gsSP2Triangles(8, 15, 16, 0, 6, 16, 17, 0),
    gsSP2Triangles(18, 19, 4, 0, 2, 20, 11, 0),
    gsSP2Triangles(2, 19, 20, 0, 11, 0, 2, 0),
    gsSP2Triangles(6, 8, 16, 0, 19, 2, 4, 0),
    gsSP1Triangle(14, 8, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00C230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_5Vtx_000E20[54], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00DA30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_5Vtx_000E20[70], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 2, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 8, 9, 0, 10, 7, 4, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_5Vtx_0016F8[] = {
#include "assets/scenes/overworld/spot10/spot10_room_5Vtx_0016F8.vtx.inc"
};

Gfx spot10_room_5DL_001BA8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_5Vtx_0016F8[67], 8, 0),
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
    gsSPVertex(spot10_room_5Vtx_0016F8, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(1, 3, 4, 0, 3, 5, 4, 0),
    gsSP2Triangles(5, 6, 4, 0, 7, 8, 2, 0),
    gsSP2Triangles(7, 9, 8, 0, 10, 9, 7, 0),
    gsSP2Triangles(10, 11, 9, 0, 12, 11, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_5Vtx_0016F8[13], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 3, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_5Vtx_0016F8[21], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00C230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_5Vtx_0016F8[25], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_5Vtx_0016F8[33], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 3, 5, 0, 6, 4, 5, 0),
    gsSP2Triangles(7, 6, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(2, 12, 13, 0, 12, 10, 13, 0),
    gsSP2Triangles(13, 0, 2, 0, 6, 5, 8, 0),
    gsSP2Triangles(9, 13, 10, 0, 0, 5, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00C230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_5Vtx_0016F8[47], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00DA30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_5Vtx_0016F8[63], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_5Vtx_001EC8[] = {
#include "assets/scenes/overworld/spot10/spot10_room_5Vtx_001EC8.vtx.inc"
};

Gfx spot10_room_5DL_002058[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_5Vtx_001EC8[17], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot10_sceneTex_00F430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot10_room_5Vtx_001EC8, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 0, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 6, 4, 7, 0),
    gsSP2Triangles(7, 8, 6, 0, 7, 9, 8, 0),
    gsSP1Triangle(9, 7, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_room_5Tex_0067F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_5Vtx_001EC8[11], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 3, 5, 4, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_5Vtx_002188[] = {
#include "assets/scenes/overworld/spot10/spot10_room_5Vtx_002188.vtx.inc"
};

Gfx spot10_room_5DL_0022B8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_5Vtx_002188[11], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot10_sceneTex_00F430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot10_room_5Vtx_002188, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(1, 3, 4, 0, 4, 3, 5, 0),
    gsSP2Triangles(5, 6, 4, 0, 6, 5, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_room_5Tex_0067F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_5Vtx_002188[8], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_5Vtx_0023D0[] = {
#include "assets/scenes/overworld/spot10/spot10_room_5Vtx_0023D0.vtx.inc"
};

Gfx spot10_room_5DL_002500[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_5Vtx_0023D0[11], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot10_sceneTex_00F430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot10_room_5Vtx_0023D0, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(1, 3, 4, 0, 4, 3, 5, 0),
    gsSP2Triangles(5, 6, 4, 0, 6, 5, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_room_5Tex_0067F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_5Vtx_0023D0[8], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_5Vtx_002618[] = {
#include "assets/scenes/overworld/spot10/spot10_room_5Vtx_002618.vtx.inc"
};

Gfx spot10_room_5DL_002748[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_5Vtx_002618[11], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot10_sceneTex_00F430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot10_room_5Vtx_002618, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(1, 3, 4, 0, 4, 3, 5, 0),
    gsSP2Triangles(5, 6, 4, 0, 6, 5, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_room_5Tex_0067F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_5Vtx_002618[8], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_5Vtx_002860[] = {
#include "assets/scenes/overworld/spot10/spot10_room_5Vtx_002860.vtx.inc"
};

Gfx spot10_room_5DL_002990[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_5Vtx_002860[11], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot10_sceneTex_00F430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot10_room_5Vtx_002860, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(1, 3, 4, 0, 4, 3, 5, 0),
    gsSP2Triangles(5, 6, 4, 0, 6, 5, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_room_5Tex_0067F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_5Vtx_002860[8], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_5Vtx_002AA8[] = {
#include "assets/scenes/overworld/spot10/spot10_room_5Vtx_002AA8.vtx.inc"
};

Gfx spot10_room_5DL_002BD8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_5Vtx_002AA8[11], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot10_sceneTex_00F430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot10_room_5Vtx_002AA8, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(1, 3, 4, 0, 4, 3, 5, 0),
    gsSP2Triangles(5, 6, 4, 0, 6, 5, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_room_5Tex_0067F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_5Vtx_002AA8[8], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_5Vtx_002CF0[] = {
#include "assets/scenes/overworld/spot10/spot10_room_5Vtx_002CF0.vtx.inc"
};

Gfx spot10_room_5DL_002E30[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_5Vtx_002CF0[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot10_room_5Tex_0047F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 0, 0, 0, 255),
    gsSPVertex(spot10_room_5Vtx_002CF0, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&spot10_room_5Vtx_002CF0[6], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_5Vtx_002F18[] = {
#include "assets/scenes/overworld/spot10/spot10_room_5Vtx_002F18.vtx.inc"
};

Gfx spot10_room_5DL_003258[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_5Vtx_002F18[44], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot10_room_5Tex_0057F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot10_room_5Vtx_002F18, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 4, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(14, 12, 15, 0, 12, 13, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_room_5Tex_0037F0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&spot10_room_5Vtx_002F18[20], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_5Vtx_0033B8[] = {
#include "assets/scenes/overworld/spot10/spot10_room_5Vtx_0033B8.vtx.inc"
};

Gfx spot10_room_5DL_003638[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_5Vtx_0033B8[32], 8, 0),
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
    gsSPVertex(spot10_room_5Vtx_0033B8, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot10_sceneTex_00D230, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 193, 175, 90, 255),
    gsSPVertex(&spot10_room_5Vtx_0033B8[16], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx spot10_room_5DL_003780[] = {
    gsSPDisplayList(spot10_room_5DL_000380),
    gsSPDisplayList(spot10_room_5DL_000AC0),
    gsSPDisplayList(spot10_room_5DL_0013B0),
    gsSPDisplayList(spot10_room_5DL_001BA8),
    gsSPDisplayList(spot10_room_5DL_002058),
    gsSPDisplayList(spot10_room_5DL_0022B8),
    gsSPDisplayList(spot10_room_5DL_002500),
    gsSPDisplayList(spot10_room_5DL_002748),
    gsSPDisplayList(spot10_room_5DL_002990),
    gsSPDisplayList(spot10_room_5DL_002BD8),
    gsSPDisplayList(spot10_room_5DL_002E30),
    gsSPDisplayList(spot10_room_5DL_003258),
    gsSPDisplayList(spot10_room_5DL_003638),
    gsSPEndDisplayList(),
};

u64 spot10_room_5Tex_0037F0[] = {
#include "assets/scenes/overworld/spot10/spot10_room_5Tex_0037F0.rgba16.inc.c"
};

u64 spot10_room_5Tex_0047F0[] = {
#include "assets/scenes/overworld/spot10/spot10_room_5Tex_0047F0.rgba16.inc.c"
};

u64 spot10_room_5Tex_0057F0[] = {
#include "assets/scenes/overworld/spot10/spot10_room_5Tex_0057F0.rgba16.inc.c"
};

u64 spot10_room_5Tex_0067F0[] = {
#include "assets/scenes/overworld/spot10/spot10_room_5Tex_0067F0.rgba16.inc.c"
};

