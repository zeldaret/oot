#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "MIZUsin_room_5.h"
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
#include "MIZUsin_room_21.h"
#include "MIZUsin_room_22.h"

SceneCmd MIZUsin_room_5Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&MIZUsin_room_5PolygonType2_000190),
    SCENE_CMD_OBJECT_LIST(12, MIZUsin_room_5ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(23, MIZUsin_room_5ActorList_000058),
    SCENE_CMD_END(),
};

s16 MIZUsin_room_5ObjectList_000040[] = {
    OBJECT_MIZU_OBJECTS,
    OBJECT_STREAM,
    OBJECT_SIOFUKI,
    OBJECT_D_HSBLOCK,
    OBJECT_SB,
    OBJECT_NY,
    OBJECT_TITE,
    OBJECT_BUBBLE,
    OBJECT_EI,
    OBJECT_FIREFLY,
    OBJECT_ST,
    OBJECT_GI_SUTARU,
};

ActorEntry MIZUsin_room_5ActorList_000058[] = {
    { ACTOR_EN_RIVER_SOUND, {  -1926,    221,     94 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_OBJ_HSBLOCK,    {  -1233,    945,   -180 }, { 0X4000, 0X4000,      0 }, 0xFFC2 },
    { ACTOR_EN_WONDER_ITEM, {  -2568,    821,   -354 }, {      0,      0,    0X6 }, 0x183F },
    { ACTOR_EN_WONDER_ITEM, {  -2573,    836,   -363 }, {      0,      0,    0X6 }, 0x193F },
    { ACTOR_EN_WONDER_ITEM, {  -2571,    825,   -357 }, {      0,      0,    0X6 }, 0x1ABF },
    { ACTOR_ELF_MSG2,       {  -2572,    826,     -2 }, {    0X6,   0X3E,   0X1E }, 0x3F00 },
    { ACTOR_BG_MIZU_MOVEBG, {  -1554,    425,   -180 }, {      0, 0XC000,      0 }, 0x7180 },
    { ACTOR_OBJ_HSBLOCK,    {  -2561,    601,   -180 }, {      0,      0,      0 }, 0x3DC1 },
    { ACTOR_OBJ_HSBLOCK,    {  -2561,    501,   -180 }, {      0,      0,      0 }, 0x3DC1 },
    { ACTOR_EN_WONDER_ITEM, {  -2571,    822,      9 }, { 0XFF4A,      0,    0X6 }, 0x1AFD },
    { ACTOR_EN_WONDER_ITEM, {  -2572,    813,     -2 }, {      0,      0,    0X6 }, 0x1AFD },
    { ACTOR_EN_WONDER_ITEM, {  -2574,    829,    -12 }, {      0,      0,    0X6 }, 0x1AFD },
    { ACTOR_OBJ_HSBLOCK,    {  -2303,    244,   -302 }, {      0,      0,      0 }, 0x3EC1 },
    { ACTOR_OBJ_HSBLOCK,    {  -2200,    139,   -389 }, {      0,      0,      0 }, 0x3EC1 },
    { ACTOR_OBJ_HSBLOCK,    {  -2183,    123,     30 }, {      0,      0,      0 }, 0x3EC1 },
    { ACTOR_OBJ_HSBLOCK,    {  -2336,    276,     26 }, {      0,      0,      0 }, 0x3EC1 },
    { ACTOR_OBJ_HSBLOCK,    {  -2145,     83,   -201 }, {      0,      0,      0 }, 0x3EC1 },
    { ACTOR_OBJ_HSBLOCK,    {  -2405,    344,   -116 }, {      0,      0,      0 }, 0x3EC1 },
    { ACTOR_OBJ_SWITCH,     {  -1244,    995,   -180 }, {      0,      0, 0X4000 }, 0x3E03 },
    { ACTOR_EN_FIREFLY,     {  -1645,    249,    -74 }, {      0, 0XC000,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,     {  -1594,    312,   -298 }, {      0, 0XC000,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,     {  -1236,    877,   -247 }, {      0,      0,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,     {  -1235,    878,   -108 }, {      0, 0X8000,      0 }, 0x0003 },
};

u8 MIZUsin_room_5_possiblePadding_000188[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 MIZUsin_room_5PolygonType2_000190 = { 
    2, 6,
    MIZUsin_room_5PolygonDlist2_00019C,
    MIZUsin_room_5PolygonDlist2_00019C + ARRAY_COUNTU(MIZUsin_room_5PolygonDlist2_00019C)
};

PolygonDlist2 MIZUsin_room_5PolygonDlist2_00019C[6] = {
    { {  -1920,    790,   -180 },    766, MIZUsin_room_5DL_0014D0, NULL },
    { {  -1957,     50,   -180 },    957, MIZUsin_room_5DL_0008E0, NULL },
    { {  -2274,     20,   -180 },    746, NULL, MIZUsin_room_5DL_009CB0 },
    { {  -1050,    860,   -180 },    238, MIZUsin_room_5DL_002610, NULL },
    { {  -2690,    840,   -180 },    157, MIZUsin_room_5DL_003470, NULL },
    { {  -2064,    373,   -180 },    677, MIZUsin_room_5DL_0004C0, NULL },
};

s32 MIZUsin_room_5_terminatorMaybe_0001FC = { 0x01000000 };

Vtx MIZUsin_room_5Vtx_000200[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_5Vtx_000200.vtx.inc"
};

Gfx MIZUsin_room_5DL_0004C0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_5Vtx_000200[36], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPLoadMultiBlock(MIZUsin_sceneTex_015030, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0B000000),
    gsSPVertex(MIZUsin_room_5Vtx_000200, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_5Vtx_000200[32], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_5Vtx_000600[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_5Vtx_000600.vtx.inc"
};

Gfx MIZUsin_room_5DL_0008E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_5Vtx_000600[38], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 2),
    gsDPLoadMultiBlock(MIZUsin_room_5Tex_005248, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0B000000),
    gsSPVertex(MIZUsin_room_5Vtx_000600, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 16, 0, 24, 16, 19, 0),
    gsSP2Triangles(4, 7, 26, 0, 4, 26, 27, 0),
    gsSP2Triangles(28, 29, 12, 0, 28, 12, 15, 0),
    gsSPVertex(&MIZUsin_room_5Vtx_000600[30], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 3, 0),
    gsSP2Triangles(6, 0, 2, 0, 6, 2, 7, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_5Vtx_000A40[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_5Vtx_000A40.vtx.inc"
};

Gfx MIZUsin_room_5DL_0014D0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_5Vtx_000A40[161], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(MIZUsin_room_5Vtx_000A40, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_006A48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_000A40[32], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_000A40[37], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_006A48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_000A40[41], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_000A40[46], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_000A40[52], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_000A40[57], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(1, 4, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_000A40[62], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_000A40[66], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_005A48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_000A40[69], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_000A40[74], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP1Triangle(8, 5, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_004A48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_000A40[84], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_000A40[92], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 6, 9, 8, 0),
    gsSP2Triangles(1, 10, 11, 0, 1, 11, 2, 0),
    gsSP2Triangles(12, 11, 13, 0, 11, 10, 13, 0),
    gsSP2Triangles(8, 14, 15, 0, 8, 16, 14, 0),
    gsSP2Triangles(8, 9, 16, 0, 0, 13, 17, 0),
    gsSP2Triangles(0, 3, 13, 0, 3, 12, 13, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_000A40[120], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_006248, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_000A40[124], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 1, 5, 4, 0),
    gsSP2Triangles(1, 6, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 9, 0, 11, 7, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_000A40[136], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_000A40[140], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP1Triangle(3, 4, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_000A40[145], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_006248, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_000A40[149], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_000A40[153], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_000A40[157], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_5Vtx_001C90[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_5Vtx_001C90.vtx.inc"
};

Gfx MIZUsin_room_5DL_002610[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_5Vtx_001C90[144], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_009248, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(MIZUsin_room_5Vtx_001C90, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_008A48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_001C90[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_009248, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_001C90[8], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_008A48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_001C90[16], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_009248, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_001C90[20], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_001C90[24], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_008248, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_001C90[28], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_001C90[32], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_007A48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_001C90[36], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_001C90[40], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_008A48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_001C90[44], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_009248, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_001C90[47], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 3, 5, 0, 6, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_008A48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_001C90[54], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_009248, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_001C90[57], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_008A48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_001C90[65], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_009248, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_001C90[71], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_008A48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_001C90[75], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_009248, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_001C90[83], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_008248, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_001C90[95], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP1Triangle(2, 4, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_007A48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_001C90[100], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_001C90[104], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_001C90[108], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_001C90[120], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_008248, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_001C90[140], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_5Vtx_002E60[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_5Vtx_002E60.vtx.inc"
};

Gfx MIZUsin_room_5DL_003470[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_5Vtx_002E60[89], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_006A48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(MIZUsin_room_5Vtx_002E60, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_007248, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_002E60[5], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP1Triangle(3, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_002E60[10], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_002E60[14], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 6, 8, 0),
    gsSP2Triangles(6, 10, 11, 0, 6, 11, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_003A48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_002E60[26], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_004248, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_002E60[32], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_006A48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_002E60[38], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_004248, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_002E60[41], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_003A48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_002E60[44], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_004248, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_002E60[47], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_003A48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_002E60[50], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(3, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_002E60[57], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_5Tex_003A48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_002E60[61], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_002E60[65], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_002E60[69], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_5Vtx_002E60[73], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

u8 MIZUsin_room_5_unaccounted_003A18[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x04, 0xC0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x08, 0xE0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x14, 0xD0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x26, 0x10, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x34, 0x70, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 MIZUsin_room_5Tex_003A48[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_5Tex_003A48.rgba16.inc.c"
};

u64 MIZUsin_room_5Tex_004248[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_5Tex_004248.rgba16.inc.c"
};

u64 MIZUsin_room_5Tex_004A48[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_5Tex_004A48.rgba16.inc.c"
};

u64 MIZUsin_room_5Tex_005248[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_5Tex_005248.rgba16.inc.c"
};

u64 MIZUsin_room_5Tex_005A48[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_5Tex_005A48.rgba16.inc.c"
};

u64 MIZUsin_room_5Tex_006248[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_5Tex_006248.rgba16.inc.c"
};

u64 MIZUsin_room_5Tex_006A48[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_5Tex_006A48.rgba16.inc.c"
};

u64 MIZUsin_room_5Tex_007248[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_5Tex_007248.rgba16.inc.c"
};

u64 MIZUsin_room_5Tex_007A48[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_5Tex_007A48.rgba16.inc.c"
};

u64 MIZUsin_room_5Tex_008248[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_5Tex_008248.rgba16.inc.c"
};

u64 MIZUsin_room_5Tex_008A48[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_5Tex_008A48.rgba16.inc.c"
};

u64 MIZUsin_room_5Tex_009248[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_5Tex_009248.rgba16.inc.c"
};

u8 MIZUsin_room_5_possiblePadding_009A48[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx MIZUsin_room_5Vtx_009A50[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_5Vtx_009A50.vtx.inc"
};

Gfx MIZUsin_room_5DL_009CB0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_5Vtx_009A50[30], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(MIZUsin_room_5Tex_009E38, 0x0100, 1, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 204),
    gsSPDisplayList(0x0D000000),
    gsSPVertex(MIZUsin_room_5Vtx_009A50, 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 6, 13, 0, 14, 11, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 4, 19, 20, 0),
    gsSP2Triangles(4, 16, 19, 0, 21, 2, 22, 0),
    gsSP2Triangles(2, 23, 22, 0, 21, 24, 25, 0),
    gsSP2Triangles(24, 26, 25, 0, 13, 27, 26, 0),
    gsSP2Triangles(23, 28, 22, 0, 28, 12, 13, 0),
    gsSP2Triangles(19, 29, 20, 0, 14, 15, 29, 0),
    gsSP2Triangles(17, 26, 18, 0, 26, 27, 14, 0),
    gsSP2Triangles(18, 26, 14, 0, 26, 24, 13, 0),
    gsSP2Triangles(29, 19, 14, 0, 22, 28, 13, 0),
    gsSP2Triangles(27, 9, 14, 0, 27, 13, 9, 0),
    gsSP2Triangles(11, 14, 9, 0, 9, 13, 6, 0),
    gsSP1Triangle(17, 16, 21, 0),
    gsSPEndDisplayList(),
};

u8 MIZUsin_room_5_unaccounted_009E28[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x9C, 0xB0, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 MIZUsin_room_5Tex_009E38[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_5Tex_009E38.ia16.inc.c"
};

