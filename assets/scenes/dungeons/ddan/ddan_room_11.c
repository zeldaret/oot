#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ddan_room_11.h"
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
#include "ddan_room_10.h"
#include "ddan_room_12.h"
#include "ddan_room_13.h"
#include "ddan_room_14.h"
#include "ddan_room_15.h"
#include "ddan_room_16.h"

SceneCmd ddan_room_11Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&ddan_room_11PolygonType2_000060),
    SCENE_CMD_OBJECT_LIST(4, ddan_room_11ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(8, ddan_room_11ActorList_000044),
    SCENE_CMD_END(),
};

s16 ddan_room_11ObjectList_000040[] = {
    OBJECT_DDAN_OBJECTS,
    OBJECT_SHOPNUTS,
    OBJECT_FIREFLY,
    OBJECT_KUSA,
};

ActorEntry ddan_room_11ActorList_000044[] = {
    { ACTOR_EN_SHOPNUTS, {   2557,      0,    446 }, {      0, 0X8000,      0 }, 0x0007 },
    { ACTOR_EN_SHOPNUTS, {   2497,      0,    446 }, {      0, 0X8000,      0 }, 0x0003 },
    { ACTOR_EN_SHOPNUTS, {   2657,      0,    446 }, {      0, 0X8000,      0 }, 0x0001 },
    { ACTOR_EN_FIREFLY,  {   2542,     47,    632 }, {      0, 0X8000,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,  {   2556,     47,    632 }, {      0, 0X8000,      0 }, 0x0003 },
    { ACTOR_EN_FIREFLY,  {   2572,     47,    632 }, {      0, 0X8000,      0 }, 0x0003 },
    { ACTOR_EN_KUSA,     {   2370,      0,    216 }, {      0,      0,      0 }, 0xFF01 },
    { ACTOR_EN_ITEM00,   {   2570,    162,    635 }, {      0, 0x8000,      0 }, 0x0206 },
};

u8 ddan_room_11_possiblePadding_000054[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 ddan_room_11PolygonType2_000060 = { 
    2, 1,
    ddan_room_11PolygonDlist2_00006C,
    ddan_room_11PolygonDlist2_00006C + ARRAY_COUNTU(ddan_room_11PolygonDlist2_00006C)
};

PolygonDlist2 ddan_room_11PolygonDlist2_00006C[1] = {
    { {   2560,    200,    380 },    406, ddan_room_11DL_0006A0, NULL },
};

s32 ddan_room_11_terminatorMaybe_00007C = { 0x01000000 };

Vtx ddan_room_11Vtx_000080[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_11Vtx_000080.vtx.inc"
};

Gfx ddan_room_11DL_0006A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&ddan_room_11Vtx_000080[90], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(ddan_room_11Tex_001C30, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(ddan_sceneTLUT_011D70),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(ddan_room_11Vtx_000080, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_11Tex_001430, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_11Vtx_000080[3], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 8, 9, 0, 5, 7, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_11Tex_000C30, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_11Vtx_000080[13], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(3, 0, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 5, 7, 0, 8, 7, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_11Tex_001C30, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_11Vtx_000080[23], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 1, 0, 0, 6, 4, 0),
    gsSP2Triangles(7, 6, 0, 0, 1, 8, 9, 0),
    gsSP2Triangles(1, 9, 2, 0, 10, 7, 0, 0),
    gsSP2Triangles(10, 0, 3, 0, 2, 9, 10, 0),
    gsSP2Triangles(2, 10, 3, 0, 4, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_11Tex_001430, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_11Vtx_000080[34], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP1Triangle(3, 2, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_11Tex_000C30, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_11Vtx_000080[39], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 6, 7, 0),
    gsSP1Triangle(8, 5, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_11Tex_001430, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_11Vtx_000080[48], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_11Tex_000C30, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_11Vtx_000080[52], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_11Tex_001430, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_11Vtx_000080[58], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_11Tex_000C30, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_11Vtx_000080[61], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_11Tex_001430, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_11Vtx_000080[65], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_11Tex_000C30, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_11Vtx_000080[68], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 1, 0, 6, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_11Tex_001430, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_11Vtx_000080[76], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(ddan_room_11Tex_001C30, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&ddan_room_11Vtx_000080[84], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 4, 2, 0),
    gsSPEndDisplayList(),
};

u8 ddan_room_11_unaccounted_000C20[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0xA0, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 ddan_room_11Tex_000C30[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_11Tex_000C30.ci8.inc.c"
};

u64 ddan_room_11Tex_001430[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_11Tex_001430.ci8.inc.c"
};

u64 ddan_room_11Tex_001C30[] = {
#include "assets/scenes/dungeons/ddan/ddan_room_11Tex_001C30.ci8.inc.c"
};

