#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "gerudoway_room_1.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "gerudoway_scene.h"
#include "gerudoway_room_0.h"
#include "gerudoway_room_2.h"
#include "gerudoway_room_3.h"
#include "gerudoway_room_4.h"
#include "gerudoway_room_5.h"

SceneCmd gerudoway_room_1Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&gerudoway_room_1PolygonType2_000100),
    SCENE_CMD_OBJECT_LIST(7, gerudoway_room_1ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(12, gerudoway_room_1ActorList_000050),
    SCENE_CMD_END(),
};

s16 gerudoway_room_1ObjectList_000040[] = {
    OBJECT_SYOKUDAI,
    OBJECT_DAIKU,
    OBJECT_DOOR_GERUDO,
    OBJECT_GELDB,
    OBJECT_GLA,
    OBJECT_KIBAKO2,
    OBJECT_GE1,
};

ActorEntry gerudoway_room_1ActorList_000050[] = {
    { ACTOR_DOOR_GERUDO,     {   2136,      0,  -2980 }, {      0, 0XC000,      0 }, 0x0A04 },
    { ACTOR_EN_GELDB,        {   1912,    300,  -2896 }, {      0, 0X4000,   0X10 }, 0x0A00 },
    { ACTOR_EN_GE2,          {   1598,      0,  -2314 }, {      0, 0XC000,    0X3 }, 0x1600 },
    { ACTOR_EN_WONDER_ITEM,  {   1666,    112,  -2323 }, {      0,      0,    0X1 }, 0x1D3F },
    { ACTOR_EN_WONDER_ITEM,  {   1378,    107,  -2829 }, {      0,      0,    0X1 }, 0x1D3F },
    { ACTOR_OBJ_SYOKUDAI,    {   1680,      0,  -3080 }, {      0, 0XC000,      0 }, 0x2400 },
    { ACTOR_OBJ_SYOKUDAI,    {   2080,      0,  -2680 }, {      0, 0XC000,      0 }, 0x2400 },
    { ACTOR_OBJ_SYOKUDAI,    {   2080,      0,  -3080 }, {      0, 0XC000,      0 }, 0x2400 },
    { ACTOR_EN_DAIKU,        {   2162,      0,  -2868 }, {      0, 0XC000,   0X10 }, 0x0433 },
    { ACTOR_EN_WONDER_TALK2, {   2159,     55,  -2870 }, {      0, 0XC000,    0XA }, 0x4708 },
    { ACTOR_OBJ_KIBAKO2,     {   1090,      0,  -2210 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_GELDB,        {   1912,    300,  -2758 }, {      0, 0X4000,   0X10 }, 0x0A00 },
};

PolygonType2 gerudoway_room_1PolygonType2_000100 = { 
    2, 7,
    gerudoway_room_1PolygonDlist2_00010C,
    gerudoway_room_1PolygonDlist2_00010C + ARRAY_COUNTU(gerudoway_room_1PolygonDlist2_00010C)
};

PolygonDlist2 gerudoway_room_1PolygonDlist2_00010C[7] = {
    { {   1378,    105,  -2830 },     57, gerudoway_room_1DL_001A60, gerudoway_room_1DL_006C80 },
    { {   1666,    117,  -2323 },     64, gerudoway_room_1DL_001D70, gerudoway_room_1DL_006F00 },
    { {   1221,     73,  -2320 },    288, gerudoway_room_1DL_002EC8, NULL },
    { {   1060,     80,  -1883 },    126, NULL, gerudoway_room_1DL_0071B8 },
    { {   1560,      0,  -2460 },    944, gerudoway_room_1DL_001178, NULL },
    { {   2132,     80,  -2880 },    161, gerudoway_room_1DL_001710, NULL },
    { {   1560,    120,  -2460 },    951, gerudoway_room_1DL_000B90, NULL },
};

s32 gerudoway_room_1_terminatorMaybe_00017C = { 0x01000000 };

Vtx gerudoway_room_1Vtx_000180[] = {
#include "assets/scenes/dungeons/gerudoway/gerudoway_room_1Vtx_000180.vtx.inc"
};

Gfx gerudoway_room_1DL_000B90[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&gerudoway_room_1Vtx_000180[153], 8, 0),
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
    gsSPVertex(gerudoway_room_1Vtx_000180, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 10, 0, 9, 12, 10, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(17, 16, 22, 0, 17, 22, 23, 0),
    gsSP2Triangles(10, 13, 24, 0, 25, 10, 24, 0),
    gsSP2Triangles(11, 26, 27, 0, 11, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&gerudoway_room_1Vtx_000180[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 0, 0, 18, 19, 20, 0),
    gsSP2Triangles(18, 20, 21, 0, 11, 14, 22, 0),
    gsSP2Triangles(11, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(24, 26, 27, 0, 15, 28, 29, 0),
    gsSP1Triangle(15, 29, 16, 0),
    gsSPVertex(&gerudoway_room_1Vtx_000180[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0),
    gsSP2Triangles(20, 19, 18, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 21, 23, 0, 25, 23, 26, 0),
    gsSP2Triangles(25, 24, 23, 0, 23, 27, 26, 0),
    gsSP2Triangles(28, 29, 30, 0, 31, 28, 30, 0),
    gsSPVertex(&gerudoway_room_1Vtx_000180[94], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 1, 0, 0, 6, 0, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 11, 10, 0, 13, 14, 12, 0),
    gsSP2Triangles(13, 12, 10, 0, 4, 15, 16, 0),
    gsSP2Triangles(4, 16, 5, 0, 17, 6, 7, 0),
    gsSP2Triangles(17, 18, 6, 0, 17, 19, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 23, 21, 0),
    gsSP2Triangles(23, 24, 21, 0, 24, 25, 26, 0),
    gsSP2Triangles(25, 27, 26, 0, 27, 22, 26, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&gerudoway_room_1Vtx_000180[125], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 4, 6, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(16, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 22, 23, 0, 24, 25, 26, 0),
    gsSP1Triangle(24, 26, 27, 0),
    gsSPEndDisplayList(),
};

Vtx gerudoway_room_1Vtx_000DD8[] = {
#include "assets/scenes/dungeons/gerudoway/gerudoway_room_1Vtx_000DD8.vtx.inc"
};

Gfx gerudoway_room_1DL_001178[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&gerudoway_room_1Vtx_000DD8[50], 8, 0),
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
    gsSPVertex(gerudoway_room_1Vtx_000DD8, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 4, 1, 0, 0, 5, 3, 0),
    gsSP2Triangles(6, 1, 4, 0, 7, 6, 8, 0),
    gsSP2Triangles(6, 4, 8, 0, 4, 3, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 12, 10, 0),
    gsSP2Triangles(9, 13, 12, 0, 14, 10, 12, 0),
    gsSP2Triangles(14, 12, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 16, 18, 0, 19, 20, 16, 0),
    gsSP2Triangles(21, 19, 22, 0, 22, 19, 18, 0),
    gsSP2Triangles(23, 22, 18, 0, 24, 22, 25, 0),
    gsSP2Triangles(22, 23, 25, 0, 26, 21, 22, 0),
    gsSP2Triangles(27, 26, 22, 0, 28, 29, 30, 0),
    gsSP1Triangle(29, 31, 30, 0),
    gsSPVertex(&gerudoway_room_1Vtx_000DD8[32], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 4, 7, 8, 0),
    gsSP2Triangles(4, 8, 5, 0, 9, 2, 10, 0),
    gsSP2Triangles(2, 1, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 15, 2, 9, 0),
    gsSP2Triangles(15, 9, 16, 0, 9, 17, 16, 0),
    gsSP1Triangle(9, 10, 17, 0),
    gsSPEndDisplayList(),
};

Vtx gerudoway_room_1Vtx_0012D0[] = {
#include "assets/scenes/dungeons/gerudoway/gerudoway_room_1Vtx_0012D0.vtx.inc"
};

Gfx gerudoway_room_1DL_001710[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&gerudoway_room_1Vtx_0012D0[60], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gerudoway_room_1Tex_006310, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gerudoway_room_1Vtx_0012D0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gerudoway_room_1Tex_005B10, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&gerudoway_room_1Vtx_0012D0[4], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&gerudoway_room_1Vtx_0012D0[36], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx gerudoway_room_1Vtx_0018A0[] = {
#include "assets/scenes/dungeons/gerudoway/gerudoway_room_1Vtx_0018A0.vtx.inc"
};

Gfx gerudoway_room_1DL_001A60[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&gerudoway_room_1Vtx_0018A0[20], 8, 0),
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
    gsSPVertex(gerudoway_room_1Vtx_0018A0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gerudoway_sceneTex_00A520, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gerudoway_room_1Vtx_0018A0[4], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gerudoway_sceneTex_00A920, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gerudoway_room_1Vtx_0018A0[12], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gerudoway_sceneTex_009D20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gerudoway_room_1Vtx_0018A0[16], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gerudoway_room_1Vtx_001C10[] = {
#include "assets/scenes/dungeons/gerudoway/gerudoway_room_1Vtx_001C10.vtx.inc"
};

Gfx gerudoway_room_1DL_001D70[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&gerudoway_room_1Vtx_001C10[14], 8, 0),
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
    gsSPVertex(gerudoway_room_1Vtx_001C10, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&gerudoway_room_1Vtx_001C10[4], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&gerudoway_room_1Vtx_001C10[7], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&gerudoway_room_1Vtx_001C10[11], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Vtx gerudoway_room_1Vtx_001E88[] = {
#include "assets/scenes/dungeons/gerudoway/gerudoway_room_1Vtx_001E88.vtx.inc"
};

Gfx gerudoway_room_1DL_002EC8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&gerudoway_room_1Vtx_001E88[252], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gerudoway_room_1Tex_005710, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(gerudoway_room_1Vtx_001E88, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 5, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gerudoway_room_1Tex_003F10, G_IM_FMT_IA, 32, 128, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&gerudoway_room_1Vtx_001E88[6], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gerudoway_room_1Tex_003710, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&gerudoway_room_1Vtx_001E88[24], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gerudoway_room_1Tex_004710, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gerudoway_room_1Vtx_001E88[36], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 12, 13, 0, 8, 13, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gerudoway_room_1Tex_005710, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gerudoway_room_1Vtx_001E88[51], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 1, 6, 0, 5, 4, 7, 0),
    gsSP2Triangles(6, 8, 2, 0, 7, 4, 9, 0),
    gsSP2Triangles(2, 8, 10, 0, 9, 4, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(12, 16, 13, 0, 16, 17, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gerudoway_room_1Tex_003F10, G_IM_FMT_IA, 32, 128, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&gerudoway_room_1Vtx_001E88[69], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gerudoway_room_1Tex_003710, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&gerudoway_room_1Vtx_001E88[87], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gerudoway_room_1Tex_004710, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gerudoway_room_1Vtx_001E88[99], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 12, 13, 0, 8, 13, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gerudoway_room_1Tex_005710, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gerudoway_room_1Vtx_001E88[114], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 1, 6, 0, 5, 4, 7, 0),
    gsSP2Triangles(6, 8, 2, 0, 7, 4, 9, 0),
    gsSP2Triangles(2, 8, 10, 0, 9, 4, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(12, 16, 13, 0, 16, 17, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gerudoway_room_1Tex_003F10, G_IM_FMT_IA, 32, 128, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&gerudoway_room_1Vtx_001E88[132], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gerudoway_room_1Tex_003710, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&gerudoway_room_1Vtx_001E88[150], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gerudoway_room_1Tex_004710, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gerudoway_room_1Vtx_001E88[162], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 12, 13, 0, 8, 13, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gerudoway_room_1Tex_005710, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gerudoway_room_1Vtx_001E88[177], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 1, 6, 0, 5, 4, 7, 0),
    gsSP2Triangles(6, 8, 2, 0, 7, 4, 9, 0),
    gsSP2Triangles(2, 8, 10, 0, 9, 4, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(12, 16, 13, 0, 16, 17, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(gerudoway_room_1Tex_003F10, G_IM_FMT_IA, 32, 128, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 5, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&gerudoway_room_1Vtx_001E88[195], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gerudoway_room_1Tex_003710, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&gerudoway_room_1Vtx_001E88[213], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gerudoway_room_1Tex_004710, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gerudoway_room_1Vtx_001E88[225], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 12, 13, 0, 8, 13, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gerudoway_room_1Tex_005710, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gerudoway_room_1Vtx_001E88[240], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 1, 6, 0, 5, 4, 7, 0),
    gsSP2Triangles(6, 8, 2, 0, 7, 4, 9, 0),
    gsSP2Triangles(2, 8, 10, 0, 9, 4, 11, 0),
    gsSPEndDisplayList(),
};

u8 gerudoway_room_1_unaccounted_0036D8[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0B, 0x90, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x11, 0x78, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x17, 0x10, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1A, 0x60, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1D, 0x70, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x2E, 0xC8, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gerudoway_room_1Tex_003710[] = {
#include "assets/scenes/dungeons/gerudoway/gerudoway_room_1Tex_003710.rgba16.inc.c"
};

u64 gerudoway_room_1Tex_003F10[] = {
#include "assets/scenes/dungeons/gerudoway/gerudoway_room_1Tex_003F10.ia4.inc.c"
};

u64 gerudoway_room_1Tex_004710[] = {
#include "assets/scenes/dungeons/gerudoway/gerudoway_room_1Tex_004710.rgba16.inc.c"
};

u64 gerudoway_room_1Tex_005710[] = {
#include "assets/scenes/dungeons/gerudoway/gerudoway_room_1Tex_005710.rgba16.inc.c"
};

u64 gerudoway_room_1Tex_005B10[] = {
#include "assets/scenes/dungeons/gerudoway/gerudoway_room_1Tex_005B10.rgba16.inc.c"
};

u64 gerudoway_room_1Tex_006310[] = {
#include "assets/scenes/dungeons/gerudoway/gerudoway_room_1Tex_006310.rgba16.inc.c"
};

Vtx gerudoway_room_1Vtx_006B10[] = {
#include "assets/scenes/dungeons/gerudoway/gerudoway_room_1Vtx_006B10.vtx.inc"
};

Gfx gerudoway_room_1DL_006C80[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&gerudoway_room_1Vtx_006B10[15], 8, 0),
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
    gsSPVertex(gerudoway_room_1Vtx_006B10, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&gerudoway_room_1Vtx_006B10[4], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 6, 4, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&gerudoway_room_1Vtx_006B10[11], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx gerudoway_room_1Vtx_006D80[] = {
#include "assets/scenes/dungeons/gerudoway/gerudoway_room_1Vtx_006D80.vtx.inc"
};

Gfx gerudoway_room_1DL_006F00[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&gerudoway_room_1Vtx_006D80[16], 8, 0),
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
    gsSPVertex(gerudoway_room_1Vtx_006D80, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gerudoway_sceneTex_008D20, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&gerudoway_room_1Vtx_006D80[8], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSPEndDisplayList(),
};

Vtx gerudoway_room_1Vtx_007018[] = {
#include "assets/scenes/dungeons/gerudoway/gerudoway_room_1Vtx_007018.vtx.inc"
};

Gfx gerudoway_room_1DL_0071B8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&gerudoway_room_1Vtx_007018[18], 8, 0),
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
    gsSPVertex(gerudoway_room_1Vtx_007018, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 6, 0, 16, 6, 5, 0),
    gsSPEndDisplayList(),
};

u8 gerudoway_room_1_unaccounted_007290[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x6C, 0x80, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x6F, 0x00, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x71, 0xB8, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

