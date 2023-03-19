#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "MIZUsin_room_19.h"
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
#include "MIZUsin_room_20.h"
#include "MIZUsin_room_21.h"
#include "MIZUsin_room_22.h"

SceneCmd MIZUsin_room_19Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&MIZUsin_room_19PolygonType2_0000B0),
    SCENE_CMD_OBJECT_LIST(5, MIZUsin_room_19ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(10, MIZUsin_room_19ActorList_000048),
    SCENE_CMD_END(),
};

s16 MIZUsin_room_19ObjectList_000040[] = {
    OBJECT_MIZU_OBJECTS,
    OBJECT_BOX,
    OBJECT_D_HSBLOCK,
    OBJECT_SK2,
    OBJECT_NY,
};

ActorEntry MIZUsin_room_19ActorList_000048[] = {
    { ACTOR_EN_TEST,        {   1554,    780,    268 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_TEST,        {   1557,    780,    107 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_TEST,        {   1486,    780,    192 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_ELF_MSG2,       {   1821,    864,    181 }, {      0,    0XA,    0X1 }, 0x3F00 },
    { ACTOR_EN_BOX,         {   1508,    784,    182 }, {      0, 0XC000,    0X9 }, 0xB822 },
    { ACTOR_EN_WONDER_ITEM, {   1822,    854,    181 }, {      0,      0,    0X6 }, 0x1AC9 },
    { ACTOR_EN_NY,          {   1368,    780,     85 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_NY,          {   1557,    780,     87 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_EN_NY,          {   1372,    780,    284 }, {      0, 0X8000,      0 }, 0x0000 },
    { ACTOR_EN_NY,          {   1562,    780,    289 }, {      0, 0X8000,      0 }, 0x0000 },
};

u8 MIZUsin_room_19_possiblePadding_0000A8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 MIZUsin_room_19PolygonType2_0000B0 = { 
    2, 1,
    MIZUsin_room_19PolygonDlist2_0000BC,
    MIZUsin_room_19PolygonDlist2_0000BC + ARRAY_COUNTU(MIZUsin_room_19PolygonDlist2_0000BC)
};

PolygonDlist2 MIZUsin_room_19PolygonDlist2_0000BC[1] = {
    { {   1500,    940,    180 },    486, MIZUsin_room_19DL_000D00, NULL },
};

s32 MIZUsin_room_19_terminatorMaybe_0000CC = { 0x01000000 };

Vtx MIZUsin_room_19Vtx_0000D0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_19Vtx_0000D0.vtx.inc"
};

Gfx MIZUsin_room_19DL_000D00[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_19Vtx_0000D0[187], 8, 0),
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
    gsSPVertex(MIZUsin_room_19Vtx_0000D0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 1, 0, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 17, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(23, 22, 25, 0, 26, 25, 27, 0),
    gsSP2Triangles(26, 27, 28, 0, 23, 25, 26, 0),
    gsSP2Triangles(27, 21, 24, 0, 28, 27, 24, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_19Vtx_0000D0[32], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 2, 0, 1, 4, 2, 0),
    gsSP2Triangles(3, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(9, 8, 11, 0, 10, 12, 8, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 14, 0),
    gsSP1Triangle(14, 13, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_19Tex_001130, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_19Vtx_0000D0[50], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(4, 0, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_19Tex_001930, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_19Vtx_0000D0[55], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(4, 0, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_19Vtx_0000D0[60], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_19Tex_002130, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_19Vtx_0000D0[72], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(1, 0, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 6, 0, 6, 5, 8, 0),
    gsSP2Triangles(10, 11, 12, 0, 11, 10, 13, 0),
    gsSP2Triangles(12, 14, 10, 0, 15, 16, 17, 0),
    gsSP2Triangles(16, 15, 18, 0, 17, 19, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_19Tex_002930, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_19Vtx_0000D0[92], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 15, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 16, 18, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(28, 30, 29, 0, 24, 31, 25, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_19Tex_003130, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_19Vtx_0000D0[124], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 11, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 16, 18, 17, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 24, 26, 25, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSPVertex(&MIZUsin_room_19Vtx_0000D0[155], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 25, 27, 26, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 31, 29, 0),
    gsSPEndDisplayList(),
};

u8 MIZUsin_room_19_unaccounted_001120[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0D, 0x00, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 MIZUsin_room_19Tex_001130[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_19Tex_001130.rgba16.inc.c"
};

u64 MIZUsin_room_19Tex_001930[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_19Tex_001930.rgba16.inc.c"
};

u64 MIZUsin_room_19Tex_002130[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_19Tex_002130.rgba16.inc.c"
};

u64 MIZUsin_room_19Tex_002930[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_19Tex_002930.rgba16.inc.c"
};

u64 MIZUsin_room_19Tex_003130[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_19Tex_003130.rgba16.inc.c"
};

