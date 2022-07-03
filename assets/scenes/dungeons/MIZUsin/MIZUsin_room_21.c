#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "MIZUsin_room_21.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "MIZUsin_scene.h"
#include "MIZUsin_room_0.h"
#include "MIZUsin_room_1.h"
#include "MIZUsin_room_2.h"
#include "MIZUsin_room_3.h"
#include "MIZUsin_room_4.h"
#include "MIZUsin_room_5.h"
#include "MIZUsin_room_6.h"
#include "MIZUsin_room_7.h"
#include "MIZUsin_room_8.h"
#include "MIZUsin_room_9.h"
#include "MIZUsin_room_10.h"
#include "MIZUsin_room_11.h"
#include "MIZUsin_room_12.h"
#include "MIZUsin_room_13.h"
#include "MIZUsin_room_14.h"
#include "MIZUsin_room_15.h"
#include "MIZUsin_room_16.h"
#include "MIZUsin_room_17.h"
#include "MIZUsin_room_18.h"
#include "MIZUsin_room_19.h"
#include "MIZUsin_room_20.h"
#include "MIZUsin_room_22.h"

SceneCmd MIZUsin_room_21Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&MIZUsin_room_21PolygonType2_000190),
    SCENE_CMD_OBJECT_LIST(5, MIZUsin_room_21ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(20, MIZUsin_room_21ActorList_00004C),
    SCENE_CMD_END(),
};

s16 MIZUsin_room_21ObjectList_000040[] = {
    OBJECT_MIZU_OBJECTS,
    OBJECT_STREAM,
    OBJECT_D_HSBLOCK,
    OBJECT_ST,
    OBJECT_GI_SUTARU,
};

ActorEntry MIZUsin_room_21ActorList_00004C[] = {
    { ACTOR_OBJ_HSBLOCK, {  -2794,    305,  -3896 }, {      0,      0,      0 }, 0xFFC0 },
    { ACTOR_OBJ_HSBLOCK, {  -3022,    175,  -3149 }, {      0,      0,      0 }, 0xFFC0 },
    { ACTOR_OBJ_HSBLOCK, {  -2431,    175,  -3298 }, {      0,      0,      0 }, 0xFFC0 },
    { ACTOR_OBJ_HSBLOCK, {  -2958,    175,  -2534 }, {      0,      0,      0 }, 0xFFC0 },
    { ACTOR_OBJ_HSBLOCK, {  -2547,    175,  -2733 }, {      0,      0,      0 }, 0xFFC0 },
    { ACTOR_OBJ_HSBLOCK, {  -2046,    175,  -3022 }, {      0,      0,      0 }, 0xFFC0 },
    { ACTOR_OBJ_HSBLOCK, {  -1702,    161,  -2680 }, {      0,      0,      0 }, 0xFFC0 },
    { ACTOR_OBJ_HSBLOCK, {  -2142,    373,  -2425 }, {      0, 0X8000,      0 }, 0xFFC2 },
    { ACTOR_OBJ_HSBLOCK, {  -1881,    396,  -2757 }, { 0X8000, 0X8000,      0 }, 0xFFC2 },
    { ACTOR_EN_STREAM,   {  -2762,    195,  -4378 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_STREAM,   {  -2560,    110,  -2510 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_STREAM,   {  -2280,    110,  -3390 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_STREAM,   {  -2081,    110,  -2783 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_STREAM,   {  -1882,    110,  -2503 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_STREAM,   {  -1763,    110,  -2825 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_SW,       {  -2565,    505,  -2732 }, {      0,      0, 0X582E }, 0x8602 },
    { ACTOR_ELF_MSG,     {  -2885,    380,  -4088 }, {   0X28,      0,      0 }, 0x47AB },
    { ACTOR_ELF_MSG,     {  -2862,    380,  -4358 }, {   0X28,      0,      0 }, 0x47AB },
    { ACTOR_OBJ_TSUBO,   {  -2226,    260,  -2487 }, {      0,      0,      0 }, 0x5E09 },
    { ACTOR_OBJ_TSUBO,   {  -2184,    260,  -2456 }, {      0,      0,      0 }, 0x6212 },
};

u8 MIZUsin_room_21_possiblePadding_00018C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 MIZUsin_room_21PolygonType2_000190 = { 
    2, 7,
    MIZUsin_room_21PolygonDlist2_00019C,
    MIZUsin_room_21PolygonDlist2_00019C + ARRAY_COUNTU(MIZUsin_room_21PolygonDlist2_00019C)
};

PolygonDlist2 MIZUsin_room_21PolygonDlist2_00019C[7] = {
    { {  -3120,    970,  -4020 },    576, MIZUsin_room_21DL_0003E0, NULL },
    { {  -1420,    220,  -1950 },    324, MIZUsin_room_21DL_003CD8, NULL },
    { {  -2420,    505,  -3625 },   1388, NULL, MIZUsin_room_21DL_006A40 },
    { {  -2370,    462,  -3495 },   1597, MIZUsin_room_21DL_002D40, NULL },
    { {  -1420,    380,  -1950 },    282, MIZUsin_room_21DL_004228, NULL },
    { {  -2370,    320,  -3375 },   1487, MIZUsin_room_21DL_004018, NULL },
    { {  -1890,    330,  -2450 },    496, MIZUsin_room_21DL_003A70, NULL },
};

s32 MIZUsin_room_21_terminatorMaybe_00020C = { 0x01000000 };

Vtx MIZUsin_room_21Vtx_000210[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_21Vtx_000210.vtx.inc"
};

Gfx MIZUsin_room_21DL_0003E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_21Vtx_000210[21], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(MIZUsin_room_21Vtx_000210, 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(3, 2, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP1Triangle(17, 19, 20, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_21Vtx_0004C0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_21Vtx_0004C0.vtx.inc"
};

Gfx MIZUsin_room_21DL_002D40[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_21Vtx_0004C0[640], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 4, 5),
    gsDPLoadMultiBlock(MIZUsin_room_21Tex_004360, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(MIZUsin_room_21Vtx_0004C0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(3, 12, 13, 0, 3, 13, 1, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 29, 30, 0),
    gsSP1Triangle(26, 30, 27, 0),
    gsSPVertex(&MIZUsin_room_21Vtx_0004C0[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 0, 4, 0, 1, 4, 5, 0),
    gsSP2Triangles(6, 5, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_21Vtx_0004C0[63], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 4, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 9, 12, 13, 0),
    gsSP2Triangles(14, 13, 15, 0, 16, 14, 15, 0),
    gsSP2Triangles(9, 13, 14, 0, 17, 10, 9, 0),
    gsSP2Triangles(17, 9, 18, 0, 14, 19, 18, 0),
    gsSP2Triangles(14, 18, 9, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 18, 19, 22, 0),
    gsSP2Triangles(18, 22, 23, 0, 17, 18, 23, 0),
    gsSP2Triangles(17, 23, 24, 0, 23, 22, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 25, 22, 0),
    gsSP2Triangles(27, 22, 21, 0, 28, 29, 30, 0),
    gsSP1Triangle(28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_21Vtx_0004C0[95], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(3, 4, 0, 0, 3, 5, 4, 0),
    gsSP2Triangles(6, 2, 7, 0, 6, 7, 8, 0),
    gsSP2Triangles(9, 3, 2, 0, 9, 2, 6, 0),
    gsSP2Triangles(5, 3, 9, 0, 5, 9, 10, 0),
    gsSP2Triangles(9, 11, 12, 0, 9, 12, 10, 0),
    gsSP2Triangles(11, 9, 6, 0, 11, 6, 13, 0),
    gsSP2Triangles(14, 13, 6, 0, 14, 6, 8, 0),
    gsSP2Triangles(15, 16, 11, 0, 15, 11, 13, 0),
    gsSP2Triangles(11, 16, 17, 0, 11, 17, 12, 0),
    gsSP2Triangles(18, 0, 4, 0, 0, 18, 19, 0),
    gsSP2Triangles(18, 20, 19, 0, 5, 21, 4, 0),
    gsSP2Triangles(21, 5, 22, 0, 18, 4, 21, 0),
    gsSP2Triangles(23, 24, 21, 0, 24, 25, 21, 0),
    gsSP2Triangles(26, 18, 21, 0, 18, 26, 20, 0),
    gsSP2Triangles(20, 27, 19, 0, 20, 28, 27, 0),
    gsSP2Triangles(28, 20, 26, 0, 29, 30, 22, 0),
    gsSP1Triangle(29, 22, 31, 0),
    gsSPVertex(&MIZUsin_room_21Vtx_0004C0[127], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 1, 4, 0, 1, 5, 4, 0),
    gsSP2Triangles(5, 1, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 4, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(24, 23, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(26, 28, 29, 0, 26, 29, 27, 0),
    gsSP2Triangles(30, 29, 28, 0, 30, 28, 31, 0),
    gsSPVertex(&MIZUsin_room_21Vtx_0004C0[159], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 1, 0, 8, 1, 0, 0),
    gsSP2Triangles(10, 8, 0, 0, 10, 0, 11, 0),
    gsSP2Triangles(12, 2, 1, 0, 12, 1, 13, 0),
    gsSP2Triangles(6, 5, 12, 0, 6, 12, 13, 0),
    gsSP2Triangles(13, 1, 9, 0, 13, 9, 14, 0),
    gsSP2Triangles(6, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 16, 15, 0),
    gsSP2Triangles(20, 19, 15, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 22, 16, 19, 0),
    gsSP2Triangles(22, 19, 23, 0, 23, 19, 20, 0),
    gsSP2Triangles(23, 20, 25, 0, 26, 25, 27, 0),
    gsSP2Triangles(26, 27, 28, 0, 24, 23, 25, 0),
    gsSP2Triangles(24, 25, 26, 0, 25, 20, 29, 0),
    gsSP2Triangles(25, 29, 27, 0, 29, 20, 15, 0),
    gsSP2Triangles(29, 15, 30, 0, 18, 31, 30, 0),
    gsSP1Triangle(15, 18, 30, 0),
    gsSPVertex(&MIZUsin_room_21Vtx_0004C0[191], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(14, 15, 11, 0, 14, 11, 10, 0),
    gsSP2Triangles(16, 11, 15, 0, 16, 15, 17, 0),
    gsSP2Triangles(7, 18, 19, 0, 7, 19, 8, 0),
    gsSP2Triangles(8, 19, 20, 0, 8, 20, 21, 0),
    gsSP2Triangles(20, 16, 17, 0, 22, 23, 24, 0),
    gsSP2Triangles(22, 24, 25, 0, 22, 25, 26, 0),
    gsSP2Triangles(22, 26, 27, 0, 28, 25, 24, 0),
    gsSP2Triangles(28, 24, 29, 0, 30, 25, 28, 0),
    gsSP1Triangle(30, 31, 25, 0),
    gsSPVertex(&MIZUsin_room_21Vtx_0004C0[223], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 16, 19, 0, 24, 19, 25, 0),
    gsSP2Triangles(26, 12, 15, 0, 26, 15, 27, 0),
    gsSP2Triangles(28, 20, 23, 0, 28, 23, 29, 0),
    gsSP2Triangles(14, 22, 21, 0, 30, 14, 21, 0),
    gsSP2Triangles(30, 21, 18, 0, 30, 18, 17, 0),
    gsSPVertex(&MIZUsin_room_21Vtx_0004C0[254], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 7, 11, 0, 10, 12, 7, 0),
    gsSP2Triangles(13, 9, 8, 0, 13, 8, 14, 0),
    gsSP2Triangles(15, 13, 14, 0, 15, 14, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(18, 21, 22, 0, 18, 22, 19, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(27, 23, 26, 0, 27, 26, 28, 0),
    gsSP2Triangles(29, 30, 22, 0, 29, 22, 21, 0),
    gsSPVertex(&MIZUsin_room_21Vtx_0004C0[285], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0),
    gsSP2Triangles(1, 6, 7, 0, 1, 7, 2, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 8, 11, 0, 12, 11, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 17, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(20, 22, 21, 0, 22, 23, 21, 0),
    gsSP2Triangles(22, 24, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(26, 23, 24, 0, 18, 27, 19, 0),
    gsSP2Triangles(26, 27, 18, 0, 26, 25, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 29, 31, 30, 0),
    gsSPVertex(&MIZUsin_room_21Vtx_0004C0[317], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 19, 22, 0),
    gsSP2Triangles(23, 24, 19, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 27, 28, 0, 27, 29, 30, 0),
    gsSP1Triangle(27, 30, 28, 0),
    gsSPVertex(&MIZUsin_room_21Vtx_0004C0[348], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0),
    gsSP2Triangles(17, 16, 18, 0, 17, 18, 19, 0),
    gsSP2Triangles(19, 18, 20, 0, 19, 20, 21, 0),
    gsSP2Triangles(21, 20, 11, 0, 21, 11, 10, 0),
    gsSP2Triangles(11, 20, 18, 0, 11, 18, 16, 0),
    gsSP2Triangles(11, 16, 14, 0, 11, 14, 12, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&MIZUsin_room_21Vtx_0004C0[378], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_21Vtx_0004C0[410], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(3, 2, 7, 0, 3, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 11, 12, 0, 8, 12, 13, 0),
    gsSP2Triangles(14, 9, 8, 0, 14, 8, 15, 0),
    gsSP2Triangles(16, 10, 9, 0, 16, 9, 14, 0),
    gsSP2Triangles(17, 11, 10, 0, 17, 10, 16, 0),
    gsSP2Triangles(18, 12, 11, 0, 18, 11, 17, 0),
    gsSP2Triangles(19, 13, 12, 0, 19, 12, 18, 0),
    gsSP2Triangles(15, 8, 13, 0, 15, 13, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(23, 22, 24, 0, 20, 25, 26, 0),
    gsSP2Triangles(26, 21, 20, 0, 27, 26, 25, 0),
    gsSP2Triangles(27, 25, 28, 0, 29, 27, 28, 0),
    gsSP2Triangles(23, 24, 29, 0, 23, 29, 28, 0),
    gsSP2Triangles(30, 25, 31, 0, 25, 20, 31, 0),
    gsSPVertex(&MIZUsin_room_21Vtx_0004C0[442], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(7, 2, 1, 0, 8, 2, 7, 0),
    gsSP2Triangles(8, 7, 9, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(13, 15, 14, 0, 15, 16, 14, 0),
    gsSP2Triangles(15, 17, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(19, 16, 17, 0, 11, 20, 12, 0),
    gsSP2Triangles(19, 20, 11, 0, 19, 18, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(24, 23, 25, 0, 24, 25, 26, 0),
    gsSP2Triangles(26, 25, 27, 0, 26, 27, 28, 0),
    gsSP2Triangles(28, 27, 29, 0, 28, 29, 30, 0),
    gsSP1Triangle(30, 29, 31, 0),
    gsSPVertex(&MIZUsin_room_21Vtx_0004C0[474], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(2, 3, 4, 0, 3, 1, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(3, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 11, 13, 12, 0),
    gsSP2Triangles(13, 14, 12, 0, 15, 16, 10, 0),
    gsSP2Triangles(15, 10, 9, 0, 15, 14, 13, 0),
    gsSP2Triangles(15, 13, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 20, 21, 0, 21, 22, 17, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(23, 26, 27, 0, 23, 27, 28, 0),
    gsSP2Triangles(29, 24, 23, 0, 29, 23, 30, 0),
    gsSP2Triangles(31, 25, 24, 0, 31, 24, 29, 0),
    gsSPVertex(&MIZUsin_room_21Vtx_0004C0[506], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 12, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 15, 18, 0, 13, 14, 19, 0),
    gsSP2Triangles(13, 19, 18, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 22, 23, 0, 22, 24, 23, 0),
    gsSP2Triangles(24, 25, 23, 0, 24, 26, 25, 0),
    gsSP2Triangles(20, 27, 21, 0, 28, 29, 27, 0),
    gsSPVertex(&MIZUsin_room_21Vtx_0004C0[536], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 1, 0, 11, 1, 0, 0),
    gsSP2Triangles(1, 10, 8, 0, 1, 8, 6, 0),
    gsSP2Triangles(1, 6, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 15, 12, 0),
    gsSP2Triangles(14, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 20, 21, 0, 20, 22, 21, 0),
    gsSP2Triangles(22, 23, 21, 0, 22, 24, 23, 0),
    gsSP2Triangles(18, 25, 19, 0, 26, 27, 25, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_21Vtx_0004C0[568], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 6, 4, 0, 8, 4, 2, 0),
    gsSP2Triangles(8, 2, 1, 0, 8, 1, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 13, 14, 11, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 20, 19, 21, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 18, 17, 0),
    gsSP2Triangles(23, 24, 18, 0, 22, 21, 24, 0),
    gsSP2Triangles(22, 24, 23, 0, 25, 26, 27, 0),
    gsSP2Triangles(26, 28, 27, 0, 28, 29, 27, 0),
    gsSP2Triangles(28, 26, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_21Vtx_0004C0[600], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 11, 15, 16, 0),
    gsSP2Triangles(11, 16, 12, 0, 17, 16, 15, 0),
    gsSP2Triangles(17, 15, 18, 0, 14, 13, 17, 0),
    gsSP2Triangles(14, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 1, 23, 24, 0),
    gsSP2Triangles(1, 24, 2, 0, 23, 1, 25, 0),
    gsSP2Triangles(1, 0, 26, 0, 1, 26, 25, 0),
    gsSP2Triangles(27, 23, 25, 0, 28, 29, 25, 0),
    gsSP1Triangle(29, 27, 25, 0),
    gsSPVertex(&MIZUsin_room_21Vtx_0004C0[630], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_21Vtx_0036A0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_21Vtx_0036A0.vtx.inc"
};

Gfx MIZUsin_room_21DL_003A70[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_21Vtx_0036A0[53], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 4, 5),
    gsDPLoadMultiBlock(MIZUsin_sceneTex_015030, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(MIZUsin_room_21Vtx_0036A0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_21Vtx_0036A0[32], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 15, 16, 0),
    gsSP2Triangles(12, 14, 16, 0, 17, 18, 19, 0),
    gsSP1Triangle(17, 19, 20, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_21Vtx_003BD8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_21Vtx_003BD8.vtx.inc"
};

Gfx MIZUsin_room_21DL_003CD8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_21Vtx_003BD8[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 4, 4),
    gsDPLoadMultiBlock(MIZUsin_room_21Tex_005360, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0B000000),
    gsSPVertex(MIZUsin_room_21Vtx_003BD8, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_21Vtx_003DD8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_21Vtx_003DD8.vtx.inc"
};

Gfx MIZUsin_room_21DL_004018[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_21Vtx_003DD8[28], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 4, 5),
    gsDPLoadMultiBlock(MIZUsin_room_21Tex_004B60, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(MIZUsin_room_21Vtx_003DD8, 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0),
    gsSP2Triangles(10, 4, 7, 0, 10, 7, 11, 0),
    gsSP2Triangles(12, 10, 11, 0, 12, 11, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 19, 22, 0),
    gsSP2Triangles(18, 22, 19, 0, 21, 23, 19, 0),
    gsSP2Triangles(19, 23, 20, 0, 24, 25, 26, 0),
    gsSP1Triangle(24, 26, 27, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_21Vtx_004158[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_21Vtx_004158.vtx.inc"
};

Gfx MIZUsin_room_21DL_004228[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_21Vtx_004158[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_room_21Tex_005B60, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0B000000),
    gsSPVertex(MIZUsin_room_21Vtx_004158, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 0, 2, 0, 4, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 MIZUsin_room_21_unaccounted_004328[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x03, 0xE0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2D, 0x40, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3A, 0x70, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x3C, 0xD8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x40, 0x18, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x42, 0x28, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 MIZUsin_room_21Tex_004360[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_21Tex_004360.rgba16.inc.c"
};

u64 MIZUsin_room_21Tex_004B60[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_21Tex_004B60.rgba16.inc.c"
};

u64 MIZUsin_room_21Tex_005360[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_21Tex_005360.rgba16.inc.c"
};

u64 MIZUsin_room_21Tex_005B60[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_21Tex_005B60.rgba16.inc.c"
};

Vtx MIZUsin_room_21Vtx_006360[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_21Vtx_006360.vtx.inc"
};

Gfx MIZUsin_room_21DL_006A40[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_21Vtx_006360[102], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 1),
    gsDPLoadMultiBlock(MIZUsin_room_21Tex_006CA0, 0x0100, 1, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 15),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPDisplayList(0x0D000000),
    gsSPVertex(MIZUsin_room_21Vtx_006360, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 0, 2, 0, 4, 2, 3, 0),
    gsSP2Triangles(5, 3, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(1, 8, 6, 0, 1, 6, 3, 0),
    gsSP2Triangles(5, 4, 3, 0, 0, 9, 1, 0),
    gsSP2Triangles(9, 8, 1, 0, 10, 11, 12, 0),
    gsSP2Triangles(11, 13, 12, 0, 10, 14, 11, 0),
    gsSP2Triangles(15, 16, 12, 0, 16, 14, 10, 0),
    gsSP2Triangles(16, 10, 12, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 20, 21, 0, 19, 18, 21, 0),
    gsSP2Triangles(22, 20, 18, 0, 23, 22, 18, 0),
    gsSP2Triangles(24, 23, 18, 0, 17, 24, 18, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 5, 7, 0),
    gsSP2Triangles(29, 28, 7, 0, 7, 30, 29, 0),
    gsSPVertex(&MIZUsin_room_21Vtx_006360[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(0, 2, 4, 0, 5, 0, 4, 0),
    gsSP2Triangles(5, 4, 3, 0, 6, 7, 8, 0),
    gsSP2Triangles(3, 9, 6, 0, 3, 6, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 10, 12, 0),
    gsSP2Triangles(13, 12, 14, 0, 10, 15, 16, 0),
    gsSP2Triangles(10, 16, 11, 0, 17, 18, 16, 0),
    gsSP2Triangles(15, 17, 16, 0, 17, 19, 20, 0),
    gsSP2Triangles(17, 20, 18, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 21, 23, 0, 25, 26, 23, 0),
    gsSP2Triangles(22, 25, 23, 0, 27, 28, 29, 0),
    gsSP1Triangle(27, 29, 30, 0),
    gsSPVertex(&MIZUsin_room_21Vtx_006360[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 2, 0, 1, 5, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 14, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(20, 22, 21, 0, 22, 23, 21, 0),
    gsSP2Triangles(22, 24, 23, 0, 24, 25, 23, 0),
    gsSP2Triangles(25, 21, 23, 0, 19, 26, 27, 0),
    gsSP2Triangles(19, 27, 28, 0, 28, 29, 30, 0),
    gsSP2Triangles(29, 31, 30, 0, 28, 27, 29, 0),
    gsSP1Triangle(27, 31, 29, 0),
    gsSPVertex(&MIZUsin_room_21Vtx_006360[94], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 3, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 1, 0, 0, 7, 6, 0, 0),
    gsSPEndDisplayList(),
};

u8 MIZUsin_room_21_unaccounted_006C90[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x6A, 0x40, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 MIZUsin_room_21Tex_006CA0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_21Tex_006CA0.ia16.inc.c"
};

