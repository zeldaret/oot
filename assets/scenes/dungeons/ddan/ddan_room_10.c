#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ddan_room_10.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "ddan_scene.h"
#include "ddan_room_0.h"
#include "ddan_room_1.h"
#include "ddan_room_2.h"
#include "ddan_room_3.h"
#include "ddan_room_4.h"
#include "ddan_room_5.h"
#include "ddan_room_6.h"
#include "ddan_room_7.h"
#include "ddan_room_8.h"
#include "ddan_room_9.h"
#include "ddan_room_11.h"
#include "ddan_room_12.h"
#include "ddan_room_13.h"
#include "ddan_room_14.h"
#include "ddan_room_15.h"
#include "ddan_room_16.h"

SceneCmd ddan_room_10Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(4),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&ddan_room_10PolygonType2_0001A0),
    SCENE_CMD_OBJECT_LIST(16, ddan_room_10ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(20, ddan_room_10ActorList_000060),
    SCENE_CMD_END(),
};

s16 ddan_room_10ObjectList_000040[] = {
    OBJECT_DDAN_OBJECTS,
    OBJECT_BWALL,
    OBJECT_BOMBF,
    OBJECT_BOX,
    OBJECT_KUSA,
    OBJECT_TRAP,
    OBJECT_D_ELEVATOR,
    OBJECT_BOMBIWA,
    OBJECT_ST,
    OBJECT_GS,
    OBJECT_SYOKUDAI,
    OBJECT_YDAN_OBJECTS,
    OBJECT_DODOJR,
    OBJECT_FIREFLY,
    OBJECT_VM,
    OBJECT_DODONGO,
};

ActorEntry ddan_room_10ActorList_000060[] = {
    { ACTOR_EN_FIREFLY,   {   3615,    581,   -264 }, {      0, 0XC000,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,   {   4088,    639,   -250 }, {      0, 0X8E39,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,   {   4113,    583,   -396 }, {      0,  0X7D2,      0 }, 0x0003 },
    { ACTOR_EN_ST,        {   2655,    651,   -321 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_EN_ST,        {   3244,    651,   -318 }, {      0, 0XC000,      0 }, 0x0000 },
    { ACTOR_EN_ST,        {   3840,    651,   -321 }, {      0, 0XC0B6,      0 }, 0x0000 },
    { ACTOR_EN_KUSA,      {   3189,    411,   -485 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_BG_BREAKWALL, {   4329,    531,   -517 }, {      0, 0XF555,      0 }, 0xA009 },
    { ACTOR_EN_DODOJR,    {   3007,    411,   -456 }, {      0, 0XDD28,      0 }, 0xFFFF },
    { ACTOR_EN_DODOJR,    {   3048,    411,   -174 }, {      0, 0XB6C1,      0 }, 0xFFFF },
    { ACTOR_EN_DODOJR,    {   3067,    411,   -437 }, {      0, 0XD8E4,      0 }, 0xFFFF },
    { ACTOR_OBJ_OSHIHIKI, {   2710,    411,   -430 }, {      0,      0,      0 }, 0xFF40 },
    { ACTOR_OBJ_OSHIHIKI, {   2950,    531,   -320 }, {      0,      0,      0 }, 0xFF41 },
    { ACTOR_OBJ_SYOKUDAI, {   3624,    531,   -262 }, {      0,      0,      0 }, 0x03E8 },
    { ACTOR_OBJ_SYOKUDAI, {   2556,    531,   -370 }, {      0,      0,      0 }, 0x10A8 },
    { ACTOR_OBJ_SYOKUDAI, {   2780,    531,   -265 }, {      0,      0,      0 }, 0x10A8 },
    { ACTOR_OBJ_TSUBO,    {   3195,    411,   -155 }, {      0,      0,      0 }, 0x7210 },
    { ACTOR_OBJ_TSUBO,    {   2704,    411,   -483 }, {      0,      0,      0 }, 0x7410 },
    { ACTOR_EN_BOMBF,     {   4136,    578,   -417 }, { 0X4000,  0XE39,      0 }, 0xFFFF },
    { ACTOR_BG_YDAN_SP,   {   2602,    531,   -320 }, {      0, 0XC000,      0 }, 0x1FD4 },
};

PolygonType2 ddan_room_10PolygonType2_0001A0 = { 
    2, 1,
    ddan_room_10PolygonDlist2_0001AC,
    ddan_room_10PolygonDlist2_0001AC + ARRAY_COUNTU(ddan_room_10PolygonDlist2_0001AC)
};

PolygonDlist2 ddan_room_10PolygonDlist2_0001AC[1] = {
    { {   3379,    591,   -360 },   1072, ddan_room_10DL_001B10, NULL },
};

s32 ddan_room_10_terminatorMaybe_0001BC = { 0x01000000 };

Vtx ddan_room_10Vtx_0001C0[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_10Vtx_0001C0.vtx.inc"
};

Gfx ddan_room_10DL_001B10[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ddan_room_10Vtx_0001C0[397], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ddan_room_10Tex_004F10, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ddan_sceneTLUT_011D70),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ddan_room_10Vtx_0001C0, 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 1, 25, 0, 24, 25, 26, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_004710, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[27], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 3, 5, 0),
    gsSP2Triangles(7, 8, 3, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 9, 11, 0, 11, 10, 5, 0),
    gsSP2Triangles(11, 5, 4, 0, 13, 14, 15, 0),
    gsSP1Triangle(13, 15, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_007B10, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[44], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_002F10, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[48], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 6, 1, 0, 7, 8, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_007B10, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[57], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 2, 0, 1, 5, 6, 0),
    gsSP2Triangles(1, 6, 4, 0, 5, 7, 6, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 9, 7, 0),
    gsSP2Triangles(8, 10, 9, 0, 8, 0, 11, 0),
    gsSP2Triangles(8, 11, 10, 0, 11, 0, 3, 0),
    gsSP2Triangles(12, 13, 10, 0, 12, 10, 11, 0),
    gsSP2Triangles(14, 9, 10, 0, 9, 14, 15, 0),
    gsSP2Triangles(9, 15, 7, 0, 16, 15, 17, 0),
    gsSP2Triangles(18, 4, 6, 0, 18, 6, 16, 0),
    gsSP2Triangles(6, 15, 16, 0, 6, 7, 15, 0),
    gsSP2Triangles(4, 18, 2, 0, 11, 3, 12, 0),
    gsSP2Triangles(3, 2, 18, 0, 3, 18, 12, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(ddan_room_10Tex_005310, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&ddan_room_10Vtx_0001C0[76], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_006310, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[80], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 1, 0, 8, 1, 10, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(ddan_room_10Tex_004F10, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ddan_sceneTLUT_011D70),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&ddan_room_10Vtx_0001C0[91], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 4, 7, 0, 11, 10, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_004710, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[103], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_004F10, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[107], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 6, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 11, 13, 0),
    gsSP2Triangles(9, 11, 12, 0, 7, 6, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_003B10, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[121], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(3, 20, 21, 0, 3, 21, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_007B10, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[143], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSP2Triangles(9, 10, 7, 0, 9, 11, 10, 0),
    gsSP2Triangles(10, 4, 7, 0, 10, 12, 4, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 8, 18, 0, 8, 6, 18, 0),
    gsSP2Triangles(6, 5, 18, 0, 5, 19, 18, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_003B10, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[163], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_007B10, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[171], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 4, 5, 3, 0),
    gsSP2Triangles(4, 6, 5, 0, 4, 7, 6, 0),
    gsSP2Triangles(7, 8, 6, 0, 8, 9, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_003710, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[181], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_004710, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[195], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 1, 0, 8, 10, 9, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 0, 12, 0),
    gsSP2Triangles(1, 9, 2, 0, 0, 3, 12, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 17, 18, 0),
    gsSP2Triangles(5, 19, 6, 0, 4, 7, 20, 0),
    gsSP2Triangles(21, 19, 22, 0, 19, 5, 22, 0),
    gsSP2Triangles(23, 24, 20, 0, 24, 4, 20, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_004310, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[220], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_002B10, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[224], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_004310, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[228], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_002B10, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[232], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_004310, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[236], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_002B10, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[240], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_004310, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[244], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_002B10, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[248], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_007B10, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[252], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_002F10, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[255], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 0, 2, 0, 3, 5, 2, 0),
    gsSP1Triangle(4, 2, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_007B10, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[262], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_004710, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[266], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 0, 0),
    gsSP2Triangles(6, 7, 2, 0, 6, 2, 1, 0),
    gsSP1Triangle(8, 7, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_007310, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[275], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 2, 5, 4, 0),
    gsSP2Triangles(2, 6, 7, 0, 2, 1, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(12, 8, 11, 0, 12, 13, 8, 0),
    gsSP2Triangles(14, 15, 8, 0, 15, 9, 8, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(20, 16, 21, 0, 16, 22, 21, 0),
    gsSP2Triangles(23, 16, 20, 0, 23, 19, 16, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 27, 25, 0),
    gsSP2Triangles(26, 25, 28, 0, 25, 29, 28, 0),
    gsSP2Triangles(30, 31, 25, 0, 31, 29, 25, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_004710, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[307], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_003B10, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[311], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_007B10, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[319], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_007310, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[323], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 2, 1, 7, 0),
    gsSP2Triangles(4, 8, 7, 0, 6, 5, 8, 0),
    gsSP2Triangles(6, 8, 4, 0, 0, 4, 1, 0),
    gsSP2Triangles(3, 6, 4, 0, 4, 7, 1, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 10, 9, 0),
    gsSP2Triangles(9, 11, 13, 0, 12, 9, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 15, 14, 0),
    gsSP2Triangles(17, 13, 15, 0, 13, 16, 15, 0),
    gsSP2Triangles(13, 11, 16, 0, 17, 12, 13, 0),
    gsSP2Triangles(18, 19, 20, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 22, 23, 0, 18, 20, 23, 0),
    gsSP2Triangles(18, 23, 24, 0, 24, 23, 22, 0),
    gsSP2Triangles(19, 25, 20, 0, 25, 21, 20, 0),
    gsSP2Triangles(19, 26, 25, 0, 25, 26, 21, 0),
    gsSP2Triangles(27, 28, 29, 0, 30, 28, 27, 0),
    gsSP2Triangles(27, 29, 31, 0, 30, 27, 31, 0),
    gsSPVertex(&ddan_room_10Vtx_0001C0[355], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsSP2Triangles(4, 5, 2, 0, 3, 6, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_007B10, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[362], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_003B10, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[366], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_003710, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[374], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_10Tex_007310, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_10Vtx_0001C0[378], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 2, 1, 7, 0),
    gsSP2Triangles(4, 8, 7, 0, 6, 5, 8, 0),
    gsSP2Triangles(7, 1, 4, 0, 4, 3, 6, 0),
    gsSP2Triangles(1, 0, 4, 0, 8, 4, 6, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 12, 13, 0),
    gsSP2Triangles(14, 15, 11, 0, 12, 16, 17, 0),
    gsSP2Triangles(16, 18, 10, 0, 18, 15, 14, 0),
    gsSP2Triangles(17, 16, 10, 0, 11, 10, 14, 0),
    gsSP2Triangles(9, 13, 10, 0, 10, 18, 14, 0),
    gsSPEndDisplayList(),
};

u8 ddan_room_10_unaccounted_002B00[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1B, 0x10, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 ddan_room_10Tex_002B10[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_10Tex_002B10.ci8.inc.c"
};

u64 ddan_room_10Tex_002F10[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_10Tex_002F10.ci8.inc.c"
};

u64 ddan_room_10Tex_003710[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_10Tex_003710.ci8.inc.c"
};

u64 ddan_room_10Tex_003B10[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_10Tex_003B10.ci8.inc.c"
};

u64 ddan_room_10Tex_004310[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_10Tex_004310.ci8.inc.c"
};

u64 ddan_room_10Tex_004710[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_10Tex_004710.ci8.inc.c"
};

u64 ddan_room_10Tex_004F10[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_10Tex_004F10.ci8.inc.c"
};

u64 ddan_room_10Tex_005310[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_10Tex_005310.rgba16.inc.c"
};

u64 ddan_room_10Tex_006310[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_10Tex_006310.rgba16.inc.c"
};

u64 ddan_room_10Tex_007310[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_10Tex_007310.ci8.inc.c"
};

u64 ddan_room_10Tex_007B10[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_10Tex_007B10.ci8.inc.c"
};

