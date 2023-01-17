#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "gerudoway_room_4.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "gerudoway_scene.h"
#include "gerudoway_room_0.h"
#include "gerudoway_room_1.h"
#include "gerudoway_room_2.h"
#include "gerudoway_room_3.h"
#include "gerudoway_room_5.h"

SceneCmd gerudoway_room_4Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&gerudoway_room_4PolygonType2_000110),
    SCENE_CMD_OBJECT_LIST(7, gerudoway_room_4ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(13, gerudoway_room_4ActorList_000050),
    SCENE_CMD_END(),
};

s16 gerudoway_room_4ObjectList_000040[] = {
    OBJECT_SYOKUDAI,
    OBJECT_DAIKU,
    OBJECT_DOOR_GERUDO,
    OBJECT_GELDB,
    OBJECT_GLA,
    OBJECT_KIBAKO2,
    OBJECT_GE1,
};

ActorEntry gerudoway_room_4ActorList_000050[] = {
    { ACTOR_DOOR_GERUDO,     {    296,   -240,  -1240 }, {      0, 0XC000,      0 }, 0x0E02 },
    { ACTOR_EN_GELDB,        {     68,     60,  -1146 }, {      0, 0X4000,   0X12 }, 0x0E00 },
    { ACTOR_EN_WONDER_ITEM,  {     77,    -72,  -1345 }, {      0,      0,    0X1 }, 0x1D3F },
    { ACTOR_EN_WONDER_ITEM,  {     71,    -70,   -928 }, {      0,      0,    0X1 }, 0x1D3F },
    { ACTOR_OBJ_SYOKUDAI,    {    -80,   -240,   -960 }, {      0, 0XC000,      0 }, 0x2400 },
    { ACTOR_OBJ_SYOKUDAI,    {    -80,   -240,  -1320 }, {      0, 0XC000,      0 }, 0x2400 },
    { ACTOR_OBJ_SYOKUDAI,    {    240,   -240,  -1320 }, {      0, 0XC000,      0 }, 0x2400 },
    { ACTOR_OBJ_SYOKUDAI,    {    240,   -240,   -960 }, {      0, 0XC000,      0 }, 0x2400 },
    { ACTOR_EN_DAIKU,        {    327,   -240,  -1123 }, {      0, 0XC000,   0X12 }, 0x0211 },
    { ACTOR_OBJ_TSUBO,       {     67,    -80,  -1975 }, {      0,      0,      0 }, 0x4A01 },
    { ACTOR_OBJ_TSUBO,       {     39,    -80,  -1943 }, {      0,      0,      0 }, 0x4C03 },
    { ACTOR_EN_WONDER_TALK2, {    326,   -181,  -1123 }, {      0, 0XC000,    0X6 }, 0x4706 },
    { ACTOR_EN_GELDB,        {     68,     60,  -1032 }, {      0, 0X4000,   0X12 }, 0x0E00 },
};

PolygonType2 gerudoway_room_4PolygonType2_000110 = { 
    2, 6,
    gerudoway_room_4PolygonDlist2_00011C,
    gerudoway_room_4PolygonDlist2_00011C + ARRAY_COUNTU(gerudoway_room_4PolygonDlist2_00011C)
};

PolygonDlist2 gerudoway_room_4PolygonDlist2_00011C[6] = {
    { {     73,    -57,  -1354 },     56, gerudoway_room_4DL_001BD0, gerudoway_room_4DL_0031A0 },
    { {     73,    -60,   -934 },     64, gerudoway_room_4DL_001EE0, gerudoway_room_4DL_003420 },
    { {    123,     80,  -1060 },    917, NULL, gerudoway_room_4DL_0037F8 },
    { {    120,   -120,  -1140 },    992, gerudoway_room_4DL_0012E8, NULL },
    { {    292,   -160,  -1140 },    161, gerudoway_room_4DL_001880, NULL },
    { {    120,    -40,  -1140 },   1004, gerudoway_room_4DL_000D10, NULL },
};

s32 gerudoway_room_4_terminatorMaybe_00017C = { 0x01000000 };

Vtx gerudoway_room_4Vtx_000180[] = {
#include "assets/scenes/dungeons/gerudoway/gerudoway_room_4Vtx_000180.vtx.inc"
};

Gfx gerudoway_room_4DL_000D10[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&gerudoway_room_4Vtx_000180[177], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gerudoway_sceneTex_00C120, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gerudoway_room_4Vtx_000180, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&gerudoway_room_4Vtx_000180[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(20, 21, 17, 0, 21, 19, 17, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 25, 23, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP2Triangles(29, 28, 30, 0, 29, 30, 31, 0),
    gsSPVertex(&gerudoway_room_4Vtx_000180[64], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(7, 6, 12, 0, 6, 13, 12, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(17, 16, 22, 0, 17, 22, 23, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSP1Triangle(30, 29, 31, 0),
    gsSPVertex(&gerudoway_room_4Vtx_000180[96], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 10, 9, 0, 10, 11, 9, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 16, 0),
    gsSP2Triangles(14, 18, 15, 0, 19, 16, 17, 0),
    gsSP2Triangles(19, 17, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(22, 24, 23, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 28, 26, 0, 29, 30, 31, 0),
    gsSPVertex(&gerudoway_room_4Vtx_000180[128], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 4, 1, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(14, 16, 15, 0, 17, 18, 19, 0),
    gsSP2Triangles(17, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(25, 28, 26, 0, 28, 29, 26, 0),
    gsSP1Triangle(29, 30, 26, 0),
    gsSPVertex(&gerudoway_room_4Vtx_000180[159], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 0, 5, 1, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 11, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 17, 15, 0),
    gsSPEndDisplayList(),
};

Vtx gerudoway_room_4Vtx_000F78[] = {
#include "assets/scenes/dungeons/gerudoway/gerudoway_room_4Vtx_000F78.vtx.inc"
};

Gfx gerudoway_room_4DL_0012E8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&gerudoway_room_4Vtx_000F78[47], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gerudoway_sceneTex_00D120, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gerudoway_room_4Vtx_000F78, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(15, 18, 13, 0, 18, 10, 13, 0),
    gsSP2Triangles(10, 18, 19, 0, 10, 19, 20, 0),
    gsSP2Triangles(18, 17, 21, 0, 18, 21, 19, 0),
    gsSP2Triangles(9, 22, 23, 0, 22, 24, 23, 0),
    gsSP2Triangles(24, 25, 23, 0, 7, 6, 23, 0),
    gsSP2Triangles(7, 23, 25, 0, 7, 25, 26, 0),
    gsSP2Triangles(6, 9, 23, 0, 27, 28, 29, 0),
    gsSP2Triangles(27, 30, 28, 0, 28, 31, 29, 0),
    gsSPVertex(&gerudoway_room_4Vtx_000F78[32], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(4, 5, 0, 0, 5, 6, 0, 0),
    gsSP2Triangles(6, 1, 0, 0, 3, 0, 7, 0),
    gsSP2Triangles(7, 0, 2, 0, 8, 9, 10, 0),
    gsSP2Triangles(9, 11, 10, 0, 9, 12, 11, 0),
    gsSP2Triangles(13, 14, 9, 0, 13, 9, 8, 0),
    gsSPEndDisplayList(),
};

Vtx gerudoway_room_4Vtx_001440[] = {
#include "assets/scenes/dungeons/gerudoway/gerudoway_room_4Vtx_001440.vtx.inc"
};

Gfx gerudoway_room_4DL_001880[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&gerudoway_room_4Vtx_001440[60], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gerudoway_room_4Tex_002828, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gerudoway_room_4Vtx_001440, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gerudoway_room_4Tex_002028, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&gerudoway_room_4Vtx_001440[4], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&gerudoway_room_4Vtx_001440[36], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx gerudoway_room_4Vtx_001A10[] = {
#include "assets/scenes/dungeons/gerudoway/gerudoway_room_4Vtx_001A10.vtx.inc"
};

Gfx gerudoway_room_4DL_001BD0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&gerudoway_room_4Vtx_001A10[20], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gerudoway_sceneTex_00A920, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gerudoway_room_4Vtx_001A10, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gerudoway_sceneTex_00A520, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gerudoway_room_4Vtx_001A10[4], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gerudoway_sceneTex_00A920, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gerudoway_room_4Vtx_001A10[12], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gerudoway_sceneTex_009D20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gerudoway_room_4Vtx_001A10[16], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gerudoway_room_4Vtx_001D80[] = {
#include "assets/scenes/dungeons/gerudoway/gerudoway_room_4Vtx_001D80.vtx.inc"
};

Gfx gerudoway_room_4DL_001EE0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&gerudoway_room_4Vtx_001D80[14], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gerudoway_sceneTex_007520, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gerudoway_room_4Vtx_001D80, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&gerudoway_room_4Vtx_001D80[4], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&gerudoway_room_4Vtx_001D80[7], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&gerudoway_room_4Vtx_001D80[11], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u8 gerudoway_room_4_unaccounted_001FF8[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0D, 0x10, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x12, 0xE8, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x18, 0x80, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1B, 0xD0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1E, 0xE0, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gerudoway_room_4Tex_002028[] = {
#include "assets/scenes/dungeons/gerudoway/gerudoway_room_4Tex_002028.rgba16.inc.c"
};

u64 gerudoway_room_4Tex_002828[] = {
#include "assets/scenes/dungeons/gerudoway/gerudoway_room_4Tex_002828.rgba16.inc.c"
};

u8 gerudoway_room_4_possiblePadding_003028[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx gerudoway_room_4Vtx_003030[] = {
#include "assets/scenes/dungeons/gerudoway/gerudoway_room_4Vtx_003030.vtx.inc"
};

Gfx gerudoway_room_4DL_0031A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&gerudoway_room_4Vtx_003030[15], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gerudoway_sceneTex_009520, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gerudoway_room_4Vtx_003030, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&gerudoway_room_4Vtx_003030[4], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 6, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&gerudoway_room_4Vtx_003030[11], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gerudoway_room_4Vtx_0032A0[] = {
#include "assets/scenes/dungeons/gerudoway/gerudoway_room_4Vtx_0032A0.vtx.inc"
};

Gfx gerudoway_room_4DL_003420[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&gerudoway_room_4Vtx_0032A0[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gerudoway_sceneTex_008520, G_IM_FMT_IA, 128, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 7, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gerudoway_room_4Vtx_0032A0, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gerudoway_sceneTex_008D20, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gerudoway_room_4Vtx_0032A0[8], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSPEndDisplayList(),
};

Vtx gerudoway_room_4Vtx_003538[] = {
#include "assets/scenes/dungeons/gerudoway/gerudoway_room_4Vtx_003538.vtx.inc"
};

Gfx gerudoway_room_4DL_0037F8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&gerudoway_room_4Vtx_003538[36], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_IA, G_IM_SIZ_16b, 128, 4, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_WRAP, 7, 2, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gerudoway_room_4Vtx_003538, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(6, 5, 16, 0, 6, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSP2Triangles(30, 19, 18, 0, 30, 18, 31, 0),
    gsSPVertex(&gerudoway_room_4Vtx_003538[32], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 gerudoway_room_4_unaccounted_003900[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x31, 0xA0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x34, 0x20, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x37, 0xF8, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

