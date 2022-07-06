#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ice_doukutu_room_3.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "ice_doukutu_scene.h"
#include "ice_doukutu_room_0.h"
#include "ice_doukutu_room_1.h"
#include "ice_doukutu_room_2.h"
#include "ice_doukutu_room_4.h"
#include "ice_doukutu_room_5.h"
#include "ice_doukutu_room_6.h"
#include "ice_doukutu_room_7.h"
#include "ice_doukutu_room_8.h"
#include "ice_doukutu_room_9.h"
#include "ice_doukutu_room_10.h"
#include "ice_doukutu_room_11.h"

SceneCmd ice_doukutu_room_3Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(ice_doukutu_room_3AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x01, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&ice_doukutu_room_3PolygonType0_0001B0),
    SCENE_CMD_OBJECT_LIST(13, ice_doukutu_room_3ObjectList_000058),
    SCENE_CMD_ACTOR_LIST(19, ice_doukutu_room_3ActorList_000074),
    SCENE_CMD_END(),
};

SceneCmd* ice_doukutu_room_3AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    ice_doukutu_room_3Set_0001D0,
};

s16 ice_doukutu_room_3ObjectList_000058[] = {
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

ActorEntry ice_doukutu_room_3ActorList_000074[] = {
    { ACTOR_BG_ICE_TURARA,  {    640,      0,   -312 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA,  {    614,      0,   -292 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA,  {    597,      0,   -256 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA,  {    598,      0,   -213 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_BG_ICE_TURARA,  {    607,      0,   -170 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_WF,          {    271,      0,   -401 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_FZ,          {    -35,      0,   -409 }, {      0, 0X3BBC,      0 }, 0xFFFF },
    { ACTOR_EN_FZ,          {    541,      0,   -503 }, {      0, 0XE2D8,      0 }, 0xFFFF },
    { ACTOR_BG_ICE_SHUTTER, {    691,      7,   -217 }, {      0, 0XAE39,      0 }, 0x0500 },
    { ACTOR_BG_ICE_SHELTER, {   -134,      0,   -462 }, {      0,      0,      0 }, 0x0021 },
    { ACTOR_BG_ICE_SHELTER, {   -121,      0,   -418 }, {      0,      0,      0 }, 0x0022 },
    { ACTOR_BG_ICE_SHELTER, {   -142,      0,   -377 }, {      0,      0,      0 }, 0x0023 },
    { ACTOR_OBJ_TSUBO,      {    433,      0,   -732 }, {      0,      0,      0 }, 0x4E12 },
    { ACTOR_OBJ_TSUBO,      {    569,      0,   -175 }, {      0,      0,      0 }, 0x5001 },
    { ACTOR_BG_ICE_SHELTER, {    577,    172,   -818 }, {      0,      0,      0 }, 0x0029 },
    { ACTOR_OBJ_TSUBO,      {    521,      0,   -131 }, {      0,      0,      0 }, 0x5203 },
    { ACTOR_BG_ICE_SHELTER, {    614,    172,   -770 }, {      0,      0,      0 }, 0x002A },
    { ACTOR_BG_ICE_SHELTER, {    656,    172,   -722 }, {      0,      0,      0 }, 0x002B },
    { ACTOR_OBJ_TSUBO,      {    138,      0,   -672 }, {      0,      0,      0 }, 0x5812 },
};

u8 ice_doukutu_room_3_possiblePadding_0001A4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 ice_doukutu_room_3PolygonType0_0001B0 = { 
    0, 1,
    ice_doukutu_room_3PolygonDlist_0001BC,
    ice_doukutu_room_3PolygonDlist_0001BC + ARRAY_COUNTU(ice_doukutu_room_3PolygonDlist_0001BC)
};

PolygonDlist ice_doukutu_room_3PolygonDlist_0001BC[1] = {
    { ice_doukutu_room_3DL_0031D8, ice_doukutu_room_3DL_005070 },
};

s32 ice_doukutu_room_3_terminatorMaybe_0001C4 = { 0x01000000 };

u8 ice_doukutu_room_3_possiblePadding_0001C8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd ice_doukutu_room_3Set_0001D0[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&ice_doukutu_room_3PolygonType0_0001B0),
    SCENE_CMD_OBJECT_LIST(3, ice_doukutu_room_3ObjectList_000210),
    SCENE_CMD_ACTOR_LIST(5, ice_doukutu_room_3ActorList_000218),
    SCENE_CMD_END(),
};

s16 ice_doukutu_room_3ObjectList_000210[] = {
    OBJECT_ICE_OBJECTS,
    OBJECT_BOX,
    OBJECT_GI_MELODY,
};

ActorEntry ice_doukutu_room_3ActorList_000218[] = {
    { ACTOR_EN_BOX,         {   -118,    387,   -409 }, {      0, 0XC000,      0 }, 0x007F },
    { ACTOR_BG_HAKA_SGAMI,  {    293,      0,   -384 }, {      0,      0,      0 }, 0x0100 },
    { ACTOR_BG_ICE_SHELTER, {    554,    172,   -701 }, {      0, 0XDF4A,      0 }, 0x03FF },
    { ACTOR_BG_ICE_SHELTER, {    -55,      0,   -415 }, {      0, 0X3DDE,      0 }, 0x03FF },
    { ACTOR_BG_ICE_SHELTER, {   -134,      0,   -415 }, {      0, 0X3DDE,      0 }, 0x03FF },
};

u8 ice_doukutu_room_3_possiblePadding_000268[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx ice_doukutu_room_3Vtx_000270[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_3Vtx_000270.vtx.inc"
};

Gfx ice_doukutu_room_3DL_0003E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_3Vtx_000270[15], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_sceneTex_010EC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_3Vtx_000270, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(6, 9, 4, 0, 10, 6, 4, 0),
    gsSP1Triangle(10, 4, 3, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&ice_doukutu_room_3Vtx_000270[11], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_3Vtx_0004E0[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_3Vtx_0004E0.vtx.inc"
};

Gfx ice_doukutu_room_3DL_000BD0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_3Vtx_0004E0[103], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(ice_doukutu_room_3Tex_003A08, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, ice_doukutu_sceneTLUT_00F8A0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_3Vtx_0004E0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(28, 30, 29, 0, 28, 31, 30, 0),
    gsSPVertex(&ice_doukutu_room_3Vtx_0004E0[32], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 1, 4, 0, 4, 6, 5, 0),
    gsSP2Triangles(7, 8, 9, 0, 8, 10, 9, 0),
    gsSP2Triangles(8, 11, 10, 0, 11, 12, 10, 0),
    gsSP2Triangles(7, 13, 8, 0, 14, 15, 16, 0),
    gsSP1Triangle(14, 16, 17, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&ice_doukutu_room_3Vtx_0004E0[50], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&ice_doukutu_room_3Vtx_0004E0[54], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(0, 2, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 8, 6, 0, 5, 9, 8, 0),
    gsSP2Triangles(9, 10, 8, 0, 9, 11, 12, 0),
    gsSP2Triangles(9, 13, 11, 0, 13, 14, 11, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(15, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 3, 0, 23, 25, 24, 0),
    gsSP2Triangles(26, 20, 22, 0, 26, 22, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 31, 30, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&ice_doukutu_room_3Vtx_0004E0[86], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPVertex(&ice_doukutu_room_3Vtx_0004E0[90], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0),
    gsSP1Triangle(9, 11, 12, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_3Vtx_000E08[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_3Vtx_000E08.vtx.inc"
};

Gfx ice_doukutu_room_3DL_002188[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_3Vtx_000E08[304], 8, 0),
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
    gsSPVertex(ice_doukutu_room_3Vtx_000E08, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(10, 12, 13, 0, 11, 10, 13, 0),
    gsSP2Triangles(14, 11, 13, 0, 12, 15, 16, 0),
    gsSP2Triangles(13, 12, 16, 0, 14, 13, 16, 0),
    gsSP2Triangles(17, 14, 16, 0, 18, 15, 19, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 17, 18, 0),
    gsSP2Triangles(21, 18, 20, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 24, 25, 0, 26, 22, 25, 0),
    gsSP2Triangles(26, 25, 27, 0, 28, 26, 27, 0),
    gsSP2Triangles(28, 27, 29, 0, 30, 28, 29, 0),
    gsSP1Triangle(30, 29, 31, 0),
    gsSPVertex(&ice_doukutu_room_3Vtx_000E08[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 4, 5, 0, 6, 5, 7, 0),
    gsSP2Triangles(8, 6, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(7, 5, 10, 0, 7, 10, 11, 0),
    gsSP2Triangles(9, 7, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 16, 14, 0),
    gsSP2Triangles(13, 17, 16, 0, 13, 18, 19, 0),
    gsSP2Triangles(13, 15, 18, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 22, 23, 0, 20, 23, 24, 0),
    gsSP2Triangles(20, 24, 25, 0, 20, 25, 21, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP2Triangles(30, 31, 26, 0, 30, 26, 29, 0),
    gsSPVertex(&ice_doukutu_room_3Vtx_000E08[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(6, 8, 9, 0, 7, 6, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 12, 13, 14, 0),
    gsSP2Triangles(10, 12, 14, 0, 15, 0, 3, 0),
    gsSP2Triangles(15, 3, 16, 0, 17, 4, 7, 0),
    gsSP2Triangles(17, 7, 18, 0, 18, 9, 19, 0),
    gsSP2Triangles(18, 7, 9, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 21, 20, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 24, 26, 0, 28, 29, 30, 0),
    gsSP1Triangle(28, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_3Vtx_000E08[96], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(4, 5, 2, 0, 6, 7, 3, 0),
    gsSP2Triangles(6, 3, 2, 0, 8, 6, 2, 0),
    gsSP2Triangles(8, 2, 1, 0, 9, 10, 7, 0),
    gsSP2Triangles(8, 11, 12, 0, 8, 12, 9, 0),
    gsSP2Triangles(9, 7, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 19, 20, 21, 0),
    gsSP2Triangles(17, 19, 21, 0, 22, 17, 21, 0),
    gsSP2Triangles(22, 21, 23, 0, 24, 22, 23, 0),
    gsSP2Triangles(24, 23, 25, 0, 26, 27, 28, 0),
    gsSP2Triangles(26, 28, 29, 0, 30, 26, 29, 0),
    gsSP1Triangle(30, 29, 31, 0),
    gsSPVertex(&ice_doukutu_room_3Vtx_000E08[128], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(4, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(4, 11, 5, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(12, 18, 19, 0, 12, 19, 13, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 25, 27, 0, 28, 29, 25, 0),
    gsSPVertex(&ice_doukutu_room_3Vtx_000E08[158], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 1, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(6, 10, 11, 0, 2, 6, 11, 0),
    gsSP2Triangles(12, 3, 5, 0, 12, 5, 9, 0),
    gsSP2Triangles(12, 9, 8, 0, 4, 3, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(19, 22, 23, 0, 22, 24, 23, 0),
    gsSP2Triangles(19, 23, 25, 0, 19, 25, 20, 0),
    gsSP2Triangles(26, 25, 27, 0, 28, 26, 27, 0),
    gsSP2Triangles(29, 28, 27, 0, 27, 25, 23, 0),
    gsSP2Triangles(24, 30, 27, 0, 30, 29, 27, 0),
    gsSP1Triangle(24, 27, 23, 0),
    gsSPVertex(&ice_doukutu_room_3Vtx_000E08[189], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 1, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 5, 7, 0, 9, 8, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 10, 12, 0),
    gsSP2Triangles(11, 14, 12, 0, 13, 12, 15, 0),
    gsSP2Triangles(11, 16, 14, 0, 17, 18, 19, 0),
    gsSP2Triangles(19, 20, 17, 0, 21, 18, 17, 0),
    gsSP2Triangles(12, 14, 22, 0, 12, 22, 23, 0),
    gsSP2Triangles(12, 23, 15, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 26, 27, 0, 28, 29, 30, 0),
    gsSP1Triangle(28, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_3Vtx_000E08[221], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 7, 10, 0),
    gsSP2Triangles(10, 9, 12, 0, 13, 11, 10, 0),
    gsSP2Triangles(13, 10, 12, 0, 14, 15, 16, 0),
    gsSP2Triangles(14, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(25, 26, 22, 0, 25, 22, 27, 0),
    gsSP2Triangles(22, 24, 27, 0, 28, 29, 30, 0),
    gsSP1Triangle(28, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_3Vtx_000E08[253], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(5, 8, 7, 0, 4, 9, 5, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 17, 15, 0),
    gsSP2Triangles(18, 19, 17, 0, 18, 20, 19, 0),
    gsSP2Triangles(14, 16, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(25, 26, 23, 0, 22, 27, 28, 0),
    gsSP2Triangles(22, 29, 27, 0, 22, 24, 29, 0),
    gsSPVertex(&ice_doukutu_room_3Vtx_000E08[283], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 5, 0, 5, 3, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 7, 9, 0),
    gsSP2Triangles(7, 10, 9, 0, 10, 11, 9, 0),
    gsSP2Triangles(12, 11, 10, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 13, 15, 0, 17, 18, 19, 0),
    gsSP1Triangle(17, 19, 20, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_3Vtx_002610[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_3Vtx_002610.vtx.inc"
};

Gfx ice_doukutu_room_3DL_002D90[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_3Vtx_002610[112], 8, 0),
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
    gsSPVertex(ice_doukutu_room_3Vtx_002610, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 3, 4, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 5, 6, 0),
    gsSP2Triangles(7, 8, 5, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(12, 16, 15, 0, 12, 7, 16, 0),
    gsSP2Triangles(17, 7, 12, 0, 17, 8, 7, 0),
    gsSP2Triangles(17, 18, 8, 0, 19, 18, 17, 0),
    gsSP2Triangles(13, 20, 14, 0, 20, 21, 14, 0),
    gsSP2Triangles(21, 2, 14, 0, 14, 2, 22, 0),
    gsSP2Triangles(22, 2, 1, 0, 22, 19, 17, 0),
    gsSP2Triangles(22, 23, 19, 0, 22, 1, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 31, 30, 0),
    gsSPVertex(&ice_doukutu_room_3Vtx_002610[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 2, 0, 2, 5, 6, 0),
    gsSP2Triangles(6, 5, 7, 0, 8, 9, 6, 0),
    gsSP2Triangles(0, 2, 6, 0, 8, 6, 7, 0),
    gsSP2Triangles(10, 8, 7, 0, 10, 7, 11, 0),
    gsSP2Triangles(12, 10, 11, 0, 12, 11, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 19, 0),
    gsSP2Triangles(18, 21, 19, 0, 19, 22, 23, 0),
    gsSP2Triangles(19, 23, 20, 0, 9, 0, 6, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 24, 0),
    gsSP2Triangles(27, 24, 26, 0, 26, 25, 29, 0),
    gsSP2Triangles(30, 27, 26, 0, 30, 26, 29, 0),
    gsSP1Triangle(29, 25, 31, 0),
    gsSPVertex(&ice_doukutu_room_3Vtx_002610[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 1, 6, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 9, 13, 5, 0),
    gsSP2Triangles(9, 5, 7, 0, 10, 12, 8, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 20, 18, 0, 18, 21, 19, 0),
    gsSP2Triangles(22, 17, 19, 0, 22, 19, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 27, 25, 0),
    gsSP2Triangles(28, 24, 26, 0, 8, 7, 29, 0),
    gsSP1Triangle(7, 6, 29, 0),
    gsSPVertex(&ice_doukutu_room_3Vtx_002610[94], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 5, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_3Vtx_002FF0[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_3Vtx_002FF0.vtx.inc"
};

Gfx ice_doukutu_room_3DL_0030F0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_3Vtx_002FF0[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_3Tex_003208, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 15),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, 14, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x09000000),
    gsSPVertex(ice_doukutu_room_3Vtx_002FF0, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx ice_doukutu_room_3DL_0031D8[] = {
    gsSPDisplayList(ice_doukutu_room_3DL_0003E0),
    gsSPDisplayList(ice_doukutu_room_3DL_000BD0),
    gsSPDisplayList(ice_doukutu_room_3DL_002188),
    gsSPDisplayList(ice_doukutu_room_3DL_002D90),
    gsSPDisplayList(ice_doukutu_room_3DL_0030F0),
    gsSPEndDisplayList(),
};

u64 ice_doukutu_room_3Tex_003208[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_3Tex_003208.rgba16.inc.c"
};

u64 ice_doukutu_room_3Tex_003A08[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_3Tex_003A08.ci4.inc.c"
};

u8 ice_doukutu_room_3_possiblePadding_004208[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx ice_doukutu_room_3Vtx_004210[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_3Vtx_004210.vtx.inc"
};

Gfx ice_doukutu_room_3DL_0049B0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_3Vtx_004210[114], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_3Tex_007090, G_IM_FMT_I, G_IM_SIZ_8b, 32, 128, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_3Vtx_004210, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 1, 0, 6, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_room_3Tex_005090, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ice_doukutu_room_3Vtx_004210[8], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 8, 7, 0, 6, 9, 8, 0),
    gsSP2Triangles(9, 10, 8, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 20, 19, 0, 21, 22, 23, 0),
    gsSP2Triangles(22, 24, 23, 0, 22, 25, 24, 0),
    gsSP2Triangles(22, 18, 25, 0, 26, 27, 28, 0),
    gsSP2Triangles(26, 28, 29, 0, 18, 17, 30, 0),
    gsSP1Triangle(18, 30, 25, 0),
    gsSPVertex(&ice_doukutu_room_3Vtx_004210[39], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 3, 5, 4, 0),
    gsSP2Triangles(3, 6, 5, 0, 3, 7, 6, 0),
    gsSP2Triangles(3, 8, 7, 0, 8, 9, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 17, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 0, 19, 0),
    gsSP2Triangles(0, 21, 19, 0, 21, 22, 19, 0),
    gsSP2Triangles(22, 20, 19, 0, 0, 23, 21, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&ice_doukutu_room_3Vtx_004210[70], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 14, 15, 0, 11, 15, 12, 0),
    gsSP2Triangles(14, 10, 15, 0, 14, 8, 10, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 16, 23, 24, 0),
    gsSP2Triangles(20, 25, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(29, 28, 30, 0, 30, 28, 31, 0),
    gsSPVertex(&ice_doukutu_room_3Vtx_004210[102], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_room_3Tex_007090, G_IM_FMT_I, G_IM_SIZ_8b, 32, 128, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ice_doukutu_room_3Vtx_004210[106], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_3Vtx_004C30[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_3Vtx_004C30.vtx.inc"
};

Gfx ice_doukutu_room_3DL_004D30[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_3Vtx_004C30[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_3Tex_007090, G_IM_FMT_I, G_IM_SIZ_8b, 32, 128, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_3Vtx_004C30, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 1, 0, 6, 1, 0, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_3Vtx_004DF8[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_3Vtx_004DF8.vtx.inc"
};

Gfx ice_doukutu_room_3DL_004F88[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_3Vtx_004DF8[17], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_3Tex_006090, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, PRIMITIVE, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPVertex(ice_doukutu_room_3Vtx_004DF8, 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 4, 2, 0, 3, 5, 6, 0),
    gsSP2Triangles(3, 6, 7, 0, 3, 7, 8, 0),
    gsSP2Triangles(3, 8, 4, 0, 9, 10, 11, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 13, 11, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0),
    gsSP1Triangle(14, 16, 15, 0),
    gsSPEndDisplayList(),
};

Gfx ice_doukutu_room_3DL_005070[] = {
    gsSPDisplayList(ice_doukutu_room_3DL_0049B0),
    gsSPDisplayList(ice_doukutu_room_3DL_004D30),
    gsSPDisplayList(ice_doukutu_room_3DL_004F88),
    gsSPEndDisplayList(),
};

u64 ice_doukutu_room_3Tex_005090[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_3Tex_005090.i8.inc.c"
};

u64 ice_doukutu_room_3Tex_006090[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_3Tex_006090.rgba16.inc.c"
};

u64 ice_doukutu_room_3Tex_007090[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_3Tex_007090.i8.inc.c"
};

