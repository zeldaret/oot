#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "bdan_room_6.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "bdan_scene.h"
#include "bdan_room_0.h"
#include "bdan_room_1.h"
#include "bdan_room_2.h"
#include "bdan_room_3.h"
#include "bdan_room_4.h"
#include "bdan_room_5.h"
#include "bdan_room_7.h"
#include "bdan_room_8.h"
#include "bdan_room_9.h"
#include "bdan_room_10.h"
#include "bdan_room_11.h"
#include "bdan_room_12.h"
#include "bdan_room_13.h"
#include "bdan_room_14.h"
#include "bdan_room_15.h"

SceneCmd bdan_room_6Commands[] = {
    SCENE_CMD_ALTERNATE_HEADER_LIST(bdan_room_6AlternateHeaders0x000048),
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&bdan_room_6PolygonType0_000100),
    SCENE_CMD_OBJECT_LIST(11, bdan_room_6ObjectList_000058),
    SCENE_CMD_ACTOR_LIST(9, bdan_room_6ActorList_000070),
    SCENE_CMD_END(),
};

SceneCmd* bdan_room_6AlternateHeaders0x000048[] = {
    NULL,
    NULL,
    NULL,
    bdan_room_6Set_000120,
};

s16 bdan_room_6ObjectList_000058[] = {
    OBJECT_BDAN_OBJECTS,
    OBJECT_RU1,
    OBJECT_BIGOKUTA,
    OBJECT_BUBBLE,
    OBJECT_BL,
    OBJECT_VALI,
    OBJECT_EI,
    OBJECT_EFC_FLASH,
    OBJECT_GI_JEWEL,
    OBJECT_KUSA,
    OBJECT_COW,
};

ActorEntry bdan_room_6ActorList_000070[] = {
    { ACTOR_EN_VALI,         {  -1367,    411,  -2490 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_COW,          {  -1713,    207,  -3353 }, {      0, 0X4000,      0 }, 0x0000 },
    { ACTOR_EN_RU1,          {  -1360,   -980,  -3342 }, {      0, 0X4000,      0 }, 0x0004 },
    { ACTOR_BG_BDAN_OBJECTS, {  -1360,  -1025,  -3343 }, {      0, 0XC000,      0 }, 0x1F00 },
    { ACTOR_EN_KUSA,         {  -1086,     80,  -3346 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_KUSA,         {  -1360,     80,  -3606 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_DEMO_EFFECT,     {  -1360,   -948,  -3343 }, {      0, 0X4000,      0 }, 0x1015 },
    { ACTOR_EN_WONDER_ITEM,  {  -1633,    225,  -3351 }, {      0,      0,    0X4 }, 0x1920 },
    { ACTOR_ELF_MSG2,        {  -1360,   -930,  -3343 }, {    0X6,    0X3,      0 }, 0x3F3A },
};

PolygonType0 bdan_room_6PolygonType0_000100 = { 
    0, 1,
    bdan_room_6PolygonDlist_00010C,
    bdan_room_6PolygonDlist_00010C + ARRAY_COUNTU(bdan_room_6PolygonDlist_00010C)
};

PolygonDlist bdan_room_6PolygonDlist_00010C[1] = {
    { bdan_room_6DL_003048, bdan_room_6DL_004230 },
};

s32 bdan_room_6_terminatorMaybe_000114 = { 0x01000000 };

u8 bdan_room_6_possiblePadding_000118[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

SceneCmd bdan_room_6Set_000120[] = {
    SCENE_CMD_ECHO_SETTINGS(0),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(false, false),
    SCENE_CMD_TIME_SETTINGS(255, 255, 255),
    SCENE_CMD_MESH(&bdan_room_6PolygonType0_000100),
    SCENE_CMD_OBJECT_LIST(6, bdan_room_6ObjectList_000160),
    SCENE_CMD_ACTOR_LIST(4, bdan_room_6ActorList_00016C),
    SCENE_CMD_END(),
};

s16 bdan_room_6ObjectList_000160[] = {
    OBJECT_BDAN_OBJECTS,
    OBJECT_RU1,
    OBJECT_VALI,
    OBJECT_EFC_FLASH,
    OBJECT_GI_JEWEL,
    OBJECT_BIGOKUTA,
};

ActorEntry bdan_room_6ActorList_00016C[] = {
    { ACTOR_EN_RU1,          {  -1176,  -1025,  -3506 }, {      0, 0X4000,      0 }, 0x0004 },
    { ACTOR_EN_VALI,         {  -1360,    200,  -2634 }, {      0, 0X80B6,      0 }, 0xFFFF },
    { ACTOR_DEMO_EFFECT,     {  -1360,  -1005,  -3342 }, {      0, 0X4000,      0 }, 0x1015 },
    { ACTOR_BG_BDAN_OBJECTS, {  -1360,  -1025,  -3343 }, {      0, 0XC000,      0 }, 0x2000 },
};

Vtx bdan_room_6Vtx_0001B0[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_6Vtx_0001B0.vtx.inc"
};

Gfx bdan_room_6DL_000CE0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_6Vtx_0001B0[171], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(bdan_room_6Vtx_0001B0, 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(5, 6, 1, 0, 6, 3, 1, 0),
    gsSP2Triangles(7, 8, 9, 0, 8, 10, 9, 0),
    gsSP2Triangles(7, 11, 8, 0, 7, 12, 11, 0),
    gsSP2Triangles(8, 13, 10, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 10, 0, 14, 16, 15, 0),
    gsSP2Triangles(16, 17, 15, 0, 16, 18, 17, 0),
    gsSP2Triangles(16, 19, 18, 0, 19, 20, 18, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_6Tex_003068, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_0001B0[21], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(1, 8, 9, 0, 1, 0, 8, 0),
    gsSP2Triangles(7, 4, 10, 0, 4, 11, 10, 0),
    gsSP2Triangles(6, 12, 13, 0, 6, 5, 12, 0),
    gsSP2Triangles(14, 15, 3, 0, 15, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_6Tex_003868, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_0001B0[37], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_6Tex_003068, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_0001B0[41], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_0001B0[45], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 6, 0, 9, 10, 6, 0),
    gsSP2Triangles(11, 12, 1, 0, 12, 13, 1, 0),
    gsSP2Triangles(14, 15, 16, 0, 15, 17, 16, 0),
    gsSP2Triangles(10, 18, 19, 0, 18, 20, 19, 0),
    gsSP2Triangles(3, 1, 21, 0, 1, 13, 21, 0),
    gsSP2Triangles(0, 22, 1, 0, 22, 11, 1, 0),
    gsSP2Triangles(23, 24, 16, 0, 24, 14, 16, 0),
    gsSP2Triangles(10, 9, 18, 0, 9, 25, 18, 0),
    gsSP2Triangles(10, 19, 6, 0, 19, 4, 6, 0),
    gsSP2Triangles(7, 26, 6, 0, 26, 8, 6, 0),
    gsSP1Triangle(27, 28, 29, 0),
    gsSPVertex(&bdan_room_6Vtx_0001B0[75], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 3, 10, 0),
    gsSP2Triangles(4, 0, 11, 0, 1, 6, 12, 0),
    gsSP2Triangles(13, 7, 14, 0, 15, 16, 3, 0),
    gsSP2Triangles(16, 4, 3, 0, 15, 3, 17, 0),
    gsSP2Triangles(3, 9, 17, 0, 18, 19, 14, 0),
    gsSP2Triangles(19, 20, 14, 0, 18, 14, 21, 0),
    gsSP2Triangles(14, 7, 21, 0, 22, 21, 6, 0),
    gsSP2Triangles(21, 7, 6, 0, 22, 6, 23, 0),
    gsSP2Triangles(6, 1, 23, 0, 24, 23, 0, 0),
    gsSP2Triangles(23, 1, 0, 0, 4, 16, 0, 0),
    gsSP1Triangle(16, 24, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_sceneTex_014600, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_0001B0[100], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(6, 8, 9, 0, 6, 9, 7, 0),
    gsSP2Triangles(10, 11, 0, 0, 10, 0, 3, 0),
    gsSP2Triangles(10, 12, 13, 0, 10, 13, 11, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0),
    gsSP2Triangles(16, 17, 8, 0, 16, 8, 15, 0),
    gsSP2Triangles(14, 16, 15, 0, 17, 9, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_6Tex_003068, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_0001B0[118], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(5, 8, 9, 0, 5, 9, 6, 0),
    gsSP2Triangles(10, 0, 3, 0, 10, 3, 11, 0),
    gsSP2Triangles(8, 12, 13, 0, 8, 13, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_6Tex_003868, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_0001B0[132], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_6Tex_003068, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_0001B0[136], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_0001B0[144], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 6, 9, 0, 10, 9, 11, 0),
    gsSP2Triangles(9, 8, 1, 0, 9, 1, 0, 0),
    gsSP2Triangles(11, 9, 0, 0, 11, 0, 4, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 12, 15, 0, 16, 15, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 18, 21, 0, 22, 21, 23, 0),
    gsSP2Triangles(15, 14, 24, 0, 15, 24, 25, 0),
    gsSP2Triangles(17, 15, 25, 0, 17, 25, 26, 0),
    gsSP2Triangles(25, 24, 7, 0, 25, 7, 6, 0),
    gsSP2Triangles(26, 25, 6, 0, 26, 6, 10, 0),
    gsSP2Triangles(3, 2, 19, 0, 3, 19, 18, 0),
    gsSP2Triangles(5, 3, 18, 0, 5, 18, 22, 0),
    gsSPEndDisplayList(),
};

Vtx bdan_room_6Vtx_0012A8[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_6Vtx_0012A8.vtx.inc"
};

Gfx bdan_room_6DL_001FC8[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_6Vtx_0012A8[202], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_room_6Tex_003068, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(bdan_room_6Vtx_0012A8, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_0012A8[5], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 6, 2, 0, 7, 8, 5, 0),
    gsSP2Triangles(9, 10, 7, 0, 4, 11, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_6Tex_003068, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_0012A8[17], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 13, 2, 0, 5, 12, 17, 0),
    gsSP2Triangles(3, 10, 18, 0, 19, 11, 20, 0),
    gsSP2Triangles(6, 5, 17, 0, 17, 12, 15, 0),
    gsSP2Triangles(0, 3, 18, 0, 18, 10, 9, 0),
    gsSP2Triangles(8, 11, 19, 0, 21, 4, 7, 0),
    gsSP2Triangles(14, 13, 16, 0, 2, 1, 16, 0),
    gsSP2Triangles(5, 22, 23, 0, 5, 23, 12, 0),
    gsSP2Triangles(4, 24, 22, 0, 4, 22, 5, 0),
    gsSP2Triangles(11, 25, 26, 0, 11, 26, 20, 0),
    gsSP2Triangles(10, 27, 25, 0, 10, 25, 11, 0),
    gsSP2Triangles(3, 28, 27, 0, 3, 27, 10, 0),
    gsSP2Triangles(2, 29, 28, 0, 2, 28, 3, 0),
    gsSP2Triangles(13, 30, 29, 0, 13, 29, 2, 0),
    gsSP2Triangles(12, 23, 30, 0, 12, 30, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_0012A8[48], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 5, 4, 0, 6, 4, 7, 0),
    gsSP2Triangles(8, 9, 6, 0, 8, 6, 7, 0),
    gsSP2Triangles(10, 9, 8, 0, 10, 8, 11, 0),
    gsSP2Triangles(12, 13, 10, 0, 12, 10, 11, 0),
    gsSP2Triangles(14, 15, 13, 0, 14, 13, 12, 0),
    gsSP2Triangles(16, 17, 15, 0, 16, 15, 14, 0),
    gsSP2Triangles(18, 19, 17, 0, 18, 17, 16, 0),
    gsSP2Triangles(20, 21, 19, 0, 20, 19, 18, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 21, 0),
    gsSP2Triangles(25, 23, 22, 0, 2, 25, 22, 0),
    gsSP2Triangles(21, 24, 26, 0, 27, 25, 2, 0),
    gsSP2Triangles(28, 26, 24, 0, 27, 29, 25, 0),
    gsSP2Triangles(30, 31, 10, 0, 30, 10, 13, 0),
    gsSPVertex(&bdan_room_6Vtx_0012A8[80], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 4, 5, 0, 6, 5, 7, 0),
    gsSP2Triangles(8, 6, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 14, 16, 0, 15, 16, 17, 0),
    gsSP2Triangles(17, 16, 18, 0, 17, 18, 19, 0),
    gsSP2Triangles(19, 18, 20, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 22, 26, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_6Tex_003068, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_0012A8[107], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 7, 0, 10, 7, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_0012A8[119], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(3, 2, 5, 0, 6, 7, 0, 0),
    gsSP1Triangle(6, 0, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_6Tex_003068, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_0012A8[128], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_0012A8[132], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 5, 1, 0),
    gsSP2Triangles(5, 6, 1, 0, 6, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_6Tex_003068, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_0012A8[139], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 4, 7, 8, 0),
    gsSP2Triangles(4, 8, 5, 0, 9, 6, 5, 0),
    gsSP2Triangles(9, 5, 10, 0, 5, 8, 11, 0),
    gsSP2Triangles(5, 11, 10, 0, 9, 10, 12, 0),
    gsSP2Triangles(9, 12, 13, 0, 10, 11, 14, 0),
    gsSP2Triangles(10, 14, 12, 0, 15, 13, 12, 0),
    gsSP2Triangles(15, 12, 16, 0, 12, 14, 17, 0),
    gsSP2Triangles(12, 17, 16, 0, 15, 16, 18, 0),
    gsSP2Triangles(15, 18, 19, 0, 16, 17, 20, 0),
    gsSP2Triangles(16, 20, 18, 0, 21, 22, 23, 0),
    gsSP2Triangles(21, 23, 24, 0, 23, 25, 26, 0),
    gsSP2Triangles(23, 26, 24, 0, 21, 24, 27, 0),
    gsSP2Triangles(21, 27, 28, 0, 24, 26, 29, 0),
    gsSP2Triangles(24, 29, 27, 0, 30, 28, 27, 0),
    gsSP1Triangle(30, 27, 31, 0),
    gsSPVertex(&bdan_room_6Vtx_0012A8[171], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 3, 5, 0, 4, 5, 6, 0),
    gsSP2Triangles(3, 2, 7, 0, 3, 7, 5, 0),
    gsSP2Triangles(8, 6, 5, 0, 8, 5, 9, 0),
    gsSP2Triangles(5, 7, 10, 0, 5, 10, 9, 0),
    gsSP2Triangles(10, 11, 9, 0, 11, 12, 9, 0),
    gsSP2Triangles(13, 14, 15, 0, 14, 16, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_sceneTex_014A00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_0012A8[188], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_6Tex_003068, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_0012A8[194], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSPEndDisplayList(),
};

Vtx bdan_room_6Vtx_002630[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_6Vtx_002630.vtx.inc"
};

Gfx bdan_room_6DL_002AB0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_6Vtx_002630[64], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_room_6Tex_003068, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_013BF8),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(bdan_room_6Vtx_002630, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_6Tex_003868, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_002630[4], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_6Tex_003068, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_002630[8], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_6Tex_003868, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_002630[12], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_6Tex_003068, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_002630[16], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_6Tex_003868, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_002630[20], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_6Tex_003068, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_002630[24], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_6Tex_003868, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_002630[28], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_6Tex_003068, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_002630[32], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_6Tex_003868, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_002630[36], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_6Tex_003068, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_002630[40], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_6Tex_003868, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_002630[44], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_6Tex_003068, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_002630[48], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_6Tex_003868, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_002630[52], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_6Tex_003068, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_002630[56], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(bdan_room_6Tex_003868, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&bdan_room_6Vtx_002630[60], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx bdan_room_6DL_003048[] = {
    gsSPDisplayList(bdan_room_6DL_000CE0),
    gsSPDisplayList(bdan_room_6DL_001FC8),
    gsSPDisplayList(bdan_room_6DL_002AB0),
    gsSPEndDisplayList(),
};

u64 bdan_room_6Tex_003068[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_6Tex_003068.ci8.inc.c"
};

u64 bdan_room_6Tex_003868[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_6Tex_003868.ci8.inc.c"
};

u8 bdan_room_6_possiblePadding_004068[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx bdan_room_6Vtx_004070[] = {
#include "assets/scenes/dungeons/bdan/bdan_room_6Vtx_004070.vtx.inc"
};

Gfx bdan_room_6DL_004140[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&bdan_room_6Vtx_004070[5], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(bdan_sceneTex_015200, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(bdan_sceneTLUT_0139F0),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, PRIMITIVE, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 63),
    gsSPVertex(bdan_room_6Vtx_004070, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0),
    gsSPEndDisplayList(),
};

Gfx bdan_room_6DL_004230[] = {
    gsSPDisplayList(bdan_room_6DL_004140),
    gsSPEndDisplayList(),
};

