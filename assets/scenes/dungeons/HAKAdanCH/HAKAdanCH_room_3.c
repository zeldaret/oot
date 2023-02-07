#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "HAKAdanCH_room_3.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "HAKAdanCH_scene.h"
#include "HAKAdanCH_room_0.h"
#include "HAKAdanCH_room_1.h"
#include "HAKAdanCH_room_2.h"
#include "HAKAdanCH_room_4.h"
#include "HAKAdanCH_room_5.h"
#include "HAKAdanCH_room_6.h"

SceneCmd HAKAdanCH_room_3Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(10),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&HAKAdanCH_room_3PolygonType2_000120),
    SCENE_CMD_OBJECT_LIST(14, HAKAdanCH_room_3ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(16, HAKAdanCH_room_3ActorList_00005C),
    SCENE_CMD_END(),
};

s16 HAKAdanCH_room_3ObjectList_000040[] = {
    OBJECT_HAKACH_OBJECTS,
    OBJECT_HAKA_DOOR,
    OBJECT_BOX,
    OBJECT_SYOKUDAI,
    OBJECT_RD,
    OBJECT_ST,
    OBJECT_GI_SUTARU,
    OBJECT_MIZU_OBJECTS,
    OBJECT_BOMBIWA,
    OBJECT_WALLMASTER,
    OBJECT_GI_KEY,
    OBJECT_GOROIWA,
    OBJECT_FIREFLY,
    OBJECT_VM,
};

ActorEntry HAKAdanCH_room_3ActorList_00005C[] = {
    { ACTOR_EN_WALLMAS,      {   1004,    177,  -1066 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_FLOORMAS,     {    998,      0,  -1007 }, {      0, 0X6AAB,      0 }, 0x0000 },
    { ACTOR_BG_MIZU_SHUTTER, {    740,    -10,  -1200 }, { 0X4000, 0X4000,      0 }, 0x0FFF },
    { ACTOR_BG_MIZU_SHUTTER, {    740,    -10,  -1080 }, { 0X4000, 0X4000,      0 }, 0x0FFF },
    { ACTOR_BG_MIZU_SHUTTER, {    880,    -10,   -930 }, { 0X4000, 0X4000,      0 }, 0x0FFF },
    { ACTOR_BG_MIZU_SHUTTER, {    940,    -10,  -1220 }, { 0X4000, 0X4000,      0 }, 0x0FFF },
    { ACTOR_BG_MIZU_SHUTTER, {    980,    -10,  -1200 }, { 0X4000, 0XC000,      0 }, 0x0FFF },
    { ACTOR_BG_MIZU_SHUTTER, {    980,    -10,  -1080 }, { 0X4000, 0XC000,      0 }, 0x0FFF },
    { ACTOR_BG_MIZU_SHUTTER, {   1120,    -10,   -930 }, { 0X4000, 0XC000,      0 }, 0x0FFF },
    { ACTOR_BG_MIZU_SHUTTER, {   1180,    -10,  -1220 }, { 0X4000, 0XC000,      0 }, 0x0FFF },
    { ACTOR_ELF_MSG,         {   1139,      0,  -1367 }, {   0X1E,      0,    0X4 }, 0x2291 },
    { ACTOR_ELF_MSG,         {    868,      0,   -896 }, {   0X1E,      0,    0X4 }, 0x2291 },
    { ACTOR_EN_FIREFLY,      {    904,     68,  -1213 }, {      0, 0X199A,      0 }, 0x0000 },
    { ACTOR_EN_FIREFLY,      {    981,    130,  -1018 }, {      0, 0X360B,      0 }, 0x0000 },
    { ACTOR_EN_FIREFLY,      {   1104,    156,  -1161 }, {      0, 0XE16C,      0 }, 0x0000 },
    { ACTOR_EN_VM,           {   1017,      0,  -1090 }, {      0,      0,      0 }, 0x0501 },
};

u8 HAKAdanCH_room_3_possiblePadding_00011C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 HAKAdanCH_room_3PolygonType2_000120 = { 
    2, 3,
    HAKAdanCH_room_3PolygonDlist2_00012C,
    HAKAdanCH_room_3PolygonDlist2_00012C + ARRAY_COUNTU(HAKAdanCH_room_3PolygonDlist2_00012C)
};

PolygonDlist2 HAKAdanCH_room_3PolygonDlist2_00012C[3] = {
    { {   1020,   -140,  -1140 },    464, HAKAdanCH_room_3DL_000D40, NULL },
    { {    990,   -720,  -1020 },    322, HAKAdanCH_room_3DL_0013A0, NULL },
    { {    990,   -600,  -1020 },    343, HAKAdanCH_room_3DL_001198, NULL },
};

s32 HAKAdanCH_room_3_terminatorMaybe_00015C = { 0x01000000 };

Vtx HAKAdanCH_room_3Vtx_000160[] = {
#include "assets/scenes/dungeons/HAKAdanCH/HAKAdanCH_room_3Vtx_000160.vtx.inc"
};

Gfx HAKAdanCH_room_3DL_000D40[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdanCH_room_3Vtx_000160[182], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdanCH_room_3Tex_0014C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdanCH_sceneTex_00BD90, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 3),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdanCH_room_3Vtx_000160, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 27, 0, 28, 27, 30, 0),
    gsSPVertex(&HAKAdanCH_room_3Vtx_000160[31], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 4, 0, 6, 4, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(2, 8, 11, 0, 2, 11, 3, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 10, 17, 0, 16, 17, 14, 0),
    gsSP2Triangles(11, 16, 14, 0, 11, 14, 13, 0),
    gsSP2Triangles(18, 12, 19, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 5, 13, 0, 21, 13, 18, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 20, 0),
    gsSP2Triangles(25, 6, 21, 0, 25, 21, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSPVertex(&HAKAdanCH_room_3Vtx_000160[62], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 4, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 10, 13, 0, 14, 13, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 16, 19, 0, 20, 19, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 22, 25, 0, 26, 25, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdanCH_room_3Vtx_000160[94], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 4, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 10, 13, 0, 14, 13, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 16, 19, 0, 20, 19, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 22, 25, 0, 26, 25, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdanCH_room_3Vtx_000160[126], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 4, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 10, 13, 0, 14, 13, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&HAKAdanCH_room_3Vtx_000160[158], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(16, 20, 21, 0, 16, 21, 17, 0),
    gsSP2Triangles(20, 22, 23, 0, 20, 23, 21, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdanCH_room_3Vtx_001018[] = {
#include "assets/scenes/dungeons/HAKAdanCH/HAKAdanCH_room_3Vtx_001018.vtx.inc"
};

Gfx HAKAdanCH_room_3DL_001198[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdanCH_room_3Vtx_001018[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdanCH_sceneTex_00B590, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 1, 2),
    gsDPLoadMultiBlock(HAKAdanCH_sceneTex_00A590, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdanCH_room_3Vtx_001018, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSP2Triangles(8, 10, 11, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(0, 3, 14, 0, 0, 14, 13, 0),
    gsSPEndDisplayList(),
};

Vtx HAKAdanCH_room_3Vtx_0012B0[] = {
#include "assets/scenes/dungeons/HAKAdanCH/HAKAdanCH_room_3Vtx_0012B0.vtx.inc"
};

Gfx HAKAdanCH_room_3DL_0013A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&HAKAdanCH_room_3Vtx_0012B0[7], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(HAKAdanCH_sceneTex_00A590, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(HAKAdanCH_sceneTex_00AD90, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 15, 15),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(HAKAdanCH_room_3Vtx_0012B0, 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(3, 0, 2, 0, 5, 6, 3, 0),
    gsSP1Triangle(5, 3, 2, 0),
    gsSPEndDisplayList(),
};

u8 HAKAdanCH_room_3_unaccounted_0014A0[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0D, 0x40, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x11, 0x98, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x13, 0xA0, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 HAKAdanCH_room_3Tex_0014C0[] = {
#include "assets/scenes/dungeons/HAKAdanCH/HAKAdanCH_room_3Tex_0014C0.rgba16.inc.c"
};

