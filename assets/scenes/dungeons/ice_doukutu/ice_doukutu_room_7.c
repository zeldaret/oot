#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ice_doukutu_room_7.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "ice_doukutu_scene.h"
#include "ice_doukutu_room_0.h"
#include "ice_doukutu_room_1.h"
#include "ice_doukutu_room_2.h"
#include "ice_doukutu_room_3.h"
#include "ice_doukutu_room_4.h"
#include "ice_doukutu_room_5.h"
#include "ice_doukutu_room_6.h"
#include "ice_doukutu_room_8.h"
#include "ice_doukutu_room_9.h"
#include "ice_doukutu_room_10.h"
#include "ice_doukutu_room_11.h"

SceneCmd ice_doukutu_room_7Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(ice_doukutu_room_7AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x01, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&ice_doukutu_room_7PolygonType0_0000B0),
    SCENE_CMD_OBJECT_LIST(6, ice_doukutu_room_7ObjectList_000058),
    SCENE_CMD_ACTOR_LIST(7, ice_doukutu_room_7ActorList_000064),
    SCENE_CMD_END(),
};

SceneCmd* ice_doukutu_room_7AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    ice_doukutu_room_7Set_0000D0,
};

s16 ice_doukutu_room_7ObjectList_000058[] = {
    OBJECT_ICE_OBJECTS,
    OBJECT_XC,
    OBJECT_BOX,
    OBJECT_EFC_FLASH,
    OBJECT_SK2,
    OBJECT_WF,
};

ActorEntry ice_doukutu_room_7ActorList_000064[] = {
    { ACTOR_BG_ICE_SHUTTER, {   -896,    278,   1176 }, { 0XC000, 0X2000,      0 }, 0xFF02 },
    { ACTOR_EN_XC,          {  -1108,    290,    660 }, {      0,      0,      0 }, 0x0008 },
    { ACTOR_EN_BOX,         {  -1005,    280,   1068 }, {      0, 0X216C,      0 }, 0x15C2 },
    { ACTOR_EN_TEST,        {  -1096,    282,    964 }, {      0, 0X9A50,      0 }, 0xFFFF },
    { ACTOR_BG_ICE_SHELTER, {  -1005,    280,   1068 }, {      0, 0X8000,      0 }, 0x021F },
    { ACTOR_ELF_MSG,        {  -1017,    283,   1057 }, {   0x27,      0,      0 }, 0x1E86 },
    { ACTOR_EN_WF,          {  -1188,    282,    872 }, {      0, 0X9A50,      0 }, 0xFF01 },
};

u8 ice_doukutu_room_7_possiblePadding_0000A4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 ice_doukutu_room_7PolygonType0_0000B0 = { 
    0, 1,
    ice_doukutu_room_7PolygonDlist_0000BC,
    ice_doukutu_room_7PolygonDlist_0000BC + ARRAY_COUNTU(ice_doukutu_room_7PolygonDlist_0000BC)
};

PolygonDlist ice_doukutu_room_7PolygonDlist_0000BC[1] = {
    { ice_doukutu_room_7DL_001730, ice_doukutu_room_7DL_0040A8 },
};

s32 ice_doukutu_room_7_terminatorMaybe_0000C4 = { 0x01000000 };

u8 ice_doukutu_room_7_possiblePadding_0000C8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd ice_doukutu_room_7Set_0000D0[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&ice_doukutu_room_7PolygonType0_0000B0),
    SCENE_CMD_OBJECT_LIST(3, ice_doukutu_room_7ObjectList_000110),
    SCENE_CMD_ACTOR_LIST(3, ice_doukutu_room_7ActorList_000118),
    SCENE_CMD_END(),
};

s16 ice_doukutu_room_7ObjectList_000110[] = {
    OBJECT_ICE_OBJECTS,
    OBJECT_XC,
    OBJECT_GI_MELODY,
};

ActorEntry ice_doukutu_room_7ActorList_000118[] = {
    { ACTOR_EN_XC,          {  -1219,    291,    777 }, {      0,      0,      0 }, 0x0002 },
    { ACTOR_DEMO_KANKYO,    {  -1194,    290,    828 }, {      0,      0,      0 }, 0x0009 },
    { ACTOR_BG_ICE_SHELTER, {  -1005,    280,   1068 }, {      0, 0X8000,      0 }, 0x02FF },
};

u8 ice_doukutu_room_7_possiblePadding_000148[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx ice_doukutu_room_7Vtx_000150[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_7Vtx_000150.vtx.inc"
};

Gfx ice_doukutu_room_7DL_000480[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_7Vtx_000150[43], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_sceneTex_0100C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(ice_doukutu_sceneTex_00FCC0, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 14),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_7Vtx_000150, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(5, 8, 7, 0, 8, 9, 7, 0),
    gsSP2Triangles(5, 10, 11, 0, 5, 11, 8, 0),
    gsSP2Triangles(10, 12, 11, 0, 12, 13, 11, 0),
    gsSP2Triangles(13, 8, 11, 0, 13, 9, 8, 0),
    gsSP2Triangles(9, 14, 7, 0, 9, 15, 14, 0),
    gsSP2Triangles(9, 16, 15, 0, 4, 17, 5, 0),
    gsSP2Triangles(17, 0, 5, 0, 0, 3, 10, 0),
    gsSP2Triangles(0, 10, 5, 0, 3, 12, 10, 0),
    gsSP2Triangles(3, 18, 12, 0, 18, 19, 12, 0),
    gsSP2Triangles(19, 20, 12, 0, 20, 21, 12, 0),
    gsSP2Triangles(21, 22, 12, 0, 21, 23, 22, 0),
    gsSP2Triangles(23, 24, 22, 0, 24, 25, 22, 0),
    gsSP2Triangles(25, 26, 22, 0, 26, 27, 22, 0),
    gsSP2Triangles(26, 28, 27, 0, 9, 13, 29, 0),
    gsSP2Triangles(13, 27, 29, 0, 13, 12, 27, 0),
    gsSP2Triangles(12, 22, 27, 0, 30, 31, 9, 0),
    gsSP1Triangle(31, 16, 9, 0),
    gsSPVertex(&ice_doukutu_room_7Vtx_000150[32], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 2, 8, 0),
    gsSP2Triangles(4, 9, 10, 0, 4, 6, 9, 0),
    gsSP1Triangle(8, 2, 1, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_7Vtx_000630[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_7Vtx_000630.vtx.inc"
};

Gfx ice_doukutu_room_7DL_000740[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_7Vtx_000630[9], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_sceneTex_010AC0, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 2, 2),
    gsDPLoadMultiBlock(ice_doukutu_sceneTex_00FCC0, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_7Vtx_000630, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(7, 8, 5, 0, 8, 6, 5, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_7Vtx_000840[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_7Vtx_000840.vtx.inc"
};

Gfx ice_doukutu_room_7DL_000DA0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_7Vtx_000840[78], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_sceneTex_0108C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_7Vtx_000840, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&ice_doukutu_room_7Vtx_000840[31], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP1Triangle(11, 13, 14, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(ice_doukutu_room_7Tex_001758, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, ice_doukutu_sceneTLUT_00F8A0),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_7Vtx_000840[46], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(30, 25, 24, 0, 30, 24, 29, 0),
    gsSP2Triangles(30, 29, 31, 0, 29, 28, 31, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_7Vtx_000F88[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_7Vtx_000F88.vtx.inc"
};

Gfx ice_doukutu_room_7DL_0015C8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_7Vtx_000F88[92], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x2710, 0x2710, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_sceneTex_0108C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, 1, 1),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_7Vtx_000F88, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPVertex(&ice_doukutu_room_7Vtx_000F88[4], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&ice_doukutu_room_7Vtx_000F88[34], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 18, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSPVertex(&ice_doukutu_room_7Vtx_000F88[65], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP1Triangle(23, 25, 26, 0),
    gsSPEndDisplayList(),
};

Gfx ice_doukutu_room_7DL_001730[] = {
    gsSPDisplayList(ice_doukutu_room_7DL_000480),
    gsSPDisplayList(ice_doukutu_room_7DL_000740),
    gsSPDisplayList(ice_doukutu_room_7DL_000DA0),
    gsSPDisplayList(ice_doukutu_room_7DL_0015C8),
    gsSPEndDisplayList(),
};

u64 ice_doukutu_room_7Tex_001758[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_7Tex_001758.ci4.inc.c"
};

u8 ice_doukutu_room_7_possiblePadding_001F58[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx ice_doukutu_room_7Vtx_001F60[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_7Vtx_001F60.vtx.inc"
};

Gfx ice_doukutu_room_7DL_0030B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_7Vtx_001F60[269], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_sceneTex_0108C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, PRIMITIVE, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 204),
    gsSPVertex(ice_doukutu_room_7Vtx_001F60, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 8, 5, 4, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 2, 13, 0, 12, 13, 10, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 14, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 25, 27, 21, 0),
    gsSP2Triangles(28, 29, 26, 0, 28, 26, 25, 0),
    gsSP2Triangles(13, 2, 30, 0, 9, 11, 30, 0),
    gsSP2Triangles(31, 9, 30, 0, 1, 5, 30, 0),
    gsSPVertex(&ice_doukutu_room_7Vtx_001F60[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 7, 6, 5, 0),
    gsSP2Triangles(8, 9, 5, 0, 10, 8, 5, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 20, 16, 0, 19, 16, 21, 0),
    gsSP2Triangles(22, 23, 20, 0, 22, 20, 24, 0),
    gsSP2Triangles(25, 13, 26, 0, 25, 26, 27, 0),
    gsSP2Triangles(13, 28, 29, 0, 12, 16, 29, 0),
    gsSP2Triangles(30, 20, 29, 0, 20, 23, 29, 0),
    gsSP1Triangle(26, 13, 29, 0),
    gsSPVertex(&ice_doukutu_room_7Vtx_001F60[63], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(3, 2, 20, 0, 3, 20, 21, 0),
    gsSP2Triangles(10, 14, 22, 0, 14, 13, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0),
    gsSP1Triangle(29, 30, 22, 0),
    gsSPVertex(&ice_doukutu_room_7Vtx_001F60[94], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 2, 0, 8, 9, 2, 0),
    gsSP2Triangles(10, 8, 2, 0, 11, 12, 7, 0),
    gsSP2Triangles(11, 7, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 17, 0, 18, 9, 8, 0),
    gsSP2Triangles(18, 8, 19, 0, 20, 21, 10, 0),
    gsSP2Triangles(20, 10, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 24, 0),
    gsSP2Triangles(27, 24, 29, 0, 30, 31, 28, 0),
    gsSPVertex(&ice_doukutu_room_7Vtx_001F60[126], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 0, 0, 6, 7, 4, 0),
    gsSP2Triangles(6, 4, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 1, 11, 0, 1, 5, 11, 0),
    gsSP2Triangles(13, 4, 11, 0, 14, 7, 11, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 17, 0),
    gsSP2Triangles(20, 21, 17, 0, 22, 20, 17, 0),
    gsSP2Triangles(23, 24, 17, 0, 25, 16, 19, 0),
    gsSP2Triangles(25, 19, 26, 0, 27, 19, 21, 0),
    gsSP2Triangles(27, 21, 28, 0, 28, 21, 20, 0),
    gsSP2Triangles(28, 20, 29, 0, 30, 20, 24, 0),
    gsSP1Triangle(30, 24, 31, 0),
    gsSPVertex(&ice_doukutu_room_7Vtx_001F60[158], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 17, 0, 20, 17, 16, 0),
    gsSP2Triangles(6, 10, 22, 0, 10, 9, 22, 0),
    gsSP2Triangles(23, 18, 22, 0, 18, 24, 22, 0),
    gsSP2Triangles(24, 25, 22, 0, 26, 27, 28, 0),
    gsSP1Triangle(26, 28, 29, 0),
    gsSPVertex(&ice_doukutu_room_7Vtx_001F60[188], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 6, 0),
    gsSP2Triangles(7, 8, 5, 0, 7, 5, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(11, 14, 15, 0, 16, 1, 15, 0),
    gsSP2Triangles(17, 5, 15, 0, 5, 8, 15, 0),
    gsSP2Triangles(12, 11, 15, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 20, 21, 0, 22, 23, 19, 0),
    gsSP2Triangles(22, 19, 24, 0, 25, 26, 23, 0),
    gsSP2Triangles(25, 23, 27, 0, 28, 29, 26, 0),
    gsSP2Triangles(28, 26, 25, 0, 21, 20, 29, 0),
    gsSP1Triangle(21, 29, 30, 0),
    gsSPVertex(&ice_doukutu_room_7Vtx_001F60[219], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(4, 5, 2, 0, 6, 7, 2, 0),
    gsSP2Triangles(8, 9, 2, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 12, 13, 0, 14, 15, 11, 0),
    gsSP2Triangles(14, 11, 16, 0, 17, 18, 15, 0),
    gsSP2Triangles(17, 15, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 22, 23, 0, 13, 12, 24, 0),
    gsSP2Triangles(13, 24, 25, 0, 26, 11, 27, 0),
    gsSP2Triangles(28, 15, 27, 0, 15, 22, 27, 0),
    gsSP2Triangles(29, 21, 27, 0, 30, 12, 27, 0),
    gsSPVertex(&ice_doukutu_room_7Vtx_001F60[250], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 6, 0),
    gsSP2Triangles(7, 8, 5, 0, 7, 5, 9, 0),
    gsSP2Triangles(10, 11, 8, 0, 10, 8, 12, 0),
    gsSP2Triangles(3, 2, 11, 0, 3, 11, 13, 0),
    gsSP2Triangles(14, 1, 15, 0, 16, 5, 15, 0),
    gsSP2Triangles(5, 8, 15, 0, 17, 11, 15, 0),
    gsSP1Triangle(18, 2, 15, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_7Vtx_003488[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_7Vtx_003488.vtx.inc"
};

Gfx ice_doukutu_room_7DL_0035C8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_7Vtx_003488[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_7Tex_0040E8, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_7Vtx_003488, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_7Vtx_003690[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_7Vtx_003690.vtx.inc"
};

Gfx ice_doukutu_room_7DL_0037D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_7Vtx_003690[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_7Tex_0040E8, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_7Vtx_003690, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_7Vtx_003898[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_7Vtx_003898.vtx.inc"
};

Gfx ice_doukutu_room_7DL_0039D8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_7Vtx_003898[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_7Tex_0040E8, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_7Vtx_003898, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_7Vtx_003AA0[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_7Vtx_003AA0.vtx.inc"
};

Gfx ice_doukutu_room_7DL_003BE0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_7Vtx_003AA0[12], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_7Tex_0040E8, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_7Vtx_003AA0, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_7Vtx_003CA8[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_7Vtx_003CA8.vtx.inc"
};

Gfx ice_doukutu_room_7DL_003E38[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_7Vtx_003CA8[17], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_7Tex_0040E8, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_7Vtx_003CA8, 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 8, 0),
    gsSP2Triangles(15, 16, 10, 0, 15, 10, 9, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_7Vtx_003F10[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_7Vtx_003F10.vtx.inc"
};

Gfx ice_doukutu_room_7DL_003FD0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_7Vtx_003F10[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_7Tex_0050E8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 14, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(ice_doukutu_room_7Vtx_003F10, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx ice_doukutu_room_7DL_0040A8[] = {
    gsSPDisplayList(ice_doukutu_room_7DL_0030B0),
    gsSPDisplayList(ice_doukutu_room_7DL_0035C8),
    gsSPDisplayList(ice_doukutu_room_7DL_0037D0),
    gsSPDisplayList(ice_doukutu_room_7DL_0039D8),
    gsSPDisplayList(ice_doukutu_room_7DL_003BE0),
    gsSPDisplayList(ice_doukutu_room_7DL_003E38),
    gsSPDisplayList(ice_doukutu_room_7DL_003FD0),
    gsSPEndDisplayList(),
};

u64 ice_doukutu_room_7Tex_0040E8[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_7Tex_0040E8.i8.inc.c"
};

u64 ice_doukutu_room_7Tex_0050E8[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_7Tex_0050E8.rgba16.inc.c"
};

