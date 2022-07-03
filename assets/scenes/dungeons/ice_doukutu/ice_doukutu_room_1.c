#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ice_doukutu_room_1.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "ice_doukutu_scene.h"
#include "ice_doukutu_room_0.h"
#include "ice_doukutu_room_2.h"
#include "ice_doukutu_room_3.h"
#include "ice_doukutu_room_4.h"
#include "ice_doukutu_room_5.h"
#include "ice_doukutu_room_6.h"
#include "ice_doukutu_room_7.h"
#include "ice_doukutu_room_8.h"
#include "ice_doukutu_room_9.h"
#include "ice_doukutu_room_10.h"
#include "ice_doukutu_room_11.h"

SceneCmd ice_doukutu_room_1Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(ice_doukutu_room_1AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x01, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&ice_doukutu_room_1PolygonType0_000140),
    SCENE_CMD_OBJECT_LIST(13, ice_doukutu_room_1ObjectList_000058),
    SCENE_CMD_ACTOR_LIST(12, ice_doukutu_room_1ActorList_000074),
    SCENE_CMD_END(),
};

SceneCmd* ice_doukutu_room_1AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    ice_doukutu_room_1Set_000160,
};

s16 ice_doukutu_room_1ObjectList_000058[] = {
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

ActorEntry ice_doukutu_room_1ActorList_000074[] = {
    { ACTOR_EN_FZ,            {      4,    -10,   1058 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_TITE,          {   -132,    -10,   1252 }, {      0,      0,      0 }, 0xFFFE },
    { ACTOR_EN_TITE,          {    140,    -10,   1256 }, {      0,      0,      0 }, 0xFFFE },
    { ACTOR_BG_ICE_TURARA,    {    204,    420,    910 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_BG_ICE_TURARA,    {    268,    420,    980 }, {      0,      0,      0 }, 0x0001 },
    { ACTOR_OBJ_TSUBO,        {     51,     11,    718 }, {      0,      0,      0 }, 0x4A03 },
    { ACTOR_OBJ_TSUBO,        {     52,     10,    768 }, {      0,      0,      0 }, 0x4C03 },
    { ACTOR_OBJ_SWITCH,       {    320,     98,    884 }, { 0X1111, 0XF333,  0X2D8 }, 0x2813 },
    { ACTOR_BG_GND_DARKMEIRO, {    -51,     51,    840 }, { 0X4000,      0,      0 }, 0x2801 },
    { ACTOR_BG_GND_DARKMEIRO, {     49,     51,    840 }, { 0X4000,      0,      0 }, 0x2801 },
    { ACTOR_BG_GND_DARKMEIRO, {     49,    151,    840 }, { 0X4000,      0,      0 }, 0x2801 },
    { ACTOR_BG_GND_DARKMEIRO, {    -51,    151,    840 }, { 0X4000,      0,      0 }, 0x2801 },
};

u8 ice_doukutu_room_1_possiblePadding_000134[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType0 ice_doukutu_room_1PolygonType0_000140 = { 
    0, 1,
    ice_doukutu_room_1PolygonDlist_00014C,
    ice_doukutu_room_1PolygonDlist_00014C + ARRAY_COUNTU(ice_doukutu_room_1PolygonDlist_00014C)
};

PolygonDlist ice_doukutu_room_1PolygonDlist_00014C[1] = {
    { ice_doukutu_room_1DL_0040D8, ice_doukutu_room_1DL_00AB10 },
};

s32 ice_doukutu_room_1_terminatorMaybe_000154 = { 0x01000000 };

u8 ice_doukutu_room_1_possiblePadding_000158[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd ice_doukutu_room_1Set_000160[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x00, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&ice_doukutu_room_1PolygonType0_000140),
    SCENE_CMD_OBJECT_LIST(3, ice_doukutu_room_1ObjectList_000198),
    SCENE_CMD_END(),
};

s16 ice_doukutu_room_1ObjectList_000198[] = {
    OBJECT_ICE_OBJECTS,
    OBJECT_XC,
    OBJECT_GI_MELODY,
};

Vtx ice_doukutu_room_1Vtx_0001A0[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_1Vtx_0001A0.vtx.inc"
};

Gfx ice_doukutu_room_1DL_001340[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_1Vtx_0001A0[274], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_1Tex_004110, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_1Vtx_0001A0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 1, 0, 8, 1, 10, 0),
    gsSP2Triangles(11, 10, 12, 0, 13, 12, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 21, 22, 0, 21, 20, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 18, 26, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 23, 29, 0),
    gsSPVertex(&ice_doukutu_room_1Vtx_0001A0[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 1, 5, 0),
    gsSP2Triangles(7, 8, 9, 0, 7, 9, 5, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(10, 16, 17, 0, 16, 12, 18, 0),
    gsSP2Triangles(12, 19, 18, 0, 20, 21, 19, 0),
    gsSP2Triangles(22, 10, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 24, 28, 0),
    gsSP1Triangle(27, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_1Vtx_0001A0[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 7, 9, 0, 11, 10, 9, 0),
    gsSP2Triangles(11, 9, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 13, 19, 20, 0),
    gsSP2Triangles(21, 17, 20, 0, 13, 20, 22, 0),
    gsSP2Triangles(23, 13, 22, 0, 23, 22, 24, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 23, 25, 0),
    gsSP2Triangles(27, 26, 25, 0, 28, 29, 25, 0),
    gsSP1Triangle(30, 27, 25, 0),
    gsSPVertex(&ice_doukutu_room_1Vtx_0001A0[93], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 6, 0),
    gsSP2Triangles(7, 6, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(10, 13, 11, 0, 14, 10, 15, 0),
    gsSP2Triangles(10, 16, 15, 0, 16, 12, 17, 0),
    gsSP2Triangles(2, 18, 19, 0, 2, 14, 18, 0),
    gsSP2Triangles(20, 12, 19, 0, 2, 12, 21, 0),
    gsSP2Triangles(0, 2, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 29, 30, 0),
    gsSPVertex(&ice_doukutu_room_1Vtx_0001A0[124], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 5, 7, 0, 8, 7, 5, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 6, 16, 17, 0),
    gsSP2Triangles(16, 18, 17, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 21, 0, 22, 21, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 29, 30, 0),
    gsSP2Triangles(28, 30, 31, 0, 27, 26, 29, 0),
    gsSP1Triangle(27, 29, 28, 0),
    gsSPVertex(&ice_doukutu_room_1Vtx_0001A0[156], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(3, 4, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_room_1Tex_006910, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ice_doukutu_room_1Vtx_0001A0[161], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(1, 5, 6, 0, 1, 4, 5, 0),
    gsSP2Triangles(2, 6, 7, 0, 2, 1, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(11, 12, 9, 0, 12, 13, 9, 0),
    gsSP2Triangles(10, 9, 14, 0, 9, 13, 15, 0),
    gsSP2Triangles(9, 15, 14, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 18, 19, 0, 20, 2, 21, 0),
    gsSP2Triangles(21, 2, 22, 0, 2, 7, 22, 0),
    gsSP2Triangles(23, 24, 16, 0, 16, 24, 17, 0),
    gsSP2Triangles(23, 25, 24, 0, 26, 27, 28, 0),
    gsSP2Triangles(27, 29, 28, 0, 27, 30, 29, 0),
    gsSPVertex(&ice_doukutu_room_1Vtx_0001A0[192], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 9, 14, 0, 9, 12, 14, 0),
    gsSP2Triangles(5, 4, 8, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 15, 17, 0, 15, 19, 20, 0),
    gsSP2Triangles(15, 20, 16, 0, 21, 22, 23, 0),
    gsSP2Triangles(7, 24, 25, 0, 26, 24, 7, 0),
    gsSP1Triangle(27, 28, 29, 0),
    gsSPVertex(&ice_doukutu_room_1Vtx_0001A0[222], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP1Triangle(7, 9, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_room_1Tex_005910, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ice_doukutu_room_1Vtx_0001A0[233], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_room_1Tex_005110, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ice_doukutu_room_1Vtx_0001A0[245], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_room_1Tex_005910, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ice_doukutu_room_1Vtx_0001A0[249], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_room_1Tex_005110, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ice_doukutu_room_1Vtx_0001A0[261], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_room_1Tex_005910, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ice_doukutu_room_1Vtx_0001A0[265], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 4, 1, 0, 5, 6, 7, 0),
    gsSP1Triangle(5, 7, 8, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_1Vtx_001868[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_1Vtx_001868.vtx.inc"
};

Gfx ice_doukutu_room_1DL_002928[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_1Vtx_001868[260], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_1Tex_008110, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ice_doukutu_room_1Vtx_001868, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(4, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 15, 0, 13, 16, 17, 0),
    gsSP2Triangles(13, 17, 14, 0, 5, 18, 3, 0),
    gsSP2Triangles(11, 10, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 22, 17, 0, 21, 23, 24, 0),
    gsSP2Triangles(21, 24, 22, 0, 25, 15, 26, 0),
    gsSP2Triangles(25, 26, 2, 0, 26, 0, 2, 0),
    gsSP2Triangles(27, 28, 29, 0, 30, 31, 29, 0),
    gsSP1Triangle(31, 27, 29, 0),
    gsSPVertex(&ice_doukutu_room_1Vtx_001868[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 7, 0, 3, 5, 7, 0),
    gsSP2Triangles(8, 0, 2, 0, 9, 8, 2, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 10, 13, 0, 14, 13, 15, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 12, 0),
    gsSP2Triangles(17, 12, 11, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(27, 29, 30, 0, 9, 31, 8, 0),
    gsSPVertex(&ice_doukutu_room_1Vtx_001868[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(12, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0),
    gsSP2Triangles(24, 25, 26, 0, 20, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_1Vtx_001868[96], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 6, 7, 0, 3, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 10, 19, 20, 0),
    gsSP2Triangles(13, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_1Vtx_001868[128], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 6, 15, 16, 0),
    gsSP2Triangles(9, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(19, 28, 29, 0, 22, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_1Vtx_001868[160], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 0, 9, 10, 0),
    gsSP2Triangles(3, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(13, 22, 23, 0, 16, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_1Vtx_001868[192], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 7, 13, 14, 0),
    gsSP2Triangles(7, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(19, 25, 26, 0, 19, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&ice_doukutu_room_1Vtx_001868[223], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 6, 7, 0, 0, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 18, 16, 0),
    gsSP2Triangles(19, 20, 21, 0, 15, 22, 23, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_room_1Tex_007110, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&ice_doukutu_room_1Vtx_001868[247], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_room_1Tex_008110, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&ice_doukutu_room_1Vtx_001868[251], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 2, 0, 0, 5, 3, 0),
    gsSP2Triangles(0, 6, 5, 0, 0, 7, 6, 0),
    gsSP1Triangle(0, 8, 7, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_1Vtx_002CC0[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_1Vtx_002CC0.vtx.inc"
};

Gfx ice_doukutu_room_1DL_002D80[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_1Vtx_002CC0[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_1Tex_009110, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
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
    gsSPVertex(ice_doukutu_room_1Vtx_002CC0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_1Vtx_002E58[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_1Vtx_002E58.vtx.inc"
};

Gfx ice_doukutu_room_1DL_002F18[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_1Vtx_002E58[4], 8, 0),
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
    gsSPVertex(ice_doukutu_room_1Vtx_002E58, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_1Vtx_002F98[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_1Vtx_002F98.vtx.inc"
};

Gfx ice_doukutu_room_1DL_003628[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_1Vtx_002F98[97], 8, 0),
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
    gsSPVertex(ice_doukutu_room_1Vtx_002F98, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(4, 6, 10, 0, 7, 9, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(14, 16, 17, 0, 14, 17, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 13, 18, 20, 0),
    gsSP2Triangles(13, 20, 14, 0, 20, 21, 16, 0),
    gsSP2Triangles(20, 16, 14, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 25, 23, 0, 22, 24, 26, 0),
    gsSP2Triangles(25, 27, 28, 0, 25, 28, 29, 0),
    gsSP2Triangles(25, 29, 23, 0, 29, 24, 23, 0),
    gsSPVertex(&ice_doukutu_room_1Vtx_002F98[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 0, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 6, 8, 0),
    gsSP2Triangles(9, 8, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 11, 13, 0, 14, 13, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(17, 20, 21, 0, 17, 21, 18, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_1Vtx_002F98[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(7, 8, 6, 0, 9, 10, 11, 0),
    gsSP2Triangles(10, 12, 11, 0, 10, 13, 12, 0),
    gsSP2Triangles(10, 14, 13, 0, 15, 2, 16, 0),
    gsSP2Triangles(2, 3, 17, 0, 2, 17, 16, 0),
    gsSP2Triangles(8, 18, 6, 0, 18, 19, 4, 0),
    gsSP2Triangles(18, 4, 6, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 22, 0, 21, 23, 22, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 25, 27, 0),
    gsSP2Triangles(29, 28, 27, 0, 30, 28, 29, 0),
    gsSP1Triangle(31, 21, 20, 0),
    gsSPVertex(&ice_doukutu_room_1Vtx_002F98[94], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_1Vtx_003830[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_1Vtx_003830.vtx.inc"
};

Gfx ice_doukutu_room_1DL_003ED0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_1Vtx_003830[98], 8, 0),
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
    gsSPVertex(ice_doukutu_room_1Vtx_003830, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(15, 16, 14, 0, 17, 12, 14, 0),
    gsSP2Triangles(18, 12, 17, 0, 16, 19, 17, 0),
    gsSP2Triangles(16, 17, 14, 0, 20, 21, 18, 0),
    gsSP2Triangles(19, 20, 17, 0, 20, 18, 17, 0),
    gsSP2Triangles(22, 23, 20, 0, 22, 20, 19, 0),
    gsSP2Triangles(23, 24, 20, 0, 23, 25, 24, 0),
    gsSP2Triangles(24, 21, 20, 0, 26, 27, 28, 0),
    gsSP2Triangles(26, 28, 29, 0, 27, 30, 28, 0),
    gsSPVertex(&ice_doukutu_room_1Vtx_003830[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 4, 7, 0, 1, 8, 7, 0),
    gsSP2Triangles(9, 10, 5, 0, 9, 5, 4, 0),
    gsSP2Triangles(8, 11, 9, 0, 8, 9, 4, 0),
    gsSP2Triangles(12, 13, 10, 0, 12, 10, 9, 0),
    gsSP2Triangles(14, 12, 9, 0, 11, 14, 9, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 17, 16, 0),
    gsSP2Triangles(18, 16, 19, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 18, 20, 0, 22, 23, 24, 0),
    gsSP2Triangles(23, 25, 24, 0, 26, 27, 28, 0),
    gsSP2Triangles(27, 29, 30, 0, 27, 30, 28, 0),
    gsSP1Triangle(29, 31, 30, 0),
    gsSPVertex(&ice_doukutu_room_1Vtx_003830[63], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP2Triangles(7, 10, 9, 0, 7, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&ice_doukutu_room_1Vtx_003830[95], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx ice_doukutu_room_1DL_0040D8[] = {
    gsSPDisplayList(ice_doukutu_room_1DL_001340),
    gsSPDisplayList(ice_doukutu_room_1DL_002928),
    gsSPDisplayList(ice_doukutu_room_1DL_002D80),
    gsSPDisplayList(ice_doukutu_room_1DL_002F18),
    gsSPDisplayList(ice_doukutu_room_1DL_003628),
    gsSPDisplayList(ice_doukutu_room_1DL_003ED0),
    gsSPEndDisplayList(),
};

u64 ice_doukutu_room_1Tex_004110[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_1Tex_004110.rgba16.inc.c"
};

u64 ice_doukutu_room_1Tex_005110[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_1Tex_005110.rgba16.inc.c"
};

u64 ice_doukutu_room_1Tex_005910[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_1Tex_005910.rgba16.inc.c"
};

u64 ice_doukutu_room_1Tex_006910[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_1Tex_006910.rgba16.inc.c"
};

u64 ice_doukutu_room_1Tex_007110[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_1Tex_007110.rgba16.inc.c"
};

u64 ice_doukutu_room_1Tex_008110[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_1Tex_008110.i8.inc.c"
};

u64 ice_doukutu_room_1Tex_009110[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_1Tex_009110.rgba16.inc.c"
};

Vtx ice_doukutu_room_1Vtx_009910[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_1Vtx_009910.vtx.inc"
};

Gfx ice_doukutu_room_1DL_0099D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_1Vtx_009910[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_1Tex_00AB30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, PRIMITIVE, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPVertex(ice_doukutu_room_1Vtx_009910, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_1Vtx_009A88[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_1Vtx_009A88.vtx.inc"
};

Gfx ice_doukutu_room_1DL_009B48[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_1Vtx_009A88[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ice_doukutu_room_1Tex_00BD30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
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
    gsSPVertex(ice_doukutu_room_1Vtx_009A88, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx ice_doukutu_room_1Vtx_009C20[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_1Vtx_009C20.vtx.inc"
};

Gfx ice_doukutu_room_1DL_00A750[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ice_doukutu_room_1Vtx_009C20[171], 8, 0),
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
    gsSPVertex(ice_doukutu_room_1Vtx_009C20, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 2, 0, 6, 1, 0, 0),
    gsSP2Triangles(6, 0, 7, 0, 7, 0, 5, 0),
    gsSP2Triangles(7, 5, 8, 0, 8, 5, 9, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 11, 13, 0, 15, 16, 13, 0),
    gsSP2Triangles(17, 18, 11, 0, 17, 11, 19, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(23, 16, 15, 0, 23, 15, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 25, 27, 0),
    gsSP2Triangles(29, 28, 27, 0, 30, 31, 27, 0),
    gsSPVertex(&ice_doukutu_room_1Vtx_009C20[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 6, 5, 7, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 7, 9, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 1, 0),
    gsSP2Triangles(11, 1, 13, 0, 13, 1, 0, 0),
    gsSP2Triangles(13, 0, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 15, 17, 0, 19, 20, 17, 0),
    gsSP2Triangles(21, 16, 15, 0, 21, 15, 22, 0),
    gsSP2Triangles(22, 15, 20, 0, 22, 20, 23, 0),
    gsSP2Triangles(23, 20, 24, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 26, 28, 0),
    gsSP2Triangles(30, 29, 28, 0, 31, 27, 26, 0),
    gsSPVertex(&ice_doukutu_room_1Vtx_009C20[64], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(3, 4, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 8, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 10, 12, 0, 14, 13, 12, 0),
    gsSP2Triangles(15, 14, 12, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 18, 19, 0, 19, 18, 13, 0),
    gsSP2Triangles(19, 13, 20, 0, 21, 13, 22, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 14, 15, 0),
    gsSP1Triangle(24, 15, 25, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_room_1Tex_00BB30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ice_doukutu_room_1Vtx_009C20[90], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 3, 2, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 8, 9, 0, 10, 4, 3, 0),
    gsSP2Triangles(10, 3, 11, 0, 12, 13, 5, 0),
    gsSP2Triangles(12, 5, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 17, 21, 27, 0),
    gsSP2Triangles(21, 20, 27, 0, 28, 29, 27, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_sceneTex_0108C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ice_doukutu_room_1Vtx_009C20[120], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 8, 7, 3, 0),
    gsSP2Triangles(8, 3, 9, 0, 10, 4, 1, 0),
    gsSP1Triangle(10, 1, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_room_1Tex_00BB30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ice_doukutu_room_1Vtx_009C20[132], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 3, 2, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 8, 9, 0, 10, 4, 3, 0),
    gsSP2Triangles(10, 3, 11, 0, 12, 13, 5, 0),
    gsSP1Triangle(12, 5, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ice_doukutu_sceneTex_0108C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ice_doukutu_room_1Vtx_009C20[147], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(2, 1, 12, 0, 1, 10, 12, 0),
    gsSP2Triangles(10, 9, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 14, 0),
    gsSP2Triangles(17, 14, 19, 0, 20, 21, 18, 0),
    gsSP2Triangles(20, 18, 17, 0, 22, 14, 23, 0),
    gsSP2Triangles(14, 18, 23, 0, 18, 21, 23, 0),
    gsSPEndDisplayList(),
};

Gfx ice_doukutu_room_1DL_00AB10[] = {
    gsSPDisplayList(ice_doukutu_room_1DL_0099D0),
    gsSPDisplayList(ice_doukutu_room_1DL_009B48),
    gsSPDisplayList(ice_doukutu_room_1DL_00A750),
    gsSPEndDisplayList(),
};

u64 ice_doukutu_room_1Tex_00AB30[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_1Tex_00AB30.rgba16.inc.c"
};

u64 ice_doukutu_room_1Tex_00BB30[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_1Tex_00BB30.rgba16.inc.c"
};

u64 ice_doukutu_room_1Tex_00BD30[] = {
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_room_1Tex_00BD30.rgba16.inc.c"
};

