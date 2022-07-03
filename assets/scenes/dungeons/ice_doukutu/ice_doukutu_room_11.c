#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ice_doukutu_room_11.h"
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
#include "ice_doukutu_room_7.h"
#include "ice_doukutu_room_8.h"
#include "ice_doukutu_room_9.h"
#include "ice_doukutu_room_10.h"

SceneCmd ice_doukutu_room_11Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(ice_doukutu_room_11AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x01, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&ice_doukutu_room_11PolygonType0_000190),
    SCENE_CMD_OBJECT_LIST(13, ice_doukutu_room_11ObjectList_000058),
    SCENE_CMD_ACTOR_LIST(17, ice_doukutu_room_11ActorList_000074),
    SCENE_CMD_END(),
};

SceneCmd* ice_doukutu_room_11AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    ice_doukutu_room_11Set_0001B0,
};

s16 ice_doukutu_room_11ObjectList_000058[] = {
    OBJECT_ICE_OBJECTS,
    OBJECT_TITE,
    OBJECT_GOROIWA,
    OBJECT_FZ,
    OBJECT_DEMO_KEKKAI,
    OBJECT_ST,
    OBJECT_GI_SUTARU,
    OBJECT_TIMEBLOCK,
    OBJECT_EFC_TW,
    OBJECT_WF,
    OBJECT_BOX,
    OBJECT_KA,
    OBJECT_FIREFLY,
};

ActorEntry ice_doukutu_room_11ActorList_000074[] = {
    { ACTOR_BG_ICE_SHELTER, {   1201,    -71,    648 }, {      0,      0,      0 }, 0x02FF },
    { ACTOR_EN_ICE_HONO,    {   1491,    -22,    413 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_BG_ICE_TURARA,  {   1345,    -71,    260 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA,  {   1375,    -71,    291 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA,  {   1344,    -71,    332 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA,  {   1325,    -71,    369 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA,  {   1321,    -71,    410 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA,  {   1327,    -71,    442 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA,  {   1334,    -71,    473 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA,  {   1149,    -71,     64 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA,  {   1170,    -71,     97 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_WF,          {   1246,    -71,    363 }, {      0,      0,      0 }, 0xFF00 },
    { ACTOR_EN_WF,          {   1241,    -71,    117 }, {      0,      0,      0 }, 0xFF00 },
    { ACTOR_EN_SW,          {   1123,     29,     79 }, {      0, 0X1D28,      0 }, 0x0000 },
    { ACTOR_EN_BOX,         {   1202,    -71,    649 }, {      0,      0,    0X3 }, 0xB821 },
    { ACTOR_OBJ_SWITCH,     {   1114,    -88,    104 }, {      0,      0,      0 }, 0x0303 },
    { ACTOR_ELF_MSG,        {   1492,    -61,    414 }, {   0X14,      0,   0X14 }, 0x4689 },
};

u8 ice_doukutu_room_11_possiblePadding_000184[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 ice_doukutu_room_11PolygonType0_000190 = { 
    0, 1,
    ice_doukutu_room_11PolygonDlist_00019C,
    ice_doukutu_room_11PolygonDlist_00019C + ARRAY_COUNTU(ice_doukutu_room_11PolygonDlist_00019C)
};

PolygonDlist ice_doukutu_room_11PolygonDlist_00019C[1] = {
    { ice_doukutu_room_11DL_0028F8, ice_doukutu_room_11DL_004838 },
};

s32 ice_doukutu_room_11_terminatorMaybe_0001A4 = { 0x01000000 };

u8 ice_doukutu_room_11_possiblePadding_0001A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd ice_doukutu_room_11Set_0001B0[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&ice_doukutu_room_11PolygonType0_000190),
    SCENE_CMD_OBJECT_LIST(3, ice_doukutu_room_11ObjectList_0001F0),
    SCENE_CMD_ACTOR_LIST(3, ice_doukutu_room_11ActorList_0001F8),
    SCENE_CMD_END(),
};

s16 ice_doukutu_room_11ObjectList_0001F0[] = {
    OBJECT_ICE_OBJECTS,
    OBJECT_XC,
    OBJECT_GI_MELODY,
};

ActorEntry ice_doukutu_room_11ActorList_0001F8[] = {
    { ACTOR_BG_ICE_SHELTER, {   1305,    -51,    644 }, {      0, 0XC000,      0 }, 0x01FF },
    { ACTOR_EN_ICE_HONO,    {   1291,    -32,    242 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_ICE_HONO,    {   1493,    -22,    413 }, {      0,      0,      0 }, 0xFFFF },
};

u8 ice_doukutu_room_11_possiblePadding_000228[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx ice_doukutu_room_11Vtx_000230[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_11Vtx_000230.vtx.inc"
};

Gfx ice_doukutu_room_11DL_000410[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_11Vtx_000230[22], 8, 0),
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
    gsSPVertex(ice_doukutu_room_11Vtx_000230, 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(12, 16, 15, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 20, 19, 0, 20, 21, 19, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_11Vtx_000528[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_11Vtx_000528.vtx.inc"
};

Gfx ice_doukutu_room_11DL_000B68[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_11Vtx_000528[92], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_sceneTex_0100C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(ice_doukutu_sceneTex_00FCC0, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 15),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_11Vtx_000528, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 2, 0, 1, 5, 4, 0),
    gsSP2Triangles(3, 6, 1, 0, 6, 7, 1, 0),
    gsSP2Triangles(7, 8, 1, 0, 8, 5, 1, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 18, 13, 0, 17, 13, 16, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSP1Triangle(31, 27, 30, 0),
    gsSPVertex(&ice_doukutu_room_11Vtx_000528[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(3, 0, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 13, 0, 16, 13, 18, 0),
    gsSP2Triangles(13, 15, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(28, 30, 29, 0, 27, 31, 28, 0),
    gsSPVertex(&ice_doukutu_room_11Vtx_000528[64], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 5, 0, 8, 5, 4, 0),
    gsSP2Triangles(7, 6, 10, 0, 7, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(12, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(12, 19, 13, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(20, 26, 27, 0, 20, 27, 21, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_11Vtx_000D48[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_11Vtx_000D48.vtx.inc"
};

Gfx ice_doukutu_room_11DL_001218[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_11Vtx_000D48[69], 8, 0),
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
    gsSPVertex(ice_doukutu_room_11Vtx_000D48, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 1, 5, 4, 0),
    gsSP2Triangles(0, 6, 1, 0, 6, 7, 1, 0),
    gsSP2Triangles(7, 8, 1, 0, 8, 5, 1, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_11Tex_002928, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&ice_doukutu_room_11Vtx_000D48[9], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 1, 0, 6, 1, 0, 0),
    gsSP2Triangles(7, 8, 4, 0, 7, 4, 1, 0),
    gsSP2Triangles(9, 10, 7, 0, 9, 7, 6, 0),
    gsSP2Triangles(10, 11, 8, 0, 10, 8, 7, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(13, 16, 17, 0, 13, 17, 18, 0),
    gsSP2Triangles(19, 20, 13, 0, 19, 13, 12, 0),
    gsSP2Triangles(20, 21, 16, 0, 20, 16, 13, 0),
    gsSP2Triangles(22, 23, 20, 0, 22, 20, 19, 0),
    gsSP2Triangles(23, 24, 21, 0, 23, 21, 20, 0),
    gsSP2Triangles(25, 26, 23, 0, 25, 23, 22, 0),
    gsSP2Triangles(26, 27, 24, 0, 26, 24, 23, 0),
    gsSP2Triangles(3, 2, 26, 0, 3, 26, 25, 0),
    gsSP2Triangles(2, 5, 27, 0, 2, 27, 26, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_room_11Tex_003928, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ice_doukutu_room_11Vtx_000D48[37], 32, 0),
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

Vtx ice_doukutu_room_11Vtx_001410[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_11Vtx_001410.vtx.inc"
};

Gfx ice_doukutu_room_11DL_0023C0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_11Vtx_001410[243], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_11Tex_003128, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(ice_doukutu_sceneTex_00FCC0, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 15),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_11Vtx_001410, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(0, 7, 1, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 8, 15, 9, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(16, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(16, 23, 17, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 28, 25, 0, 24, 29, 30, 0),
    gsSP2Triangles(24, 31, 29, 0, 24, 26, 31, 0),
    gsSPVertex(&ice_doukutu_room_11Vtx_001410[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 5, 0),
    gsSP2Triangles(10, 11, 5, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 22, 24, 23, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 25, 27, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_11Vtx_001410[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(10, 12, 13, 0, 14, 15, 11, 0),
    gsSP2Triangles(15, 16, 11, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 24, 0),
    gsSP2Triangles(23, 25, 24, 0, 26, 27, 22, 0),
    gsSP2Triangles(27, 28, 22, 0, 29, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_11Vtx_001410[96], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 3, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 9, 0),
    gsSP2Triangles(8, 13, 14, 0, 8, 15, 13, 0),
    gsSP2Triangles(8, 10, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 16, 18, 0, 20, 19, 18, 0),
    gsSP2Triangles(21, 22, 23, 0, 22, 19, 23, 0),
    gsSP2Triangles(19, 20, 23, 0, 22, 21, 24, 0),
    gsSP2Triangles(25, 22, 24, 0, 26, 27, 28, 0),
    gsSP2Triangles(29, 30, 31, 0, 30, 27, 31, 0),
    gsSP1Triangle(27, 26, 31, 0),
    gsSPVertex(&ice_doukutu_room_11Vtx_001410[128], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 1, 0, 5, 0),
    gsSP2Triangles(6, 1, 5, 0, 7, 6, 5, 0),
    gsSP2Triangles(6, 8, 9, 0, 10, 6, 9, 0),
    gsSP2Triangles(11, 10, 9, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 10, 13, 0, 15, 14, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_11Vtx_001410[160], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 9, 0, 12, 9, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 20, 16, 0, 19, 16, 15, 0),
    gsSP2Triangles(11, 10, 20, 0, 11, 20, 19, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(24, 23, 25, 0, 24, 25, 26, 0),
    gsSP2Triangles(26, 25, 27, 0, 26, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_11Vtx_001410[192], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(3, 4, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 6, 8, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 10, 8, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 26, 22, 0),
    gsSP2Triangles(26, 27, 22, 0, 28, 29, 30, 0),
    gsSP1Triangle(31, 28, 30, 0),
    gsSPVertex(&ice_doukutu_room_11Vtx_001410[224], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 13, 0, 17, 18, 13, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_11Vtx_002700[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_11Vtx_002700.vtx.inc"
};

Gfx ice_doukutu_room_11DL_002860[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_11Vtx_002700[14], 8, 0),
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
    gsSPVertex(ice_doukutu_room_11Vtx_002700, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 5, 0, 8, 9, 2, 0),
    gsSP2Triangles(4, 6, 5, 0, 8, 2, 1, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSPEndDisplayList(),
};

Gfx ice_doukutu_room_11DL_0028F8[] = {
    gsSPDisplayList(ice_doukutu_room_11DL_000410),
    gsSPDisplayList(ice_doukutu_room_11DL_000B68),
    gsSPDisplayList(ice_doukutu_room_11DL_001218),
    gsSPDisplayList(ice_doukutu_room_11DL_0023C0),
    gsSPDisplayList(ice_doukutu_room_11DL_002860),
    gsSPEndDisplayList(),
};

u64 ice_doukutu_room_11Tex_002928[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_11Tex_002928.rgba16.inc.c"
};

u64 ice_doukutu_room_11Tex_003128[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_11Tex_003128.rgba16.inc.c"
};

u64 ice_doukutu_room_11Tex_003928[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_11Tex_003928.rgba16.inc.c"
};

u8 ice_doukutu_room_11_possiblePadding_004128[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx ice_doukutu_room_11Vtx_004130[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_11Vtx_004130.vtx.inc"
};

Gfx ice_doukutu_room_11DL_0046B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_11Vtx_004130[80], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_11Tex_004848, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_11Vtx_004130, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 7, 5, 0),
    gsSP2Triangles(0, 2, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 8, 15, 9, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(16, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(16, 23, 17, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 28, 25, 0, 24, 29, 30, 0),
    gsSP2Triangles(24, 31, 29, 0, 24, 26, 31, 0),
    gsSPVertex(&ice_doukutu_room_11Vtx_004130[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(0, 7, 1, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 9, 0, 8, 13, 14, 0),
    gsSP2Triangles(8, 15, 13, 0, 8, 10, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 17, 0),
    gsSP2Triangles(16, 21, 22, 0, 16, 23, 21, 0),
    gsSP2Triangles(16, 18, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 26, 27, 0, 24, 27, 28, 0),
    gsSP2Triangles(29, 30, 31, 0, 24, 31, 25, 0),
    gsSPVertex(&ice_doukutu_room_11Vtx_004130[64], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 7, 5, 0),
    gsSP2Triangles(0, 2, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 8, 15, 9, 0),
    gsSPEndDisplayList(),
};

Gfx ice_doukutu_room_11DL_004838[] = {
    gsSPDisplayList(ice_doukutu_room_11DL_0046B0),
    gsSPEndDisplayList(),
};

u64 ice_doukutu_room_11Tex_004848[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_11Tex_004848.i8.inc.c"
};

