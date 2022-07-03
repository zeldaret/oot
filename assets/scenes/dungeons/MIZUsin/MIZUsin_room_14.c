#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "MIZUsin_room_14.h"
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
#include "MIZUsin_room_15.h"
#include "MIZUsin_room_16.h"
#include "MIZUsin_room_17.h"
#include "MIZUsin_room_18.h"
#include "MIZUsin_room_19.h"
#include "MIZUsin_room_20.h"
#include "MIZUsin_room_21.h"
#include "MIZUsin_room_22.h"

SceneCmd MIZUsin_room_14Commands[] = {
    SCENE_CMD_ECHO_SETTINGS(7),
    SCENE_CMD_ROOM_BEHAVIOR(0x01, 0x00, false, false),
    SCENE_CMD_SKYBOX_DISABLES(true, true),
    SCENE_CMD_TIME_SETTINGS(255, 255, 0),
    SCENE_CMD_MESH(&MIZUsin_room_14PolygonType2_000150),
    SCENE_CMD_OBJECT_LIST(5, MIZUsin_room_14ObjectList_000040),
    SCENE_CMD_ACTOR_LIST(16, MIZUsin_room_14ActorList_00004C),
    SCENE_CMD_END(),
};

s16 MIZUsin_room_14ObjectList_000040[] = {
    OBJECT_MIZU_OBJECTS,
    OBJECT_D_HSBLOCK,
    OBJECT_BOX,
    OBJECT_KIBAKO2,
    OBJECT_DODONGO,
};

ActorEntry MIZUsin_room_14ActorList_00004C[] = {
    { ACTOR_OBJ_HSBLOCK,   {   -427,    -21,  -3674 }, {      0, 0X4000,      0 }, 0xFFC2 },
    { ACTOR_EN_DODONGO,    {   -166,   -160,  -3253 }, {      0, 0XC16C,      0 }, 0xFFFF },
    { ACTOR_EN_DODONGO,    {   -233,   -300,  -3602 }, {      0, 0XC0B6,      0 }, 0xFFFF },
    { ACTOR_EN_DODONGO,    {   -174,   -300,  -3719 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_DODONGO,    {   -143,   -300,  -3599 }, {      0, 0XC0B6,      0 }, 0xFFFF },
    { ACTOR_EN_DODONGO,    {    -38,   -160,  -3278 }, {      0, 0XDA50,      0 }, 0xFFFF },
    { ACTOR_EN_DODONGO,    {   -191,   -300,  -3538 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_EN_DODONGO,    {   -174,   -264,  -3781 }, {      0, 0XD3E9,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,   {     36,   -320,  -3700 }, {      0, 0X4000,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,   {   -271,   -300,  -3826 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,   {   -397,   -160,  -3818 }, {      0, 0X4000,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,   {     30,   -160,  -3215 }, {      0,      0,      0 }, 0xFFFF },
    { ACTOR_OBJ_KIBAKO2,   {    -85,   -300,  -3460 }, {      0, 0X4000,      0 }, 0xFFFF },
    { ACTOR_BG_MIZU_WATER, {   -181,   -290,  -3430 }, {      0,      0,      0 }, 0x1804 },
    { ACTOR_OBJ_TSUBO,     {     28,   -160,  -3817 }, {      0,      0,      0 }, 0x7604 },
    { ACTOR_OBJ_TSUBO,     {    -28,   -160,  -3817 }, {      0,      0,      0 }, 0x7804 },
};

u8 MIZUsin_room_14_possiblePadding_00014C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

PolygonType2 MIZUsin_room_14PolygonType2_000150 = { 
    2, 7,
    MIZUsin_room_14PolygonDlist2_00015C,
    MIZUsin_room_14PolygonDlist2_00015C + ARRAY_COUNTU(MIZUsin_room_14PolygonDlist2_00015C)
};

PolygonDlist2 MIZUsin_room_14PolygonDlist2_00015C[7] = {
    { {   -180,   -170,  -3640 },    352, MIZUsin_room_14DL_0009E0, NULL },
    { {   -310,     60,  -3510 },    536, MIZUsin_room_14DL_002548, NULL },
    { {      0,   -320,  -3670 },     84, MIZUsin_room_14DL_000FB0, NULL },
    { {   -180,   -160,  -3640 },    318, MIZUsin_room_14DL_003520, NULL },
    { {   -180,    120,  -3390 },     28, MIZUsin_room_14DL_000E38, NULL },
    { {   -180,   -300,  -3640 },    241, MIZUsin_room_14DL_000C68, NULL },
    { {   -120,   -170,  -3640 },    276, MIZUsin_room_14DL_000450, NULL },
};

s32 MIZUsin_room_14_terminatorMaybe_0001CC = { 0x01000000 };

Vtx MIZUsin_room_14Vtx_0001D0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_14Vtx_0001D0.vtx.inc"
};

Gfx MIZUsin_room_14DL_000450[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_14Vtx_0001D0[32], 8, 0),
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
    gsSPVertex(MIZUsin_room_14Vtx_0001D0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_14Vtx_000580[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_14Vtx_000580.vtx.inc"
};

Gfx MIZUsin_room_14DL_0009E0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_14Vtx_000580[62], 8, 0),
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
    gsSPVertex(MIZUsin_room_14Vtx_000580, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(2, 8, 3, 0, 7, 9, 4, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsSPVertex(&MIZUsin_room_14Vtx_000580[30], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(12, 13, 10, 0, 12, 14, 13, 0),
    gsSP2Triangles(9, 15, 10, 0, 15, 16, 10, 0),
    gsSP2Triangles(16, 12, 10, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 18, 0, 20, 18, 17, 0),
    gsSP2Triangles(22, 23, 24, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 30, 31, 29, 0),
    gsSP2Triangles(27, 29, 31, 0, 24, 26, 22, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_14Vtx_000B68[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_14Vtx_000B68.vtx.inc"
};

Gfx MIZUsin_room_14DL_000C68[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_14Vtx_000B68[8], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_14Tex_006680, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(MIZUsin_room_14Vtx_000B68, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 5, 3, 0, 4, 3, 1, 0),
    gsSP2Triangles(6, 5, 4, 0, 4, 7, 6, 0),
    gsSP2Triangles(1, 0, 7, 0, 1, 7, 4, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_14Vtx_000D78[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_14Vtx_000D78.vtx.inc"
};

Gfx MIZUsin_room_14DL_000E38[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_14Vtx_000D78[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(MIZUsin_room_14Tex_003680, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(MIZUsin_room_14Vtx_000D78, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_14Vtx_000EF0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_14Vtx_000EF0.vtx.inc"
};

Gfx MIZUsin_room_14DL_000FB0[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_14Vtx_000EF0[4], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_14Tex_003E80, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(MIZUsin_room_14Vtx_000EF0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_14Vtx_0010A8[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_14Vtx_0010A8.vtx.inc"
};

Gfx MIZUsin_room_14DL_002548[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[322], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_room_14Tex_006680, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(MIZUsin_room_14Vtx_0010A8, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 4, 1, 0, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 5, 7, 0),
    gsSP2Triangles(9, 6, 5, 0, 8, 9, 5, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 10, 12, 0),
    gsSP2Triangles(14, 11, 10, 0, 13, 14, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_14Tex_004E80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[15], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_14Tex_005680, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[22], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_14Tex_004E80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[30], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_14Tex_005680, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[34], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[40], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_14Tex_005680, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[46], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[51], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_14Tex_005680, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[57], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[62], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_14Tex_005680, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[70], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[78], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_14Tex_005680, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[81], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[89], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[121], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_14Tex_004680, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[137], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_14Tex_004E80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[145], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_14Tex_005680, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[149], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[159], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_14Tex_005680, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[163], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 13, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_14Tex_004E80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[177], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[181], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(19, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(23, 25, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(30, 27, 29, 0, 2, 31, 3, 0),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[213], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_14Tex_006680, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[223], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[227], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_14Tex_006680, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[231], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 7, 5, 0, 8, 5, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[241], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[245], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[249], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[253], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[257], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[261], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[265], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[269], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[273], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[277], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_015030, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[281], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_013C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[285], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 2, 1, 0, 8, 1, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_14Tex_004680, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[299], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_14Tex_006680, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[303], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 3, 1, 0, 0, 4, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_14Tex_004680, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[308], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(3, 8, 9, 0, 3, 9, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(MIZUsin_room_14Tex_004E80, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&MIZUsin_room_14Vtx_0010A8[318], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx MIZUsin_room_14Vtx_0033A0[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_14Vtx_0033A0.vtx.inc"
};

Gfx MIZUsin_room_14DL_003520[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING),
    gsSPVertex(&MIZUsin_room_14Vtx_0033A0[16], 8, 0),
    gsSPCullDisplayList(0, 7),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(MIZUsin_sceneTex_014430, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 3, 4),
    gsDPLoadMultiBlock(MIZUsin_room_14Tex_005E80, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                       G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0A000000),
    gsSPVertex(MIZUsin_room_14Vtx_0033A0, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 1, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 6, 9, 0),
    gsSP2Triangles(10, 8, 9, 0, 10, 5, 7, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 11, 13, 0),
    gsSP2Triangles(14, 15, 11, 0, 15, 12, 11, 0),
    gsSPEndDisplayList(),
};

u8 MIZUsin_room_14_unaccounted_003640[] = {
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x04, 0x50, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x09, 0xE0, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0C, 0x68, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0E, 0x38, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0F, 0xB0, 0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x25, 0x48, 
    0xDE, 0x00, 0x00, 0x00, 0x03, 0x00, 0x35, 0x20, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 MIZUsin_room_14Tex_003680[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_14Tex_003680.i4.inc.c"
};

u64 MIZUsin_room_14Tex_003E80[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_14Tex_003E80.rgba16.inc.c"
};

u64 MIZUsin_room_14Tex_004680[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_14Tex_004680.rgba16.inc.c"
};

u64 MIZUsin_room_14Tex_004E80[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_14Tex_004E80.rgba16.inc.c"
};

u64 MIZUsin_room_14Tex_005680[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_14Tex_005680.rgba16.inc.c"
};

u64 MIZUsin_room_14Tex_005E80[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_14Tex_005E80.rgba16.inc.c"
};

u64 MIZUsin_room_14Tex_006680[] = {
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_room_14Tex_006680.rgba16.inc.c"
};

