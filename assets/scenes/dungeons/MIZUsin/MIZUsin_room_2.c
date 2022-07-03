#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "MIZUsin_room_2.h"
#include "segment_symbols.h"
#include "command_macros_base.h"
#include "z64cutscene_commands.h"
#include "variables.h"
#include "MIZUsin_scene.h"
#include "MIZUsin_room_0.h"
#include "MIZUsin_room_1.h"
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
#include "MIZUsin_room_21.h"
#include "MIZUsin_room_22.h"

SceneCmd MIZUsin_room_2Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&MIZUsin_room_2PolygonType2_000220),
    SCENE_CMD_OBJECT_LIST(7, MIZUsin_room_2ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(29, MIZUsin_room_2ActorList_000050),
    SCENE_CMD_END(),
};

s16 MIZUsin_room_2ObjectList_000040[] = {
    OBJECT_MIZU_OBJECTS,
    OBJECT_SYOKUDAI,
    OBJECT_BOX,
    OBJECT_D_HSBLOCK,
    OBJECT_KIBAKO2,
    OBJECT_D_LIFT,
    OBJECT_NY,
};

ActorEntry MIZUsin_room_2ActorList_000050[] = {
    { ACTOR_OBJ_HSBLOCK,     {    518,    -53,    599 }, { 0X4000,      0,      0 }, 0xFFC2 },
    { ACTOR_EN_NY,           {    431,   -323,    251 }, {      0,      0,      0 }, 0x0000 },
    { ACTOR_OBJ_LIFT,        {    418,   -440,    317 }, { 0X4000,      0,      0 }, 0xFFFC },
    { ACTOR_OBJ_LIFT,        {    179,   -440,    318 }, {      0, 0XC000, 0X4000 }, 0xFFFC },
    { ACTOR_OBJ_LIFT,        {    257,   -440,    480 }, {      0,      0, 0X4000 }, 0xFFFC },
    { ACTOR_OBJ_LIFT,        {     18,   -505,    240 }, {      0, 0X8000, 0X4000 }, 0xFFFC },
    { ACTOR_OBJ_LIFT,        {    257,   -440,    360 }, {      0,      0, 0X4000 }, 0xFFFC },
    { ACTOR_OBJ_LIFT,        {     59,   -440,    318 }, {      0, 0XC000, 0X4000 }, 0xFFFC },
    { ACTOR_OBJ_LIFT,        {     54,   -524,    240 }, {      0, 0X8000, 0X4000 }, 0xFFFC },
    { ACTOR_OBJ_KIBAKO2,     {     25,   -500,    582 }, {      0, 0X4000,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {     25,   -500,    522 }, {      0, 0X4000,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {     91,   -500,    636 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {    102,   -500,    204 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {    151,   -500,    636 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {     31,   -500,    636 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {    162,   -500,    204 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {    215,   -500,    366 }, {      0, 0X4000,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {    215,   -500,    426 }, {      0, 0X4000,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {    455,   -500,    365 }, {      0, 0X4000,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {    455,   -500,    425 }, {      0, 0X4000,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {    222,   -500,    204 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {    215,   -500,    486 }, {      0, 0X4000,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,     {    299,   -500,    485 }, {      0, 0X4000,      0 }, 0xFFFF },
    { ACTOR_EN_BOX,          {    660,   -110,    600 }, {      0, 0X4000,   0X23 }, 0x8846 },
    { ACTOR_EN_WONDER_ITEM,  {    676,   -163,    599 }, {      0,      0,    0X6 }, 0x18A3 },
    { ACTOR_OBJ_SWITCH,      {    220,   -515,    201 }, {      0,      0,      0 }, 0x3903 },
    { ACTOR_BG_MIZU_SHUTTER, {    362,   -363,    245 }, { 0XC000, 0XC000,      0 }, 0x1FF9 },
    { ACTOR_OBJ_SWITCH,      {     17,   -515,    201 }, {      0,      0,      0 }, 0x3A03 },
    { ACTOR_BG_MIZU_SHUTTER, {    428,   -363,    659 }, { 0XC000,      0,      0 }, 0x1FFA },
};

PolygonType2 MIZUsin_room_2PolygonType2_000220 = { 
    2, 5,
    MIZUsin_room_2PolygonDlist2_00022C,
    MIZUsin_room_2PolygonDlist2_00022C + ARRAY_COUNTU(MIZUsin_room_2PolygonDlist2_00022C)
};

PolygonDlist2 MIZUsin_room_2PolygonDlist2_00022C[5] = {
    { {    120,   -280,    280 },    567, MIZUsin_room_2DL_0028A0, NULL },
    { {    520,   -150,    600 },    200, MIZUsin_room_2DL_001428, NULL },
    { {    420,   -230,    600 },     84, NULL, MIZUsin_room_2DL_005380 },
    { {    120,   -500,    280 },    523, MIZUsin_room_2DL_0004E0, NULL },
    { {    120,   -370,    280 },    523, MIZUsin_room_2DL_002000, NULL },
};

s32 MIZUsin_room_2_terminatorMaybe_00027C = { 0x01000000 };

Vtx MIZUsin_room_2Vtx_000280[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_2Vtx_000280.vtx.inc"
};

Gfx MIZUsin_room_2DL_0004E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_2Vtx_000280[30], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_2Tex_0032B8, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(MIZUsin_room_2Vtx_000280, 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 4, 7, 0, 3, 5, 1, 0),
    gsSP2Triangles(3, 1, 0, 0, 2, 4, 3, 0),
    gsSP2Triangles(2, 3, 0, 0, 2, 8, 7, 0),
    gsSP2Triangles(2, 7, 4, 0, 9, 8, 2, 0),
    gsSP2Triangles(9, 6, 7, 0, 9, 7, 8, 0),
    gsSP2Triangles(10, 6, 9, 0, 10, 9, 11, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 10, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0),
    gsSP2Triangles(6, 10, 13, 0, 9, 12, 11, 0),
    gsSP2Triangles(16, 17, 15, 0, 16, 15, 14, 0),
    gsSP2Triangles(13, 15, 17, 0, 12, 16, 14, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(19, 22, 20, 0, 23, 24, 25, 0),
    gsSP2Triangles(24, 26, 27, 0, 24, 27, 25, 0),
    gsSP2Triangles(28, 25, 27, 0, 29, 23, 25, 0),
    gsSP1Triangle(28, 29, 25, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_2Vtx_000658[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_2Vtx_000658.vtx.inc"
};

Gfx MIZUsin_room_2DL_001428[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_2Vtx_000658[213], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_room_2Tex_004AB8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(MIZUsin_room_2Vtx_000658, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 15, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_2Vtx_000658[16], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(3, 1, 0, 0, 4, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_2Tex_003AB8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_2Vtx_000658[21], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_2Vtx_000658[33], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 9, 12, 14, 0),
    gsSP2Triangles(9, 14, 13, 0, 10, 16, 15, 0),
    gsSP1Triangle(10, 15, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_2Tex_002AB8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_2Vtx_000658[50], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(0, 2, 3, 0, 1, 4, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_2Vtx_000658[55], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_2Tex_003AB8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_2Vtx_000658[60], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 5, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_2Vtx_000658[70], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_2Tex_003AB8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_2Vtx_000658[80], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 8, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_2Tex_0042B8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_2Vtx_000658[90], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_2Tex_004AB8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_2Vtx_000658[96], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_2Tex_0042B8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_2Vtx_000658[104], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_2Tex_004AB8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_2Vtx_000658[113], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_2Tex_0042B8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_2Vtx_000658[121], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_2Tex_004AB8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_2Vtx_000658[128], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 3, 5, 0, 4, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_2Tex_0042B8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_2Vtx_000658[135], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_2Tex_004AB8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_2Vtx_000658[138], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 3, 5, 0, 6, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_2Tex_0042B8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_2Vtx_000658[145], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_2Tex_004AB8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_2Vtx_000658[152], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_2Tex_0042B8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_2Vtx_000658[156], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_2Tex_004AB8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_2Vtx_000658[164], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_2Vtx_000658[176], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 5, 0, 20, 5, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 23, 25, 26, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_2Tex_0032B8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_2Vtx_000658[203], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 5, 9, 0, 8, 9, 7, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_2Vtx_001CC0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_2Vtx_001CC0.vtx.inc"
};

Gfx MIZUsin_room_2DL_002000[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_2Vtx_001CC0[44], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 4, 4),
    gsDPLoadMultiBlock(MIZUsin_sceneTex_015030, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(MIZUsin_room_2Vtx_001CC0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_2Vtx_001CC0[32], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_2Vtx_002150[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_2Vtx_002150.vtx.inc"
};

Gfx MIZUsin_room_2DL_0028A0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_2Vtx_002150[109], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_sceneTex_013C30, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(MIZUsin_room_2Vtx_002150, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_2Vtx_002150[32], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 10, 0),
    gsSP2Triangles(9, 11, 10, 0, 10, 12, 8, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 24, 26, 25, 0),
    gsSP2Triangles(25, 27, 28, 0, 29, 25, 28, 0),
    gsSP2Triangles(26, 27, 25, 0, 30, 17, 19, 0),
    gsSPVertex(&MIZUsin_room_2Vtx_002150[63], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 5, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(18, 22, 23, 0, 18, 23, 19, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_2Vtx_002150[95], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 5, 7, 0, 8, 9, 5, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSPEndDisplayList(),
};

u8 MIZUsin_room_2_unaccounted_002A90[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x04, 0xE0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x14, 0x28, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x20, 0x00, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x28, 0xA0, 
    0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 MIZUsin_room_2Tex_002AB8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_2Tex_002AB8.rgba16.inc.c"
};

u64 MIZUsin_room_2Tex_0032B8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_2Tex_0032B8.rgba16.inc.c"
};

u64 MIZUsin_room_2Tex_003AB8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_2Tex_003AB8.rgba16.inc.c"
};

u64 MIZUsin_room_2Tex_0042B8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_2Tex_0042B8.rgba16.inc.c"
};

u64 MIZUsin_room_2Tex_004AB8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_2Tex_004AB8.rgba16.inc.c"
};

u8 MIZUsin_room_2_possiblePadding_0052B8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx MIZUsin_room_2Vtx_0052C0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_2Vtx_0052C0.vtx.inc"
};

Gfx MIZUsin_room_2DL_005380[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_2Vtx_0052C0[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 13, 14),
    gsDPLoadMultiBlock(MIZUsin_room_2Tex_005488, 0x0100, 1, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 14, 13),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 102),
    gsSPDisplayList(0x0C000000),
    gsSPVertex(MIZUsin_room_2Vtx_0052C0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 MIZUsin_room_2_unaccounted_005478[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x53, 0x80, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 MIZUsin_room_2Tex_005488[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_2Tex_005488.ia16.inc.c"
};

