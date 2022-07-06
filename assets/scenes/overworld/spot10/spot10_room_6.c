#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "spot10_room_6.h"
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
#include "spot10_room_7.h"
#include "spot10_room_8.h"
#include "spot10_room_9.h"

SceneCmd spot10_room_6Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(spot10_room_6AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(9),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot10_room_6PolygonType0_0000E0),
    SCENE_CMD_OBJECT_LIST(11, spot10_room_6ObjectList_000058),
    SCENE_CMD_ACTOR_LIST(7, spot10_room_6ActorList_000070),
    SCENE_CMD_END(),
};

SceneCmd* spot10_room_6AlternateHeaders0x000048[] = {
    NULL,
    spot10_room_6Set_000100,
    NULL,
    spot10_room_6Set_000190,
};

s16 spot10_room_6ObjectList_000058[] = {
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

ActorEntry spot10_room_6ActorList_000070[] = {
    { ACTOR_OBJECT_KANKYO,   {    509,    -20,  -1568 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_OBJ_MURE,        {     77,     28,  -1590 }, {      0,      0,      0 }, 0x5324 },
    { ACTOR_EN_SHOPNUTS,     {    653,      0,  -1726 }, {      0, 0XED83,      0 }, 0x0000 },
    { ACTOR_EN_SHOPNUTS,     {    443,      0,  -1357 }, {      0, 0X8000,      0 }, 0x0001 },
    { ACTOR_OBJ_MAKEKINSUTA, {    610,      0,  -1770 }, {      0,      0,      0 }, 0x4E02 },
    { ACTOR_OBJ_BEAN,        {    610,      0,  -1770 }, {      0,      0,      0 }, 0x1F12 },
    { ACTOR_DOOR_ANA,        {     80,    -20,  -1600 }, {      0, 0X4000,    0XC }, 0x00F3 },
};

PolygonType0 spot10_room_6PolygonType0_0000E0 = { 
    0, 1,
    spot10_room_6PolygonDlist_0000EC,
    spot10_room_6PolygonDlist_0000EC + ARRAY_COUNTU(spot10_room_6PolygonDlist_0000EC)
};

PolygonDlist spot10_room_6PolygonDlist_0000EC[1] = {
    { spot10_room_6DL_0022B8, NULL },
};

s32 spot10_room_6_terminatorMaybe_0000F4 = { 0x01000000 };

u8 spot10_room_6_possiblePadding_0000F8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot10_room_6Set_000100[] = {
    SCENE_CMD_ECHO_SETTINGS(9),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&spot10_room_6PolygonType0_0000E0),
    SCENE_CMD_OBJECT_LIST(12, spot10_room_6ObjectList_000140),
    SCENE_CMD_ACTOR_LIST(3, spot10_room_6ActorList_000158),
    SCENE_CMD_END(),
};

s16 spot10_room_6ObjectList_000140[] = {
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

ActorEntry spot10_room_6ActorList_000158[] = {
    { ACTOR_DOOR_ANA, {     80,    -20,  -1600 }, {      0, 0X4000,    0XC }, 0x00F3 },
    { ACTOR_EN_SW,    {    772,    210,  -1808 }, {      0, 0XE000,      0 }, 0xAE04 },
    { ACTOR_OBJ_BEAN, {    610,      0,  -1770 }, {      0,      0,      0 }, 0x0112 },
};

u8 spot10_room_6_possiblePadding_000188[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd spot10_room_6Set_000190[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&spot10_room_6PolygonType0_0000E0),
    SCENE_CMD_END(),
};

Vtx spot10_room_6Vtx_0001C0[] = {
#include "assets/scenes/overworld/spot10/spot10_room_6Vtx_0001C0.vtx.inc"
};

Gfx spot10_room_6DL_0004B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_6Vtx_0001C0[39], 8, 0),
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
    gsSPVertex(spot10_room_6Vtx_0001C0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 2, 5, 0, 6, 4, 5, 0),
    gsSP2Triangles(7, 8, 9, 0, 8, 4, 9, 0),
    gsSP2Triangles(7, 10, 11, 0, 7, 9, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 12, 15, 0),
    gsSP2Triangles(6, 15, 12, 0, 15, 6, 5, 0),
    gsSP2Triangles(5, 16, 15, 0, 16, 5, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 8, 19, 18, 0),
    gsSP2Triangles(8, 18, 4, 0, 2, 4, 18, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 21, 23, 0),
    gsSP2Triangles(25, 21, 24, 0, 26, 25, 24, 0),
    gsSP2Triangles(27, 25, 26, 0, 27, 28, 25, 0),
    gsSP2Triangles(29, 28, 27, 0, 30, 29, 27, 0),
    gsSP1Triangle(31, 29, 30, 0),
    gsSPVertex(&spot10_room_6Vtx_0001C0[32], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 3, 0, 5, 4, 6, 0),
    gsSP1Triangle(3, 5, 1, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_6Vtx_000628[] = {
#include "assets/scenes/overworld/spot10/spot10_room_6Vtx_000628.vtx.inc"
};

Gfx spot10_room_6DL_0010D8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_6Vtx_000628[163], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot10_sceneTex_00C230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot10_room_6Vtx_000628, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 15, 0, 13, 12, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_6Vtx_000628[16], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 1, 7, 0, 4, 0, 8, 0),
    gsSP2Triangles(9, 5, 4, 0, 8, 9, 4, 0),
    gsSP2Triangles(3, 5, 10, 0, 11, 6, 7, 0),
    gsSP2Triangles(6, 12, 1, 0, 12, 2, 1, 0),
    gsSP2Triangles(2, 13, 0, 0, 0, 13, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00C230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_6Vtx_000628[30], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F230, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_6Vtx_000628[38], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_6Vtx_000628[42], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 4, 2, 0, 3, 5, 6, 0),
    gsSP2Triangles(3, 6, 4, 0, 5, 7, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00DA30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_6Vtx_000628[50], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(2, 3, 4, 0, 4, 3, 5, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 7, 9, 0, 11, 10, 9, 0),
    gsSP2Triangles(11, 12, 10, 0, 12, 11, 6, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&spot10_room_6Vtx_000628[82], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&spot10_room_6Vtx_000628[114], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 10, 8, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 14, 12, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 18, 16, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 22, 20, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 26, 24, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 30, 28, 0),
    gsSPVertex(&spot10_room_6Vtx_000628[145], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 13, 0, 16, 13, 12, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_6Vtx_001488[] = {
#include "assets/scenes/overworld/spot10/spot10_room_6Vtx_001488.vtx.inc"
};

Gfx spot10_room_6DL_001798[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_6Vtx_001488[41], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot10_room_6Tex_0022E8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 15, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot10_room_6Vtx_001488, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 8, 0),
    gsSP2Triangles(4, 6, 8, 0, 6, 9, 8, 0),
    gsSP2Triangles(6, 10, 9, 0, 0, 9, 10, 0),
    gsSP2Triangles(0, 2, 9, 0, 2, 8, 9, 0),
    gsSP2Triangles(2, 3, 8, 0, 3, 7, 8, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 14, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_room_6Tex_002AE8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&spot10_room_6Vtx_001488[15], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_6Vtx_001928[] = {
#include "assets/scenes/overworld/spot10/spot10_room_6Vtx_001928.vtx.inc"
};

Gfx spot10_room_6DL_001D38[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_6Vtx_001928[57], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(spot10_room_6Tex_0032E8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(spot10_room_6Vtx_001928, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(3, 4, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(spot10_sceneTex_00F430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&spot10_room_6Vtx_001928[5], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 0, 0, 4, 5, 0, 0),
    gsSP2Triangles(2, 6, 3, 0, 7, 4, 3, 0),
    gsSP2Triangles(8, 4, 9, 0, 8, 5, 4, 0),
    gsSP2Triangles(9, 4, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 14, 12, 0, 14, 15, 12, 0),
    gsSP2Triangles(16, 13, 12, 0, 12, 15, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 20, 13, 16, 0),
    gsSP2Triangles(19, 21, 20, 0, 21, 11, 20, 0),
    gsSP2Triangles(11, 13, 20, 0, 20, 22, 18, 0),
    gsSP2Triangles(16, 22, 20, 0, 11, 23, 14, 0),
    gsSP2Triangles(24, 23, 11, 0, 25, 24, 11, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 26, 28, 0),
    gsSP2Triangles(24, 26, 29, 0, 26, 30, 29, 0),
    gsSP1Triangle(30, 31, 29, 0),
    gsSPVertex(&spot10_room_6Vtx_001928[37], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(10, 5, 11, 0, 10, 3, 5, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 12, 15, 0),
    gsSP2Triangles(16, 15, 12, 0, 10, 17, 18, 0),
    gsSP1Triangle(17, 19, 18, 0),
    gsSPEndDisplayList(),
};

Vtx spot10_room_6Vtx_001EF0[] = {
#include "assets/scenes/overworld/spot10/spot10_room_6Vtx_001EF0.vtx.inc"
};

Gfx spot10_room_6DL_002170[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&spot10_room_6Vtx_001EF0[32], 8, 0),
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
    gsSPVertex(spot10_room_6Vtx_001EF0, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(spot10_sceneTex_00D230, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0, 193, 175, 90, 255),
    gsSPVertex(&spot10_room_6Vtx_001EF0[16], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx spot10_room_6DL_0022B8[] = {
    gsSPDisplayList(spot10_room_6DL_0004B0),
    gsSPDisplayList(spot10_room_6DL_0010D8),
    gsSPDisplayList(spot10_room_6DL_001798),
    gsSPDisplayList(spot10_room_6DL_001D38),
    gsSPDisplayList(spot10_room_6DL_002170),
    gsSPEndDisplayList(),
};

u64 spot10_room_6Tex_0022E8[] = {
#include "assets/scenes/overworld/spot10/spot10_room_6Tex_0022E8.rgba16.inc.c"
};

u64 spot10_room_6Tex_002AE8[] = {
#include "assets/scenes/overworld/spot10/spot10_room_6Tex_002AE8.rgba16.inc.c"
};

u64 spot10_room_6Tex_0032E8[] = {
#include "assets/scenes/overworld/spot10/spot10_room_6Tex_0032E8.rgba16.inc.c"
};

