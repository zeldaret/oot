#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "nakaniwa_room_0.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "nakaniwa_scene.h"

SceneCmd nakaniwa_room_0Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(nakaniwa_room_0AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x04, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&nakaniwa_room_0PolygonType0_000100),
    SCENE_CMD_OBJECT_LIST(8, nakaniwa_room_0ObjectList_000060),
    SCENE_CMD_ACTOR_LIST(9, nakaniwa_room_0ActorList_000070),
    SCENE_CMD_END(),
};

SceneCmd* nakaniwa_room_0AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    nakaniwa_room_0Set_000120,
    nakaniwa_room_0Set_0001B0,
    nakaniwa_room_0Set_000240,
};

s16 nakaniwa_room_0ObjectList_000060[] = {
    OBJECT_IM,
    OBJECT_SD,
    OBJECT_GNDD,
    OBJECT_EFC_CRYSTAL_LIGHT,
    OBJECT_TRIFORCE_SPOT,
    OBJECT_LIGHT_RING,
    OBJECT_EFC_STAR_FIELD,
    OBJECT_ZL4,
};

ActorEntry nakaniwa_room_0ActorList_000070[] = {
    { ACTOR_EN_WONDER_ITEM, {      0,    125,    476 }, {      0,      0,      0 }, 0x47C0 },
    { ACTOR_EN_HEISHI2,     {  -1037,     84,     58 }, {      0, 0X4000,      0 }, 0xFF06 },
    { ACTOR_EN_HEISHI2,     {  -1037,     84,    -58 }, {      0, 0X4000,      0 }, 0xFF06 },
    { ACTOR_DEMO_KANKYO,    {   -862,    738,    180 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_DEMO_EFFECT,    {   -905,    755,    209 }, {      0,      0,      0 }, 0xFF08 },
    { ACTOR_EN_WONDER_ITEM, {      0,    125,   -481 }, {      0,      0,    0X4 }, 0x1A81 },
    { ACTOR_EN_ZL4,         {   -485,     84,      0 }, {      0, 0X4000,      0 }, 0x0000 },
    { ACTOR_DEMO_IM,        {    336,     44,      0 }, {      0, 0XC000,      0 }, 0x0005 },
    { ACTOR_EN_VIEWER,      {   -891,     90,    140 }, {      0, 0X8000,      0 }, 0x08FF },
};

PolygonType0 nakaniwa_room_0PolygonType0_000100 = { 
    0, 1,
    nakaniwa_room_0PolygonDlist_00010C,
    nakaniwa_room_0PolygonDlist_00010C + ARRAY_COUNTU(nakaniwa_room_0PolygonDlist_00010C)
};

PolygonDlist nakaniwa_room_0PolygonDlist_00010C[1] = {
    { nakaniwa_room_0DL_007178, nakaniwa_room_0DL_014E98 },
};

s32 nakaniwa_room_0_terminatorMaybe_000114 = { 0x01000000 };

u8 nakaniwa_room_0_possiblePadding_000118[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd nakaniwa_room_0Set_000120[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&nakaniwa_room_0PolygonType0_000100),
    SCENE_CMD_OBJECT_LIST(2, nakaniwa_room_0ObjectList_000160),
    SCENE_CMD_ACTOR_LIST(4, nakaniwa_room_0ActorList_000164),
    SCENE_CMD_END(),
};

s16 nakaniwa_room_0ObjectList_000160[] = {
    OBJECT_SD,
    OBJECT_ZL4,
};

ActorEntry nakaniwa_room_0ActorList_000164[] = {
    { ACTOR_EN_ZL4,     {   -462,     84,      0 }, {      0, 0X4000,      0 }, 0x0000 },
    { ACTOR_EN_HEISHI2, {  -1037,     84,    -58 }, {      0, 0X4000,      0 }, 0xFF06 },
    { ACTOR_EN_HEISHI2, {  -1037,     84,     58 }, {      0, 0X4000,      0 }, 0xFF06 },
    { ACTOR_END_TITLE,  {   -216,     44,     33 }, {      0,      0,      0 }, 0xFFFF },
};

u8 nakaniwa_room_0_possiblePadding_0001A4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd nakaniwa_room_0Set_0001B0[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&nakaniwa_room_0PolygonType0_000100),
    SCENE_CMD_OBJECT_LIST(2, nakaniwa_room_0ObjectList_0001F0),
    SCENE_CMD_ACTOR_LIST(4, nakaniwa_room_0ActorList_0001F4),
    SCENE_CMD_END(),
};

s16 nakaniwa_room_0ObjectList_0001F0[] = {
    OBJECT_ZL1,
    OBJECT_IM,
};

ActorEntry nakaniwa_room_0ActorList_0001F4[] = {
    { ACTOR_EN_HEISHI2, {  -1037,     84,     58 }, {      0, 0X4000,      0 }, 0xFF06 },
    { ACTOR_EN_HEISHI2, {  -1037,     84,    -58 }, {      0, 0X4000,      0 }, 0xFF06 },
    { ACTOR_EN_ZL1,     {   -485,     84,      0 }, {      0, 0X4000,      0 }, 0xFFFF },
    { ACTOR_DEMO_IM,    {    295,     44,      3 }, {      0, 0XC000,      0 }, 0x0003 },
};

u8 nakaniwa_room_0_possiblePadding_000234[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd nakaniwa_room_0Set_000240[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&nakaniwa_room_0PolygonType0_000100),
    SCENE_CMD_OBJECT_LIST(2, nakaniwa_room_0ObjectList_000280),
    SCENE_CMD_ACTOR_LIST(4, nakaniwa_room_0ActorList_000284),
    SCENE_CMD_END(),
};

s16 nakaniwa_room_0ObjectList_000280[] = {
    OBJECT_ZL1,
    OBJECT_IM,
};

ActorEntry nakaniwa_room_0ActorList_000284[] = {
    { ACTOR_EN_HEISHI2, {  -1037,     84,     58 }, {      0, 0X4000,      0 }, 0xFF06 },
    { ACTOR_EN_HEISHI2, {  -1037,     84,    -58 }, {      0, 0X4000,      0 }, 0xFF06 },
    { ACTOR_EN_ZL1,     {   -485,     84,      0 }, {      0, 0X4000,      0 }, 0xFFFF },
    { ACTOR_DEMO_IM,    {    336,     44,      0 }, {      0, 0XC000,      0 }, 0x0005 },
};

u8 nakaniwa_room_0_possiblePadding_0002C4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx nakaniwa_room_0Vtx_0002D0[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Vtx_0002D0.vtx.inc"
};

Gfx nakaniwa_room_0DL_000780[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&nakaniwa_room_0Vtx_0002D0[67], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_012618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, 2, 2),
    gsDPLoadMultiBlock(nakaniwa_room_0Tex_00F618, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 15),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(nakaniwa_room_0Vtx_0002D0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 6, 0),
    gsSP2Triangles(8, 9, 6, 0, 9, 7, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(11, 14, 15, 0, 11, 15, 12, 0),
    gsSP2Triangles(14, 16, 17, 0, 14, 17, 15, 0),
    gsSP2Triangles(16, 18, 17, 0, 18, 19, 17, 0),
    gsSP2Triangles(18, 20, 19, 0, 20, 21, 19, 0),
    gsSP2Triangles(21, 17, 19, 0, 21, 22, 17, 0),
    gsSP2Triangles(22, 23, 17, 0, 23, 15, 17, 0),
    gsSP2Triangles(23, 12, 15, 0, 23, 24, 12, 0),
    gsSP2Triangles(24, 25, 13, 0, 24, 13, 12, 0),
    gsSP2Triangles(20, 26, 21, 0, 26, 27, 21, 0),
    gsSP2Triangles(27, 22, 21, 0, 27, 23, 22, 0),
    gsSP2Triangles(27, 28, 23, 0, 28, 29, 23, 0),
    gsSP2Triangles(29, 24, 23, 0, 29, 30, 25, 0),
    gsSP2Triangles(29, 25, 24, 0, 20, 31, 26, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_0002D0[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 3, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 14, 15, 13, 0),
    gsSP2Triangles(14, 16, 15, 0, 14, 17, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 11, 21, 22, 0),
    gsSP2Triangles(11, 22, 12, 0, 22, 14, 12, 0),
    gsSP2Triangles(22, 23, 14, 0, 23, 24, 14, 0),
    gsSP2Triangles(24, 17, 14, 0, 24, 18, 17, 0),
    gsSP2Triangles(24, 25, 18, 0, 25, 19, 18, 0),
    gsSP2Triangles(21, 26, 27, 0, 21, 27, 22, 0),
    gsSP2Triangles(27, 28, 22, 0, 28, 23, 22, 0),
    gsSP2Triangles(28, 24, 23, 0, 28, 29, 24, 0),
    gsSP2Triangles(29, 30, 24, 0, 30, 25, 24, 0),
    gsSP2Triangles(30, 19, 25, 0, 26, 8, 6, 0),
    gsSP2Triangles(26, 6, 27, 0, 6, 4, 28, 0),
    gsSP2Triangles(6, 28, 27, 0, 4, 1, 29, 0),
    gsSP2Triangles(4, 29, 28, 0, 1, 0, 29, 0),
    gsSP2Triangles(0, 30, 29, 0, 0, 19, 30, 0),
    gsSP2Triangles(17, 18, 16, 0, 18, 20, 16, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_0002D0[63], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx nakaniwa_room_0Vtx_0009C0[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Vtx_0009C0.vtx.inc"
};

Gfx nakaniwa_room_0DL_000CE0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&nakaniwa_room_0Vtx_0009C0[42], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_00CE18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(nakaniwa_room_0Vtx_0009C0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_0009C0[30], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx nakaniwa_room_0Vtx_000DD0[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Vtx_000DD0.vtx.inc"
};

Gfx nakaniwa_room_0DL_001440[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&nakaniwa_room_0Vtx_000DD0[95], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(nakaniwa_room_0Tex_00C618, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(nakaniwa_room_0Tex_00FE18, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(nakaniwa_room_0Vtx_000DD0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_000DD0[4], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(5, 6, 7, 0, 3, 2, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 15, 16, 0, 14, 6, 15, 0),
    gsSP2Triangles(12, 14, 15, 0, 17, 18, 15, 0),
    gsSP2Triangles(17, 19, 18, 0, 6, 17, 15, 0),
    gsSP2Triangles(5, 19, 17, 0, 5, 9, 19, 0),
    gsSP2Triangles(9, 11, 19, 0, 11, 20, 19, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(22, 25, 26, 0, 22, 26, 23, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSP1Triangle(31, 27, 30, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_000DD0[36], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 3, 6, 0),
    gsSP2Triangles(7, 6, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 11, 13, 14, 0),
    gsSP2Triangles(11, 14, 12, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 16, 19, 20, 0),
    gsSP2Triangles(16, 20, 17, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 22, 25, 26, 0),
    gsSP2Triangles(22, 26, 23, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_000DD0[67], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSPEndDisplayList(),
};

Vtx nakaniwa_room_0Vtx_001630[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Vtx_001630.vtx.inc"
};

Gfx nakaniwa_room_0DL_0017B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&nakaniwa_room_0Vtx_001630[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(nakaniwa_room_0Tex_00C618, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(nakaniwa_room_0Tex_00FE18, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(nakaniwa_room_0Vtx_001630, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_001630[4], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 7, 0, 10, 7, 6, 0),
    gsSPEndDisplayList(),
};

Vtx nakaniwa_room_0Vtx_0018C8[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Vtx_0018C8.vtx.inc"
};

Gfx nakaniwa_room_0DL_002978[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&nakaniwa_room_0Vtx_0018C8[259], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_011E18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 216, 216, 216, 255),
    gsSPVertex(nakaniwa_room_0Vtx_0018C8, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&nakaniwa_room_0Vtx_0018C8[12], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_0018C8[44], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 13, 11, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0),
    gsSP2Triangles(14, 16, 17, 0, 14, 17, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 25, 23, 0),
    gsSP2Triangles(22, 26, 25, 0, 26, 27, 25, 0),
    gsSP2Triangles(26, 28, 27, 0, 29, 30, 31, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_0018C8[76], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_0018C8[107], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 4, 5, 0, 6, 5, 7, 0),
    gsSP2Triangles(8, 6, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 10, 13, 0, 14, 13, 15, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_0018C8[139], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 14, 15, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_0018C8[171], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_0018C8[203], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_010618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&nakaniwa_room_0Vtx_0018C8[207], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_00EE18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&nakaniwa_room_0Vtx_0018C8[211], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(4, 5, 1, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 8, 9, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 11, 9, 0, 10, 12, 13, 0),
    gsSP2Triangles(10, 13, 11, 0, 6, 14, 7, 0),
    gsSP2Triangles(6, 15, 14, 0, 13, 16, 15, 0),
    gsSP2Triangles(13, 12, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_0018C8[243], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 9, 11, 0, 11, 9, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx nakaniwa_room_0Vtx_002D40[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Vtx_002D40.vtx.inc"
};

Gfx nakaniwa_room_0DL_003080[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&nakaniwa_room_0Vtx_002D40[44], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_011E18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(nakaniwa_room_0Vtx_002D40, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_00EE18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&nakaniwa_room_0Vtx_002D40[4], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_00DE18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&nakaniwa_room_0Vtx_002D40[12], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_008418, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&nakaniwa_room_0Vtx_002D40[16], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_008218, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&nakaniwa_room_0Vtx_002D40[20], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_007618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&nakaniwa_room_0Vtx_002D40[24], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_007418, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&nakaniwa_room_0Vtx_002D40[28], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_007218, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&nakaniwa_room_0Vtx_002D40[32], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&nakaniwa_room_0Vtx_002D40[36], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx nakaniwa_room_0Vtx_0033A0[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Vtx_0033A0.vtx.inc"
};

Gfx nakaniwa_room_0DL_0035E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&nakaniwa_room_0Vtx_0033A0[28], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_011E18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(nakaniwa_room_0Vtx_0033A0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_00EE18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&nakaniwa_room_0Vtx_0033A0[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_007A18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&nakaniwa_room_0Vtx_0033A0[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&nakaniwa_room_0Vtx_0033A0[12], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_008618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&nakaniwa_room_0Vtx_0033A0[20], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_007818, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&nakaniwa_room_0Vtx_0033A0[24], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx nakaniwa_room_0Vtx_003820[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Vtx_003820.vtx.inc"
};

Gfx nakaniwa_room_0DL_003C30[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&nakaniwa_room_0Vtx_003820[57], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_00DE18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(nakaniwa_room_0Vtx_003820, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(6, 5, 9, 0, 6, 9, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(13, 0, 3, 0, 13, 3, 14, 0),
    gsSP2Triangles(1, 4, 7, 0, 1, 7, 2, 0),
    gsSP2Triangles(12, 15, 11, 0, 12, 11, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_009E18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&nakaniwa_room_0Vtx_003820[16], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 2, 0, 28, 30, 29, 0),
    gsSP1Triangle(29, 0, 2, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_003820[47], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 3, 7, 0, 8, 7, 9, 0),
    gsSPEndDisplayList(),
};

Vtx nakaniwa_room_0Vtx_003DD0[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Vtx_003DD0.vtx.inc"
};

Gfx nakaniwa_room_0DL_003F60[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&nakaniwa_room_0Vtx_003DD0[17], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_00E618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(nakaniwa_room_0Vtx_003DD0, 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 3, 5, 4, 0),
    gsSP2Triangles(5, 6, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 11, 14, 15, 0),
    gsSP1Triangle(11, 15, 16, 0),
    gsSPEndDisplayList(),
};

Vtx nakaniwa_room_0Vtx_004040[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Vtx_004040.vtx.inc"
};

Gfx nakaniwa_room_0DL_004880[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&nakaniwa_room_0Vtx_004040[124], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_00DE18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 242, 242, 242, 255),
    gsSPVertex(nakaniwa_room_0Vtx_004040, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_013618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&nakaniwa_room_0Vtx_004040[8], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 16, 0),
    gsSP2Triangles(15, 18, 17, 0, 18, 19, 17, 0),
    gsSP2Triangles(19, 20, 17, 0, 16, 21, 14, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 25, 23, 0),
    gsSP2Triangles(25, 26, 23, 0, 25, 27, 26, 0),
    gsSP2Triangles(25, 28, 27, 0, 29, 22, 24, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_00DE18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&nakaniwa_room_0Vtx_004040[38], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(18, 20, 21, 0, 18, 21, 19, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_004040[68], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 17, 0, 20, 17, 16, 0),
    gsSP2Triangles(22, 23, 21, 0, 22, 21, 20, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_004040[100], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx nakaniwa_room_0Vtx_004AE8[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Vtx_004AE8.vtx.inc"
};

Gfx nakaniwa_room_0DL_004C28[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&nakaniwa_room_0Vtx_004AE8[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_011618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(nakaniwa_room_0Vtx_004AE8, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_00DE18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&nakaniwa_room_0Vtx_004AE8[4], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx nakaniwa_room_0Vtx_004D38[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Vtx_004D38.vtx.inc"
};

Gfx nakaniwa_room_0DL_004E98[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&nakaniwa_room_0Vtx_004D38[14], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(nakaniwa_room_0Tex_013E18, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(nakaniwa_room_0Tex_010E18, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(nakaniwa_room_0Vtx_004D38, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSPEndDisplayList(),
};

Vtx nakaniwa_room_0Vtx_004FA0[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Vtx_004FA0.vtx.inc"
};

Gfx nakaniwa_room_0DL_005120[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&nakaniwa_room_0Vtx_004FA0[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(nakaniwa_room_0Tex_013E18, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(nakaniwa_room_0Tex_010E18, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(nakaniwa_room_0Vtx_004FA0, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Vtx nakaniwa_room_0Vtx_005228[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Vtx_005228.vtx.inc"
};

Gfx nakaniwa_room_0DL_005388[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&nakaniwa_room_0Vtx_005228[14], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(nakaniwa_room_0Tex_013E18, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(nakaniwa_room_0Tex_010E18, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(nakaniwa_room_0Vtx_005228, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 7, 0),
    gsSPEndDisplayList(),
};

Vtx nakaniwa_room_0Vtx_005490[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Vtx_005490.vtx.inc"
};

Gfx nakaniwa_room_0DL_0055F0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&nakaniwa_room_0Vtx_005490[14], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(nakaniwa_room_0Tex_013E18, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(nakaniwa_room_0Tex_010E18, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(nakaniwa_room_0Vtx_005490, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(3, 8, 9, 0, 3, 9, 10, 0),
    gsSP2Triangles(7, 11, 12, 0, 7, 12, 13, 0),
    gsSPEndDisplayList(),
};

Vtx nakaniwa_room_0Vtx_0056F8[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Vtx_0056F8.vtx.inc"
};

Gfx nakaniwa_room_0DL_005978[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&nakaniwa_room_0Vtx_0056F8[32], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_012E18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(nakaniwa_room_0Vtx_0056F8, 32, 0),
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

Vtx nakaniwa_room_0Vtx_005A68[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Vtx_005A68.vtx.inc"
};

Gfx nakaniwa_room_0DL_005B88[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&nakaniwa_room_0Vtx_005A68[10], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_00B618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(nakaniwa_room_0Vtx_005A68, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(3, 4, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_00A618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&nakaniwa_room_0Vtx_005A68[5], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(4, 3, 0, 0),
    gsSPEndDisplayList(),
};

Vtx nakaniwa_room_0Vtx_005CA0[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Vtx_005CA0.vtx.inc"
};

Gfx nakaniwa_room_0DL_0061D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&nakaniwa_room_0Vtx_005CA0[75], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_008E18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(nakaniwa_room_0Vtx_005CA0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 6, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 11, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 16, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 21, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 26, 29, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_005CA0[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 6, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 11, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 16, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 21, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 26, 29, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_005CA0[60], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 6, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 11, 14, 0),
    gsSPEndDisplayList(),
};

Vtx nakaniwa_room_0Vtx_006308[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Vtx_006308.vtx.inc"
};

Gfx nakaniwa_room_0DL_006F78[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&nakaniwa_room_0Vtx_006308[191], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_008618, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(nakaniwa_room_0Vtx_006308, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_006308[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_006308[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 4, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 15, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 26, 29, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_006308[92], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 25, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_006308[124], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(30, 28, 31, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_006308[156], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_006308[188], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx nakaniwa_room_0DL_007178[] = {
    gsSPDisplayList(nakaniwa_room_0DL_000780),
    gsSPDisplayList(nakaniwa_room_0DL_000CE0),
    gsSPDisplayList(nakaniwa_room_0DL_001440),
    gsSPDisplayList(nakaniwa_room_0DL_0017B0),
    gsSPDisplayList(nakaniwa_room_0DL_002978),
    gsSPDisplayList(nakaniwa_room_0DL_003080),
    gsSPDisplayList(nakaniwa_room_0DL_0035E0),
    gsSPDisplayList(nakaniwa_room_0DL_003C30),
    gsSPDisplayList(nakaniwa_room_0DL_003F60),
    gsSPDisplayList(nakaniwa_room_0DL_004880),
    gsSPDisplayList(nakaniwa_room_0DL_004C28),
    gsSPDisplayList(nakaniwa_room_0DL_004E98),
    gsSPDisplayList(nakaniwa_room_0DL_005120),
    gsSPDisplayList(nakaniwa_room_0DL_005388),
    gsSPDisplayList(nakaniwa_room_0DL_0055F0),
    gsSPDisplayList(nakaniwa_room_0DL_005978),
    gsSPDisplayList(nakaniwa_room_0DL_005B88),
    gsSPDisplayList(nakaniwa_room_0DL_0061D0),
    gsSPDisplayList(nakaniwa_room_0DL_006F78),
    gsSPEndDisplayList(),
};

u64 nakaniwa_room_0Tex_007218[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_007218.rgba16.inc.c"
};

u64 nakaniwa_room_0Tex_007418[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_007418.rgba16.inc.c"
};

u64 nakaniwa_room_0Tex_007618[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_007618.rgba16.inc.c"
};

u64 nakaniwa_room_0Tex_007818[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_007818.rgba16.inc.c"
};

u64 nakaniwa_room_0Tex_007A18[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_007A18.rgba16.inc.c"
};

u64 nakaniwa_room_0Tex_008218[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_008218.rgba16.inc.c"
};

u64 nakaniwa_room_0Tex_008418[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_008418.rgba16.inc.c"
};

u64 nakaniwa_room_0Tex_008618[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_008618.rgba16.inc.c"
};

u64 nakaniwa_room_0Tex_008E18[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_008E18.rgba16.inc.c"
};

u64 nakaniwa_room_0Tex_009E18[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_009E18.rgba16.inc.c"
};

u64 nakaniwa_room_0Tex_00A618[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_00A618.rgba16.inc.c"
};

u64 nakaniwa_room_0Tex_00B618[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_00B618.rgba16.inc.c"
};

u64 nakaniwa_room_0Tex_00C618[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_00C618.i4.inc.c"
};

u64 nakaniwa_room_0Tex_00CE18[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_00CE18.rgba16.inc.c"
};

u64 nakaniwa_room_0Tex_00DE18[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_00DE18.rgba16.inc.c"
};

u64 nakaniwa_room_0Tex_00E618[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_00E618.rgba16.inc.c"
};

u64 nakaniwa_room_0Tex_00EE18[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_00EE18.rgba16.inc.c"
};

u64 nakaniwa_room_0Tex_00F618[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_00F618.rgba16.inc.c"
};

u64 nakaniwa_room_0Tex_00FE18[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_00FE18.rgba16.inc.c"
};

u64 nakaniwa_room_0Tex_010618[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_010618.rgba16.inc.c"
};

u64 nakaniwa_room_0Tex_010E18[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_010E18.rgba16.inc.c"
};

u64 nakaniwa_room_0Tex_011618[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_011618.rgba16.inc.c"
};

u64 nakaniwa_room_0Tex_011E18[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_011E18.rgba16.inc.c"
};

u64 nakaniwa_room_0Tex_012618[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_012618.rgba16.inc.c"
};

u64 nakaniwa_room_0Tex_012E18[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_012E18.rgba16.inc.c"
};

u64 nakaniwa_room_0Tex_013618[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_013618.rgba16.inc.c"
};

u64 nakaniwa_room_0Tex_013E18[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_013E18.i4.inc.c"
};

u8 nakaniwa_room_0_possiblePadding_014018[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx nakaniwa_room_0Vtx_014020[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Vtx_014020.vtx.inc"
};

Gfx nakaniwa_room_0DL_0142E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&nakaniwa_room_0Vtx_014020[36], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_0166C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 14, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 153),
    gsSPDisplayList(0x08000000),
    gsSPVertex(nakaniwa_room_0Vtx_014020, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_014020[32], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx nakaniwa_room_0Vtx_014400[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Vtx_014400.vtx.inc"
};

Gfx nakaniwa_room_0DL_0144E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&nakaniwa_room_0Vtx_014400[6], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_016EC0, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(nakaniwa_room_0Vtx_014400, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 0, 0),
    gsSPEndDisplayList(),
};

Vtx nakaniwa_room_0Vtx_0145A0[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Vtx_0145A0.vtx.inc"
};

Gfx nakaniwa_room_0DL_014700[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&nakaniwa_room_0Vtx_0145A0[14], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 102),
    gsSPVertex(nakaniwa_room_0Vtx_0145A0, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSPEndDisplayList(),
};

Vtx nakaniwa_room_0Vtx_014798[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Vtx_014798.vtx.inc"
};

Gfx nakaniwa_room_0DL_014D18[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&nakaniwa_room_0Vtx_014798[80], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_0156C0, G_IM_FMT_IA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(nakaniwa_room_0Vtx_014798, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(nakaniwa_room_0Tex_014EC0, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&nakaniwa_room_0Vtx_014798[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&nakaniwa_room_0Vtx_014798[62], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSPEndDisplayList(),
};

Gfx nakaniwa_room_0DL_014E98[] = {
    gsSPDisplayList(nakaniwa_room_0DL_0142E0),
    gsSPDisplayList(nakaniwa_room_0DL_0144E0),
    gsSPDisplayList(nakaniwa_room_0DL_014700),
    gsSPDisplayList(nakaniwa_room_0DL_014D18),
    gsSPEndDisplayList(),
};

u64 nakaniwa_room_0Tex_014EC0[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_014EC0.ia16.inc.c"
};

u64 nakaniwa_room_0Tex_0156C0[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_0156C0.ia16.inc.c"
};

u64 nakaniwa_room_0Tex_0166C0[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_0166C0.rgba16.inc.c"
};

u64 nakaniwa_room_0Tex_016EC0[] = {
#include "assets/scenes/indoors/nakaniwa/nakaniwa_room_0Tex_016EC0.ia16.inc.c"
};

